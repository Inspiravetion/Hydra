#![allow(unused_imports)]
#![allow(unused_variable)]

extern crate "hy_ll" as hyll;

use hyll::codegen;

use std::os;
use std::io;
use std::io::{TempDir, Command};
use std::path::posix::Path;
use std::io::fs;
use std::io::fs::PathExtensions;

fn main(){
    // let args = os::args();
    // let args = args.as_slice();

    // let path_str = args[1].as_slice();
    // 
    // let dir = match TempDir::new("hy"){
    //     Some(td) => td,
    //     None => fail!("could not make temp directory")
    // };

    let path = Path::new("./tmp");

    if !path.exists() {
        match fs::mkdir(&path, io::USER_RWX) {
            Ok(..) => {},
            Err(..) => {fail!("could not make directory")}
        }
    }

    let dir_path = &path;//dir.path();
     
    let in_base = "test";
    let hy = format!("{}.hy", in_base);
    let ll = format!("{}.ll", in_base);
    let bc = format!("{}.bc", in_base);
    let s  = format!("{}.s", in_base);

    let mut assemble = Command::new("llvm-as");
    let mut compile  = Command::new("llc");
    let mut clang    = Command::new("clang");

    let mut commands = vec![
        assemble.arg(ll.as_slice()).cwd(dir_path),
        compile.arg(bc.as_slice()).cwd(dir_path),
        clang.arg("-o")
            .arg(in_base)
            .arg(dir_path.join(s).as_str().unwrap())
            .arg("libhy_obj.a")
            .arg("-lSystem")
            .arg("-lpthread")
            .arg("-lc")
            .arg("-lm")
    ];

    codegen::gen_code_from_file_async(hy.as_slice(), dir_path.join(ll).as_str().unwrap());

    for cmd in commands.iter_mut() {
        match cmd.status() {
            Ok(status) => { continue; },
            Err(e) => { fail!("{}", e); }
        };
    }

    
}


