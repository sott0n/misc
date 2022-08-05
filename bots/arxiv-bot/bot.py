import os
import re
import sys
import time

import feedparser
import holidays
import datetime
from slack import WebClient

BASE_URL = "http://export.arxiv.org/api/query?"
CATEGORIES = "cat:cs.PL"


def is_weekend_or_holiday(date):
    if date in holidays.US() or date.weekday() >= 5:
        return True
    return False


def pretty_str(s):
    return re.sub(r"\s{2,}", " ", s.replace("\n", " ")).strip()


def get_feed_range_date():
    today = datetime.date.today()
    if is_weekend_or_holiday(today):
        sys.exit()

    day1 = today + datetime.timedelta(days=-1)
    while is_weekend_or_holiday(day1):
        day1 = day1 + datetime.timedelta(days=-1)

    day2 = day1 + datetime.timedelta(days=-1)
    while is_weekend_or_holiday(day2):
        day2 = day2 + datetime.timedelta(days=-1)
    return (day1, day2)


def get_feed_arxiv(feed_range_date):
    (day1, day2) = feed_range_date
    query = "search_query=lastUpdatedDate:%%5B%s1900+TO+%s1900%%5D+AND+(%s)" % (
        day2.strftime("%Y%m%d"),
        day1.strftime("%Y%m%d"),
        day2, day1,
        CATEGORIES,
    )
    query += "&start=0&max_results=10000"
    query += "&sortBy=lastUpdatedDate&sortOrder=ascending"

    query_url = BASE_URL + query
    return (feedparser.parse(query_url), query_url)


def post_info_slack(client, query_url, feed, slack_cfg, feed_range_date):
    attachments = []
    colors = ["#1f77b4", "#ff7f0e"]
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
        print(attachment)
        attachments.append(attachment)

        if (i + 1) % 5 == 0 or (i + 1) == len(feed.entries):
            # Post submission information
            client.chat_postMessage(
                channel=slack_cfg["channel"],
                attachments=attachments,
                username=slack_cfg["username"],
                icon_url=slack_cfg["icon_url"],
            )
            attachments.clear()
            time.sleep(1)

    (day1, day2) = feed_range_date
    finish_message = "*%d papers have been posted in %s - %s!*" % (
        len(feed.entries),
        day2.strftime("%Y/%m/%d"),
        day1.strftime("%Y/%m/%d"),
    )
    client.chat_postMessage(
        channel=slack_cfg["channel"],
        text=query_url + "\n" + finish_message,
        username=slack_cfg["username"],
        icon_url=slack_cfg["icon_url"],
    )


if __name__ == "__main__":
    feed_range_date = get_feed_range_date()
    (feed, query_url) = get_feed_arxiv(feed_range_date)

    token = os.getenv("SLACK_API_TOKEN", "aaa")
    client = WebClient(token, timeout=300)
    slack_cfg = {
        "channel": "#arxiv_ml",
        "username": "stat.ML/cs.LG/cs.AI/cs.NE",
        "icon_url": "http://i.imgur.com/8NYocT8.png",
     }
    post_info_slack(client, query_url, feed, slack_cfg, feed_range_date)
