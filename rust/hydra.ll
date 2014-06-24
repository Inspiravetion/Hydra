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

define void @print_int(i32) {
  %buf = tail call i8* @malloc(i32 mul (i32 ptrtoint (i8* getelementptr (i8* null, i32 1) to i32), i32 20))
  %fmtd = call i32 (i8*, i8*, ...)* @sprintf(i8* %buf, i8* getelementptr inbounds ([3 x i8]* @global_gen_fmt, i32 0, i32 0), i32 %0)
  %putsres = call i32 @puts(i8* %buf)
  ret void
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
  %"*_tmp" = call i32 @"*"(i32 2, i32 3)
  %"/_tmp" = call i32 @"/"(i32 %"*_tmp", i32 2)
  %-_tmp = call i32 @-(i32 %"/_tmp", i32 1)
  %times_tmp = call i32 @times(i32 %-_tmp, i32 2)
  %"+_tmp" = call i32 @"+"(i32 1, i32 %times_tmp)
  %range_generator = alloca %"!range_gen"
  br label %for_loop_init

for_loop_init:                                    ; preds = %0
  call void @"!range_gen_init"(%"!range_gen"* %range_generator, i32 0, i32 %"+_tmp")
  %i = alloca i32
  store i32 -1, i32* %i
  br label %for_loop_check

for_loop_check:                                   ; preds = %for_loop_exit7, %for_loop_init
  %done = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator)
  %done_cmp = icmp eq i32 %done, 0
  br i1 %done_cmp, label %for_loop_exit, label %for_loop_stmts

for_loop_stmts:                                   ; preds = %for_loop_check
  %ctx_ret = getelementptr inbounds %"!range_gen"* %range_generator, i32 0, i32 3
  %i1 = load i32* %ctx_ret
  store i32 %i1, i32* %i
  %padding = alloca i32
  store i32 10, i32* %padding
  %i2 = load i32* %i
  %add_tmp = add i32 %i2, 1
  %range_generator3 = alloca %"!range_gen"
  br label %for_loop_init4

for_loop_exit:                                    ; preds = %for_loop_check
  %i19 = alloca i32
  store i32 11, i32* %i19
  %j = alloca i32
  store i32 12, i32* %j
  %i20 = load i32* %i19
  %j21 = load i32* %j
  %"+_tmp22" = call i32 @"+"(i32 %i20, i32 %j21)
  call void @print_int(i32 %"+_tmp22")
  store i32 21, i32* %i19
  store i32 22, i32* %j
  %i23 = load i32* %i19
  %j24 = load i32* %j
  %"+_tmp25" = call i32 @"+"(i32 %i23, i32 %j24)
  call void @print_int(i32 %"+_tmp25")
  %done26 = alloca i32
  store i32 0, i32* %done26
  br label %while_loop_check

for_loop_init4:                                   ; preds = %for_loop_stmts
  call void @"!range_gen_init"(%"!range_gen"* %range_generator3, i32 0, i32 %add_tmp)
  %i8 = alloca i32
  store i32 -1, i32* %i8
  br label %for_loop_check5

for_loop_check5:                                  ; preds = %for_loop_stmts6, %for_loop_init4
  %done9 = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator3)
  %done_cmp10 = icmp eq i32 %done9, 0
  br i1 %done_cmp10, label %for_loop_exit7, label %for_loop_stmts6

for_loop_stmts6:                                  ; preds = %for_loop_check5
  %ctx_ret11 = getelementptr inbounds %"!range_gen"* %range_generator3, i32 0, i32 3
  %i12 = load i32* %ctx_ret11
  store i32 %i12, i32* %i8
  %i13 = load i32* %i8
  %"+_tmp14" = call i32 @"+"(i32 %i13, i32 1)
  %-_tmp15 = call i32 @-(i32 %"+_tmp14", i32 1)
  %padding16 = load i32* %padding
  %"+_tmp17" = call i32 @"+"(i32 %-_tmp15, i32 %padding16)
  call void @print_int(i32 %"+_tmp17")
  br label %for_loop_check5

for_loop_exit7:                                   ; preds = %for_loop_check5
  store i32 100, i32* %i
  %i18 = load i32* %i
  call void @print_int(i32 %i18)
  br label %for_loop_check

while_loop_check:                                 ; preds = %while_loop_stmts, %for_loop_exit
  %done27 = load i32* %done26
  %"<=_tmp" = call i32 @"<="(i32 %done27, i32 5)
  %while_cmp = icmp eq i32 0, %"<=_tmp"
  br i1 %while_cmp, label %while_loop_exit, label %while_loop_stmts

while_loop_stmts:                                 ; preds = %while_loop_check
  call void @print_int(i32 1000000)
  %done28 = load i32* %done26
  %"+_tmp29" = call i32 @"+"(i32 %done28, i32 1)
  store i32 %"+_tmp29", i32* %done26
  br label %while_loop_check

while_loop_exit:                                  ; preds = %while_loop_check
  ret i32 0
}
