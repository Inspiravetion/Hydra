; ModuleID = 'hydra'

%"!range_gen" = type { i8*, i32, i32, i32 }
%HyObj = type { %HyObjType }
%HyObjType = type { i8, [7 x i8], [13 x i64] }
%HyObjSlice = type { %HyObj**, i64, i64 }
%HyGenNextProc = type { i1 (i8*, %HyObjSlice*, %HyGenCtxt*)*, i8* }
%HyGenCtxt = type { i8*, %HyObjSlice, %HyObjSlice, %HyObjSlice }

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

declare %HyObj* @hy_new_undefined()

declare %HyObj* @hy_new_null()

declare %HyObj* @hy_new_chan()

declare %HyObj* @hy_new_map()

declare %HyObj* @hy_new_array()

declare %HyObj* @hy_new_int(i64)

declare %HyObj* @hy_new_float(float)

declare %HyObj* @hy_new_bool(i1)

declare %HyObj* @hy_new_regex(%HyObj*)

declare %HyObj* @hy_new_string(i8*)

declare %HyObj* @hy_new_gen(i8*, %HyObjSlice, %HyGenNextProc*, i64, i64)

declare %HyObjSlice @hy_new_obj_slice(i64)

declare void @hy_obj_slice_push(%HyObjSlice*, %HyObj*)

declare i8* @hy_obj_to_str(%HyObj*)

declare %HyObj* @hy_obj_clone(%HyObj*)

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

declare i32 @puts(i8*)

declare i32 @sprintf(i8*, i8*, ...)

define %HyObj* @print(%HyObj*) {
  %tmp_str = call i8* @hy_obj_to_str(%HyObj* %0)
  %putsres = call i32 @puts(i8* %tmp_str)
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
  %hy_int = call %HyObj* @hy_new_int(i64 1)
  %hy_int1 = call %HyObj* @hy_new_int(i64 2)
  %"+_tmp" = call %HyObj* @"+"(%HyObj* %hy_int, %HyObj* %hy_int1)
  %print_tmp = call %HyObj* @print(%HyObj* %"+_tmp")
  %hy_int2 = call %HyObj* @hy_new_int(i64 6)
  %hy_int3 = call %HyObj* @hy_new_int(i64 3)
  %-_tmp = call %HyObj* @-(%HyObj* %hy_int2, %HyObj* %hy_int3)
  %print_tmp4 = call %HyObj* @print(%HyObj* %-_tmp)
  %hy_int5 = call %HyObj* @hy_new_int(i64 2)
  %hy_int6 = call %HyObj* @hy_new_int(i64 3)
  %"*_tmp" = call %HyObj* @"*"(%HyObj* %hy_int5, %HyObj* %hy_int6)
  %hy_int7 = call %HyObj* @hy_new_int(i64 2)
  %"/_tmp" = call %HyObj* @"/"(%HyObj* %"*_tmp", %HyObj* %hy_int7)
  %print_tmp8 = call %HyObj* @print(%HyObj* %"/_tmp")
  %hy_int9 = call %HyObj* @hy_new_int(i64 9)
  %hy_int10 = call %HyObj* @hy_new_int(i64 6)
  %"%_tmp" = call %HyObj* @"%"(%HyObj* %hy_int9, %HyObj* %hy_int10)
  %print_tmp11 = call %HyObj* @print(%HyObj* %"%_tmp")
  %hy_int12 = call %HyObj* @hy_new_int(i64 1)
  %hy_int13 = call %HyObj* @hy_new_int(i64 2)
  %"<_tmp" = call %HyObj* @"<"(%HyObj* %hy_int12, %HyObj* %hy_int13)
  %print_tmp14 = call %HyObj* @print(%HyObj* %"<_tmp")
  %hy_int15 = call %HyObj* @hy_new_int(i64 1)
  %hy_int16 = call %HyObj* @hy_new_int(i64 2)
  %">_tmp" = call %HyObj* @">"(%HyObj* %hy_int15, %HyObj* %hy_int16)
  %print_tmp17 = call %HyObj* @print(%HyObj* %">_tmp")
  %hy_int18 = call %HyObj* @hy_new_int(i64 1)
  %hy_int19 = call %HyObj* @hy_new_int(i64 2)
  %"<=_tmp" = call %HyObj* @"<="(%HyObj* %hy_int18, %HyObj* %hy_int19)
  %print_tmp20 = call %HyObj* @print(%HyObj* %"<=_tmp")
  %hy_int21 = call %HyObj* @hy_new_int(i64 1)
  %hy_int22 = call %HyObj* @hy_new_int(i64 2)
  %">=_tmp" = call %HyObj* @">="(%HyObj* %hy_int21, %HyObj* %hy_int22)
  %print_tmp23 = call %HyObj* @print(%HyObj* %">=_tmp")
  %hy_int24 = call %HyObj* @hy_new_int(i64 1)
  %hy_int25 = call %HyObj* @hy_new_int(i64 1)
  %"==_tmp" = call %HyObj* @"=="(%HyObj* %hy_int24, %HyObj* %hy_int25)
  %print_tmp26 = call %HyObj* @print(%HyObj* %"==_tmp")
  %hy_int27 = call %HyObj* @hy_new_int(i64 1)
  %hy_int28 = call %HyObj* @hy_new_int(i64 2)
  %"==_tmp29" = call %HyObj* @"=="(%HyObj* %hy_int27, %HyObj* %hy_int28)
  %print_tmp30 = call %HyObj* @print(%HyObj* %"==_tmp29")
  %hy_int31 = call %HyObj* @hy_new_int(i64 1)
  %hy_int32 = call %HyObj* @hy_new_int(i64 1)
  %"!=_tmp" = call %HyObj* @"!="(%HyObj* %hy_int31, %HyObj* %hy_int32)
  %print_tmp33 = call %HyObj* @print(%HyObj* %"!=_tmp")
  %hy_int34 = call %HyObj* @hy_new_int(i64 1)
  %hy_int35 = call %HyObj* @hy_new_int(i64 2)
  %"!=_tmp36" = call %HyObj* @"!="(%HyObj* %hy_int34, %HyObj* %hy_int35)
  %print_tmp37 = call %HyObj* @print(%HyObj* %"!=_tmp36")
  %hy_int38 = call %HyObj* @hy_new_int(i64 15)
  %a = alloca %HyObj*
  store %HyObj* %hy_int38, %HyObj** %a
  %_b = call %HyObj* @hy_new_undefined()
  %b = alloca %HyObj*
  store %HyObj* %_b, %HyObj** %b
  %a39 = load %HyObj** %a
  %print_tmp40 = call %HyObj* @print(%HyObj* %a39)
  %b41 = load %HyObj** %b
  %print_tmp42 = call %HyObj* @print(%HyObj* %b41)
  %a43 = load %HyObj** %a
  %print_tmp44 = call %HyObj* @print(%HyObj* %a43)
  %a45 = load %HyObj** %a
  %a46 = load %HyObj** %a
  %"+_tmp47" = call %HyObj* @"+"(%HyObj* %a45, %HyObj* %a46)
  %print_tmp48 = call %HyObj* @print(%HyObj* %"+_tmp47")
  %a49 = load %HyObj** %a
  %print_tmp50 = call %HyObj* @print(%HyObj* %a49)
  %hy_int51 = call %HyObj* @hy_new_int(i64 4)
  store %HyObj* %hy_int51, %HyObj** %b
  %b52 = load %HyObj** %b
  %print_tmp53 = call %HyObj* @print(%HyObj* %b52)
  %a54 = load %HyObj** %a
  %print_tmp55 = call %HyObj* @print(%HyObj* %a54)
  %a56 = load %HyObj** %a
  %b57 = load %HyObj** %b
  %"+_tmp58" = call %HyObj* @"+"(%HyObj* %a56, %HyObj* %b57)
  %print_tmp59 = call %HyObj* @print(%HyObj* %"+_tmp58")
  ret i32 0
}
