; ModuleID = 'hydra'
target datalayout = "e-i64:64-f80:128-n8:16:32:64"
target triple = "x86_64-apple-darwin"

%str_slice = type { i8*, i64 }
%"struct.core::intrinsics::TypeId<[]>[#3]" = type { i64 }
%"!range_gen" = type { i8*, i32, i32, i32 }
%"struct.HyObj<[]>" = type { %"enum.HyObjType<[]>" }
%"enum.HyObjType<[]>" = type { i8, [7 x i8], [3 x i64] }
%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" = type { i8*, i64 }
%"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" = type { i8, [0 x i8], [1 x i8] }
%"struct.core::fmt::Formatter<[]>[#3]" = type { i64, i32, i8, %"enum.core::option::Option<[uint]>[#3]", %"enum.core::option::Option<[uint]>[#3]", { void (i8*)**, i8* }, %"struct.core::slice::Items<[core::fmt::Argument]>[#3]", { %"struct.core::fmt::Argument<[]>[#3]"*, i64 } }
%"enum.core::option::Option<[uint]>[#3]" = type { i8, [7 x i8], [1 x i64] }
%"struct.core::slice::Items<[core::fmt::Argument]>[#3]" = type { %"struct.core::fmt::Argument<[]>[#3]"*, %"struct.core::fmt::Argument<[]>[#3]"*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::fmt::Argument<[]>[#3]" = type { %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %"enum.core::fmt::Void<[]>[#3]"* }
%"enum.core::fmt::Void<[]>[#3]" = type {}
%"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" = type {}
%"struct.core::fmt::Arguments<[]>[#3]" = type { { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 } }
%"enum.core::fmt::rt::Piece<[]>[#3]" = type { i8, [7 x i8], [8 x i64] }
%"struct.rustrt::local_heap::AllocHeader<[]>[#9]" = type {}
%"struct.core::raw::Box<[()]>[#3]" = type { i64, void (i8*)*, %"struct.core::raw::Box<[()]>[#3]"*, %"struct.core::raw::Box<[()]>[#3]"*, {} }
%"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]" = type { i64, void (i32, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*)*, [6 x i64] }
%"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]" = type {}
%"struct.collections::string::String<[]>[#6]" = type { %"struct.collections::vec::Vec<[u8]>[#6]" }
%"struct.collections::vec::Vec<[u8]>[#6]" = type { i64, i64, i8* }
%"struct.rustrt::c_str::CString<[]>[#9]" = type { i8*, i8, i8 }
%"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]" = type { i64, i64, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** }
%"struct.core::raw::Slice<[i8]>[#3]" = type { i8*, i64 }
%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]" = type { i8, [7 x i8], [1 x i64] }
%"struct.rustrt::task::Task<[]>[#9]" = type { %"struct.rustrt::local_heap::LocalHeap<[]>[#9]", %"struct.rustrt::task::GarbageCollector<[]>[#9]", %"struct.rustrt::task::LocalStorage<[]>[#9]", %"struct.rustrt::unwind::Unwinder<[]>[#9]", %"struct.rustrt::task::Death<[]>[#9]", %"enum.core::option::Option<[collections::str::MaybeOwned]>[#3]", i8, %"enum.core::option::Option<[Box<rustrt::Runtime:Send>]>[#3]", i8 }
%"struct.rustrt::local_heap::LocalHeap<[]>[#9]" = type { %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]", %"struct.core::raw::Box<[()]>[#3]"*, i8 }
%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]" = type { i64, i8 }
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
%"struct.core::iter::Range<[uint]>[#3]" = type { i64, i64, i64 }
%"struct.core::slice::Items<[u8]>[#3]" = type { i8*, i8*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::raw::Slice<[u8]>[#3]" = type { i8*, i64 }
%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]" = type { %"struct.collections::string::String<[]>[#6]", { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*, i8*, i8*, i64 }
%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" = type { i8* }
%"struct.core::slice::Items<[Gc<HyObj>]>[#3]" = type { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]" = type { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }
%squares = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@_ZN9local_ptr8compiled10RT_TLS_PTR20h105e8dd88d5b0520anaE = available_externally thread_local global i8* null
@_ZN4util14ENFORCE_SANITY20h859984a9e25719baHFaE = available_externally constant i1 true
@str1644 = internal constant [16 x i8] c"!alloc.is_null()"
@str1699 = internal constant [19 x i8] c" assertion failed: "
@_ZN10local_heap12MemoryRegion4free15__STATIC_FMTSTR20h3fbdedd158832291SXbE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([19 x i8]* @str1699, i32 0, i32 0), i64 19 }, [48 x i8] undef }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1701 = internal constant [25 x i8] c"self.live_allocations > 0"
@_ZN10local_heap12MemoryRegion4free15__STATIC_FMTSTR20h3fbdedd158832291hZbE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([19 x i8]* @str1699, i32 0, i32 0), i64 19 }, [48 x i8] undef }, { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1705 = internal constant [26 x i8] c"local free outside of task"
@_ZN10local_heap10local_free15__STATIC_FMTSTR20h4e4516024f787479F4bE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([26 x i8]* @str1705, i32 0, i32 0), i64 26 }, [48 x i8] undef } }
@str1721 = internal constant [28 x i8] c"assertion failed: align != 0"
@_ZN4util8align_to15__STATIC_FMTSTR20h44a31ebe05f5633fxmaE = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1724 = internal constant [79 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/liballoc/util.rs"
@_ZN4util8align_to8_run_fmt10_FILE_LINE20hb822f8b6378d3fd88laE = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([79 x i8]* @str1724, i32 0, i32 0), i64 79 }, i64 28 }
@str1733 = internal constant [28 x i8] c"local malloc outside of task"
@_ZN10local_heap12local_malloc15__STATIC_FMTSTR20h4e4516024f787479l3bE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([28 x i8]* @str1733, i32 0, i32 0), i64 28 }, [48 x i8] undef } }
@_ZN3vec10PTR_MARKER20hd0730fd7e79c68f4HgiE = available_externally constant i8 0
@str1801 = internal constant [40 x i8] c"Vec::reserve_additional: `uint` overflow"
@"_ZN3vec12Vec$LT$T$GT$18reserve_additional15__STATIC_FMTSTR20hc4afdecb9c205274fyiE" = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1803 = internal constant [84 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/libcollections/vec.rs"
@"_ZN3vec12Vec$LT$T$GT$18reserve_additional8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dQxiE" = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([84 x i8]* @str1803, i32 0, i32 0), i64 84 }, i64 585 }
@"_ZN6option15Option$LT$T$GT$6expect15__STATIC_FMTSTR20h79b308b23b8faec4humE" = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1827 = internal constant [80 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/libcore/option.rs"
@"_ZN6option15Option$LT$T$GT$6expect8_run_fmt10_FILE_LINE20h9519b9138055b1fdStmE" = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([80 x i8]* @str1827, i32 0, i32 0), i64 80 }, i64 243 }
@str1831 = internal constant [17 x i8] c"capacity overflow"
@str2000 = internal constant [48 x i8] c"called `Option::take_unwrap()` on a `None` value"
@"_ZN6option15Option$LT$T$GT$11take_unwrap15__STATIC_FMTSTR20h79b308b23b8faec4KDmE" = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt10_FILE_LINE20h9519b9138055b1fdlDmE" = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([80 x i8]* @str1827, i32 0, i32 0), i64 80 }, i64 440 }
@_ZN4heap5EMPTY20hbfe5b9a4d3c56c6f8baE = available_externally global i64 12345
@vtable2041 = internal constant { void (i8**)*, %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* } { void (i8**)* @"_ZN13Box$LT$i8$GT$14glue_drop.203017h5fc032921da6b05fE", %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* @_ZN3any12T.AnyPrivate11get_type_id20h7332783173006388575E }
@str2042 = internal constant [26 x i8] c"Maps only take string keys"
@str2043 = internal constant [31 x i8] c"src/lib/lib_hy_obj/src/HyObj.rs"
@_ZN5HyObj13hy_map_insert10_FILE_LINE20h32ad3c478586743axdaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([31 x i8]* @str2043, i32 0, i32 0), i64 31 }, i64 92 }
@str2044 = internal constant [51 x i8] c"Called hy_map_insert on an object that is not a Map"
@_ZN5HyObj13hy_map_insert10_FILE_LINE20h32ad3c478586743aRdaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([31 x i8]* @str2043, i32 0, i32 0), i64 31 }, i64 95 }
@str2072 = internal constant [16 x i8] c"explicit failure"
@_ZN7treemap6remove15__STATIC_FMTSTR20hc4afdecb9c2052741zfE = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str2074 = internal constant [88 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/libcollections/treemap.rs"
@_ZN7treemap6remove8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dCzfE = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([88 x i8]* @str2074, i32 0, i32 0), i64 88 }, i64 1619 }
@_ZN5HyObj13hy_map_delete10_FILE_LINE20h32ad3c478586743aJeaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([31 x i8]* @str2043, i32 0, i32 0), i64 31 }, i64 107 }
@str2075 = internal constant [51 x i8] c"Called hy_map_delete on an object that is not a Map"
@_ZN5HyObj13hy_map_delete10_FILE_LINE20h32ad3c478586743a3eaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([31 x i8]* @str2043, i32 0, i32 0), i64 31 }, i64 110 }
@_ZN5HyObj15hy_map_contains10_FILE_LINE20h32ad3c478586743aVfaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([31 x i8]* @str2043, i32 0, i32 0), i64 31 }, i64 122 }
@str2087 = internal constant [53 x i8] c"Called hy_map_contains on an object that is not a Map"
@_ZN5HyObj15hy_map_contains10_FILE_LINE20h32ad3c478586743afgaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([31 x i8]* @str2043, i32 0, i32 0), i64 31 }, i64 125 }
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

; Function Attrs: uwtable
define { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @new_hy_map() unnamed_addr #0 {
entry-block:
  %0 = alloca { i8*, i32 }
  %1 = call i8* @_ZN10local_heap13local_malloc_20h5b12cbfeb508924bMyaE(void (i8*)* bitcast (void (%"struct.HyObj<[]>"*)* @_ZN5HyObj14glue_drop.133517hff1450ea78245567E to void (i8*)*), i64 32, i64 8)
  %2 = bitcast i8* %1 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, i32 0, i32 4
  %4 = getelementptr inbounds %"struct.HyObj<[]>"* %3, i32 0, i32 0
  %5 = bitcast %"enum.HyObjType<[]>"* %4 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }*
  %6 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }* %5, i32 0, i32 1
  invoke void @"_ZN7treemap24TreeMap$LT$K$C$$x20V$GT$3new20h3413267337880494448E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias nocapture sret dereferenceable(16) %6)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %7 = getelementptr inbounds %"enum.HyObjType<[]>"* %4, i32 0, i32 0
  store i8 0, i8* %7
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2

unwind_custom_:                                   ; preds = %entry-block
  %8 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %8, { i8*, i32 }* %0
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %9 = load { i8*, i32 }* %0
  resume { i8*, i32 } %9

clean_custom_:                                    ; preds = %unwind_custom_
  %10 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2 to i8*
  call void @_ZN10local_heap11local_free_20hfa0ef76b97be92904oaE(i8* %10)
  br label %resume
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) unnamed_addr #1

declare void @je_dallocx(i8*, i32) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) unnamed_addr #3

declare %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22_$BP$$x27a$x20str.Show3fmt20hf827b502a0b3b7489VyE"(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN4util5abort20h0ca03d03e01bc130hHaE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32)) unnamed_addr #4

declare %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* @_ZN10local_heap11AllocHeader4from20h1e5e3819e8cbb242dTbE(%"struct.core::raw::Box<[()]>[#3]"*) unnamed_addr #2

declare void @_ZN10local_heap11AllocHeader11assert_sane20h0fd6b1b0a42260aa3RbE(%"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias nocapture) unnamed_addr #2

declare void @free(i8*) unnamed_addr #2

; Function Attrs: cold noinline noreturn
declare void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32), { %str_slice, i64 }* noalias nocapture dereferenceable(24)) unnamed_addr #5

declare i64 @_ZN10local_heap11AllocHeader4size20h2b05783194a246e1KSbE() unnamed_addr #2

declare i8* @malloc(i64) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN3oom20h70228b11624052eclRaE() unnamed_addr #4

declare void @_ZN10local_heap11AllocHeader4init20hed1508c9cf9afc39TRbE(%"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias nocapture, i32) unnamed_addr #2

declare %"struct.core::raw::Box<[()]>[#3]"* @_ZN10local_heap11AllocHeader6as_box20had843ebd1f8d9fb0jSbE(%"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias nocapture) unnamed_addr #2

declare i32 @rust_eh_personality(i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*) unnamed_addr #2

; Function Attrs: uwtable
define { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @new_hy_string(i8*) unnamed_addr #0 {
entry-block:
  %buf = alloca i8*
  %s = alloca %"struct.collections::string::String<[]>[#6]"
  %c_str = alloca %"struct.rustrt::c_str::CString<[]>[#9]"
  %1 = alloca { i8*, i32 }
  %2 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  store i8* %0, i8** %buf
  call void @_ZN6string6String3new20h19a08df8ec4fe09aQHaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %s)
  %3 = load i8** %buf
  invoke void @_ZN5c_str7CString3new20h34895b63ae630fccEZaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %c_str, i8* %3, i1 zeroext true)
          to label %normal-return unwind label %unwind_ast_73_

normal-return:                                    ; preds = %entry-block
  invoke void @_ZN5c_str7CString8as_bytes20h91c9687d45f10e37A1aE({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.rustrt::c_str::CString<[]>[#9]"* noalias dereferenceable(16) %c_str)
          to label %normal-return1 unwind label %unwind_ast_82_

unwind_ast_73_:                                   ; preds = %normal-return2, %entry-block
  %4 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %4, { i8*, i32 }* %1
  br label %clean_ast_73_

resume:                                           ; preds = %clean_custom_
  %5 = load { i8*, i32 }* %1
  resume { i8*, i32 } %5

clean_custom_:                                    ; preds = %clean_ast_73_
  br label %resume

clean_ast_73_:                                    ; preds = %clean_ast_82_, %unwind_ast_73_
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %s)
  br label %clean_custom_

normal-return1:                                   ; preds = %normal-return
  %6 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 0
  %7 = load i8** %6
  %8 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 1
  %9 = load i64* %8
  %10 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %7, i8** %10
  %11 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %9, i64* %11
  invoke void @_ZN6string6String10push_bytes20h49491aa193ab029dmIaE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %s, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
          to label %normal-return2 unwind label %unwind_ast_82_

unwind_ast_82_:                                   ; preds = %normal-return1, %normal-return
  %12 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %12, { i8*, i32 }* %1
  br label %clean_ast_82_

clean_ast_82_:                                    ; preds = %unwind_ast_82_
  call void @_ZN22rustrt..c_str..CString14glue_drop.189817h7179bfde940578beE(%"struct.rustrt::c_str::CString<[]>[#9]"* %c_str)
  br label %clean_ast_73_

normal-return2:                                   ; preds = %normal-return1
  call void @_ZN22rustrt..c_str..CString14glue_drop.189817h7179bfde940578beE(%"struct.rustrt::c_str::CString<[]>[#9]"* %c_str)
  %13 = invoke i8* @_ZN10local_heap13local_malloc_20h5b12cbfeb508924bMyaE(void (i8*)* bitcast (void (%"struct.HyObj<[]>"*)* @_ZN5HyObj14glue_drop.133517hff1450ea78245567E to void (i8*)*), i64 32, i64 8)
          to label %normal-return3 unwind label %unwind_ast_73_

normal-return3:                                   ; preds = %normal-return2
  %14 = bitcast i8* %13 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %15 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %14, i32 0, i32 4
  %16 = getelementptr inbounds %"struct.HyObj<[]>"* %15, i32 0, i32 0
  %17 = bitcast %"enum.HyObjType<[]>"* %16 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %18 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %17, i32 0, i32 1
  %19 = bitcast %"struct.collections::string::String<[]>[#6]"* %s to i8*
  %20 = bitcast %"struct.collections::string::String<[]>[#6]"* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %19, i64 24, i32 8, i1 false)
  %21 = bitcast %"struct.collections::string::String<[]>[#6]"* %s to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 24, i32 8, i1 false)
  %22 = getelementptr inbounds %"enum.HyObjType<[]>"* %16, i32 0, i32 0
  store i8 1, i8* %22
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %s)
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %14
}

declare void @_ZN5c_str7CString3new20h34895b63ae630fccEZaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16), i8*, i1 zeroext) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) unnamed_addr #3

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) unnamed_addr #3

declare i8* @je_mallocx(i64, i32) unnamed_addr #2

declare i8* @je_rallocx(i8*, i64, i32) unnamed_addr #2

declare void @_ZN5c_str12CString.Drop4drop20hdec0db6cd0db6838u4aE(%"struct.rustrt::c_str::CString<[]>[#9]"*) unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) unnamed_addr #1

; Function Attrs: uwtable
define { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @new_hy_int(i64) unnamed_addr #0 {
entry-block:
  %i = alloca i64
  store i64 %0, i64* %i
  %1 = call i8* @_ZN10local_heap13local_malloc_20h5b12cbfeb508924bMyaE(void (i8*)* bitcast (void (%"struct.HyObj<[]>"*)* @_ZN5HyObj14glue_drop.133517hff1450ea78245567E to void (i8*)*), i64 32, i64 8)
  %2 = bitcast i8* %1 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, i32 0, i32 4
  %4 = getelementptr inbounds %"struct.HyObj<[]>"* %3, i32 0, i32 0
  %5 = bitcast %"enum.HyObjType<[]>"* %4 to { i8, i64 }*
  %6 = getelementptr inbounds { i8, i64 }* %5, i32 0, i32 1
  %7 = load i64* %i
  store i64 %7, i64* %6
  %8 = getelementptr inbounds %"enum.HyObjType<[]>"* %4, i32 0, i32 0
  store i8 2, i8* %8
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2
}

; Function Attrs: uwtable
define { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @new_hy_float(double) unnamed_addr #0 {
entry-block:
  %f = alloca double
  store double %0, double* %f
  %1 = call i8* @_ZN10local_heap13local_malloc_20h5b12cbfeb508924bMyaE(void (i8*)* bitcast (void (%"struct.HyObj<[]>"*)* @_ZN5HyObj14glue_drop.133517hff1450ea78245567E to void (i8*)*), i64 32, i64 8)
  %2 = bitcast i8* %1 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, i32 0, i32 4
  %4 = getelementptr inbounds %"struct.HyObj<[]>"* %3, i32 0, i32 0
  %5 = bitcast %"enum.HyObjType<[]>"* %4 to { i8, double }*
  %6 = getelementptr inbounds { i8, double }* %5, i32 0, i32 1
  %7 = load double* %f
  store double %7, double* %6
  %8 = getelementptr inbounds %"enum.HyObjType<[]>"* %4, i32 0, i32 0
  store i8 3, i8* %8
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2
}

; Function Attrs: uwtable
define { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @new_hy_array() unnamed_addr #0 {
entry-block:
  %0 = alloca { i8*, i32 }
  %1 = call i8* @_ZN10local_heap13local_malloc_20h5b12cbfeb508924bMyaE(void (i8*)* bitcast (void (%"struct.HyObj<[]>"*)* @_ZN5HyObj14glue_drop.133517hff1450ea78245567E to void (i8*)*), i64 32, i64 8)
  %2 = bitcast i8* %1 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, i32 0, i32 4
  %4 = getelementptr inbounds %"struct.HyObj<[]>"* %3, i32 0, i32 0
  %5 = bitcast %"enum.HyObjType<[]>"* %4 to { i8, %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]" }*
  %6 = getelementptr inbounds { i8, %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]" }* %5, i32 0, i32 1
  invoke void @"_ZN3vec12Vec$LT$T$GT$3new21h11147838207761087687E"(%"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* noalias nocapture sret dereferenceable(24) %6)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %7 = getelementptr inbounds %"enum.HyObjType<[]>"* %4, i32 0, i32 0
  store i8 4, i8* %7
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2

unwind_custom_:                                   ; preds = %entry-block
  %8 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %8, { i8*, i32 }* %0
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %9 = load { i8*, i32 }* %0
  resume { i8*, i32 } %9

clean_custom_:                                    ; preds = %unwind_custom_
  %10 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2 to i8*
  call void @_ZN10local_heap11local_free_20hfa0ef76b97be92904oaE(i8* %10)
  br label %resume
}

; Function Attrs: uwtable
define { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @new_hy_bool(i1 zeroext) unnamed_addr #0 {
entry-block:
  %b = alloca i8
  %1 = zext i1 %0 to i8
  store i8 %1, i8* %b
  %2 = call i8* @_ZN10local_heap13local_malloc_20h5b12cbfeb508924bMyaE(void (i8*)* bitcast (void (%"struct.HyObj<[]>"*)* @_ZN5HyObj14glue_drop.133517hff1450ea78245567E to void (i8*)*), i64 32, i64 8)
  %3 = bitcast i8* %2 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %4 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %3, i32 0, i32 4
  %5 = getelementptr inbounds %"struct.HyObj<[]>"* %4, i32 0, i32 0
  %6 = bitcast %"enum.HyObjType<[]>"* %5 to { i8, i8 }*
  %7 = getelementptr inbounds { i8, i8 }* %6, i32 0, i32 1
  %8 = load i8* %b
  store i8 %8, i8* %7
  %9 = getelementptr inbounds %"enum.HyObjType<[]>"* %5, i32 0, i32 0
  store i8 5, i8* %9
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %3
}

; Function Attrs: uwtable
define { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @hy_map_insert(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.HyObj<[]>"*
  %key = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %val = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %m = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*
  %s = alloca %"struct.collections::string::String<[]>[#6]"*
  %3 = alloca i8
  %4 = alloca %"struct.collections::string::String<[]>[#6]"
  %5 = alloca { i8*, i32 }
  %6 = alloca %str_slice
  %7 = alloca %str_slice
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %self
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %1, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %val
  %8 = load %"struct.HyObj<[]>"** %self
  %9 = getelementptr inbounds %"struct.HyObj<[]>"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"enum.HyObjType<[]>"* %9, i32 0, i32 0
  %11 = load i8* %10, !range !0
  switch i8 %11, label %match_else [
    i8 0, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %12 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key
  %13 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %12, i32 0, i32 4
  %14 = getelementptr inbounds %"struct.HyObj<[]>"* %13, i32 0, i32 0
  %15 = getelementptr inbounds %"enum.HyObjType<[]>"* %14, i32 0, i32 0
  %16 = load i8* %15, !range !0
  switch i8 %16, label %match_else4 [
    i8 1, label %match_case5
  ]

case_body1:                                       ; preds = %match_else
  %17 = getelementptr inbounds %str_slice* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([51 x i8]* @str2044, i32 0, i32 0), i8** %17
  %18 = getelementptr inbounds %str_slice* %7, i32 0, i32 1
  store i64 51, i64* %18
  invoke void @_ZN6unwind12begin_unwind21h12307584069254310276E(%str_slice* noalias nocapture dereferenceable(16) %7, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_insert10_FILE_LINE20h32ad3c478586743aRdaE)
          to label %normal-return9 unwind label %unwind_custom_

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %19 = bitcast %"enum.HyObjType<[]>"* %9 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }*
  %20 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }* %19, i32 0, i32 1
  store %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %20, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %m
  br label %case_body

case_body2:                                       ; preds = %match_case5
  %21 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %m
  %22 = load %"struct.collections::string::String<[]>[#6]"** %s
  invoke void @_ZN6string26String...std..clone..Clone5clone20h3ae69c3472869db0ojbE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %4, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %22)
          to label %normal-return unwind label %unwind_custom_

case_body3:                                       ; preds = %match_else4
  %23 = getelementptr inbounds %str_slice* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8]* @str2042, i32 0, i32 0), i8** %23
  %24 = getelementptr inbounds %str_slice* %6, i32 0, i32 1
  store i64 26, i64* %24
  invoke void @_ZN6unwind12begin_unwind21h12307584069254310276E(%str_slice* noalias nocapture dereferenceable(16) %6, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_insert10_FILE_LINE20h32ad3c478586743axdaE)
          to label %normal-return8 unwind label %unwind_custom_

match_else4:                                      ; preds = %case_body
  br label %case_body3

match_case5:                                      ; preds = %case_body
  %25 = bitcast %"enum.HyObjType<[]>"* %14 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %26 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %25, i32 0, i32 1
  store %"struct.collections::string::String<[]>[#6]"* %26, %"struct.collections::string::String<[]>[#6]"** %s
  br label %case_body2

normal-return:                                    ; preds = %case_body2
  %27 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %val
  %28 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %val
  %29 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %28, i32 0, i32 0
  %30 = load i64* %29
  %31 = add i64 %30, 1
  store i64 %31, i64* %29
  %32 = invoke zeroext i1 @_ZN10MutableMap6insert21h14248889882543194343E(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(16) %21, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %4, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %27)
          to label %normal-return6 unwind label %unwind_custom_

unwind_custom_:                                   ; preds = %normal-return6, %normal-return, %case_body3, %case_body2, %case_body1
  %33 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %33, { i8*, i32 }* %5
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %34 = load { i8*, i32 }* %5
  resume { i8*, i32 } %34

clean_custom_:                                    ; preds = %unwind_custom_
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %val)
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key)
  br label %resume

normal-return6:                                   ; preds = %normal-return
  %35 = zext i1 %32 to i8
  store i8 %35, i8* %3
  %36 = load i8* %3, !range !1
  %37 = trunc i8 %36 to i1
  %38 = invoke { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @new_hy_bool(i1 zeroext %37)
          to label %normal-return7 unwind label %unwind_custom_

normal-return7:                                   ; preds = %normal-return6
  br label %join

normal-return8:                                   ; preds = %case_body3
  unreachable

join:                                             ; preds = %normal-return7
  br label %join10

normal-return9:                                   ; preds = %case_body1
  unreachable

join10:                                           ; preds = %join
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %val)
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key)
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %38
}

; Function Attrs: cold noinline noreturn
declare void @_ZN6unwind18begin_unwind_inner20h7c6fecebc6991c8bS5dE({ void (i8*)**, i8* }* noalias nocapture dereferenceable(16), { %str_slice, i64 }* noalias nocapture dereferenceable(24)) unnamed_addr #5

; Function Attrs: uwtable
define { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @hy_map_delete(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.HyObj<[]>"*
  %key = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %m = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*
  %s = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca i8
  %3 = alloca { i8*, i32 }
  %4 = alloca %str_slice
  %5 = alloca %str_slice
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %self
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %1, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key
  %6 = load %"struct.HyObj<[]>"** %self
  %7 = getelementptr inbounds %"struct.HyObj<[]>"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"enum.HyObjType<[]>"* %7, i32 0, i32 0
  %9 = load i8* %8, !range !0
  switch i8 %9, label %match_else [
    i8 0, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %10 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key
  %11 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %10, i32 0, i32 4
  %12 = getelementptr inbounds %"struct.HyObj<[]>"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"enum.HyObjType<[]>"* %12, i32 0, i32 0
  %14 = load i8* %13, !range !0
  switch i8 %14, label %match_else4 [
    i8 1, label %match_case5
  ]

case_body1:                                       ; preds = %match_else
  %15 = getelementptr inbounds %str_slice* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([51 x i8]* @str2075, i32 0, i32 0), i8** %15
  %16 = getelementptr inbounds %str_slice* %5, i32 0, i32 1
  store i64 51, i64* %16
  invoke void @_ZN6unwind12begin_unwind21h12307584069254310276E(%str_slice* noalias nocapture dereferenceable(16) %5, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_delete10_FILE_LINE20h32ad3c478586743a3eaE)
          to label %normal-return8 unwind label %unwind_custom_

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %17 = bitcast %"enum.HyObjType<[]>"* %7 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }*
  %18 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }* %17, i32 0, i32 1
  store %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %18, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %m
  br label %case_body

case_body2:                                       ; preds = %match_case5
  %19 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %m
  %20 = load %"struct.collections::string::String<[]>[#6]"** %s
  %21 = invoke zeroext i1 @_ZN10MutableMap6remove21h15344945931590771762E(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(16) %19, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %20)
          to label %normal-return unwind label %unwind_custom_

case_body3:                                       ; preds = %match_else4
  %22 = getelementptr inbounds %str_slice* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8]* @str2042, i32 0, i32 0), i8** %22
  %23 = getelementptr inbounds %str_slice* %4, i32 0, i32 1
  store i64 26, i64* %23
  invoke void @_ZN6unwind12begin_unwind21h12307584069254310276E(%str_slice* noalias nocapture dereferenceable(16) %4, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_delete10_FILE_LINE20h32ad3c478586743aJeaE)
          to label %normal-return7 unwind label %unwind_custom_

match_else4:                                      ; preds = %case_body
  br label %case_body3

match_case5:                                      ; preds = %case_body
  %24 = bitcast %"enum.HyObjType<[]>"* %12 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %25 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %24, i32 0, i32 1
  store %"struct.collections::string::String<[]>[#6]"* %25, %"struct.collections::string::String<[]>[#6]"** %s
  br label %case_body2

normal-return:                                    ; preds = %case_body2
  %26 = zext i1 %21 to i8
  store i8 %26, i8* %2
  %27 = load i8* %2, !range !1
  %28 = trunc i8 %27 to i1
  %29 = invoke { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @new_hy_bool(i1 zeroext %28)
          to label %normal-return6 unwind label %unwind_custom_

unwind_custom_:                                   ; preds = %normal-return, %case_body3, %case_body2, %case_body1
  %30 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %30, { i8*, i32 }* %3
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %31 = load { i8*, i32 }* %3
  resume { i8*, i32 } %31

clean_custom_:                                    ; preds = %unwind_custom_
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key)
  br label %resume

normal-return6:                                   ; preds = %normal-return
  br label %join

normal-return7:                                   ; preds = %case_body3
  unreachable

join:                                             ; preds = %normal-return6
  br label %join9

normal-return8:                                   ; preds = %case_body1
  unreachable

join9:                                            ; preds = %join
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key)
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %29
}

; Function Attrs: uwtable
define { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @hy_map_contains(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.HyObj<[]>"*
  %key = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %m = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*
  %s = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca i8
  %3 = alloca { i8*, i32 }
  %4 = alloca %str_slice
  %5 = alloca %str_slice
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %self
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %1, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key
  %6 = load %"struct.HyObj<[]>"** %self
  %7 = getelementptr inbounds %"struct.HyObj<[]>"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"enum.HyObjType<[]>"* %7, i32 0, i32 0
  %9 = load i8* %8, !range !0
  switch i8 %9, label %match_else [
    i8 0, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %10 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key
  %11 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %10, i32 0, i32 4
  %12 = getelementptr inbounds %"struct.HyObj<[]>"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"enum.HyObjType<[]>"* %12, i32 0, i32 0
  %14 = load i8* %13, !range !0
  switch i8 %14, label %match_else4 [
    i8 1, label %match_case5
  ]

case_body1:                                       ; preds = %match_else
  %15 = getelementptr inbounds %str_slice* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([53 x i8]* @str2087, i32 0, i32 0), i8** %15
  %16 = getelementptr inbounds %str_slice* %5, i32 0, i32 1
  store i64 53, i64* %16
  invoke void @_ZN6unwind12begin_unwind21h12307584069254310276E(%str_slice* noalias nocapture dereferenceable(16) %5, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj15hy_map_contains10_FILE_LINE20h32ad3c478586743afgaE)
          to label %normal-return8 unwind label %unwind_custom_

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %17 = bitcast %"enum.HyObjType<[]>"* %7 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }*
  %18 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }* %17, i32 0, i32 1
  store %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %18, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %m
  br label %case_body

case_body2:                                       ; preds = %match_case5
  %19 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %m
  %20 = load %"struct.collections::string::String<[]>[#6]"** %s
  %21 = invoke zeroext i1 @_ZN3Map12contains_key19h167486787319164558E(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(16) %19, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %20)
          to label %normal-return unwind label %unwind_custom_

case_body3:                                       ; preds = %match_else4
  %22 = getelementptr inbounds %str_slice* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8]* @str2042, i32 0, i32 0), i8** %22
  %23 = getelementptr inbounds %str_slice* %4, i32 0, i32 1
  store i64 26, i64* %23
  invoke void @_ZN6unwind12begin_unwind21h12307584069254310276E(%str_slice* noalias nocapture dereferenceable(16) %4, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj15hy_map_contains10_FILE_LINE20h32ad3c478586743aVfaE)
          to label %normal-return7 unwind label %unwind_custom_

match_else4:                                      ; preds = %case_body
  br label %case_body3

match_case5:                                      ; preds = %case_body
  %24 = bitcast %"enum.HyObjType<[]>"* %12 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %25 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %24, i32 0, i32 1
  store %"struct.collections::string::String<[]>[#6]"* %25, %"struct.collections::string::String<[]>[#6]"** %s
  br label %case_body2

normal-return:                                    ; preds = %case_body2
  %26 = zext i1 %21 to i8
  store i8 %26, i8* %2
  %27 = load i8* %2, !range !1
  %28 = trunc i8 %27 to i1
  %29 = invoke { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @new_hy_bool(i1 zeroext %28)
          to label %normal-return6 unwind label %unwind_custom_

unwind_custom_:                                   ; preds = %normal-return, %case_body3, %case_body2, %case_body1
  %30 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %30, { i8*, i32 }* %3
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %31 = load { i8*, i32 }* %3
  resume { i8*, i32 } %31

clean_custom_:                                    ; preds = %unwind_custom_
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key)
  br label %resume

normal-return6:                                   ; preds = %normal-return
  br label %join

normal-return7:                                   ; preds = %case_body3
  unreachable

join:                                             ; preds = %normal-return6
  br label %join9

normal-return8:                                   ; preds = %case_body1
  unreachable

join9:                                            ; preds = %join
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %key)
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %29
}

define internal void @_ZN5HyObj14glue_drop.133517hff1450ea78245567E(%"struct.HyObj<[]>"*) unnamed_addr #2 {
entry-block:
  %1 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  call void @_ZN9HyObjType14glue_drop.133717hd16c806f8aa1635aE(%"enum.HyObjType<[]>"* %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN10local_heap13local_malloc_20h5b12cbfeb508924bMyaE(void (i8*)*, i64, i64) unnamed_addr #6 {
entry-block:
  %drop_glue = alloca void (i8*)*
  %size = alloca i64
  %align = alloca i64
  store void (i8*)* %0, void (i8*)** %drop_glue
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  %3 = load void (i8*)** %drop_glue
  %4 = load i64* %size
  %5 = load i64* %align
  %6 = call i8* @_ZN10local_heap12local_malloc20he3943d7433d665f2ezaE(void (i8*)* %3, i64 %4, i64 %5)
  ret i8* %6
}

; Function Attrs: uwtable
define internal void @"_ZN7treemap24TreeMap$LT$K$C$$x20V$GT$3new20h3413267337880494448E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 0
  store i8* null, i8** %1
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 1
  store i64 0, i64* %2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap11local_free_20hfa0ef76b97be92904oaE(i8*) unnamed_addr #6 {
entry-block:
  %ptr = alloca i8*
  store i8* %0, i8** %ptr
  %1 = load i8** %ptr
  call void @_ZN10local_heap10local_free20he7910e45a4e2e467gpaE(i8* %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string6String3new20h19a08df8ec4fe09aQHaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN3vec12Vec$LT$T$GT$3new21h10644285894724958072E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5c_str7CString8as_bytes20h91c9687d45f10e37A1aE({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.rustrt::c_str::CString<[]>[#9]"* noalias dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.rustrt::c_str::CString<[]>[#9]"*
  %2 = alloca i64
  store %"struct.rustrt::c_str::CString<[]>[#9]"* %1, %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %3 = bitcast { i8*, i64 }* %0 to %"struct.core::raw::Slice<[i8]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[i8]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %6 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %5, i32 0, i32 0
  %7 = load i8** %6
  store i8* %7, i8** %4
  %8 = getelementptr inbounds %"struct.core::raw::Slice<[i8]>[#3]"* %3, i32 0, i32 1
  %9 = load %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %10 = call i64 @_ZN5c_str18CString.Collection3len20h95e6197b2a30798bY1aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias dereferenceable(16) %9)
  store i64 %10, i64* %2
  %11 = load i64* %2
  %12 = add i64 %11, 1
  store i64 %12, i64* %8
  ret void
}

define internal void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"*) unnamed_addr #2 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.135717h3c9cc7b6dddbad91E"(%"struct.collections::vec::Vec<[u8]>[#6]"* %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string6String10push_bytes20h49491aa193ab029dmIaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  %__adjust = alloca { i8*, i64 }
  store %"struct.collections::string::String<[]>[#6]"* %0, %"struct.collections::string::String<[]>[#6]"** %self
  %2 = load %"struct.collections::string::String<[]>[#6]"** %self
  %3 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %2, i32 0, i32 0
  %4 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 0
  %5 = load i8** %4
  %6 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 1
  %7 = load i64* %6
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %5, i8** %8
  %9 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %7, i64* %9
  call void @"_ZN3vec12Vec$LT$T$GT$8push_all20h9212719881183610573E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %3, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  ret void
}

define internal void @_ZN22rustrt..c_str..CString14glue_drop.189817h7179bfde940578beE(%"struct.rustrt::c_str::CString<[]>[#9]"*) unnamed_addr #2 {
entry-block:
  %1 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %0, i32 0, i32 2
  %2 = load i8* %1, !range !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %cond, label %next

next:                                             ; preds = %cond, %entry-block
  ret void

cond:                                             ; preds = %entry-block
  %4 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %0, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %0, i32 0, i32 1
  %6 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %0, i32 0, i32 2
  call void @_ZN5c_str12CString.Drop4drop20hdec0db6cd0db6838u4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %0)
  br label %next
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$3new21h11147838207761087687E"(%"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %0, i32 0, i32 0
  store i64 0, i64* %1
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %0, i32 0, i32 1
  store i64 0, i64* %2
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %0, i32 0, i32 2
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** bitcast (i8* @_ZN3vec10PTR_MARKER20hd0730fd7e79c68f4HgiE to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %3
  ret void
}

; Function Attrs: cold noinline noreturn uwtable
define internal void @_ZN6unwind12begin_unwind21h12307584069254310276E(%str_slice* noalias nocapture dereferenceable(16), { %str_slice, i64 }* noalias nocapture dereferenceable(24)) unnamed_addr #7 {
entry-block:
  %file_line = alloca { %str_slice, i64 }*
  %__adjust = alloca { void (i8*)**, i8* }
  store { %str_slice, i64 }* %1, { %str_slice, i64 }** %file_line
  %2 = call i8* @_ZN4heap15exchange_malloc20h3bd17605d43dc3c1nibE(i64 16, i64 8)
  %3 = bitcast i8* %2 to %str_slice*
  %4 = bitcast %str_slice* %0 to i8*
  %5 = bitcast %str_slice* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 16, i32 8, i1 false)
  %6 = getelementptr inbounds { void (i8*)**, i8* }* %__adjust, i32 0, i32 1
  %7 = bitcast i8** %6 to %str_slice**
  store %str_slice* %3, %str_slice** %7
  %8 = getelementptr inbounds { void (i8*)**, i8* }* %__adjust, i32 0, i32 0
  %9 = bitcast void (i8*)*** %8 to { void (i8**)*, %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* }**
  store { void (i8**)*, %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* }* @vtable2041, { void (i8**)*, %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* }** %9
  %10 = load { %str_slice, i64 }** %file_line
  call void @_ZN6unwind18begin_unwind_inner20h7c6fecebc6991c8bS5dE({ void (i8*)**, i8* }* noalias nocapture dereferenceable(16) %__adjust, { %str_slice, i64 }* noalias nocapture dereferenceable(24) %10)
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string26String...std..clone..Clone5clone20h3ae69c3472869db0ojbE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  %__self_0_0 = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %self
  %2 = load %"struct.collections::string::String<[]>[#6]"** %self
  %3 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %2, i32 0, i32 0
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %3, %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_0_0
  br label %case_body

case_body:                                        ; preds = %entry-block
  %4 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %0, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_0_0
  call void @"_ZN3vec18Vec$LT$T$GT$.Clone5clone21h11245157621478208664E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %4, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
  br label %join

join:                                             ; preds = %case_body
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN10MutableMap6insert21h14248889882543194343E(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*
  %value = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %3 = alloca i8*
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %4 = alloca { i8*, i32 }
  %autoref = alloca i8*
  store %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %5 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  %6 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  %7 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %6, i64 24, i32 8, i1 false)
  %8 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 24, i32 8, i1 false)
  %9 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %10 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %11 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %10, i32 0, i32 0
  %12 = load i64* %11
  %13 = add i64 %12, 1
  store i64 %13, i64* %11
  %14 = invoke i8* @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$4swap21h11940390238030394095E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(16) %5, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %9)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  store i8* %14, i8** %3
  %15 = load i8** %3
  store i8* %15, i8** %autoref
  %16 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_none20h1135859791952926441E"(i8** noalias dereferenceable(8) %autoref)
          to label %normal-return1 unwind label %unwind_ast_3391_

unwind_custom_:                                   ; preds = %entry-block
  %17 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %17, { i8*, i32 }* %4
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %18 = load { i8*, i32 }* %4
  resume { i8*, i32 } %18

clean_custom_:                                    ; preds = %clean_ast_3391_, %unwind_custom_
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value)
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %1)
  br label %resume

normal-return1:                                   ; preds = %normal-return
  %19 = zext i1 %16 to i8
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %autoref)
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value)
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %1)
  %20 = trunc i8 %19 to i1
  ret i1 %20

unwind_ast_3391_:                                 ; preds = %normal-return
  %21 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %21, { i8*, i32 }* %4
  br label %clean_ast_3391_

clean_ast_3391_:                                  ; preds = %unwind_ast_3391_
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %autoref)
  br label %clean_custom_
}

define internal void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**) unnamed_addr #2 {
entry-block:
  %1 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %0
  %2 = icmp ne { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %1, null
  br i1 %2, label %decr, label %next

decr:                                             ; preds = %entry-block
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %1, i32 0, i32 0
  %4 = load i64* %3
  %5 = sub i64 %4, 1
  store i64 %5, i64* %3
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %free, label %next

free:                                             ; preds = %decr
  %7 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %0
  %8 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %7, i32 0, i32 4
  call void @_ZN5HyObj14glue_drop.133517hff1450ea78245567E(%"struct.HyObj<[]>"* %8)
  %9 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %7 to i8*
  call void @_ZN10local_heap11local_free_20hfa0ef76b97be92904oaE(i8* %9)
  br label %next

next:                                             ; preds = %free, %decr, %entry-block
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN10MutableMap6remove21h15344945931590771762E(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca i8*
  %autoref = alloca i8*
  %3 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %4 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  %5 = load %"struct.collections::string::String<[]>[#6]"** %key
  %6 = call i8* @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$3pop21h14963793661424936092E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(16) %4, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %5)
  store i8* %6, i8** %2
  %7 = load i8** %2
  store i8* %7, i8** %autoref
  %8 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14311520017851300330E"(i8** noalias dereferenceable(8) %autoref)
          to label %normal-return unwind label %unwind_ast_4538_

normal-return:                                    ; preds = %entry-block
  %9 = zext i1 %8 to i8
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %autoref)
  %10 = trunc i8 %9 to i1
  ret i1 %10

unwind_ast_4538_:                                 ; preds = %entry-block
  %11 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %11, { i8*, i32 }* %3
  br label %clean_ast_4538_

resume:                                           ; preds = %clean_custom_
  %12 = load { i8*, i32 }* %3
  resume { i8*, i32 } %12

clean_custom_:                                    ; preds = %clean_ast_4538_
  br label %resume

clean_ast_4538_:                                  ; preds = %unwind_ast_4538_
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %autoref)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3Map12contains_key19h167486787319164558E(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca i8*
  %autoref = alloca i8*
  store %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %3 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  %4 = load %"struct.collections::string::String<[]>[#6]"** %key
  %5 = call i8* @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find21h17928647449454943414E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(16) %3, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %4)
  store i8* %5, i8** %2
  %6 = load i8** %2
  store i8* %6, i8** %autoref
  %7 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h15272689500005700305E"(i8** noalias dereferenceable(8) %autoref)
  %8 = zext i1 %7 to i8
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

define internal void @"_ZN13Box$LT$i8$GT$14glue_drop.203017h5fc032921da6b05fE"(i8**) unnamed_addr #2 {
entry-block:
  %1 = load i8** %0
  %2 = icmp ne i8* %1, null
  br i1 %2, label %cond, label %next

next:                                             ; preds = %cond, %entry-block
  ret void

cond:                                             ; preds = %entry-block
  call void @_ZN4heap13exchange_free20hf57021ea47434afepyaE(i8* %1, i64 1, i64 1)
  br label %next
}

; Function Attrs: uwtable
define internal %"struct.core::intrinsics::TypeId<[]>[#3]" @_ZN3any12T.AnyPrivate11get_type_id20h7332783173006388575E(%str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %self = alloca %str_slice*
  store %str_slice* %0, %str_slice** %self
  %1 = call %"struct.core::intrinsics::TypeId<[]>[#3]" @_ZN10intrinsics6TypeId2of20h9891672815306022340E()
  ret %"struct.core::intrinsics::TypeId<[]>[#3]" %1
}

define internal void @_ZN9HyObjType14glue_drop.133717hd16c806f8aa1635aE(%"enum.HyObjType<[]>"*) unnamed_addr #2 {
entry-block:
  %1 = getelementptr inbounds %"enum.HyObjType<[]>"* %0, i32 0, i32 0
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
  %3 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }*
  %4 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]" }* %3, i32 0, i32 1
  call void @"_ZN82collections..treemap..TreeMap$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$14glue_drop.134217h12e41733348975f5E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %4)
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %entry-block
  %5 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %6 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %5, i32 0, i32 1
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %6)
  br label %enum-iter-next

enum-iter-variant-2:                              ; preds = %entry-block
  %7 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, i64 }*
  %8 = getelementptr inbounds { i8, i64 }* %7, i32 0, i32 1
  br label %enum-iter-next

enum-iter-variant-3:                              ; preds = %entry-block
  %9 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, double }*
  %10 = getelementptr inbounds { i8, double }* %9, i32 0, i32 1
  br label %enum-iter-next

enum-iter-variant-4:                              ; preds = %entry-block
  %11 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]" }*
  %12 = getelementptr inbounds { i8, %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]" }* %11, i32 0, i32 1
  call void @"_ZN44collections..vec..Vec$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.170817hbb98a20b7a8b24c7E"(%"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %12)
  br label %enum-iter-next

enum-iter-variant-5:                              ; preds = %entry-block
  %13 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, i8 }*
  %14 = getelementptr inbounds { i8, i8 }* %13, i32 0, i32 1
  br label %enum-iter-next
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN10local_heap12local_malloc20he3943d7433d665f2ezaE(void (i8*)*, i64, i64) unnamed_addr #6 {
entry-block:
  %drop_glue = alloca void (i8*)*
  %size = alloca i64
  %align = alloca i64
  %task = alloca %"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"
  %__llmatch = alloca %"struct.rustrt::task::Task<[]>[#9]"**
  %task1 = alloca %"struct.rustrt::task::Task<[]>[#9]"*
  %3 = alloca %"struct.core::raw::Box<[()]>[#3]"*
  %match = alloca {}
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %4 = alloca %"struct.core::fmt::Argument<[]>[#3]", i64 0
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust4 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store void (i8*)* %0, void (i8*)** %drop_glue
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  call void @"_ZN5local49Task.Local$LT$local_ptr..Borrowed$LT$Task$GT$$GT$17try_unsafe_borrow20hd8f82b6e7e0b2db7qqaE"(%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* noalias nocapture sret dereferenceable(16) %task)
  %5 = getelementptr inbounds %"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* %task, i32 0, i32 0
  %6 = load i8* %5, !range !1
  switch i8 %6, label %match_else [
    i8 1, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %7 = load %"struct.rustrt::task::Task<[]>[#9]"*** %__llmatch
  %8 = load %"struct.rustrt::task::Task<[]>[#9]"** %7
  store %"struct.rustrt::task::Task<[]>[#9]"* %8, %"struct.rustrt::task::Task<[]>[#9]"** %task1
  %9 = load %"struct.rustrt::task::Task<[]>[#9]"** %task1
  %10 = getelementptr inbounds %"struct.rustrt::task::Task<[]>[#9]"* %9, i32 0, i32 0
  %11 = load void (i8*)** %drop_glue
  %12 = load i64* %size
  %13 = load i64* %align
  %14 = call %"struct.core::raw::Box<[()]>[#3]"* @_ZN10local_heap9LocalHeap5alloc20h078b98128c4adcdbEAaE(%"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* noalias dereferenceable(32) %10, void (i8*)* %11, i64 %12, i64 %13)
  store %"struct.core::raw::Box<[()]>[#3]"* %14, %"struct.core::raw::Box<[()]>[#3]"** %3
  %15 = load %"struct.core::raw::Box<[()]>[#3]"** %3
  %16 = bitcast %"struct.core::raw::Box<[()]>[#3]"* %15 to i8*
  br label %join5

case_body2:                                       ; preds = %match_else
  br label %case_body3

match_else:                                       ; preds = %entry-block
  br label %case_body2

match_case:                                       ; preds = %entry-block
  %17 = bitcast %"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* %task to { i8, %"struct.rustrt::task::Task<[]>[#9]"* }*
  %18 = getelementptr inbounds { i8, %"struct.rustrt::task::Task<[]>[#9]"* }* %17, i32 0, i32 1
  store %"struct.rustrt::task::Task<[]>[#9]"** %18, %"struct.rustrt::task::Task<[]>[#9]"*** %__llmatch
  br label %case_body

case_body3:                                       ; preds = %case_body2
  %19 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %4, %"struct.core::fmt::Argument<[]>[#3]"** %19
  %20 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 0, i64* %20
  %21 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, %str_slice, [48 x i8] } }* @_ZN10local_heap12local_malloc15__STATIC_FMTSTR20h4e4516024f787479l3bE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %21
  %22 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %22
  %23 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %24 = load %"struct.core::fmt::Argument<[]>[#3]"** %23
  %25 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %26 = load i64* %25
  %27 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %24, %"struct.core::fmt::Argument<[]>[#3]"** %27
  %28 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 1
  store i64 %26, i64* %28
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
  call void @_ZN4util5abort20h0ca03d03e01bc130hHaE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args)
  unreachable

join:                                             ; No predecessors!
  unreachable

join5:                                            ; preds = %case_body
  ret i8* %16
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap10local_free20he7910e45a4e2e467gpaE(i8*) unnamed_addr #6 {
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
  call void @"_ZN5local49Task.Local$LT$local_ptr..Borrowed$LT$Task$GT$$GT$17try_unsafe_borrow20hd8f82b6e7e0b2db7qqaE"(%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* noalias nocapture sret dereferenceable(16) %task_ptr)
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
  call void @_ZN10local_heap9LocalHeap4free20h12f6dc47fb16a5bfEraE(%"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* noalias dereferenceable(32) %7, %"struct.core::raw::Box<[()]>[#3]"* %9)
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
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust3)
  call void @_ZN4util5abort20h0ca03d03e01bc130hHaE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args)
  unreachable

join:                                             ; No predecessors!
  unreachable

join4:                                            ; preds = %case_body
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$3new21h10644285894724958072E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 0
  store i64 0, i64* %1
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 1
  store i64 0, i64* %2
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 2
  store i8* @_ZN3vec10PTR_MARKER20hd0730fd7e79c68f4HgiE, i8** %3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN5c_str18CString.Collection3len20h95e6197b2a30798bY1aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.rustrt::c_str::CString<[]>[#9]"*
  %cur = alloca i8*
  %len = alloca i64
  store %"struct.rustrt::c_str::CString<[]>[#9]"* %0, %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %1 = load %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %2 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %1, i32 0, i32 0
  %3 = load i8** %2
  store i8* %3, i8** %cur
  store i64 0, i64* %len
  br label %while_cond

while_exit:                                       ; preds = %while_cond
  %4 = load i64* %len
  br label %clean_ast_3342_

return:                                           ; preds = %clean_custom_
  ret i64 %4

while_cond:                                       ; preds = %while_body, %entry-block
  %5 = load i8** %cur
  %6 = load i8* %5
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %while_body, label %while_exit

while_body:                                       ; preds = %while_cond
  %8 = load i64* %len
  %9 = add i64 %8, 1
  store i64 %9, i64* %len
  %10 = load i8** %cur
  %11 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16748555932404399529E"(i8* %10, i64 1)
  store i8* %11, i8** %cur
  br label %while_cond

clean_custom_:                                    ; preds = %clean_ast_3342_
  br label %return

clean_ast_3342_:                                  ; preds = %while_exit
  br label %clean_custom_
}

define internal void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.135717h3c9cc7b6dddbad91E"(%"struct.collections::vec::Vec<[u8]>[#6]"*) unnamed_addr #2 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 1
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop21h10736518789460222788E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$8push_all20h9212719881183610573E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca i64
  %3 = alloca %"struct.core::iter::Range<[uint]>[#3]"
  %4 = alloca i64
  %for_head = alloca %"struct.core::iter::Range<[uint]>[#3]"*
  %loop_option = alloca %"enum.core::option::Option<[uint]>[#3]"
  %len = alloca i64
  %5 = alloca i8*
  %6 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  %7 = alloca i8
  %8 = alloca i8*
  %__adjust1 = alloca { i8*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %9 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %10 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h12869243457985040856E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %10, i64* %2
  %11 = load i64* %2
  call void @"_ZN3vec12Vec$LT$T$GT$18reserve_additional20h3171152431820370448E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %9, i64 %11)
  %12 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h12869243457985040856E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %12, i64* %4
  %13 = load i64* %4
  call void @_ZN4iter5range20h1999765306054960069E(%"struct.core::iter::Range<[uint]>[#3]"* noalias nocapture sret dereferenceable(24) %3, i64 0, i64 %13)
  store %"struct.core::iter::Range<[uint]>[#3]"* %3, %"struct.core::iter::Range<[uint]>[#3]"** %for_head
  %14 = load %"struct.core::iter::Range<[uint]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  ret void

for_loopback:                                     ; preds = %for_body, %entry-block
  call void @"_ZN4iter32Range$LT$A$GT$.Iterator$LT$A$GT$4next20h1198897762263659523E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16) %loop_option, %"struct.core::iter::Range<[uint]>[#3]"* noalias dereferenceable(24) %14)
  %15 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %loop_option, i32 0, i32 0
  %16 = load i8* %15, !range !1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %18 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %loop_option to { i8, i64 }*
  %19 = getelementptr inbounds { i8, i64 }* %18, i32 0, i32 1
  %20 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %21 = call i64 @"_ZN3vec23Vec$LT$T$GT$.Collection3len21h14664827721334019342E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %20)
  store i64 %21, i64* %len
  %22 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h2499743906251287528E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %6, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %22)
  %23 = getelementptr inbounds { i8*, i64 }* %6, i32 0, i32 0
  %24 = load i8** %23
  %25 = getelementptr inbounds { i8*, i64 }* %6, i32 0, i32 1
  %26 = load i64* %25
  %27 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %24, i8** %27
  %28 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %26, i64* %28
  %29 = load i64* %len
  %30 = call dereferenceable(1) i8* @"_ZN5slice65_$BP$$x27a$x20mut$x20$x5bT$x5d.MutableVector$LT$$x27a$C$$x20T$GT$14unsafe_mut_ref21h12856513418177861068E"({ i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust, i64 %29)
  store i8* %30, i8** %5
  %31 = load i8** %5
  %32 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 0
  %33 = load i8** %32
  %34 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 1
  %35 = load i64* %34
  %36 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 0
  store i8* %33, i8** %36
  %37 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 1
  store i64 %35, i64* %37
  %38 = load i64* %19
  %39 = call dereferenceable(1) i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$10unsafe_ref21h12721571661728817596E"({ i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust1, i64 %38)
  store i8* %39, i8** %8
  %40 = load i8** %8
  %41 = call i8 @_ZN5clone8u8.Clone5clone20h4a17cd098ea6c777M0aE(i8* noalias dereferenceable(1) %40)
  store i8 %41, i8* %7
  %42 = load i8* %7
  call void @_ZN3ptr5write21h15512891062286723253E(i8* %31, i8 %42)
  %43 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %44 = load i64* %len
  %45 = add i64 %44, 1
  call void @"_ZN3vec12Vec$LT$T$GT$7set_len20h6872985193647519758E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %43, i64 %45)
  br label %for_loopback
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap15exchange_malloc20h3bd17605d43dc3c1nibE(i64, i64) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %size = alloca i64
  %align = alloca i64
  store i64 %0, i64* %size
  store i64 %1, i64* %align
  %2 = load i64* %size
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %then-block-4370-, label %else-block

then-block-4370-:                                 ; preds = %entry-block
  store i8* bitcast (i64* @_ZN4heap5EMPTY20hbfe5b9a4d3c56c6f8baE to i8*), i8** %sret_slot
  br label %join

else-block:                                       ; preds = %entry-block
  %4 = load i64* %size
  %5 = load i64* %align
  %6 = call i8* @_ZN4heap8allocate20hd24b3ca44266ac0dSSaE(i64 %4, i64 %5)
  store i8* %6, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block, %then-block-4370-
  %7 = load i8** %sret_slot
  ret i8* %7
}

; Function Attrs: uwtable
define internal void @"_ZN3vec18Vec$LT$T$GT$.Clone5clone21h11245157621478208664E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice20h3589916186050778692E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %3)
  %4 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 0
  %5 = load i8** %4
  %6 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 1
  %7 = load i64* %6
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %5, i8** %8
  %9 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %7, i64* %9
  call void @"_ZN3vec12Vec$LT$T$GT$10from_slice20h2528360756134944573E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  ret void
}

; Function Attrs: uwtable
define internal i8* @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$4swap21h11940390238030394095E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*) unnamed_addr #0 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*
  %value = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %ret = alloca i8*
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %3 = alloca { i8*, i32 }
  %4 = alloca i8
  store %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %5 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  %6 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %5, i32 0, i32 0
  %7 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  %8 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 24, i32 8, i1 false)
  %9 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false)
  %10 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %11 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %12 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %11, i32 0, i32 0
  %13 = load i64* %12
  %14 = add i64 %13, 1
  store i64 %14, i64* %12
  %15 = invoke i8* @_ZN7treemap6insert20h2629250693905742483E(i8** noalias nocapture dereferenceable(8) %6, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %10)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  store i8* %15, i8** %ret
  %16 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_none20h1135859791952926441E"(i8** noalias dereferenceable(8) %ret)
          to label %normal-return1 unwind label %unwind_ast_3441_

unwind_custom_:                                   ; preds = %entry-block
  %17 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %17, { i8*, i32 }* %3
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %18 = load { i8*, i32 }* %3
  resume { i8*, i32 } %18

clean_custom_:                                    ; preds = %clean_ast_3441_, %unwind_custom_
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value)
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %1)
  br label %resume

normal-return1:                                   ; preds = %normal-return
  %19 = zext i1 %16 to i8
  store i8 %19, i8* %4
  %20 = load i8* %4, !range !1
  %21 = trunc i8 %20 to i1
  br i1 %21, label %then-block-3457-, label %next-block

unwind_ast_3441_:                                 ; preds = %normal-return
  %22 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %22, { i8*, i32 }* %3
  br label %clean_ast_3441_

clean_ast_3441_:                                  ; preds = %unwind_ast_3441_
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %ret)
  br label %clean_custom_

then-block-3457-:                                 ; preds = %normal-return1
  %23 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  %24 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %23, i32 0, i32 1
  %25 = load i64* %24
  %26 = add i64 %25, 1
  store i64 %26, i64* %24
  br label %next-block

next-block:                                       ; preds = %then-block-3457-, %normal-return1
  %27 = bitcast i8** %ret to i8*
  %28 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %27, i64 8, i32 8, i1 false)
  %29 = load i8** %ret
  %30 = icmp ne i8* %29, null
  switch i1 %30, label %enum-iter-unr [
    i1 false, label %enum-iter-variant-0
    i1 true, label %enum-iter-variant-1
  ]

enum-iter-unr:                                    ; preds = %next-block
  unreachable

enum-iter-next:                                   ; preds = %enum-iter-variant-1, %enum-iter-variant-0
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %ret)
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value)
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %1)
  %31 = load i8** %sret_slot
  ret i8* %31

enum-iter-variant-0:                              ; preds = %next-block
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %next-block
  %32 = bitcast i8** %ret to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %33 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %32
  %34 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %33, i32 0, i32 0
  %35 = load i64* %34
  %36 = add i64 %35, 1
  store i64 %36, i64* %34
  br label %enum-iter-next
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_none20h1135859791952926441E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  %3 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14311520017851300330E"(i8** noalias dereferenceable(8) %2)
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %1
  %5 = load i8* %1, !range !1
  %6 = trunc i8 %5 to i1
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i8
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

define internal void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8**) unnamed_addr #2 {
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
  %3 = bitcast i8** %0 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %3)
  br label %enum-iter-next
}

; Function Attrs: uwtable
define internal i8* @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$3pop21h14963793661424936092E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %ret = alloca i8*
  %2 = alloca i8
  %3 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %4 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  %5 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %4, i32 0, i32 0
  %6 = load %"struct.collections::string::String<[]>[#6]"** %key
  %7 = call i8* @_ZN7treemap6remove21h11046647513133307377E(i8** noalias nocapture dereferenceable(8) %5, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %6)
  store i8* %7, i8** %ret
  %8 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14311520017851300330E"(i8** noalias dereferenceable(8) %ret)
          to label %normal-return unwind label %unwind_ast_4557_

normal-return:                                    ; preds = %entry-block
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2
  %10 = load i8* %2, !range !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %then-block-4572-, label %next-block

unwind_ast_4557_:                                 ; preds = %entry-block
  %12 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %12, { i8*, i32 }* %3
  br label %clean_ast_4557_

resume:                                           ; preds = %clean_custom_
  %13 = load { i8*, i32 }* %3
  resume { i8*, i32 } %13

clean_custom_:                                    ; preds = %clean_ast_4557_
  br label %resume

clean_ast_4557_:                                  ; preds = %unwind_ast_4557_
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %ret)
  br label %clean_custom_

then-block-4572-:                                 ; preds = %normal-return
  %14 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  %15 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %14, i32 0, i32 1
  %16 = load i64* %15
  %17 = sub i64 %16, 1
  store i64 %17, i64* %15
  br label %next-block

next-block:                                       ; preds = %then-block-4572-, %normal-return
  %18 = bitcast i8** %ret to i8*
  %19 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %18, i64 8, i32 8, i1 false)
  %20 = load i8** %ret
  %21 = icmp ne i8* %20, null
  switch i1 %21, label %enum-iter-unr [
    i1 false, label %enum-iter-variant-0
    i1 true, label %enum-iter-variant-1
  ]

enum-iter-unr:                                    ; preds = %next-block
  unreachable

enum-iter-next:                                   ; preds = %enum-iter-variant-1, %enum-iter-variant-0
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %ret)
  %22 = load i8** %sret_slot
  ret i8* %22

enum-iter-variant-0:                              ; preds = %next-block
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %next-block
  %23 = bitcast i8** %ret to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %24 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %23
  %25 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %24, i32 0, i32 0
  %26 = load i64* %25
  %27 = add i64 %26, 1
  store i64 %27, i64* %25
  br label %enum-iter-next
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14311520017851300330E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8**
  store i8** %0, i8*** %self
  %1 = load i8*** %self
  %2 = load i8** %1
  %3 = icmp ne i8* %2, null
  switch i1 %3, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  store i8 1, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  store i8 0, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %4 = bitcast i8** %1 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %5 = load i8* %sret_slot, !range !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find21h17928647449454943414E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }
  %__closure = alloca { i64, {}*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }
  store %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %3 = load %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"** %self
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %3, i32 0, i32 0
  %5 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::string::String<[]>[#6]"** %key, %"struct.collections::string::String<[]>[#6]"*** %5
  %6 = getelementptr inbounds { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* %2, i32 0, i32 0
  store i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)* @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find12closure.2085E", i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)** %6
  %7 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }* %__closure to i8*
  %8 = getelementptr inbounds { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* %2, i32 0, i32 1
  store i8* %7, i8** %8
  %9 = call i8* @_ZN7treemap14tree_find_with20h7514359392390990967E(i8** noalias dereferenceable(8) %4, { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* noalias nocapture dereferenceable(16) %2)
  ret i8* %9
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h15272689500005700305E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8**
  store i8** %0, i8*** %self
  %1 = load i8*** %self
  %2 = load i8** %1
  %3 = icmp ne i8* %2, null
  switch i1 %3, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  store i8 1, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  store i8 0, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %4 = bitcast i8** %1 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }***
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %5 = load i8* %sret_slot, !range !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap13exchange_free20hf57021ea47434afepyaE(i8*, i64, i64) unnamed_addr #6 {
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
  call void @_ZN4heap10deallocate20h9bf409ac61227d36anaE(i8* %3, i64 %4, i64 %5)
  ret void
}

; Function Attrs: uwtable
define internal %"struct.core::intrinsics::TypeId<[]>[#3]" @_ZN10intrinsics6TypeId2of20h9891672815306022340E() unnamed_addr #0 {
entry-block:
  ret %"struct.core::intrinsics::TypeId<[]>[#3]" { i64 8802261786977977801 }
}

define internal void @"_ZN82collections..treemap..TreeMap$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$14glue_drop.134217h12e41733348975f5E"(%"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"*) unnamed_addr #2 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %1)
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 1
  ret void
}

define internal void @"_ZN44collections..vec..Vec$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.170817hbb98a20b7a8b24c7E"(%"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"*) unnamed_addr #2 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %0, i32 0, i32 1
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop20h7863157990256731130E"(%"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* noalias nocapture dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5local49Task.Local$LT$local_ptr..Borrowed$LT$Task$GT$$GT$17try_unsafe_borrow20hd8f82b6e7e0b2db7qqaE"(%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #6 {
entry-block:
  call void @_ZN9local_ptr8compiled17try_unsafe_borrow20h3331809765958055171E(%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* noalias nocapture sret dereferenceable(16) %0)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal %"struct.core::raw::Box<[()]>[#3]"* @_ZN10local_heap9LocalHeap5alloc20h078b98128c4adcdbEAaE(%"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* noalias nocapture dereferenceable(32), void (i8*)*, i64, i64) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"*
  %drop_glue = alloca void (i8*)*
  %size = alloca i64
  %align = alloca i64
  %total_size = alloca i64
  %alloc = alloca %"struct.core::raw::Box<[()]>[#3]"*
  %mybox = alloca %"struct.core::raw::Box<[()]>[#3]"*
  %4 = alloca i8
  store %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %0, %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  store void (i8*)* %1, void (i8*)** %drop_glue
  store i64 %2, i64* %size
  store i64 %3, i64* %align
  %5 = load i64* %size
  %6 = load i64* %align
  %7 = call i64 @_ZN4util12get_box_size20hd2477b4d30612678jCaE(i64 %5, i64 %6)
  store i64 %7, i64* %total_size
  %8 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %9 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %8, i32 0, i32 0
  %10 = load i64* %total_size
  %11 = call %"struct.core::raw::Box<[()]>[#3]"* @_ZN10local_heap12MemoryRegion6malloc20h74af4089ded7ebc0wFaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias dereferenceable(16) %9, i64 %10)
  store %"struct.core::raw::Box<[()]>[#3]"* %11, %"struct.core::raw::Box<[()]>[#3]"** %alloc
  %12 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  store %"struct.core::raw::Box<[()]>[#3]"* %12, %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %13 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %14 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %13, i32 0, i32 1
  %15 = load void (i8*)** %drop_glue
  store void (i8*)* %15, void (i8*)** %14
  %16 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %17 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %16, i32 0, i32 0
  store i64 1, i64* %17
  %18 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %19 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %18, i32 0, i32 2
  %20 = call %"struct.core::raw::Box<[()]>[#3]"* @_ZN3ptr8mut_null20h2699528725421567466E()
  store %"struct.core::raw::Box<[()]>[#3]"* %20, %"struct.core::raw::Box<[()]>[#3]"** %19
  %21 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %22 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %21, i32 0, i32 3
  %23 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %24 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %23, i32 0, i32 1
  %25 = load %"struct.core::raw::Box<[()]>[#3]"** %24
  store %"struct.core::raw::Box<[()]>[#3]"* %25, %"struct.core::raw::Box<[()]>[#3]"** %22
  %26 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %27 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %26, i32 0, i32 1
  %28 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h9838635047130624387E"(%"struct.core::raw::Box<[()]>[#3]"** noalias dereferenceable(8) %27)
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %4
  %30 = load i8* %4, !range !1
  %31 = trunc i8 %30 to i1
  %32 = xor i1 %31, true
  br i1 %32, label %then-block-1725-, label %next-block

then-block-1725-:                                 ; preds = %entry-block
  %33 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %34 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %33, i32 0, i32 1
  %35 = load %"struct.core::raw::Box<[()]>[#3]"** %34
  %36 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %35, i32 0, i32 2
  %37 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  store %"struct.core::raw::Box<[()]>[#3]"* %37, %"struct.core::raw::Box<[()]>[#3]"** %36
  br label %next-block

next-block:                                       ; preds = %then-block-1725-, %entry-block
  %38 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %39 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %38, i32 0, i32 1
  %40 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  store %"struct.core::raw::Box<[()]>[#3]"* %40, %"struct.core::raw::Box<[()]>[#3]"** %39
  %41 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  br label %clean_ast_1666_

return:                                           ; preds = %clean_custom_
  ret %"struct.core::raw::Box<[()]>[#3]"* %41

clean_custom_:                                    ; preds = %clean_ast_1666_
  br label %return

clean_ast_1666_:                                  ; preds = %next-block
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32), { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16), { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
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

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap9LocalHeap4free20h12f6dc47fb16a5bfEraE(%"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* noalias nocapture dereferenceable(32), %"struct.core::raw::Box<[()]>[#3]"*) unnamed_addr #6 {
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
  %7 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h9838635047130624387E"(%"struct.core::raw::Box<[()]>[#3]"** noalias dereferenceable(8) %6)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %2
  %9 = load i8* %2, !range !1
  %10 = trunc i8 %9 to i1
  %11 = xor i1 %10, true
  br i1 %11, label %then-block-1115-, label %next-block

then-block-1115-:                                 ; preds = %entry-block
  %12 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %13 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %12, i32 0, i32 2
  %14 = load %"struct.core::raw::Box<[()]>[#3]"** %13
  %15 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %14, i32 0, i32 3
  %16 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %17 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %16, i32 0, i32 3
  %18 = load %"struct.core::raw::Box<[()]>[#3]"** %17
  store %"struct.core::raw::Box<[()]>[#3]"* %18, %"struct.core::raw::Box<[()]>[#3]"** %15
  br label %next-block

next-block:                                       ; preds = %then-block-1115-, %entry-block
  %19 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %20 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %19, i32 0, i32 3
  %21 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h9838635047130624387E"(%"struct.core::raw::Box<[()]>[#3]"** noalias dereferenceable(8) %20)
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %3
  %23 = load i8* %3, !range !1
  %24 = trunc i8 %23 to i1
  %25 = xor i1 %24, true
  br i1 %25, label %then-block-1133-, label %next-block1

then-block-1133-:                                 ; preds = %next-block
  %26 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %27 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %26, i32 0, i32 3
  %28 = load %"struct.core::raw::Box<[()]>[#3]"** %27
  %29 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %28, i32 0, i32 2
  %30 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %31 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %30, i32 0, i32 2
  %32 = load %"struct.core::raw::Box<[()]>[#3]"** %31
  store %"struct.core::raw::Box<[()]>[#3]"* %32, %"struct.core::raw::Box<[()]>[#3]"** %29
  br label %next-block1

next-block1:                                      ; preds = %then-block-1133-, %next-block
  %33 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %34 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %33, i32 0, i32 1
  %35 = load %"struct.core::raw::Box<[()]>[#3]"** %34
  %36 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  %37 = icmp eq %"struct.core::raw::Box<[()]>[#3]"* %35, %36
  br i1 %37, label %then-block-1150-, label %next-block2

then-block-1150-:                                 ; preds = %next-block1
  %38 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %39 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %38, i32 0, i32 1
  %40 = load %"struct.core::raw::Box<[()]>[#3]"** %mybox
  %41 = getelementptr inbounds %"struct.core::raw::Box<[()]>[#3]"* %40, i32 0, i32 3
  %42 = load %"struct.core::raw::Box<[()]>[#3]"** %41
  store %"struct.core::raw::Box<[()]>[#3]"* %42, %"struct.core::raw::Box<[()]>[#3]"** %39
  br label %next-block2

next-block2:                                      ; preds = %then-block-1150-, %next-block1
  %43 = load %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"** %self
  %44 = getelementptr inbounds %"struct.rustrt::local_heap::LocalHeap<[]>[#9]"* %43, i32 0, i32 0
  %45 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  call void @_ZN10local_heap12MemoryRegion4free20h63ccde44bba4f9e1VsaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias dereferenceable(16) %44, %"struct.core::raw::Box<[()]>[#3]"* %45)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16748555932404399529E"(i8*, i64) unnamed_addr #6 {
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

; Function Attrs: uwtable
define internal void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop21h10736518789460222788E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %src.i = alloca i8*
  %tmp.i = alloca i8
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
  br i1 %6, label %then-block-408-, label %next-block

then-block-408-:                                  ; preds = %entry-block
  %7 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h2499743906251287528E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %7)
  %8 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 0
  %9 = load i8** %8
  %10 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 1
  %11 = load i64* %10
  %12 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %9, i8** %12
  %13 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %11, i64* %13
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h17160037277174970517E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
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
  call void @_ZN3vec7dealloc20h7730075810567566121E(i8* %17, i64 %20)
  br label %next-block

for_loopback:                                     ; preds = %for_body, %then-block-408-
  %21 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h10179305505548937745E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %14)
  store i8* %21, i8** %loop_option
  %22 = load i8** %loop_option
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i8
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %26 = load i8** %loop_option
  store i8* %26, i8** %src.i
  %27 = call i8 @_ZN3mem13uninitialized20h6003631304141149970E()
  store i8 %27, i8* %tmp.i
  %28 = load i8** %src.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp.i, i8* %28, i64 1, i32 1, i1 false)
  %29 = load i8* %tmp.i
  br label %for_loopback

next-block:                                       ; preds = %for_exit, %entry-block
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h12869243457985040856E"({ i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { i8*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3raw4Repr4repr20h4766596166365344895E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %1, i32 0, i32 1
  %4 = load i64* %3
  ret i64 %4
}

; Function Attrs: uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$18reserve_additional20h3171152431820370448E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #0 {
entry-block:
  %fmt.i = alloca %"struct.core::fmt::Arguments<[]>[#3]"*
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %extra = alloca i64
  %2 = alloca %"enum.core::option::Option<[uint]>[#3]"
  %__llmatch = alloca i64*
  %new_cap = alloca i64
  %3 = alloca { %str_slice* }
  %4 = alloca %str_slice
  %match = alloca { %str_slice* }
  %__llmatch3 = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %5 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust4 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store i64 %1, i64* %extra
  %6 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %7 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %6, i32 0, i32 1
  %8 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %9 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %8, i32 0, i32 0
  %10 = load i64* %7
  %11 = load i64* %9
  %12 = sub i64 %10, %11
  %13 = load i64* %extra
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %then-block-2206-, label %next-block

then-block-2206-:                                 ; preds = %entry-block
  %15 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %16 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %15, i32 0, i32 0
  call void @_ZN3num15uint.CheckedAdd11checked_add20h3073b85693993761eLaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16) %2, i64* noalias dereferenceable(8) %16, i64* noalias dereferenceable(8) %extra)
  %17 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %2, i32 0, i32 0
  %18 = load i8* %17, !range !1
  switch i8 %18, label %match_else [
    i8 0, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %19 = getelementptr inbounds { %str_slice* }* %3, i32 0, i32 0
  %20 = getelementptr inbounds %str_slice* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8]* @str1801, i32 0, i32 0), i8** %20
  %21 = getelementptr inbounds %str_slice* %4, i32 0, i32 1
  store i64 40, i64* %21
  store %str_slice* %4, %str_slice** %19
  %22 = load { %str_slice* }* %3
  store { %str_slice* } %22, { %str_slice* }* %match
  %23 = getelementptr inbounds { %str_slice* }* %match, i32 0, i32 0
  store %str_slice** %23, %str_slice*** %__llmatch3
  br label %case_body2

case_body1:                                       ; preds = %match_else
  %24 = load i64** %__llmatch
  %25 = load i64* %24
  store i64 %25, i64* %new_cap
  %26 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %27 = load i64* %new_cap
  call void @"_ZN3vec12Vec$LT$T$GT$7reserve21h13212851711842483923E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %26, i64 %27)
  br label %join5

match_else:                                       ; preds = %then-block-2206-
  %28 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %2 to { i8, i64 }*
  %29 = getelementptr inbounds { i8, i64 }* %28, i32 0, i32 1
  store i64* %29, i64** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %then-block-2206-
  br label %case_body

case_body2:                                       ; preds = %case_body
  %30 = load %str_slice*** %__llmatch3
  %31 = load %str_slice** %30
  store %str_slice* %31, %str_slice** %__arg0
  %32 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %5 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %33 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %5, i32 0
  %34 = load %str_slice** %__arg0
  call void @_ZN3fmt8argument21h12476212057166802099E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %33, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h9972084880571542156E, %str_slice* noalias dereferenceable(16) %34)
  %35 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %5, %"struct.core::fmt::Argument<[]>[#3]"** %35
  %36 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %36
  %37 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @"_ZN3vec12Vec$LT$T$GT$18reserve_additional15__STATIC_FMTSTR20hc4afdecb9c205274fyiE" to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %37
  %38 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %38
  %39 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %40 = load %"struct.core::fmt::Argument<[]>[#3]"** %39
  %41 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %42 = load i64* %41
  %43 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %40, %"struct.core::fmt::Argument<[]>[#3]"** %43
  %44 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 1
  store i64 %42, i64* %44
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %45 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  call void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %45, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @"_ZN3vec12Vec$LT$T$GT$18reserve_additional8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dQxiE")
  unreachable

"_ZN3vec12Vec$LT$T$GT$18reserve_additional8_run_fmt20h4a456e3c4b4eb4b4wMaE.exit": ; No predecessors!
  unreachable

join:                                             ; No predecessors!
  unreachable

join5:                                            ; preds = %case_body1
  br label %next-block

next-block:                                       ; preds = %join5, %entry-block
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4iter5range20h1999765306054960069E(%"struct.core::iter::Range<[uint]>[#3]"* noalias nocapture sret dereferenceable(24), i64, i64) unnamed_addr #6 {
entry-block:
  %start = alloca i64
  %stop = alloca i64
  store i64 %1, i64* %start
  store i64 %2, i64* %stop
  %3 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %0, i32 0, i32 0
  %4 = load i64* %start
  store i64 %4, i64* %3
  %5 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %0, i32 0, i32 1
  %6 = load i64* %stop
  store i64 %6, i64* %5
  %7 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %0, i32 0, i32 2
  %8 = call i64 @_ZN3num8uint.One3one20h75b78ac0c0361a46fWaE()
  store i64 %8, i64* %7
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4iter32Range$LT$A$GT$.Iterator$LT$A$GT$4next20h1198897762263659523E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16), %"struct.core::iter::Range<[uint]>[#3]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.core::iter::Range<[uint]>[#3]"*
  %2 = alloca i8
  %result = alloca i64
  store %"struct.core::iter::Range<[uint]>[#3]"* %1, %"struct.core::iter::Range<[uint]>[#3]"** %self
  %3 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %4 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %6 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %5, i32 0, i32 1
  %7 = call zeroext i1 @_ZN3cmp5impls15uint.PartialOrd2lt20h77d8b38155191ca1JYaE(i64* noalias dereferenceable(8) %4, i64* noalias dereferenceable(8) %6)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %2
  %9 = load i8* %2, !range !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %then-block-3111-, label %else-block

then-block-3111-:                                 ; preds = %entry-block
  %11 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %12 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %11, i32 0, i32 0
  %13 = call i64 @_ZN5clone10uint.Clone5clone20h52bd283ee1dbe60d3YaE(i64* noalias dereferenceable(8) %12)
  store i64 %13, i64* %result
  %14 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %15 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %14, i32 0, i32 0
  %16 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %17 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %16, i32 0, i32 0
  %18 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %19 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %18, i32 0, i32 2
  %20 = call i64 @"_ZN3ops31uint.Add$LT$uint$C$$x20uint$GT$3add20head13432b6aa382ajXaE"(i64* noalias dereferenceable(8) %17, i64* noalias dereferenceable(8) %19)
  store i64 %20, i64* %15
  %21 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %0 to { i8, i64 }*
  %22 = getelementptr inbounds { i8, i64 }* %21, i32 0, i32 1
  %23 = load i64* %result
  store i64 %23, i64* %22
  %24 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 1, i8* %24
  br label %join

else-block:                                       ; preds = %entry-block
  %25 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 0, i8* %25
  br label %join

join:                                             ; preds = %else-block, %then-block-3111-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3vec23Vec$LT$T$GT$.Collection3len21h14664827721334019342E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 0
  %3 = load i64* %2
  ret i64 %3
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h2499743906251287528E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca i8*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = bitcast { i8*, i64 }* %0 to %"struct.core::raw::Slice<[u8]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %6 = call i8* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr19h930305733634173756E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
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
define internal dereferenceable(1) i8* @"_ZN5slice65_$BP$$x27a$x20mut$x20$x5bT$x5d.MutableVector$LT$$x27a$C$$x20T$GT$14unsafe_mut_ref21h12856513418177861068E"({ i8*, i64 }* noalias nocapture dereferenceable(16), i64) unnamed_addr #6 {
entry-block:
  %index = alloca i64
  %2 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %__adjust = alloca { i8*, i64 }
  store i64 %1, i64* %index
  %3 = getelementptr inbounds { i8*, i64 }* %0, i32 0, i32 0
  %4 = load i8** %3
  %5 = getelementptr inbounds { i8*, i64 }* %0, i32 0, i32 1
  %6 = load i64* %5
  %7 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %4, i8** %7
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %6, i64* %8
  call void @_ZN3raw4Repr4repr21h16254767136300664190E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { i8*, i64 }* noalias dereferenceable(16) %__adjust)
  %9 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 0
  %10 = load i8** %9
  %11 = load i64* %index
  %12 = call i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset21h15650325833884570764E"(i8* %10, i64 %11)
  ret i8* %12
}

; Function Attrs: inlinehint uwtable
define internal dereferenceable(1) i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$10unsafe_ref21h12721571661728817596E"({ i8*, i64 }* noalias nocapture dereferenceable(16), i64) unnamed_addr #6 {
entry-block:
  %index = alloca i64
  %2 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store i64 %1, i64* %index
  call void @_ZN3raw4Repr4repr21h11280969635860028743E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { i8*, i64 }* noalias dereferenceable(16) %0)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 0
  %4 = load i8** %3
  %5 = load i64* %index
  %6 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16943014747259935478E"(i8* %4, i64 %5)
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN5clone8u8.Clone5clone20h4a17cd098ea6c777M0aE(i8* noalias nocapture dereferenceable(1)) unnamed_addr #6 {
entry-block:
  %self = alloca i8*
  store i8* %0, i8** %self
  %1 = load i8** %self
  %2 = load i8* %1
  ret i8 %2
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3ptr5write21h15512891062286723253E(i8*, i8) unnamed_addr #6 {
entry-block:
  %dst = alloca i8*
  %src = alloca i8
  store i8* %0, i8** %dst
  store i8 %1, i8* %src
  %2 = load i8** %dst
  %3 = load i8* %src
  store i8 %3, i8* %2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$7set_len20h6872985193647519758E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %len = alloca i64
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store i64 %1, i64* %len
  %2 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %2, i32 0, i32 0
  %4 = load i64* %len
  store i64 %4, i64* %3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap8allocate20hd24b3ca44266ac0dSSaE(i64, i64) unnamed_addr #6 {
entry-block:
  %size = alloca i64
  %align = alloca i64
  store i64 %0, i64* %size
  store i64 %1, i64* %align
  %2 = load i64* %size
  %3 = load i64* %align
  %4 = call i8* @_ZN4heap3imp8allocate20h422683b32144e324aTaE(i64 %2, i64 %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice20h3589916186050778692E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = bitcast { i8*, i64 }* %0 to %"struct.core::raw::Slice<[u8]>[#3]"*
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %5 = call i8* @"_ZN3vec12Vec$LT$T$GT$6as_ptr20h4208660445556822084E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %4)
  store i8* %5, i8** %3
  %6 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 1
  %7 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %8 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %7, i32 0, i32 0
  %9 = load i64* %8
  store i64 %9, i64* %6
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$10from_slice20h2528360756134944573E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %vector = alloca %"struct.collections::vec::Vec<[u8]>[#6]"
  %__adjust = alloca { i8*, i64 }
  %2 = alloca { i8*, i32 }
  call void @"_ZN3vec12Vec$LT$T$GT$3new21h10644285894724958072E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %vector)
  %3 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 0
  %4 = load i8** %3
  %5 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 1
  %6 = load i64* %5
  %7 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %4, i8** %7
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %6, i64* %8
  invoke void @"_ZN3vec12Vec$LT$T$GT$8push_all20h9212719881183610573E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %vector, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
          to label %normal-return unwind label %unwind_ast_4459_

normal-return:                                    ; preds = %entry-block
  %9 = bitcast %"struct.collections::vec::Vec<[u8]>[#6]"* %vector to i8*
  %10 = bitcast %"struct.collections::vec::Vec<[u8]>[#6]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %9, i64 24, i32 8, i1 false)
  %11 = bitcast %"struct.collections::vec::Vec<[u8]>[#6]"* %vector to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false)
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.135717h3c9cc7b6dddbad91E"(%"struct.collections::vec::Vec<[u8]>[#6]"* %vector)
  ret void

unwind_ast_4459_:                                 ; preds = %entry-block
  %12 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %12, { i8*, i32 }* %2
  br label %clean_ast_4459_

resume:                                           ; preds = %clean_custom_
  %13 = load { i8*, i32 }* %2
  resume { i8*, i32 } %13

clean_custom_:                                    ; preds = %clean_ast_4459_
  br label %resume

clean_ast_4459_:                                  ; preds = %unwind_ast_4459_
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.135717h3c9cc7b6dddbad91E"(%"struct.collections::vec::Vec<[u8]>[#6]"* %vector)
  br label %clean_custom_
}

; Function Attrs: uwtable
define internal i8* @_ZN7treemap6insert20h2629250693905742483E(i8** noalias nocapture dereferenceable(8), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*) unnamed_addr #0 {
entry-block:
  %sret_slot = alloca i8*
  %node = alloca i8**
  %value = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %save = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %3 = alloca i8
  %4 = alloca { i8*, i32 }
  %match = alloca i8
  %inserted = alloca i8*
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %inserted12 = alloca i8*
  %arg13 = alloca %"struct.collections::string::String<[]>[#6]"
  %ExprAssign = alloca %"struct.collections::string::String<[]>[#6]"
  %5 = alloca i8*
  %arg23 = alloca %"struct.collections::string::String<[]>[#6]"
  store i8** %0, i8*** %node
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %6 = load i8*** %node
  %7 = load i8** %6
  %8 = icmp ne i8* %7, null
  switch i1 %8, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %9 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %10 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %9
  %11 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %10, i32 0, i32 0
  %12 = invoke i8 @_ZN6string22String...std..cmp..Ord3cmp20h5791c2e70e4b413eZ5aE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %1, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %11)
          to label %normal-return unwind label %unwind_custom_

case_body1:                                       ; preds = %match_else
  %13 = load i8*** %node
  %14 = bitcast i8** %5 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %15 = invoke i8* @_ZN4heap15exchange_malloc20h3bd17605d43dc3c1nibE(i64 56, i64 8)
          to label %normal-return22 unwind label %unwind_custom_

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %16 = bitcast i8** %6 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %16, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  br label %case_body

normal-return:                                    ; preds = %case_body
  store i8 %12, i8* %3
  %17 = load i8* %3
  store i8 %17, i8* %match
  %18 = load i8* %match, !range !2
  switch i8 %18, label %match_else5 [
    i8 -1, label %match_case6
    i8 1, label %match_case7
  ]

unwind_custom_:                                   ; preds = %case_body4, %case_body3, %case_body2, %case_body1, %case_body
  %19 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %19, { i8*, i32 }* %4
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %20 = load { i8*, i32 }* %4
  resume { i8*, i32 } %20

clean_custom_:                                    ; preds = %clean_custom_26, %clean_custom_10, %unwind_custom_
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value)
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %1)
  br label %resume

case_body2:                                       ; preds = %match_case6
  %21 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %22 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %21
  %23 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %22, i32 0, i32 2
  %24 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  %25 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %24, i64 24, i32 8, i1 false)
  %26 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 24, i32 8, i1 false)
  %27 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %28 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %29 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %28, i32 0, i32 0
  %30 = load i64* %29
  %31 = add i64 %30, 1
  store i64 %31, i64* %29
  %32 = invoke i8* @_ZN7treemap6insert20h2629250693905742483E(i8** noalias nocapture dereferenceable(8) %23, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %27)
          to label %normal-return8 unwind label %unwind_custom_

case_body3:                                       ; preds = %match_case7
  %33 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %34 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %33
  %35 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %34, i32 0, i32 3
  %36 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  %37 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %36, i64 24, i32 8, i1 false)
  %38 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 24, i32 8, i1 false)
  %39 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %40 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %41 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %40, i32 0, i32 0
  %42 = load i64* %41
  %43 = add i64 %42, 1
  store i64 %43, i64* %41
  %44 = invoke i8* @_ZN7treemap6insert20h2629250693905742483E(i8** noalias nocapture dereferenceable(8) %35, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg13, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %39)
          to label %normal-return14 unwind label %unwind_custom_

case_body4:                                       ; preds = %match_else5
  %45 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %46 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %45
  %47 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %46, i32 0, i32 0
  %48 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  %49 = bitcast %"struct.collections::string::String<[]>[#6]"* %ExprAssign to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %48, i64 24, i32 8, i1 false)
  %50 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 24, i32 8, i1 false)
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %47)
  %51 = bitcast %"struct.collections::string::String<[]>[#6]"* %ExprAssign to i8*
  %52 = bitcast %"struct.collections::string::String<[]>[#6]"* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %51, i64 24, i32 8, i1 false)
  %53 = bitcast i8** %sret_slot to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %54 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %55 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %54
  %56 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %55, i32 0, i32 1
  %57 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %58 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %59 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %58, i32 0, i32 0
  %60 = load i64* %59
  %61 = add i64 %60, 1
  store i64 %61, i64* %59
  %62 = invoke { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @_ZN3mem7replace20h2867984239755068690E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8) %56, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %57)
          to label %normal-return21 unwind label %unwind_custom_

match_else5:                                      ; preds = %normal-return
  br label %case_body4

match_case6:                                      ; preds = %normal-return
  br label %case_body2

match_case7:                                      ; preds = %normal-return
  br label %case_body3

normal-return8:                                   ; preds = %case_body2
  store i8* %32, i8** %inserted
  %63 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  invoke void @_ZN7treemap4skew21h11260086946604638793E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %63)
          to label %normal-return9 unwind label %unwind_ast_3509_

normal-return9:                                   ; preds = %normal-return8
  %64 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  invoke void @_ZN7treemap5split20h6325605105574165687E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %64)
          to label %normal-return11 unwind label %unwind_ast_3509_

unwind_ast_3509_:                                 ; preds = %normal-return9, %normal-return8
  %65 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %65, { i8*, i32 }* %4
  br label %clean_ast_3509_

clean_custom_10:                                  ; preds = %clean_ast_3499_
  br label %clean_custom_

clean_ast_3499_:                                  ; preds = %clean_ast_3532_, %clean_ast_3509_
  br label %clean_custom_10

clean_ast_3509_:                                  ; preds = %unwind_ast_3509_
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %inserted)
  br label %clean_ast_3499_

normal-return11:                                  ; preds = %normal-return9
  %66 = bitcast i8** %inserted to i8*
  %67 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %66, i64 8, i32 8, i1 false)
  %68 = load i8** %inserted
  %69 = icmp ne i8* %68, null
  switch i1 %69, label %enum-iter-unr [
    i1 false, label %enum-iter-variant-0
    i1 true, label %enum-iter-variant-1
  ]

enum-iter-unr:                                    ; preds = %normal-return11
  unreachable

enum-iter-next:                                   ; preds = %enum-iter-variant-1, %enum-iter-variant-0
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %inserted)
  br label %join

enum-iter-variant-0:                              ; preds = %normal-return11
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %normal-return11
  %70 = bitcast i8** %inserted to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %71 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %70
  %72 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %71, i32 0, i32 0
  %73 = load i64* %72
  %74 = add i64 %73, 1
  store i64 %74, i64* %72
  br label %enum-iter-next

normal-return14:                                  ; preds = %case_body3
  store i8* %44, i8** %inserted12
  %75 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  invoke void @_ZN7treemap4skew21h11260086946604638793E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %75)
          to label %normal-return15 unwind label %unwind_ast_3532_

normal-return15:                                  ; preds = %normal-return14
  %76 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  invoke void @_ZN7treemap5split20h6325605105574165687E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %76)
          to label %normal-return16 unwind label %unwind_ast_3532_

unwind_ast_3532_:                                 ; preds = %normal-return15, %normal-return14
  %77 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %77, { i8*, i32 }* %4
  br label %clean_ast_3532_

clean_ast_3532_:                                  ; preds = %unwind_ast_3532_
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %inserted12)
  br label %clean_ast_3499_

normal-return16:                                  ; preds = %normal-return15
  %78 = bitcast i8** %inserted12 to i8*
  %79 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %78, i64 8, i32 8, i1 false)
  %80 = load i8** %inserted12
  %81 = icmp ne i8* %80, null
  switch i1 %81, label %enum-iter-unr17 [
    i1 false, label %enum-iter-variant-019
    i1 true, label %enum-iter-variant-120
  ]

enum-iter-unr17:                                  ; preds = %normal-return16
  unreachable

enum-iter-next18:                                 ; preds = %enum-iter-variant-120, %enum-iter-variant-019
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %inserted12)
  br label %join

enum-iter-variant-019:                            ; preds = %normal-return16
  br label %enum-iter-next18

enum-iter-variant-120:                            ; preds = %normal-return16
  %82 = bitcast i8** %inserted12 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %83 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %82
  %84 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %83, i32 0, i32 0
  %85 = load i64* %84
  %86 = add i64 %85, 1
  store i64 %86, i64* %84
  br label %enum-iter-next18

normal-return21:                                  ; preds = %case_body4
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %62, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %53
  br label %join

join:                                             ; preds = %normal-return21, %enum-iter-next18, %enum-iter-next
  br label %join27

normal-return22:                                  ; preds = %case_body1
  %87 = bitcast i8* %15 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %88 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  %89 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %88, i64 24, i32 8, i1 false)
  %90 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %90, i8 0, i64 24, i32 8, i1 false)
  %91 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %92 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %93 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %92, i32 0, i32 0
  %94 = load i64* %93
  %95 = add i64 %94, 1
  store i64 %95, i64* %93
  invoke void @"_ZN7treemap25TreeNode$LT$K$C$$x20V$GT$3new20h3224765942035844615E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* noalias nocapture sret dereferenceable(56) %87, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg23, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %91)
          to label %normal-return24 unwind label %unwind_custom_25

normal-return24:                                  ; preds = %normal-return22
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %87, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %14
  %96 = load i8** %5
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %13)
  store i8* %96, i8** %13
  store i8* null, i8** %sret_slot
  br label %join27

unwind_custom_25:                                 ; preds = %normal-return22
  %97 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %97, { i8*, i32 }* %4
  br label %clean_custom_26

clean_custom_26:                                  ; preds = %unwind_custom_25
  %98 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %87 to i8*
  call void @_ZN4heap13exchange_free20hf57021ea47434afepyaE(i8* %98, i64 56, i64 8)
  br label %clean_custom_

join27:                                           ; preds = %normal-return24, %join
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value)
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %1)
  %99 = load i8** %sret_slot
  ret i8* %99
}

; Function Attrs: uwtable
define internal i8* @_ZN7treemap6remove21h11046647513133307377E(i8** noalias nocapture dereferenceable(8), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %fmt.i = alloca %"struct.core::fmt::Arguments<[]>[#3]"*
  %sret_slot = alloca i8*
  %node = alloca i8**
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %save = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %2 = alloca { i8*, i8 }
  %3 = alloca i8
  %match = alloca i8
  %4 = alloca i8
  %5 = alloca i8
  %left = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %6 = alloca i8
  %7 = alloca { i8*, i32 }
  %8 = alloca i8*
  %new = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %9 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %let = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %value = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %10 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %11 = alloca i8
  %new21 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %12 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %let23 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %value24 = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %ret = alloca i8*
  %rebalance = alloca i8
  %left_level = alloca i64
  %13 = alloca i8*
  %14 = alloca { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }
  %right_level = alloca i64
  %15 = alloca i8*
  %16 = alloca { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }
  %save_level = alloca i64
  %17 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %autoref = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %for_head = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  %loop_option = alloca i8*
  %18 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %autoref38 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %for_head39 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  %loop_option43 = alloca i8*
  %19 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %autoref47 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %for_head48 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  %loop_option52 = alloca i8*
  %20 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %autoref57 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %for_head58 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  %loop_option62 = alloca i8*
  %21 = alloca i8*
  %match74 = alloca i8*
  %__llmatch = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %value76 = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %22 = alloca { %str_slice* }
  %23 = alloca %str_slice
  %match80 = alloca { %str_slice* }
  %__llmatch82 = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %24 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust84 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store i8** %0, i8*** %node
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %25 = load i8*** %node
  %26 = load i8** %25
  %27 = icmp ne i8* %26, null
  switch i1 %27, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  store i8* null, i8** %sret_slot
  br label %clean_custom_

case_body1:                                       ; preds = %match_else
  %28 = load %"struct.collections::string::String<[]>[#6]"** %key
  %29 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %30 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %29
  %31 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %30, i32 0, i32 0
  %32 = call i8 @_ZN6string22String...std..cmp..Ord3cmp20h5791c2e70e4b413eZ5aE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %28, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %31)
  store i8 %32, i8* %3
  %33 = load i8* %3
  store i8 %33, i8* %match
  %34 = load i8* %match, !range !2
  switch i8 %34, label %match_else5 [
    i8 -1, label %match_case6
    i8 1, label %match_case7
  ]

match_else:                                       ; preds = %entry-block
  %35 = bitcast i8** %25 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %35, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

clean_custom_:                                    ; preds = %clean_ast_4970_89, %clean_custom_70, %case_body
  br label %return

case_body2:                                       ; preds = %match_case6
  %36 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 0
  %37 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %38 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %37
  %39 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %38, i32 0, i32 2
  %40 = load %"struct.collections::string::String<[]>[#6]"** %key
  %41 = call i8* @_ZN7treemap6remove21h11046647513133307377E(i8** noalias nocapture dereferenceable(8) %39, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %40)
  store i8* %41, i8** %36
  %42 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 1
  store i8 1, i8* %42
  br label %join28

case_body3:                                       ; preds = %match_case7
  %43 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 0
  %44 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %45 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %44
  %46 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %45, i32 0, i32 3
  %47 = load %"struct.collections::string::String<[]>[#6]"** %key
  %48 = call i8* @_ZN7treemap6remove21h11046647513133307377E(i8** noalias nocapture dereferenceable(8) %46, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %47)
  store i8* %48, i8** %43
  %49 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 1
  store i8 1, i8* %49
  br label %join28

case_body4:                                       ; preds = %match_else5
  %50 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %51 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %50
  %52 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %51, i32 0, i32 2
  %53 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some20h6251818241695997957E"(i8** noalias dereferenceable(8) %52)
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %4
  %55 = load i8* %4, !range !1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %then-block-4725-, label %else-block20

match_else5:                                      ; preds = %case_body1
  br label %case_body4

match_case6:                                      ; preds = %case_body1
  br label %case_body2

match_case7:                                      ; preds = %case_body1
  br label %case_body3

then-block-4725-:                                 ; preds = %case_body4
  %57 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %58 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %57
  %59 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %58, i32 0, i32 3
  %60 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some20h6251818241695997957E"(i8** noalias dereferenceable(8) %59)
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %5
  %62 = load i8* %5, !range !1
  %63 = trunc i8 %62 to i1
  br i1 %63, label %then-block-4730-, label %else-block14

then-block-4730-:                                 ; preds = %then-block-4725-
  %64 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %65 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %64
  %66 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %65, i32 0, i32 2
  %67 = call noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h4435973800386618100E"(i8** noalias dereferenceable(8) %66)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %67, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %left
  %68 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %left
  %69 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %68, i32 0, i32 3
  %70 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some20h6251818241695997957E"(i8** noalias dereferenceable(8) %69)
          to label %normal-return unwind label %unwind_ast_4730_

normal-return:                                    ; preds = %then-block-4730-
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %6
  %72 = load i8* %6, !range !1
  %73 = trunc i8 %72 to i1
  br i1 %73, label %then-block-4743-, label %else-block

unwind_ast_4730_:                                 ; preds = %join, %normal-return11, %else-block, %then-block-4743-, %then-block-4730-
  %74 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %74, { i8*, i32 }* %7
  br label %clean_ast_4730_

resume:                                           ; preds = %clean_custom_8
  %75 = load { i8*, i32 }* %7
  resume { i8*, i32 } %75

clean_custom_8:                                   ; preds = %clean_ast_4970_, %clean_custom_9
  br label %resume

clean_custom_9:                                   ; preds = %clean_ast_4687_, %clean_ast_4688_
  br label %clean_custom_8

clean_ast_4688_:                                  ; preds = %clean_ast_4821_, %clean_ast_4787_18, %clean_ast_4787_, %clean_ast_4730_
  br label %clean_custom_9

clean_ast_4730_:                                  ; preds = %unwind_ast_4730_
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %left)
  br label %clean_ast_4688_

then-block-4743-:                                 ; preds = %normal-return
  %76 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %77 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %left
  %78 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %77, i32 0, i32 3
  invoke void @_ZN7treemap6remove9heir_swap21h15039439953310266212E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %76, i8** noalias nocapture dereferenceable(8) %78)
          to label %normal-return10 unwind label %unwind_ast_4730_

normal-return10:                                  ; preds = %then-block-4743-
  br label %join

else-block:                                       ; preds = %normal-return
  %79 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %80 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %79
  %81 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %80, i32 0, i32 0
  %82 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %left
  %83 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %82, i32 0, i32 0
  invoke void @_ZN3mem4swap20h5256721121097969009E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %81, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %83)
          to label %normal-return11 unwind label %unwind_ast_4730_

normal-return11:                                  ; preds = %else-block
  %84 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %85 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %84
  %86 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %85, i32 0, i32 1
  %87 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %left
  %88 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %87, i32 0, i32 1
  invoke void @_ZN3mem4swap21h16818024153955010336E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8) %86, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8) %88)
          to label %normal-return12 unwind label %unwind_ast_4730_

normal-return12:                                  ; preds = %normal-return11
  br label %join

join:                                             ; preds = %normal-return12, %normal-return10
  %89 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %90 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %89
  %91 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %90, i32 0, i32 2
  %92 = bitcast i8** %8 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %93 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %left
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %93, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %92
  %94 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %left to i8*
  call void @llvm.memset.p0i8.i64(i8* %94, i8 0, i64 8, i32 8, i1 false)
  %95 = load i8** %8
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %91)
  store i8* %95, i8** %91
  %96 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 0
  %97 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %98 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %97
  %99 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %98, i32 0, i32 2
  %100 = load %"struct.collections::string::String<[]>[#6]"** %key
  %101 = invoke i8* @_ZN7treemap6remove21h11046647513133307377E(i8** noalias nocapture dereferenceable(8) %99, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %100)
          to label %normal-return13 unwind label %unwind_ast_4730_

normal-return13:                                  ; preds = %join
  store i8* %101, i8** %96
  %102 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 1
  store i8 1, i8* %102
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %left)
  br label %join19

else-block14:                                     ; preds = %then-block-4725-
  %103 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %104 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %103
  %105 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %104, i32 0, i32 2
  %106 = call noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h4435973800386618100E"(i8** noalias dereferenceable(8) %105)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %106, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new
  %107 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %108 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new
  %109 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new to i8*
  call void @llvm.memset.p0i8.i64(i8* %109, i8 0, i64 8, i32 8, i1 false)
  %110 = invoke noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @_ZN3mem7replace21h14187458079157624804E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %107, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(56) %108)
          to label %normal-return15 unwind label %unwind_ast_4787_

normal-return15:                                  ; preds = %else-block14
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %110, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %9
  %111 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %9
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %111, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %let
  %112 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %let
  %113 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %112, i32 0, i32 1
  %114 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %113
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %114, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %115 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %113
  %116 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %115, i32 0, i32 0
  %117 = load i64* %116
  %118 = add i64 %117, 1
  store i64 %118, i64* %116
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %let)
  %119 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %120 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %121 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %120
  %122 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %121, i32 0, i32 2
  %123 = invoke noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h4435973800386618100E"(i8** noalias dereferenceable(8) %122)
          to label %normal-return16 unwind label %unwind_ast_4787_17

unwind_ast_4787_:                                 ; preds = %else-block14
  %124 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %124, { i8*, i32 }* %7
  br label %clean_ast_4787_

clean_ast_4787_:                                  ; preds = %unwind_ast_4787_
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new)
  br label %clean_ast_4688_

normal-return16:                                  ; preds = %normal-return15
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %123, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %10
  %125 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %10
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %119)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %125, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %119
  %126 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 0
  %127 = bitcast i8** %126 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %128 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %128, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %127
  %129 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %130 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %129, i32 0, i32 0
  %131 = load i64* %130
  %132 = add i64 %131, 1
  store i64 %132, i64* %130
  %133 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 1
  store i8 1, i8* %133
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value)
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new)
  br label %join19

unwind_ast_4787_17:                               ; preds = %normal-return15
  %134 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %134, { i8*, i32 }* %7
  br label %clean_ast_4787_18

clean_ast_4787_18:                                ; preds = %unwind_ast_4787_17
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value)
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new)
  br label %clean_ast_4688_

join19:                                           ; preds = %normal-return16, %normal-return13
  br label %join27

else-block20:                                     ; preds = %case_body4
  %135 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %136 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %135
  %137 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %136, i32 0, i32 3
  %138 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some20h6251818241695997957E"(i8** noalias dereferenceable(8) %137)
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %11
  %140 = load i8* %11, !range !1
  %141 = trunc i8 %140 to i1
  br i1 %141, label %then-block-4821-, label %else-block25

then-block-4821-:                                 ; preds = %else-block20
  %142 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %143 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %142
  %144 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %143, i32 0, i32 3
  %145 = call noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h4435973800386618100E"(i8** noalias dereferenceable(8) %144)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %145, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new21
  %146 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %147 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new21
  %148 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new21 to i8*
  call void @llvm.memset.p0i8.i64(i8* %148, i8 0, i64 8, i32 8, i1 false)
  %149 = invoke noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @_ZN3mem7replace21h14187458079157624804E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %146, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(56) %147)
          to label %normal-return22 unwind label %unwind_ast_4821_

normal-return22:                                  ; preds = %then-block-4821-
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %149, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %12
  %150 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %12
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %150, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %let23
  %151 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %let23
  %152 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %151, i32 0, i32 1
  %153 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %152
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %153, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value24
  %154 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %152
  %155 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %154, i32 0, i32 0
  %156 = load i64* %155
  %157 = add i64 %156, 1
  store i64 %157, i64* %155
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %let23)
  %158 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 0
  %159 = bitcast i8** %158 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %160 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value24
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %160, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %159
  %161 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value24
  %162 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %161, i32 0, i32 0
  %163 = load i64* %162
  %164 = add i64 %163, 1
  store i64 %164, i64* %162
  %165 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 1
  store i8 1, i8* %165
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value24)
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new21)
  br label %join26

unwind_ast_4821_:                                 ; preds = %then-block-4821-
  %166 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %166, { i8*, i32 }* %7
  br label %clean_ast_4821_

clean_ast_4821_:                                  ; preds = %unwind_ast_4821_
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %new21)
  br label %clean_ast_4688_

else-block25:                                     ; preds = %else-block20
  %167 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 0
  store i8* null, i8** %167
  %168 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 1
  store i8 0, i8* %168
  br label %join26

join26:                                           ; preds = %else-block25, %normal-return22
  br label %join27

join27:                                           ; preds = %join26, %join19
  br label %join28

join28:                                           ; preds = %join27, %case_body3, %case_body2
  %169 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 0
  %170 = bitcast i8** %169 to i8*
  %171 = bitcast i8** %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* %170, i64 8, i32 8, i1 false)
  %172 = load i8** %169
  %173 = icmp ne i8* %172, null
  switch i1 %173, label %enum-iter-unr [
    i1 false, label %enum-iter-variant-0
    i1 true, label %enum-iter-variant-1
  ]

enum-iter-unr:                                    ; preds = %join28
  unreachable

enum-iter-next:                                   ; preds = %enum-iter-variant-1, %enum-iter-variant-0
  %174 = getelementptr inbounds { i8*, i8 }* %2, i32 0, i32 1
  %175 = load i8* %174
  store i8 %175, i8* %rebalance
  call void @"_ZN59_$LP$core..option..Option$LT$Gc$LT$HyObj$GT$$GT$$C$bool$RP$14glue_drop.206617h3db8ae119f29d139E"({ i8*, i8 }* %2)
  %176 = load i8* %rebalance, !range !1
  %177 = trunc i8 %176 to i1
  br i1 %177, label %then-block-4851-, label %next-block72

enum-iter-variant-0:                              ; preds = %join28
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %join28
  %178 = bitcast i8** %169 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %179 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %178
  %180 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %179, i32 0, i32 0
  %181 = load i64* %180
  %182 = add i64 %181, 1
  store i64 %182, i64* %180
  br label %enum-iter-next

then-block-4851-:                                 ; preds = %enum-iter-next
  %183 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %184 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %183
  %185 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %184, i32 0, i32 2
  %186 = invoke i8* @"_ZN6option15Option$LT$T$GT$6as_ref20h3371781005539179550E"(i8** noalias dereferenceable(8) %185)
          to label %normal-return29 unwind label %unwind_ast_4687_

normal-return29:                                  ; preds = %then-block-4851-
  store i8* %186, i8** %13
  %187 = load i8** %13
  %188 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %14, i32 0, i32 0
  store i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)* @_ZN7treemap6remove12closure.2068E, i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %188
  %189 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %14, i32 0, i32 1
  store i8* null, i8** %189
  %190 = invoke i64 @"_ZN6option15Option$LT$T$GT$6map_or21h13946966591004452633E"(i8* %187, i64 0, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %14)
          to label %normal-return30 unwind label %unwind_ast_4687_

unwind_ast_4687_:                                 ; preds = %for_body61, %for_loopback60, %normal-return55, %for_body51, %for_loopback50, %normal-return45, %for_body42, %for_loopback41, %for_exit40, %normal-return36, %next-block, %for_loopback, %then-block-4913-, %normal-return31, %normal-return30, %normal-return29, %then-block-4851-
  %191 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %191, { i8*, i32 }* %7
  br label %clean_ast_4687_

clean_ast_4687_:                                  ; preds = %unwind_ast_4687_
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %ret)
  br label %clean_custom_9

normal-return30:                                  ; preds = %normal-return29
  store i64 %190, i64* %left_level
  %192 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %193 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %192
  %194 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %193, i32 0, i32 3
  %195 = invoke i8* @"_ZN6option15Option$LT$T$GT$6as_ref20h3371781005539179550E"(i8** noalias dereferenceable(8) %194)
          to label %normal-return31 unwind label %unwind_ast_4687_

normal-return31:                                  ; preds = %normal-return30
  store i8* %195, i8** %15
  %196 = load i8** %15
  %197 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %16, i32 0, i32 0
  store i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)* @_ZN7treemap6remove12closure.2070E, i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %197
  %198 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %16, i32 0, i32 1
  store i8* null, i8** %198
  %199 = invoke i64 @"_ZN6option15Option$LT$T$GT$6map_or21h10235861174842785247E"(i8* %196, i64 0, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %16)
          to label %normal-return32 unwind label %unwind_ast_4687_

normal-return32:                                  ; preds = %normal-return31
  store i64 %199, i64* %right_level
  %200 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %201 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %200
  %202 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %201, i32 0, i32 4
  %203 = load i64* %202
  %204 = sub i64 %203, 1
  %205 = load i64* %left_level
  %206 = icmp ult i64 %205, %204
  br i1 %206, label %join33, label %before_rhs

join33:                                           ; preds = %before_rhs, %normal-return32
  %207 = phi i1 [ %206, %normal-return32 ], [ %214, %before_rhs ]
  br i1 %207, label %then-block-4901-, label %next-block65

before_rhs:                                       ; preds = %normal-return32
  %208 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %209 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %208
  %210 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %209, i32 0, i32 4
  %211 = load i64* %210
  %212 = sub i64 %211, 1
  %213 = load i64* %right_level
  %214 = icmp ult i64 %213, %212
  br label %join33

then-block-4901-:                                 ; preds = %join33
  %215 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %216 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %215
  %217 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %216, i32 0, i32 4
  %218 = load i64* %217
  %219 = sub i64 %218, 1
  store i64 %219, i64* %217
  %220 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %221 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %220
  %222 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %221, i32 0, i32 4
  %223 = load i64* %right_level
  %224 = load i64* %222
  %225 = icmp ugt i64 %223, %224
  br i1 %225, label %then-block-4913-, label %next-block

then-block-4913-:                                 ; preds = %then-block-4901-
  %226 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %227 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %226
  %228 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %227, i32 0, i32 4
  %229 = load i64* %228
  store i64 %229, i64* %save_level
  %230 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %231 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %230
  %232 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %231, i32 0, i32 3
  %233 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter20h6363348596437856541E"(i8** noalias dereferenceable(8) %232)
          to label %normal-return34 unwind label %unwind_ast_4687_

normal-return34:                                  ; preds = %then-block-4913-
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %233, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %17
  %234 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %17
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %234, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head
  %235 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %normal-return35
  br label %next-block

for_loopback:                                     ; preds = %for_body, %normal-return34
  %236 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h12414263701235227183E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias dereferenceable(8) %235)
          to label %normal-return35 unwind label %unwind_ast_4687_

for_body:                                         ; preds = %normal-return35
  %237 = bitcast i8** %loop_option to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %238 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %237
  %239 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %238
  %240 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %239, i32 0, i32 4
  %241 = load i64* %save_level
  store i64 %241, i64* %240
  br label %for_loopback

normal-return35:                                  ; preds = %for_loopback
  store i8* %236, i8** %loop_option
  %242 = load i8** %loop_option
  %243 = icmp ne i8* %242, null
  %244 = zext i1 %243 to i8
  %245 = icmp ne i8 %244, 0
  br i1 %245, label %for_body, label %for_exit

next-block:                                       ; preds = %for_exit, %then-block-4901-
  %246 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  invoke void @_ZN7treemap4skew21h11260086946604638793E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %246)
          to label %normal-return36 unwind label %unwind_ast_4687_

normal-return36:                                  ; preds = %next-block
  %247 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %248 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %247
  %249 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %248, i32 0, i32 3
  %250 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter20h6363348596437856541E"(i8** noalias dereferenceable(8) %249)
          to label %normal-return37 unwind label %unwind_ast_4687_

normal-return37:                                  ; preds = %normal-return36
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %250, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %18
  %251 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %18
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %251, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref38
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref38, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head39
  %252 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head39
  br label %for_loopback41

for_exit40:                                       ; preds = %normal-return44
  %253 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  invoke void @_ZN7treemap5split20h6325605105574165687E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %253)
          to label %normal-return55 unwind label %unwind_ast_4687_

for_loopback41:                                   ; preds = %for_exit49, %normal-return37
  %254 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h10673858693401623192E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias dereferenceable(8) %252)
          to label %normal-return44 unwind label %unwind_ast_4687_

for_body42:                                       ; preds = %normal-return44
  %255 = bitcast i8** %loop_option43 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %256 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %255
  invoke void @_ZN7treemap4skew21h11260086946604638793E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %256)
          to label %normal-return45 unwind label %unwind_ast_4687_

normal-return44:                                  ; preds = %for_loopback41
  store i8* %254, i8** %loop_option43
  %257 = load i8** %loop_option43
  %258 = icmp ne i8* %257, null
  %259 = zext i1 %258 to i8
  %260 = icmp ne i8 %259, 0
  br i1 %260, label %for_body42, label %for_exit40

normal-return45:                                  ; preds = %for_body42
  %261 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %255
  %262 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %261
  %263 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %262, i32 0, i32 3
  %264 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter20h6363348596437856541E"(i8** noalias dereferenceable(8) %263)
          to label %normal-return46 unwind label %unwind_ast_4687_

normal-return46:                                  ; preds = %normal-return45
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %264, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %19
  %265 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %19
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %265, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref47
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref47, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head48
  %266 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head48
  br label %for_loopback50

for_exit49:                                       ; preds = %normal-return53
  br label %for_loopback41

for_loopback50:                                   ; preds = %normal-return54, %normal-return46
  %267 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h10369280953692793484E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias dereferenceable(8) %266)
          to label %normal-return53 unwind label %unwind_ast_4687_

for_body51:                                       ; preds = %normal-return53
  %268 = bitcast i8** %loop_option52 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %269 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %268
  invoke void @_ZN7treemap4skew21h11260086946604638793E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %269)
          to label %normal-return54 unwind label %unwind_ast_4687_

normal-return53:                                  ; preds = %for_loopback50
  store i8* %267, i8** %loop_option52
  %270 = load i8** %loop_option52
  %271 = icmp ne i8* %270, null
  %272 = zext i1 %271 to i8
  %273 = icmp ne i8 %272, 0
  br i1 %273, label %for_body51, label %for_exit49

normal-return54:                                  ; preds = %for_body51
  br label %for_loopback50

normal-return55:                                  ; preds = %for_exit40
  %274 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %save
  %275 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %274
  %276 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %275, i32 0, i32 3
  %277 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter20h6363348596437856541E"(i8** noalias dereferenceable(8) %276)
          to label %normal-return56 unwind label %unwind_ast_4687_

normal-return56:                                  ; preds = %normal-return55
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %277, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %20
  %278 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %20
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %278, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref57
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref57, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head58
  %279 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head58
  br label %for_loopback60

for_exit59:                                       ; preds = %normal-return63
  br label %next-block65

for_loopback60:                                   ; preds = %normal-return64, %normal-return56
  %280 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h13969498916322868241E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias dereferenceable(8) %279)
          to label %normal-return63 unwind label %unwind_ast_4687_

for_body61:                                       ; preds = %normal-return63
  %281 = bitcast i8** %loop_option62 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %282 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %281
  invoke void @_ZN7treemap5split20h6325605105574165687E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %282)
          to label %normal-return64 unwind label %unwind_ast_4687_

normal-return63:                                  ; preds = %for_loopback60
  store i8* %280, i8** %loop_option62
  %283 = load i8** %loop_option62
  %284 = icmp ne i8* %283, null
  %285 = zext i1 %284 to i8
  %286 = icmp ne i8 %285, 0
  br i1 %286, label %for_body61, label %for_exit59

normal-return64:                                  ; preds = %for_body61
  br label %for_loopback60

next-block65:                                     ; preds = %for_exit59, %join33
  %287 = bitcast i8** %ret to i8*
  %288 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %288, i8* %287, i64 8, i32 8, i1 false)
  %289 = load i8** %ret
  %290 = icmp ne i8* %289, null
  switch i1 %290, label %enum-iter-unr66 [
    i1 false, label %enum-iter-variant-068
    i1 true, label %enum-iter-variant-169
  ]

enum-iter-unr66:                                  ; preds = %next-block65
  unreachable

enum-iter-next67:                                 ; preds = %enum-iter-variant-169, %enum-iter-variant-068
  br label %clean_ast_4851_

enum-iter-variant-068:                            ; preds = %next-block65
  br label %enum-iter-next67

enum-iter-variant-169:                            ; preds = %next-block65
  %291 = bitcast i8** %ret to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %292 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %291
  %293 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %292, i32 0, i32 0
  %294 = load i64* %293
  %295 = add i64 %294, 1
  store i64 %295, i64* %293
  br label %enum-iter-next67

clean_custom_70:                                  ; preds = %clean_ast_4687_71
  br label %clean_custom_

clean_ast_4687_71:                                ; preds = %clean_ast_4851_
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %ret)
  br label %clean_custom_70

clean_ast_4851_:                                  ; preds = %enum-iter-next67
  br label %clean_ast_4687_71

next-block72:                                     ; preds = %enum-iter-next
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %ret)
  br label %join73

join73:                                           ; preds = %next-block72
  %296 = load i8*** %node
  %297 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h8538741487010282934E"(i8** noalias dereferenceable(8) %296)
  store i8* %297, i8** %21
  %298 = load i8** %21
  store i8* %298, i8** %match74
  %299 = load i8** %match74
  %300 = icmp ne i8* %299, null
  switch i1 %300, label %match_else78 [
    i1 true, label %match_case79
  ]

case_body75:                                      ; preds = %match_case79
  %301 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %__llmatch
  %302 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %301
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %302, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value76
  %303 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %301
  %304 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %303, i32 0, i32 0
  %305 = load i64* %304
  %306 = add i64 %305, 1
  store i64 %306, i64* %304
  %307 = bitcast i8** %sret_slot to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %308 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value76
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %308, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %307
  %309 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value76
  %310 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %309, i32 0, i32 0
  %311 = load i64* %310
  %312 = add i64 %311, 1
  store i64 %312, i64* %310
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value76)
  %313 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value76 to i8*
  call void @llvm.memset.p0i8.i64(i8* %313, i8 0, i64 8, i32 8, i1 false)
  br label %join88

case_body77:                                      ; preds = %match_else78
  %314 = getelementptr inbounds { %str_slice* }* %22, i32 0, i32 0
  %315 = getelementptr inbounds %str_slice* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8]* @str2072, i32 0, i32 0), i8** %315
  %316 = getelementptr inbounds %str_slice* %23, i32 0, i32 1
  store i64 16, i64* %316
  store %str_slice* %23, %str_slice** %314
  %317 = load { %str_slice* }* %22
  store { %str_slice* } %317, { %str_slice* }* %match80
  %318 = getelementptr inbounds { %str_slice* }* %match80, i32 0, i32 0
  store %str_slice** %318, %str_slice*** %__llmatch82
  br label %case_body81

match_else78:                                     ; preds = %join73
  br label %case_body77

match_case79:                                     ; preds = %join73
  %319 = bitcast i8** %match74 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %320 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %319
  %321 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %320, i32 0, i32 0
  %322 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %320, i32 0, i32 1
  %323 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %320, i32 0, i32 2
  %324 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %320, i32 0, i32 3
  %325 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %320, i32 0, i32 4
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %322, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %__llmatch
  br label %case_body75

case_body81:                                      ; preds = %case_body77
  %326 = load %str_slice*** %__llmatch82
  %327 = load %str_slice** %326
  store %str_slice* %327, %str_slice** %__arg0
  %328 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %24 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %329 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %24, i32 0
  %330 = load %str_slice** %__arg0
  invoke void @_ZN3fmt8argument21h12476212057166802099E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %329, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h9972084880571542156E, %str_slice* noalias dereferenceable(16) %330)
          to label %normal-return83 unwind label %unwind_ast_4970_

normal-return83:                                  ; preds = %case_body81
  %331 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %24, %"struct.core::fmt::Argument<[]>[#3]"** %331
  %332 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %332
  %333 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @_ZN7treemap6remove15__STATIC_FMTSTR20hc4afdecb9c2052741zfE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %333
  %334 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %334
  %335 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %336 = load %"struct.core::fmt::Argument<[]>[#3]"** %335
  %337 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %338 = load i64* %337
  %339 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust84, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %336, %"struct.core::fmt::Argument<[]>[#3]"** %339
  %340 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust84, i32 0, i32 1
  store i64 %338, i64* %340
  invoke void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust84)
          to label %normal-return85 unwind label %unwind_ast_4970_

unwind_ast_4970_:                                 ; preds = %normal-return85, %normal-return83, %case_body81
  %341 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %341, { i8*, i32 }* %7
  br label %clean_ast_4970_

clean_ast_4970_:                                  ; preds = %unwind_ast_4970_
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %match74)
  br label %clean_custom_8

normal-return85:                                  ; preds = %normal-return83
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %342 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  invoke void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %342, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN7treemap6remove8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dCzfE)
          to label %.noexc unwind label %unwind_ast_4970_

.noexc:                                           ; preds = %normal-return85
  unreachable

_ZN7treemap6remove8_run_fmt20hc8d661d65014c5844vbE.exit: ; No predecessors!
  br label %normal-return86

normal-return86:                                  ; preds = %_ZN7treemap6remove8_run_fmt20hc8d661d65014c5844vbE.exit
  unreachable

join87:                                           ; No predecessors!
  unreachable

join88:                                           ; preds = %case_body75
  br label %clean_ast_4970_89

return:                                           ; preds = %clean_custom_
  %343 = load i8** %sret_slot
  ret i8* %343

clean_ast_4970_89:                                ; preds = %join88
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %match74)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find12closure.2085E"(i8*, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %k2 = alloca %"struct.collections::string::String<[]>[#6]"*
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %k2
  %2 = bitcast i8* %0 to { i64, void (i8*)*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }* %2, i32 0, i32 4
  %4 = getelementptr inbounds { %"struct.collections::string::String<[]>[#6]"** }* %3, i32 0, i32 0
  %5 = load %"struct.collections::string::String<[]>[#6]"*** %4
  %6 = load %"struct.collections::string::String<[]>[#6]"** %5
  %7 = load %"struct.collections::string::String<[]>[#6]"** %k2
  %8 = call i8 @_ZN6string22String...std..cmp..Ord3cmp20h5791c2e70e4b413eZ5aE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %6, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %7)
  ret i8 %8
}

; Function Attrs: uwtable
define internal i8* @_ZN7treemap14tree_find_with20h7514359392390990967E(i8** noalias dereferenceable(8), { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %llretslotptr = alloca i8**
  %node = alloca i8**
  %iret_slot = alloca {}
  %current = alloca i8**
  %r = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %2 = alloca i8
  %match = alloca i8
  %ret_slot = alloca i8*
  %ret_slot9 = alloca i8*
  store i8** %0, i8*** %node
  %3 = load i8*** %node
  store i8** %3, i8*** %current
  br label %loop_body

loop_exit:                                        ; No predecessors!
  unreachable

return:                                           ; preds = %clean_custom_
  %4 = load i8*** %llretslotptr
  %5 = load i8** %4
  ret i8* %5

loop_body:                                        ; preds = %join10, %entry-block
  %6 = load i8*** %current
  %7 = load i8** %6
  %8 = icmp ne i8* %7, null
  switch i1 %8, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %9 = getelementptr inbounds { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* %1, i32 0, i32 0
  %10 = load i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)** %9
  %11 = getelementptr inbounds { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* %1, i32 0, i32 1
  %12 = load i8** %11
  %13 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %r
  %14 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %13
  %15 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %14, i32 0, i32 0
  %16 = call i8 %10(i8* %12, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %15)
  store i8 %16, i8* %2
  %17 = load i8* %2
  store i8 %17, i8* %match
  %18 = load i8* %match, !range !2
  switch i8 %18, label %match_else5 [
    i8 -1, label %match_case6
    i8 1, label %match_case7
  ]

case_body1:                                       ; preds = %match_else
  store i8* null, i8** %ret_slot9
  store i8** %ret_slot9, i8*** %llretslotptr
  br label %clean_ast_5324_

match_else:                                       ; preds = %loop_body
  br label %case_body1

match_case:                                       ; preds = %loop_body
  %19 = bitcast i8** %6 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %19, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %r
  br label %case_body

case_body2:                                       ; preds = %match_case6
  %20 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %r
  %21 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %20
  %22 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %21, i32 0, i32 2
  store i8** %22, i8*** %current
  br label %join

case_body3:                                       ; preds = %match_case7
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %r
  %24 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %23
  %25 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %24, i32 0, i32 3
  store i8** %25, i8*** %current
  br label %join

case_body4:                                       ; preds = %match_else5
  %26 = bitcast i8** %ret_slot to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }***
  %27 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %r
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %27
  %29 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %28, i32 0, i32 1
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %29, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %26
  store i8** %ret_slot, i8*** %llretslotptr
  br label %clean_ast_5348_

match_else5:                                      ; preds = %case_body
  br label %case_body4

match_case6:                                      ; preds = %case_body
  br label %case_body2

match_case7:                                      ; preds = %case_body
  br label %case_body3

clean_custom_:                                    ; preds = %clean_ast_5324_
  br label %return

clean_ast_5324_:                                  ; preds = %clean_custom_8, %case_body1
  br label %clean_custom_

clean_custom_8:                                   ; preds = %clean_ast_5348_
  br label %clean_ast_5324_

clean_ast_5348_:                                  ; preds = %case_body4
  br label %clean_custom_8

join:                                             ; preds = %case_body3, %case_body2
  br label %join10

join10:                                           ; preds = %join
  br label %loop_body
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap10deallocate20h9bf409ac61227d36anaE(i8*, i64, i64) unnamed_addr #6 {
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
  call void @_ZN4heap3imp10deallocate20h606bf6b5ba986901wnaE(i8* %3, i64 %4, i64 %5)
  ret void
}

define internal void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8**) unnamed_addr #2 {
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
  %3 = bitcast i8** %0 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %3)
  br label %enum-iter-next
}

; Function Attrs: uwtable
define internal void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop20h7863157990256731130E"(%"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %src.i = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %tmp.i = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %self = alloca %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"*
  %1 = alloca %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"
  %2 = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }
  %__adjust = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }
  %for_head = alloca %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"*
  %loop_option = alloca i8*
  %3 = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %stmt = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  store %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %0, %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  %4 = load %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  %5 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %4, i32 0, i32 1
  %6 = load i64* %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-408-, label %next-block

then-block-408-:                                  ; preds = %entry-block
  %8 = load %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h5104803920725135249E"({ { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* noalias dereferenceable(24) %8)
  %9 = getelementptr inbounds { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %2, i32 0, i32 0
  %10 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %9
  %11 = getelementptr inbounds { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %2, i32 0, i32 1
  %12 = load i64* %11
  %13 = getelementptr inbounds { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %__adjust, i32 0, i32 0
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %10, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %13
  %14 = getelementptr inbounds { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %__adjust, i32 0, i32 1
  store i64 %12, i64* %14
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter20h1754519697596984949E"(%"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  store %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %1, %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %for_head
  %15 = load %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  %16 = load %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  %17 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %16, i32 0, i32 2
  %18 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %17
  %19 = load %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  %20 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %19, i32 0, i32 1
  %21 = load i64* %20
  call void @_ZN3vec7dealloc21h12409898724757469936E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %18, i64 %21)
  br label %next-block

for_loopback:                                     ; preds = %for_body, %then-block-408-
  %22 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h12662504175410271295E"(%"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* noalias dereferenceable(16) %15)
  store i8* %22, i8** %loop_option
  %23 = load i8** %loop_option
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i8
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %27 = bitcast i8** %loop_option to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }***
  %28 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %27
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %28, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %src.i
  %29 = call { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @_ZN3mem13uninitialized21h13078035450044880641E()
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %29, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %tmp.i
  %30 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %src.i
  %31 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %tmp.i to i8*
  %32 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 8, i1 false)
  %33 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %tmp.i
  %34 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %tmp.i
  %35 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %34, i32 0, i32 0
  %36 = load i64* %35
  %37 = add i64 %36, 1
  store i64 %37, i64* %35
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %tmp.i)
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %33, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %3
  %38 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %3
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %38, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %stmt
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %stmt)
  br label %for_loopback

next-block:                                       ; preds = %for_exit, %entry-block
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN9local_ptr8compiled17try_unsafe_borrow20h3331809765958055171E(%"enum.core::option::Option<[*mut rustrt::task::Task]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #8 {
entry-block:
  %1 = alloca i8
  %2 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null21h12633168751847506226E"(i8** noalias dereferenceable(8) @_ZN9local_ptr8compiled10RT_TLS_PTR20h105e8dd88d5b0520anaE)
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %1
  %4 = load i8* %1, !range !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %then-block-1029-, label %else-block

then-block-1029-:                                 ; preds = %entry-block
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

join:                                             ; preds = %else-block, %then-block-1029-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4util12get_box_size20hd2477b4d30612678jCaE(i64, i64) unnamed_addr #6 {
entry-block:
  %body_size = alloca i64
  %body_align = alloca i64
  %header_size = alloca i64
  %total_size = alloca i64
  %2 = alloca i64
  store i64 %0, i64* %body_size
  store i64 %1, i64* %body_align
  %3 = call i64 @_ZN3mem7size_of21h11960470453402003427E()
  store i64 %3, i64* %header_size
  %4 = load i64* %header_size
  %5 = load i64* %body_align
  %6 = call i64 @_ZN4util8align_to20h0740447209c40597QCaE(i64 %4, i64 %5)
  store i64 %6, i64* %2
  %7 = load i64* %2
  %8 = load i64* %body_size
  %9 = add i64 %7, %8
  store i64 %9, i64* %total_size
  %10 = load i64* %total_size
  ret i64 %10
}

; Function Attrs: inlinehint uwtable
define internal %"struct.core::raw::Box<[()]>[#3]"* @_ZN10local_heap12MemoryRegion6malloc20h74af4089ded7ebc0wFaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias nocapture dereferenceable(16), i64) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"*
  %size = alloca i64
  %total_size = alloca i64
  %2 = alloca i64
  %alloc = alloca %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"*
  %3 = alloca i8*
  %alloc1 = alloca %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"*
  store %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* %0, %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  store i64 %1, i64* %size
  %4 = call i64 @_ZN10local_heap11AllocHeader4size20h2b05783194a246e1KSbE()
  store i64 %4, i64* %2
  %5 = load i64* %2
  %6 = load i64* %size
  %7 = add i64 %6, %5
  store i64 %7, i64* %total_size
  %8 = load i64* %total_size
  %9 = call i8* @_ZN9libc_heap10malloc_raw20h5d89a4c7e926684cBGaE(i64 %8)
  store i8* %9, i8** %3
  %10 = load i8** %3
  %11 = bitcast i8* %10 to %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"*
  store %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %11, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc
  %12 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc
  store %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %12, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc1
  %13 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc1
  %14 = load i64* %size
  %15 = trunc i64 %14 to i32
  call void @_ZN10local_heap11AllocHeader4init20hed1508c9cf9afc39TRbE(%"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias %13, i32 %15)
  %16 = load %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  %17 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc1
  call void @_ZN10local_heap12MemoryRegion5claim20h37ddfd800d3058d1hHaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias dereferenceable(16) %16, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias %17)
  %18 = load %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  %19 = getelementptr inbounds %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* %18, i32 0, i32 0
  %20 = load i64* %19
  %21 = add i64 %20, 1
  store i64 %21, i64* %19
  %22 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc1
  %23 = call %"struct.core::raw::Box<[()]>[#3]"* @_ZN10local_heap11AllocHeader6as_box20had843ebd1f8d9fb0jSbE(%"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias %22)
  br label %clean_ast_1955_

return:                                           ; preds = %clean_custom_
  ret %"struct.core::raw::Box<[()]>[#3]"* %23

clean_custom_:                                    ; preds = %clean_ast_1955_
  br label %return

clean_ast_1955_:                                  ; preds = %entry-block
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal %"struct.core::raw::Box<[()]>[#3]"* @_ZN3ptr8mut_null20h2699528725421567466E() unnamed_addr #6 {
entry-block:
  ret %"struct.core::raw::Box<[()]>[#3]"* null
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h9838635047130624387E"(%"struct.core::raw::Box<[()]>[#3]"** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.core::raw::Box<[()]>[#3]"**
  %1 = alloca %"struct.core::raw::Box<[()]>[#3]"*
  store %"struct.core::raw::Box<[()]>[#3]"** %0, %"struct.core::raw::Box<[()]>[#3]"*** %self
  %2 = load %"struct.core::raw::Box<[()]>[#3]"*** %self
  %3 = call %"struct.core::raw::Box<[()]>[#3]"* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h11847267753840507564E"()
  store %"struct.core::raw::Box<[()]>[#3]"* %3, %"struct.core::raw::Box<[()]>[#3]"** %1
  %4 = load %"struct.core::raw::Box<[()]>[#3]"** %1
  %5 = load %"struct.core::raw::Box<[()]>[#3]"** %2
  %6 = icmp eq %"struct.core::raw::Box<[()]>[#3]"* %5, %4
  %7 = zext i1 %6 to i8
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap12MemoryRegion4free20h63ccde44bba4f9e1VsaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias nocapture dereferenceable(16), %"struct.core::raw::Box<[()]>[#3]"*) unnamed_addr #6 {
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
  br i1 %11, label %then-block-1179-, label %next-block2

then-block-1179-:                                 ; preds = %entry-block
  %12 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h9838635047130624387E"(%"struct.core::raw::Box<[()]>[#3]"** noalias dereferenceable(8) %alloc)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2
  %14 = load i8* %2, !range !1
  %15 = trunc i8 %14 to i1
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  br i1 %17, label %then-block-1185-, label %next-block

then-block-1185-:                                 ; preds = %then-block-1179-
  %18 = getelementptr inbounds { %str_slice* }* %3, i32 0, i32 0
  %19 = getelementptr inbounds %str_slice* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8]* @str1644, i32 0, i32 0), i8** %19
  %20 = getelementptr inbounds %str_slice* %4, i32 0, i32 1
  store i64 16, i64* %20
  store %str_slice* %4, %str_slice** %18
  %21 = load { %str_slice* }* %3
  store { %str_slice* } %21, { %str_slice* }* %match
  %22 = getelementptr inbounds { %str_slice* }* %match, i32 0, i32 0
  store %str_slice** %22, %str_slice*** %__llmatch
  br label %case_body

case_body:                                        ; preds = %then-block-1185-
  %23 = load %str_slice*** %__llmatch
  %24 = load %str_slice** %23
  store %str_slice* %24, %str_slice** %__arg0
  %25 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %5 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %26 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %5, i32 0
  %27 = load %str_slice** %__arg0
  call void @_ZN3fmt8argument21h12476212057166802099E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %26, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h9972084880571542156E, %str_slice* noalias dereferenceable(16) %27)
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
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
  call void @_ZN4util5abort20h0ca03d03e01bc130hHaE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args)
  unreachable

join:                                             ; No predecessors!
  unreachable

next-block:                                       ; preds = %then-block-1179-
  br label %next-block2

next-block2:                                      ; preds = %next-block, %entry-block
  %38 = load %"struct.core::raw::Box<[()]>[#3]"** %alloc
  %39 = call %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* @_ZN10local_heap11AllocHeader4from20h1e5e3819e8cbb242dTbE(%"struct.core::raw::Box<[()]>[#3]"* %38)
  store %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %39, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc3
  %40 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc3
  call void @_ZN10local_heap11AllocHeader11assert_sane20h0fd6b1b0a42260aa3RbE(%"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias %40)
  %41 = load %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  %42 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %alloc3
  store %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %42, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %6
  %43 = load %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %6
  call void @_ZN10local_heap12MemoryRegion7release20h9641ad85bbb4abe4HxaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias dereferenceable(16) %41, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias %43)
  %44 = load i8* bitcast (i1* @_ZN4util14ENFORCE_SANITY20h859984a9e25719baHFaE to i8*), !range !1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %then-block-1265-, label %next-block14

then-block-1265-:                                 ; preds = %next-block2
  %46 = load %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  %47 = getelementptr inbounds %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* %46, i32 0, i32 0
  %48 = load i64* %47
  %49 = icmp ugt i64 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %then-block-1272-, label %next-block13

then-block-1272-:                                 ; preds = %then-block-1265-
  %51 = getelementptr inbounds { %str_slice* }* %7, i32 0, i32 0
  %52 = getelementptr inbounds %str_slice* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8]* @str1701, i32 0, i32 0), i8** %52
  %53 = getelementptr inbounds %str_slice* %8, i32 0, i32 1
  store i64 25, i64* %53
  store %str_slice* %8, %str_slice** %51
  %54 = load { %str_slice* }* %7
  store { %str_slice* } %54, { %str_slice* }* %match4
  %55 = getelementptr inbounds { %str_slice* }* %match4, i32 0, i32 0
  store %str_slice** %55, %str_slice*** %__llmatch6
  br label %case_body5

case_body5:                                       ; preds = %then-block-1272-
  %56 = load %str_slice*** %__llmatch6
  %57 = load %str_slice** %56
  store %str_slice* %57, %str_slice** %__arg07
  %58 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %9 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %59 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %9, i32 0
  %60 = load %str_slice** %__arg07
  call void @_ZN3fmt8argument21h12476212057166802099E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %59, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h9972084880571542156E, %str_slice* noalias dereferenceable(16) %60)
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
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args9, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust10, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust11)
  call void @_ZN4util5abort20h0ca03d03e01bc130hHaE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args9)
  unreachable

join12:                                           ; No predecessors!
  unreachable

next-block13:                                     ; preds = %then-block-1265-
  br label %next-block14

next-block14:                                     ; preds = %next-block13, %next-block2
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
define internal void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h17160037277174970517E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %p = alloca i8*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = call i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr21h11114097305101176258E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i8* %5, i8** %p
  %6 = call i64 @_ZN3mem7size_of20h4317957657225853614E()
  store i64 %6, i64* %2
  %7 = load i64* %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-454-, label %else-block

then-block-454-:                                  ; preds = %entry-block
  %9 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 0
  %10 = load i8** %p
  store i8* %10, i8** %9
  %11 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 1
  %12 = load i8** %p
  %13 = ptrtoint i8* %12 to i64
  %14 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h12869243457985040856E"({ i8*, i64 }* noalias dereferenceable(16) %1)
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
  %23 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h12869243457985040856E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %23, i64* %4
  %24 = load i64* %4
  %25 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16943014747259935478E"(i8* %22, i64 %24)
  store i8* %25, i8** %21
  %26 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 2
  br label %join

join:                                             ; preds = %else-block, %then-block-454-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3vec7dealloc20h7730075810567566121E(i8*, i64) unnamed_addr #6 {
entry-block:
  %ptr = alloca i8*
  %len = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %len
  %5 = call i64 @_ZN3mem7size_of20h4317957657225853614E()
  store i64 %5, i64* %2
  %6 = load i64* %2
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-787-, label %next-block

then-block-787-:                                  ; preds = %entry-block
  %8 = load i8** %ptr
  %9 = call i64 @_ZN3mem7size_of20h4317957657225853614E()
  store i64 %9, i64* %3
  %10 = load i64* %3
  %11 = load i64* %len
  %12 = mul i64 %11, %10
  %13 = call i64 @_ZN3mem12min_align_of21h14007097282357148611E()
  store i64 %13, i64* %4
  %14 = load i64* %4
  call void @_ZN4heap10deallocate20h9bf409ac61227d36anaE(i8* %8, i64 %12, i64 %14)
  br label %next-block

next-block:                                       ; preds = %then-block-787-, %entry-block
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h10179305505548937745E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
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
  br i1 %8, label %then-block-715-, label %else-block

then-block-715-:                                  ; preds = %entry-block
  store i8* null, i8** %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %9 = call i64 @_ZN3mem7size_of20h4317957657225853614E()
  store i64 %9, i64* %1
  %10 = load i64* %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then-block-726-, label %else-block1

then-block-726-:                                  ; preds = %else-block
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
  %29 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16943014747259935478E"(i8* %28, i64 1)
  store i8* %29, i8** %25
  %30 = load i8** %old
  store i8* %30, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block1, %then-block-726-
  br label %join2

join2:                                            ; preds = %join, %then-block-715-
  %31 = load i8** %sret_slot
  ret i8* %31
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3mem13uninitialized20h6003631304141149970E() unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %0 = load i8* %sret_slot
  ret i8 %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr20h4766596166365344895E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h7098930115819154362E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3num15uint.CheckedAdd11checked_add20h3073b85693993761eLaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16), i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i64*
  %v = alloca i64*
  %3 = alloca { i64, i8 }
  %x = alloca i64
  %y = alloca i8
  store i64* %1, i64** %self
  store i64* %2, i64** %v
  %4 = load i64** %self
  %5 = load i64* %4
  %6 = load i64** %v
  %7 = load i64* %6
  %8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  %11 = zext i1 %10 to i8
  %12 = insertvalue { i64, i8 } undef, i64 %9, 0
  %13 = insertvalue { i64, i8 } %12, i8 %11, 1
  store { i64, i8 } %13, { i64, i8 }* %3
  %14 = getelementptr inbounds { i64, i8 }* %3, i32 0, i32 0
  %15 = load i64* %14
  store i64 %15, i64* %x
  %16 = getelementptr inbounds { i64, i8 }* %3, i32 0, i32 1
  %17 = load i8* %16
  store i8 %17, i8* %y
  %18 = load i8* %y, !range !1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %then-block-2334-, label %else-block

then-block-2334-:                                 ; preds = %entry-block
  %20 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 0, i8* %20
  br label %join

else-block:                                       ; preds = %entry-block
  %21 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %0 to { i8, i64 }*
  %22 = getelementptr inbounds { i8, i64 }* %21, i32 0, i32 1
  %23 = load i64* %x
  store i64 %23, i64* %22
  %24 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 1, i8* %24
  br label %join

join:                                             ; preds = %else-block, %then-block-2334-
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$7reserve21h13212851711842483923E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %capacity = alloca i64
  %2 = alloca i64
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store i64 %1, i64* %capacity
  %3 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %4 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %3, i32 0, i32 1
  %5 = load i64* %capacity
  %6 = load i64* %4
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %then-block-2431-, label %next-block

then-block-2431-:                                 ; preds = %entry-block
  %8 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %9 = load i64* %capacity
  %10 = call i64 @_ZN3num17next_power_of_two21h16516235781568657064E(i64 %9)
  store i64 %10, i64* %2
  %11 = load i64* %2
  call void @"_ZN3vec12Vec$LT$T$GT$13reserve_exact21h12153616742349947687E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %8, i64 %11)
  br label %next-block

next-block:                                       ; preds = %then-block-2431-, %entry-block
  ret void
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show20h9972084880571542156E(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
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

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument21h12476212057166802099E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %str_slice* noalias dereferenceable(16)) unnamed_addr #6 {
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

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num8uint.One3one20h75b78ac0c0361a46fWaE() unnamed_addr #6 {
entry-block:
  ret i64 1
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3cmp5impls15uint.PartialOrd2lt20h77d8b38155191ca1JYaE(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i64*
  %other = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %other
  %2 = load i64** %self
  %3 = load i64** %other
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = icmp ult i64 %4, %5
  %7 = zext i1 %6 to i8
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN5clone10uint.Clone5clone20h52bd283ee1dbe60d3YaE(i64* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i64*
  store i64* %0, i64** %self
  %1 = load i64** %self
  %2 = load i64* %1
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3ops31uint.Add$LT$uint$C$$x20uint$GT$3add20head13432b6aa382ajXaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i64*
  %other = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %other
  %2 = load i64** %self
  %3 = load i64** %other
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = add i64 %4, %5
  ret i64 %6
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr19h930305733634173756E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 2
  %3 = load i8** %2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h16254767136300664190E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h8514421820480863674E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset21h15650325833884570764E"(i8*, i64) unnamed_addr #6 {
entry-block:
  %self = alloca i8*
  %count = alloca i64
  %2 = alloca i8*
  store i8* %0, i8** %self
  store i64 %1, i64* %count
  %3 = load i8** %self
  %4 = load i64* %count
  %5 = getelementptr inbounds i8* %3, i64 %4
  store i8* %5, i8** %2
  %6 = load i8** %2
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h11280969635860028743E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy21h17521472862367474021E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16943014747259935478E"(i8*, i64) unnamed_addr #6 {
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
define internal i8* @_ZN4heap3imp8allocate20h422683b32144e324aTaE(i64, i64) unnamed_addr #6 {
entry-block:
  %a.i = alloca i64
  %2 = alloca i64
  %size = alloca i64
  %align = alloca i64
  %ptr = alloca i8*
  %3 = alloca i8*
  %4 = alloca i32
  %__arg = alloca i64
  %__arg1 = alloca i32
  %5 = alloca i8
  store i64 %0, i64* %size
  store i64 %1, i64* %align
  %6 = load i64* %size
  %7 = load i64* %align
  store i64 %7, i64* %a.i
  %8 = load i64* %a.i
  %9 = call i64 @_ZN3num8uint.Int14trailing_zeros20h64deb80084259a5bboaE(i64 %8)
  store i64 %9, i64* %2
  %10 = load i64* %2
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4
  %12 = load i32* %4
  store i64 %6, i64* %__arg
  %13 = load i64* %__arg
  store i32 %12, i32* %__arg1
  %14 = load i32* %__arg1
  %15 = call i8* @je_mallocx(i64 %13, i32 %14)
  store i8* %15, i8** %3
  %16 = load i8** %3
  store i8* %16, i8** %ptr
  %17 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null21h12633168751847506226E"(i8** noalias dereferenceable(8) %ptr)
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %5
  %19 = load i8* %5, !range !1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %then-block-2824-, label %next-block

then-block-2824-:                                 ; preds = %entry-block
  call void @_ZN3oom20h70228b11624052eclRaE()
  unreachable

next-block:                                       ; preds = %entry-block
  %21 = load i8** %ptr
  ret i8* %21
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3vec12Vec$LT$T$GT$6as_ptr20h4208660445556822084E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 2
  %3 = load i8** %2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN6string22String...std..cmp..Ord3cmp20h5791c2e70e4b413eZ5aE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  %__arg_0 = alloca %"struct.collections::string::String<[]>[#6]"*
  %__self_1_0 = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %__self_0_0 = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %__test = alloca i8
  %2 = alloca i8
  %3 = alloca i8
  %arg = alloca i8
  store %"struct.collections::string::String<[]>[#6]"* %0, %"struct.collections::string::String<[]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %__arg_0
  %4 = load %"struct.collections::string::String<[]>[#6]"** %__arg_0
  %5 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %4, i32 0, i32 0
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %5, %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_1_0
  br label %case_body

case_body:                                        ; preds = %entry-block
  %6 = load %"struct.collections::string::String<[]>[#6]"** %self
  %7 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %6, i32 0, i32 0
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %7, %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_0_0
  br label %case_body1

case_body1:                                       ; preds = %case_body
  %8 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_0_0
  %9 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_1_0
  %10 = call i8 @"_ZN3vec16Vec$LT$T$GT$.Ord3cmp20h9269371395790719354E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %8, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %9)
  store i8 %10, i8* %__test
  store i8 0, i8* %3
  %11 = load i8* %3
  store i8 %11, i8* %arg
  %12 = call zeroext i1 @_ZN3cmp30Ordering...std..cmp..PartialEq2eq20hb5fd6818aae20cc8S9aE(i8* noalias dereferenceable(1) %__test, i8* noalias dereferenceable(1) %arg)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2
  %14 = load i8* %2, !range !1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %then-block-3625-, label %else-block

then-block-3625-:                                 ; preds = %case_body1
  store i8 0, i8* %sret_slot
  br label %join

else-block:                                       ; preds = %case_body1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %sret_slot, i8* %__test, i64 1, i32 1, i1 false)
  br label %join

join:                                             ; preds = %else-block, %then-block-3625-
  br label %join2

join2:                                            ; preds = %join
  br label %join3

join3:                                            ; preds = %join2
  %16 = load i8* %sret_slot
  ret i8 %16
}

; Function Attrs: inlinehint uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @_ZN3mem7replace20h2867984239755068690E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*) unnamed_addr #6 {
entry-block:
  %dest = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %src = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %2 = alloca { i8*, i32 }
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %0, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %dest
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %1, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %src
  %3 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %dest
  invoke void @_ZN3mem4swap21h16818024153955010336E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8) %3, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8) %src)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %4 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %src
  %5 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %src
  %6 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %5, i32 0, i32 0
  %7 = load i64* %6
  %8 = add i64 %7, 1
  store i64 %8, i64* %6
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %src)
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %4

unwind_custom_:                                   ; preds = %entry-block
  %9 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %9, { i8*, i32 }* %2
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %10 = load { i8*, i32 }* %2
  resume { i8*, i32 } %10

clean_custom_:                                    ; preds = %unwind_custom_
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %src)
  br label %resume
}

; Function Attrs: uwtable
define internal void @_ZN7treemap4skew21h11260086946604638793E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8)) unnamed_addr #0 {
entry-block:
  %node = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %1 = alloca i8
  %2 = alloca i8*
  %3 = alloca { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }
  %__closure = alloca { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }
  %save = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %4 = alloca { i8*, i32 }
  %5 = alloca i8*
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %6
  %8 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %7, i32 0, i32 2
  %9 = call i8* @"_ZN6option15Option$LT$T$GT$6as_ref20h3371781005539179550E"(i8** noalias dereferenceable(8) %8)
  store i8* %9, i8** %2
  %10 = load i8** %2
  %11 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %11
  %12 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %3, i32 0, i32 0
  store i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)* @_ZN7treemap4skew12closure.1960E, i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %12
  %13 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }* %__closure to i8*
  %14 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %3, i32 0, i32 1
  store i8* %13, i8** %14
  %15 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or20h7692067001239892045E"(i8* %10, i1 zeroext false, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %3)
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %1
  %17 = load i8* %1, !range !1
  %18 = trunc i8 %17 to i1
  br i1 %18, label %then-block-3929-, label %next-block

then-block-3929-:                                 ; preds = %entry-block
  %19 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %20 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %19
  %21 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %20, i32 0, i32 2
  %22 = call noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h4435973800386618100E"(i8** noalias dereferenceable(8) %21)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %22, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %24 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %23
  %25 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %24, i32 0, i32 2
  %26 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save
  %27 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %26, i32 0, i32 3
  invoke void @_ZN3mem4swap20h9061616491255965989E(i8** noalias nocapture dereferenceable(8) %25, i8** noalias nocapture dereferenceable(8) %27)
          to label %normal-return unwind label %unwind_ast_3929_

normal-return:                                    ; preds = %then-block-3929-
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  invoke void @_ZN3mem4swap21h10677523221287842282E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %28, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %save)
          to label %normal-return1 unwind label %unwind_ast_3929_

unwind_ast_3929_:                                 ; preds = %normal-return, %then-block-3929-
  %29 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %29, { i8*, i32 }* %4
  br label %clean_ast_3929_

resume:                                           ; preds = %clean_custom_
  %30 = load { i8*, i32 }* %4
  resume { i8*, i32 } %30

clean_custom_:                                    ; preds = %clean_ast_3929_
  br label %resume

clean_ast_3929_:                                  ; preds = %unwind_ast_3929_
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save)
  br label %clean_custom_

normal-return1:                                   ; preds = %normal-return
  %31 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %31
  %33 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %32, i32 0, i32 3
  %34 = bitcast i8** %5 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %35 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %35, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %34
  %36 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 8, i32 8, i1 false)
  %37 = load i8** %5
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %33)
  store i8* %37, i8** %33
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save)
  br label %next-block

next-block:                                       ; preds = %normal-return1, %entry-block
  ret void
}

; Function Attrs: uwtable
define internal void @_ZN7treemap5split20h6325605105574165687E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8)) unnamed_addr #0 {
entry-block:
  %node = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %1 = alloca i8
  %2 = alloca i8*
  %3 = alloca { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }
  %__closure = alloca { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }
  %save = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %4 = alloca { i8*, i32 }
  %5 = alloca i8*
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %6
  %8 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %7, i32 0, i32 3
  %9 = call i8* @"_ZN6option15Option$LT$T$GT$6as_ref20h3371781005539179550E"(i8** noalias dereferenceable(8) %8)
  store i8* %9, i8** %2
  %10 = load i8** %2
  %11 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %11
  %12 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %3, i32 0, i32 0
  store i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)* @_ZN7treemap5split12closure.2004E, i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %12
  %13 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }* %__closure to i8*
  %14 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %3, i32 0, i32 1
  store i8* %13, i8** %14
  %15 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or20h6377557475906863925E"(i8* %10, i1 zeroext false, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %3)
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %1
  %17 = load i8* %1, !range !1
  %18 = trunc i8 %17 to i1
  br i1 %18, label %then-block-4317-, label %next-block

then-block-4317-:                                 ; preds = %entry-block
  %19 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %20 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %19
  %21 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %20, i32 0, i32 3
  %22 = call noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h4435973800386618100E"(i8** noalias dereferenceable(8) %21)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %22, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %24 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %23
  %25 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %24, i32 0, i32 3
  %26 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save
  %27 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %26, i32 0, i32 2
  invoke void @_ZN3mem4swap20h9061616491255965989E(i8** noalias nocapture dereferenceable(8) %25, i8** noalias nocapture dereferenceable(8) %27)
          to label %normal-return unwind label %unwind_ast_4317_

normal-return:                                    ; preds = %then-block-4317-
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save
  %29 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %28, i32 0, i32 4
  %30 = load i64* %29
  %31 = add i64 %30, 1
  store i64 %31, i64* %29
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  invoke void @_ZN3mem4swap21h10677523221287842282E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %32, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %save)
          to label %normal-return1 unwind label %unwind_ast_4317_

unwind_ast_4317_:                                 ; preds = %normal-return, %then-block-4317-
  %33 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %33, { i8*, i32 }* %4
  br label %clean_ast_4317_

resume:                                           ; preds = %clean_custom_
  %34 = load { i8*, i32 }* %4
  resume { i8*, i32 } %34

clean_custom_:                                    ; preds = %clean_ast_4317_
  br label %resume

clean_ast_4317_:                                  ; preds = %unwind_ast_4317_
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save)
  br label %clean_custom_

normal-return1:                                   ; preds = %normal-return
  %35 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %36 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %35
  %37 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %36, i32 0, i32 2
  %38 = bitcast i8** %5 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %39 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %39, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %38
  %40 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 8, i32 8, i1 false)
  %41 = load i8** %5
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %37)
  store i8* %41, i8** %37
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %save)
  br label %next-block

next-block:                                       ; preds = %normal-return1, %entry-block
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN7treemap25TreeNode$LT$K$C$$x20V$GT$3new20h3224765942035844615E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* noalias nocapture sret dereferenceable(56), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*) unnamed_addr #6 {
entry-block:
  %value = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %3 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 0
  %4 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  %5 = bitcast %"struct.collections::string::String<[]>[#6]"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 24, i32 8, i1 false)
  %6 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false)
  %7 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 1
  %8 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %8, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %7
  %9 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value
  %10 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %9, i32 0, i32 0
  %11 = load i64* %10
  %12 = add i64 %11, 1
  store i64 %12, i64* %10
  %13 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 2
  store i8* null, i8** %13
  %14 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 3
  store i8* null, i8** %14
  %15 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 4
  store i64 1, i64* %15
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %value)
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some20h6251818241695997957E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8**
  store i8** %0, i8*** %self
  %1 = load i8*** %self
  %2 = load i8** %1
  %3 = icmp ne i8* %2, null
  switch i1 %3, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  store i8 1, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  store i8 0, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %4 = bitcast i8** %1 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %5 = load i8* %sret_slot, !range !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define internal noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h4435973800386618100E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %fmt.i = alloca %"struct.core::fmt::Arguments<[]>[#3]"*
  %self = alloca i8**
  %1 = alloca i8*
  %match = alloca i8*
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %2 = alloca { %str_slice* }
  %3 = alloca %str_slice
  %match2 = alloca { %str_slice* }
  %__llmatch = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %4 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %5 = alloca { i8*, i32 }
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust4 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store i8** %0, i8*** %self
  %6 = load i8*** %self
  %7 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h8538741487010282934E"(i8** noalias dereferenceable(8) %6)
  store i8* %7, i8** %1
  %8 = load i8** %1
  store i8* %8, i8** %match
  %9 = load i8** %match
  %10 = icmp ne i8* %9, null
  switch i1 %10, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %11 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %12 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %11
  %13 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %11)
  %14 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 8, i32 8, i1 false)
  br label %join7

case_body1:                                       ; preds = %match_else
  %15 = getelementptr inbounds { %str_slice* }* %2, i32 0, i32 0
  %16 = getelementptr inbounds %str_slice* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8]* @str2000, i32 0, i32 0), i8** %16
  %17 = getelementptr inbounds %str_slice* %3, i32 0, i32 1
  store i64 48, i64* %17
  store %str_slice* %3, %str_slice** %15
  %18 = load { %str_slice* }* %2
  store { %str_slice* } %18, { %str_slice* }* %match2
  %19 = getelementptr inbounds { %str_slice* }* %match2, i32 0, i32 0
  store %str_slice** %19, %str_slice*** %__llmatch
  br label %case_body3

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %20 = bitcast i8** %match to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %20, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  br label %case_body

case_body3:                                       ; preds = %case_body1
  %21 = load %str_slice*** %__llmatch
  %22 = load %str_slice** %21
  store %str_slice* %22, %str_slice** %__arg0
  %23 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %4 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %24 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %4, i32 0
  %25 = load %str_slice** %__arg0
  invoke void @_ZN3fmt8argument21h12476212057166802099E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %24, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h9972084880571542156E, %str_slice* noalias dereferenceable(16) %25)
          to label %normal-return unwind label %unwind_ast_4021_

normal-return:                                    ; preds = %case_body3
  %26 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %4, %"struct.core::fmt::Argument<[]>[#3]"** %26
  %27 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %27
  %28 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @"_ZN6option15Option$LT$T$GT$11take_unwrap15__STATIC_FMTSTR20h79b308b23b8faec4KDmE" to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %28
  %29 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %29
  %30 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %31 = load %"struct.core::fmt::Argument<[]>[#3]"** %30
  %32 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %33 = load i64* %32
  %34 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %31, %"struct.core::fmt::Argument<[]>[#3]"** %34
  %35 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 1
  store i64 %33, i64* %35
  invoke void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
          to label %normal-return5 unwind label %unwind_ast_4021_

unwind_ast_4021_:                                 ; preds = %normal-return5, %normal-return, %case_body3
  %36 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %36, { i8*, i32 }* %5
  br label %clean_ast_4021_

resume:                                           ; preds = %clean_custom_
  %37 = load { i8*, i32 }* %5
  resume { i8*, i32 } %37

clean_custom_:                                    ; preds = %clean_ast_4021_
  br label %resume

clean_ast_4021_:                                  ; preds = %unwind_ast_4021_
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %match)
  br label %clean_custom_

normal-return5:                                   ; preds = %normal-return
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %38 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  invoke void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %38, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt10_FILE_LINE20h9519b9138055b1fdlDmE")
          to label %.noexc unwind label %unwind_ast_4021_

.noexc:                                           ; preds = %normal-return5
  unreachable

"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt20h01d4f944a09cd273sgbE.exit": ; No predecessors!
  br label %normal-return6

normal-return6:                                   ; preds = %"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt20h01d4f944a09cd273sgbE.exit"
  unreachable

join:                                             ; No predecessors!
  unreachable

join7:                                            ; preds = %case_body
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %match)
  ret %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %12
}

define internal void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**) unnamed_addr #2 {
entry-block:
  %1 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %0
  %2 = icmp ne %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %1, null
  br i1 %2, label %cond, label %next

next:                                             ; preds = %cond, %entry-block
  ret void

cond:                                             ; preds = %entry-block
  call void @"_ZN83collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$14glue_drop.135117hc156b4eaed87e794E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %1)
  %3 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %1 to i8*
  call void @_ZN4heap13exchange_free20hf57021ea47434afepyaE(i8* %3, i64 56, i64 8)
  br label %next
}

; Function Attrs: uwtable
define internal void @_ZN7treemap6remove9heir_swap21h15039439953310266212E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #0 {
entry-block:
  %node = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %child = alloca i8**
  %2 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %autoref = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %for_head = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  %loop_option = alloca i8*
  %3 = alloca i8
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  store i8** %1, i8*** %child
  %4 = load i8*** %child
  %5 = call %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter20h6363348596437856541E"(i8** noalias dereferenceable(8) %4)
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %5, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %2
  %6 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %2
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %6, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %autoref, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head
  %7 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  ret void

for_loopback:                                     ; preds = %join, %entry-block
  %8 = call i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h9068743539420794767E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias dereferenceable(8) %7)
  store i8* %8, i8** %loop_option
  %9 = load i8** %loop_option
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i8
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %13 = bitcast i8** %loop_option to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %14 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %13
  %15 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %14
  %16 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %15, i32 0, i32 3
  %17 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some20h6251818241695997957E"(i8** noalias dereferenceable(8) %16)
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %3
  %19 = load i8* %3, !range !1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %then-block-5101-, label %else-block

then-block-5101-:                                 ; preds = %for_body
  %21 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %22 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %13
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %22
  %24 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %23, i32 0, i32 3
  call void @_ZN7treemap6remove9heir_swap21h15039439953310266212E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %21, i8** noalias nocapture dereferenceable(8) %24)
  br label %join

else-block:                                       ; preds = %for_body
  %25 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %26 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %25
  %27 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %26, i32 0, i32 0
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %13
  %29 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %28
  %30 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %29, i32 0, i32 0
  call void @_ZN3mem4swap20h5256721121097969009E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %27, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %30)
  %31 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %node
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %31
  %33 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %32, i32 0, i32 1
  %34 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %13
  %35 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %34
  %36 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %35, i32 0, i32 1
  call void @_ZN3mem4swap21h16818024153955010336E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8) %33, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8) %36)
  br label %join

join:                                             ; preds = %else-block, %then-block-5101-
  br label %for_loopback
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h5256721121097969009E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %x = alloca %"struct.collections::string::String<[]>[#6]"*
  %y = alloca %"struct.collections::string::String<[]>[#6]"*
  %t = alloca %"struct.collections::string::String<[]>[#6]"
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %2 = alloca { i8*, i32 }
  store %"struct.collections::string::String<[]>[#6]"* %0, %"struct.collections::string::String<[]>[#6]"** %x
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %y
  call void @_ZN3mem13uninitialized20h4880390407245026246E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %t)
  %3 = load %"struct.collections::string::String<[]>[#6]"** %x
  %4 = bitcast %"struct.collections::string::String<[]>[#6]"* %t to i8*
  %5 = bitcast %"struct.collections::string::String<[]>[#6]"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  %6 = load %"struct.collections::string::String<[]>[#6]"** %x
  %7 = load %"struct.collections::string::String<[]>[#6]"** %y
  %8 = bitcast %"struct.collections::string::String<[]>[#6]"* %6 to i8*
  %9 = bitcast %"struct.collections::string::String<[]>[#6]"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  %10 = load %"struct.collections::string::String<[]>[#6]"** %y
  %11 = bitcast %"struct.collections::string::String<[]>[#6]"* %10 to i8*
  %12 = bitcast %"struct.collections::string::String<[]>[#6]"* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 8, i1 false)
  %13 = bitcast %"struct.collections::string::String<[]>[#6]"* %t to i8*
  %14 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %13, i64 24, i32 8, i1 false)
  %15 = bitcast %"struct.collections::string::String<[]>[#6]"* %t to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 24, i32 8, i1 false)
  invoke void @_ZN3mem6forget20h3854408200636608975E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg)
          to label %normal-return unwind label %unwind_ast_4159_

normal-return:                                    ; preds = %entry-block
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %t)
  ret void

unwind_ast_4159_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_4159_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_4159_
  br label %resume

clean_ast_4159_:                                  ; preds = %unwind_ast_4159_
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap21h16818024153955010336E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8), { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %y = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %t = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %2 = alloca { i8*, i32 }
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %0, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %x
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %1, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %y
  %3 = call { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @_ZN3mem13uninitialized21h13078035450044880641E()
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %3, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %t
  %4 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %x
  %5 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %t to i8*
  %6 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %x
  %8 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %y
  %9 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %7 to i8*
  %10 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %y
  %12 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %11 to i8*
  %13 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %14 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %t
  %15 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %t
  %16 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %15, i32 0, i32 0
  %17 = load i64* %16
  %18 = add i64 %17, 1
  store i64 %18, i64* %16
  invoke void @_ZN3mem6forget20h3898390138327521584E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %14)
          to label %normal-return unwind label %unwind_ast_4159_

normal-return:                                    ; preds = %entry-block
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %t)
  ret void

unwind_ast_4159_:                                 ; preds = %entry-block
  %19 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %19, { i8*, i32 }* %2
  br label %clean_ast_4159_

resume:                                           ; preds = %clean_custom_
  %20 = load { i8*, i32 }* %2
  resume { i8*, i32 } %20

clean_custom_:                                    ; preds = %clean_ast_4159_
  br label %resume

clean_ast_4159_:                                  ; preds = %unwind_ast_4159_
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @_ZN3mem7replace21h14187458079157624804E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8), %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(56)) unnamed_addr #6 {
entry-block:
  %dest = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %src = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %2 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %dest
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %1, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %src
  %3 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %dest
  invoke void @_ZN3mem4swap21h10677523221287842282E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %3, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8) %src)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %4 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %src
  %5 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %src to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %src)
  ret %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %4

unwind_custom_:                                   ; preds = %entry-block
  %6 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %6, { i8*, i32 }* %2
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %7 = load { i8*, i32 }* %2
  resume { i8*, i32 } %7

clean_custom_:                                    ; preds = %unwind_custom_
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %src)
  br label %resume
}

define internal void @"_ZN59_$LP$core..option..Option$LT$Gc$LT$HyObj$GT$$GT$$C$bool$RP$14glue_drop.206617h3db8ae119f29d139E"({ i8*, i8 }*) unnamed_addr #2 {
entry-block:
  %1 = getelementptr inbounds { i8*, i8 }* %0, i32 0, i32 0
  call void @"_ZN43core..option..Option$LT$Gc$LT$HyObj$GT$$GT$14glue_drop.200217h782ce556e1345d86E"(i8** %1)
  %2 = getelementptr inbounds { i8*, i8 }* %0, i32 0, i32 1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$6as_ref20h3371781005539179550E"(i8** noalias dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca i8**
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store i8** %0, i8*** %self
  %1 = load i8*** %self
  %2 = load i8** %1
  %3 = icmp ne i8* %2, null
  switch i1 %3, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %4 = bitcast i8** %sret_slot to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %5 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %5, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %4
  br label %join

case_body1:                                       ; preds = %match_else
  store i8* null, i8** %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %6 = bitcast i8** %1 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %6, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %7 = load i8** %sret_slot
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN7treemap6remove12closure.2068E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %2 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %3 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %2
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %3, i32 0, i32 4
  %5 = load i64* %4
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN6option15Option$LT$T$GT$6map_or21h13946966591004452633E"(i8*, i64, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i64
  %self = alloca i8*
  %def = alloca i64
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store i8* %0, i8** %self
  store i64 %1, i64* %def
  %3 = load i8** %self
  %4 = icmp ne i8* %3, null
  switch i1 %4, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %5 = load i64* %def
  store i64 %5, i64* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %6
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %7, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %8 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %9 = load i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %8
  %10 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %11 = load i8** %10
  %12 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %13 = call i64 %9(i8* %11, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8) %12)
  store i64 %13, i64* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %14 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %14, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %15 = load i64* %sret_slot
  ret i64 %15
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN7treemap6remove12closure.2070E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %2 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %3 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %2
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %3, i32 0, i32 4
  %5 = load i64* %4
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN6option15Option$LT$T$GT$6map_or21h10235861174842785247E"(i8*, i64, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i64
  %self = alloca i8*
  %def = alloca i64
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store i8* %0, i8** %self
  store i64 %1, i64* %def
  %3 = load i8** %self
  %4 = icmp ne i8* %3, null
  switch i1 %4, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %5 = load i64* %def
  store i64 %5, i64* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %6
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %7, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %8 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %9 = load i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %8
  %10 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %11 = load i8** %10
  %12 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %13 = call i64 %9(i8* %11, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8) %12)
  store i64 %13, i64* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %14 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %14, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %15 = load i64* %sret_slot
  ret i64 %15
}

; Function Attrs: inlinehint uwtable
define internal %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter20h6363348596437856541E"(i8** noalias dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"
  %self = alloca i8**
  store i8** %0, i8*** %self
  %1 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %sret_slot, i32 0, i32 0
  %2 = load i8*** %self
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$6as_mut21h11798425240803546064E"(i8** noalias dereferenceable(8) %2)
  store i8* %3, i8** %1
  %4 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %sret_slot
  ret %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]" %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h12414263701235227183E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h4719519686323764762E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h10673858693401623192E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h7989013547032206781E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h10369280953692793484E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h4064744253151855656E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h13969498916322868241E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take21h16315617631350327925E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h8538741487010282934E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace20h5491476427371247786E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap3imp10deallocate20h606bf6b5ba986901wnaE(i8*, i64, i64) unnamed_addr #6 {
entry-block:
  %a.i = alloca i64
  %3 = alloca i64
  %ptr = alloca i8*
  %_size = alloca i64
  %align = alloca i64
  %4 = alloca i32
  %__arg = alloca i8*
  %__arg1 = alloca i32
  store i8* %0, i8** %ptr
  store i64 %1, i64* %_size
  store i64 %2, i64* %align
  %5 = load i8** %ptr
  %6 = load i64* %align
  store i64 %6, i64* %a.i
  %7 = load i64* %a.i
  %8 = call i64 @_ZN3num8uint.Int14trailing_zeros20h64deb80084259a5bboaE(i64 %7)
  store i64 %8, i64* %3
  %9 = load i64* %3
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4
  %11 = load i32* %4
  store i8* %5, i8** %__arg
  %12 = load i8** %__arg
  store i32 %11, i32* %__arg1
  %13 = load i32* %__arg1
  call void @je_dallocx(i8* %12, i32 %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h5104803920725135249E"({ { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* noalias dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"*
  %2 = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  store %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %1, %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  %3 = bitcast { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %0 to %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  %6 = call { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h17658305519088760983E"(%"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* noalias dereferenceable(24) %5)
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %6, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %2
  %7 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %2
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %7, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %4
  %8 = getelementptr inbounds %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %3, i32 0, i32 1
  %9 = load %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  %10 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %9, i32 0, i32 0
  %11 = load i64* %10
  store i64 %11, i64* %8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter20h1754519697596984949E"(%"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %p = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = call { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr21h10394284955300754819E"({ { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias dereferenceable(16) %1)
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %5, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %p
  %6 = call i64 @_ZN3mem7size_of20h8864858839010952293E()
  store i64 %6, i64* %2
  %7 = load i64* %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-454-, label %else-block

then-block-454-:                                  ; preds = %entry-block
  %9 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %0, i32 0, i32 0
  %10 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %p
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %10, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %9
  %11 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %0, i32 0, i32 1
  %12 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %p
  %13 = ptrtoint { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %12 to i64
  %14 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len19h497451754805360639E"({ { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias dereferenceable(16) %1)
  store i64 %14, i64* %3
  %15 = load i64* %3
  %16 = add i64 %13, %15
  %17 = inttoptr i64 %16 to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %17, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %11
  %18 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %0, i32 0, i32 2
  br label %join

else-block:                                       ; preds = %entry-block
  %19 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %0, i32 0, i32 0
  %20 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %p
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %20, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %19
  %21 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %0, i32 0, i32 1
  %22 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %p
  %23 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len19h497451754805360639E"({ { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias dereferenceable(16) %1)
  store i64 %23, i64* %4
  %24 = load i64* %4
  %25 = call { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h1455077648097415041E"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %22, i64 %24)
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %25, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %21
  %26 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %0, i32 0, i32 2
  br label %join

join:                                             ; preds = %else-block, %then-block-454-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3vec7dealloc21h12409898724757469936E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64) unnamed_addr #6 {
entry-block:
  %ptr = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %len = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %0, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %ptr
  store i64 %1, i64* %len
  %5 = call i64 @_ZN3mem7size_of20h8864858839010952293E()
  store i64 %5, i64* %2
  %6 = load i64* %2
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-787-, label %next-block

then-block-787-:                                  ; preds = %entry-block
  %8 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %ptr
  %9 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %8 to i8*
  %10 = call i64 @_ZN3mem7size_of20h8864858839010952293E()
  store i64 %10, i64* %3
  %11 = load i64* %3
  %12 = load i64* %len
  %13 = mul i64 %12, %11
  %14 = call i64 @_ZN3mem12min_align_of20h3880773610615526558E()
  store i64 %14, i64* %4
  %15 = load i64* %4
  call void @_ZN4heap10deallocate20h9bf409ac61227d36anaE(i8* %9, i64 %13, i64 %15)
  br label %next-block

next-block:                                       ; preds = %then-block-787-, %entry-block
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h12662504175410271295E"(%"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"*
  %1 = alloca i64
  %old = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  store %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %0, %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %self
  %2 = load %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %self
  %3 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %self
  %5 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %4, i32 0, i32 1
  %6 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %3
  %7 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %5
  %8 = icmp eq { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %6, %7
  br i1 %8, label %then-block-715-, label %else-block

then-block-715-:                                  ; preds = %entry-block
  store i8* null, i8** %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %9 = call i64 @_ZN3mem7size_of20h8864858839010952293E()
  store i64 %9, i64* %1
  %10 = load i64* %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then-block-726-, label %else-block1

then-block-726-:                                  ; preds = %else-block
  %12 = load %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %self
  %13 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %12, i32 0, i32 0
  %14 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %13 to i64*
  %15 = load %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %self
  %16 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %15, i32 0, i32 0
  %17 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %16
  %18 = ptrtoint { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %17 to i64
  %19 = add i64 %18, 1
  store i64 %19, i64* %14
  %20 = bitcast i8** %sret_slot to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }***
  %21 = bitcast { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %20 to i64*
  store i64 1, i64* %21
  br label %join

else-block1:                                      ; preds = %else-block
  %22 = load %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %self
  %23 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %22, i32 0, i32 0
  %24 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %23
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %24, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %old
  %25 = load %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %self
  %26 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %25, i32 0, i32 0
  %27 = load %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"** %self
  %28 = getelementptr inbounds %"struct.core::slice::Items<[Gc<HyObj>]>[#3]"* %27, i32 0, i32 0
  %29 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %28
  %30 = call { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h1455077648097415041E"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %29, i64 1)
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %30, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %26
  %31 = bitcast i8** %sret_slot to { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }***
  %32 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %old
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %32, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %31
  br label %join

join:                                             ; preds = %else-block1, %then-block-726-
  br label %join2

join2:                                            ; preds = %join, %then-block-715-
  %33 = load i8** %sret_slot
  ret i8* %33
}

; Function Attrs: inlinehint uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* @_ZN3mem13uninitialized21h13078035450044880641E() unnamed_addr #6 {
entry-block:
  %sret_slot = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  %0 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %sret_slot
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null21h12633168751847506226E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  %3 = call i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null20h3792616523012248945E"()
  store i8* %3, i8** %1
  %4 = load i8** %1
  %5 = load i8** %2
  %6 = icmp eq i8* %5, %4
  %7 = zext i1 %6 to i8
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of21h11960470453402003427E() unnamed_addr #6 {
entry-block:
  ret i64 32
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4util8align_to20h0740447209c40597QCaE(i64, i64) unnamed_addr #6 {
entry-block:
  %fmt.i = alloca %"struct.core::fmt::Arguments<[]>[#3]"*
  %size = alloca i64
  %align = alloca i64
  %2 = alloca { %str_slice* }
  %3 = alloca %str_slice
  %match = alloca { %str_slice* }
  %__llmatch = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %4 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust1 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store i64 %0, i64* %size
  store i64 %1, i64* %align
  %5 = load i64* %align
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %then-block-1796-, label %next-block

then-block-1796-:                                 ; preds = %entry-block
  %8 = getelementptr inbounds { %str_slice* }* %2, i32 0, i32 0
  %9 = getelementptr inbounds %str_slice* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8]* @str1721, i32 0, i32 0), i8** %9
  %10 = getelementptr inbounds %str_slice* %3, i32 0, i32 1
  store i64 28, i64* %10
  store %str_slice* %3, %str_slice** %8
  %11 = load { %str_slice* }* %2
  store { %str_slice* } %11, { %str_slice* }* %match
  %12 = getelementptr inbounds { %str_slice* }* %match, i32 0, i32 0
  store %str_slice** %12, %str_slice*** %__llmatch
  br label %case_body

case_body:                                        ; preds = %then-block-1796-
  %13 = load %str_slice*** %__llmatch
  %14 = load %str_slice** %13
  store %str_slice* %14, %str_slice** %__arg0
  %15 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %4 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %16 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %4, i32 0
  %17 = load %str_slice** %__arg0
  call void @_ZN3fmt8argument21h12476212057166802099E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %16, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h9972084880571542156E, %str_slice* noalias dereferenceable(16) %17)
  %18 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %4, %"struct.core::fmt::Argument<[]>[#3]"** %18
  %19 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %19
  %20 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @_ZN4util8align_to15__STATIC_FMTSTR20h44a31ebe05f5633fxmaE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %20
  %21 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %21
  %22 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %23 = load %"struct.core::fmt::Argument<[]>[#3]"** %22
  %24 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %25 = load i64* %24
  %26 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust1, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %23, %"struct.core::fmt::Argument<[]>[#3]"** %26
  %27 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust1, i32 0, i32 1
  store i64 %25, i64* %27
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %28 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  call void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %28, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN4util8align_to8_run_fmt10_FILE_LINE20hb822f8b6378d3fd88laE)
  unreachable

_ZN4util8align_to8_run_fmt20h042d87fd2898bbbcUEaE.exit: ; No predecessors!
  unreachable

join:                                             ; No predecessors!
  unreachable

next-block:                                       ; preds = %entry-block
  %29 = load i64* %size
  %30 = load i64* %align
  %31 = add i64 %29, %30
  %32 = sub i64 %31, 1
  %33 = load i64* %align
  %34 = sub i64 %33, 1
  %35 = xor i64 %34, -1
  %36 = and i64 %32, %35
  ret i64 %36
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN9libc_heap10malloc_raw20h5d89a4c7e926684cBGaE(i64) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %size = alloca i64
  %p = alloca i8*
  %__arg = alloca i64
  %1 = alloca i8
  store i64 %0, i64* %size
  %2 = load i64* %size
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %then-block-2024-, label %else-block

then-block-2024-:                                 ; preds = %entry-block
  %4 = call i8* @_ZN3ptr8mut_null20h4729858734166612970E()
  store i8* %4, i8** %sret_slot
  br label %join

else-block:                                       ; preds = %entry-block
  %5 = load i64* %size
  store i64 %5, i64* %__arg
  %6 = load i64* %__arg
  %7 = call i8* @malloc(i64 %6)
  store i8* %7, i8** %p
  %8 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h1375346477668000666E"(i8** noalias dereferenceable(8) %p)
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %1
  %10 = load i8* %1, !range !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %then-block-2043-, label %next-block

then-block-2043-:                                 ; preds = %else-block
  call void @_ZN3oom20h70228b11624052eclRaE()
  unreachable

next-block:                                       ; preds = %else-block
  %12 = load i8** %p
  store i8* %12, i8** %sret_slot
  br label %join

join:                                             ; preds = %next-block, %then-block-2024-
  %13 = load i8** %sret_slot
  ret i8* %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap12MemoryRegion5claim20h37ddfd800d3058d1hHaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias nocapture dereferenceable(16), %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias nocapture) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"*
  %_alloc = alloca %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"*
  store %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* %0, %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  store %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %1, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %_alloc
  ret void
}

; Function Attrs: inlinehint uwtable
define internal %"struct.core::raw::Box<[()]>[#3]"* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h11847267753840507564E"() unnamed_addr #6 {
entry-block:
  %0 = call %"struct.core::raw::Box<[()]>[#3]"* @_ZN3ptr8mut_null20h2699528725421567466E()
  ret %"struct.core::raw::Box<[()]>[#3]"* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN10local_heap12MemoryRegion7release20h9641ad85bbb4abe4HxaE(%"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* noalias nocapture dereferenceable(16), %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* noalias nocapture) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"*
  %_alloc = alloca %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"*
  store %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"* %0, %"struct.rustrt::local_heap::MemoryRegion<[]>[#9]"** %self
  store %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"* %1, %"struct.rustrt::local_heap::AllocHeader<[]>[#9]"** %_alloc
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr21h11114097305101176258E"({ i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { i8*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3raw4Repr4repr21h18243396947234541453E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %1, i32 0, i32 0
  %4 = load i8** %3
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of20h4317957657225853614E() unnamed_addr #6 {
entry-block:
  ret i64 1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem12min_align_of21h14007097282357148611E() unnamed_addr #6 {
entry-block:
  ret i64 1
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h7098930115819154362E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized20h4154962329586011586E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num17next_power_of_two21h16516235781568657064E(i64) unnamed_addr #6 {
entry-block:
  %n = alloca i64
  %halfbits = alloca i64
  %1 = alloca i64
  %tmp = alloca i64
  %2 = alloca i64
  %arg = alloca i64
  %shift = alloca i64
  %3 = alloca i64
  %arg1 = alloca i64
  %4 = alloca i64
  %arg2 = alloca i64
  store i64 %0, i64* %n
  %5 = call i64 @_ZN3mem7size_of20h3173172393428305375E()
  store i64 %5, i64* %1
  %6 = load i64* %1
  %7 = mul i64 %6, 4
  store i64 %7, i64* %halfbits
  %8 = call i64 @_ZN3num8uint.One3one20h75b78ac0c0361a46fWaE()
  store i64 %8, i64* %2
  %9 = load i64* %2
  store i64 %9, i64* %arg
  %10 = call i64 @"_ZN3ops31uint.Sub$LT$uint$C$$x20uint$GT$3sub20h7d9bc3fd51c505delWaE"(i64* noalias dereferenceable(8) %n, i64* noalias dereferenceable(8) %arg)
  store i64 %10, i64* %tmp
  store i64 1, i64* %shift
  br label %while_cond

while_exit:                                       ; preds = %while_cond
  %11 = call i64 @_ZN3num8uint.One3one20h75b78ac0c0361a46fWaE()
  store i64 %11, i64* %4
  %12 = load i64* %4
  store i64 %12, i64* %arg2
  %13 = call i64 @"_ZN3ops31uint.Add$LT$uint$C$$x20uint$GT$3add20head13432b6aa382ajXaE"(i64* noalias dereferenceable(8) %tmp, i64* noalias dereferenceable(8) %arg2)
  ret i64 %13

while_cond:                                       ; preds = %while_body, %entry-block
  %14 = load i64* %shift
  %15 = load i64* %halfbits
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %while_body, label %while_exit

while_body:                                       ; preds = %while_cond
  %17 = call i64 @"_ZN3ops31uint.Shr$LT$uint$C$$x20uint$GT$3shr20hc855ad756df061e6FWaE"(i64* noalias dereferenceable(8) %tmp, i64* noalias dereferenceable(8) %shift)
  store i64 %17, i64* %3
  %18 = load i64* %3
  store i64 %18, i64* %arg1
  %19 = call i64 @"_ZN3ops33uint.BitOr$LT$uint$C$$x20uint$GT$5bitor20h4639f10410774fc7ZWaE"(i64* noalias dereferenceable(8) %tmp, i64* noalias dereferenceable(8) %arg1)
  store i64 %19, i64* %tmp
  %20 = load i64* %shift
  %21 = shl i64 %20, 1
  store i64 %21, i64* %shift
  br label %while_cond
}

; Function Attrs: uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$13reserve_exact21h12153616742349947687E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %capacity = alloca i64
  %2 = alloca i64
  %size = alloca i64
  %3 = alloca %"enum.core::option::Option<[uint]>[#3]"
  %4 = alloca i64
  %addr_of = alloca i64
  %5 = alloca %str_slice
  %6 = alloca i64
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store i64 %1, i64* %capacity
  %7 = call i64 @_ZN3mem7size_of20h4317957657225853614E()
  store i64 %7, i64* %2
  %8 = load i64* %2
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %then-block-2456-, label %next-block

then-block-2456-:                                 ; preds = %entry-block
  br label %clean_custom_

clean_custom_:                                    ; preds = %next-block1, %then-block-2456-
  br label %return

next-block:                                       ; preds = %entry-block
  %10 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %11 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %10, i32 0, i32 1
  %12 = load i64* %capacity
  %13 = load i64* %11
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %then-block-2463-, label %next-block1

then-block-2463-:                                 ; preds = %next-block
  %15 = call i64 @_ZN3mem7size_of20h4317957657225853614E()
  store i64 %15, i64* %4
  %16 = load i64* %4
  store i64 %16, i64* %addr_of
  call void @_ZN3num15uint.CheckedMul11checked_mul20h691930632e2c3dd2ZQaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16) %3, i64* noalias dereferenceable(8) %capacity, i64* noalias dereferenceable(8) %addr_of)
  %17 = getelementptr inbounds %str_slice* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8]* @str1831, i32 0, i32 0), i8** %17
  %18 = getelementptr inbounds %str_slice* %5, i32 0, i32 1
  store i64 17, i64* %18
  %19 = call i64 @"_ZN6option15Option$LT$T$GT$6expect21h11192134910540798717E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture dereferenceable(16) %3, %str_slice* noalias nocapture dereferenceable(16) %5)
  store i64 %19, i64* %size
  %20 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %21 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %20, i32 0, i32 2
  %22 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %23 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %22, i32 0, i32 2
  %24 = load i8** %23
  %25 = load i64* %size
  %26 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %27 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %26, i32 0, i32 1
  %28 = call i64 @_ZN3mem7size_of20h4317957657225853614E()
  store i64 %28, i64* %6
  %29 = load i64* %6
  %30 = load i64* %27
  %31 = mul i64 %30, %29
  %32 = call i8* @_ZN3vec16alloc_or_realloc20h6855895137277096961E(i8* %24, i64 %25, i64 %31)
  store i8* %32, i8** %21
  %33 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %34 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %33, i32 0, i32 1
  %35 = load i64* %capacity
  store i64 %35, i64* %34
  br label %next-block1

next-block1:                                      ; preds = %then-block-2463-, %next-block
  br label %clean_custom_

return:                                           ; preds = %clean_custom_
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h8514421820480863674E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized20h4154962329586011586E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy21h17521472862367474021E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized20h4154962329586011586E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num8uint.Int14trailing_zeros20h64deb80084259a5bboaE(i64) unnamed_addr #6 {
entry-block:
  %self = alloca i64
  %1 = alloca i64
  store i64 %0, i64* %self
  %2 = load i64* %self
  %3 = call i64 @_ZN3num7u64.Int14trailing_zeros20h567b95492d661bfasoaE(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64* %1
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN3vec16Vec$LT$T$GT$.Ord3cmp20h9269371395790719354E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %other = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca { i8*, i64 }
  %3 = alloca { i8*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %other
  %4 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice20h3589916186050778692E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %4)
  %5 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %other
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice20h3589916186050778692E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %3, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
  %6 = call i8 @"_ZN5slice27_$BP$$x27a$x20$x5bT$x5d.Ord3cmp20h9441649809866389570E"({ i8*, i64 }* noalias dereferenceable(16) %2, { i8*, i64 }* noalias dereferenceable(16) %3)
  ret i8 %6
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3cmp30Ordering...std..cmp..PartialEq2eq20hb5fd6818aae20cc8S9aE(i8* noalias nocapture dereferenceable(1), i8* noalias nocapture dereferenceable(1)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %__arg_0 = alloca i8*
  %2 = alloca { i8*, i8* }
  %__self_vi = alloca i64
  %__arg_1_vi = alloca i64
  store i8* %0, i8** %self
  store i8* %1, i8** %__arg_0
  %3 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 0
  %4 = load i8** %self
  store i8* %4, i8** %3
  %5 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 1
  %6 = load i8** %__arg_0
  store i8* %6, i8** %5
  %7 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 0
  %8 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 1
  %9 = load i8** %7
  %10 = load i8* %9, !range !2
  switch i8 %10, label %match_else [
    i8 -1, label %match_case
    i8 0, label %match_case6
    i8 1, label %match_case9
  ]

case_body:                                        ; preds = %match_case5
  store i8 1, i8* %sret_slot
  br label %join25

case_body1:                                       ; preds = %match_case8
  store i8 1, i8* %sret_slot
  br label %join25

case_body2:                                       ; preds = %match_case11
  store i8 1, i8* %sret_slot
  br label %join25

case_body3:                                       ; preds = %match_else10, %match_else7, %match_else4, %match_else
  %11 = load i8** %self
  %12 = load i8* %11, !range !2
  switch i8 %12, label %match_else15 [
    i8 -1, label %match_case16
    i8 0, label %match_case17
  ]

match_else:                                       ; preds = %entry-block
  br label %case_body3

match_case:                                       ; preds = %entry-block
  %13 = load i8** %8
  %14 = load i8* %13, !range !2
  switch i8 %14, label %match_else4 [
    i8 -1, label %match_case5
  ]

match_else4:                                      ; preds = %match_case
  br label %case_body3

match_case5:                                      ; preds = %match_case
  br label %case_body

match_case6:                                      ; preds = %entry-block
  %15 = load i8** %8
  %16 = load i8* %15, !range !2
  switch i8 %16, label %match_else7 [
    i8 0, label %match_case8
  ]

match_else7:                                      ; preds = %match_case6
  br label %case_body3

match_case8:                                      ; preds = %match_case6
  br label %case_body1

match_case9:                                      ; preds = %entry-block
  %17 = load i8** %8
  %18 = load i8* %17, !range !2
  switch i8 %18, label %match_else10 [
    i8 1, label %match_case11
  ]

match_else10:                                     ; preds = %match_case9
  br label %case_body3

match_case11:                                     ; preds = %match_case9
  br label %case_body2

case_body12:                                      ; preds = %match_case16
  store i64 0, i64* %__self_vi
  br label %join

case_body13:                                      ; preds = %match_case17
  store i64 1, i64* %__self_vi
  br label %join

case_body14:                                      ; preds = %match_else15
  store i64 2, i64* %__self_vi
  br label %join

match_else15:                                     ; preds = %case_body3
  br label %case_body14

match_case16:                                     ; preds = %case_body3
  br label %case_body12

match_case17:                                     ; preds = %case_body3
  br label %case_body13

join:                                             ; preds = %case_body14, %case_body13, %case_body12
  %19 = load i8** %__arg_0
  %20 = load i8* %19, !range !2
  switch i8 %20, label %match_else21 [
    i8 -1, label %match_case22
    i8 0, label %match_case23
  ]

case_body18:                                      ; preds = %match_case22
  store i64 0, i64* %__arg_1_vi
  br label %join24

case_body19:                                      ; preds = %match_case23
  store i64 1, i64* %__arg_1_vi
  br label %join24

case_body20:                                      ; preds = %match_else21
  store i64 2, i64* %__arg_1_vi
  br label %join24

match_else21:                                     ; preds = %join
  br label %case_body20

match_case22:                                     ; preds = %join
  br label %case_body18

match_case23:                                     ; preds = %join
  br label %case_body19

join24:                                           ; preds = %case_body20, %case_body19, %case_body18
  store i8 0, i8* %sret_slot
  br label %join25

join25:                                           ; preds = %join24, %case_body2, %case_body1, %case_body
  %21 = load i8* %sret_slot, !range !1
  %22 = trunc i8 %21 to i1
  ret i1 %22
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN7treemap4skew12closure.1960E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %2 = bitcast i8* %0 to { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }* %2, i32 0, i32 4
  %4 = getelementptr inbounds { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** }* %3, i32 0, i32 0
  %5 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %4
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %6
  %8 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %7, i32 0, i32 4
  %9 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %5
  %10 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %9
  %11 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %10, i32 0, i32 4
  %12 = load i64* %8
  %13 = load i64* %11
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i8
  %16 = trunc i8 %15 to i1
  ret i1 %16
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or20h7692067001239892045E"(i8*, i1 zeroext, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %def = alloca i8
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store i8* %0, i8** %self
  %3 = zext i1 %1 to i8
  store i8 %3, i8* %def
  %4 = load i8** %self
  %5 = icmp ne i8* %4, null
  switch i1 %5, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %6 = load i8* %def
  store i8 %6, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %7
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %8, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %9 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %10 = load i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %9
  %11 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %12 = load i8** %11
  %13 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %14 = call zeroext i1 %10(i8* %12, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8) %13)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %16 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %16, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %17 = load i8* %sret_slot, !range !1
  %18 = trunc i8 %17 to i1
  ret i1 %18
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h9061616491255965989E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  %2 = alloca { i8*, i32 }
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %3 = call i8* @_ZN3mem13uninitialized20h8703872481866313551E()
  store i8* %3, i8** %t
  %4 = load i8*** %x
  %5 = bitcast i8** %t to i8*
  %6 = bitcast i8** %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load i8*** %x
  %8 = load i8*** %y
  %9 = bitcast i8** %7 to i8*
  %10 = bitcast i8** %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = load i8*** %y
  %12 = bitcast i8** %11 to i8*
  %13 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %14 = load i8** %t
  %15 = bitcast i8** %t to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 8, i32 8, i1 false)
  invoke void @_ZN3mem6forget21h16417417922187161633E(i8* %14)
          to label %normal-return unwind label %unwind_ast_4159_

normal-return:                                    ; preds = %entry-block
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %t)
  ret void

unwind_ast_4159_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_4159_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_4159_
  br label %resume

clean_ast_4159_:                                  ; preds = %unwind_ast_4159_
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap21h10677523221287842282E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8), %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %y = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %2 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %y
  %3 = call noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @_ZN3mem13uninitialized21h14290888931793358665E()
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %3, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %t
  %4 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %5 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %t to i8*
  %6 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %y
  %9 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %7 to i8*
  %10 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %y
  %12 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %11 to i8*
  %13 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %14 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %t
  %15 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %t to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 8, i32 8, i1 false)
  invoke void @_ZN3mem6forget20h8534564528740356356E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(56) %14)
          to label %normal-return unwind label %unwind_ast_4159_

normal-return:                                    ; preds = %entry-block
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %t)
  ret void

unwind_ast_4159_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_4159_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_4159_
  br label %resume

clean_ast_4159_:                                  ; preds = %unwind_ast_4159_
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN7treemap5split12closure.2004E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  %2 = alloca i8*
  %3 = alloca { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }
  %__closure = alloca { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %4 = bitcast i8* %0 to { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }*
  %5 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }* %4, i32 0, i32 4
  %6 = getelementptr inbounds { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** }* %5, i32 0, i32 0
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %6
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  %9 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %8
  %10 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %9, i32 0, i32 3
  %11 = call i8* @"_ZN6option15Option$LT$T$GT$6as_ref20h3371781005539179550E"(i8** noalias dereferenceable(8) %10)
  store i8* %11, i8** %2
  %12 = load i8** %2
  %13 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %7, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %13
  %14 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %3, i32 0, i32 0
  store i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)* @_ZN7treemap5split12closure.2006E, i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %14
  %15 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }* %__closure to i8*
  %16 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %3, i32 0, i32 1
  store i8* %15, i8** %16
  %17 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or20h6759336829641145124E"(i8* %12, i1 zeroext false, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %3)
  %18 = zext i1 %17 to i8
  %19 = trunc i8 %18 to i1
  ret i1 %19
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or20h6377557475906863925E"(i8*, i1 zeroext, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %def = alloca i8
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store i8* %0, i8** %self
  %3 = zext i1 %1 to i8
  store i8 %3, i8* %def
  %4 = load i8** %self
  %5 = icmp ne i8* %4, null
  switch i1 %5, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %6 = load i8* %def
  store i8 %6, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %7
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %8, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %9 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %10 = load i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %9
  %11 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %12 = load i8** %11
  %13 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %14 = call zeroext i1 %10(i8* %12, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8) %13)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %16 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %16, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %17 = load i8* %sret_slot, !range !1
  %18 = trunc i8 %17 to i1
  ret i1 %18
}

define internal void @"_ZN83collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$14glue_drop.135117hc156b4eaed87e794E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*) unnamed_addr #2 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 0
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %1)
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 1
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %2)
  %3 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %3)
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 3
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %4)
  %5 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, i32 0, i32 4
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h9068743539420794767E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,Gc<HyObj>>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h4840747599093436330E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized20h4880390407245026246E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #6 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h3854408200636608975E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %1 = bitcast %"struct.collections::string::String<[]>[#6]"* %0 to i8*
  %2 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 24, i32 8, i1 false)
  %3 = bitcast %"struct.collections::string::String<[]>[#6]"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false)
  call void @_ZN27collections..string..String14glue_drop.135417hcace5d8c7cac8291E(%"struct.collections::string::String<[]>[#6]"* %0)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h3898390138327521584E({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*) unnamed_addr #6 {
entry-block:
  %thing = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %0, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %thing
  %1 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %thing
  %2 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %thing
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }* %2, i32 0, i32 0
  %4 = load i64* %3
  %5 = add i64 %4, 1
  store i64 %5, i64* %3
  call void @"_ZN15Gc$LT$HyObj$GT$14glue_drop.150417h9067757b794af12dE"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %thing)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$6as_mut21h11798425240803546064E"(i8** noalias dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca i8**
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store i8** %0, i8*** %self
  %1 = load i8*** %self
  %2 = load i8** %1
  %3 = icmp ne i8* %2, null
  switch i1 %3, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %4 = bitcast i8** %sret_slot to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %5 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %5, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %4
  br label %join

case_body1:                                       ; preds = %match_else
  store i8* null, i8** %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %6 = bitcast i8** %1 to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %6, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %x
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %7 = load i8** %sret_slot
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h4719519686323764762E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace21h18181685696621659168E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h7989013547032206781E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace21h17201130235487923531E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h4064744253151855656E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace20h4157750410389533447E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take21h16315617631350327925E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace20h5150821403186690379E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace20h5491476427371247786E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  %2 = alloca { i8*, i32 }
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %3 = load i8*** %dest
  invoke void @_ZN3mem4swap20h9061616491255965989E(i8** noalias nocapture dereferenceable(8) %3, i8** noalias nocapture dereferenceable(8) %src)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %4 = bitcast i8** %src to i8*
  %5 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 8, i32 8, i1 false)
  %6 = bitcast i8** %src to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %src)
  %7 = load i8** %sret_slot
  ret i8* %7

unwind_custom_:                                   ; preds = %entry-block
  %8 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %8, { i8*, i32 }* %2
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %9 = load { i8*, i32 }* %2
  resume { i8*, i32 } %9

clean_custom_:                                    ; preds = %unwind_custom_
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %src)
  br label %resume
}

; Function Attrs: inlinehint uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h17658305519088760983E"(%"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #6 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"*
  store %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %0, %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[Gc<HyObj>]>[#6]"* %1, i32 0, i32 2
  %3 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %2
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %3
}

; Function Attrs: inlinehint uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr21h10394284955300754819E"({ { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"
  store { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %0, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %self
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %self
  call void @_ZN3raw4Repr4repr20h6597328520965801616E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %1, i32 0, i32 0
  %4 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %3
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of20h8864858839010952293E() unnamed_addr #6 {
entry-block:
  ret i64 8
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len19h497451754805360639E"({ { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"
  store { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %0, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %self
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %self
  call void @_ZN3raw4Repr4repr21h15090048109278844487E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %1, i32 0, i32 1
  %4 = load i64* %3
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h1455077648097415041E"({ i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64) unnamed_addr #6 {
entry-block:
  %self = alloca { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**
  %count = alloca i64
  store { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %0, { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %self
  store i64 %1, i64* %count
  %2 = load { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }*** %self
  %3 = load i64* %count
  %4 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %2, i64 %3
  ret { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }** %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem12min_align_of20h3880773610615526558E() unnamed_addr #6 {
entry-block:
  ret i64 8
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null20h3792616523012248945E"() unnamed_addr #6 {
entry-block:
  %0 = call i8* @_ZN3ptr8mut_null20h4729858734166612970E()
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3ptr8mut_null20h4729858734166612970E() unnamed_addr #6 {
entry-block:
  ret i8* null
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h1375346477668000666E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  %3 = call i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h14141209674713464778E"()
  store i8* %3, i8** %1
  %4 = load i8** %1
  %5 = load i8** %2
  %6 = icmp eq i8* %5, %4
  %7 = zext i1 %6 to i8
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h18243396947234541453E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h1270603410227726650E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized20h4154962329586011586E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #6 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of20h3173172393428305375E() unnamed_addr #6 {
entry-block:
  ret i64 8
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3ops31uint.Sub$LT$uint$C$$x20uint$GT$3sub20h7d9bc3fd51c505delWaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i64*
  %other = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %other
  %2 = load i64** %self
  %3 = load i64** %other
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = sub i64 %4, %5
  ret i64 %6
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3ops31uint.Shr$LT$uint$C$$x20uint$GT$3shr20hc855ad756df061e6FWaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i64*
  %other = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %other
  %2 = load i64** %self
  %3 = load i64** %other
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = lshr i64 %4, %5
  ret i64 %6
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3ops33uint.BitOr$LT$uint$C$$x20uint$GT$5bitor20h4639f10410774fc7ZWaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i64*
  %rhs = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %rhs
  %2 = load i64** %self
  %3 = load i64** %rhs
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = or i64 %4, %5
  ret i64 %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3num15uint.CheckedMul11checked_mul20h691930632e2c3dd2ZQaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16), i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i64*
  %v = alloca i64*
  %3 = alloca { i64, i8 }
  %x = alloca i64
  %y = alloca i8
  store i64* %1, i64** %self
  store i64* %2, i64** %v
  %4 = load i64** %self
  %5 = load i64* %4
  %6 = load i64** %v
  %7 = load i64* %6
  %8 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %5, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  %11 = zext i1 %10 to i8
  %12 = insertvalue { i64, i8 } undef, i64 %9, 0
  %13 = insertvalue { i64, i8 } %12, i8 %11, 1
  store { i64, i8 } %13, { i64, i8 }* %3
  %14 = getelementptr inbounds { i64, i8 }* %3, i32 0, i32 0
  %15 = load i64* %14
  store i64 %15, i64* %x
  %16 = getelementptr inbounds { i64, i8 }* %3, i32 0, i32 1
  %17 = load i8* %16
  store i8 %17, i8* %y
  %18 = load i8* %y, !range !1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %then-block-2691-, label %else-block

then-block-2691-:                                 ; preds = %entry-block
  %20 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 0, i8* %20
  br label %join

else-block:                                       ; preds = %entry-block
  %21 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %0 to { i8, i64 }*
  %22 = getelementptr inbounds { i8, i64 }* %21, i32 0, i32 1
  %23 = load i64* %x
  store i64 %23, i64* %22
  %24 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 1, i8* %24
  br label %join

join:                                             ; preds = %else-block, %then-block-2691-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN6option15Option$LT$T$GT$6expect21h11192134910540798717E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture dereferenceable(16), %str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %fmt.i = alloca %"struct.core::fmt::Arguments<[]>[#3]"*
  %__llmatch = alloca i64*
  %val = alloca i64
  %2 = alloca { %str_slice* }
  %match = alloca { %str_slice* }
  %__llmatch3 = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %3 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust4 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %4 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  %5 = load i8* %4, !range !1
  switch i8 %5, label %match_else [
    i8 1, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %6 = load i64** %__llmatch
  %7 = load i64* %6
  store i64 %7, i64* %val
  %8 = load i64* %val
  br label %join5

case_body1:                                       ; preds = %match_else
  %9 = getelementptr inbounds { %str_slice* }* %2, i32 0, i32 0
  store %str_slice* %1, %str_slice** %9
  %10 = load { %str_slice* }* %2
  store { %str_slice* } %10, { %str_slice* }* %match
  %11 = getelementptr inbounds { %str_slice* }* %match, i32 0, i32 0
  store %str_slice** %11, %str_slice*** %__llmatch3
  br label %case_body2

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %12 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %0 to { i8, i64 }*
  %13 = getelementptr inbounds { i8, i64 }* %12, i32 0, i32 1
  store i64* %13, i64** %__llmatch
  br label %case_body

case_body2:                                       ; preds = %case_body1
  %14 = load %str_slice*** %__llmatch3
  %15 = load %str_slice** %14
  store %str_slice* %15, %str_slice** %__arg0
  %16 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %3 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %17 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %3, i32 0
  %18 = load %str_slice** %__arg0
  call void @_ZN3fmt8argument21h14367901719258578138E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %17, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h10816211602868669892E, %str_slice* noalias dereferenceable(16) %18)
  %19 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %3, %"struct.core::fmt::Argument<[]>[#3]"** %19
  %20 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %20
  %21 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @"_ZN6option15Option$LT$T$GT$6expect15__STATIC_FMTSTR20h79b308b23b8faec4humE" to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %21
  %22 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %22
  %23 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %24 = load %"struct.core::fmt::Argument<[]>[#3]"** %23
  %25 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %26 = load i64* %25
  %27 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %24, %"struct.core::fmt::Argument<[]>[#3]"** %27
  %28 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 1
  store i64 %26, i64* %28
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h98a942e4e0fde7a9UwaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %29 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  call void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %29, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @"_ZN6option15Option$LT$T$GT$6expect8_run_fmt10_FILE_LINE20h9519b9138055b1fdStmE")
  unreachable

"_ZN6option15Option$LT$T$GT$6expect8_run_fmt20ha16f9607732b6bbenQaE.exit": ; No predecessors!
  unreachable

join:                                             ; No predecessors!
  unreachable

join5:                                            ; preds = %case_body
  ret i64 %8
}

; Function Attrs: noinline uwtable
define internal i8* @_ZN3vec16alloc_or_realloc20h6855895137277096961E(i8*, i64, i64) unnamed_addr #8 {
entry-block:
  %sret_slot = alloca i8*
  %ptr = alloca i8*
  %size = alloca i64
  %old_size = alloca i64
  %3 = alloca i8*
  %4 = alloca i64
  %5 = alloca i8*
  %6 = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %old_size
  %7 = load i64* %old_size
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-2740-, label %else-block

then-block-2740-:                                 ; preds = %entry-block
  %9 = load i64* %size
  %10 = call i64 @_ZN3mem12min_align_of21h14007097282357148611E()
  store i64 %10, i64* %4
  %11 = load i64* %4
  %12 = call i8* @_ZN4heap8allocate20hd24b3ca44266ac0dSSaE(i64 %9, i64 %11)
  store i8* %12, i8** %3
  %13 = load i8** %3
  store i8* %13, i8** %sret_slot
  br label %join

else-block:                                       ; preds = %entry-block
  %14 = load i8** %ptr
  %15 = load i64* %size
  %16 = call i64 @_ZN3mem12min_align_of21h14007097282357148611E()
  store i64 %16, i64* %6
  %17 = load i64* %6
  %18 = load i64* %old_size
  %19 = call i8* @_ZN4heap10reallocate20h124e69da8e38bcbbNTaE(i8* %14, i64 %15, i64 %17, i64 %18)
  store i8* %19, i8** %5
  %20 = load i8** %5
  store i8* %20, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block, %then-block-2740-
  %21 = load i8** %sret_slot
  ret i8* %21
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num7u64.Int14trailing_zeros20h567b95492d661bfasoaE(i64) unnamed_addr #6 {
entry-block:
  %self = alloca i64
  store i64 %0, i64* %self
  %1 = load i64* %self
  %2 = call i64 @llvm.cttz.i64(i64 %1, i1 false)
  ret i64 %2
}

; Function Attrs: uwtable
define internal i8 @"_ZN5slice27_$BP$$x27a$x20$x5bT$x5d.Ord3cmp20h9441649809866389570E"({ i8*, i64 }* noalias nocapture dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %self = alloca { i8*, i64 }*
  %other = alloca { i8*, i64 }*
  %2 = alloca %"struct.core::slice::Items<[u8]>[#3]"
  %__adjust = alloca { i8*, i64 }
  %3 = alloca %"struct.core::slice::Items<[u8]>[#3]"
  %__adjust1 = alloca { i8*, i64 }
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  store { i8*, i64 }* %1, { i8*, i64 }** %other
  %4 = load { i8*, i64 }** %self
  %5 = getelementptr inbounds { i8*, i64 }* %4, i32 0, i32 0
  %6 = load i8** %5
  %7 = getelementptr inbounds { i8*, i64 }* %4, i32 0, i32 1
  %8 = load i64* %7
  %9 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %6, i8** %9
  %10 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %8, i64* %10
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h17160037277174970517E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  %11 = load { i8*, i64 }** %other
  %12 = getelementptr inbounds { i8*, i64 }* %11, i32 0, i32 0
  %13 = load i8** %12
  %14 = getelementptr inbounds { i8*, i64 }* %11, i32 0, i32 1
  %15 = load i64* %14
  %16 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 0
  store i8* %13, i8** %16
  %17 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 1
  store i64 %15, i64* %17
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h17160037277174970517E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %3, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
  %18 = call i8 @_ZN4iter5order3cmp21h11919107129433061733E(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16) %2, %"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16) %3)
  ret i8 %18
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h8703872481866313551E() unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget21h16417417922187161633E(i8*) unnamed_addr #6 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  %2 = bitcast i8** %thing to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN122core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$$GT$14glue_drop.134517h4c18c46a913284e2E"(i8** %thing)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal noalias dereferenceable(56) %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* @_ZN3mem13uninitialized21h14290888931793358665E() unnamed_addr #6 {
entry-block:
  %sret_slot = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  %0 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %sret_slot
  ret %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h8534564528740356356E(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* noalias dereferenceable(56)) unnamed_addr #6 {
entry-block:
  %thing = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %0, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %thing
  %1 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %thing
  %2 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %thing to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN94Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$Gc$LT$HyObj$GT$$GT$$GT$14glue_drop.134817hb943492419731816E"(%"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %thing)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN7treemap5split12closure.2006E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %y = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %y
  %2 = bitcast i8* %0 to { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** } }* %2, i32 0, i32 4
  %4 = getelementptr inbounds { %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** }* %3, i32 0, i32 0
  %5 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %4
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %y
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %6
  %8 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %7, i32 0, i32 4
  %9 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %5
  %10 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %9
  %11 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"* %10, i32 0, i32 4
  %12 = load i64* %8
  %13 = load i64* %11
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i8
  %16 = trunc i8 %15 to i1
  ret i1 %16
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or20h6759336829641145124E"(i8*, i1 zeroext, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %def = alloca i8
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**
  store i8* %0, i8** %self
  %3 = zext i1 %1 to i8
  store i8 %3, i8* %def
  %4 = load i8** %self
  %5 = icmp ne i8* %4, null
  switch i1 %5, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %6 = load i8* %def
  store i8 %6, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %7
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** %8, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %9 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %10 = load i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)** %9
  %11 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %12 = load i8** %11
  %13 = load %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %t
  %14 = call zeroext i1 %10(i8* %12, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"** noalias dereferenceable(8) %13)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %16 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"*** %16, %"struct.collections::treemap::TreeNode<[collections::string::String, Gc<HyObj>]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %17 = load i8* %sret_slot, !range !1
  %18 = trunc i8 %17 to i1
  ret i1 %18
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h4840747599093436330E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace21h13354713205397500799E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace21h18181685696621659168E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap20h4893456686122446316E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace21h17201130235487923531E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap21h14656656114345608399E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace20h4157750410389533447E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap20h8474398550569828205E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace20h5150821403186690379E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap21h11810291291179635847E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr20h6597328520965801616E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }*
  store { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %1, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %self
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %self
  call void @_ZN3mem14transmute_copy21h12617759200155706540E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h15090048109278844487E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %self = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }*
  store { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %1, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %self
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %self
  call void @_ZN3mem14transmute_copy21h10118231597115540776E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h14141209674713464778E"() unnamed_addr #6 {
entry-block:
  %0 = call i8* @_ZN3ptr8mut_null21h15693233023232481545E()
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h1270603410227726650E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized20h4154962329586011586E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show21h10816211602868669892E(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
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

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument21h14367901719258578138E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %str_slice* noalias dereferenceable(16)) unnamed_addr #6 {
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

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap10reallocate20h124e69da8e38bcbbNTaE(i8*, i64, i64, i64) unnamed_addr #6 {
entry-block:
  %ptr = alloca i8*
  %size = alloca i64
  %align = alloca i64
  %old_size = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  store i64 %3, i64* %old_size
  %4 = load i8** %ptr
  %5 = load i64* %size
  %6 = load i64* %align
  %7 = load i64* %old_size
  %8 = call i8* @_ZN4heap3imp10reallocate20h97685eb50253611fgUaE(i8* %4, i64 %5, i64 %6, i64 %7)
  ret i8* %8
}

; Function Attrs: uwtable
define internal i8 @_ZN4iter5order3cmp21h11919107129433061733E(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16), %"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %llretslotptr = alloca i8*
  %iret_slot = alloca {}
  %2 = alloca { i8*, i8* }
  %__llmatch = alloca i8**
  %x = alloca i8*
  %__llmatch4 = alloca i8**
  %y = alloca i8*
  %ret_slot = alloca i8
  %ret_slot11 = alloca i8
  %ret_slot12 = alloca i8
  %3 = alloca i8
  %match = alloca i8
  %__llmatch15 = alloca i8*
  %non_eq = alloca i8
  %ret_slot18 = alloca i8
  br label %loop_body

loop_exit:                                        ; No predecessors!
  unreachable

return:                                           ; preds = %clean_custom_
  %4 = load i8** %llretslotptr
  %5 = load i8* %4
  ret i8 %5

loop_body:                                        ; preds = %join21, %entry-block
  %6 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 0
  %7 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h10179305505548937745E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %0)
  store i8* %7, i8** %6
  %8 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 1
  %9 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h10179305505548937745E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %1)
  store i8* %9, i8** %8
  %10 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 0
  %11 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 1
  %12 = load i8** %10
  %13 = icmp ne i8* %12, null
  switch i1 %13, label %match_else [
    i1 false, label %match_case
    i1 true, label %match_case7
  ]

case_body:                                        ; preds = %match_case6
  store i8 0, i8* %ret_slot
  store i8* %ret_slot, i8** %llretslotptr
  br label %clean_ast_3697_

case_body1:                                       ; preds = %match_else5
  store i8 -1, i8* %ret_slot11
  store i8* %ret_slot11, i8** %llretslotptr
  br label %clean_ast_3697_

case_body2:                                       ; preds = %match_else10, %match_case9
  store i8 1, i8* %ret_slot12
  store i8* %ret_slot12, i8** %llretslotptr
  br label %clean_ast_3697_

case_body3:                                       ; preds = %match_else8
  %14 = load i8*** %__llmatch4
  %15 = load i8** %14
  store i8* %15, i8** %y
  %16 = load i8*** %__llmatch
  %17 = load i8** %16
  store i8* %17, i8** %x
  %18 = call i8 @"_ZN3cmp5impls19_$BP$$x27a$x20T.Ord3cmp21h11772603039525388261E"(i8** noalias dereferenceable(8) %x, i8** noalias dereferenceable(8) %y)
  store i8 %18, i8* %3
  %19 = load i8* %3
  store i8 %19, i8* %match
  %20 = load i8* %match, !range !2
  switch i8 %20, label %match_else16 [
    i8 0, label %match_case17
  ]

match_else:                                       ; preds = %loop_body
  %21 = load i8** %11
  %22 = icmp ne i8* %21, null
  switch i1 %22, label %match_else10 [
  ]

match_case:                                       ; preds = %loop_body
  %23 = load i8** %11
  %24 = icmp ne i8* %23, null
  switch i1 %24, label %match_else5 [
    i1 false, label %match_case6
  ]

match_else5:                                      ; preds = %match_case
  br label %case_body1

match_case6:                                      ; preds = %match_case
  br label %case_body

match_case7:                                      ; preds = %loop_body
  %25 = load i8** %11
  %26 = icmp ne i8* %25, null
  switch i1 %26, label %match_else8 [
    i1 false, label %match_case9
  ]

match_else8:                                      ; preds = %match_case7
  store i8** %10, i8*** %__llmatch
  store i8** %11, i8*** %__llmatch4
  br label %case_body3

match_case9:                                      ; preds = %match_case7
  br label %case_body2

match_else10:                                     ; preds = %match_else
  br label %case_body2

clean_custom_:                                    ; preds = %clean_ast_3697_
  br label %return

clean_ast_3697_:                                  ; preds = %clean_custom_19, %case_body2, %case_body1, %case_body
  br label %clean_custom_

case_body13:                                      ; preds = %match_case17
  br label %join

case_body14:                                      ; preds = %match_else16
  %27 = load i8** %__llmatch15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %non_eq, i8* %27, i64 1, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ret_slot18, i8* %non_eq, i64 1, i32 1, i1 false)
  store i8* %ret_slot18, i8** %llretslotptr
  br label %clean_custom_20

match_else16:                                     ; preds = %case_body3
  store i8* %match, i8** %__llmatch15
  br label %case_body14

match_case17:                                     ; preds = %case_body3
  br label %case_body13

clean_custom_19:                                  ; preds = %clean_ast_3724_
  br label %clean_ast_3697_

clean_ast_3724_:                                  ; preds = %clean_custom_20
  br label %clean_custom_19

clean_custom_20:                                  ; preds = %case_body14
  br label %clean_ast_3724_

join:                                             ; preds = %case_body13
  br label %join21

join21:                                           ; preds = %join
  br label %loop_body
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace21h13354713205397500799E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap20h1761447342792680516E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h4893456686122446316E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized20h1344491716298391459E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget20h3845969294955956216E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap21h14656656114345608399E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized20h6611911159240448516E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget21h13340478088987996598E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h8474398550569828205E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized20h7956890986919244743E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget20h2938011552838560998E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap21h11810291291179635847E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized20h3492629050530569858E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget20h6721977574663697009E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy21h12617759200155706540E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"
  %src = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }*
  store { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %1, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %src
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %src
  %3 = bitcast { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %2 to %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"*
  store %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %3, %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h13206391566798991961E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy21h10118231597115540776E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16), { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #6 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"
  %src = alloca { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }*
  store { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %1, { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %src
  %2 = load { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }** %src
  %3 = bitcast { { i64, void (i8*)*, i8*, i8*, %"struct.HyObj<[]>" }**, i64 }* %2 to %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"*
  store %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %3, %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h13206391566798991961E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3ptr8mut_null21h15693233023232481545E() unnamed_addr #6 {
entry-block:
  ret i8* null
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap3imp10reallocate20h97685eb50253611fgUaE(i8*, i64, i64, i64) unnamed_addr #6 {
entry-block:
  %a.i = alloca i64
  %4 = alloca i64
  %ptr = alloca i8*
  %size = alloca i64
  %align = alloca i64
  %_old_size = alloca i64
  %ptr1 = alloca i8*
  %5 = alloca i8*
  %6 = alloca i32
  %__arg = alloca i8*
  %__arg2 = alloca i64
  %__arg3 = alloca i32
  %7 = alloca i8
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  store i64 %3, i64* %_old_size
  %8 = load i8** %ptr
  %9 = load i64* %size
  %10 = load i64* %align
  store i64 %10, i64* %a.i
  %11 = load i64* %a.i
  %12 = call i64 @_ZN3num8uint.Int14trailing_zeros20h64deb80084259a5bboaE(i64 %11)
  store i64 %12, i64* %4
  %13 = load i64* %4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6
  %15 = load i32* %6
  store i8* %8, i8** %__arg
  %16 = load i8** %__arg
  store i64 %9, i64* %__arg2
  %17 = load i64* %__arg2
  store i32 %15, i32* %__arg3
  %18 = load i32* %__arg3
  %19 = call i8* @je_rallocx(i8* %16, i64 %17, i32 %18)
  store i8* %19, i8** %5
  %20 = load i8** %5
  store i8* %20, i8** %ptr1
  %21 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null21h12633168751847506226E"(i8** noalias dereferenceable(8) %ptr1)
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %7
  %23 = load i8* %7, !range !1
  %24 = trunc i8 %23 to i1
  br i1 %24, label %then-block-2906-, label %next-block

then-block-2906-:                                 ; preds = %entry-block
  call void @_ZN3oom20h70228b11624052eclRaE()
  unreachable

next-block:                                       ; preds = %entry-block
  %25 = load i8** %ptr1
  ret i8* %25
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN3cmp5impls19_$BP$$x27a$x20T.Ord3cmp21h11772603039525388261E"(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %self = alloca i8**
  %other = alloca i8**
  store i8** %0, i8*** %self
  store i8** %1, i8*** %other
  %2 = load i8*** %self
  %3 = load i8** %2
  %4 = load i8*** %other
  %5 = load i8** %4
  %6 = call i8 @_ZN3cmp5impls6u8.Ord3cmp20ha55339bdc397fbe2L8aE(i8* noalias dereferenceable(1) %3, i8* noalias dereferenceable(1) %5)
  ret i8 %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h1761447342792680516E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #6 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized21h18027231104924742520E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget20h9139127013576342018E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h1344491716298391459E() unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h3845969294955956216E(i8*) unnamed_addr #6 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h6611911159240448516E() unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget21h13340478088987996598E(i8*) unnamed_addr #6 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h7956890986919244743E() unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h2938011552838560998E(i8*) unnamed_addr #6 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h3492629050530569858E() unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h6721977574663697009E(i8*) unnamed_addr #6 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized21h13206391566798991961E(%"struct.core::raw::Slice<[Gc<HyObj>]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #6 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3cmp5impls6u8.Ord3cmp20ha55339bdc397fbe2L8aE(i8* noalias nocapture dereferenceable(1), i8* noalias nocapture dereferenceable(1)) unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %other = alloca i8*
  store i8* %0, i8** %self
  store i8* %1, i8** %other
  %2 = load i8** %self
  %3 = load i8** %other
  %4 = load i8* %2
  %5 = load i8* %3
  %6 = icmp ult i8 %4, %5
  br i1 %6, label %then-block-3775-, label %else-block

then-block-3775-:                                 ; preds = %entry-block
  store i8 -1, i8* %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %7 = load i8** %self
  %8 = load i8** %other
  %9 = load i8* %7
  %10 = load i8* %8
  %11 = icmp ugt i8 %9, %10
  br i1 %11, label %then-block-3783-, label %else-block1

then-block-3783-:                                 ; preds = %else-block
  store i8 1, i8* %sret_slot
  br label %join

else-block1:                                      ; preds = %else-block
  store i8 0, i8* %sret_slot
  br label %join

join:                                             ; preds = %else-block1, %then-block-3783-
  br label %join2

join2:                                            ; preds = %join, %then-block-3775-
  %12 = load i8* %sret_slot
  ret i8 %12
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized21h18027231104924742520E() unnamed_addr #6 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h9139127013576342018E(i8*) unnamed_addr #6 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

declare i32 @puts(i8*)

declare i32 @sprintf(i8*, i8*, ...)

define i32 @print_int(i32) {
  %buf = tail call i8* bitcast (i8* (i64)* @malloc to i8* (i32)*)(i32 mul (i32 ptrtoint (i8* getelementptr (i8* null, i32 1) to i32), i32 20))
  %fmtd = call i32 (i8*, i8*, ...)* @sprintf(i8* %buf, i8* getelementptr inbounds ([3 x i8]* @global_gen_fmt, i32 0, i32 0), i32 %0)
  %putsres = call i32 @puts(i8* %buf)
  ret i32 0
}

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
  br label %function_def_bridge

function_def_bridge:                              ; preds = %0
  %"+_tmp" = call i32 @"+"(i32 2, i32 2)
  %double_tmp = call i32 @double(i32 %"+_tmp")
  %a = alloca i32
  store i32 %double_tmp, i32* %a
  %a1 = load i32* %a
  %print_int_tmp = call i32 @print_int(i32 %a1)
  br label %function_def_bridge2

function_def_bridge2:                             ; preds = %function_def_bridge
  br label %gen_def_bridge

gen_def_bridge:                                   ; preds = %function_def_bridge2
  br label %function_def_bridge3

function_def_bridge3:                             ; preds = %gen_def_bridge
  %"*_tmp" = call i32 @"*"(i32 2, i32 3)
  %"/_tmp" = call i32 @"/"(i32 %"*_tmp", i32 2)
  %-_tmp = call i32 @-(i32 %"/_tmp", i32 1)
  %times_tmp = call i32 @times(i32 %-_tmp, i32 10)
  %"+_tmp4" = call i32 @"+"(i32 1, i32 %times_tmp)
  %print_int_tmp5 = call i32 @print_int(i32 %"+_tmp4")
  %range_generator = alloca %"!range_gen"
  br label %for_loop_init

for_loop_init:                                    ; preds = %function_def_bridge3
  call void @"!range_gen_init"(%"!range_gen"* %range_generator, i32 0, i32 3)
  %i = alloca i32
  store i32 -1, i32* %i
  br label %for_loop_check

for_loop_check:                                   ; preds = %for_loop_exit12, %for_loop_exit12, %for_loop_init
  %done = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator)
  %done_cmp = icmp eq i32 %done, 0
  br i1 %done_cmp, label %for_loop_exit, label %for_loop_stmts

for_loop_stmts:                                   ; preds = %for_loop_check
  %ctx_ret = getelementptr inbounds %"!range_gen"* %range_generator, i32 0, i32 3
  %i6 = load i32* %ctx_ret
  store i32 %i6, i32* %i
  %padding = alloca i32
  store i32 10, i32* %padding
  %i7 = load i32* %i
  %add_tmp = add i32 %i7, 1
  %range_generator8 = alloca %"!range_gen"
  br label %for_loop_init9

for_loop_exit:                                    ; preds = %for_loop_check
  br label %function_def_bridge21

for_loop_init9:                                   ; preds = %for_loop_stmts
  call void @"!range_gen_init"(%"!range_gen"* %range_generator8, i32 0, i32 %add_tmp)
  %j = alloca i32
  store i32 -1, i32* %j
  br label %for_loop_check10

for_loop_check10:                                 ; preds = %for_loop_stmts11, %for_loop_init9
  %done13 = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator8)
  %done_cmp14 = icmp eq i32 %done13, 0
  br i1 %done_cmp14, label %for_loop_exit12, label %for_loop_stmts11

for_loop_stmts11:                                 ; preds = %for_loop_check10
  %ctx_ret15 = getelementptr inbounds %"!range_gen"* %range_generator8, i32 0, i32 3
  %j16 = load i32* %ctx_ret15
  store i32 %j16, i32* %j
  %i17 = load i32* %i
  %print_int_tmp18 = call i32 @print_int(i32 %i17)
  br label %for_loop_exit12
  br label %for_loop_check10

for_loop_exit12:                                  ; preds = %for_loop_stmts11, %for_loop_check10
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
  %j25 = alloca i32
  store i32 12, i32* %j25
  %i26 = load i32* %i24
  %j27 = load i32* %j25
  %"+_tmp28" = call i32 @"+"(i32 %i26, i32 %j27)
  %print_int_tmp29 = call i32 @print_int(i32 %"+_tmp28")
  store i32 21, i32* %i24
  store i32 22, i32* %j25
  %i30 = load i32* %i24
  %j31 = load i32* %j25
  %"+_tmp32" = call i32 @"+"(i32 %i30, i32 %j31)
  %print_int_tmp33 = call i32 @print_int(i32 %"+_tmp32")
  %done34 = alloca i32
  store i32 0, i32* %done34
  br label %while_loop_check

while_loop_check:                                 ; preds = %while_loop_stmts, %function_def_bridge21
  %done35 = load i32* %done34
  %"<=_tmp" = call i32 @"<="(i32 %done35, i32 5)
  %while_cmp = icmp eq i32 0, %"<=_tmp"
  br i1 %while_cmp, label %while_loop_exit, label %while_loop_stmts

while_loop_stmts:                                 ; preds = %while_loop_check
  %print_int_tmp36 = call i32 @print_int(i32 1000000)
  %done37 = load i32* %done34
  %"+_tmp38" = call i32 @"+"(i32 %done37, i32 1)
  store i32 %"+_tmp38", i32* %done34
  br label %while_loop_check

while_loop_exit:                                  ; preds = %while_loop_check
  %abc = alloca i32
  store i32 -1, i32* %abc
  br label %if_cond

if_cond:                                          ; preds = %while_loop_exit
  %i39 = load i32* %i24
  %">_tmp" = call i32 @">"(i32 %i39, i32 1000)
  %if_cmp = icmp eq i32 %">_tmp", 0
  br i1 %if_cmp, label %if_else_cond, label %if_else_stmts

if_else_exit:                                     ; preds = %if_else_cond43, %if_else_stmts44, %if_else_stmts
  %abc47 = load i32* %abc
  %print_int_tmp48 = call i32 @print_int(i32 %abc47)
  %minus_tmp = call i32 @minus(i32 10, i32 100)
  %print_int_tmp49 = call i32 @print_int(i32 %minus_tmp)
  ret i32 0

if_else_cond:                                     ; preds = %if_cond
  %"<_tmp" = call i32 @"<"(i32 1, i32 100)
  %if_cmp42 = icmp eq i32 %"<_tmp", 0
  br i1 %if_cmp42, label %if_else_cond43, label %if_else_stmts44

if_else_stmts:                                    ; preds = %if_cond
  %i40 = load i32* %i24
  %print_int_tmp41 = call i32 @print_int(i32 %i40)
  br label %if_else_exit

if_else_cond43:                                   ; preds = %if_else_cond
  %print_int_tmp46 = call i32 @print_int(i32 1000)
  br label %if_else_exit

if_else_stmts44:                                  ; preds = %if_else_cond
  store i32 2, i32* %abc
  %print_int_tmp45 = call i32 @print_int(i32 100)
  br label %if_else_exit
}

define i32 @double(i32) {
  %a = alloca i32
  store i32 %0, i32* %a
  %a1 = load i32* %a
  %"*_tmp" = call i32 @"*"(i32 %a1, i32 2)
  ret i32 %"*_tmp"
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

define i32 @"!squares_gen_next"(%squares*) {

gen_state_restore:                                ; No predecessors!
  %ctx_state = getelementptr inbounds %squares* %0, i32 0, i32 0
  %dest = load i8** %ctx_state
  indirectbr i8* %dest, [label %gen_state_save, label %gen_state_entry, label %gen_exit, label %post_yield, label %post_yield13]

gen_state_save:                                   ; preds = %gen_state_restore
  ret i32 1

gen_state_entry:                                  ; preds = %gen_state_restore
  %_d = getelementptr inbounds %squares* %0, i32 0, i32 2
  store i32 -1, i32* %_d
  %_a = getelementptr inbounds %squares* %0, i32 0, i32 3
  store i32 1, i32* %_a
  %_b = getelementptr inbounds %squares* %0, i32 0, i32 4
  store i32 -1, i32* %_b
  %_c = getelementptr inbounds %squares* %0, i32 0, i32 5
  store i32 -1, i32* %_c
  %_a1 = getelementptr inbounds %squares* %0, i32 0, i32 3
  store i32 2, i32* %_a1
  %ret_2 = getelementptr inbounds %squares* %0, i32 0, i32 6
  %_a2 = getelementptr inbounds %squares* %0, i32 0, i32 3
  %a = load i32* %_a2
  store i32 %a, i32* %ret_2
  %ret_3 = getelementptr inbounds %squares* %0, i32 0, i32 7
  %_d3 = getelementptr inbounds %squares* %0, i32 0, i32 2
  %d = load i32* %_d3
  store i32 %d, i32* %ret_3
  %ret_4 = getelementptr inbounds %squares* %0, i32 0, i32 8
  %_b4 = getelementptr inbounds %squares* %0, i32 0, i32 4
  %b = load i32* %_b4
  store i32 %b, i32* %ret_4
  %resume_block_slot = getelementptr inbounds %squares* %0, i32 0, i32 0
  store i8* blockaddress(@"!squares_gen_next", %post_yield), i8** %resume_block_slot
  ret i32 1

gen_exit:                                         ; preds = %gen_state_restore, %post_yield13
  ret i32 0

post_yield:                                       ; preds = %gen_state_restore
  %ret_25 = getelementptr inbounds %squares* %0, i32 0, i32 6
  %_b6 = getelementptr inbounds %squares* %0, i32 0, i32 4
  %b7 = load i32* %_b6
  store i32 %b7, i32* %ret_25
  %ret_38 = getelementptr inbounds %squares* %0, i32 0, i32 7
  %_c9 = getelementptr inbounds %squares* %0, i32 0, i32 5
  %c = load i32* %_c9
  store i32 %c, i32* %ret_38
  %ret_410 = getelementptr inbounds %squares* %0, i32 0, i32 8
  %_a11 = getelementptr inbounds %squares* %0, i32 0, i32 3
  %a12 = load i32* %_a11
  store i32 %a12, i32* %ret_410
  %resume_block_slot14 = getelementptr inbounds %squares* %0, i32 0, i32 0
  store i8* blockaddress(@"!squares_gen_next", %post_yield13), i8** %resume_block_slot14
  ret i32 1

post_yield13:                                     ; preds = %gen_state_restore
  %_b15 = getelementptr inbounds %squares* %0, i32 0, i32 4
  store i32 2, i32* %_b15
  br label %gen_exit
}

define void @"!squares_gen_init"(%squares*, i32) {
  %ctx_state = getelementptr inbounds %squares* %0, i32 0, i32 0
  store i8* blockaddress(@"!squares_gen_next", %gen_state_entry), i8** %ctx_state
  %param0 = getelementptr inbounds %squares* %0, i32 0, i32 1
  store i32 %1, i32* %param0
  ret void
}

define i32 @times(i32, i32) {
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

attributes #0 = { uwtable "split-stack" }
attributes #1 = { nounwind }
attributes #2 = { "split-stack" }
attributes #3 = { nounwind readnone }
attributes #4 = { noreturn "split-stack" }
attributes #5 = { cold noinline noreturn "split-stack" }
attributes #6 = { inlinehint uwtable "split-stack" }
attributes #7 = { cold noinline noreturn uwtable "split-stack" }
attributes #8 = { noinline uwtable "split-stack" }

!0 = metadata !{i8 0, i8 6}
!1 = metadata !{i8 0, i8 2}
!2 = metadata !{i8 -1, i8 2}
