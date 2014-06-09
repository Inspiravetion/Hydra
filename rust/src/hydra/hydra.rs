#![allow(unused_imports)]
#![allow(unused_variable)]

extern crate syntax = "hydra_syntax";
extern crate jit = "hydra_jit";

use syntax::scanner;
use syntax::parser::{AsyncParser, SyncParser, HydraParser};
use syntax::parser;

use jit::codegen::{Builder, Block};

use std::os;

fn main(){
    // let args = os::args();
    // let args = args.as_slice();

    // let path_str = args[1].as_slice();

    // for tok in scanner::tokenize_file(path_str).iter() {
    //     println!("{}", tok);
    // }

    // println!("{:?}", scanner::tokenize_file(path_str));

    // let ast = parser::parse_str_async("for i in 0 upto 10 do\n\tprint(i)\nend\nfor i in 0 upto 10 do\n\tprint(i)\nend");
    // println!("{:?}", ast.get(0));
    // println!("---------");
    // println!("{:?}", ast.get(1));

    // println!("---------");

    // let ast = parser::parse_str_sync("for i in 0 upto 10 do\n\tprint(i)\nend\nfor i in 0 upto 10 do\n\tprint(i)\nend");
    // println!("{:?}", ast.get(0));
    // println!("---------");
    // println!("{:?}", ast.get(1));

    
    
    let mut builder = Builder::new();
    let int_type = builder.int32_type();
    let string_type = builder.string_type();

    builder.create_package("hydra");

    builder.declare_function(
        "puts", vec!(string_type), int_type
    );
    builder.declare_variadic_function(
        "sprintf", vec!(string_type, string_type), int_type
    );

    builder.create_function("fac", vec!(int_type), int_type, |fb : &mut Builder|{
        let entry    = fb.new_block("entry");
        let if_true  = fb.new_block("if_true");
        let if_false = fb.new_block("if_false");
        let end      = fb.new_block("end");
        
        fb.goto_block(entry);
        let n = fb.get_param(0);
        let zero = fb.int(0);
        let cond = fb.cmp_eq(n, zero, "cmp_tmp");
        fb.conditional_break(cond, if_true, if_false);

        fb.goto_block(if_true);
        let ret_true = fb.int(1);
        fb.break_to(end);

        fb.goto_block(if_false);
        let one = fb.int(1);
        let minus = fb.sub_op(n, one, "sub_tmp");
        let fac_args = vec!(minus);
        let fac_tmp = fb.call("fac", fac_args, "fac_tmp");
        let ret_false = fb.mul_op(n, fac_tmp, "mul_tmp");
        fb.break_to(end);

        fb.goto_block(end);
        let ret = fb.phi_node(int_type, "return");
        let vals = vec!(ret_true, ret_false);
        let blocks = vec!(if_true, if_false);
        fb.add_incoming(ret, vals, blocks);

        fb.ret(ret);
    });

        //make generator context
    let void_typ = builder.void_type();
    let fields = vec!(string_type, int_type, int_type);
    let struct_typ = builder.create_type(fields, "range_gen");
    let struct_ptr_typ = builder.to_ptr_type(struct_typ);

    let next_args = vec!(struct_ptr_typ);
    let mut blocks = Vec::new();
    builder.create_function("range_gen_next", next_args, int_type, |fb : &mut Builder|{
        
        let entry = fb.new_block("entry");
        let cond = fb.new_block("cond");
        let incr = fb.new_block("incr");
        let yield1 = fb.new_block("yield1");
        let exit = fb.new_block("exit");
        blocks.push(cond);

        //check which block to resume on
        fb.goto_block(entry);

        let gen_ctx = fb.get_param(0);
        let ctx_state = fb.get_obj_property(gen_ctx, 0, "ctx_state");
        let ctx_index = fb.get_obj_property(gen_ctx, 1, "ctx_index");
        let ctx_end   = fb.get_obj_property(gen_ctx, 2, "ctx_end");

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
        let next = fb.get_function("range_gen_next");
        let resume_block = fb.block_address(next, incr);
        fb.store(resume_block, ctx_state);
        let done = fb.int(1);
        fb.ret(done);
        
        fb.goto_block(exit);
        let done = fb.int(0);
        fb.ret(done);
    });

    let init_args = vec!(struct_ptr_typ, int_type, int_type);
    builder.create_function("range_gen_init", init_args, void_typ, |fb : &mut Builder |{

        let context_obj = fb.get_param(0);
        let start       = fb.get_param(1);
        let end         = fb.get_param(2);

        let context_state = fb.get_obj_property(context_obj, 0, "state");
        let context_start = fb.get_obj_property(context_obj, 1, "start");
        let context_end   = fb.get_obj_property(context_obj, 2, "end");

        let next = fb.get_function("range_gen_next");
        let gen_entry = fb.block_address(next , blocks.as_slice()[0]);

        fb.store(gen_entry, context_state);
        fb.store(start, context_start);
        fb.store(end, context_end);

        fb.ret_void();
    });

    builder.create_function("main", Vec::new(), int_type,|fb : &mut Builder|{
        let entry = fb.new_block("entry");
        let init = fb.new_block("init");
        let loop_check = fb.new_block("loop_check");
        let loop_stmts = fb.new_block("loop_stmts");
        let exit = fb.new_block("exit");
        fb.goto_block(entry);
       
        let char_type = fb.char_type();
        let fac_args = vec!(fb.int(4));

        let fac_res = fb.call("fac", fac_args, "facres");
        let buf     = fb.array_malloc(char_type, 20, "buf");
        let fmt     = fb.string(format!("fac({}) = %d", 4), "fmt");

        let v = vec!(buf, fmt, fac_res);
        let fmtd = fb.call("sprintf", v, "fmtd");

        let p_args = vec!(buf);
        fb.call("puts", p_args, "putsres");
        fb.break_to(init);

        fb.goto_block(init);
        let gen = fb.alloca(struct_typ, "range_generator");
        let init_args = vec!(gen, fb.int(0), fb.int(10));
        fb.call("range_gen_init", init_args, "");
        fb.break_to(loop_check);

        fb.goto_block(loop_check);
        let done = fb.call("range_gen_next", vec!(gen), "done");
        let fals = fb.int(0);
        let cmp = fb.cmp_eq(done, fals, "done_cmp");
        fb.conditional_break(cmp, exit, loop_stmts);

        fb.goto_block(loop_stmts);
        let ctx_ret = fb.get_obj_property(gen, 1, "ctx_ret");
        let gen_ret = fb.load(ctx_ret, "gen_ret");


        let buf     = fb.array_malloc(char_type, 30, "buf");
        let gen_fmt = fb.string("generator returned => %d", "gen_fmt");

        let v = vec!(buf, gen_fmt, gen_ret);
        let fmtd = fb.call("sprintf", v, "fmtd");

        let p_args = vec!(buf);
        fb.call("puts", p_args, "putsres");
        fb.break_to(loop_check);

        fb.goto_block(exit);
        let ret = fb.int(0);
        fb.ret(ret);
    });



    builder.print_module("hydra.ll");

}


