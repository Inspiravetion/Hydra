extern crate syntax = "hydra_syntax";

use syntax::scanner;

use std::os;

fn main(){
    let args = os::args();
    let args = args.as_slice();

    let path_str = args[1].as_slice();

    println!("{:?}", scanner::tokenize_str("sfs"));
    println!("{:?}", scanner::tokenize_file(path_str));

    let tokens = scanner::stream_from_str("sdf");

    for tok in tokens.iter() {
        println!("{}", tok);
    }

    println!("---------");

    let tokens = scanner::stream_from_file(path_str);

    for tok in tokens.iter() {
        println!("{}", tok);
    }
}


