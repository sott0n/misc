use anyhow::Result;
use std::env;
use std::fs;
use std::io::{Cursor, Read};

pub fn read_next<R: Read>(cur: &mut R) -> Result<u8> {
    let mut buf = [0u8; 1];
    cur.read_exact(&mut buf)?;
    Ok(buf[0])
}

pub fn read_bytes<R: Read>(cur: &mut R, len: usize) -> Result<Vec<u8>> {
    let mut b = vec![0u8; len];
    cur.read_exact(&mut b)?;
    Ok(b)
}

pub fn parse(binary: Vec<u8>, input_size: usize) -> Result<()> {
    let mut cur = Cursor::new(binary);
    loop {
        if cur.position() >= (input_size - 1) as u64 {
            break;
        }
        let b = read_next(&mut cur)?;
        dbg!(b);
    }
    Ok(())
}

fn main() {
    let args = env::args();
    if args.len() != 2 {
        panic!("arguments only assumed an object file");
    }
    let obj_file = args.skip(1).next().unwrap();
    if !obj_file.ends_with(".o") {
        panic!();
    }
    let binary = fs::read(obj_file).unwrap();
    let length = binary.len();
    parse(binary, length).unwrap();
}
