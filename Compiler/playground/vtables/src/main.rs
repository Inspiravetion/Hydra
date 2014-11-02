#![feature(phase)]

#[phase(plugin)]
extern crate phf_mac;
extern crate phf;

use phf::PhfMap;

static KEYWORDS: PhfMap<&'static str, int> = phf_map! {
    "loop"     => 0,
    "continue" => 1,
    "break"    => 2,
    "fn"       => 3,
    "extern"   => 4,
    "asdfasf"  => 5,
    "ASDFASDF" => 6
};

// pub fn parse_keyword(keyword: &str) -> Option<int> {
//     KEYWORDS.find_equiv(keyword).map(|t| t.clone())
// }

pub fn main() {
    println!("should be 3 : {}", KEYWORDS.find_equiv("fn"));
}