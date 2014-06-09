use rustc::lib::llvm::{llvm, Bool, TypeRef, ContextRef, ModuleRef, BuilderRef, 
                       ValueRef, BasicBlockRef, False, True, IntEQ, IntNE, 
                       IntSGT, IntSGE, IntSLT, IntSLE};
use collections::hashmap::HashMap;
use std::hash::sip::SipHasher;
use libc::{c_uint, c_ulonglong};

pub type Package     = ModuleRef;
pub type Context     = ContextRef;
pub type Scope       = BasicBlockRef;
pub type Value       = ValueRef;
pub type Type        = TypeRef;
pub type LLVMBuilder = BuilderRef;
pub type Block       = BasicBlockRef;

pub trait CodeGenerator {
    fn gen_code(self, &Builder);
}

pub struct Builder {
    builder : LLVMBuilder,
    ctx  : Context,
    pkgs : HashMap<~str, Package>,
    curr_pkg  : Option<Package>,
    curr_func : Option<Value>
}

impl Builder {
    pub fn new() -> Builder {
        let context = u!(llvm::LLVMContextCreate());

        Builder {
            builder : u!(llvm::LLVMCreateBuilderInContext(context)),
            ctx  : context,
            pkgs : HashMap::new() , 
            curr_pkg : None,
            curr_func : None
        }
    }

    pub fn dump(&mut self) {
        u!(llvm::LLVMDumpModule(self.curr_pkg.unwrap()));
    }

    pub fn print_module(&mut self, mod_name : &str) {
        let cpm = u!(llvm::LLVMCreatePassManager());
        u!(llvm::LLVMRustPrintModule(cpm, self.curr_pkg.unwrap(), chars(mod_name)));
    }

    /*
        PACKAGES
     */
    pub fn create_package(&mut self, pkg_name : &str) -> Package {  
        let pkg = u!(llvm::LLVMModuleCreateWithNameInContext(
            chars(pkg_name), 
            self.ctx
        ));

        self.curr_pkg = Some(pkg);
        self.pkgs.insert(pkg_name.to_owned(), pkg);
        pkg
    }

    /*
        FUNCTIONS
     */
    pub fn declare_function(&mut self, name : &str, args : Vec<Type>, ret : Type) -> Value {
        let typ = self.func_type(args, ret, False);
        u!(llvm::LLVMAddFunction(self.curr_pkg.unwrap(), chars(name), typ))
    }

    pub fn declare_variadic_function(&mut self, name : &str, args : Vec<Type>, ret : Type) -> Value {
        let typ = self.func_type(args, ret, True);
        u!(llvm::LLVMAddFunction(self.curr_pkg.unwrap(), chars(name), typ))
    }

    pub fn create_function(&mut self, name : &str, args : Vec<Type>, ret : Type, cb : |&mut Builder|) {
        let typ = self.func_type(args, ret, False);
        self.curr_func = Some(u!(llvm::LLVMAddFunction(self.curr_pkg.unwrap(), chars(name), typ)));
        self.new_block("");
        cb(self);
        self.curr_func = None;
    }

    pub fn create_variadic_function(&mut self, name : &str, args : Vec<Type>, ret : Type, cb : |&mut Builder|) {
        let typ = self.func_type(args, ret, True);
        self.curr_func = Some(u!(llvm::LLVMAddFunction(self.curr_pkg.unwrap(), chars(name), typ)));
        cb(self);
        self.curr_func = None;
    }

    pub fn call(&mut self, name : &str, args : Vec<Value>, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildCall(
            self.builder,
            self.get_function(name),
            args.as_ptr(),
            args.len() as c_uint,
            chars(variable_name)
        ))
    }

    pub fn get_function(&mut self, name : &str) -> Value {
        u!(llvm::LLVMGetNamedFunction(self.curr_pkg.unwrap(), chars(name)))
    }

    pub fn  get_param(&mut self, param_index : int) -> Value {
        u!(llvm::LLVMGetParam(self.curr_func.unwrap(), param_index as c_uint))
    }

    pub fn ret(&mut self, val : Value) {
        u!(llvm::LLVMBuildRet(self.builder, val));
    }

    pub fn ret_void(&mut self) {
        u!(llvm::LLVMBuildRetVoid(self.builder));
    }

    /*
        CONTROL STATEMENTS
    */

    pub fn cmp_eq(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildICmp(self.builder, IntEQ as c_uint, lhs, rhs, chars(variable_name)))
    }

    pub fn cmp_not_eq(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildICmp(self.builder, IntNE as c_uint, lhs, rhs, chars(variable_name)))
    }

    pub fn cmp_less_than(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildICmp(self.builder, IntSLT as c_uint, lhs, rhs, chars(variable_name)))
    }

    pub fn cmp_less_than_eq(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildICmp(self.builder, IntSLE as c_uint, lhs, rhs, chars(variable_name)))
    }

    pub fn cmp_greater_than(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildICmp(self.builder, IntSGT as c_uint, lhs, rhs, chars(variable_name)))
    }

    pub fn cmp_greater_than_eq(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildICmp(self.builder, IntSGE as c_uint, lhs, rhs, chars(variable_name)))
    }

    /*
        OPERATORS
    */
   
    pub fn add_op(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildAdd(self.builder, lhs, rhs, chars(variable_name)))
    }

    pub fn sub_op(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildSub(self.builder, lhs, rhs, chars(variable_name)))
    }

    pub fn mul_op(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildMul(self.builder, lhs, rhs, chars(variable_name)))
    }

    pub fn div_op(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildSDiv(self.builder, lhs, rhs, chars(variable_name)))   
    }

    pub fn mod_op(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildSRem(self.builder, lhs, rhs, chars(variable_name)))
    }

    pub fn and_op(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildAnd(self.builder, lhs, rhs, chars(variable_name)))
    }

    pub fn or_op(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildOr(self.builder, lhs, rhs, chars(variable_name)))
    }

    pub fn lshift_op(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildShl(self.builder, lhs, rhs, chars(variable_name)))
    }

    pub fn rshift_op(&mut self, lhs : Value, rhs : Value, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildAShr(self.builder, lhs, rhs, chars(variable_name)))
    }

    pub fn store(&mut self, val : Value, mem : Value) -> Value {
        u!(llvm::LLVMBuildStore(self.builder, val, mem))
    }

    pub fn load(&mut self, mem : Value, name : &str) -> Value {
        u!(llvm::LLVMBuildLoad(
            self.builder,
            mem,
            chars(name)
        ))
    }

    /*
        PHI NODES
     */

    pub fn phi_node(&mut self, typ : Type, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildPhi(self.builder, typ, chars(variable_name)))
    }

    pub fn add_incoming(&mut self, phi : Value, vals : Vec<Value>, blocks : Vec<Block>) {
        u!(llvm::LLVMAddIncoming(phi, vals.as_ptr(), blocks.as_ptr(), vals.len() as c_uint));
    }


    /*
        ARRAYS/POINTERS
     */
    pub fn array_malloc(&mut self, typ : Type, size : int, variable_name : &str) -> Value {
        u!(llvm::LLVMBuildArrayMalloc(
            self.builder,
            typ,
            self.int(20),
            chars(variable_name)
        ))
    }

    /*
        BLOCKS
     */
    pub fn new_block(&mut self, name : &str) -> Block {
        let block = u!(llvm::LLVMAppendBasicBlockInContext(
            self.ctx, 
            self.curr_func.unwrap(), 
            chars(name)
        ));

        u!(llvm::LLVMPositionBuilderAtEnd(self.builder, block));

        block
    }

    pub fn goto_block(&mut self, block : Block){
        u!(llvm::LLVMPositionBuilderAtEnd(self.builder, block));
    }

    pub fn conditional_break(&mut self, cond : Value, true_block : Block, false_block : Block) {
        u!(llvm::LLVMBuildCondBr(self.builder, cond, true_block, false_block));
    }

    pub fn break_to(&mut self, block : Block) {
        u!(llvm::LLVMBuildBr(self.builder, block));
    }

    pub fn block_address(&mut self, func : Value, block : Block) -> Value {
        u!(llvm::LLVMBlockAddress(func, block))
    }

    pub fn indirect_break(&mut self, addr : Value, blocks : Vec<Block>) {
        let ibreak = u!(llvm::LLVMBuildIndirectBr(self.builder, addr, blocks.len() as c_uint));
        for block in blocks.iter() {
            u!(llvm::LLVMAddDestination(
                ibreak, 
                *block
            ));
        }
    }

    pub fn get_entry_block(&mut self, func : Value) -> Block {
        u!(llvm::LLVMGetEntryBasicBlock(func))
    }

    pub fn get_first_block(&mut self, func : Value) -> Block {
        u!(llvm::LLVMGetFirstBasicBlock(func))
    }


    /*
        User Created Types
     */
    pub fn create_type(&mut self, field_typs : Vec<Type>, typ_name : &str) -> Type {
        let typ = u!(llvm::LLVMStructCreateNamed(self.ctx, chars(typ_name)));
        u!(llvm::LLVMStructSetBody(
            typ,
            field_typs.as_ptr(), 
            field_typs.len() as c_uint, 
            False
        ));

        typ
    }

    pub fn alloca(&mut self, obj_typ : Type, name : &str) -> Value {
        u!(llvm::LLVMBuildAlloca(
            self.builder, 
            obj_typ, 
            chars(name)
        ))
    }

    pub fn get_obj_property(&mut self, obj : Value, prop_idx : int, name : &str) -> Value {
        u!(llvm::LLVMBuildStructGEP(
            self.builder,
            obj,
            prop_idx as c_uint,
            chars(name)
        ))
    }

    /*
        TYPES
     */
    pub fn func_type(&mut self, args : Vec<Type>, ret : Type, variadic : Bool) -> Type {
        u!(llvm::LLVMFunctionType(ret, args.as_ptr(), args.len() as c_uint, variadic))   
    }

    pub fn char_type(&mut self) -> Type {
         u!(llvm::LLVMInt8TypeInContext(self.ctx))
    }

    pub fn int32_type(&mut self) -> Type {
        u!(llvm::LLVMInt32TypeInContext(self.ctx))
    }

    pub fn string_type(&mut self) -> Type {
        let char_typ = self.char_type();
        self.to_ptr_type(char_typ)
    }

    pub fn void_type(&mut self) -> Type {
        u!(llvm::LLVMVoidTypeInContext(self.ctx))
    }

    pub fn label_type(&mut self) -> Type {
        u!(llvm::LLVMLabelTypeInContext(self.ctx))
    }

    pub fn to_ptr_type(&mut self, typ : Type) -> Type {
        u!(llvm::LLVMPointerType(typ, 0))
    }

    /*
        VALUES
     */
    
    pub fn int(&mut self, num : int) -> Value {
        u!(llvm::LLVMConstInt(self.int32_type(), num as c_ulonglong, False))
    }

    pub fn string(&mut self, literal : &str, variable_name : &str) -> Value {
        let global = u!(llvm::LLVMBuildGlobalString(
            self.builder,
            chars(literal),
            chars(format!("global_{}", variable_name))
        ));

        let v = Vec::from_elem(2, self.int(0));
        u!(llvm::LLVMBuildInBoundsGEP(
            self.builder,
            global,
            v.as_ptr(),
            v.len() as c_uint,
            chars(variable_name)
        ))
    }
}

 fn chars(string : &str) -> *i8 {
    u!(string.to_c_str().unwrap())
}