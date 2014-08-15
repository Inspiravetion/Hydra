#![crate_id = "hydra_llvm"]
#![comment = "Hydra LLVM Code Generation and Jit"]
#![license = "MIT"]
#![crate_type = "dylib"]
#![crate_type = "rlib"]

#![feature(macro_rules)]
#![feature(globs)]

#![allow(dead_code)]
#![allow(unused_variable)]
#![allow(unused_mut)]
#![allow(non_camel_case_types)]
#![allow(dead_assignment)]
#![allow(unused_imports)]

extern crate rustc;
extern crate libc;
extern crate collections;
extern crate syntax = "hydra_syntax";

macro_rules! u (
    ($e:expr) => ( unsafe { $e }; )
)

pub mod lltype;
pub mod generator;
pub mod builder;
pub mod intrinsics;
pub mod codegen;




