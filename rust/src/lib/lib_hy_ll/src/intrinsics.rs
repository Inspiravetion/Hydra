use builder::Builder;

pub fn gen_intrinsics(builder : &mut Builder) {

    declare_llvm_intrinsics(builder);
    gen_runtime_types(builder);
    declare_runtime_functions(builder);

    let hy_obj_ref = builder.get_type("HyObj*");
    let hy_obj_slice_ref = builder.get_type("HyObjSlice*");
    let int_type = builder.int32_type();
    let string_type = builder.string_type();
    let void_type = builder.void_type();

    builder.declare_function(
        "puts", vec!(string_type), int_type
    );
    builder.declare_variadic_function(
        "sprintf", vec!(string_type, string_type), int_type
    );
    builder.create_function("print", vec!(hy_obj_slice_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let objs = fb.get_param(0);
        let zero = fb.int64(0);
        let obj  = fb.call("hy_obj_slice_get", vec![objs, zero], "tmp_obj");
        let obj_str = fb.call("hy_obj_to_str", vec!(obj), "tmp_str");
        fb.call("puts", vec![obj_str], "putsres");

        let ret = fb.call("hy_new_undefined", vec![], "tmp_ret");
        fb.ret(ret);
    });
    builder.create_function("+", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_add_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function("-", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_sub_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function("*", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_mul_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function("/", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_div_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function("%", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_mod_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function("<", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_lt_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function(">", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_gt_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function("<=", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_lt_eq_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function(">=", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_gt_eq_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function("==", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_eq_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
    builder.create_function("!=", vec!(hy_obj_ref, hy_obj_ref), hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.call("hy_neq_op", vec!(left_val, right_val), "tmp");
        fb.ret(tmp);
    });
}

fn gen_runtime_types(builder : &mut Builder) {
    //i1
    let boolean = builder.int1_type();
    //i8
    let int8_type = builder.char_type();
    //i8*
    let i8_ref = builder.string_type();
    //i64
    let int64_type = builder.int64_type();

    //[7 x i8]
    let int8_arr_type = builder.array_type(int8_type, 7);
    //[13 x i64] 
    let int64_arr_type = builder.array_type(int64_type, 13);

    //type { i8, [7 x i8], [13 x i64] }
    let hy_obj_enum_fields = vec![int8_type, int8_arr_type, int64_arr_type];
    let hy_obj_enum_type = builder.create_type(&hy_obj_enum_fields, "HyObjType");

    //type { HyObjType }
    let hy_obj_type = builder.create_type(&vec![hy_obj_enum_type], "HyObj");

    //HyObj*
    let hy_obj_ptr      = builder.to_ptr_type(hy_obj_type);
    builder.add_type("HyObj*", hy_obj_ptr);

    //HyObj**
    let hy_obj_ptr_ptr  = builder.to_ptr_type(hy_obj_ptr);
    builder.add_type("HyObj**", hy_obj_ptr_ptr);
    
    //type { HyObj**, i64, i64 }
    let hy_obj_slice    = builder.create_type(&vec![hy_obj_ptr_ptr, int64_type, int64_type], "HyObjSlice");
    builder.add_type("HyObjSlice", hy_obj_slice);
    
    //HyObjSlice*
    let hy_obj_slice_ref = builder.to_ptr_type(hy_obj_slice);
    builder.add_type("HyObjSlice*", hy_obj_slice_ref);
    
    //{ i8*, %HyObjSlice, %HyObjSlice, %HyObjSlice }
    let hy_gen_ctxt = builder.create_type(&vec![i8_ref, hy_obj_slice, hy_obj_slice, hy_obj_slice], "HyGenCtxt");
    builder.add_type("HyGenCtxt", hy_gen_ctxt);
    let hy_gen_ctxt_ref = builder.to_ptr_type(hy_gen_ctxt);
    builder.add_type("HyGenCtxt*", hy_gen_ctxt_ref);

    let hy_gen_next_func = builder.func_type(vec![i8_ref, hy_obj_slice_ref, hy_gen_ctxt_ref], boolean, 0);
    let hy_gen_next_func_ref = builder.to_ptr_type(hy_gen_next_func);
    
    //{ i1 (i8*, %HyObjSlice*, %HyGenCtxt*)*, i8* }*
    let hy_gen_next_proc = builder.create_type(&vec![hy_gen_next_func_ref, i8_ref], "HyGenNextProc");
    let hy_gen_next      = builder.to_ptr_type(hy_gen_next_proc);
    builder.add_type("HyGenNextFunc", hy_gen_next);

}

fn declare_runtime_functions(builder : &mut Builder) {
    let hy_obj_ref = builder.get_type("HyObj*");
    let hy_obj_slice = builder.get_type("HyObjSlice");
    let hy_obj_slice_ref = builder.get_type("HyObjSlice*");
    let hy_gen_next_func = builder.get_type("HyGenNextFunc");
    let i32 = builder.int32_type();
    let i64 = builder.int64_type();
    let f64 = builder.f64_type();
    let boolean = builder.int1_type();
    let string = builder.string_type();
    let void = builder.void_type();

    builder.declare_function(   
        "hy_new_undefined", vec![], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_null", vec![], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_chan", vec![], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_map", vec![], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_array", vec![], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_tuple", vec![i64], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_int", vec![i64], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_float", vec![f64], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_bool", vec![boolean], hy_obj_ref
    );

    builder.declare_function(    
        "hy_new_regex", vec![hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_string", vec![string], hy_obj_ref
    );
    builder.declare_function(    
        "hy_new_gen", 
        vec![
            string, 
            hy_obj_slice,
            hy_gen_next_func,
            i64,
            i64
        ], 
        hy_obj_ref
    );    
    builder.declare_function(
        "hy_obj_slice_init", vec![hy_obj_slice_ref, i64], void
    );
    builder.declare_function(
        "hy_obj_slice_reinit", vec![hy_obj_slice_ref, i64], void
    );
    builder.declare_function(
        "hy_obj_slice_clear", vec![hy_obj_slice_ref], void
    );
    builder.declare_function(
        "hy_obj_slice_push", vec![hy_obj_slice_ref, hy_obj_ref], void
    );
    builder.declare_function(
        "hy_obj_slice_get", vec![hy_obj_slice_ref, i64], hy_obj_ref
    );
    builder.declare_function(
        "hy_obj_to_str", vec![hy_obj_ref], string
    );
    builder.declare_function(
        "hy_obj_clone", vec![hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_tuple_insert", vec![hy_obj_ref, hy_obj_ref], void
    );
    builder.declare_function(
        "hy_map_insert", vec![hy_obj_ref, hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_map_delete", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_map_contains", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_add_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_sub_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_mul_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_div_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_mod_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_lt_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_gt_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_lt_eq_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_gt_eq_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_eq_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_neq_op", vec![hy_obj_ref, hy_obj_ref], hy_obj_ref
    );
    builder.declare_function(
        "hy_obj_to_truthy_val", vec![hy_obj_ref], i32
    );
}

fn declare_llvm_intrinsics(builder : &mut Builder) {
    let mem_ptr = builder.string_type();
    let mem_ptr_ptr = builder.to_ptr_type(mem_ptr);
    let void = builder.void_type();

    //Will be needed for Garbage Collector Later
    builder.declare_function(
        "llvm.gcroot", vec![mem_ptr_ptr, mem_ptr], void
    );
}