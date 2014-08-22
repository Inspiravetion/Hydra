use rustc::lib::llvm::{Bool, False, True, IntEQ, IntNE, IntSGT, IntSGE, IntSLT, IntSLE};
use rustc::lib::llvm;
use std::collections::hashmap::HashMap;
use libc::{c_uint, c_ulonglong, puts};
use generator::{Generator, RANGE_GEN_ID, RANGE_GEN_INIT, RANGE_GEN_NEXT};
use generator;
use lltype::*;
use std::owned::Box;
use std::io::{File, BufferedReader};


pub struct Builder {
    builder    : LLVMBuilder,
    ctx        : Context,
    types      : HashMap<String, Type>,
    pkgs       : HashMap<String, Package>,
    curr_pkg   : Option<Package>,
    pub curr_func  : Option<Value>,
    curr_scope : Box<Scope>,
    loop_scope : Box<LoopScope>
}

#[deriving(Clone)]
enum Scope {
    GlobalScope(HashMap<String, Variable>),
    InnerScope(HashMap<String, Variable>, Box<Scope>)
}

#[deriving(Clone)]
enum Variable {
    RegVar(Value),
    GenVar(int)
}

impl Scope {
    pub fn new_global() -> Box<Scope> {
       box GlobalScope(HashMap::new())
    }

    pub fn new_inner(parent: Box<Scope>) -> Box<Scope> {
       box InnerScope(HashMap::new(), parent)
    }

    pub fn get(&mut self, var_ident : &str) -> Option<Value> {
        match *self {
            GlobalScope(ref mut vars) => {
                match vars.find(&var_ident.to_string()) {
                    Some(var) => {
                        match *var {
                            RegVar(val) => Some(val),
                            GenVar(_) => { fail!("Generator variables not needed in regular function") }
                        }
                    },
                    None      => None
                }
            },
            InnerScope(ref mut vars, ref mut parent) => {
                match vars.find(&var_ident.to_string()) {
                    Some(var) => {
                        match *var {
                            RegVar(val) => Some(val),
                            GenVar(_) => { fail!("Generator variables not needed in regular function") }
                        }
                    },
                    None      => parent.get(var_ident)
                }
            }
        }
    }

    pub fn put(&mut self, var_ident : &str, val : Value) {
        match *self {
            GlobalScope(ref mut vars) => {
                vars.insert(var_ident.to_string(), RegVar(val));
            },
            InnerScope(ref mut vars, _) => {
                vars.insert(var_ident.to_string(), RegVar(val));                
            }
        };
    }

    pub fn get_gen(&mut self, var_ident : &str) -> Option<Variable> {
        match *self {
            GlobalScope(ref mut vars) => {
                match vars.find(&var_ident.to_string()) {
                    Some(var) => {
                        match *var {
                            GenVar(_) => Some(*var),
                            RegVar(_) => { fail!("Outside variables not supported in generators yet") }
                        }
                    },
                    None      => None
                }
            },
            InnerScope(ref mut vars, ref mut parent) => {
                match vars.find(&var_ident.to_string()) {
                    Some(var) => {
                        match *var {
                            GenVar(_) => Some(*var),
                            RegVar(_) => { fail!("Outside variables not supported in generators yet"); }
                        }
                    },
                    None      => parent.get_gen(var_ident)
                }
            }
        }
    }

    pub fn put_gen(&mut self, var_ident : &str, idx : int) {
        match *self {
            GlobalScope(ref mut vars) => {
                vars.insert(var_ident.to_string(), GenVar(idx));
            },
            InnerScope(ref mut vars, _) => {
                vars.insert(var_ident.to_string(), GenVar(idx));                
            }
        };
    }
}

#[deriving(Clone)]
enum LoopScope {
    NotInLoop,
    InLoop(Block, Block, Box<LoopScope>)
}

impl LoopScope {
    fn new() -> Box<LoopScope> {
        box NotInLoop
    }

    fn new_loop(continu : Block, brk : Block, parent : Box<LoopScope>) -> Box<LoopScope> {
        box InLoop(continu, brk, parent)
    }

    fn continue_block(self) -> Option<Block> {
        match self {
            NotInLoop => None,
            InLoop(continu, _, _) => Some(continu)
        }
    }

    fn break_block(self) -> Option<Block> {
        match self {
            NotInLoop => None,
            InLoop(_, brk, _) => Some(brk)
        }
    }
}

impl Builder {
    pub fn new() -> Builder {
        let context = u!(llvm::LLVMContextCreate());
        let builder = u!(llvm::LLVMCreateBuilderInContext(context));

        let mut b = Builder {
            builder    : builder,
            ctx        : context,
            types      : HashMap::new(),
            pkgs       : HashMap::new() , 
            curr_pkg   : None,
            curr_func  : None,
            curr_scope : Scope::new_global(),
            loop_scope : LoopScope::new()
        };

        b.create_package("hydra");
        b.add_builtin_types();
        b.link_in_std();

        b
    }

    pub fn link_in_std(&mut self) {
        match self.curr_pkg {
            Some(module) => {
                //this path is relative to where the executable is run from
                //not where the file is on disk
                let path = &Path::new("/Users/Charlie/Projects/Hydra/rust/hy_obj.ll");

                let mut file = match File::open(path) {
                    Ok(f) => BufferedReader::new(f),
                    Err(msg) => fail!(msg) 
                };

                let mut ll_string = String::new();

                for poss_line in file.lines() {
                    let line_string = match poss_line {
                        Ok(string) => string,
                        Err(err) => fail!(err)
                    };

                    let line = line_string.as_slice();

                    if line.starts_with("%") {
                        let sections : Vec<&str> = line.split('.').collect();
                        if sections.len() > 1 && sections[1].starts_with("HyObj") {
                            ll_string.push_str(line);
                        }
                    } else if line.starts_with("define") {
                        let sections : Vec<&str> = line.split('@').collect();
                        if sections.len() > 1 &&  sections[1].starts_with("hy_") {
                            ll_string.push_str(line);
                        } 
                    }
                }     

                println!("\n\n{}\n\n", ll_string);           

                // let len = contents_vec.len();
                // let bc = contents_vec.as_ptr();

                // u!(llvm::LLVMRustLinkInExternalBitcode(
                //     module,
                //     bc as *const i8,
                //     len as u64
                // ));
            },
            None => fail!("Tried to link in std before creating package")
        };
    }

    pub fn open_loop_scope(&mut self, continu : Block, brk : Block) {
        let inner_scope = LoopScope::new_loop(continu, brk, self.loop_scope.clone());
        self.loop_scope = inner_scope;
    }

    pub fn close_loop_scope(&mut self) {
        let p = match *self.loop_scope {
            InLoop(_,_,ref parent) => parent.clone(),
            NotInLoop => fail!("tried to close loop scope when you werent in a loop")
        };

        self.loop_scope = p;
    }

    pub fn get_continue_block(&mut self) -> Option<Block> {
        match *self.loop_scope {
            NotInLoop => None,
            InLoop(continu, _, _) => Some(continu)
        }
    }

    pub fn get_break_block(&mut self) -> Option<Block> {
        match *self.loop_scope {
            NotInLoop => None,
            InLoop(_, brk, _) => Some(brk)
        }
    }

    pub fn with_fresh_scope(&mut self, cb :|&mut Builder|) {
        let saved_scope = self.curr_scope.clone();
        self.curr_scope = Scope::new_global();
        cb(self);
        self.curr_scope = saved_scope;
    }

    pub fn open_scope(&mut self) {
        let inner_scope = Scope::new_inner(self.curr_scope.clone());
        self.curr_scope = inner_scope;
    }

    pub fn close_scope(&mut self) {
        let p = match *self.curr_scope {
            InnerScope(_,ref parent) => parent.clone(),
            GlobalScope(_) => fail!("tried to close global scope")
        };

        self.curr_scope = p;
    }

    pub fn get_var(&mut self, name : &str) -> Option<Value> {
        self.curr_scope.get(name)
    }

    pub fn get_gen_var(&mut self, name : &str, ctxt : Value) -> Option<Value> {
        match self.curr_scope.get_gen(name) {
            Some(var) => {
                match var {
                    GenVar(idx) => {
                        Some(self.get_obj_property(ctxt, idx, format!("_{}", name).as_slice()))
                    },
                    _ => None
                }
            }, 
            None => None
        }
    }

    pub fn set_var(&mut self, name : &str, val : Value) {
        self.curr_scope.put(name, val);
    }

    pub fn set_gen_var(&mut self, name : &str, idx : int) {
        self.curr_scope.put_gen(name, idx);
    }

    pub fn assign_var(&mut self, var_val : Value, var_name : &str) {
        let var_ptr = match self.get_var(var_name){
            Some(ptr) => ptr,
            None => fail!("No {} in scope.", var_name)
        };

        self.store(var_val, var_ptr);
    }

    pub fn assign_gen_var(&mut self, var_val : Value, ctxt : Value, var_name : &str) {
        let var_ptr = match self.get_gen_var(var_name, ctxt){
            Some(ptr) => ptr,
            None => fail!("No {} in scope.", var_name)
        };

        self.store(var_val, var_ptr);
    }

    pub fn new_default_var(&mut self, name : &str) -> Value {
        let default = self.default_value();
        self.alloca_and_store(default, name)
    }

    pub fn new_var(&mut self, val : Value, name : &str) -> Value {
        self.alloca_and_store(val, name)
    }

    fn alloca_and_store(&mut self, val : Value, name : &str) -> Value {
        let typ = self.int32_type();
        let pointer = self.alloca(typ, name);

        self.store(val, pointer);
        pointer
    }

    fn add_builtin_types(&mut self) {
        self.define_range_gen_builtin_type();
    }

    pub fn default_value(&mut self) -> Value {
        //TODO this should return the undefined sentinal
        self.int(-1)
    }

    pub fn define_range_gen_builtin_type(&mut self) {
        let string_type = self.string_type();
        let int_type    = self.int32_type();
        let void_type   = self.void_type();
        
        //                next_block   start_var end_var   ret_val1
        let fields = vec!(string_type, int_type, int_type, int_type);
        let range_gen_typ = self.create_type(&fields, RANGE_GEN_ID);

        self.types.insert(RANGE_GEN_ID.to_string(), range_gen_typ);

        let struct_ptr_typ = self.to_ptr_type(range_gen_typ);
        let next_args = vec!(struct_ptr_typ);
        //TODO this is veryyyy hacky
        let mut blocks = Vec::new();
        self.create_function(RANGE_GEN_NEXT, next_args, int_type, |fb : &mut Builder|{
        
            let entry = fb.new_block("entry");
            let cond = fb.new_block("cond");
            let incr = fb.new_block("incr");
            let yield1 = fb.new_block("yield1");
            let exit = fb.new_block("exit");
            blocks.push(cond);

            // //check which block to resume on
            fb.goto_block(entry);

            let gen_ctx = fb.get_param(0);
            let ctx_state = fb.get_obj_property(gen_ctx, 0, "ctx_state");
            let ctx_index = fb.get_obj_property(gen_ctx, 1, "ctx_index");
            let ctx_end   = fb.get_obj_property(gen_ctx, 2, "ctx_end");
            let ctx_ret   = fb.get_obj_property(gen_ctx, 3, "ctx_ret");

            let label = fb.load(ctx_state, "dest");
            fb.indirect_break(label, vec!(cond, incr));

            //check if index < end...goto yield if true, exit if false
            fb.goto_block(cond);
            let idx = fb.load(ctx_index, "index");
            let end = fb.load(ctx_end, "end");
            let cmp = fb.cmp_less_than(idx, end, "cmp_tmp");
            fb.conditional_break(cmp, yield1, exit);

            //incr index and break to cond
            fb.goto_block(incr);
            let idx = fb.load(ctx_index, "index");
            let one = fb.int(1);
            let add_tmp = fb.add_op(idx, one, "add_tmp");
            fb.store(add_tmp, ctx_index);
            fb.break_to(cond);

            //setup incr as the next block and yield
            fb.goto_block(yield1);
            let next = fb.get_function(RANGE_GEN_NEXT);
            let resume_block = fb.block_address(next, incr);
            fb.store(resume_block, ctx_state);

            let ret_val = fb.load(ctx_index, "ret1");
            fb.store(ret_val, ctx_ret);

            let done = fb.int(1);
            fb.ret(done);
            
            fb.goto_block(exit);
            let done = fb.int(0);
            fb.ret(done);
        });

        let init_args = vec!(struct_ptr_typ, int_type, int_type);
        self.create_function(RANGE_GEN_INIT, init_args, void_type, |fb : &mut Builder |{
            fb.goto_first_block();

            let context_obj = fb.get_param(0);
            let start       = fb.get_param(1);
            let end         = fb.get_param(2);

            let context_state = fb.get_obj_property(context_obj, 0, "state");
            let context_start = fb.get_obj_property(context_obj, 1, "start");
            let context_end   = fb.get_obj_property(context_obj, 2, "end");

            let next = fb.get_function(RANGE_GEN_NEXT);
            let gen_entry = fb.block_address(next , blocks.as_slice()[0]);

            fb.store(gen_entry, context_state);
            fb.store(start, context_start);
            fb.store(end, context_end);

            fb.ret_void();
        });
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
        self.pkgs.insert(pkg_name.to_string(), pkg);
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
        let saved_func = self.curr_func.clone();
        self.curr_func = Some(u!(llvm::LLVMAddFunction(self.curr_pkg.unwrap(), chars(name), typ)));
        self.new_block("");
        cb(self);
        self.curr_func = saved_func;
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

        block
    }

    pub fn goto_block(&mut self, block : Block){
        u!(llvm::LLVMPositionBuilderAtEnd(self.builder, block));
    }

    pub fn goto_first_block(&mut self) {
        let this_fn   = self.curr_func.unwrap();
        let first_blk = self.get_first_block(this_fn);
        self.goto_block(first_blk);
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

    pub fn value_to_block(&mut self, val : Value) -> Block {
        u!(llvm::LLVMValueAsBasicBlock(val))
    }

    pub fn block_to_value(&mut self, block : Block) -> Value {
        u!(llvm::LLVMBasicBlockAsValue(block))
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

    pub fn get_last_block(&mut self) -> Block {
        u!(llvm::LLVMGetLastBasicBlock(self.curr_func.unwrap()))
    }

    pub fn goto_last_instr(&mut self, block : Block) {
        let instr = u!(llvm::LLVMGetLastInstruction(block));
        u!(llvm::LLVMPositionBuilder(self.builder, block, instr));
    } 

    /*
        User Created Types
     */
    pub fn create_type(&mut self, field_typs : &Vec<Type>, typ_name : &str) -> Type {
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

    pub fn get_type(&mut self, id : &str) -> Type {
        self.types[id.to_string()]
    }

    pub fn get_range_gen_type(&mut self) -> Type {
        self.get_type(RANGE_GEN_ID)
    }

    pub fn range_gen(&mut self, start : Value, end : Value) -> Generator {
        let range_type = self.get_range_gen_type();
        let gen        = self.alloca(range_type, "range_generator");
        let args       = vec!(gen, start, end);

        Generator {
            typ       : range_type,
            gen       : gen,
            init_args : args,
            init_func : RANGE_GEN_INIT.to_string(),
            next_func : RANGE_GEN_NEXT.to_string(),
            var_count : 2,
            ret_count : 1
        }
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

    pub fn int1_type(&mut self) -> Type {
        u!(llvm::LLVMInt1TypeInContext(self.ctx))
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

    pub fn type_of(&mut self, val : Value) -> Type {
        u!(llvm::LLVMTypeOf(val))
    }

    pub fn type_to_str(&mut self, typ : Type) {
        let type_str = u!(llvm::LLVMTypeToString(typ)); 
        u!(puts(type_str));
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
            chars(format!("global_{}", variable_name).as_slice())
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

    pub fn bitcast(&mut self, val : Value, to :Type, name : &str) -> Value {
        u!(llvm::LLVMBuildBitCast(
            self.builder,
            val,
            to,
            chars(name)
        ))
    }

    pub fn zext(&mut self, val : Value, to :Type, name : &str) -> Value {
        u!(llvm::LLVMBuildZExt(
            self.builder,
            val,
            to,
            chars(name)
        ))
    }
}

pub struct GenBuilder<'a> {
    name        : &'a str,
    params      : &'a Vec<String>,
    obj_type    : Type,
    gen_types   : Vec<Type>,
    pub state_indxs : Vec<uint>,
    resume_blks : Vec<Block>,
    entry_block : Option<Block>,
    gen_type    : Option<Type>,
    pub num_ret     : Option<uint>
}

impl<'a> GenBuilder<'a> {
    
    pub fn new(name : &'a str, params : &'a Vec<String>, obj_type : Type, string_type : Type) -> GenBuilder<'a> {
        let type_buffer = vec!(string_type);

        let mut gb = GenBuilder { 
            name        : name,
            params      : params,
            obj_type    : obj_type,
            gen_types   : type_buffer,
            state_indxs : Vec::new(),
            resume_blks : Vec::new(),
            entry_block : None,
            gen_type    : None,
            num_ret     : None
        };

        gb.register_n_variables(params.len());

        gb
    }

    pub fn register_n_variables(&mut self, n : uint) {
        let obj_type = self.obj_type;

        for _ in range(0, n) {
            self.gen_types.push(obj_type);
        }

        let last_start = match self.state_indxs.last() {
            Some(last) => *last,
            None => 1u
        };

        self.state_indxs.push(last_start + n);
    }

    fn to_type(&mut self, builder : &mut Builder) -> Type {
        let concrete_gen_type = builder.create_type(&self.gen_types, self.name);
        let gen_type = builder.to_ptr_type(concrete_gen_type);

        self.gen_type = Some(gen_type);

        gen_type
    }

    fn init_name(&mut self) -> String {
        format!("!{}_gen_init", self.name)
    }

    fn next_name(&mut self) -> String {
        format!("!{}_gen_next", self.name)
    }

    pub fn create_next_function(&mut self, builder : &mut Builder, build_stmts : |&mut GenGenState, &mut Builder|) {
        let next_name = self.next_name();
        let next_params = vec!(self.to_type(builder));
        let int_type = builder.int32_type();

        builder.create_function(next_name.as_slice(), next_params, int_type,|fb : &mut Builder|{
            fb.goto_first_block();
            
            let gen_ctx = fb.get_param(0);

            //have stmts build their restoration code in this block
            let state_restore = fb.new_block("gen_state_restore");
            //have stmts build their state saving code in this block
            let state_save = fb.new_block("gen_state_save");
            //init should set the first block to start at as this entry block
            let entry = fb.new_block("gen_state_entry");
            //early returns should break here and this should return 0 to indicate
            //the generator is done
            let exit = fb.new_block("gen_exit");
            self.entry_block = Some(entry);

            let mut possible_labels = vec!(state_save, entry, exit);

            fb.goto_block(entry);

            { //magic to make gen_gen_state get dropped so i can get the borrows back
                let mut gen_gen_state = GenGenState::new(
                    gen_ctx,
                    state_save, 
                    state_restore,
                    entry,
                    &mut possible_labels, 
                    &self.state_indxs
                );

                build_stmts(&mut gen_gen_state,fb);
            }
            fb.break_to(exit);

            // //check which block to resume on
            fb.goto_block(state_restore);
            let ctx_state = fb.get_obj_property(gen_ctx, 0, "ctx_state");
            let label = fb.load(ctx_state, "dest");
            fb.indirect_break(label, possible_labels);

            fb.goto_block(state_save);
            let continue_val = fb.int(1);
            fb.ret(continue_val);

            fb.goto_block(exit);
            let done_val = fb.int(0);
            fb.ret(done_val);
        });

    }

    pub fn create_init_function(&mut self, builder : &mut Builder, saved_block : Block) {
        let init_name = self.init_name();
        let init_param_types = Vec::from_elem(self.params.len(), builder.int32_type());
        let mut init_params = vec!(self.gen_type.unwrap());
        init_params.push_all(init_param_types.as_slice());

        let void_type = builder.void_type();

        builder.create_function(init_name.as_slice(), init_params, void_type,|fb : &mut Builder|{
            fb.goto_first_block();
            
            let gen_ctx = fb.get_param(0);
            let ctx_state = fb.get_obj_property(gen_ctx, 0, "ctx_state");

            //setup entry block
            let next_func = fb.get_function(self.next_name().as_slice());
            let entry_block = fb.block_address(next_func , self.entry_block.unwrap());

            fb.store(entry_block, ctx_state);

            //bind params to local vars
            let mut i = 0;
            for param in self.params.iter() {
                //right now this is pass by value...not by ref
                let param_val = fb.get_param(i + 1);
                let state_var_slot = fb.get_obj_property(gen_ctx, i + 1, format!("param{}", i).as_slice());
                fb.store(param_val, state_var_slot);

                i += 1;
            }

            fb.ret_void();

            fb.goto_block(saved_block);
        });

    }

}

///Struct to hold state for generator generation
pub struct GenGenState<'a> {
    pub context     : Value,
    pub save_blk    : Block,
    pub restore_blk : Block,
    pub stmts_blk   : Block,
    pub labels      : &'a mut Vec<Block>,
    pub state_idxs  : &'a Vec<uint>,
    pub stmt_idx    : uint
}

impl<'a> GenGenState<'a> {
    fn new(context : Value, save_blk : Block, restore_blk : Block, stmts_blk : Block, 
        labels : &'a mut Vec<Block>, state_idxs : &'a Vec<uint>) -> GenGenState<'a> {
        
        GenGenState {
            context     : context,
            save_blk    : save_blk,   
            restore_blk : restore_blk,
            stmts_blk   : stmts_blk,
            labels      : labels,
            state_idxs  : state_idxs,
            stmt_idx    : 0   
        }
    }

    pub fn set_stmts_blk(&mut self, blk : Block) {
        self.stmts_blk = blk;
    }

    pub fn state_index(&mut self) -> uint {
        self.state_idxs[self.stmt_idx].clone()
    }

    pub fn next_stmt(&mut self) {
        self.stmt_idx += 1;
    }
}

 fn chars(string : &str) -> *const i8 {
    u!(string.to_c_str().unwrap())
}