//WONT LINK...SEE https://github.com/hobinjk/rusty-kaleidoscope to figure out the issue

#![feature(macro_rules)]
#[link(name = "rustllvm", kind = "static")]

extern crate rustc;
extern crate libc;

use rustc::lib::llvm::{llvm, TypeRef, ContextRef, ModuleRef, ValueRef, BasicBlockRef, False, Bool, ExecutionEngineRef};

use libc::{c_uint, c_ulonglong};

macro_rules! u (
    ($e:expr) => ( unsafe { $e }; )
)

pub enum GenericValue_opaque {}
pub type GenericValueRef = *GenericValue_opaque;

extern {
    pub fn LLVMRunFunction(ExecutionEngine: ExecutionEngineRef, Function: ValueRef, ArgCount: c_uint, Args: *ValueRef) -> GenericValueRef;
    pub fn LLVMCreateExecutionEngineForModule(ExecutionEngine: *ExecutionEngineRef, Module: ModuleRef, OutErr: **char) -> Bool;
    pub fn LLVMConstInt(IntTy: TypeRef, N: c_ulonglong, SignExtend: Bool)
                            -> ValueRef;
    pub fn LLVMRustInitializeNativeTarget() -> Bool;
}

fn main() {
    unsafe {

        if LLVMRustInitializeNativeTarget() == False {
            fail!("womp...");
        }

        // Create our first global context.
        let llvm_context = llvm::LLVMContextCreate();

        // Create our module `module1` and attach our context.
        let llvm_module = "mod1".with_c_str(|buf| {
            llvm::LLVMModuleCreateWithNameInContext(buf, llvm_context)
        });

        let fac = factorial(llvm_context, llvm_module);

        // Create a useless builder.
        let builder = llvm::LLVMCreateBuilderInContext(llvm_context);

        let engine = unsafe {
            let llee: ExecutionEngineRef = 0 as ExecutionEngineRef;
            let err: *char = 0 as *char;
            LLVMCreateExecutionEngineForModule(&llee, llvm_module, &err);
            llee
        };

        let n = LLVMConstInt(int32_type(llvm_context), 4 as c_ulonglong, False);
        let args = Vec::from_elem(1, n); 
        LLVMRunFunction(engine, fac, 1 as c_uint, args.as_ptr());

        // Dump the output of the LLVM module in IR format.
        llvm::LLVMDumpModule(llvm_module);
    }
}

fn factorial(ctx : ContextRef, module : ModuleRef) -> ValueRef {
    let vec = Vec::from_elem(1, int32_type(ctx));

    let fac_type = u!(
        llvm::LLVMFunctionType(
            int32_type(ctx),
            vec.as_ptr(),
            vec.len() as c_uint,
            False
        )
    );

    let fac = u!(
        "fac".with_c_str(|buf| {
            llvm::LLVMAddFunction(module, buf, fac_type)            
        })
    );

    let entry = add_block_to_fn(ctx, fac, "entry");
    let if_true = add_block_to_fn(ctx, fac, "if_true");
    let if_false = add_block_to_fn(ctx, fac, "if_false");
    let end = add_block_to_fn(ctx, fac, "end");

    fac
}

fn add_block_to_fn(ctx : ContextRef, func : ValueRef, name : &str) -> BasicBlockRef {
    u!(
        name.with_c_str(|buf| {
            llvm::LLVMAppendBasicBlockInContext(ctx, func, buf)
        })
    )
}

fn int32_type(ctx : ContextRef) -> TypeRef {
    u!(llvm::LLVMInt32TypeInContext(ctx))
}