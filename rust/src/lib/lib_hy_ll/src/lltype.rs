use rustc::lib::llvm::{
    TypeRef, 
    ContextRef, 
    ModuleRef, 
    BuilderRef, 
    ValueRef,
    BasicBlockRef
};

pub type Package     = ModuleRef;
pub type Context     = ContextRef;
pub type Value       = ValueRef;
pub type Type        = TypeRef;
pub type LLVMBuilder = BuilderRef;
pub type Block       = BasicBlockRef;