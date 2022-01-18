mod green;

fn producer() {
    let id = green::spawn(consumer, 2 * 1024 * 1024);
    for i in 0..10 {
        green::send(id, i);
    }
}

fn consumer() {
    for _ in 0..10 {
        let msg = green::recv().unwrap();
        println!("received: count = {}", msg);
    }
}

fn main() {
    green::spawn_from_main(producer, 2 * 1024 * 1024);
}
