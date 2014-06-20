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
  br label %for_loop_check

for_loop_check:                                   ; preds = %for_loop_exit5, %for_loop_init
  %done = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator)
  %done_cmp = icmp eq i32 %done, 0
  br i1 %done_cmp, label %for_loop_exit, label %for_loop_stmts

for_loop_stmts:                                   ; preds = %for_loop_check
  %ctx_ret = getelementptr inbounds %"!range_gen"* %range_generator, i32 0, i32 3
  %i = load i32* %ctx_ret
  call void @print_int(i32 %i)
  %add_tmp = add i32 %i, 1
  %range_generator1 = alloca %"!range_gen"
  br label %for_loop_init2

for_loop_exit:                                    ; preds = %for_loop_check
  ret i32 0

for_loop_init2:                                   ; preds = %for_loop_stmts
  call void @"!range_gen_init"(%"!range_gen"* %range_generator1, i32 0, i32 %add_tmp)
  br label %for_loop_check3

for_loop_check3:                                  ; preds = %for_loop_stmts4, %for_loop_init2
  %done6 = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator1)
  %done_cmp7 = icmp eq i32 %done6, 0
  br i1 %done_cmp7, label %for_loop_exit5, label %for_loop_stmts4

for_loop_stmts4:                                  ; preds = %for_loop_check3
  %ctx_ret8 = getelementptr inbounds %"!range_gen"* %range_generator1, i32 0, i32 3
  %i9 = load i32* %ctx_ret8
  %"+_tmp10" = call i32 @"+"(i32 %i9, i32 1)
  %-_tmp11 = call i32 @-(i32 %"+_tmp10", i32 1)
  call void @print_int(i32 %-_tmp11)
  br label %for_loop_check3

for_loop_exit5:                                   ; preds = %for_loop_check3
  br label %for_loop_check
}
