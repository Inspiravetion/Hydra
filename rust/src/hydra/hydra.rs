extern crate syntax = "hydra_syntax";

use syntax::scanner;

use std::os;

fn main(){
    let args = os::args();
    let args = args.as_slice();

    let path_str = args[1].as_slice();

    for tok in scanner::tokenize_str("?,~;:{}()[] abc def! ghi? _private").iter() {
        println!("{}", tok);
    }

    // println!("{:?}", scanner::tokenize_file(path_str));

    let tokens = scanner::stream_from_str(". .. ...");

    for tok in tokens.iter() {
        println!("{}", tok);
    }

    // println!("---------");

    // let tokens = scanner::stream_from_file(path_str);

    // for tok in tokens.iter() {
    //     println!("{}", tok);
    // }
}


