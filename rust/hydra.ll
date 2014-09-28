; ModuleID = 'hydra'

%"!range_gen" = type { i8*, i32, i32, i32 }
%HyObj = type { %HyObjType }
%HyObjType = type { i8, [7 x i8], [13 x i64] }
%HyObjSlice = type { %HyObj**, i64, i64 }
%HyGenNextProc = type { i1 (i8*, %HyObjSlice*, %HyGenCtxt*)*, i8* }
%HyGenCtxt = type { i8*, %HyObjSlice, %HyObjSlice, %HyObjSlice }

@"global_\22AzzNTittys\22_literal" = private unnamed_addr constant [13 x i8] c"\22AzzNTittys\22\00"

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

declare i32 @puts(i8*)

declare i32 @sprintf(i8*, i8*, ...)

define %HyObj* @print(%HyObjSlice*) {
  %tmp_obj = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 0)
  %tmp_str = call i8* @hy_obj_to_str(%HyObj* %tmp_obj)
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
  %param_slice = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice, i64 1)
  %hy_int = call %HyObj* @hy_new_int(i64 100000000)
  %obj_clone = call %HyObj* @hy_obj_clone(%HyObj* %hy_int)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice, %HyObj* %obj_clone)
  %print_tmp = call %HyObj* @print(%HyObjSlice* %param_slice)
  %hy_int1 = call %HyObj* @hy_new_int(i64 1)
  %one = alloca %HyObj*
  store %HyObj* %hy_int1, %HyObj** %one
  %hy_int2 = call %HyObj* @hy_new_int(i64 2)
  %two = alloca %HyObj*
  store %HyObj* %hy_int2, %HyObj** %two
  %hy_int3 = call %HyObj* @hy_new_int(i64 3)
  %three = alloca %HyObj*
  store %HyObj* %hy_int3, %HyObj** %three
  %hy_int4 = call %HyObj* @hy_new_int(i64 6)
  %six = alloca %HyObj*
  store %HyObj* %hy_int4, %HyObj** %six
  %hy_int5 = call %HyObj* @hy_new_int(i64 9)
  %nine = alloca %HyObj*
  store %HyObj* %hy_int5, %HyObj** %nine
  %param_slice6 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice6, i64 1)
  %one7 = load %HyObj** %one
  %two8 = load %HyObj** %two
  %"+_tmp" = call %HyObj* @"+"(%HyObj* %one7, %HyObj* %two8)
  %obj_clone9 = call %HyObj* @hy_obj_clone(%HyObj* %"+_tmp")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice6, %HyObj* %obj_clone9)
  %print_tmp10 = call %HyObj* @print(%HyObjSlice* %param_slice6)
  %param_slice11 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice11, i64 1)
  %six12 = load %HyObj** %six
  %three13 = load %HyObj** %three
  %-_tmp = call %HyObj* @-(%HyObj* %six12, %HyObj* %three13)
  %obj_clone14 = call %HyObj* @hy_obj_clone(%HyObj* %-_tmp)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice11, %HyObj* %obj_clone14)
  %print_tmp15 = call %HyObj* @print(%HyObjSlice* %param_slice11)
  %param_slice16 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice16, i64 1)
  %two17 = load %HyObj** %two
  %three18 = load %HyObj** %three
  %"*_tmp" = call %HyObj* @"*"(%HyObj* %two17, %HyObj* %three18)
  %two19 = load %HyObj** %two
  %"/_tmp" = call %HyObj* @"/"(%HyObj* %"*_tmp", %HyObj* %two19)
  %obj_clone20 = call %HyObj* @hy_obj_clone(%HyObj* %"/_tmp")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice16, %HyObj* %obj_clone20)
  %print_tmp21 = call %HyObj* @print(%HyObjSlice* %param_slice16)
  %param_slice22 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice22, i64 1)
  %nine23 = load %HyObj** %nine
  %six24 = load %HyObj** %six
  %"%_tmp" = call %HyObj* @"%"(%HyObj* %nine23, %HyObj* %six24)
  %obj_clone25 = call %HyObj* @hy_obj_clone(%HyObj* %"%_tmp")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice22, %HyObj* %obj_clone25)
  %print_tmp26 = call %HyObj* @print(%HyObjSlice* %param_slice22)
  %param_slice27 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice27, i64 1)
  %one28 = load %HyObj** %one
  %two29 = load %HyObj** %two
  %"<_tmp" = call %HyObj* @"<"(%HyObj* %one28, %HyObj* %two29)
  %obj_clone30 = call %HyObj* @hy_obj_clone(%HyObj* %"<_tmp")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice27, %HyObj* %obj_clone30)
  %print_tmp31 = call %HyObj* @print(%HyObjSlice* %param_slice27)
  %param_slice32 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice32, i64 1)
  %one33 = load %HyObj** %one
  %two34 = load %HyObj** %two
  %">_tmp" = call %HyObj* @">"(%HyObj* %one33, %HyObj* %two34)
  %obj_clone35 = call %HyObj* @hy_obj_clone(%HyObj* %">_tmp")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice32, %HyObj* %obj_clone35)
  %print_tmp36 = call %HyObj* @print(%HyObjSlice* %param_slice32)
  %param_slice37 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice37, i64 1)
  %one38 = load %HyObj** %one
  %two39 = load %HyObj** %two
  %"<=_tmp" = call %HyObj* @"<="(%HyObj* %one38, %HyObj* %two39)
  %obj_clone40 = call %HyObj* @hy_obj_clone(%HyObj* %"<=_tmp")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice37, %HyObj* %obj_clone40)
  %print_tmp41 = call %HyObj* @print(%HyObjSlice* %param_slice37)
  %param_slice42 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice42, i64 1)
  %one43 = load %HyObj** %one
  %two44 = load %HyObj** %two
  %">=_tmp" = call %HyObj* @">="(%HyObj* %one43, %HyObj* %two44)
  %obj_clone45 = call %HyObj* @hy_obj_clone(%HyObj* %">=_tmp")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice42, %HyObj* %obj_clone45)
  %print_tmp46 = call %HyObj* @print(%HyObjSlice* %param_slice42)
  %param_slice47 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice47, i64 1)
  %one48 = load %HyObj** %one
  %one49 = load %HyObj** %one
  %"==_tmp" = call %HyObj* @"=="(%HyObj* %one48, %HyObj* %one49)
  %obj_clone50 = call %HyObj* @hy_obj_clone(%HyObj* %"==_tmp")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice47, %HyObj* %obj_clone50)
  %print_tmp51 = call %HyObj* @print(%HyObjSlice* %param_slice47)
  %param_slice52 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice52, i64 1)
  %one53 = load %HyObj** %one
  %two54 = load %HyObj** %two
  %"==_tmp55" = call %HyObj* @"=="(%HyObj* %one53, %HyObj* %two54)
  %obj_clone56 = call %HyObj* @hy_obj_clone(%HyObj* %"==_tmp55")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice52, %HyObj* %obj_clone56)
  %print_tmp57 = call %HyObj* @print(%HyObjSlice* %param_slice52)
  %param_slice58 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice58, i64 1)
  %one59 = load %HyObj** %one
  %one60 = load %HyObj** %one
  %"!=_tmp" = call %HyObj* @"!="(%HyObj* %one59, %HyObj* %one60)
  %obj_clone61 = call %HyObj* @hy_obj_clone(%HyObj* %"!=_tmp")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice58, %HyObj* %obj_clone61)
  %print_tmp62 = call %HyObj* @print(%HyObjSlice* %param_slice58)
  %param_slice63 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice63, i64 1)
  %one64 = load %HyObj** %one
  %two65 = load %HyObj** %two
  %"!=_tmp66" = call %HyObj* @"!="(%HyObj* %one64, %HyObj* %two65)
  %obj_clone67 = call %HyObj* @hy_obj_clone(%HyObj* %"!=_tmp66")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice63, %HyObj* %obj_clone67)
  %print_tmp68 = call %HyObj* @print(%HyObjSlice* %param_slice63)
  %hy_int69 = call %HyObj* @hy_new_int(i64 15)
  %a = alloca %HyObj*
  store %HyObj* %hy_int69, %HyObj** %a
  %_b = call %HyObj* @hy_new_undefined()
  %b = alloca %HyObj*
  store %HyObj* %_b, %HyObj** %b
  %param_slice70 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice70, i64 1)
  %a71 = load %HyObj** %a
  %obj_clone72 = call %HyObj* @hy_obj_clone(%HyObj* %a71)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice70, %HyObj* %obj_clone72)
  %print_tmp73 = call %HyObj* @print(%HyObjSlice* %param_slice70)
  %param_slice74 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice74, i64 1)
  %b75 = load %HyObj** %b
  %obj_clone76 = call %HyObj* @hy_obj_clone(%HyObj* %b75)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice74, %HyObj* %obj_clone76)
  %print_tmp77 = call %HyObj* @print(%HyObjSlice* %param_slice74)
  %param_slice78 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice78, i64 1)
  %a79 = load %HyObj** %a
  %obj_clone80 = call %HyObj* @hy_obj_clone(%HyObj* %a79)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice78, %HyObj* %obj_clone80)
  %print_tmp81 = call %HyObj* @print(%HyObjSlice* %param_slice78)
  %param_slice82 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice82, i64 1)
  %a83 = load %HyObj** %a
  %a84 = load %HyObj** %a
  %"+_tmp85" = call %HyObj* @"+"(%HyObj* %a83, %HyObj* %a84)
  %obj_clone86 = call %HyObj* @hy_obj_clone(%HyObj* %"+_tmp85")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice82, %HyObj* %obj_clone86)
  %print_tmp87 = call %HyObj* @print(%HyObjSlice* %param_slice82)
  %param_slice88 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice88, i64 1)
  %a89 = load %HyObj** %a
  %obj_clone90 = call %HyObj* @hy_obj_clone(%HyObj* %a89)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice88, %HyObj* %obj_clone90)
  %print_tmp91 = call %HyObj* @print(%HyObjSlice* %param_slice88)
  %hy_int92 = call %HyObj* @hy_new_int(i64 4)
  store %HyObj* %hy_int92, %HyObj** %b
  %param_slice93 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice93, i64 1)
  %b94 = load %HyObj** %b
  %obj_clone95 = call %HyObj* @hy_obj_clone(%HyObj* %b94)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice93, %HyObj* %obj_clone95)
  %print_tmp96 = call %HyObj* @print(%HyObjSlice* %param_slice93)
  %param_slice97 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice97, i64 1)
  %a98 = load %HyObj** %a
  %obj_clone99 = call %HyObj* @hy_obj_clone(%HyObj* %a98)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice97, %HyObj* %obj_clone99)
  %print_tmp100 = call %HyObj* @print(%HyObjSlice* %param_slice97)
  %param_slice101 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice101, i64 1)
  %a102 = load %HyObj** %a
  %b103 = load %HyObj** %b
  %"+_tmp104" = call %HyObj* @"+"(%HyObj* %a102, %HyObj* %b103)
  %obj_clone105 = call %HyObj* @hy_obj_clone(%HyObj* %"+_tmp104")
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice101, %HyObj* %obj_clone105)
  %print_tmp106 = call %HyObj* @print(%HyObjSlice* %param_slice101)
  br label %if_cond

if_cond:                                          ; preds = %0
  %b107 = load %HyObj** %b
  %hy_int108 = call %HyObj* @hy_new_int(i64 1000)
  %">_tmp109" = call %HyObj* @">"(%HyObj* %b107, %HyObj* %hy_int108)
  %cond = call i32 @hy_obj_to_truthy_val(%HyObj* %">_tmp109")
  %if_cmp = icmp eq i32 %cond, 0
  br i1 %if_cmp, label %if_else_cond_or_exit, label %if_else_stmts

if_else_cond_or_exit:                             ; preds = %if_else_stmts, %if_cond
  %hy_bool = call %HyObj* @hy_new_bool(i1 false)
  %cond114 = call i32 @hy_obj_to_truthy_val(%HyObj* %hy_bool)
  %if_cmp115 = icmp eq i32 %cond114, 0
  br i1 %if_cmp115, label %if_else_cond_or_exit116, label %if_else_stmts117

if_else_stmts:                                    ; preds = %if_cond
  %param_slice110 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice110, i64 1)
  %hy_int111 = call %HyObj* @hy_new_int(i64 10)
  %obj_clone112 = call %HyObj* @hy_obj_clone(%HyObj* %hy_int111)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice110, %HyObj* %obj_clone112)
  %print_tmp113 = call %HyObj* @print(%HyObjSlice* %param_slice110)
  br label %if_else_cond_or_exit

if_else_cond_or_exit116:                          ; preds = %if_else_stmts117, %if_else_cond_or_exit
  %param_slice122 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice122, i64 1)
  %hy_int123 = call %HyObj* @hy_new_int(i64 1000)
  %obj_clone124 = call %HyObj* @hy_obj_clone(%HyObj* %hy_int123)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice122, %HyObj* %obj_clone124)
  %print_tmp125 = call %HyObj* @print(%HyObjSlice* %param_slice122)
  br label %else_exit

if_else_stmts117:                                 ; preds = %if_else_cond_or_exit
  %param_slice118 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice118, i64 1)
  %hy_int119 = call %HyObj* @hy_new_int(i64 100)
  %obj_clone120 = call %HyObj* @hy_obj_clone(%HyObj* %hy_int119)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice118, %HyObj* %obj_clone120)
  %print_tmp121 = call %HyObj* @print(%HyObjSlice* %param_slice118)
  br label %if_else_cond_or_exit116

else_exit:                                        ; preds = %if_else_cond_or_exit116
  %hy_int126 = call %HyObj* @hy_new_int(i64 0)
  %i = alloca %HyObj*
  store %HyObj* %hy_int126, %HyObj** %i
  br label %while_loop_check

while_loop_check:                                 ; preds = %while_loop_stmts, %else_exit
  %i127 = load %HyObj** %i
  %hy_int128 = call %HyObj* @hy_new_int(i64 3)
  %"<_tmp129" = call %HyObj* @"<"(%HyObj* %i127, %HyObj* %hy_int128)
  %cond130 = call i32 @hy_obj_to_truthy_val(%HyObj* %"<_tmp129")
  %while_cmp = icmp eq i32 0, %cond130
  br i1 %while_cmp, label %while_loop_exit, label %while_loop_stmts

while_loop_stmts:                                 ; preds = %while_loop_check
  %param_slice131 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice131, i64 1)
  %i132 = load %HyObj** %i
  %obj_clone133 = call %HyObj* @hy_obj_clone(%HyObj* %i132)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice131, %HyObj* %obj_clone133)
  %print_tmp134 = call %HyObj* @print(%HyObjSlice* %param_slice131)
  %i135 = load %HyObj** %i
  %hy_int136 = call %HyObj* @hy_new_int(i64 1)
  %"+_tmp137" = call %HyObj* @"+"(%HyObj* %i135, %HyObj* %hy_int136)
  store %HyObj* %"+_tmp137", %HyObj** %i
  br label %while_loop_check

while_loop_exit:                                  ; preds = %while_loop_check
  %hy_int138 = call %HyObj* @hy_new_int(i64 10)
  %i139 = alloca %HyObj*
  store %HyObj* %hy_int138, %HyObj** %i139
  br label %while_loop_check140

while_loop_check140:                              ; preds = %if_else_cond_or_exit156, %while_loop_exit
  %hy_bool143 = call %HyObj* @hy_new_bool(i1 true)
  %cond144 = call i32 @hy_obj_to_truthy_val(%HyObj* %hy_bool143)
  %while_cmp145 = icmp eq i32 0, %cond144
  br i1 %while_cmp145, label %while_loop_exit142, label %while_loop_stmts141

while_loop_stmts141:                              ; preds = %while_loop_check140
  %param_slice146 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice146, i64 1)
  %i147 = load %HyObj** %i139
  %obj_clone148 = call %HyObj* @hy_obj_clone(%HyObj* %i147)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice146, %HyObj* %obj_clone148)
  %print_tmp149 = call %HyObj* @print(%HyObjSlice* %param_slice146)
  br label %if_cond150

while_loop_exit142:                               ; preds = %if_else_stmts157, %while_loop_check140
  %hy_string = call %HyObj* @hy_new_string(i8* getelementptr inbounds ([13 x i8]* @"global_\22AzzNTittys\22_literal", i32 0, i32 0))
  %azz = alloca %HyObj*
  store %HyObj* %hy_string, %HyObj** %azz
  %param_slice161 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice161, i64 1)
  %azz162 = load %HyObj** %azz
  %obj_clone163 = call %HyObj* @hy_obj_clone(%HyObj* %azz162)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice161, %HyObj* %obj_clone163)
  %print_tmp164 = call %HyObj* @print(%HyObjSlice* %param_slice161)
  %hy_int165 = call %HyObj* @hy_new_int(i64 3735928559)
  %hex = alloca %HyObj*
  store %HyObj* %hy_int165, %HyObj** %hex
  %param_slice166 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice166, i64 1)
  %hex167 = load %HyObj** %hex
  %obj_clone168 = call %HyObj* @hy_obj_clone(%HyObj* %hex167)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice166, %HyObj* %obj_clone168)
  %print_tmp169 = call %HyObj* @print(%HyObjSlice* %param_slice166)
  %hy_int170 = call %HyObj* @hy_new_int(i64 9)
  %bin = alloca %HyObj*
  store %HyObj* %hy_int170, %HyObj** %bin
  %param_slice171 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice171, i64 1)
  %bin172 = load %HyObj** %bin
  %obj_clone173 = call %HyObj* @hy_obj_clone(%HyObj* %bin172)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice171, %HyObj* %obj_clone173)
  %print_tmp174 = call %HyObj* @print(%HyObjSlice* %param_slice171)
  %hy_float = call %HyObj* @hy_new_float(double 1.234560e+02)
  %float = alloca %HyObj*
  store %HyObj* %hy_float, %HyObj** %float
  %param_slice175 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice175, i64 1)
  %float176 = load %HyObj** %float
  %obj_clone177 = call %HyObj* @hy_obj_clone(%HyObj* %float176)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice175, %HyObj* %obj_clone177)
  %print_tmp178 = call %HyObj* @print(%HyObjSlice* %param_slice175)
  %hy_array = call %HyObj* @hy_new_array()
  %arr = alloca %HyObj*
  store %HyObj* %hy_array, %HyObj** %arr
  %param_slice179 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice179, i64 1)
  %arr180 = load %HyObj** %arr
  %obj_clone181 = call %HyObj* @hy_obj_clone(%HyObj* %arr180)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice179, %HyObj* %obj_clone181)
  %print_tmp182 = call %HyObj* @print(%HyObjSlice* %param_slice179)
  %hy_map = call %HyObj* @hy_new_map()
  %map = alloca %HyObj*
  store %HyObj* %hy_map, %HyObj** %map
  %param_slice183 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice183, i64 1)
  %map184 = load %HyObj** %map
  %obj_clone185 = call %HyObj* @hy_obj_clone(%HyObj* %map184)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice183, %HyObj* %obj_clone185)
  %print_tmp186 = call %HyObj* @print(%HyObjSlice* %param_slice183)
  br label %function_def_bridge

if_cond150:                                       ; preds = %while_loop_stmts141
  %i151 = load %HyObj** %i139
  %hy_int152 = call %HyObj* @hy_new_int(i64 20)
  %"==_tmp153" = call %HyObj* @"=="(%HyObj* %i151, %HyObj* %hy_int152)
  %cond154 = call i32 @hy_obj_to_truthy_val(%HyObj* %"==_tmp153")
  %if_cmp155 = icmp eq i32 %cond154, 0
  br i1 %if_cmp155, label %if_else_cond_or_exit156, label %if_else_stmts157

if_else_cond_or_exit156:                          ; preds = %if_else_stmts157, %if_cond150
  %i158 = load %HyObj** %i139
  %hy_int159 = call %HyObj* @hy_new_int(i64 1)
  %"+_tmp160" = call %HyObj* @"+"(%HyObj* %i158, %HyObj* %hy_int159)
  store %HyObj* %"+_tmp160", %HyObj** %i139
  br label %while_loop_check140

if_else_stmts157:                                 ; preds = %if_cond150
  br label %while_loop_exit142
  br label %if_else_cond_or_exit156

function_def_bridge:                              ; preds = %while_loop_exit142
  %param_slice187 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice187, i64 2)
  %hy_int188 = call %HyObj* @hy_new_int(i64 1)
  %obj_clone189 = call %HyObj* @hy_obj_clone(%HyObj* %hy_int188)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice187, %HyObj* %obj_clone189)
  %hy_int190 = call %HyObj* @hy_new_int(i64 2)
  %obj_clone191 = call %HyObj* @hy_obj_clone(%HyObj* %hy_int190)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice187, %HyObj* %obj_clone191)
  %add_tmp = call %HyObj* @add(%HyObjSlice* %param_slice187)
  %sum = alloca %HyObj*
  store %HyObj* %add_tmp, %HyObj** %sum
  %param_slice192 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice192, i64 1)
  %sum193 = load %HyObj** %sum
  %obj_clone194 = call %HyObj* @hy_obj_clone(%HyObj* %sum193)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice192, %HyObj* %obj_clone194)
  %print_tmp195 = call %HyObj* @print(%HyObjSlice* %param_slice192)
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
  %sum = alloca %HyObj*
  store %HyObj* %"+_tmp", %HyObj** %sum
  %sum3 = load %HyObj** %sum
  ret %HyObj* %sum3
  %undefined = call %HyObj* @hy_new_undefined()
  ret %HyObj* %undefined
}

attributes #0 = { nounwind }
