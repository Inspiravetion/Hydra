#![feature(macro_rules)]

extern crate rustc;
extern crate libc;

use rustc::lib::llvm::{llvm, TypeRef, ContextRef, ModuleRef, BuilderRef, ValueRef, BasicBlockRef, False, True, IntEQ};
use libc::{c_uint, c_ulonglong};

macro_rules! u (
    ($e:expr) => ( unsafe { $e }; )
)

fn main() {
    unsafe {
        // Create our first global context.
        let llvm_context = llvm::LLVMContextCreate();

        // Create our module `module1` and attach our context.
        let llvm_module = "mod1".with_c_str(|buf| {
            llvm::LLVMModuleCreateWithNameInContext(buf, llvm_context)
        });

        // Create a useless builder.
        let builder = llvm::LLVMCreateBuilderInContext(llvm_context);

        declare_puts(llvm_context, llvm_module);
        declare_sprintf(llvm_context, llvm_module);

        factorial(llvm_context, llvm_module, builder);

        create_main(llvm_context, llvm_module, builder);

        // Print the output of the LLVM module in IR format to a file called facorial.ll
        let cpm = llvm::LLVMCreatePassManager();
        llvm::LLVMRustPrintModule(cpm, llvm_module, chars("factorial.ll"));
    }
}

fn declare_sprintf(ctx : ContextRef, module : ModuleRef) {
    let mut args = Vec::new();
    args.push(char_pointer_type(ctx));
    args.push(char_pointer_type(ctx));

    let sprintf_type = variadic_func_type(int32_type(ctx), args);
    u!(llvm::LLVMAddFunction(module, chars("sprintf"), sprintf_type));
}

fn create_main(ctx : ContextRef, module : ModuleRef, builder : BuilderRef) {
    let main_type = func_type(int32_type(ctx), Vec::new());

    let main = u!(llvm::LLVMAddFunction(module, chars("main"), main_type));

    let entry = add_anon_block_to_fn(ctx, main);
    u!(llvm::LLVMPositionBuilderAtEnd(builder, entry));

    let fac_n = 4;

    let fac_args = Vec::from_elem(1, int_ref(ctx, fac_n));

    let fac_res = u!(llvm::LLVMBuildCall(
        builder,
        llvm::LLVMGetNamedFunction(module, chars("fac")),
        fac_args.as_ptr(),
        fac_args.len() as c_uint,
        chars("facres")
    ));

    let buf = u!(llvm::LLVMBuildArrayMalloc(
        builder,
        char_type(ctx),
        int_ref(ctx, 20),
        chars("buf")
    ));
    
    let fmt = u!(llvm::LLVMBuildGlobalString(
        builder,
        chars(format!("fac({}) = %d", fac_n)),
        chars("fmt")
    ));

    let v = Vec::from_elem(2, int_ref(ctx, 0));
    let fmtarr = u!(llvm::LLVMBuildInBoundsGEP(
        builder,
        fmt,
        v.as_ptr(),
        v.len() as c_uint,
        chars("fmtarr")
    ));
    
    let mut sprintf_args = Vec::new();
    sprintf_args.push(buf);
    sprintf_args.push(fmtarr);
    sprintf_args.push(fac_res);

    u!(llvm::LLVMBuildCall(
        builder,
        llvm::LLVMGetNamedFunction(module, chars("sprintf")),
        sprintf_args.as_ptr(),
        sprintf_args.len() as c_uint,
        chars("formatted")
    ));    

    let puts_args = Vec::from_elem(1, buf);

    u!(llvm::LLVMBuildCall(
        builder,
        llvm::LLVMGetNamedFunction(module, chars("puts")),
        puts_args.as_ptr(),
        puts_args.len() as c_uint,
        chars("")
    ));   

    u!(llvm::LLVMBuildRet(builder, int_ref(ctx, 0)));
 
}

//Link to extern functions
fn declare_puts(ctx : ContextRef, module : ModuleRef) {
    let args = Vec::from_elem(1, char_pointer_type(ctx));

    let puts_type = u!(
        llvm::LLVMFunctionType(
            int32_type(ctx),
            args.as_ptr(),
            args.len() as c_uint,
            False
        )
    );

    u!(llvm::LLVMAddFunction(module, chars("puts"), puts_type));
}


//define function (if stmt, func call, return stmt)
fn factorial(ctx : ContextRef, module : ModuleRef, builder : BuilderRef) {
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
        llvm::LLVMAddFunction(module, chars("fac"), fac_type)            
    );

    let n = u!(llvm::LLVMGetParam(fac, 0 as c_uint));

    let entry = add_named_block_to_fn(ctx, fac, "entry");
    let if_true = add_named_block_to_fn(ctx, fac, "if_true");
    let if_false = add_named_block_to_fn(ctx, fac, "if_false");
    let end = add_named_block_to_fn(ctx, fac, "end");

    unsafe{
        //if n == 0 do {true block} else {false block}
        llvm::LLVMPositionBuilderAtEnd(builder, entry);

        let cond = llvm::LLVMBuildICmp(
            builder,
            IntEQ as c_uint,
            n,
            int_ref(ctx, 0),
            chars("cmptmp")
        );

        llvm::LLVMBuildCondBr(
            builder,
            cond,
            if_true,
            if_false
        );

        //setup to return 1
        llvm::LLVMPositionBuilderAtEnd(builder, if_true);
        let true_res = int_ref(ctx, 1);
        llvm::LLVMBuildBr(builder, end);

        //setup to return fac(n-1) * n
        llvm::LLVMPositionBuilderAtEnd(builder, if_false);
        let minus = llvm::LLVMBuildSub(
            builder,
            n,
            int_ref(ctx, 1),
            chars("subtmp")
        );
        let args = Vec::from_elem(1, minus);
        let func_call = llvm::LLVMBuildCall(
            builder,
            fac,
            args.as_ptr(),
            args.len() as c_uint,
            chars("calltmp")
        );
        let false_res = llvm::LLVMBuildMul(
            builder,
            n,
            func_call,
            chars("multmp")
        );
        llvm::LLVMBuildBr(builder, end);

        //setup return
        llvm::LLVMPositionBuilderAtEnd(builder, end);
        let ret = llvm::LLVMBuildPhi(
            builder,
            int32_type(ctx),
            chars("return")
        );

        let vals = vec!(true_res, false_res);
        let blocks = vec!(if_true, if_false);

        llvm::LLVMAddIncoming(
            ret,
            vals.as_ptr(),
            blocks.as_ptr(),
            vals.len() as c_uint
        );

        llvm::LLVMBuildRet(builder, ret);
    }
}

fn func_type(ret_type : TypeRef, arg_types : Vec<TypeRef>) -> TypeRef {
    u!(llvm::LLVMFunctionType(ret_type, arg_types.as_ptr(), arg_types.len() as c_uint, False))
}

fn variadic_func_type(ret_type : TypeRef, arg_types : Vec<TypeRef>) -> TypeRef {
    u!(llvm::LLVMFunctionType(ret_type, arg_types.as_ptr(), arg_types.len() as c_uint, True))
}

fn chars(string : &str) -> *i8 {
    u!(string.to_c_str().unwrap())
}

fn int_ref(ctx : ContextRef, num : int) -> ValueRef {
    u!(llvm::LLVMConstInt(int32_type(ctx), num as c_ulonglong, False))
}

fn add_named_block_to_fn(ctx : ContextRef, func : ValueRef, name : &str) -> BasicBlockRef {
    u!(llvm::LLVMAppendBasicBlockInContext(ctx, func, chars(name)))
}

fn add_anon_block_to_fn(ctx : ContextRef, func : ValueRef) -> BasicBlockRef {
    add_named_block_to_fn(ctx, func, "")
}

fn char_type(ctx : ContextRef) -> TypeRef {
    u!(llvm::LLVMInt8TypeInContext(ctx))
}

fn char_pointer_type(ctx : ContextRef) -> TypeRef {
    u!(llvm::LLVMPointerType(llvm::LLVMInt8TypeInContext(ctx), 0))
}

fn int32_type(ctx : ContextRef) -> TypeRef {
    u!(llvm::LLVMInt32TypeInContext(ctx))
}

