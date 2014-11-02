; ModuleID = 'vtable.0.rs'
target datalayout = "e-i64:64-f80:128-n8:16:32:64"
target triple = "x86_64-apple-darwin"

%str_slice = type { i8*, i64 }
%"struct.phf::PhfMap<[&'static str, int]>[#11]" = type { i64, { { i32, i32 }*, i64 }, { { %str_slice, i64 }*, i64 } }
%"struct.core::fmt::Argument<[]>[#3]" = type { %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %"enum.core::fmt::Void<[]>[#3]"* }
%"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" = type { i8, [0 x i8], [1 x i8] }
%"struct.core::fmt::Formatter<[]>[#3]" = type { i64, i32, i8, %"enum.core::option::Option<[uint]>[#3]", %"enum.core::option::Option<[uint]>[#3]", { i8*, void (i8*)** }, %"struct.core::slice::Items<[core::fmt::Argument]>[#3]", { %"struct.core::fmt::Argument<[]>[#3]"*, i64 } }
%"enum.core::option::Option<[uint]>[#3]" = type { i8, [7 x i8], [1 x i64] }
%"struct.core::slice::Items<[core::fmt::Argument]>[#3]" = type { %"struct.core::fmt::Argument<[]>[#3]"*, %"struct.core::fmt::Argument<[]>[#3]"*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" = type {}
%"enum.core::fmt::Void<[]>[#3]" = type {}
%"struct.core::fmt::Arguments<[]>[#3]" = type { { %str_slice*, i64 }, %"enum.core::option::Option<[&'static [core::fmt::rt::Argument]]>[#3]", { %"struct.core::fmt::Argument<[]>[#3]"*, i64 } }
%"enum.core::option::Option<[&'static [core::fmt::rt::Argument]]>[#3]" = type { { %"struct.core::fmt::rt::Argument<[]>[#3]"*, i64 } }
%"struct.core::fmt::rt::Argument<[]>[#3]" = type { %"enum.core::fmt::rt::Position<[]>[#3]", %"struct.core::fmt::rt::FormatSpec<[]>[#3]" }
%"enum.core::fmt::rt::Position<[]>[#3]" = type { i8, [7 x i8], [1 x i64] }
%"struct.core::fmt::rt::FormatSpec<[]>[#3]" = type { i32, i8, i64, %"enum.core::fmt::rt::Count<[]>[#3]", %"enum.core::fmt::rt::Count<[]>[#3]" }
%"enum.core::fmt::rt::Count<[]>[#3]" = type { i8, [7 x i8], [1 x i64] }
%"struct.phf::PhfMapEntries<[&'static str, int]>[#11]" = type { %"struct.core::slice::Items<[(&'static str,int)]>[#3]" }
%"struct.core::slice::Items<[(&'static str,int)]>[#3]" = type { { %str_slice, i64 }*, { %str_slice, i64 }*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::raw::Slice<[(&'static str,int)]>[#3]" = type { { %str_slice, i64 }*, i64 }

@const = private constant [2 x { i32, i32 }] [{ i32, i32 } { i32 6, i32 5 }, { i32, i32 } zeroinitializer]
@str1468 = internal constant [8 x i8] c"continue"
@str1469 = internal constant [2 x i8] c"fn"
@str1470 = internal constant [4 x i8] c"loop"
@str1471 = internal constant [8 x i8] c"ASDFASDF"
@str1472 = internal constant [5 x i8] c"break"
@str1473 = internal constant [6 x i8] c"extern"
@str1474 = internal constant [7 x i8] c"asdfasf"
@const1 = private constant [7 x { %str_slice, i64 }] [{ %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([8 x i8]* @str1468, i32 0, i32 0), i64 8 }, i64 1 }, { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([2 x i8]* @str1469, i32 0, i32 0), i64 2 }, i64 3 }, { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([4 x i8]* @str1470, i32 0, i32 0), i64 4 }, i64 0 }, { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([8 x i8]* @str1471, i32 0, i32 0), i64 8 }, i64 6 }, { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([5 x i8]* @str1472, i32 0, i32 0), i64 5 }, i64 2 }, { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([6 x i8]* @str1473, i32 0, i32 0), i64 6 }, i64 4 }, { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([7 x i8]* @str1474, i32 0, i32 0), i64 7 }, i64 5 }]
@_ZN8KEYWORDS20h8ec11c73b95eece2haaE = internal constant { i64, { { i32, i32 }*, i64 }, { { %str_slice, i64 }*, i64 } } { i64 1897749892740154578, { { i32, i32 }*, i64 } { { i32, i32 }* getelementptr inbounds ([2 x { i32, i32 }]* @const, i32 0, i32 0), i64 2 }, { { %str_slice, i64 }*, i64 } { { %str_slice, i64 }* getelementptr inbounds ([7 x { %str_slice, i64 }]* @const1, i32 0, i32 0), i64 7 } }
@"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt15__STATIC_FMTSTR20hb0010b8f10f09814LjaE" = external global [1 x %str_slice]
@"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt15__STATIC_FMTSTR20hb0010b8f10f09814QkaE" = external global [1 x %str_slice]
@"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt15__STATIC_FMTSTR20hdaae8b738bfdef37IlaE" = external global [2 x %str_slice]
@"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt15__STATIC_FMTSTR20hb0010b8f10f09814FmaE" = external global [1 x %str_slice]
@str1638 = internal constant [12 x i8] c"should be : "
@_ZN4main15__STATIC_FMTSTR20hf1726d3e40159956bbaE = internal constant [1 x %str_slice] [%str_slice { i8* getelementptr inbounds ([12 x i8]* @str1638, i32 0, i32 0), i64 12 }]

; Function Attrs: uwtable
define internal void @_ZN4main20hdfb1c227201f09abXaaE() unnamed_addr #0 {
entry-block:
  %0 = alloca { %"struct.phf::PhfMap<[&'static str, int]>[#11]"* }
  %match = alloca { %"struct.phf::PhfMap<[&'static str, int]>[#11]"* }
  %__llmatch = alloca %"struct.phf::PhfMap<[&'static str, int]>[#11]"**
  %__arg0 = alloca %"struct.phf::PhfMap<[&'static str, int]>[#11]"*
  %__args_vec = alloca [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %1 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__fat_ptr = alloca { %str_slice*, i64 }
  %__fat_ptr1 = alloca { %str_slice*, i64 }
  %__fat_ptr2 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %__fat_ptr3 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %2 = getelementptr inbounds { %"struct.phf::PhfMap<[&'static str, int]>[#11]"* }* %0, i32 0, i32 0, !dbg !209
  store %"struct.phf::PhfMap<[&'static str, int]>[#11]"* bitcast ({ i64, { { i32, i32 }*, i64 }, { { %str_slice, i64 }*, i64 } }* @_ZN8KEYWORDS20h8ec11c73b95eece2haaE to %"struct.phf::PhfMap<[&'static str, int]>[#11]"*), %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %2, !dbg !209
  %3 = load { %"struct.phf::PhfMap<[&'static str, int]>[#11]"* }* %0, !dbg !209
  store { %"struct.phf::PhfMap<[&'static str, int]>[#11]"* } %3, { %"struct.phf::PhfMap<[&'static str, int]>[#11]"* }* %match
  %4 = getelementptr inbounds { %"struct.phf::PhfMap<[&'static str, int]>[#11]"* }* %match, i32 0, i32 0
  store %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %4, %"struct.phf::PhfMap<[&'static str, int]>[#11]"*** %__llmatch
  br label %case_body

case_body:                                        ; preds = %entry-block
  %5 = load %"struct.phf::PhfMap<[&'static str, int]>[#11]"*** %__llmatch
  %6 = load %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %5
  store %"struct.phf::PhfMap<[&'static str, int]>[#11]"* %6, %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %__arg0
  call void @llvm.dbg.declare(metadata !{%"struct.phf::PhfMap<[&'static str, int]>[#11]"** %__arg0}, metadata !211), !dbg !214
  %7 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %1 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %8 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %1, i32 0
  %9 = load %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %__arg0, !dbg !215
  call void @_ZN3fmt8argument21h10631970645701904638E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %8, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"struct.phf::PhfMap<[&'static str, int]>[#11]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h17047409274494981643E, %"struct.phf::PhfMap<[&'static str, int]>[#11]"* noalias readonly dereferenceable(40) %9), !dbg !215
  store [1 x %"struct.core::fmt::Argument<[]>[#3]"]* %7, [1 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec, !dbg !215
  call void @llvm.dbg.declare(metadata !{[1 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec}, metadata !217), !dbg !215
  %10 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr, i32 0, i32 0
  store %str_slice* getelementptr inbounds ([1 x %str_slice]* @_ZN4main15__STATIC_FMTSTR20hf1726d3e40159956bbaE, i32 0, i32 0), %str_slice** %10
  %11 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr, i32 0, i32 1
  store i64 1, i64* %11
  %12 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr, i32 0, i32 0
  %13 = load %str_slice** %12
  %14 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr, i32 0, i32 1
  %15 = load i64* %14
  %16 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr1, i32 0, i32 0
  store %str_slice* %13, %str_slice** %16
  %17 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr1, i32 0, i32 1
  store i64 %15, i64* %17
  %18 = load [1 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec, !dbg !220
  %19 = getelementptr inbounds [1 x %"struct.core::fmt::Argument<[]>[#3]"]* %18, i32 0, i32 0, !dbg !220
  %20 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr2, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %19, %"struct.core::fmt::Argument<[]>[#3]"** %20
  %21 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr2, i32 0, i32 1
  store i64 1, i64* %21
  %22 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr2, i32 0, i32 0
  %23 = load %"struct.core::fmt::Argument<[]>[#3]"** %22
  %24 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr2, i32 0, i32 1
  %25 = load i64* %24
  %26 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr3, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %23, %"struct.core::fmt::Argument<[]>[#3]"** %26
  %27 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr3, i32 0, i32 1
  store i64 %25, i64* %27
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h5a0d288d00618aa4BDyE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(48) %__args, { %str_slice*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr1, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr3), !dbg !220
  call void @llvm.dbg.declare(metadata !{%"struct.core::fmt::Arguments<[]>[#3]"* %__args}, metadata !222), !dbg !215
  call void @_ZN2io5stdio12println_args20ha814eed0babede57splE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture readonly dereferenceable(48) %__args), !dbg !223
  br label %join, !dbg !209

join:                                             ; preds = %case_body
  ret void, !dbg !209
}

define i64 @main(i64, i8**) unnamed_addr #1 {
top:
  %2 = call i64 @_ZN10lang_start20h351001ea0b807031xjeE(i8* bitcast (void ()* @_ZN4main20hdfb1c227201f09abXaaE to i8*), i64 %0, i8** %1)
  ret i64 %2
}

declare i64 @_ZN10lang_start20h351001ea0b807031xjeE(i8*, i64, i8**) unnamed_addr #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument21h10631970645701904638E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"struct.phf::PhfMap<[&'static str, int]>[#11]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %"struct.phf::PhfMap<[&'static str, int]>[#11]"* noalias readonly dereferenceable(40)) unnamed_addr #3 {
entry-block:
  %f = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"struct.phf::PhfMap<[&'static str, int]>[#11]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)*
  %t = alloca %"struct.phf::PhfMap<[&'static str, int]>[#11]"*
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"struct.phf::PhfMap<[&'static str, int]>[#11]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)* %1, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"struct.phf::PhfMap<[&'static str, int]>[#11]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %"struct.phf::PhfMap<[&'static str, int]>[#11]"* %2, %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %t
  %3 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 0
  %4 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %3 to %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"struct.phf::PhfMap<[&'static str, int]>[#11]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)**
  %5 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"struct.phf::PhfMap<[&'static str, int]>[#11]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"struct.phf::PhfMap<[&'static str, int]>[#11]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)* %5, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"struct.phf::PhfMap<[&'static str, int]>[#11]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %4
  %6 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 1
  %7 = bitcast %"enum.core::fmt::Void<[]>[#3]"** %6 to %"struct.phf::PhfMap<[&'static str, int]>[#11]"**
  %8 = load %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %t
  store %"struct.phf::PhfMap<[&'static str, int]>[#11]"* %8, %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %7
  ret void
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show21h17047409274494981643E(%"struct.phf::PhfMap<[&'static str, int]>[#11]"* noalias nocapture readonly dereferenceable(40), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %x = alloca %"struct.phf::PhfMap<[&'static str, int]>[#11]"*
  %fmt = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store %"struct.phf::PhfMap<[&'static str, int]>[#11]"* %0, %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %x
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %2 = load %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %x
  %3 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %4 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt21h12277218567905825082E"(%"struct.phf::PhfMap<[&'static str, int]>[#11]"* noalias readonly dereferenceable(40) %2, %"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %3)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %4
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt21h12277218567905825082E"(%"struct.phf::PhfMap<[&'static str, int]>[#11]"* noalias nocapture readonly dereferenceable(40), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %sret_slot = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"
  %self = alloca %"struct.phf::PhfMap<[&'static str, int]>[#11]"*
  %fmt = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  %2 = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"
  %temp = alloca {}
  %match = alloca {}
  %__args_vec = alloca [0 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %3 = alloca %"struct.core::fmt::Argument<[]>[#3]", i64 0
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__fat_ptr = alloca { %str_slice*, i64 }
  %__fat_ptr1 = alloca { %str_slice*, i64 }
  %__fat_ptr2 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %__fat_ptr3 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %match4 = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"
  %__llmatch = alloca {}*
  %e = alloca {}
  %__llmatch7 = alloca i8*
  %e8 = alloca i8
  %first = alloca i8
  %4 = alloca %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"
  %for_head = alloca %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"*
  %loop_option = alloca i8*
  %k = alloca %str_slice*
  %v = alloca i64*
  %5 = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"
  %temp11 = alloca {}
  %match12 = alloca {}
  %__args_vec14 = alloca [0 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %6 = alloca %"struct.core::fmt::Argument<[]>[#3]", i64 0
  %__args15 = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__fat_ptr16 = alloca { %str_slice*, i64 }
  %__fat_ptr17 = alloca { %str_slice*, i64 }
  %__fat_ptr18 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %__fat_ptr19 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %match21 = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"
  %__llmatch23 = alloca {}*
  %e24 = alloca {}
  %__llmatch26 = alloca i8*
  %e27 = alloca i8
  %7 = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"
  %8 = alloca { %str_slice**, i64** }
  %__llmatch35 = alloca %str_slice***
  %__arg0 = alloca %str_slice**
  %__llmatch36 = alloca i64***
  %__arg1 = alloca i64**
  %__args_vec37 = alloca [2 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %9 = alloca %"struct.core::fmt::Argument<[]>[#3]", i64 2
  %__args38 = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__fat_ptr39 = alloca { %str_slice*, i64 }
  %__fat_ptr40 = alloca { %str_slice*, i64 }
  %__fat_ptr41 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %__fat_ptr42 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %match44 = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"
  %__llmatch46 = alloca {}*
  %e47 = alloca {}
  %__llmatch49 = alloca i8*
  %e50 = alloca i8
  %temp55 = alloca {}
  %match56 = alloca {}
  %__args_vec58 = alloca [0 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %10 = alloca %"struct.core::fmt::Argument<[]>[#3]", i64 0
  %__args59 = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__fat_ptr60 = alloca { %str_slice*, i64 }
  %__fat_ptr61 = alloca { %str_slice*, i64 }
  %__fat_ptr62 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %__fat_ptr63 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store %"struct.phf::PhfMap<[&'static str, int]>[#11]"* %0, %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %self
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  br label %case_body

case_body:                                        ; preds = %entry-block
  %11 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %3 to [0 x %"struct.core::fmt::Argument<[]>[#3]"]*
  store [0 x %"struct.core::fmt::Argument<[]>[#3]"]* %11, [0 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec
  %12 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr, i32 0, i32 0
  store %str_slice* getelementptr inbounds ([1 x %str_slice]* @"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt15__STATIC_FMTSTR20hb0010b8f10f09814LjaE", i32 0, i32 0), %str_slice** %12
  %13 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr, i32 0, i32 1
  store i64 1, i64* %13
  %14 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr, i32 0, i32 0
  %15 = load %str_slice** %14
  %16 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr, i32 0, i32 1
  %17 = load i64* %16
  %18 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr1, i32 0, i32 0
  store %str_slice* %15, %str_slice** %18
  %19 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr1, i32 0, i32 1
  store i64 %17, i64* %19
  %20 = load [0 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec
  %21 = getelementptr inbounds [0 x %"struct.core::fmt::Argument<[]>[#3]"]* %20, i32 0, i32 0
  %22 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr2, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %21, %"struct.core::fmt::Argument<[]>[#3]"** %22
  %23 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr2, i32 0, i32 1
  store i64 0, i64* %23
  %24 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr2, i32 0, i32 0
  %25 = load %"struct.core::fmt::Argument<[]>[#3]"** %24
  %26 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr2, i32 0, i32 1
  %27 = load i64* %26
  %28 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr3, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %25, %"struct.core::fmt::Argument<[]>[#3]"** %28
  %29 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr3, i32 0, i32 1
  store i64 %27, i64* %29
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h5a0d288d00618aa4BDyE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(48) %__args, { %str_slice*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr1, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr3)
  %30 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %31 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22Formatter$LT$$x27a$GT$9write_fmt20h558bd42580857f84r2yE"(%"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %30, %"struct.core::fmt::Arguments<[]>[#3]"* noalias readonly dereferenceable(48) %__args)
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %31, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %2
  br label %join

join:                                             ; preds = %case_body
  %32 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %2
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %32, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match4
  %33 = getelementptr inbounds %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match4, i32 0, i32 0
  %34 = load i8* %33, !range !224
  switch i8 %34, label %match_else [
    i8 0, label %match_case
  ]

case_body5:                                       ; preds = %match_case
  %35 = load {}** %__llmatch
  br label %join10

case_body6:                                       ; preds = %match_else
  %36 = load i8** %__llmatch7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %e8, i8* %36, i64 1, i32 1, i1 false)
  %37 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %sret_slot to { i8, i8 }*
  %38 = getelementptr inbounds { i8, i8 }* %37, i32 0, i32 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %e8, i64 1, i32 1, i1 false)
  %39 = getelementptr inbounds %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %sret_slot, i32 0, i32 0
  store i8 1, i8* %39
  br label %clean_custom_9

match_else:                                       ; preds = %join
  %40 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match4 to { i8, i8 }*
  %41 = getelementptr inbounds { i8, i8 }* %40, i32 0, i32 1
  store i8* %41, i8** %__llmatch7
  br label %case_body6

match_case:                                       ; preds = %join
  %42 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match4 to { i8, {} }*
  %43 = getelementptr inbounds { i8, {} }* %42, i32 0, i32 1
  store {}* %43, {}** %__llmatch
  br label %case_body5

clean_custom_:                                    ; preds = %join64, %clean_ast_178_, %clean_ast_179_
  br label %return

clean_ast_179_:                                   ; preds = %clean_custom_9
  br label %clean_custom_

clean_custom_9:                                   ; preds = %case_body6
  br label %clean_ast_179_

join10:                                           ; preds = %case_body5
  store i8 1, i8* %first
  %44 = load %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %self
  call void @"_ZN23PhfMap$LT$K$C$$x20V$GT$7entries20h2512439454475547926E"(%"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"* noalias nocapture sret dereferenceable(16) %4, %"struct.phf::PhfMap<[&'static str, int]>[#11]"* noalias readonly dereferenceable(40) %44)
  store %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"* %4, %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"** %for_head
  %45 = load %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  br label %case_body57

for_loopback:                                     ; preds = %join54, %join10
  %46 = call i8* @"_ZN89PhfMapEntries$LT$$x27a$C$$x20K$C$$x20V$GT$.Iterator$LT$$BP$$x27a$x20$LP$K$C$$x20V$RP$$GT$4next20h9394511005628855884E"(%"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"* noalias dereferenceable(16) %45)
  store i8* %46, i8** %loop_option
  %47 = load i8** %loop_option
  %48 = icmp ne i8* %47, null
  br i1 %48, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %49 = bitcast i8** %loop_option to { %str_slice, i64 }**
  %50 = load { %str_slice, i64 }** %49
  %51 = getelementptr inbounds { %str_slice, i64 }* %50, i32 0, i32 0
  store %str_slice* %51, %str_slice** %k
  %52 = getelementptr inbounds { %str_slice, i64 }* %50, i32 0, i32 1
  store i64* %52, i64** %v
  %53 = load i8* %first, !range !224
  %54 = trunc i8 %53 to i1
  %55 = xor i1 %54, true
  br i1 %55, label %then-block-245-, label %next-block

then-block-245-:                                  ; preds = %for_body
  br label %case_body13

case_body13:                                      ; preds = %then-block-245-
  %56 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %6 to [0 x %"struct.core::fmt::Argument<[]>[#3]"]*
  store [0 x %"struct.core::fmt::Argument<[]>[#3]"]* %56, [0 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec14
  %57 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr16, i32 0, i32 0
  store %str_slice* getelementptr inbounds ([1 x %str_slice]* @"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt15__STATIC_FMTSTR20hb0010b8f10f09814QkaE", i32 0, i32 0), %str_slice** %57
  %58 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr16, i32 0, i32 1
  store i64 1, i64* %58
  %59 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr16, i32 0, i32 0
  %60 = load %str_slice** %59
  %61 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr16, i32 0, i32 1
  %62 = load i64* %61
  %63 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr17, i32 0, i32 0
  store %str_slice* %60, %str_slice** %63
  %64 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr17, i32 0, i32 1
  store i64 %62, i64* %64
  %65 = load [0 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec14
  %66 = getelementptr inbounds [0 x %"struct.core::fmt::Argument<[]>[#3]"]* %65, i32 0, i32 0
  %67 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr18, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %66, %"struct.core::fmt::Argument<[]>[#3]"** %67
  %68 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr18, i32 0, i32 1
  store i64 0, i64* %68
  %69 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr18, i32 0, i32 0
  %70 = load %"struct.core::fmt::Argument<[]>[#3]"** %69
  %71 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr18, i32 0, i32 1
  %72 = load i64* %71
  %73 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr19, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %70, %"struct.core::fmt::Argument<[]>[#3]"** %73
  %74 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr19, i32 0, i32 1
  store i64 %72, i64* %74
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h5a0d288d00618aa4BDyE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(48) %__args15, { %str_slice*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr17, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr19)
  %75 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %76 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22Formatter$LT$$x27a$GT$9write_fmt20h558bd42580857f84r2yE"(%"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %75, %"struct.core::fmt::Arguments<[]>[#3]"* noalias readonly dereferenceable(48) %__args15)
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %76, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %5
  br label %join20

join20:                                           ; preds = %case_body13
  %77 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %5
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %77, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match21
  %78 = getelementptr inbounds %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match21, i32 0, i32 0
  %79 = load i8* %78, !range !224
  switch i8 %79, label %match_else28 [
    i8 0, label %match_case29
  ]

case_body22:                                      ; preds = %match_case29
  %80 = load {}** %__llmatch23
  br label %join33

case_body25:                                      ; preds = %match_else28
  %81 = load i8** %__llmatch26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %e27, i8* %81, i64 1, i32 1, i1 false)
  %82 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %sret_slot to { i8, i8 }*
  %83 = getelementptr inbounds { i8, i8 }* %82, i32 0, i32 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %e27, i64 1, i32 1, i1 false)
  %84 = getelementptr inbounds %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %sret_slot, i32 0, i32 0
  store i8 1, i8* %84
  br label %clean_custom_32

match_else28:                                     ; preds = %join20
  %85 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match21 to { i8, i8 }*
  %86 = getelementptr inbounds { i8, i8 }* %85, i32 0, i32 1
  store i8* %86, i8** %__llmatch26
  br label %case_body25

match_case29:                                     ; preds = %join20
  %87 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match21 to { i8, {} }*
  %88 = getelementptr inbounds { i8, {} }* %87, i32 0, i32 1
  store {}* %88, {}** %__llmatch23
  br label %case_body22

clean_ast_178_:                                   ; preds = %clean_ast_232_
  br label %clean_custom_

clean_ast_232_:                                   ; preds = %clean_custom_30
  br label %clean_ast_178_

clean_custom_30:                                  ; preds = %clean_custom_31
  br label %clean_ast_232_

clean_custom_31:                                  ; preds = %clean_ast_294_, %clean_ast_246_
  br label %clean_custom_30

clean_ast_246_:                                   ; preds = %clean_custom_32
  br label %clean_custom_31

clean_custom_32:                                  ; preds = %case_body25
  br label %clean_ast_246_

join33:                                           ; preds = %case_body22
  br label %next-block

next-block:                                       ; preds = %for_body, %join33
  %89 = getelementptr inbounds { %str_slice**, i64** }* %8, i32 0, i32 0
  store %str_slice** %k, %str_slice*** %89
  %90 = getelementptr inbounds { %str_slice**, i64** }* %8, i32 0, i32 1
  store i64** %v, i64*** %90
  %91 = getelementptr inbounds { %str_slice**, i64** }* %8, i32 0, i32 0
  %92 = getelementptr inbounds { %str_slice**, i64** }* %8, i32 0, i32 1
  store %str_slice*** %91, %str_slice**** %__llmatch35
  store i64*** %92, i64**** %__llmatch36
  br label %case_body34

case_body34:                                      ; preds = %next-block
  %93 = load %str_slice**** %__llmatch35
  %94 = load %str_slice*** %93
  store %str_slice** %94, %str_slice*** %__arg0
  %95 = load i64**** %__llmatch36
  %96 = load i64*** %95
  store i64** %96, i64*** %__arg1
  %97 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %9 to [2 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %98 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %9, i32 0
  %99 = load %str_slice*** %__arg0
  call void @_ZN3fmt8argument20h4910001458924787279E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %98, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice**, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h7091806199133377085E, %str_slice** noalias readonly dereferenceable(8) %99)
  %100 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %9, i32 1
  %101 = load i64*** %__arg1
  call void @_ZN3fmt8argument20h2563217952880327515E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %100, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (i64**, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h14803980638578194209E, i64** noalias readonly dereferenceable(8) %101)
  store [2 x %"struct.core::fmt::Argument<[]>[#3]"]* %97, [2 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec37
  %102 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr39, i32 0, i32 0
  store %str_slice* getelementptr inbounds ([2 x %str_slice]* @"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt15__STATIC_FMTSTR20hdaae8b738bfdef37IlaE", i32 0, i32 0), %str_slice** %102
  %103 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr39, i32 0, i32 1
  store i64 2, i64* %103
  %104 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr39, i32 0, i32 0
  %105 = load %str_slice** %104
  %106 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr39, i32 0, i32 1
  %107 = load i64* %106
  %108 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr40, i32 0, i32 0
  store %str_slice* %105, %str_slice** %108
  %109 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr40, i32 0, i32 1
  store i64 %107, i64* %109
  %110 = load [2 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec37
  %111 = getelementptr inbounds [2 x %"struct.core::fmt::Argument<[]>[#3]"]* %110, i32 0, i32 0
  %112 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr41, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %111, %"struct.core::fmt::Argument<[]>[#3]"** %112
  %113 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr41, i32 0, i32 1
  store i64 2, i64* %113
  %114 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr41, i32 0, i32 0
  %115 = load %"struct.core::fmt::Argument<[]>[#3]"** %114
  %116 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr41, i32 0, i32 1
  %117 = load i64* %116
  %118 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr42, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %115, %"struct.core::fmt::Argument<[]>[#3]"** %118
  %119 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr42, i32 0, i32 1
  store i64 %117, i64* %119
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h5a0d288d00618aa4BDyE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(48) %__args38, { %str_slice*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr40, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr42)
  %120 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %121 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22Formatter$LT$$x27a$GT$9write_fmt20h558bd42580857f84r2yE"(%"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %120, %"struct.core::fmt::Arguments<[]>[#3]"* noalias readonly dereferenceable(48) %__args38)
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %121, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %7
  br label %join43

join43:                                           ; preds = %case_body34
  %122 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %7
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %122, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match44
  %123 = getelementptr inbounds %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match44, i32 0, i32 0
  %124 = load i8* %123, !range !224
  switch i8 %124, label %match_else51 [
    i8 0, label %match_case52
  ]

case_body45:                                      ; preds = %match_case52
  %125 = load {}** %__llmatch46
  br label %join54

case_body48:                                      ; preds = %match_else51
  %126 = load i8** %__llmatch49
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %e50, i8* %126, i64 1, i32 1, i1 false)
  %127 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %sret_slot to { i8, i8 }*
  %128 = getelementptr inbounds { i8, i8 }* %127, i32 0, i32 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %e50, i64 1, i32 1, i1 false)
  %129 = getelementptr inbounds %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %sret_slot, i32 0, i32 0
  store i8 1, i8* %129
  br label %clean_custom_53

match_else51:                                     ; preds = %join43
  %130 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match44 to { i8, i8 }*
  %131 = getelementptr inbounds { i8, i8 }* %130, i32 0, i32 1
  store i8* %131, i8** %__llmatch49
  br label %case_body48

match_case52:                                     ; preds = %join43
  %132 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %match44 to { i8, {} }*
  %133 = getelementptr inbounds { i8, {} }* %132, i32 0, i32 1
  store {}* %133, {}** %__llmatch46
  br label %case_body45

clean_ast_294_:                                   ; preds = %clean_custom_53
  br label %clean_custom_31

clean_custom_53:                                  ; preds = %case_body48
  br label %clean_ast_294_

join54:                                           ; preds = %case_body45
  store i8 0, i8* %first
  br label %for_loopback

case_body57:                                      ; preds = %for_exit
  %134 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %10 to [0 x %"struct.core::fmt::Argument<[]>[#3]"]*
  store [0 x %"struct.core::fmt::Argument<[]>[#3]"]* %134, [0 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec58
  %135 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr60, i32 0, i32 0
  store %str_slice* getelementptr inbounds ([1 x %str_slice]* @"_ZN33PhfMap$LT$K$C$$x20V$GT$.fmt..Show3fmt15__STATIC_FMTSTR20hb0010b8f10f09814FmaE", i32 0, i32 0), %str_slice** %135
  %136 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr60, i32 0, i32 1
  store i64 1, i64* %136
  %137 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr60, i32 0, i32 0
  %138 = load %str_slice** %137
  %139 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr60, i32 0, i32 1
  %140 = load i64* %139
  %141 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr61, i32 0, i32 0
  store %str_slice* %138, %str_slice** %141
  %142 = getelementptr inbounds { %str_slice*, i64 }* %__fat_ptr61, i32 0, i32 1
  store i64 %140, i64* %142
  %143 = load [0 x %"struct.core::fmt::Argument<[]>[#3]"]** %__args_vec58
  %144 = getelementptr inbounds [0 x %"struct.core::fmt::Argument<[]>[#3]"]* %143, i32 0, i32 0
  %145 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr62, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %144, %"struct.core::fmt::Argument<[]>[#3]"** %145
  %146 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr62, i32 0, i32 1
  store i64 0, i64* %146
  %147 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr62, i32 0, i32 0
  %148 = load %"struct.core::fmt::Argument<[]>[#3]"** %147
  %149 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr62, i32 0, i32 1
  %150 = load i64* %149
  %151 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr63, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %148, %"struct.core::fmt::Argument<[]>[#3]"** %151
  %152 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__fat_ptr63, i32 0, i32 1
  store i64 %150, i64* %152
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h5a0d288d00618aa4BDyE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(48) %__args59, { %str_slice*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr61, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__fat_ptr63)
  %153 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %154 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22Formatter$LT$$x27a$GT$9write_fmt20h558bd42580857f84r2yE"(%"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %153, %"struct.core::fmt::Arguments<[]>[#3]"* noalias readonly dereferenceable(48) %__args59)
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %154, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %sret_slot
  br label %join64

join64:                                           ; preds = %case_body57
  br label %clean_custom_

return:                                           ; preds = %clean_custom_
  %155 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]"* %sret_slot
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %155
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h5a0d288d00618aa4BDyE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(48), { %str_slice*, i64 }* noalias nocapture dereferenceable(16), { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #3 {
entry-block:
  %pieces = alloca { %str_slice*, i64 }
  %args = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %3 = bitcast { %str_slice*, i64 }* %1 to i8*
  %4 = bitcast { %str_slice*, i64 }* %pieces to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 16, i32 8, i1 false)
  %5 = bitcast { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %2 to i8*
  %6 = bitcast { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 16, i32 8, i1 false)
  %7 = getelementptr inbounds %"struct.core::fmt::Arguments<[]>[#3]"* %0, i32 0, i32 0
  %8 = bitcast { %str_slice*, i64 }* %pieces to i8*
  %9 = bitcast { %str_slice*, i64 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %8, i64 16, i32 8, i1 false)
  %10 = getelementptr inbounds %"struct.core::fmt::Arguments<[]>[#3]"* %0, i32 0, i32 1
  %11 = getelementptr inbounds %"enum.core::option::Option<[&'static [core::fmt::rt::Argument]]>[#3]"* %10, i32 0, i32 0, i32 0
  store %"struct.core::fmt::rt::Argument<[]>[#3]"* null, %"struct.core::fmt::rt::Argument<[]>[#3]"** %11
  %12 = getelementptr inbounds %"struct.core::fmt::Arguments<[]>[#3]"* %0, i32 0, i32 2
  %13 = bitcast { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %args to i8*
  %14 = bitcast { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %13, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) unnamed_addr #4

declare %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22Formatter$LT$$x27a$GT$9write_fmt20h558bd42580857f84r2yE"(%"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96), %"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture readonly dereferenceable(48)) unnamed_addr #1

; Function Attrs: uwtable
define internal void @"_ZN23PhfMap$LT$K$C$$x20V$GT$7entries20h2512439454475547926E"(%"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"* noalias nocapture sret dereferenceable(16), %"struct.phf::PhfMap<[&'static str, int]>[#11]"* noalias readonly dereferenceable(40)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.phf::PhfMap<[&'static str, int]>[#11]"*
  %arg = alloca { { %str_slice, i64 }*, i64 }
  store %"struct.phf::PhfMap<[&'static str, int]>[#11]"* %1, %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %self
  %2 = getelementptr inbounds %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"* %0, i32 0, i32 0
  %3 = load %"struct.phf::PhfMap<[&'static str, int]>[#11]"** %self
  %4 = getelementptr inbounds %"struct.phf::PhfMap<[&'static str, int]>[#11]"* %3, i32 0, i32 2
  %5 = bitcast { { %str_slice, i64 }*, i64 }* %4 to i8*
  %6 = bitcast { { %str_slice, i64 }*, i64 }* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 16, i32 8, i1 false)
  call void @"_ZN5slice59_$BP$$x27a$x20$x5bT$x5d.ImmutableSlice$LT$$x27a$C$$x20T$GT$4iter20h4539345191350898634E"(%"struct.core::slice::Items<[(&'static str,int)]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { { %str_slice, i64 }*, i64 }* noalias nocapture dereferenceable(16) %arg)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5slice59_$BP$$x27a$x20$x5bT$x5d.ImmutableSlice$LT$$x27a$C$$x20T$GT$4iter20h4539345191350898634E"(%"struct.core::slice::Items<[(&'static str,int)]>[#3]"* noalias nocapture sret dereferenceable(16), { { %str_slice, i64 }*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #3 {
entry-block:
  %self = alloca { { %str_slice, i64 }*, i64 }
  %p = alloca { %str_slice, i64 }*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = bitcast { { %str_slice, i64 }*, i64 }* %1 to i8*
  %6 = bitcast { { %str_slice, i64 }*, i64 }* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 16, i32 8, i1 false)
  %7 = call { %str_slice, i64 }* @"_ZN5slice59_$BP$$x27a$x20$x5bT$x5d.ImmutableSlice$LT$$x27a$C$$x20T$GT$6as_ptr21h11074539441105826337E"({ { %str_slice, i64 }*, i64 }* noalias readonly dereferenceable(16) %self)
  store { %str_slice, i64 }* %7, { %str_slice, i64 }** %p
  %8 = call i64 @_ZN3mem7size_of20h3775198666475218004E()
  store i64 %8, i64* %2
  %9 = load i64* %2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %then-block-476-, label %else-block

then-block-476-:                                  ; preds = %entry-block
  %11 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %0, i32 0, i32 0
  %12 = load { %str_slice, i64 }** %p
  store { %str_slice, i64 }* %12, { %str_slice, i64 }** %11
  %13 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %0, i32 0, i32 1
  %14 = load { %str_slice, i64 }** %p
  %15 = ptrtoint { %str_slice, i64 }* %14 to i64
  %16 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h13779289946734332966E"({ { %str_slice, i64 }*, i64 }* noalias readonly dereferenceable(16) %self)
  store i64 %16, i64* %3
  %17 = load i64* %3
  %18 = add i64 %15, %17
  %19 = inttoptr i64 %18 to { %str_slice, i64 }*
  store { %str_slice, i64 }* %19, { %str_slice, i64 }** %13
  %20 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %0, i32 0, i32 2
  br label %join

else-block:                                       ; preds = %entry-block
  %21 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %0, i32 0, i32 0
  %22 = load { %str_slice, i64 }** %p
  store { %str_slice, i64 }* %22, { %str_slice, i64 }** %21
  %23 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %0, i32 0, i32 1
  %24 = load { %str_slice, i64 }** %p
  %25 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h13779289946734332966E"({ { %str_slice, i64 }*, i64 }* noalias readonly dereferenceable(16) %self)
  store i64 %25, i64* %4
  %26 = load i64* %4
  %27 = call { %str_slice, i64 }* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h9650349264913611057E"({ %str_slice, i64 }* %24, i64 %26)
  store { %str_slice, i64 }* %27, { %str_slice, i64 }** %23
  %28 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %0, i32 0, i32 2
  br label %join

join:                                             ; preds = %else-block, %then-block-476-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { %str_slice, i64 }* @"_ZN5slice59_$BP$$x27a$x20$x5bT$x5d.ImmutableSlice$LT$$x27a$C$$x20T$GT$6as_ptr21h11074539441105826337E"({ { %str_slice, i64 }*, i64 }* noalias nocapture readonly dereferenceable(16)) unnamed_addr #3 {
entry-block:
  %self = alloca { { %str_slice, i64 }*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"
  store { { %str_slice, i64 }*, i64 }* %0, { { %str_slice, i64 }*, i64 }** %self
  %2 = load { { %str_slice, i64 }*, i64 }** %self
  call void @_ZN3raw4Repr4repr20h1950781051494473055E(%"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { { %str_slice, i64 }*, i64 }* noalias readonly dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* %1, i32 0, i32 0
  %4 = load { %str_slice, i64 }** %3
  ret { %str_slice, i64 }* %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr20h1950781051494473055E(%"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* noalias nocapture sret dereferenceable(16), { { %str_slice, i64 }*, i64 }* noalias nocapture readonly dereferenceable(16)) unnamed_addr #3 {
entry-block:
  %self = alloca { { %str_slice, i64 }*, i64 }*
  store { { %str_slice, i64 }*, i64 }* %1, { { %str_slice, i64 }*, i64 }** %self
  %2 = load { { %str_slice, i64 }*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h8708611185529019994E(%"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { { %str_slice, i64 }*, i64 }* noalias nocapture readonly dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h8708611185529019994E(%"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* noalias nocapture sret dereferenceable(16), { { %str_slice, i64 }*, i64 }* noalias nocapture readonly dereferenceable(16)) unnamed_addr #3 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"
  %auto_deref.i = alloca %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"*
  %src = alloca { { %str_slice, i64 }*, i64 }*
  store { { %str_slice, i64 }*, i64 }* %1, { { %str_slice, i64 }*, i64 }** %src
  %2 = load { { %str_slice, i64 }*, i64 }** %src
  %3 = bitcast { { %str_slice, i64 }*, i64 }* %2 to %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"*
  store %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* %3, %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"** %src.i, !noalias !225
  call void @_ZN3mem13uninitialized20h3402489677870085682E(%"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i), !noalias !225
  store %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* %tmp.i, %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"** %auto_deref.i, !noalias !225
  %4 = load %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"** %auto_deref.i, !noalias !225
  %5 = load %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"** %src.i, !noalias !225
  %6 = bitcast %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* %4 to i8*
  %7 = bitcast %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !noalias !225
  %8 = bitcast %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* %tmp.i to i8*
  %9 = bitcast %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %8, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized20h3402489677870085682E(%"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #3 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of20h3775198666475218004E() unnamed_addr #3 {
entry-block:
  ret i64 24
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h13779289946734332966E"({ { %str_slice, i64 }*, i64 }* noalias nocapture readonly dereferenceable(16)) unnamed_addr #3 {
entry-block:
  %self = alloca { { %str_slice, i64 }*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"
  store { { %str_slice, i64 }*, i64 }* %0, { { %str_slice, i64 }*, i64 }** %self
  %2 = load { { %str_slice, i64 }*, i64 }** %self
  call void @_ZN3raw4Repr4repr20h1950781051494473055E(%"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { { %str_slice, i64 }*, i64 }* noalias readonly dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[(&'static str,int)]>[#3]"* %1, i32 0, i32 1
  %4 = load i64* %3
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal { %str_slice, i64 }* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h9650349264913611057E"({ %str_slice, i64 }*, i64) unnamed_addr #3 {
entry-block:
  %self = alloca { %str_slice, i64 }*
  %count = alloca i64
  store { %str_slice, i64 }* %0, { %str_slice, i64 }** %self
  store i64 %1, i64* %count
  %2 = load { %str_slice, i64 }** %self
  %3 = load i64* %count
  %4 = getelementptr inbounds { %str_slice, i64 }* %2, i64 %3
  ret { %str_slice, i64 }* %4
}

; Function Attrs: uwtable
define internal i8* @"_ZN89PhfMapEntries$LT$$x27a$C$$x20K$C$$x20V$GT$.Iterator$LT$$BP$$x27a$x20$LP$K$C$$x20V$RP$$GT$4next20h9394511005628855884E"(%"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"*
  store %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"* %0, %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"** %self
  %1 = load %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"** %self
  %2 = getelementptr inbounds %"struct.phf::PhfMapEntries<[&'static str, int]>[#11]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h15538038513894165296E"(%"struct.core::slice::Items<[(&'static str,int)]>[#3]"* noalias dereferenceable(16) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h15538038513894165296E"(%"struct.core::slice::Items<[(&'static str,int)]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #3 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca %"struct.core::slice::Items<[(&'static str,int)]>[#3]"*
  %1 = alloca i64
  %old = alloca { %str_slice, i64 }*
  store %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %0, %"struct.core::slice::Items<[(&'static str,int)]>[#3]"** %self
  %2 = load %"struct.core::slice::Items<[(&'static str,int)]>[#3]"** %self
  %3 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.core::slice::Items<[(&'static str,int)]>[#3]"** %self
  %5 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %4, i32 0, i32 1
  %6 = load { %str_slice, i64 }** %3
  %7 = load { %str_slice, i64 }** %5
  %8 = icmp eq { %str_slice, i64 }* %6, %7
  br i1 %8, label %then-block-719-, label %else-block

then-block-719-:                                  ; preds = %entry-block
  store i8* null, i8** %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %9 = call i64 @_ZN3mem7size_of20h3775198666475218004E()
  store i64 %9, i64* %1
  %10 = load i64* %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then-block-730-, label %else-block1

then-block-730-:                                  ; preds = %else-block
  %12 = load %"struct.core::slice::Items<[(&'static str,int)]>[#3]"** %self
  %13 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %12, i32 0, i32 0
  %14 = bitcast { %str_slice, i64 }** %13 to i64*
  %15 = load %"struct.core::slice::Items<[(&'static str,int)]>[#3]"** %self
  %16 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %15, i32 0, i32 0
  %17 = load { %str_slice, i64 }** %16
  %18 = ptrtoint { %str_slice, i64 }* %17 to i64
  %19 = add i64 %18, 1
  store i64 %19, i64* %14
  %20 = bitcast i8** %sret_slot to { %str_slice, i64 }**
  %21 = bitcast { %str_slice, i64 }** %20 to i64*
  store i64 1, i64* %21
  br label %join

else-block1:                                      ; preds = %else-block
  %22 = load %"struct.core::slice::Items<[(&'static str,int)]>[#3]"** %self
  %23 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %22, i32 0, i32 0
  %24 = load { %str_slice, i64 }** %23
  store { %str_slice, i64 }* %24, { %str_slice, i64 }** %old
  %25 = load %"struct.core::slice::Items<[(&'static str,int)]>[#3]"** %self
  %26 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %25, i32 0, i32 0
  %27 = load %"struct.core::slice::Items<[(&'static str,int)]>[#3]"** %self
  %28 = getelementptr inbounds %"struct.core::slice::Items<[(&'static str,int)]>[#3]"* %27, i32 0, i32 0
  %29 = load { %str_slice, i64 }** %28
  %30 = call { %str_slice, i64 }* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h9650349264913611057E"({ %str_slice, i64 }* %29, i64 1)
  store { %str_slice, i64 }* %30, { %str_slice, i64 }** %26
  %31 = bitcast i8** %sret_slot to { %str_slice, i64 }**
  %32 = load { %str_slice, i64 }** %old
  store { %str_slice, i64 }* %32, { %str_slice, i64 }** %31
  br label %join

join:                                             ; preds = %else-block1, %then-block-730-
  br label %join2

join2:                                            ; preds = %join, %then-block-719-
  %33 = load i8** %sret_slot
  ret i8* %33
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument20h4910001458924787279E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice**, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %str_slice** noalias readonly dereferenceable(8)) unnamed_addr #3 {
entry-block:
  %f = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice**, %"struct.core::fmt::Formatter<[]>[#3]"*)*
  %t = alloca %str_slice**
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice**, %"struct.core::fmt::Formatter<[]>[#3]"*)* %1, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice**, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %str_slice** %2, %str_slice*** %t
  %3 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 0
  %4 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %3 to %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice**, %"struct.core::fmt::Formatter<[]>[#3]"*)**
  %5 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice**, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice**, %"struct.core::fmt::Formatter<[]>[#3]"*)* %5, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice**, %"struct.core::fmt::Formatter<[]>[#3]"*)** %4
  %6 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 1
  %7 = bitcast %"enum.core::fmt::Void<[]>[#3]"** %6 to %str_slice***
  %8 = load %str_slice*** %t
  store %str_slice** %8, %str_slice*** %7
  ret void
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show20h7091806199133377085E(%str_slice** noalias nocapture readonly dereferenceable(8), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %x = alloca %str_slice**
  %fmt = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store %str_slice** %0, %str_slice*** %x
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %2 = load %str_slice*** %x
  %3 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %4 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt20_$BP$$x27a$x20T.Show3fmt21h16797111459848733880E"(%str_slice** noalias readonly dereferenceable(8) %2, %"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %3)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %4
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt20_$BP$$x27a$x20T.Show3fmt21h16797111459848733880E"(%str_slice** noalias nocapture readonly dereferenceable(8), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %self = alloca %str_slice**
  %f = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store %str_slice** %0, %str_slice*** %self
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %f
  %2 = load %str_slice*** %self
  %3 = load %str_slice** %2
  %4 = load %"struct.core::fmt::Formatter<[]>[#3]"** %f
  %5 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show20h8472215473573966820E(%str_slice* noalias nocapture readonly dereferenceable(16) %3, %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96) %4)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %5
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show20h8472215473573966820E(%str_slice* noalias nocapture readonly dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %x = alloca %str_slice*
  %fmt = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store %str_slice* %0, %str_slice** %x
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %2 = load %str_slice** %x
  %3 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %4 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22_$BP$$x27a$x20str.Show3fmt20h496a0a12b2efcc26ZfzE"(%str_slice* noalias readonly dereferenceable(16) %2, %"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %3)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %4
}

declare %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22_$BP$$x27a$x20str.Show3fmt20h496a0a12b2efcc26ZfzE"(%str_slice* noalias nocapture readonly dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument20h2563217952880327515E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (i64**, %"struct.core::fmt::Formatter<[]>[#3]"*)*, i64** noalias readonly dereferenceable(8)) unnamed_addr #3 {
entry-block:
  %f = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (i64**, %"struct.core::fmt::Formatter<[]>[#3]"*)*
  %t = alloca i64**
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (i64**, %"struct.core::fmt::Formatter<[]>[#3]"*)* %1, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (i64**, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store i64** %2, i64*** %t
  %3 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 0
  %4 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %3 to %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (i64**, %"struct.core::fmt::Formatter<[]>[#3]"*)**
  %5 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (i64**, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (i64**, %"struct.core::fmt::Formatter<[]>[#3]"*)* %5, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (i64**, %"struct.core::fmt::Formatter<[]>[#3]"*)** %4
  %6 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 1
  %7 = bitcast %"enum.core::fmt::Void<[]>[#3]"** %6 to i64***
  %8 = load i64*** %t
  store i64** %8, i64*** %7
  ret void
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show21h14803980638578194209E(i64** noalias nocapture readonly dereferenceable(8), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %x = alloca i64**
  %fmt = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store i64** %0, i64*** %x
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %2 = load i64*** %x
  %3 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %4 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt20_$BP$$x27a$x20T.Show3fmt21h15892218501860479228E"(i64** noalias readonly dereferenceable(8) %2, %"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %3)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %4
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt20_$BP$$x27a$x20T.Show3fmt21h15892218501860479228E"(i64** noalias nocapture readonly dereferenceable(8), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %self = alloca i64**
  %f = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store i64** %0, i64*** %self
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %f
  %2 = load i64*** %self
  %3 = load i64** %2
  %4 = load %"struct.core::fmt::Formatter<[]>[#3]"** %f
  %5 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show21h13777236738717986744E(i64* noalias nocapture readonly dereferenceable(8) %3, %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96) %4)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %5
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show21h13777236738717986744E(i64* noalias nocapture readonly dereferenceable(8), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %x = alloca i64*
  %fmt = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store i64* %0, i64** %x
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %2 = load i64** %x
  %3 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %4 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt3num13int.fmt..Show3fmt20h5e57762aac6a90d0bLxE(i64* noalias readonly dereferenceable(8) %2, %"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %3)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %4
}

declare %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt3num13int.fmt..Show3fmt20h5e57762aac6a90d0bLxE(i64* noalias nocapture readonly dereferenceable(8), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #1

declare void @_ZN2io5stdio12println_args20ha814eed0babede57splE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture readonly dereferenceable(48)) unnamed_addr #1

attributes #0 = { uwtable "split-stack" }
attributes #1 = { "split-stack" }
attributes #2 = { nounwind readnone }
attributes #3 = { inlinehint uwtable "split-stack" }
attributes #4 = { nounwind "split-stack" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!207, !208}

!0 = metadata !{i32 786449, metadata !1, i32 36864, metadata !"rustc version 0.13.0-nightly (f03745244 2014-10-26 16:42:33 +0000)", i1 false, metadata !"", i32 0, metadata !2, metadata !36, metadata !193, metadata !199, metadata !92, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/Users/Charlie/Projects/Hydra/Compiler/playground/vtables/./src/main.rs] [lang 0x9000]
!1 = metadata !{metadata !"./src/main.rs", metadata !"/Users/Charlie/Projects/Hydra/Compiler/playground/vtables"}
!2 = metadata !{metadata !3, metadata !10, metadata !14, metadata !21, metadata !26, metadata !30}
!3 = metadata !{i32 786436, null, metadata !4, metadata !"Result", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !6, metadata !7, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [Result] [line 0, size 8, align 8, offset 0] [def] [from u8]
!4 = metadata !{i32 786489, null, metadata !5, metadata !"result", i32 0} ; [ DW_TAG_namespace ] [result] [line 0]
!5 = metadata !{i32 786489, null, null, metadata !"core", i32 0} ; [ DW_TAG_namespace ] [core] [line 0]
!6 = metadata !{i32 786468, null, null, metadata !"u8", i32 0, i64 8, i64 8, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [u8] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786472, metadata !"Ok", i64 0} ; [ DW_TAG_enumerator ] [Ok :: 0]
!9 = metadata !{i32 786472, metadata !"Err", i64 1} ; [ DW_TAG_enumerator ] [Err :: 1]
!10 = metadata !{i32 786436, null, metadata !11, metadata !"FormatError", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !6, metadata !12, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [FormatError] [line 0, size 8, align 8, offset 0] [def] [from u8]
!11 = metadata !{i32 786489, null, metadata !5, metadata !"fmt", i32 0} ; [ DW_TAG_namespace ] [fmt] [line 0]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786472, metadata !"WriteError", i64 0} ; [ DW_TAG_enumerator ] [WriteError :: 0]
!14 = metadata !{i32 786436, null, metadata !15, metadata !"Alignment", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !6, metadata !16, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [Alignment] [line 0, size 8, align 8, offset 0] [def] [from u8]
!15 = metadata !{i32 786489, null, metadata !11, metadata !"rt", i32 0} ; [ DW_TAG_namespace ] [rt] [line 0]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20}
!17 = metadata !{i32 786472, metadata !"AlignLeft", i64 0} ; [ DW_TAG_enumerator ] [AlignLeft :: 0]
!18 = metadata !{i32 786472, metadata !"AlignRight", i64 1} ; [ DW_TAG_enumerator ] [AlignRight :: 1]
!19 = metadata !{i32 786472, metadata !"AlignCenter", i64 2} ; [ DW_TAG_enumerator ] [AlignCenter :: 2]
!20 = metadata !{i32 786472, metadata !"AlignUnknown", i64 3} ; [ DW_TAG_enumerator ] [AlignUnknown :: 3]
!21 = metadata !{i32 786436, null, metadata !22, metadata !"Option", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !6, metadata !23, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [Option] [line 0, size 8, align 8, offset 0] [def] [from u8]
!22 = metadata !{i32 786489, null, metadata !5, metadata !"option", i32 0} ; [ DW_TAG_namespace ] [option] [line 0]
!23 = metadata !{metadata !24, metadata !25}
!24 = metadata !{i32 786472, metadata !"None", i64 0} ; [ DW_TAG_enumerator ] [None :: 0]
!25 = metadata !{i32 786472, metadata !"Some", i64 1} ; [ DW_TAG_enumerator ] [Some :: 1]
!26 = metadata !{i32 786436, null, metadata !15, metadata !"Position", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !6, metadata !27, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [Position] [line 0, size 8, align 8, offset 0] [def] [from u8]
!27 = metadata !{metadata !28, metadata !29}
!28 = metadata !{i32 786472, metadata !"ArgumentNext", i64 0} ; [ DW_TAG_enumerator ] [ArgumentNext :: 0]
!29 = metadata !{i32 786472, metadata !"ArgumentIs", i64 1} ; [ DW_TAG_enumerator ] [ArgumentIs :: 1]
!30 = metadata !{i32 786436, null, metadata !15, metadata !"Count", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !6, metadata !31, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [Count] [line 0, size 8, align 8, offset 0] [def] [from u8]
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786472, metadata !"CountIs", i64 0} ; [ DW_TAG_enumerator ] [CountIs :: 0]
!33 = metadata !{i32 786472, metadata !"CountIsParam", i64 1} ; [ DW_TAG_enumerator ] [CountIsParam :: 1]
!34 = metadata !{i32 786472, metadata !"CountIsNextParam", i64 2} ; [ DW_TAG_enumerator ] [CountIsNextParam :: 2]
!35 = metadata !{i32 786472, metadata !"CountImplied", i64 3} ; [ DW_TAG_enumerator ] [CountImplied :: 3]
!36 = metadata !{metadata !37, metadata !44, metadata !49, metadata !55, metadata !60, metadata !65, metadata !70, metadata !75, metadata !82, metadata !87, metadata !91, metadata !93, metadata !104, metadata !108, metadata !111, metadata !115, metadata !116, metadata !123, metadata !126, metadata !130, metadata !135, metadata !140, metadata !143, metadata !146, metadata !150, metadata !154, metadata !157, metadata !161, metadata !168, metadata !174, metadata !178, metadata !182, metadata !185, metadata !188}
!37 = metadata !{i32 786451, null, metadata !38, metadata !"PhfMap<&str, int>", i32 0, i64 320, i64 64, i32 0, i32 0, null, metadata !39, i32 0, null, null, metadata !"{struct 82714fa3738ea985/1d1<{&{str}},{int},>}"} ; [ DW_TAG_structure_type ] [PhfMap<&str, int>] [line 0, size 320, align 64, offset 0] [def] [from ]
!38 = metadata !{i32 786489, null, null, metadata !"phf", i32 0} ; [ DW_TAG_namespace ] [phf] [line 0]
!39 = metadata !{metadata !40, metadata !42, metadata !43}
!40 = metadata !{i32 786445, null, metadata !"{struct 82714fa3738ea985/1d1<{&{str}},{int},>}", metadata !"key", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [key] [line 0, size 64, align 64, offset 0] [from u64]
!41 = metadata !{i32 786468, null, null, metadata !"u64", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [u64] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!42 = metadata !{i32 786445, null, metadata !"{struct 82714fa3738ea985/1d1<{&{str}},{int},>}", metadata !"disps", i32 0, i64 128, i64 64, i64 64, i32 0, metadata !"{&{[]{tuple {u32}{u32}}}}"} ; [ DW_TAG_member ] [disps] [line 0, size 128, align 64, offset 64] [from {&{[]{tuple {u32}{u32}}}}]
!43 = metadata !{i32 786445, null, metadata !"{struct 82714fa3738ea985/1d1<{&{str}},{int},>}", metadata !"entries", i32 0, i64 128, i64 64, i64 192, i32 0, metadata !"{&{[]{tuple {&{str}}{int}}}}"} ; [ DW_TAG_member ] [entries] [line 0, size 128, align 64, offset 192] [from {&{[]{tuple {&{str}}{int}}}}]
!44 = metadata !{i32 786451, null, null, metadata !"(u32, u32)", i32 0, i64 64, i64 32, i32 0, i32 0, null, metadata !45, i32 0, null, null, metadata !"{tuple {u32}{u32}}"} ; [ DW_TAG_structure_type ] [(u32, u32)] [line 0, size 64, align 32, offset 0] [def] [from ]
!45 = metadata !{metadata !46, metadata !48}
!46 = metadata !{i32 786445, null, metadata !"{tuple {u32}{u32}}", metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [line 0, size 32, align 32, offset 0] [from u32]
!47 = metadata !{i32 786468, null, null, metadata !"u32", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [u32] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!48 = metadata !{i32 786445, null, metadata !"{tuple {u32}{u32}}", metadata !"", i32 0, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [line 0, size 32, align 32, offset 32] [from u32]
!49 = metadata !{i32 786451, null, null, metadata !"&[(u32, u32)]", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null, metadata !"{&{[]{tuple {u32}{u32}}}}"} ; [ DW_TAG_structure_type ] [&[(u32, u32)]] [line 0, size 128, align 64, offset 0] [def] [from ]
!50 = metadata !{metadata !51, metadata !53}
!51 = metadata !{i32 786445, null, metadata !"{&{[]{tuple {u32}{u32}}}}", metadata !"data_ptr", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [data_ptr] [line 0, size 64, align 64, offset 0] [from *const (u32, u32)]
!52 = metadata !{i32 786447, null, null, metadata !"*const (u32, u32)", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !"{tuple {u32}{u32}}"} ; [ DW_TAG_pointer_type ] [*const (u32, u32)] [line 0, size 64, align 64, offset 0] [from {tuple {u32}{u32}}]
!53 = metadata !{i32 786445, null, metadata !"{&{[]{tuple {u32}{u32}}}}", metadata !"length", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [length] [line 0, size 64, align 64, offset 64] [from uint]
!54 = metadata !{i32 786468, null, null, metadata !"uint", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [uint] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!55 = metadata !{i32 786451, null, null, metadata !"(&str, int)", i32 0, i64 192, i64 64, i32 0, i32 0, null, metadata !56, i32 0, null, null, metadata !"{tuple {&{str}}{int}}"} ; [ DW_TAG_structure_type ] [(&str, int)] [line 0, size 192, align 64, offset 0] [def] [from ]
!56 = metadata !{metadata !57, metadata !58}
!57 = metadata !{i32 786445, null, metadata !"{tuple {&{str}}{int}}", metadata !"", i32 0, i64 128, i64 64, i64 0, i32 0, metadata !"{&{str}}"} ; [ DW_TAG_member ] [line 0, size 128, align 64, offset 0] [from {&{str}}]
!58 = metadata !{i32 786445, null, metadata !"{tuple {&{str}}{int}}", metadata !"", i32 0, i64 64, i64 64, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [line 0, size 64, align 64, offset 128] [from int]
!59 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!60 = metadata !{i32 786451, null, null, metadata !"&str", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !61, i32 0, null, null, metadata !"{&{str}}"} ; [ DW_TAG_structure_type ] [&str] [line 0, size 128, align 64, offset 0] [def] [from ]
!61 = metadata !{metadata !62, metadata !64}
!62 = metadata !{i32 786445, null, metadata !"{&{str}}", metadata !"data_ptr", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ] [data_ptr] [line 0, size 64, align 64, offset 0] [from *const u8]
!63 = metadata !{i32 786447, null, null, metadata !"*const u8", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ] [*const u8] [line 0, size 64, align 64, offset 0] [from u8]
!64 = metadata !{i32 786445, null, metadata !"{&{str}}", metadata !"length", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [length] [line 0, size 64, align 64, offset 64] [from uint]
!65 = metadata !{i32 786451, null, null, metadata !"&[(&str, int)]", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !66, i32 0, null, null, metadata !"{&{[]{tuple {&{str}}{int}}}}"} ; [ DW_TAG_structure_type ] [&[(&str, int)]] [line 0, size 128, align 64, offset 0] [def] [from ]
!66 = metadata !{metadata !67, metadata !69}
!67 = metadata !{i32 786445, null, metadata !"{&{[]{tuple {&{str}}{int}}}}", metadata !"data_ptr", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [data_ptr] [line 0, size 64, align 64, offset 0] [from *const (&str, int)]
!68 = metadata !{i32 786447, null, null, metadata !"*const (&str, int)", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !"{tuple {&{str}}{int}}"} ; [ DW_TAG_pointer_type ] [*const (&str, int)] [line 0, size 64, align 64, offset 0] [from {tuple {&{str}}{int}}]
!69 = metadata !{i32 786445, null, metadata !"{&{[]{tuple {&{str}}{int}}}}", metadata !"length", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [length] [line 0, size 64, align 64, offset 64] [from uint]
!70 = metadata !{i32 786451, null, metadata !11, metadata !"Argument", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !71, i32 0, null, null, metadata !"{struct 597d725aac336812/16f6a}"} ; [ DW_TAG_structure_type ] [Argument] [line 0, size 128, align 64, offset 0] [def] [from ]
!71 = metadata !{metadata !72, metadata !81}
!72 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f6a}", metadata !"formatter", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [formatter] [line 0, size 64, align 64, offset 0] [from ]
!73 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !75, metadata !79, metadata !80}
!75 = metadata !{i32 786455, null, metadata !4, metadata !"Result<(), core::fmt::FormatError>", i32 0, i64 16, i64 8, i64 0, i32 0, null, metadata !76, i32 0, null, null, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}"} ; [ DW_TAG_union_type ] [Result<(), core::fmt::FormatError>] [line 0, size 16, align 8, offset 0] [def] [from ]
!76 = metadata !{metadata !77, metadata !78}
!77 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}", metadata !"", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Ok"} ; [ DW_TAG_member ] [line 0, size 8, align 8, offset 0] [from {enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Ok]
!78 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}", metadata !"", i32 0, i64 16, i64 8, i64 0, i32 0, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Err"} ; [ DW_TAG_member ] [line 0, size 16, align 8, offset 0] [from {enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Err]
!79 = metadata !{i32 786447, null, null, metadata !"&core::fmt::Void", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !"{enum 597d725aac336812/16f68}"} ; [ DW_TAG_pointer_type ] [&core::fmt::Void] [line 0, size 64, align 64, offset 0] [from {enum 597d725aac336812/16f68}]
!80 = metadata !{i32 786447, null, null, metadata !"&mut core::fmt::Formatter", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !"{struct 597d725aac336812/16f3e}"} ; [ DW_TAG_pointer_type ] [&mut core::fmt::Formatter] [line 0, size 64, align 64, offset 0] [from {struct 597d725aac336812/16f3e}]
!81 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f6a}", metadata !"value", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [value] [line 0, size 64, align 64, offset 64] [from &core::fmt::Void]
!82 = metadata !{i32 786451, null, metadata !4, metadata !"Ok", i32 0, i64 8, i64 8, i32 0, i32 0, null, metadata !83, i32 0, null, null, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Ok"} ; [ DW_TAG_structure_type ] [Ok] [line 0, size 8, align 8, offset 0] [def] [from ]
!83 = metadata !{metadata !84, metadata !85}
!84 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Ok", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !3} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Result]
!85 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Ok", metadata !"", i32 0, i64 0, i64 8, i64 8, i32 0, metadata !86} ; [ DW_TAG_member ] [line 0, size 0, align 8, offset 8] [from ()]
!86 = metadata !{i32 786468, null, null, metadata !"()", i32 0, i64 0, i64 8, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [()] [line 0, size 0, align 8, offset 0, enc DW_ATE_unsigned]
!87 = metadata !{i32 786451, null, metadata !4, metadata !"Err", i32 0, i64 16, i64 8, i32 0, i32 0, null, metadata !88, i32 0, null, null, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Err"} ; [ DW_TAG_structure_type ] [Err] [line 0, size 16, align 8, offset 0] [def] [from ]
!88 = metadata !{metadata !89, metadata !90}
!89 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Err", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !3} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Result]
!90 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/bc7a<{()},{enum 597d725aac336812/16f1b},>}::Err", metadata !"", i32 0, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [line 0, size 8, align 8, offset 8] [from FormatError]
!91 = metadata !{i32 786455, null, metadata !11, metadata !"Void", i32 0, i64 0, i64 8, i64 0, i32 0, null, metadata !92, i32 0, null, null, metadata !"{enum 597d725aac336812/16f68}"} ; [ DW_TAG_union_type ] [Void] [line 0, size 0, align 8, offset 0] [def] [from ]
!92 = metadata !{}
!93 = metadata !{i32 786451, null, metadata !11, metadata !"Formatter", i32 0, i64 768, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null, metadata !"{struct 597d725aac336812/16f3e}"} ; [ DW_TAG_structure_type ] [Formatter] [line 0, size 768, align 64, offset 0] [def] [from ]
!94 = metadata !{metadata !95, metadata !96, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103}
!95 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f3e}", metadata !"flags", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [flags] [line 0, size 64, align 64, offset 0] [from uint]
!96 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f3e}", metadata !"fill", i32 0, i64 32, i64 32, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [fill] [line 0, size 32, align 32, offset 64] [from char]
!97 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 32, i64 32, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned_char]
!98 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f3e}", metadata !"align", i32 0, i64 8, i64 8, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [align] [line 0, size 8, align 8, offset 96] [from Alignment]
!99 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f3e}", metadata !"width", i32 0, i64 128, i64 64, i64 128, i32 0, metadata !"{enum 597d725aac336812/b505<{uint},>}"} ; [ DW_TAG_member ] [width] [line 0, size 128, align 64, offset 128] [from {enum 597d725aac336812/b505<{uint},>}]
!100 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f3e}", metadata !"precision", i32 0, i64 128, i64 64, i64 256, i32 0, metadata !"{enum 597d725aac336812/b505<{uint},>}"} ; [ DW_TAG_member ] [precision] [line 0, size 128, align 64, offset 256] [from {enum 597d725aac336812/b505<{uint},>}]
!101 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f3e}", metadata !"buf", i32 0, i64 128, i64 64, i64 384, i32 0, metadata !"{&mut{trait 597d725aac336812/16f1e}}"} ; [ DW_TAG_member ] [buf] [line 0, size 128, align 64, offset 384] [from {&mut{trait 597d725aac336812/16f1e}}]
!102 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f3e}", metadata !"curarg", i32 0, i64 128, i64 64, i64 512, i32 0, metadata !"{struct 597d725aac336812/d567<{struct 597d725aac336812/16f6a},>}"} ; [ DW_TAG_member ] [curarg] [line 0, size 128, align 64, offset 512] [from {struct 597d725aac336812/d567<{struct 597d725aac336812/16f6a},>}]
!103 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16f3e}", metadata !"args", i32 0, i64 128, i64 64, i64 640, i32 0, metadata !"{&{[]{struct 597d725aac336812/16f6a}}}"} ; [ DW_TAG_member ] [args] [line 0, size 128, align 64, offset 640] [from {&{[]{struct 597d725aac336812/16f6a}}}]
!104 = metadata !{i32 786455, null, metadata !22, metadata !"Option<uint>", i32 0, i64 128, i64 64, i64 0, i32 0, null, metadata !105, i32 0, null, null, metadata !"{enum 597d725aac336812/b505<{uint},>}"} ; [ DW_TAG_union_type ] [Option<uint>] [line 0, size 128, align 64, offset 0] [def] [from ]
!105 = metadata !{metadata !106, metadata !107}
!106 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/b505<{uint},>}", metadata !"", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !"{enum 597d725aac336812/b505<{uint},>}::None"} ; [ DW_TAG_member ] [line 0, size 8, align 8, offset 0] [from {enum 597d725aac336812/b505<{uint},>}::None]
!107 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/b505<{uint},>}", metadata !"", i32 0, i64 128, i64 64, i64 0, i32 0, metadata !"{enum 597d725aac336812/b505<{uint},>}::Some"} ; [ DW_TAG_member ] [line 0, size 128, align 64, offset 0] [from {enum 597d725aac336812/b505<{uint},>}::Some]
!108 = metadata !{i32 786451, null, metadata !22, metadata !"None", i32 0, i64 8, i64 8, i32 0, i32 0, null, metadata !109, i32 0, null, null, metadata !"{enum 597d725aac336812/b505<{uint},>}::None"} ; [ DW_TAG_structure_type ] [None] [line 0, size 8, align 8, offset 0] [def] [from ]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/b505<{uint},>}::None", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Option]
!111 = metadata !{i32 786451, null, metadata !22, metadata !"Some", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !112, i32 0, null, null, metadata !"{enum 597d725aac336812/b505<{uint},>}::Some"} ; [ DW_TAG_structure_type ] [Some] [line 0, size 128, align 64, offset 0] [def] [from ]
!112 = metadata !{metadata !113, metadata !114}
!113 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/b505<{uint},>}::Some", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Option]
!114 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/b505<{uint},>}::Some", metadata !"", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [line 0, size 64, align 64, offset 64] [from uint]
!115 = metadata !{i32 786451, null, metadata !11, metadata !"&mut FormatWriter", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !92, i32 0, null, null, metadata !"{&mut{trait 597d725aac336812/16f1e}}"} ; [ DW_TAG_structure_type ] [&mut FormatWriter] [line 0, size 128, align 64, offset 0] [def] [from ]
!116 = metadata !{i32 786451, null, metadata !117, metadata !"Items<core::fmt::Argument>", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !118, i32 0, null, null, metadata !"{struct 597d725aac336812/d567<{struct 597d725aac336812/16f6a},>}"} ; [ DW_TAG_structure_type ] [Items<core::fmt::Argument>] [line 0, size 128, align 64, offset 0] [def] [from ]
!117 = metadata !{i32 786489, null, metadata !5, metadata !"slice", i32 0} ; [ DW_TAG_namespace ] [slice] [line 0]
!118 = metadata !{metadata !119, metadata !121, metadata !122}
!119 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/d567<{struct 597d725aac336812/16f6a},>}", metadata !"ptr", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [ptr] [line 0, size 64, align 64, offset 0] [from *const core::fmt::Argument]
!120 = metadata !{i32 786447, null, null, metadata !"*const core::fmt::Argument", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !"{struct 597d725aac336812/16f6a}"} ; [ DW_TAG_pointer_type ] [*const core::fmt::Argument] [line 0, size 64, align 64, offset 0] [from {struct 597d725aac336812/16f6a}]
!121 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/d567<{struct 597d725aac336812/16f6a},>}", metadata !"end", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !120} ; [ DW_TAG_member ] [end] [line 0, size 64, align 64, offset 64] [from *const core::fmt::Argument]
!122 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/d567<{struct 597d725aac336812/16f6a},>}", metadata !"marker", i32 0, i64 0, i64 8, i64 128, i32 0, metadata !"{struct 597d725aac336812/576e}"} ; [ DW_TAG_member ] [marker] [line 0, size 0, align 8, offset 128] [from {struct 597d725aac336812/576e}]
!123 = metadata !{i32 786451, null, metadata !124, metadata !"ContravariantLifetime", i32 0, i64 0, i64 8, i32 0, i32 0, null, metadata !92, i32 0, null, null, metadata !"{struct 597d725aac336812/576e}"} ; [ DW_TAG_structure_type ] [ContravariantLifetime] [line 0, size 0, align 8, offset 0] [def] [from ]
!124 = metadata !{i32 786489, null, metadata !125, metadata !"marker", i32 0} ; [ DW_TAG_namespace ] [marker] [line 0]
!125 = metadata !{i32 786489, null, metadata !5, metadata !"kinds", i32 0} ; [ DW_TAG_namespace ] [kinds] [line 0]
!126 = metadata !{i32 786451, null, null, metadata !"&[core::fmt::Argument]", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !127, i32 0, null, null, metadata !"{&{[]{struct 597d725aac336812/16f6a}}}"} ; [ DW_TAG_structure_type ] [&[core::fmt::Argument]] [line 0, size 128, align 64, offset 0] [def] [from ]
!127 = metadata !{metadata !128, metadata !129}
!128 = metadata !{i32 786445, null, metadata !"{&{[]{struct 597d725aac336812/16f6a}}}", metadata !"data_ptr", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [data_ptr] [line 0, size 64, align 64, offset 0] [from *const core::fmt::Argument]
!129 = metadata !{i32 786445, null, metadata !"{&{[]{struct 597d725aac336812/16f6a}}}", metadata !"length", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [length] [line 0, size 64, align 64, offset 64] [from uint]
!130 = metadata !{i32 786451, null, metadata !11, metadata !"Arguments", i32 0, i64 384, i64 64, i32 0, i32 0, null, metadata !131, i32 0, null, null, metadata !"{struct 597d725aac336812/16fce}"} ; [ DW_TAG_structure_type ] [Arguments] [line 0, size 384, align 64, offset 0] [def] [from ]
!131 = metadata !{metadata !132, metadata !133, metadata !134}
!132 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16fce}", metadata !"pieces", i32 0, i64 128, i64 64, i64 0, i32 0, metadata !"{&{[]{&{str}}}}"} ; [ DW_TAG_member ] [pieces] [line 0, size 128, align 64, offset 0] [from {&{[]{&{str}}}}]
!133 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16fce}", metadata !"fmt", i32 0, i64 128, i64 64, i64 128, i32 0, metadata !"{enum 597d725aac336812/b505<{&{[]{struct 597d725aac336812/16e38}}},>}"} ; [ DW_TAG_member ] [fmt] [line 0, size 128, align 64, offset 128] [from {enum 597d725aac336812/b505<{&{[]{struct 597d725aac336812/16e38}}},>}]
!134 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16fce}", metadata !"args", i32 0, i64 128, i64 64, i64 256, i32 0, metadata !"{&{[]{struct 597d725aac336812/16f6a}}}"} ; [ DW_TAG_member ] [args] [line 0, size 128, align 64, offset 256] [from {&{[]{struct 597d725aac336812/16f6a}}}]
!135 = metadata !{i32 786451, null, null, metadata !"&[&str]", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !136, i32 0, null, null, metadata !"{&{[]{&{str}}}}"} ; [ DW_TAG_structure_type ] [&[&str]] [line 0, size 128, align 64, offset 0] [def] [from ]
!136 = metadata !{metadata !137, metadata !139}
!137 = metadata !{i32 786445, null, metadata !"{&{[]{&{str}}}}", metadata !"data_ptr", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_member ] [data_ptr] [line 0, size 64, align 64, offset 0] [from *const &str]
!138 = metadata !{i32 786447, null, null, metadata !"*const &str", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !"{&{str}}"} ; [ DW_TAG_pointer_type ] [*const &str] [line 0, size 64, align 64, offset 0] [from {&{str}}]
!139 = metadata !{i32 786445, null, metadata !"{&{[]{&{str}}}}", metadata !"length", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [length] [line 0, size 64, align 64, offset 64] [from uint]
!140 = metadata !{i32 786455, null, metadata !22, metadata !"Option<&[core::fmt::rt::Argument]>", i32 0, i64 128, i64 64, i64 0, i32 0, null, metadata !141, i32 0, null, null, metadata !"{enum 597d725aac336812/b505<{&{[]{struct 597d725aac336812/16e38}}},>}"} ; [ DW_TAG_union_type ] [Option<&[core::fmt::rt::Argument]>] [line 0, size 128, align 64, offset 0] [def] [from ]
!141 = metadata !{metadata !142}
!142 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/b505<{&{[]{struct 597d725aac336812/16e38}}},>}", metadata !"RUST$ENCODED$ENUM$0$0$None", i32 0, i64 128, i64 64, i64 0, i32 0, metadata !"{enum 597d725aac336812/b505<{&{[]{struct 597d725aac336812/16e38}}},>}::Some"} ; [ DW_TAG_member ] [RUST$ENCODED$ENUM$0$0$None] [line 0, size 128, align 64, offset 0] [from {enum 597d725aac336812/b505<{&{[]{struct 597d725aac336812/16e38}}},>}::Some]
!143 = metadata !{i32 786451, null, metadata !22, metadata !"Some", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !144, i32 0, null, null, metadata !"{enum 597d725aac336812/b505<{&{[]{struct 597d725aac336812/16e38}}},>}::Some"} ; [ DW_TAG_structure_type ] [Some] [line 0, size 128, align 64, offset 0] [def] [from ]
!144 = metadata !{metadata !145}
!145 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/b505<{&{[]{struct 597d725aac336812/16e38}}},>}::Some", metadata !"", i32 0, i64 128, i64 64, i64 0, i32 0, metadata !"{&{[]{struct 597d725aac336812/16e38}}}"} ; [ DW_TAG_member ] [line 0, size 128, align 64, offset 0] [from {&{[]{struct 597d725aac336812/16e38}}}]
!146 = metadata !{i32 786451, null, metadata !15, metadata !"Argument", i32 0, i64 512, i64 64, i32 0, i32 0, null, metadata !147, i32 0, null, null, metadata !"{struct 597d725aac336812/16e38}"} ; [ DW_TAG_structure_type ] [Argument] [line 0, size 512, align 64, offset 0] [def] [from ]
!147 = metadata !{metadata !148, metadata !149}
!148 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16e38}", metadata !"position", i32 0, i64 128, i64 64, i64 0, i32 0, metadata !"{enum 597d725aac336812/16f07}"} ; [ DW_TAG_member ] [position] [line 0, size 128, align 64, offset 0] [from {enum 597d725aac336812/16f07}]
!149 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16e38}", metadata !"format", i32 0, i64 384, i64 64, i64 128, i32 0, metadata !"{struct 597d725aac336812/16e41}"} ; [ DW_TAG_member ] [format] [line 0, size 384, align 64, offset 128] [from {struct 597d725aac336812/16e41}]
!150 = metadata !{i32 786455, null, metadata !15, metadata !"Position", i32 0, i64 128, i64 64, i64 0, i32 0, null, metadata !151, i32 0, null, null, metadata !"{enum 597d725aac336812/16f07}"} ; [ DW_TAG_union_type ] [Position] [line 0, size 128, align 64, offset 0] [def] [from ]
!151 = metadata !{metadata !152, metadata !153}
!152 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16f07}", metadata !"", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !"{enum 597d725aac336812/16f07}::ArgumentNext"} ; [ DW_TAG_member ] [line 0, size 8, align 8, offset 0] [from {enum 597d725aac336812/16f07}::ArgumentNext]
!153 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16f07}", metadata !"", i32 0, i64 128, i64 64, i64 0, i32 0, metadata !"{enum 597d725aac336812/16f07}::ArgumentIs"} ; [ DW_TAG_member ] [line 0, size 128, align 64, offset 0] [from {enum 597d725aac336812/16f07}::ArgumentIs]
!154 = metadata !{i32 786451, null, metadata !15, metadata !"ArgumentNext", i32 0, i64 8, i64 8, i32 0, i32 0, null, metadata !155, i32 0, null, null, metadata !"{enum 597d725aac336812/16f07}::ArgumentNext"} ; [ DW_TAG_structure_type ] [ArgumentNext] [line 0, size 8, align 8, offset 0] [def] [from ]
!155 = metadata !{metadata !156}
!156 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16f07}::ArgumentNext", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Position]
!157 = metadata !{i32 786451, null, metadata !15, metadata !"ArgumentIs", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !158, i32 0, null, null, metadata !"{enum 597d725aac336812/16f07}::ArgumentIs"} ; [ DW_TAG_structure_type ] [ArgumentIs] [line 0, size 128, align 64, offset 0] [def] [from ]
!158 = metadata !{metadata !159, metadata !160}
!159 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16f07}::ArgumentIs", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Position]
!160 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16f07}::ArgumentIs", metadata !"", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [line 0, size 64, align 64, offset 64] [from uint]
!161 = metadata !{i32 786451, null, metadata !15, metadata !"FormatSpec", i32 0, i64 384, i64 64, i32 0, i32 0, null, metadata !162, i32 0, null, null, metadata !"{struct 597d725aac336812/16e41}"} ; [ DW_TAG_structure_type ] [FormatSpec] [line 0, size 384, align 64, offset 0] [def] [from ]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !167}
!163 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16e41}", metadata !"fill", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !97} ; [ DW_TAG_member ] [fill] [line 0, size 32, align 32, offset 0] [from char]
!164 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16e41}", metadata !"align", i32 0, i64 8, i64 8, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [align] [line 0, size 8, align 8, offset 32] [from Alignment]
!165 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16e41}", metadata !"flags", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [flags] [line 0, size 64, align 64, offset 64] [from uint]
!166 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16e41}", metadata !"precision", i32 0, i64 128, i64 64, i64 128, i32 0, metadata !"{enum 597d725aac336812/16efb}"} ; [ DW_TAG_member ] [precision] [line 0, size 128, align 64, offset 128] [from {enum 597d725aac336812/16efb}]
!167 = metadata !{i32 786445, null, metadata !"{struct 597d725aac336812/16e41}", metadata !"width", i32 0, i64 128, i64 64, i64 256, i32 0, metadata !"{enum 597d725aac336812/16efb}"} ; [ DW_TAG_member ] [width] [line 0, size 128, align 64, offset 256] [from {enum 597d725aac336812/16efb}]
!168 = metadata !{i32 786455, null, metadata !15, metadata !"Count", i32 0, i64 128, i64 64, i64 0, i32 0, null, metadata !169, i32 0, null, null, metadata !"{enum 597d725aac336812/16efb}"} ; [ DW_TAG_union_type ] [Count] [line 0, size 128, align 64, offset 0] [def] [from ]
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173}
!170 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}", metadata !"", i32 0, i64 128, i64 64, i64 0, i32 0, metadata !"{enum 597d725aac336812/16efb}::CountIs"} ; [ DW_TAG_member ] [line 0, size 128, align 64, offset 0] [from {enum 597d725aac336812/16efb}::CountIs]
!171 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}", metadata !"", i32 0, i64 128, i64 64, i64 0, i32 0, metadata !"{enum 597d725aac336812/16efb}::CountIsParam"} ; [ DW_TAG_member ] [line 0, size 128, align 64, offset 0] [from {enum 597d725aac336812/16efb}::CountIsParam]
!172 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}", metadata !"", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !"{enum 597d725aac336812/16efb}::CountIsNextParam"} ; [ DW_TAG_member ] [line 0, size 8, align 8, offset 0] [from {enum 597d725aac336812/16efb}::CountIsNextParam]
!173 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}", metadata !"", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !"{enum 597d725aac336812/16efb}::CountImplied"} ; [ DW_TAG_member ] [line 0, size 8, align 8, offset 0] [from {enum 597d725aac336812/16efb}::CountImplied]
!174 = metadata !{i32 786451, null, metadata !15, metadata !"CountIs", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !175, i32 0, null, null, metadata !"{enum 597d725aac336812/16efb}::CountIs"} ; [ DW_TAG_structure_type ] [CountIs] [line 0, size 128, align 64, offset 0] [def] [from ]
!175 = metadata !{metadata !176, metadata !177}
!176 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}::CountIs", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Count]
!177 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}::CountIs", metadata !"", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [line 0, size 64, align 64, offset 64] [from uint]
!178 = metadata !{i32 786451, null, metadata !15, metadata !"CountIsParam", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !179, i32 0, null, null, metadata !"{enum 597d725aac336812/16efb}::CountIsParam"} ; [ DW_TAG_structure_type ] [CountIsParam] [line 0, size 128, align 64, offset 0] [def] [from ]
!179 = metadata !{metadata !180, metadata !181}
!180 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}::CountIsParam", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Count]
!181 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}::CountIsParam", metadata !"", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [line 0, size 64, align 64, offset 64] [from uint]
!182 = metadata !{i32 786451, null, metadata !15, metadata !"CountIsNextParam", i32 0, i64 8, i64 8, i32 0, i32 0, null, metadata !183, i32 0, null, null, metadata !"{enum 597d725aac336812/16efb}::CountIsNextParam"} ; [ DW_TAG_structure_type ] [CountIsNextParam] [line 0, size 8, align 8, offset 0] [def] [from ]
!183 = metadata !{metadata !184}
!184 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}::CountIsNextParam", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Count]
!185 = metadata !{i32 786451, null, metadata !15, metadata !"CountImplied", i32 0, i64 8, i64 8, i32 0, i32 0, null, metadata !186, i32 0, null, null, metadata !"{enum 597d725aac336812/16efb}::CountImplied"} ; [ DW_TAG_structure_type ] [CountImplied] [line 0, size 8, align 8, offset 0] [def] [from ]
!186 = metadata !{metadata !187}
!187 = metadata !{i32 786445, null, metadata !"{enum 597d725aac336812/16efb}::CountImplied", metadata !"RUST$ENUM$DISR", i32 0, i64 8, i64 8, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [RUST$ENUM$DISR] [line 0, size 8, align 8, offset 0] [from Count]
!188 = metadata !{i32 786451, null, null, metadata !"&[core::fmt::rt::Argument]", i32 0, i64 128, i64 64, i32 0, i32 0, null, metadata !189, i32 0, null, null, metadata !"{&{[]{struct 597d725aac336812/16e38}}}"} ; [ DW_TAG_structure_type ] [&[core::fmt::rt::Argument]] [line 0, size 128, align 64, offset 0] [def] [from ]
!189 = metadata !{metadata !190, metadata !192}
!190 = metadata !{i32 786445, null, metadata !"{&{[]{struct 597d725aac336812/16e38}}}", metadata !"data_ptr", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_member ] [data_ptr] [line 0, size 64, align 64, offset 0] [from *const core::fmt::rt::Argument]
!191 = metadata !{i32 786447, null, null, metadata !"*const core::fmt::rt::Argument", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !"{struct 597d725aac336812/16e38}"} ; [ DW_TAG_pointer_type ] [*const core::fmt::rt::Argument] [line 0, size 64, align 64, offset 0] [from {struct 597d725aac336812/16e38}]
!192 = metadata !{i32 786445, null, metadata !"{&{[]{struct 597d725aac336812/16e38}}}", metadata !"length", i32 0, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [length] [line 0, size 64, align 64, offset 64] [from uint]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786478, metadata !195, metadata !196, metadata !"main", metadata !"main", metadata !"_ZN6vtable4mainE", i32 23, metadata !197, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_ZN4main20hdfb1c227201f09abXaaE, metadata !92, null, metadata !92, i32 23} ; [ DW_TAG_subprogram ] [line 23] [local] [def] [main]
!195 = metadata !{metadata !"src/main.rs", metadata !"/Users/Charlie/Projects/Hydra/Compiler/playground/vtables"}
!196 = metadata !{i32 786489, null, null, metadata !"vtable", i32 0} ; [ DW_TAG_namespace ] [vtable] [line 0]
!197 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{null}
!199 = metadata !{metadata !200, metadata !202}
!200 = metadata !{i32 786484, i32 0, metadata !196, metadata !"KEYWORDS", metadata !"KEYWORDS", metadata !"_ZN6vtable8KEYWORDSE", metadata !201, i32 9, metadata !"{struct 82714fa3738ea985/1d1<{&{str}},{int},>}", i32 1, i32 1, { i64, { { i32, i32 }*, i64 }, { { %str_slice, i64 }*, i64 } }* @_ZN8KEYWORDS20h8ec11c73b95eece2haaE, null} ; [ DW_TAG_variable ] [KEYWORDS] [line 9] [local] [def]
!201 = metadata !{i32 786473, metadata !195}      ; [ DW_TAG_file_type ] [/Users/Charlie/Projects/Hydra/Compiler/playground/vtables/src/main.rs]
!202 = metadata !{i32 786484, i32 0, metadata !203, metadata !"__STATIC_FMTSTR", metadata !"__STATIC_FMTSTR", metadata !"_ZN6vtable4main15__STATIC_FMTSTRE", metadata !201, i32 24, metadata !204, i32 1, i32 1, [1 x %str_slice]* @_ZN4main15__STATIC_FMTSTR20hf1726d3e40159956bbaE, null} ; [ DW_TAG_variable ] [__STATIC_FMTSTR] [line 24] [local] [def]
!203 = metadata !{i32 786489, null, metadata !196, metadata !"main", i32 0} ; [ DW_TAG_namespace ] [main] [line 0]
!204 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !"{&{str}}", metadata !205, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from {&{str}}]
!205 = metadata !{metadata !206}
!206 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!207 = metadata !{i32 2, metadata !"Dwarf Version", i32 2}
!208 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!209 = metadata !{i32 24, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !195, metadata !194, i32 23, i32 14, i32 0} ; [ DW_TAG_lexical_block ] [/Users/Charlie/Projects/Hydra/Compiler/playground/vtables/src/main.rs]
!211 = metadata !{i32 786688, metadata !212, metadata !"__arg0", metadata !201, i32 24, metadata !213, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__arg0] [line 24]
!212 = metadata !{i32 786443, metadata !195, metadata !210, i32 24, i32 13, i32 1} ; [ DW_TAG_lexical_block ] [/Users/Charlie/Projects/Hydra/Compiler/playground/vtables/src/main.rs]
!213 = metadata !{i32 786447, null, null, metadata !"&phf::PhfMap<&str, int>", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !"{struct 82714fa3738ea985/1d1<{&{str}},{int},>}"} ; [ DW_TAG_pointer_type ] [&phf::PhfMap<&str, int>] [line 0, size 64, align 64, offset 0] [from {struct 82714fa3738ea985/1d1<{&{str}},{int},>}]
!214 = metadata !{i32 24, i32 0, metadata !212, null}
!215 = metadata !{i32 24, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !195, metadata !212, i32 24, i32 13, i32 2} ; [ DW_TAG_lexical_block ] [/Users/Charlie/Projects/Hydra/Compiler/playground/vtables/src/main.rs]
!217 = metadata !{i32 786688, metadata !216, metadata !"__args_vec", metadata !201, i32 24, metadata !218, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__args_vec] [line 24]
!218 = metadata !{i32 786447, null, null, metadata !"&[core::fmt::Argument, ..1]", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [&[core::fmt::Argument, ..1]] [line 0, size 64, align 64, offset 0] [from ]
!219 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !"{struct 597d725aac336812/16f6a}", metadata !205, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from {struct 597d725aac336812/16f6a}]
!220 = metadata !{i32 24, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !195, metadata !216, i32 24, i32 13, i32 3} ; [ DW_TAG_lexical_block ] [/Users/Charlie/Projects/Hydra/Compiler/playground/vtables/src/main.rs]
!222 = metadata !{i32 786688, metadata !216, metadata !"__args", metadata !201, i32 24, metadata !"{struct 597d725aac336812/16fce}", i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__args] [line 24]
!223 = metadata !{i32 2, i32 0, metadata !216, null}
!224 = metadata !{i8 0, i8 2}
!225 = metadata !{metadata !226}
!226 = metadata !{metadata !226, metadata !227, metadata !"_ZN3ptr4read20h1931940238683891573E: argument 0"}
!227 = metadata !{metadata !227, metadata !"_ZN3ptr4read20h1931940238683891573E"}
