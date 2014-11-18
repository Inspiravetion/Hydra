#![feature(phase)]

#[phase(plugin)]
extern crate phf_mac;
extern crate phf;

use phf::Map;

type HyFunc = Box<Fn<(int, f64), int>>;

static KEYWORDS: Map<&'static str, int> = phf_map! {
    "loop"     => 0,
    "continue" => 1,
    "break"    => 2,
    "fn"       => 3,
    "extern"   => 4,
    "asdfasf"  => 5,
    "ASDFASDF" => 6
};

static FUNCS : Map<&'static str, HyFunc> = phf_map! {
    "hello"    => hello
};

fn hello(i : int, f : f64) -> int {
    println!("world");
    1
}

// pub fn parse_keyword(keyword: &str) -> Option<int> {
//     KEYWORDS.find_equiv(keyword).map(|t| t.clone())
// }

pub fn main() {
    println!("should be 3 : {}", KEYWORDS.get(&"fn"));
    println!("{}", *(FUNCS.get(&"hello").unwrap())(1, 2f64));
}