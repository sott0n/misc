import os
import re
import time
import feedparser
import datetime

from slack_bolt import App
from slack_bolt.adapter.socket_mode import SocketModeHandler

BASE_URL = "http://export.arxiv.org/api/query?"
USERNAME = "arxiv-bot",
ICON_URL = "http://i.imgur.com/8NYocT8.png",
DEFAULT_CATEGORY = "cat:cs.PL"
app = App(token=os.environ.get("SLACK_BOT_TOKEN"))


def post_err_slack(client, msg, channel):
    client.chat_postMessage(
        channel=channel,
        text=msg,
        username=USERNAME,
        icon_url=ICON_URL,
    )
    raise ValueError(f"Error: {msg}")


def pretty_str(s):
    return re.sub(r"\s{2,}", " ", s.replace("\n", " ")).strip()


def get_feed_range_date(client, channel, feed_range=None):
    """Feed range is between 1week"""
    if not feed_range:
        to_day = datetime.date.today()
        from_day = to_day + datetime.timedelta(days=-7)
    else:
        dates = feed_range.split("-")
        if len(dates) != 2:
            msg = f"Error: missing range date format: {dates}"
            post_err_slack(client, msg, channel)
        from_day = dates[0]
        to_day = dates[1]

    return (to_day, from_day)


def get_feed_arxiv(feed_range_date, categories):
    (to_day, from_day) = feed_range_date
    if not isinstance(to_day, str):
        to_day = to_day.strftime("%Y%m%d"),

    if not isinstance(from_day, str):
        from_day = from_day.strftime("%Y%m%d"),

    query = "search_query=lastUpdatedDate:%%5B%s1900+TO+%s1900%%5D+AND+(%s)" % (
        from_day,
        to_day,
        categories,
    )
    query += "&start=0&max_results=10000"
    query += "&sortBy=lastUpdatedDate&sortOrder=ascending"

    query_url = BASE_URL + query
    print(query_url)
    return (feedparser.parse(query_url), query_url)


def post_info_slack(client, query_url, feed, feed_range_date, channel):
    attachments = []
    colors = ["#1f77b4", "#ff7f0e"]
    (to_day, from_day) = feed_range_date
    if not isinstance(from_day, str):
        from_day = from_day.strftime("%Y/%m/%d")
    if not isinstance(to_day, str):
        to_day = to_day.strftime("%Y/%m/%d")

    if (len(feed.entries) > 0):
        for i, entry in enumerate(feed.entries):
            authors = ", ".join([author["name"] for author in entry["authors"]])
            comments = entry.arxiv_comment if "arxiv_comment" in entry else "None"
            published = entry.published
            updated = entry.updated

            attachment = {
                "title": f"[{i + 1}] {pretty_str(entry.title)}",
                "title_link": entry.link,
                "fields": [
                    {"title": "Authors", "value": authors, "short": False},
                    {"title": "Comments", "value": pretty_str(comments), "short": False},
                    {"title": "Submitted on", "value": published, "short": True},
                    {"title": "Updated on", "value": updated, "short": True},
                ],
                "color": colors[0] if published == updated else colors[1],
            }
            attachments.append(attachment)

            if (i + 1) % 5 == 0 or (i + 1) == len(feed.entries):
                client.chat_postMessage(
                    channel=channel,
                    attachments=attachments,
                    username=USERNAME,
                    icon_url=ICON_URL,
                )
                attachments.clear()
                time.sleep(1)
        finish_message = "*%d papers have been posted in %s - %s!*" % (
            len(feed.entries),
            from_day,
            to_day,
        )
        text = query_url + "\n" + finish_message
    else:
        text = f"Nothing paper: {from_day} - {to_day}"

    client.chat_postMessage(
        channel=channel,
        text=text,
        username=USERNAME,
        icon_url=ICON_URL,
    )


def extract_params(client, payload, channel):
    """
    This bot's payload expectes:
    `@arxiv-bot cat:cs.PL,cs.AI range:20220801-20220805`

    This function extract categories from suffix `cat:` and
    range from suffix `range` from above payload text.
    """
    cat = None
    feed_range = None

    t = payload.split(" ")
    if len(t) > 3:
        msg = "Error: @arxiv-bot's argument are only `cat:` and `range`."
        post_err_slack(client, msg, channel)

    for param in t[1:]:
        if param.startswith("cat:"):
            cat = param.strip("cat:")
            # Parse `<http://cs.AI|cs.AI>` in text to cs.AI.
            cat = cat.split("|")[-1][:-1]
            continue
        if param.startswith("range:"):
            feed_range = param.strip("range:")
            continue
    return {"cat": cat, "feed_range": feed_range}


def extract_category(client, channel, cat=None):
    if not cat:
        return DEFAULT_CATEGORY
    prefix = "cat:"
    cats = cat.split(",")
    for i, c in enumerate(cats):
        if i == 0:
            cat_params = prefix + c
            continue
        cat_params = cat_params + "+OR+" + c
    return cat_params


@app.event("message")
def handle_message_events(body, logger):
    logger.info(body)


@app.event("app_mention")
def feed(event, client):
    channel = event["channel"]
    params = extract_params(client, event["text"], channel)
    feed_range_date = get_feed_range_date(client, channel, params["feed_range"])
    cat_params = extract_category(client, channel, params["cat"])

    (feed, query_url) = get_feed_arxiv(feed_range_date, cat_params)
    post_info_slack(client, query_url, feed, feed_range_date, channel)


if __name__ == "__main__":
    SocketModeHandler(app, os.environ["SLACK_APP_TOKEN"]).start()
