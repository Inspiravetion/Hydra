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

define i32 @main() {
  ret i32 0
}
