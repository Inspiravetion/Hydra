#![crate_id = "hydra_jit"]
#![comment = "Hydra Code Generation and Jit"]
#![license = "MIT"]
#![crate_type = "dylib"]
#![crate_type = "rlib"]

#![feature(macro_rules)]

#![allow(dead_code)]
#![allow(unused_variable)]
#![allow(unused_mut)]
#![allow(non_camel_case_types)]
#![allow(dead_assignment)]
#![allow(unused_imports)]

extern crate rustc;
extern crate libc;
extern crate collections;

macro_rules! u (
    ($e:expr) => ( unsafe { $e }; )
)

pub mod codegen;