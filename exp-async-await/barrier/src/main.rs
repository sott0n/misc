use std::sync::{Arc, Barrier};
use std::thread;

fn main() {
    let mut v = Vec::new();
    let barrier = Arc::new(Barrier::new(10));

    for i in 0..20 {
        println!("loop {}", i);
        let b = barrier.clone();
        let th = thread::spawn(move || {
            b.wait();
            println!("finished barrier: {}", i);
        });
        v.push(th);
    }

    for th in v {
        th.join().unwrap();
    }
}
