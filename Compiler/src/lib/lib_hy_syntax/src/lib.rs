#![crate_name = "hy_syntax"]
#![comment = "Hydra Tokens, Scanner, Parser, and AST"]
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

// extern crate debug;

pub mod token;
pub mod scanner;
pub mod ast;
pub mod parser;