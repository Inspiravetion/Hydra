; ModuleID = 'hydra'

%"!range_gen" = type { i8*, i32, i32, i32 }
%HyObj = type { %HyObjType }
%HyObjType = type { i8, [7 x i8], [13 x i64] }
%HyObjSlice = type { %HyObj**, i64, i64 }
%HyGenNextProc = type { i1 (i8*, %HyObjSlice*, %HyGenCtxt*)*, i8* }
%HyGenCtxt = type { i8*, %HyObjSlice, %HyObjSlice, %HyObjSlice }

@"global_\22arr\22_literal" = private unnamed_addr constant [6 x i8] c"\22arr\22\00"
@"global_\22avc\22_literal" = private unnamed_addr constant [6 x i8] c"\22avc\22\00"

define i32 @"!range_gen_next"(%"!range_gen"*) {

entry:                                            ; No predecessors!
  %ctx_state = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 0
  %ctx_index = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 1
  %ctx_end = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 2
  %ctx_ret = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 3
  %dest = load i8** %ctx_state
  indirectbr i8* %dest, [label %cond, label %incr]

cond:                                             ; preds = %incr, %entry
  %index = load i32* %ctx_index
  %end = load i32* %ctx_end
  %cmp_tmp = icmp slt i32 %index, %end
  br i1 %cmp_tmp, label %yield1, label %exit

incr:                                             ; preds = %entry
  %index1 = load i32* %ctx_index
  %add_tmp = add i32 %index1, 1
  store i32 %add_tmp, i32* %ctx_index
  br label %cond

yield1:                                           ; preds = %cond
  store i8* blockaddress(@"!range_gen_next", %incr), i8** %ctx_state
  %ret1 = load i32* %ctx_index
  store i32 %ret1, i32* %ctx_ret
  ret i32 1

exit:                                             ; preds = %cond
  ret i32 0
}

define void @"!range_gen_init"(%"!range_gen"*, i32, i32) {
  %state = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 0
  %start = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 1
  %end = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 2
  store i8* blockaddress(@"!range_gen_next", %cond), i8** %state
  store i32 %1, i32* %start
  store i32 %2, i32* %end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.gcroot(i8**, i8*) #0

declare void @hy_obj_print(%HyObj*)

declare void @hy_obj_println(%HyObj*)

declare %HyObj* @hy_new_undefined()

declare %HyObj* @hy_new_null()

declare %HyObj* @hy_new_chan()

declare %HyObj* @hy_new_map()

declare %HyObj* @hy_new_array()

declare %HyObj* @hy_new_tuple(i64)

declare %HyObj* @hy_new_int(i64)

declare %HyObj* @hy_new_float(double)

declare %HyObj* @hy_new_bool(i1)

declare %HyObj* @hy_new_regex(%HyObj*)

declare %HyObj* @hy_new_string(i8*)

declare %HyObj* @hy_new_gen(i8*, %HyObjSlice, %HyGenNextProc*, i64, i64)

declare void @hy_obj_slice_init(%HyObjSlice*, i64)

declare void @hy_obj_slice_reinit(%HyObjSlice*, i64)

declare void @hy_obj_slice_clear(%HyObjSlice*)

declare void @hy_obj_slice_push(%HyObjSlice*, %HyObj*)

declare %HyObj* @hy_obj_slice_get(%HyObjSlice*, i64)

declare i8* @hy_obj_to_str(%HyObj*)

declare %HyObj* @hy_obj_clone(%HyObj*)

declare void @hy_tuple_insert(%HyObj*, %HyObj*)

declare void @hy_array_push(%HyObj*, %HyObj*)

declare %HyObj* @hy_map_insert(%HyObj*, %HyObj*, %HyObj*)

declare %HyObj* @hy_map_delete(%HyObj*, %HyObj*)

declare %HyObj* @hy_map_contains(%HyObj*, %HyObj*)

declare %HyObj* @hy_add_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_sub_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_mul_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_div_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_mod_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_lt_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_gt_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_lt_eq_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_gt_eq_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_eq_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_neq_op(%HyObj*, %HyObj*)

declare i32 @hy_obj_to_truthy_val(%HyObj*)

define %HyObj* @print(%HyObjSlice*) {
  %tmp_obj = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 0)
  call void @hy_obj_print(%HyObj* %tmp_obj)
  %tmp_ret = call %HyObj* @hy_new_undefined()
  ret %HyObj* %tmp_ret
}

define %HyObj* @println(%HyObjSlice*) {
  %tmp_obj = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 0)
  call void @hy_obj_println(%HyObj* %tmp_obj)
  %tmp_ret = call %HyObj* @hy_new_undefined()
  ret %HyObj* %tmp_ret
}

define %HyObj* @"+"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_add_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @-(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_sub_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"*"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_mul_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"/"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_div_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"%"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_mod_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"<"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_lt_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @">"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_gt_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"<="(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_lt_eq_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @">="(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_gt_eq_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"=="(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_eq_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"!="(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_neq_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define i32 @main() {
  br label %function_def_bridge

function_def_bridge:                              ; preds = %0
  br label %function_def_bridge1

function_def_bridge1:                             ; preds = %function_def_bridge
  %param_slice = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice, i64 1)
  %param_slice2 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice2, i64 2)
  %hy_int = call %HyObj* @hy_new_int(i64 5)
  %obj_clone = call %HyObj* @hy_obj_clone(%HyObj* %hy_int)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice2, %HyObj* %obj_clone)
  %hy_int3 = call %HyObj* @hy_new_int(i64 5)
  %obj_clone4 = call %HyObj* @hy_obj_clone(%HyObj* %hy_int3)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice2, %HyObj* %obj_clone4)
  %add_and_mult_tmp = call %HyObj* @add_and_mult(%HyObjSlice* %param_slice2)
  %obj_clone5 = call %HyObj* @hy_obj_clone(%HyObj* %add_and_mult_tmp)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice, %HyObj* %obj_clone5)
  %println_tmp = call %HyObj* @println(%HyObjSlice* %param_slice)
  %param_slice6 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice6, i64 1)
  %hy_array = call %HyObj* @hy_new_array()
  %hy_int7 = call %HyObj* @hy_new_int(i64 1)
  call void @hy_array_push(%HyObj* %hy_array, %HyObj* %hy_int7)
  %hy_bool = call %HyObj* @hy_new_bool(i1 true)
  call void @hy_array_push(%HyObj* %hy_array, %HyObj* %hy_bool)
  %param_slice8 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice8, i64 2)
  %hy_int9 = call %HyObj* @hy_new_int(i64 5)
  %obj_clone10 = call %HyObj* @hy_obj_clone(%HyObj* %hy_int9)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice8, %HyObj* %obj_clone10)
  %hy_int11 = call %HyObj* @hy_new_int(i64 6)
  %obj_clone12 = call %HyObj* @hy_obj_clone(%HyObj* %hy_int11)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice8, %HyObj* %obj_clone12)
  %add_and_mult_tmp13 = call %HyObj* @add_and_mult(%HyObjSlice* %param_slice8)
  call void @hy_array_push(%HyObj* %hy_array, %HyObj* %add_and_mult_tmp13)
  %obj_clone14 = call %HyObj* @hy_obj_clone(%HyObj* %hy_array)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice6, %HyObj* %obj_clone14)
  %println_tmp15 = call %HyObj* @println(%HyObjSlice* %param_slice6)
  %hy_map = call %HyObj* @hy_new_map()
  %hy_string = call %HyObj* @hy_new_string(i8* getelementptr inbounds ([6 x i8]* @"global_\22arr\22_literal", i32 0, i32 0))
  %hy_array16 = call %HyObj* @hy_new_array()
  %insert_result = call %HyObj* @hy_map_insert(%HyObj* %hy_map, %HyObj* %hy_string, %HyObj* %hy_array16)
  %hy_string17 = call %HyObj* @hy_new_string(i8* getelementptr inbounds ([6 x i8]* @"global_\22avc\22_literal", i32 0, i32 0))
  %hy_bool18 = call %HyObj* @hy_new_bool(i1 true)
  %insert_result19 = call %HyObj* @hy_map_insert(%HyObj* %hy_map, %HyObj* %hy_string17, %HyObj* %hy_bool18)
  %a = alloca %HyObj*
  store %HyObj* %hy_map, %HyObj** %a
  %param_slice20 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice20, i64 1)
  %a21 = load %HyObj** %a
  %obj_clone22 = call %HyObj* @hy_obj_clone(%HyObj* %a21)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice20, %HyObj* %obj_clone22)
  %println_tmp23 = call %HyObj* @println(%HyObjSlice* %param_slice20)
  %_b = call %HyObj* @hy_new_undefined()
  %b = alloca %HyObj*
  store %HyObj* %_b, %HyObj** %b
  %param_slice24 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice24, i64 1)
  %b25 = load %HyObj** %b
  %obj_clone26 = call %HyObj* @hy_obj_clone(%HyObj* %b25)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice24, %HyObj* %obj_clone26)
  %println_tmp27 = call %HyObj* @println(%HyObjSlice* %param_slice24)
  %hy_int28 = call %HyObj* @hy_new_int(i64 14)
  store %HyObj* %hy_int28, %HyObj** %b
  %param_slice29 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice29, i64 1)
  %b30 = load %HyObj** %b
  %obj_clone31 = call %HyObj* @hy_obj_clone(%HyObj* %b30)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice29, %HyObj* %obj_clone31)
  %println_tmp32 = call %HyObj* @println(%HyObjSlice* %param_slice29)
  ret i32 0
}

define %HyObj* @add(%HyObjSlice*) {

add_param_setup:                                  ; No predecessors!
  %param_0 = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 0)
  %a = alloca %HyObj*
  store %HyObj* %param_0, %HyObj** %a
  %param_1 = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 1)
  %b = alloca %HyObj*
  store %HyObj* %param_1, %HyObj** %b
  br label %add_function_body

add_function_body:                                ; preds = %add_param_setup
  %a1 = load %HyObj** %a
  %b2 = load %HyObj** %b
  %"+_tmp" = call %HyObj* @"+"(%HyObj* %a1, %HyObj* %b2)
  ret %HyObj* %"+_tmp"
  %undefined = call %HyObj* @hy_new_undefined()
  ret %HyObj* %undefined
}

define %HyObj* @add_and_mult(%HyObjSlice*) {

add_and_mult_param_setup:                         ; No predecessors!
  %param_0 = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 0)
  %a = alloca %HyObj*
  store %HyObj* %param_0, %HyObj** %a
  %param_1 = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 1)
  %b = alloca %HyObj*
  store %HyObj* %param_1, %HyObj** %b
  br label %add_and_mult_function_body

add_and_mult_function_body:                       ; preds = %add_and_mult_param_setup
  %ret_tuple = call %HyObj* @hy_new_tuple(i64 2)
  %a1 = load %HyObj** %a
  %b2 = load %HyObj** %b
  %"+_tmp" = call %HyObj* @"+"(%HyObj* %a1, %HyObj* %b2)
  call void @hy_tuple_insert(%HyObj* %ret_tuple, %HyObj* %"+_tmp")
  %a3 = load %HyObj** %a
  %b4 = load %HyObj** %b
  %"*_tmp" = call %HyObj* @"*"(%HyObj* %a3, %HyObj* %b4)
  call void @hy_tuple_insert(%HyObj* %ret_tuple, %HyObj* %"*_tmp")
  ret %HyObj* %ret_tuple
  %undefined = call %HyObj* @hy_new_undefined()
  ret %HyObj* %undefined
}

attributes #0 = { nounwind }
