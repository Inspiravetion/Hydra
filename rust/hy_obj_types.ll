; ModuleID = 'hy_obj_types.rs'
target datalayout = "e-i64:64-f80:128-n8:16:32:64"
target triple = "x86_64-apple-darwin"

%str_slice = type { i8*, i64 }
%"struct.Dummy<[]>" = type { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* }
%"struct.hy_obj::_HyObj<[]>[#10]" = type { %"enum.hy_obj::HyObjType<[]>[#10]" }
%"enum.hy_obj::HyObjType<[]>[#10]" = type { i8, [7 x i8], [3 x i64] }
%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]" = type { i8*, i64 }
%"struct.collections::string::String<[]>[#6]" = type { %"struct.collections::vec::Vec<[u8]>[#6]" }
%"struct.collections::vec::Vec<[u8]>[#6]" = type { i64, i64, i8* }
%"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]" = type { i64, i64, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** }
%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]" = type { %"struct.collections::string::String<[]>[#6]", { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*, i8*, i8*, i64 }
%"struct.core::slice::Items<[u8]>[#3]" = type { i8*, i8*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" = type {}
%"struct.core::raw::Slice<[u8]>[#3]" = type { i8*, i64 }
%"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]" = type { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]" = type { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }
%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]" = type { i8, [7 x i8], [1 x i64] }
%"struct.rustrt::task::Task<[]>[#9]" = type { %"struct.rustrt::local_heap::LocalHeap<[]>[#9]", %"struct.rustrt::task::GarbageCollector<[]>[#9]", %"struct.rustrt::task::LocalStorage<[]>[#9]", %"struct.rustrt::unwind::Unwinder<[]>[#9]", %"struct.rustrt::task::Death<[]>[#9]", %"enum.core::option::Option<[collections::str::MaybeOwned]>[#3]", i8, %"enum.core::option::Option<[Box<rustrt::Runtime:Send>]>[#3]", i8 }
%"struct.rustrt::local_heap::LocalHeap<[]>[#9]" = type { %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]", %"struct.core::raw::Box<[()]>[#3]"*, i8 }
%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]" = type { i64, i8 }
%"struct.core::raw::Box<[()]>[#3]" = type { i64, void (i8*)*, %"struct.core::raw::Box<[()]>[#3]"*, %"struct.core::raw::Box<[()]>[#3]"*, {} }
%"struct.rustrt::task::GarbageCollector<[]>[#9]" = type {}
%"struct.rustrt::task::LocalStorage<[]>[#9]" = type { %"enum.core::option::Option<[collections::treemap::TreeMap<uint,rustrt::local_data::TLDValue>]>[#3]" }
%"enum.core::option::Option<[collections::treemap::TreeMap<uint,rustrt::local_data::TLDValue>]>[#3]" = type { i8, [7 x i8], [2 x i64] }
%"struct.rustrt::unwind::Unwinder<[]>[#9]" = type { i8 }
%"struct.rustrt::task::Death<[]>[#9]" = type { %"enum.core::option::Option<[proc(core::result::Result<(),Box<core::any::Any:Send>>):Send]>[#3]", %"struct.core::kinds::marker::NoCopy<[]>[#3]" }
%"enum.core::option::Option<[proc(core::result::Result<(),Box<core::any::Any:Send>>):Send]>[#3]" = type { { void (i8*, %"enum.core::result::Result<[(), Box<core::any::Any:Send>]>[#3]"*)*, i8* } }
%"enum.core::result::Result<[(), Box<core::any::Any:Send>]>[#3]" = type { { void (i8*)**, i8* } }
%"struct.core::kinds::marker::NoCopy<[]>[#3]" = type {}
%"enum.core::option::Option<[collections::str::MaybeOwned]>[#3]" = type { i8, [7 x i8], [4 x i64] }
%"enum.core::option::Option<[Box<rustrt::Runtime:Send>]>[#3]" = type { { void (i8*)**, i8* } }
%"struct.core::fmt::Argument<[]>[#3]" = type { %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %"enum.core::fmt::Void<[]>[#3]"* }
%"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" = type { i8, [0 x i8], [1 x i8] }
%"struct.core::fmt::Formatter<[]>[#3]" = type { i64, i32, i8, %"enum.core::option::Option<[uint]>[#3]", %"enum.core::option::Option<[uint]>[#3]", { void (i8*)**, i8* }, %"struct.core::slice::Items<[core::fmt::Argument]>[#3]", { %"struct.core::fmt::Argument<[]>[#3]"*, i64 } }
%"enum.core::option::Option<[uint]>[#3]" = type { i8, [7 x i8], [1 x i64] }
%"struct.core::slice::Items<[core::fmt::Argument]>[#3]" = type { %"struct.core::fmt::Argument<[]>[#3]"*, %"struct.core::fmt::Argument<[]>[#3]"*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"enum.core::fmt::Void<[]>[#3]" = type {}
%"struct.core::fmt::Arguments<[]>[#3]" = type { { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 } }
%"enum.core::fmt::rt::Piece<[]>[#3]" = type { i8, [7 x i8], [8 x i64] }
%"struct.rustrt::local_heap::AllocHeader<[]>[#9]" = type {}

@_ZN9local_ptr8compiled10RT_TLS_PTR20h105e8dd88d5b0520anaE = available_externally thread_local global i8* null
@_ZN4util14ENFORCE_SANITY20h859984a9e25719baHFaE = available_externally constant i1 true
@str1439 = internal constant [16 x i8] c"!alloc.is_null()"
@str1496 = internal constant [19 x i8] c" assertion failed: "
@_ZN10local_heap12MemoryRegion4free15__STATIC_FMTSTR20h3fbdedd158832291SXbE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([19 x i8]* @str1496, i32 0, i32 0), i64 19 }, [48 x i8] undef }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1498 = internal constant [25 x i8] c"self.live_allocations > 0"
@_ZN10local_heap12MemoryRegion4free15__STATIC_FMTSTR20h3fbdedd158832291hZbE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([19 x i8]* @str1496, i32 0, i32 0), i64 19 }, [48 x i8] undef }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1502 = internal constant [26 x i8] c"local free outside of task"
@_ZN10local_heap10local_free15__STATIC_FMTSTR20h4e4516024f787479F4bE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([26 x i8]* @str1502, i32 0, i32 0), i64 26 }, [48 x i8] undef } }

; Function Attrs: uwtable
define internal void @_ZN5Dummy5dummy20hbd0d918d99ff0e96maaE(%"struct.Dummy<[]>") unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.Dummy<[]>"
  store %"struct.Dummy<[]>" %0, %"struct.Dummy<[]>"* %self
  call void @_ZN5Dummy14glue_drop.110717ha6c4c7eda5c462a9E(%"struct.Dummy<[]>"* %self)
  ret void
}

define internal void @_ZN5Dummy14glue_drop.110717ha6c4c7eda5c462a9E(%"struct.Dummy<[]>"*) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.Dummy<[]>"* %0, i32 0, i32 0
  call void @"_ZN24Gc$LT$hy_obj.._HyObj$GT$14glue_drop.111017h49acbf77d9e2a190E"({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %1)
  ret void
}

define internal void @"_ZN24Gc$LT$hy_obj.._HyObj$GT$14glue_drop.111017h49acbf77d9e2a190E"({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**) unnamed_addr #1 {
entry-block:
  %1 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %0
  %2 = icmp ne { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %1, null
  br i1 %2, label %decr, label %next

decr:                                             ; preds = %entry-block
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %1, i32 0, i32 0
  %4 = load i64* %3
  %5 = sub i64 %4, 1
  store i64 %5, i64* %3
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %free, label %next

free:                                             ; preds = %decr
  %7 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %0
  %8 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %7, i32 0, i32 4
  call void @_ZN14hy_obj.._HyObj14glue_drop.111317h3605b52d07786c61E(%"struct.hy_obj::_HyObj<[]>[#10]"* %8)
  %9 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %7 to i8*
  call void @_ZN10local_heap11local_free_20h08bf5a93f686c04bkjaE(i8* %9)
  br label %next

next:                                             ; preds = %free, %decr, %entry-block
  ret void
}

define internal void @_ZN14hy_obj.._HyObj14glue_drop.111317h3605b52d07786c61E(%"struct.hy_obj::_HyObj<[]>[#10]"*) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.hy_obj::_HyObj<[]>[#10]"* %0, i32 0, i32 0
  call void @_ZN17hy_obj..HyObjType14glue_drop.111617h0317eff0b05e3f2bE(%"enum.hy_obj::HyObjType<[]>[#10]"* %1)
  ret void
}

define internal void @_ZN17hy_obj..HyObjType14glue_drop.111617h0317eff0b05e3f2bE(%"enum.hy_obj::HyObjType<[]>[#10]"*) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"enum.hy_obj::HyObjType<[]>[#10]"* %0, i32 0, i32 0
  %2 = load i8* %1, !range !0
  switch i8 %2, label %enum-iter-unr [
    i8 0, label %enum-iter-variant-0
    i8 1, label %enum-iter-variant-1
    i8 2, label %enum-iter-variant-2
    i8 3, label %enum-iter-variant-3
    i8 4, label %enum-iter-variant-4
    i8 5, label %enum-iter-variant-5
  ]

enum-iter-unr:                                    ; preds = %entry-block
  unreachable

enum-iter-next:                                   ; preds = %enum-iter-variant-5, %enum-iter-variant-4, %enum-iter-variant-3, %enum-iter-variant-2, %enum-iter-variant-1, %enum-iter-variant-0
  ret void

enum-iter-variant-0:                              ; preds = %entry-block
  %3 = bitcast %"enum.hy_obj::HyObjType<[]>[#10]"* %0 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]" }*
  %4 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]" }* %3, i32 0, i32 1
  call void @"_ZN91collections..treemap..TreeMap$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$14glue_drop.112317ha8d4f4190568a474E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %4)
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %entry-block
  %5 = bitcast %"enum.hy_obj::HyObjType<[]>[#10]"* %0 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %6 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %5, i32 0, i32 1
  call void @_ZN27collections..string..String14glue_drop.113517hf74607111f7c6563E(%"struct.collections::string::String<[]>[#6]"* %6)
  br label %enum-iter-next

enum-iter-variant-2:                              ; preds = %entry-block
  %7 = bitcast %"enum.hy_obj::HyObjType<[]>[#10]"* %0 to { i8, i64 }*
  %8 = getelementptr inbounds { i8, i64 }* %7, i32 0, i32 1
  br label %enum-iter-next

enum-iter-variant-3:                              ; preds = %entry-block
  %9 = bitcast %"enum.hy_obj::HyObjType<[]>[#10]"* %0 to { i8, double }*
  %10 = getelementptr inbounds { i8, double }* %9, i32 0, i32 1
  br label %enum-iter-next

enum-iter-variant-4:                              ; preds = %entry-block
  %11 = bitcast %"enum.hy_obj::HyObjType<[]>[#10]"* %0 to { i8, %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]" }*
  %12 = getelementptr inbounds { i8, %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]" }* %11, i32 0, i32 1
  call void @"_ZN53collections..vec..Vec$LT$Gc$LT$hy_obj.._HyObj$GT$$GT$14glue_drop.129217h4eda4df85e6cfa6dE"(%"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %12)
  br label %enum-iter-next

enum-iter-variant-5:                              ; preds = %entry-block
  %13 = bitcast %"enum.hy_obj::HyObjType<[]>[#10]"* %0 to { i8, i8 }*
  %14 = getelementptr inbounds { i8, i8 }* %13, i32 0, i32 1
  br label %enum-iter-next
}

define internal void @"_ZN91collections..treemap..TreeMap$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$14glue_drop.112317ha8d4f4190568a474E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"*) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN131core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$$GT$$GT$14glue_drop.112617h7827f2755943b781E"(i8** %1)
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 1
  ret void
}

define internal void @"_ZN131core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$$GT$$GT$14glue_drop.112617h7827f2755943b781E"(i8**) unnamed_addr #1 {
entry-block:
  %1 = load i8** %0
  %2 = icmp ne i8* %1, null
  switch i1 %2, label %enum-iter-unr [
    i1 false, label %enum-iter-variant-0
    i1 true, label %enum-iter-variant-1
  ]

enum-iter-unr:                                    ; preds = %entry-block
  unreachable

enum-iter-next:                                   ; preds = %enum-iter-variant-1, %enum-iter-variant-0
  ret void

enum-iter-variant-0:                              ; preds = %entry-block
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %entry-block
  %3 = bitcast i8** %0 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"**
  call void @"_ZN103Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$$GT$14glue_drop.112917hc88ce97be11559c1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"** %3)
  br label %enum-iter-next
}

define internal void @"_ZN103Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$$GT$14glue_drop.112917hc88ce97be11559c1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"**) unnamed_addr #1 {
entry-block:
  %1 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"** %0
  %2 = icmp ne %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %1, null
  br i1 %2, label %cond, label %next

next:                                             ; preds = %cond, %entry-block
  ret void

cond:                                             ; preds = %entry-block
  call void @"_ZN92collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$14glue_drop.113217hb1d9af96f725a052E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %1)
  %3 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %1 to i8*
  call void @_ZN4heap13exchange_free20h7022490b0ea5a34cXiaE(i8* %3, i64 56, i64 8)
  br label %next
}

define internal void @"_ZN92collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$14glue_drop.113217hb1d9af96f725a052E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"*) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 0
  call void @_ZN27collections..string..String14glue_drop.113517hf74607111f7c6563E(%"struct.collections::string::String<[]>[#6]"* %1)
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 1
  call void @"_ZN24Gc$LT$hy_obj.._HyObj$GT$14glue_drop.111017h49acbf77d9e2a190E"({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %2)
  %3 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN131core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$$GT$$GT$14glue_drop.112617h7827f2755943b781E"(i8** %3)
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 3
  call void @"_ZN131core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$hy_obj.._HyObj$GT$$GT$$GT$$GT$14glue_drop.112617h7827f2755943b781E"(i8** %4)
  %5 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 4
  ret void
}

define internal void @_ZN27collections..string..String14glue_drop.113517hf74607111f7c6563E(%"struct.collections::string::String<[]>[#6]"*) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.113817hb84477b540275824E"(%"struct.collections::vec::Vec<[u8]>[#6]"* %1)
  ret void
}

define internal void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.113817hb84477b540275824E"(%"struct.collections::vec::Vec<[u8]>[#6]"*) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 1
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop21h13761539801967837453E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24) %0)
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop21h13761539801967837453E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %1 = alloca %"struct.core::slice::Items<[u8]>[#3]"
  %2 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  %for_head = alloca %"struct.core::slice::Items<[u8]>[#3]"*
  %loop_option = alloca i8*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %4 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %3, i32 0, i32 1
  %5 = load i64* %4
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %then-block-29-, label %next-block

then-block-29-:                                   ; preds = %entry-block
  %7 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice21h16494039657922226043E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %7)
  %8 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 0
  %9 = load i8** %8
  %10 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 1
  %11 = load i64* %10
  %12 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %9, i8** %12
  %13 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %11, i64* %13
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11690655401762385824E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  store %"struct.core::slice::Items<[u8]>[#3]"* %1, %"struct.core::slice::Items<[u8]>[#3]"** %for_head
  %14 = load %"struct.core::slice::Items<[u8]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  %15 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %16 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %15, i32 0, i32 2
  %17 = load i8** %16
  %18 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %19 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %18, i32 0, i32 1
  %20 = load i64* %19
  call void @_ZN3vec7dealloc20h6102306818429127740E(i8* %17, i64 %20)
  br label %next-block

for_loopback:                                     ; preds = %for_body, %then-block-29-
  %21 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h5612489535776241274E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %14)
  store i8* %21, i8** %loop_option
  %22 = load i8** %loop_option
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i8
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %26 = load i8** %loop_option
  %27 = call i8 @_ZN3ptr4read21h15063349121012782237E(i8* %26)
  br label %for_loopback

next-block:                                       ; preds = %entry-block, %for_exit
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11690655401762385824E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %p = alloca i8*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = call i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr20h5372757549409811835E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i8* %5, i8** %p
  %6 = call i64 @_ZN3mem7size_of21h13285100814203089277E()
  store i64 %6, i64* %2
  %7 = load i64* %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-75-, label %else-block

then-block-75-:                                   ; preds = %entry-block
  %9 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 0
  %10 = load i8** %p
  store i8* %10, i8** %9
  %11 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 1
  %12 = load i8** %p
  %13 = ptrtoint i8* %12 to i64
  %14 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h8890496052120557334E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %14, i64* %3
  %15 = load i64* %3
  %16 = add i64 %13, %15
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %11
  %18 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 2
  br label %join

else-block:                                       ; preds = %entry-block
  %19 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 0
  %20 = load i8** %p
  store i8* %20, i8** %19
  %21 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 1
  %22 = load i8** %p
  %23 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h8890496052120557334E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %23, i64* %4
  %24 = load i64* %4
  %25 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h2264785783849380432E"(i8* %22, i64 %24)
  store i8* %25, i8** %21
  %26 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 2
  br label %join

join:                                             ; preds = %else-block, %then-block-75-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr20h5372757549409811835E"({ i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %self = alloca { i8*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3raw4Repr4repr20h7483162535222472886E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %1, i32 0, i32 0
  %4 = load i8** %3
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr20h7483162535222472886E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h6639522547571081050E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h6639522547571081050E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  call void @_ZN3ptr4read20h1477998312663590077E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, %"struct.core::raw::Slice<[u8]>[#3]"* %3)
  ret void
}

; Function Attrs: alwaysinline uwtable
define internal void @_ZN3ptr4read20h1477998312663590077E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), %"struct.core::raw::Slice<[u8]>[#3]"*) unnamed_addr #3 {
entry-block:
  %src = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store %"struct.core::raw::Slice<[u8]>[#3]"* %1, %"struct.core::raw::Slice<[u8]>[#3]"** %src
  call void @_ZN3mem13uninitialized21h18278365213937680980E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp)
  %2 = load %"struct.core::raw::Slice<[u8]>[#3]"** %src
  %3 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp to i8*
  %4 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false)
  %5 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp to i8*
  %6 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized21h18278365213937680980E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #2 {
entry-block:
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) unnamed_addr #4

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of21h13285100814203089277E() unnamed_addr #2 {
entry-block:
  ret i64 1
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h8890496052120557334E"({ i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %self = alloca { i8*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3raw4Repr4repr21h11147310854059242903E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %1, i32 0, i32 1
  %4 = load i64* %3
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h11147310854059242903E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy21h17125478598391378163E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy21h17125478598391378163E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  call void @_ZN3ptr4read20h1477998312663590077E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, %"struct.core::raw::Slice<[u8]>[#3]"* %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h2264785783849380432E"(i8*, i64) unnamed_addr #2 {
entry-block:
  %self = alloca i8*
  %count = alloca i64
  store i8* %0, i8** %self
  store i64 %1, i64* %count
  %2 = load i8** %self
  %3 = load i64* %count
  %4 = getelementptr inbounds i8* %2, i64 %3
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice21h16494039657922226043E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24)) unnamed_addr #2 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca i8*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = bitcast { i8*, i64 }* %0 to %"struct.core::raw::Slice<[u8]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %6 = call i8* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr20h9599850720564791666E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
  store i8* %6, i8** %2
  %7 = load i8** %2
  store i8* %7, i8** %4
  %8 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %3, i32 0, i32 1
  %9 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %10 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %9, i32 0, i32 0
  %11 = load i64* %10
  store i64 %11, i64* %8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr20h9599850720564791666E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #2 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 2
  %3 = load i8** %2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h5612489535776241274E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca %"struct.core::slice::Items<[u8]>[#3]"*
  %1 = alloca i64
  %old = alloca i8*
  store %"struct.core::slice::Items<[u8]>[#3]"* %0, %"struct.core::slice::Items<[u8]>[#3]"** %self
  %2 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %3 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %5 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %4, i32 0, i32 1
  %6 = load i8** %3
  %7 = load i8** %5
  %8 = icmp eq i8* %6, %7
  br i1 %8, label %then-block-336-, label %else-block

then-block-336-:                                  ; preds = %entry-block
  store i8* null, i8** %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %9 = call i64 @_ZN3mem7size_of21h13285100814203089277E()
  store i64 %9, i64* %1
  %10 = load i64* %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then-block-347-, label %else-block1

then-block-347-:                                  ; preds = %else-block
  %12 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %13 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %12, i32 0, i32 0
  %14 = bitcast i8** %13 to i64*
  %15 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %16 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %15, i32 0, i32 0
  %17 = load i8** %16
  %18 = ptrtoint i8* %17 to i64
  %19 = add i64 %18, 1
  store i64 %19, i64* %14
  %20 = bitcast i8** %sret_slot to i64*
  store i64 1, i64* %20
  br label %join

else-block1:                                      ; preds = %else-block
  %21 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %22 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %21, i32 0, i32 0
  %23 = load i8** %22
  store i8* %23, i8** %old
  %24 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %25 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %24, i32 0, i32 0
  %26 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %27 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %26, i32 0, i32 0
  %28 = load i8** %27
  %29 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h2264785783849380432E"(i8* %28, i64 1)
  store i8* %29, i8** %25
  %30 = load i8** %old
  store i8* %30, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block1, %then-block-347-
  br label %join2

join2:                                            ; preds = %join, %then-block-336-
  %31 = load i8** %sret_slot
  ret i8* %31
}

; Function Attrs: alwaysinline uwtable
define internal i8 @_ZN3ptr4read21h15063349121012782237E(i8*) unnamed_addr #3 {
entry-block:
  %src = alloca i8*
  %tmp = alloca i8
  store i8* %0, i8** %src
  %1 = call i8 @_ZN3mem13uninitialized20h6187351186598608525E()
  store i8 %1, i8* %tmp
  %2 = load i8** %src
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* %2, i64 1, i32 1, i1 false)
  %3 = load i8* %tmp
  ret i8 %3
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3mem13uninitialized20h6187351186598608525E() unnamed_addr #2 {
entry-block:
  %sret_slot = alloca i8
  %0 = load i8* %sret_slot
  ret i8 %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3vec7dealloc20h6102306818429127740E(i8*, i64) unnamed_addr #2 {
entry-block:
  %ptr = alloca i8*
  %len = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %len
  %5 = call i64 @_ZN3mem7size_of21h13285100814203089277E()
  store i64 %5, i64* %2
  %6 = load i64* %2
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-408-, label %next-block

then-block-408-:                                  ; preds = %entry-block
  %8 = load i8** %ptr
  %9 = call i64 @_ZN3mem7size_of21h13285100814203089277E()
  store i64 %9, i64* %3
  %10 = load i64* %3
  %11 = load i64* %len
  %12 = mul i64 %11, %10
  %13 = call i64 @_ZN3mem12min_align_of21h17986014018582524646E()
  store i64 %13, i64* %4
  %14 = load i64* %4
  call void @_ZN4heap10deallocate20heea38cfb3095acaa3gaE(i8* %8, i64 %12, i64 %14)
  br label %next-block

next-block:                                       ; preds = %entry-block, %then-block-408-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap10deallocate20heea38cfb3095acaa3gaE(i8*, i64, i64) unnamed_addr #2 {
entry-block:
  %ptr = alloca i8*
  %size = alloca i64
  %align = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  %3 = load i8** %ptr
  %4 = load i64* %size
  %5 = load i64* %align
  call void @_ZN4heap3imp10deallocate20h320680364f9eff50phaE(i8* %3, i64 %4, i64 %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap3imp10deallocate20h320680364f9eff50phaE(i8*, i64, i64) unnamed_addr #2 {
entry-block:
  %ptr = alloca i8*
  %_size = alloca i64
  %align = alloca i64
  %3 = alloca i32
  %__arg = alloca i8*
  %__arg1 = alloca i32
  store i8* %0, i8** %ptr
  store i64 %1, i64* %_size
  store i64 %2, i64* %align
  %4 = load i8** %ptr
  %5 = load i64* %align
  %6 = call i32 @_ZN4heap3imp13mallocx_align20h03af497940d11e0aQhaE(i64 %5)
  store i32 %6, i32* %3
  %7 = load i32* %3
  store i8* %4, i8** %__arg
  %8 = load i8** %__arg
  store i32 %7, i32* %__arg1
  %9 = load i32* %__arg1
  call void @je_dallocx(i8* %8, i32 %9)
  ret void
}

declare void @je_dallocx(i8*, i32) unnamed_addr #1

; Function Attrs: alwaysinline uwtable
define internal i32 @_ZN4heap3imp13mallocx_align20h03af497940d11e0aQhaE(i64) unnamed_addr #3 {
entry-block:
  %a = alloca i64
  %1 = alloca i64
  store i64 %0, i64* %a
  %2 = load i64* %a
  %3 = call i64 @_ZN3num8uint.Int14trailing_zeros20hbeafd0da09f5e3704haE(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64* %1
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num8uint.Int14trailing_zeros20hbeafd0da09f5e3704haE(i64) unnamed_addr #2 {
entry-block:
  %self = alloca i64
  %1 = alloca i64
  store i64 %0, i64* %self
  %2 = load i64* %self
  %3 = call i64 @_ZN3num7u64.Int14trailing_zeros20h9d10f73be1eba958liaE(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64* %1
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num7u64.Int14trailing_zeros20h9d10f73be1eba958liaE(i64) unnamed_addr #2 {
entry-block:
  %self = alloca i64
  store i64 %0, i64* %self
  %1 = load i64* %self
  %2 = call i64 @llvm.cttz.i64(i64 %1, i1 false)
  ret i64 %2
}

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) unnamed_addr #5

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem12min_align_of21h17986014018582524646E() unnamed_addr #2 {
entry-block:
  ret i64 1
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap13exchange_free20h7022490b0ea5a34cXiaE(i8*, i64, i64) unnamed_addr #2 {
entry-block:
  %ptr = alloca i8*
  %size = alloca i64
  %align = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  %3 = load i8** %ptr
  %4 = load i64* %size
  %5 = load i64* %align
  call void @_ZN4heap10deallocate20heea38cfb3095acaa3gaE(i8* %3, i64 %4, i64 %5)
  ret void
}

define internal void @"_ZN53collections..vec..Vec$LT$Gc$LT$hy_obj.._HyObj$GT$$GT$14glue_drop.129217h4eda4df85e6cfa6dE"(%"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"*) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 1
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop21h16753583477252077609E"(%"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* noalias nocapture dereferenceable(24) %0)
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop21h16753583477252077609E"(%"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"*
  %1 = alloca %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"
  %2 = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }
  %__adjust = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }
  %for_head = alloca %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"*
  %loop_option = alloca i8*
  %3 = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*
  %stmt = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*
  store %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %0, %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  %4 = load %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  %5 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %4, i32 0, i32 1
  %6 = load i64* %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-29-, label %next-block

then-block-29-:                                   ; preds = %entry-block
  %8 = load %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h9128571030582418626E"({ { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* noalias dereferenceable(24) %8)
  %9 = getelementptr inbounds { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %2, i32 0, i32 0
  %10 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %9
  %11 = getelementptr inbounds { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %2, i32 0, i32 1
  %12 = load i64* %11
  %13 = getelementptr inbounds { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %__adjust, i32 0, i32 0
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %10, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %13
  %14 = getelementptr inbounds { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %__adjust, i32 0, i32 1
  store i64 %12, i64* %14
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter19h793602838901076230E"(%"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  store %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %1, %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %for_head
  %15 = load %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  %16 = load %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  %17 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %16, i32 0, i32 2
  %18 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %17
  %19 = load %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  %20 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %19, i32 0, i32 1
  %21 = load i64* %20
  call void @_ZN3vec7dealloc21h17482039904276002840E({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %18, i64 %21)
  br label %next-block

for_loopback:                                     ; preds = %for_body, %then-block-29-
  %22 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11925127377146904551E"(%"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* noalias dereferenceable(16) %15)
  store i8* %22, i8** %loop_option
  %23 = load i8** %loop_option
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i8
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %27 = bitcast i8** %loop_option to { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }***
  %28 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %27
  %29 = call { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* @_ZN3ptr4read20h7635405930811851030E({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %28)
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %29, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %3
  %30 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %3
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %30, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %stmt
  call void @"_ZN24Gc$LT$hy_obj.._HyObj$GT$14glue_drop.111017h49acbf77d9e2a190E"({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %stmt)
  br label %for_loopback

next-block:                                       ; preds = %entry-block, %for_exit
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter19h793602838901076230E"(%"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %p = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = call { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr20h3433818019946417128E"({ { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias dereferenceable(16) %1)
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %5, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %p
  %6 = call i64 @_ZN3mem7size_of20h8146126503058520719E()
  store i64 %6, i64* %2
  %7 = load i64* %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-75-, label %else-block

then-block-75-:                                   ; preds = %entry-block
  %9 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %0, i32 0, i32 0
  %10 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %p
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %10, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %9
  %11 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %0, i32 0, i32 1
  %12 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %p
  %13 = ptrtoint { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %12 to i64
  %14 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len19h344405896175576592E"({ { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias dereferenceable(16) %1)
  store i64 %14, i64* %3
  %15 = load i64* %3
  %16 = add i64 %13, %15
  %17 = inttoptr i64 %16 to { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %17, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %11
  %18 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %0, i32 0, i32 2
  br label %join

else-block:                                       ; preds = %entry-block
  %19 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %0, i32 0, i32 0
  %20 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %p
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %20, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %19
  %21 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %0, i32 0, i32 1
  %22 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %p
  %23 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len19h344405896175576592E"({ { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias dereferenceable(16) %1)
  store i64 %23, i64* %4
  %24 = load i64* %4
  %25 = call { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h8575009200996381546E"({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %22, i64 %24)
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %25, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %21
  %26 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %0, i32 0, i32 2
  br label %join

join:                                             ; preds = %else-block, %then-block-75-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr20h3433818019946417128E"({ { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %self = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"
  store { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %0, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %self
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %self
  call void @_ZN3raw4Repr4repr21h11578517861135185768E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %1, i32 0, i32 0
  %4 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %3
  ret { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h11578517861135185768E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %self = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }*
  store { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %1, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %self
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %self
  call void @_ZN3mem14transmute_copy21h15085787048111114033E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy21h15085787048111114033E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %src = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }*
  store { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %1, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %src
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %src
  %3 = bitcast { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %2 to %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"*
  call void @_ZN3ptr4read21h14563509867663790095E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %0, %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %3)
  ret void
}

; Function Attrs: alwaysinline uwtable
define internal void @_ZN3ptr4read21h14563509867663790095E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"*) unnamed_addr #3 {
entry-block:
  %src = alloca %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"*
  %tmp = alloca %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"
  store %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %1, %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"** %src
  call void @_ZN3mem13uninitialized21h10806711153534199971E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp)
  %2 = load %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"** %src
  %3 = bitcast %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %tmp to i8*
  %4 = bitcast %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false)
  %5 = bitcast %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %tmp to i8*
  %6 = bitcast %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized21h10806711153534199971E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #2 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of20h8146126503058520719E() unnamed_addr #2 {
entry-block:
  ret i64 8
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len19h344405896175576592E"({ { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %self = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"
  store { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %0, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %self
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %self
  call void @_ZN3raw4Repr4repr20h8321511759723544367E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %1, i32 0, i32 1
  %4 = load i64* %3
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr20h8321511759723544367E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %self = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }*
  store { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %1, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %self
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %self
  call void @_ZN3mem14transmute_copy20h4651259381132850182E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h4651259381132850182E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %src = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }*
  store { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %1, { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %src
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }** %src
  %3 = bitcast { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %2 to %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"*
  call void @_ZN3ptr4read21h14563509867663790095E(%"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %0, %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h8575009200996381546E"({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64) unnamed_addr #2 {
entry-block:
  %self = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**
  %count = alloca i64
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %0, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %self
  store i64 %1, i64* %count
  %2 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %self
  %3 = load i64* %count
  %4 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %2, i64 %3
  ret { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h9128571030582418626E"({ { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* noalias dereferenceable(24)) unnamed_addr #2 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"*
  %2 = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**
  store %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %1, %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  %3 = bitcast { { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64 }* %0 to %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  %6 = call { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h14050895750724357500E"(%"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* noalias dereferenceable(24) %5)
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %6, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %2
  %7 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %2
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %7, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %4
  %8 = getelementptr inbounds %"struct.core::raw::Slice<[Gc<hy_obj::_HyObj>]>[#3]"* %3, i32 0, i32 1
  %9 = load %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  %10 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %9, i32 0, i32 0
  %11 = load i64* %10
  store i64 %11, i64* %8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h14050895750724357500E"(%"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #2 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"*
  store %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %0, %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<hy_obj::_HyObj>]>[#6]"* %1, i32 0, i32 2
  %3 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %2
  ret { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11925127377146904551E"(%"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"*
  %1 = alloca i64
  %old = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**
  store %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %0, %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %self
  %2 = load %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %self
  %3 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %self
  %5 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %4, i32 0, i32 1
  %6 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %3
  %7 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %5
  %8 = icmp eq { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %6, %7
  br i1 %8, label %then-block-336-, label %else-block

then-block-336-:                                  ; preds = %entry-block
  store i8* null, i8** %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %9 = call i64 @_ZN3mem7size_of20h8146126503058520719E()
  store i64 %9, i64* %1
  %10 = load i64* %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then-block-347-, label %else-block1

then-block-347-:                                  ; preds = %else-block
  %12 = load %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %self
  %13 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %12, i32 0, i32 0
  %14 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %13 to i64*
  %15 = load %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %self
  %16 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %15, i32 0, i32 0
  %17 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %16
  %18 = ptrtoint { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %17 to i64
  %19 = add i64 %18, 1
  store i64 %19, i64* %14
  %20 = bitcast i8** %sret_slot to { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }***
  %21 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %20 to i64*
  store i64 1, i64* %21
  br label %join

else-block1:                                      ; preds = %else-block
  %22 = load %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %self
  %23 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %22, i32 0, i32 0
  %24 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %23
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %24, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %old
  %25 = load %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %self
  %26 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %25, i32 0, i32 0
  %27 = load %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"** %self
  %28 = getelementptr inbounds %"struct.core::slice::Items<[Gc<hy_obj::_HyObj>]>[#3]"* %27, i32 0, i32 0
  %29 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %28
  %30 = call { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h8575009200996381546E"({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %29, i64 1)
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %30, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %26
  %31 = bitcast i8** %sret_slot to { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }***
  %32 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %old
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %32, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %31
  br label %join

join:                                             ; preds = %else-block1, %then-block-347-
  br label %join2

join2:                                            ; preds = %join, %then-block-336-
  %33 = load i8** %sret_slot
  ret i8* %33
}

; Function Attrs: alwaysinline uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* @_ZN3ptr4read20h7635405930811851030E({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**) unnamed_addr #3 {
entry-block:
  %src = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**
  %tmp = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %0, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %src
  %1 = call { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* @_ZN3mem13uninitialized20h6146890516333091110E()
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %1, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %tmp
  %2 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %src
  %3 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %tmp to i8*
  %4 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %tmp
  %6 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %tmp
  %7 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %6, i32 0, i32 0
  %8 = load i64* %7
  %9 = add i64 %8, 1
  store i64 %9, i64* %7
  call void @"_ZN24Gc$LT$hy_obj.._HyObj$GT$14glue_drop.111017h49acbf77d9e2a190E"({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %tmp)
  ret { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %5
}

; Function Attrs: inlinehint uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* @_ZN3mem13uninitialized20h6146890516333091110E() unnamed_addr #2 {
entry-block:
  %sret_slot = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*
  %0 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %sret_slot
  ret { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3vec7dealloc21h17482039904276002840E({ i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**, i64) unnamed_addr #2 {
entry-block:
  %ptr = alloca { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }**
  %len = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %0, { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %ptr
  store i64 %1, i64* %len
  %5 = call i64 @_ZN3mem7size_of20h8146126503058520719E()
  store i64 %5, i64* %2
  %6 = load i64* %2
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-408-, label %next-block

then-block-408-:                                  ; preds = %entry-block
  %8 = load { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }*** %ptr
  %9 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.hy_obj::_HyObj<[]>[#10]" }** %8 to i8*
  %10 = call i64 @_ZN3mem7size_of20h8146126503058520719E()
  store i64 %10, i64* %3
  %11 = load i64* %3
  %12 = load i64* %len
  %13 = mul i64 %12, %11
  %14 = call i64 @_ZN3mem12min_align_of21h14375173917078343182E()
  store i64 %14, i64* %4
  %15 = load i64* %4
  call void @_ZN4heap10deallocate20heea38cfb3095acaa3gaE(i8* %9, i64 %13, i64 %15)
  br label %next-block

next-block:                                       ; preds = %entry-block, %then-block-408-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem12min_align_of21h14375173917078343182E() unnamed_addr #2 {
entry-block:
  ret i64 8
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap11local_free_20h08bf5a93f686c04bkjaE(i8*) unnamed_addr #2 {
entry-block:
  %ptr = alloca i8*
  store i8* %0, i8** %ptr
  %1 = load i8** %ptr
  call void @_ZN10local_heap10local_free20h1e42a307512fd459wjaE(i8* %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap10local_free20h1e42a307512fd459wjaE(i8*) unnamed_addr #2 {
entry-block:
  %ptr = alloca i8*
  %task_ptr = alloca %"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"
  %__llmatch = alloca %"struct.rustrt::task::Task<[]>[#9]"**
  %task = alloca %"struct.rustrt::task::Task<[]>[#9]"*
  %match = alloca {}
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %1 = alloca %"struct.core::fmt::Argument<[]>[#3]", i64 0
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust3 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store i8* %0, i8** %ptr
  call void @"_ZN5local49Task.Local$LT$local_ptr..Borrowed$LT$Task$GT$$GT$17try_unsafe_borrow20hb13b3486c7c18bf4GkaE"(%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* noalias nocapture sret dereferenceable(16) %task_ptr)
  %2 = getelementptr inbounds %"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* %task_ptr, i32 0, i32 0
  %3 = load i8* %2, !range !1
  switch i8 %3, label %match_else [
    i8 1, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %4 = load %"struct.rustrt::task::Task<[]>[#9]"*** %__llmatch
  %5 = load %"struct.rustrt::task::Task<[]>[#9]"** %4
  store %"struct.rustrt::task::Task<[]>[#9]"* %5, %"struct.rustrt::task::Task<[]>[#9]"** %task
  %6 = load %"struct.rustrt::task::Task<[]>[#9]"** %task
  %7 = getelementptr inbounds %"struct.rustrt::task::Task<[]>[#9]"* %6, i32 0, i32 0
  %8 = load i8** %ptr
  %9 = bitcast i8* %8 to %"struct.core::raw::Box<[()]>[#3]"*
  call void @_ZN10local_heap9LocalHeap4free20h30e2b8abd6a509deUlaE(%"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* noalias dereferenceable(32) %7, %"struct.core::raw::Box<[()]>[#3]"* %9)
  br label %join4

case_body1:                                       ; preds = %match_else
  br label %case_body2

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %10 = bitcast %"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* %task_ptr to { i8, %"struct.rustrt::task::Task<[]>[#9]"* }*
  %11 = getelementptr inbounds { i8, %"struct.rustrt::task::Task<[]>[#9]"* }* %10, i32 0, i32 1
  store %"struct.rustrt::task::Task<[]>[#9]"** %11, %"struct.rustrt::task::Task<[]>[#9]"*** %__llmatch
  br label %case_body

case_body2:                                       ; preds = %case_body1
  %12 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %1, %"struct.core::fmt::Argument<[]>[#3]"** %12
  %13 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 0, i64* %13
  %14 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, %str_slice, [48 x i8] } }* @_ZN10local_heap10local_free15__STATIC_FMTSTR20h4e4516024f787479F4bE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %14
  %15 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %15
  %16 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %17 = load %"struct.core::fmt::Argument<[]>[#3]"** %16
  %18 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %19 = load i64* %18
  %20 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust3, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %17, %"struct.core::fmt::Argument<[]>[#3]"** %20
  %21 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust3, i32 0, i32 1
  store i64 %19, i64* %21
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20ha6fe0e7f75ee8de8araE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust3)
  call void @_ZN4util5abort20h0ca03d03e01bc130hHaE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args)
  unreachable

join:                                             ; No predecessors!
  unreachable

join4:                                            ; preds = %case_body
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5local49Task.Local$LT$local_ptr..Borrowed$LT$Task$GT$$GT$17try_unsafe_borrow20hb13b3486c7c18bf4GkaE"(%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #2 {
entry-block:
  call void @_ZN9local_ptr8compiled17try_unsafe_borrow21h18136687983495300606E(%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* noalias nocapture sret dereferenceable(16) %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN9local_ptr8compiled17try_unsafe_borrow21h18136687983495300606E(%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %1 = alloca i8
  %2 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h6430077374411359167E"(i8** noalias dereferenceable(8) @_ZN9local_ptr8compiled10RT_TLS_PTR20h105e8dd88d5b0520anaE)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %1
  %4 = load i8* %1, !range !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %then-block-673-, label %else-block

then-block-673-:                                  ; preds = %entry-block
  %6 = getelementptr inbounds %"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* %0, i32 0, i32 0
  store i8 0, i8* %6
  br label %join

else-block:                                       ; preds = %entry-block
  %7 = bitcast %"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* %0 to { i8, %"struct.rustrt::task::Task<[]>[#9]"* }*
  %8 = getelementptr inbounds { i8, %"struct.rustrt::task::Task<[]>[#9]"* }* %7, i32 0, i32 1
  %9 = load i8** @_ZN9local_ptr8compiled10RT_TLS_PTR20h105e8dd88d5b0520anaE
  %10 = bitcast i8* %9 to %"struct.rustrt::task::Task<[]>[#9]"*
  store %"struct.rustrt::task::Task<[]>[#9]"* %10, %"struct.rustrt::task::Task<[]>[#9]"** %8
  %11 = getelementptr inbounds %"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* %0, i32 0, i32 0
  store i8 1, i8* %11
  br label %join

join:                                             ; preds = %else-block, %then-block-673-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h6430077374411359167E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #2 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  %3 = call i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h16222583608145001302E"()
  store i8* %3, i8** %1
  %4 = load i8** %1
  %5 = load i8** %2
  %6 = icmp eq i8* %5, %4
  %7 = zext i1 %6 to i8
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h16222583608145001302E"() unnamed_addr #2 {
entry-block:
  %0 = call i8* @_ZN3ptr8mut_null20h9844269361606382396E()
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3ptr8mut_null20h9844269361606382396E() unnamed_addr #2 {
entry-block:
  ret i8* null
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap9LocalHeap4free20h30e2b8abd6a509deUlaE(%"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* noalias nocapture dereferenceable(32), %"struct.core::raw::Box<[()]>[#3]"*) unnamed_addr #2 {
entry-block:
  %self = alloca %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"*
  %alloc = alloca %"struct.core::raw::Box<[()]>[#3]"*
  %mybox = alloca %"struct.core::raw::Box<[()]>[#3]"*
  %2 = alloca i8
  %3 = alloca i8
  store %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %0, %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  store %"struct.core::raw::Box<[()]>[#3]"* %1, %"struct.core::raw::Box<[()]>[#3]"** %alloc
  %4 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  store %"struct.core::raw::Box<[()]>[#3]"* %4, %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %5 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %6 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %5, i32 0, i32 2
  %7 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h4880433017553819304E"(%"struct.core::raw::Box<[()]>[#3]"** noalias dereferenceable(8) %6)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %2
  %9 = load i8* %2, !range !1
  %10 = trunc i8 %9 to i1
  %11 = xor i1 %10, true
  br i1 %11, label %then-block-759-, label %next-block

then-block-759-:                                  ; preds = %entry-block
  %12 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %13 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %12, i32 0, i32 2
  %14 = load %"struct.core::raw::Box<[()]>[#3]"** %13
  %15 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %14, i32 0, i32 3
  %16 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %17 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %16, i32 0, i32 3
  %18 = load %"struct.core::raw::Box<[()]>[#3]"** %17
  store %"struct.core::raw::Box<[()]>[#3]"* %18, %"struct.core::raw::Box<[()]>[#3]"** %15
  br label %next-block

next-block:                                       ; preds = %entry-block, %then-block-759-
  %19 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %20 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %19, i32 0, i32 3
  %21 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h4880433017553819304E"(%"struct.core::raw::Box<[()]>[#3]"** noalias dereferenceable(8) %20)
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %3
  %23 = load i8* %3, !range !1
  %24 = trunc i8 %23 to i1
  %25 = xor i1 %24, true
  br i1 %25, label %then-block-777-, label %next-block1

then-block-777-:                                  ; preds = %next-block
  %26 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %27 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %26, i32 0, i32 3
  %28 = load %"struct.core::raw::Box<[()]>[#3]"** %27
  %29 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %28, i32 0, i32 2
  %30 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %31 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %30, i32 0, i32 2
  %32 = load %"struct.core::raw::Box<[()]>[#3]"** %31
  store %"struct.core::raw::Box<[()]>[#3]"* %32, %"struct.core::raw::Box<[()]>[#3]"** %29
  br label %next-block1

next-block1:                                      ; preds = %next-block, %then-block-777-
  %33 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %34 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %33, i32 0, i32 1
  %35 = load %"struct.core::raw::Box<[()]>[#3]"** %34
  %36 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  %37 = icmp eq %"struct.core::raw::Box<[()]>[#3]"* %35, %36
  br i1 %37, label %then-block-794-, label %next-block2

then-block-794-:                                  ; preds = %next-block1
  %38 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %39 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %38, i32 0, i32 1
  %40 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %41 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %40, i32 0, i32 3
  %42 = load %"struct.core::raw::Box<[()]>[#3]"** %41
  store %"struct.core::raw::Box<[()]>[#3]"* %42, %"struct.core::raw::Box<[()]>[#3]"** %39
  br label %next-block2

next-block2:                                      ; preds = %next-block1, %then-block-794-
  %43 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %44 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %43, i32 0, i32 0
  %45 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  call void @_ZN10local_heap12MemoryRegion4free20hba852139550793a0bnaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias dereferenceable(16) %44, %"struct.core::raw::Box<[()]>[#3]"* %45)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h4880433017553819304E"(%"struct.core::raw::Box<[()]>[#3]"** noalias nocapture dereferenceable(8)) unnamed_addr #2 {
entry-block:
  %self = alloca %"struct.core::raw::Box<[()]>[#3]"**
  %1 = alloca %"struct.core::raw::Box<[()]>[#3]"*
  store %"struct.core::raw::Box<[()]>[#3]"** %0, %"struct.core::raw::Box<[()]>[#3]"*** %self
  %2 = load %"struct.core::raw::Box<[()]>[#3]"*** %self
  %3 = call %"struct.core::raw::Box<[()]>[#3]"* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h17310138900727988017E"()
  store %"struct.core::raw::Box<[()]>[#3]"* %3, %"struct.core::raw::Box<[()]>[#3]"** %1
  %4 = load %"struct.core::raw::Box<[()]>[#3]"** %1
  %5 = load %"struct.core::raw::Box<[()]>[#3]"** %2
  %6 = icmp eq %"struct.core::raw::Box<[()]>[#3]"* %5, %4
  %7 = zext i1 %6 to i8
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define internal %"struct.core::raw::Box<[()]>[#3]"* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h17310138900727988017E"() unnamed_addr #2 {
entry-block:
  %0 = call %"struct.core::raw::Box<[()]>[#3]"* @_ZN3ptr8mut_null20h3083694276274594360E()
  ret %"struct.core::raw::Box<[()]>[#3]"* %0
}

; Function Attrs: inlinehint uwtable
define internal %"struct.core::raw::Box<[()]>[#3]"* @_ZN3ptr8mut_null20h3083694276274594360E() unnamed_addr #2 {
entry-block:
  ret %"struct.core::raw::Box<[()]>[#3]"* null
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap12MemoryRegion4free20hba852139550793a0bnaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias nocapture dereferenceable(16), %"struct.core::raw::Box<[()]>[#3]"*) unnamed_addr #2 {
entry-block:
  %self = alloca %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"*
  %alloc = alloca %"struct.core::raw::Box<[()]>[#3]"*
  %2 = alloca i8
  %3 = alloca { %str_slice* }
  %4 = alloca %str_slice
  %match = alloca { %str_slice* }
  %__llmatch = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %5 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust1 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %alloc3 = alloca %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"*
  %6 = alloca %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"*
  %7 = alloca { %str_slice* }
  %8 = alloca %str_slice
  %match4 = alloca { %str_slice* }
  %__llmatch6 = alloca %str_slice**
  %__arg07 = alloca %str_slice*
  %__args_vec8 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %9 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args9 = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust10 = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust11 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %__arg = alloca i8*
  store %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* %0, %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  store %"struct.core::raw::Box<[()]>[#3]"* %1, %"struct.core::raw::Box<[()]>[#3]"** %alloc
  %10 = load i8* bitcast (i1* @_ZN4util14ENFORCE_SANITY20h859984a9e25719baHFaE to i8*), !range !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %then-block-823-, label %next-block2

then-block-823-:                                  ; preds = %entry-block
  %12 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h4880433017553819304E"(%"struct.core::raw::Box<[()]>[#3]"** noalias dereferenceable(8) %alloc)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2
  %14 = load i8* %2, !range !1
  %15 = trunc i8 %14 to i1
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  br i1 %17, label %then-block-829-, label %next-block

then-block-829-:                                  ; preds = %then-block-823-
  %18 = getelementptr inbounds { %str_slice* }* %3, i32 0, i32 0
  %19 = getelementptr inbounds %str_slice* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8]* @str1439, i32 0, i32 0), i8** %19
  %20 = getelementptr inbounds %str_slice* %4, i32 0, i32 1
  store i64 16, i64* %20
  store %str_slice* %4, %str_slice** %18
  %21 = load { %str_slice* }* %3
  store { %str_slice* } %21, { %str_slice* }* %match
  %22 = getelementptr inbounds { %str_slice* }* %match, i32 0, i32 0
  store %str_slice** %22, %str_slice*** %__llmatch
  br label %case_body

case_body:                                        ; preds = %then-block-829-
  %23 = load %str_slice*** %__llmatch
  %24 = load %str_slice** %23
  store %str_slice* %24, %str_slice** %__arg0
  %25 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %5 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %26 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %5, i32 0
  %27 = load %str_slice** %__arg0
  call void @_ZN3fmt8argument20h4211752211325896242E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %26, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h12581982349783452866E, %str_slice* noalias dereferenceable(16) %27)
  %28 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %5, %"struct.core::fmt::Argument<[]>[#3]"** %28
  %29 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %29
  %30 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([2 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, %str_slice, [48 x i8] }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @_ZN10local_heap12MemoryRegion4free15__STATIC_FMTSTR20h3fbdedd158832291SXbE to [2 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %30
  %31 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 2, i64* %31
  %32 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %33 = load %"struct.core::fmt::Argument<[]>[#3]"** %32
  %34 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %35 = load i64* %34
  %36 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust1, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %33, %"struct.core::fmt::Argument<[]>[#3]"** %36
  %37 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust1, i32 0, i32 1
  store i64 %35, i64* %37
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20ha6fe0e7f75ee8de8araE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
  call void @_ZN4util5abort20h0ca03d03e01bc130hHaE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args)
  unreachable

join:                                             ; No predecessors!
  unreachable

next-block:                                       ; preds = %then-block-823-
  br label %next-block2

next-block2:                                      ; preds = %entry-block, %next-block
  %38 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  %39 = call %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* @_ZN10local_heap11AllocHeader4from20h1e5e3819e8cbb242dTbE(%"struct.core::raw::Box<[()]>[#3]"* %38)
  store %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %39, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc3
  %40 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc3
  call void @_ZN10local_heap11AllocHeader11assert_sane20h0fd6b1b0a42260aa3RbE(%"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias %40)
  %41 = load %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  %42 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc3
  store %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %42, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %6
  %43 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %6
  call void @_ZN10local_heap12MemoryRegion7release20h1069932422238131XraE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias dereferenceable(16) %41, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias %43)
  %44 = load i8* bitcast (i1* @_ZN4util14ENFORCE_SANITY20h859984a9e25719baHFaE to i8*), !range !1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %then-block-909-, label %next-block14

then-block-909-:                                  ; preds = %next-block2
  %46 = load %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  %47 = getelementptr inbounds %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* %46, i32 0, i32 0
  %48 = load i64* %47
  %49 = icmp ugt i64 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %then-block-916-, label %next-block13

then-block-916-:                                  ; preds = %then-block-909-
  %51 = getelementptr inbounds { %str_slice* }* %7, i32 0, i32 0
  %52 = getelementptr inbounds %str_slice* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8]* @str1498, i32 0, i32 0), i8** %52
  %53 = getelementptr inbounds %str_slice* %8, i32 0, i32 1
  store i64 25, i64* %53
  store %str_slice* %8, %str_slice** %51
  %54 = load { %str_slice* }* %7
  store { %str_slice* } %54, { %str_slice* }* %match4
  %55 = getelementptr inbounds { %str_slice* }* %match4, i32 0, i32 0
  store %str_slice** %55, %str_slice*** %__llmatch6
  br label %case_body5

case_body5:                                       ; preds = %then-block-916-
  %56 = load %str_slice*** %__llmatch6
  %57 = load %str_slice** %56
  store %str_slice* %57, %str_slice** %__arg07
  %58 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %9 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %59 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %9, i32 0
  %60 = load %str_slice** %__arg07
  call void @_ZN3fmt8argument20h4211752211325896242E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %59, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h12581982349783452866E, %str_slice* noalias dereferenceable(16) %60)
  %61 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec8, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %9, %"struct.core::fmt::Argument<[]>[#3]"** %61
  %62 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec8, i32 0, i32 1
  store i64 1, i64* %62
  %63 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust10, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([2 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, %str_slice, [48 x i8] }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @_ZN10local_heap12MemoryRegion4free15__STATIC_FMTSTR20h3fbdedd158832291hZbE to [2 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %63
  %64 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust10, i32 0, i32 1
  store i64 2, i64* %64
  %65 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec8, i32 0, i32 0
  %66 = load %"struct.core::fmt::Argument<[]>[#3]"** %65
  %67 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec8, i32 0, i32 1
  %68 = load i64* %67
  %69 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust11, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %66, %"struct.core::fmt::Argument<[]>[#3]"** %69
  %70 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust11, i32 0, i32 1
  store i64 %68, i64* %70
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20ha6fe0e7f75ee8de8araE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args9, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust10, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust11)
  call void @_ZN4util5abort20h0ca03d03e01bc130hHaE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args9)
  unreachable

join12:                                           ; No predecessors!
  unreachable

next-block13:                                     ; preds = %then-block-909-
  br label %next-block14

next-block14:                                     ; preds = %next-block2, %next-block13
  %71 = load %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  %72 = getelementptr inbounds %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* %71, i32 0, i32 0
  %73 = load i64* %72
  %74 = sub i64 %73, 1
  store i64 %74, i64* %72
  %75 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc3
  %76 = bitcast %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %75 to i8*
  store i8* %76, i8** %__arg
  %77 = load i8** %__arg
  call void @free(i8* %77)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument20h4211752211325896242E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %str_slice* noalias dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %f = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*
  %t = alloca %str_slice*
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* %1, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %str_slice* %2, %str_slice** %t
  %3 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 0
  %4 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %3 to %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)**
  %5 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* %5, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %4
  %6 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 1
  %7 = bitcast %"enum.core::fmt::Void<[]>[#3]"** %6 to %str_slice**
  %8 = load %str_slice** %t
  store %str_slice* %8, %str_slice** %7
  ret void
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show21h12581982349783452866E(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %x = alloca %str_slice*
  %fmt = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store %str_slice* %0, %str_slice** %x
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %2 = load %str_slice** %x
  %3 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %4 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22_$BP$$x27a$x20str.Show3fmt20hf827b502a0b3b7489VyE"(%str_slice* noalias dereferenceable(16) %2, %"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %3)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %4
}

declare %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22_$BP$$x27a$x20str.Show3fmt20hf827b502a0b3b7489VyE"(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20ha6fe0e7f75ee8de8araE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32), { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16), { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2 {
entry-block:
  %__adjust = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %3 = getelementptr inbounds %"struct.core::fmt::Arguments<[]>[#3]"* %0, i32 0, i32 0
  %4 = bitcast { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %1 to i8*
  %5 = bitcast { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 16, i32 8, i1 false)
  %6 = getelementptr inbounds %"struct.core::fmt::Arguments<[]>[#3]"* %0, i32 0, i32 1
  %7 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %2, i32 0, i32 0
  %8 = load %"struct.core::fmt::Argument<[]>[#3]"** %7
  %9 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %2, i32 0, i32 1
  %10 = load i64* %9
  %11 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %8, %"struct.core::fmt::Argument<[]>[#3]"** %11
  %12 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 %10, i64* %12
  %13 = bitcast { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust to i8*
  %14 = bitcast { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %13, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4util5abort20h0ca03d03e01bc130hHaE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32)) unnamed_addr #7

declare %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* @_ZN10local_heap11AllocHeader4from20h1e5e3819e8cbb242dTbE(%"struct.core::raw::Box<[()]>[#3]"*) unnamed_addr #1

declare void @_ZN10local_heap11AllocHeader11assert_sane20h0fd6b1b0a42260aa3RbE(%"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias nocapture) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap12MemoryRegion7release20h1069932422238131XraE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias nocapture dereferenceable(16), %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias nocapture) unnamed_addr #2 {
entry-block:
  %self = alloca %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"*
  %_alloc = alloca %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"*
  store %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* %0, %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  store %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %1, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %_alloc
  ret void
}

declare void @free(i8*) unnamed_addr #1

attributes #0 = { uwtable "split-stack" }
attributes #1 = { "split-stack" }
attributes #2 = { inlinehint uwtable "split-stack" }
attributes #3 = { alwaysinline uwtable "split-stack" }
attributes #4 = { nounwind "split-stack" }
attributes #5 = { nounwind readnone "split-stack" }
attributes #6 = { noinline uwtable "split-stack" }
attributes #7 = { noreturn "split-stack" }

!0 = metadata !{i8 0, i8 6}
!1 = metadata !{i8 0, i8 2}
