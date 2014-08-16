// use builder::Builder;
use lltype::*;

pub static RANGE_GEN_ID   : &'static str = "!range_gen";
pub static RANGE_GEN_INIT : &'static str = "!range_gen_init";
pub static RANGE_GEN_NEXT : &'static str = "!range_gen_next";

///All the info needed to create and use a Generator in llvm.
///llvm generator types are structured like this
///
///gen_type {
///  next_block,
///  state_var_1,
///  state_var_2,
///  ...
///  state_var_n,
///  ret_val_1,
///  ret_val_2,
///  ...
///  ret_val_n,
///}
pub struct Generator {
    pub typ       : Type,
    pub gen       : Value,
    pub init_args : Vec<Value>,
    pub init_func : String,
    pub next_func : String,
    pub var_count : uint, //might turn this into a hashmap of identifiers => gen_index
    pub ret_count : uint  //might turn this into a hashmap of identifiers => gen_index
}