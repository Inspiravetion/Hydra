; ModuleID = 'hydra'

%"!range_gen" = type { i8*, i32, i32, i32 }

@global_gen_fmt = private unnamed_addr constant [3 x i8] c"%d\00"

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

declare i32 @puts(i8*)

declare i32 @sprintf(i8*, i8*, ...)

define i32 @print_int(i32) {
  %buf = tail call i8* @malloc(i32 mul (i32 ptrtoint (i8* getelementptr (i8* null, i32 1) to i32), i32 20))
  %fmtd = call i32 (i8*, i8*, ...)* @sprintf(i8* %buf, i8* getelementptr inbounds ([3 x i8]* @global_gen_fmt, i32 0, i32 0), i32 %0)
  %putsres = call i32 @puts(i8* %buf)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define i32 @"+"(i32, i32) {
  %tmp = add i32 %0, %1
  ret i32 %tmp
}

define i32 @-(i32, i32) {
  %tmp = sub i32 %0, %1
  ret i32 %tmp
}

define i32 @"*"(i32, i32) {
  %tmp = mul i32 %0, %1
  ret i32 %tmp
}

define i32 @"/"(i32, i32) {
  %tmp = sdiv i32 %0, %1
  ret i32 %tmp
}

define i32 @"%"(i32, i32) {
  %tmp = srem i32 %0, %1
  ret i32 %tmp
}

define i32 @"<"(i32, i32) {
  %tmp = icmp slt i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @">"(i32, i32) {
  %tmp = icmp sgt i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @"<="(i32, i32) {
  %tmp = icmp sle i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @">="(i32, i32) {
  %tmp = icmp sge i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @"=="(i32, i32) {
  %tmp = icmp eq i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @"!="(i32, i32) {
  %tmp = icmp ne i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @times(i32, i32) {
  %tmp = mul i32 %0, %1
  ret i32 %tmp
}

define i32 @main() {
  br label %function_def_bridge

function_def_bridge:                              ; preds = %0
  br label %function_def_bridge1

function_def_bridge1:                             ; preds = %function_def_bridge
  %"*_tmp" = call i32 @"*"(i32 2, i32 3)
  %"/_tmp" = call i32 @"/"(i32 %"*_tmp", i32 2)
  %times_tmp = call i32 @times(i32 1, i32 10)
  %-_tmp = call i32 @-(i32 %"/_tmp", i32 %times_tmp)
  %"+_tmp" = call i32 @"+"(i32 1, i32 %-_tmp)
  %range_generator = alloca %"!range_gen"
  br label %for_loop_init

for_loop_init:                                    ; preds = %function_def_bridge1
  call void @"!range_gen_init"(%"!range_gen"* %range_generator, i32 0, i32 %"+_tmp")
  %i = alloca i32
  store i32 -1, i32* %i
  br label %for_loop_check

for_loop_check:                                   ; preds = %for_loop_exit8, %for_loop_exit8, %for_loop_init
  %done = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator)
  %done_cmp = icmp eq i32 %done, 0
  br i1 %done_cmp, label %for_loop_exit, label %for_loop_stmts

for_loop_stmts:                                   ; preds = %for_loop_check
  %ctx_ret = getelementptr inbounds %"!range_gen"* %range_generator, i32 0, i32 3
  %i2 = load i32* %ctx_ret
  store i32 %i2, i32* %i
  %padding = alloca i32
  store i32 10, i32* %padding
  %i3 = load i32* %i
  %add_tmp = add i32 %i3, 1
  %range_generator4 = alloca %"!range_gen"
  br label %for_loop_init5

for_loop_exit:                                    ; preds = %for_loop_check
  br label %function_def_bridge21

for_loop_init5:                                   ; preds = %for_loop_stmts
  call void @"!range_gen_init"(%"!range_gen"* %range_generator4, i32 0, i32 %add_tmp)
  %i9 = alloca i32
  store i32 -1, i32* %i9
  br label %for_loop_check6

for_loop_check6:                                  ; preds = %for_loop_stmts7, %for_loop_init5
  %done10 = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator4)
  %done_cmp11 = icmp eq i32 %done10, 0
  br i1 %done_cmp11, label %for_loop_exit8, label %for_loop_stmts7

for_loop_stmts7:                                  ; preds = %for_loop_check6
  %ctx_ret12 = getelementptr inbounds %"!range_gen"* %range_generator4, i32 0, i32 3
  %i13 = load i32* %ctx_ret12
  store i32 %i13, i32* %i9
  %i14 = load i32* %i9
  %"+_tmp15" = call i32 @"+"(i32 %i14, i32 1)
  %-_tmp16 = call i32 @-(i32 %"+_tmp15", i32 1)
  %padding17 = load i32* %padding
  %"+_tmp18" = call i32 @"+"(i32 %-_tmp16, i32 %padding17)
  %print_int_tmp = call i32 @print_int(i32 %"+_tmp18")
  br label %for_loop_exit8
  br label %for_loop_check6

for_loop_exit8:                                   ; preds = %for_loop_stmts7, %for_loop_check6
  br label %for_loop_check
  store i32 100, i32* %i
  %i19 = load i32* %i
  %print_int_tmp20 = call i32 @print_int(i32 %i19)
  br label %for_loop_check

function_def_bridge21:                            ; preds = %for_loop_exit
  %plus_tmp = call i32 @plus(i32 1200, i32 34)
  %added = alloca i32
  store i32 %plus_tmp, i32* %added
  %added22 = load i32* %added
  %print_int_tmp23 = call i32 @print_int(i32 %added22)
  %i24 = alloca i32
  store i32 11, i32* %i24
  %j = alloca i32
  store i32 12, i32* %j
  %i25 = load i32* %i24
  %j26 = load i32* %j
  %"+_tmp27" = call i32 @"+"(i32 %i25, i32 %j26)
  %print_int_tmp28 = call i32 @print_int(i32 %"+_tmp27")
  store i32 21, i32* %i24
  store i32 22, i32* %j
  %i29 = load i32* %i24
  %j30 = load i32* %j
  %"+_tmp31" = call i32 @"+"(i32 %i29, i32 %j30)
  %print_int_tmp32 = call i32 @print_int(i32 %"+_tmp31")
  %done33 = alloca i32
  store i32 0, i32* %done33
  br label %while_loop_check

while_loop_check:                                 ; preds = %while_loop_stmts, %function_def_bridge21
  %done34 = load i32* %done33
  %"<=_tmp" = call i32 @"<="(i32 %done34, i32 5)
  %while_cmp = icmp eq i32 0, %"<=_tmp"
  br i1 %while_cmp, label %while_loop_exit, label %while_loop_stmts

while_loop_stmts:                                 ; preds = %while_loop_check
  %print_int_tmp35 = call i32 @print_int(i32 1000000)
  %done36 = load i32* %done33
  %"+_tmp37" = call i32 @"+"(i32 %done36, i32 1)
  store i32 %"+_tmp37", i32* %done33
  br label %while_loop_check

while_loop_exit:                                  ; preds = %while_loop_check
  %abc = alloca i32
  store i32 -1, i32* %abc
  br label %if_cond

if_cond:                                          ; preds = %while_loop_exit
  %i38 = load i32* %i24
  %">_tmp" = call i32 @">"(i32 %i38, i32 1000)
  %if_cmp = icmp eq i32 %">_tmp", 0
  br i1 %if_cmp, label %if_else_cond, label %if_else_stmts

if_else_exit:                                     ; preds = %if_else_cond42, %if_else_stmts43, %if_else_stmts
  %abc46 = load i32* %abc
  %print_int_tmp47 = call i32 @print_int(i32 %abc46)
  %minus_tmp = call i32 @minus(i32 10, i32 100)
  %print_int_tmp48 = call i32 @print_int(i32 %minus_tmp)
  ret i32 0

if_else_cond:                                     ; preds = %if_cond
  %"<_tmp" = call i32 @"<"(i32 1, i32 100)
  %if_cmp41 = icmp eq i32 %"<_tmp", 0
  br i1 %if_cmp41, label %if_else_cond42, label %if_else_stmts43

if_else_stmts:                                    ; preds = %if_cond
  %i39 = load i32* %i24
  %print_int_tmp40 = call i32 @print_int(i32 %i39)
  br label %if_else_exit

if_else_cond42:                                   ; preds = %if_else_cond
  %print_int_tmp45 = call i32 @print_int(i32 1000)
  br label %if_else_exit

if_else_stmts43:                                  ; preds = %if_else_cond
  store i32 2, i32* %abc
  %print_int_tmp44 = call i32 @print_int(i32 100)
  br label %if_else_exit
}

define i32 @minus(i32, i32) {
  %a = alloca i32
  store i32 %0, i32* %a
  %b = alloca i32
  store i32 %1, i32* %b
  %a1 = load i32* %a
  %b2 = load i32* %b
  %-_tmp = call i32 @-(i32 %a1, i32 %b2)
  ret i32 %-_tmp
}

define i32 @times1(i32, i32) {
  %a = alloca i32
  store i32 %0, i32* %a
  %b = alloca i32
  store i32 %1, i32* %b
  %a1 = load i32* %a
  %b2 = load i32* %b
  %"*_tmp" = call i32 @"*"(i32 %a1, i32 %b2)
  ret i32 %"*_tmp"
}

define i32 @plus(i32, i32) {
  %a = alloca i32
  store i32 %0, i32* %a
  %b = alloca i32
  store i32 %1, i32* %b
  %a1 = load i32* %a
  %b2 = load i32* %b
  %"+_tmp" = call i32 @"+"(i32 %a1, i32 %b2)
  ret i32 %"+_tmp"
}
