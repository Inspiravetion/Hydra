#![allow(unused_imports)]
#![allow(unused_variable)]

extern crate syntax = "hydra_syntax";
extern crate hyll = "hydra_llvm";

use hyll::codegen;

use std::os;

fn main(){
    // let args = os::args();
    // let args = args.as_slice();

    // let path_str = args[1].as_slice();

    codegen::gen_code_from_file_async("test.hy", "hydra.ll");
}


