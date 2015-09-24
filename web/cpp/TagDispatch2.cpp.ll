; ModuleID = './cpp/TagDispatch2.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [5 x i8] c"tag1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tag2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_TagDispatch2.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: uwtable
define i32 @main() #3 {
entry:
  %call1.i = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4)
  %vtable.i = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !1
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %0 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %0, align 8
  %add.ptr.i = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset.i
  %_M_ctype.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 240
  %1 = bitcast i8* %_M_ctype.i to %"class.std::ctype"**
  %2 = load %"class.std::ctype"*, %"class.std::ctype"** %1, align 8, !tbaa !4
  %tobool.i.55 = icmp eq %"class.std::ctype"* %2, null
  br i1 %tobool.i.55, label %if.then.i.56, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i.56:                                     ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %_M_widen_ok.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %2, i64 0, i32 8
  %3 = load i8, i8* %_M_widen_ok.i, align 1, !tbaa !9
  %tobool.i = icmp eq i8 %3, 0
  br i1 %tobool.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  %arrayidx.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %2, i64 0, i32 9, i64 10
  %4 = load i8, i8* %arrayidx.i, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit

if.end.i:                                         ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %2)
  %5 = bitcast %"class.std::ctype"* %2 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.29 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %5, align 8, !tbaa !1
  %vfn.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.29, i64 6
  %6 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i, align 8
  %call.i.30 = tail call signext i8 %6(%"class.std::ctype"* %2, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi i8 [ %4, %if.then.i ], [ %call.i.30, %if.end.i ]
  %call1.i.7 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i8 signext %retval.0.i)
  %call.i = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i.7)
  %call1.i.9 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4)
  %vtable.i.11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !1
  %vbase.offset.ptr.i.12 = getelementptr i8, i8* %vtable.i.11, i64 -24
  %7 = bitcast i8* %vbase.offset.ptr.i.12 to i64*
  %vbase.offset.i.13 = load i64, i64* %7, align 8
  %add.ptr.i.14 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset.i.13
  %_M_ctype.i.31 = getelementptr inbounds i8, i8* %add.ptr.i.14, i64 240
  %8 = bitcast i8* %_M_ctype.i.31 to %"class.std::ctype"**
  %9 = load %"class.std::ctype"*, %"class.std::ctype"** %8, align 8, !tbaa !4
  %tobool.i.58 = icmp eq %"class.std::ctype"* %9, null
  br i1 %tobool.i.58, label %if.then.i.59, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit61

if.then.i.59:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit
  tail call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit61:  ; preds = %_ZNKSt5ctypeIcE5widenEc.exit
  %_M_widen_ok.i.33 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %9, i64 0, i32 8
  %10 = load i8, i8* %_M_widen_ok.i.33, align 1, !tbaa !9
  %tobool.i.34 = icmp eq i8 %10, 0
  br i1 %tobool.i.34, label %if.end.i.40, label %if.then.i.36

if.then.i.36:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit61
  %arrayidx.i.35 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %9, i64 0, i32 9, i64 10
  %11 = load i8, i8* %arrayidx.i.35, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit42

if.end.i.40:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit61
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %9)
  %12 = bitcast %"class.std::ctype"* %9 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.37 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %12, align 8, !tbaa !1
  %vfn.i.38 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.37, i64 6
  %13 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.38, align 8
  %call.i.39 = tail call signext i8 %13(%"class.std::ctype"* %9, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit42

_ZNKSt5ctypeIcE5widenEc.exit42:                   ; preds = %if.then.i.36, %if.end.i.40
  %retval.0.i.41 = phi i8 [ %11, %if.then.i.36 ], [ %call.i.39, %if.end.i.40 ]
  %call1.i.16 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i8 signext %retval.0.i.41)
  %call.i.17 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i.16)
  %call1.i.19 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7)
  %vtable.i.21 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !1
  %vbase.offset.ptr.i.22 = getelementptr i8, i8* %vtable.i.21, i64 -24
  %14 = bitcast i8* %vbase.offset.ptr.i.22 to i64*
  %vbase.offset.i.23 = load i64, i64* %14, align 8
  %add.ptr.i.24 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset.i.23
  %_M_ctype.i.43 = getelementptr inbounds i8, i8* %add.ptr.i.24, i64 240
  %15 = bitcast i8* %_M_ctype.i.43 to %"class.std::ctype"**
  %16 = load %"class.std::ctype"*, %"class.std::ctype"** %15, align 8, !tbaa !4
  %tobool.i.62 = icmp eq %"class.std::ctype"* %16, null
  br i1 %tobool.i.62, label %if.then.i.63, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit65

if.then.i.63:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit42
  tail call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit65:  ; preds = %_ZNKSt5ctypeIcE5widenEc.exit42
  %_M_widen_ok.i.45 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %16, i64 0, i32 8
  %17 = load i8, i8* %_M_widen_ok.i.45, align 1, !tbaa !9
  %tobool.i.46 = icmp eq i8 %17, 0
  br i1 %tobool.i.46, label %if.end.i.52, label %if.then.i.48

if.then.i.48:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit65
  %arrayidx.i.47 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %16, i64 0, i32 9, i64 10
  %18 = load i8, i8* %arrayidx.i.47, align 1, !tbaa !11
  br label %_ZNKSt5ctypeIcE5widenEc.exit54

if.end.i.52:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit65
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %16)
  %19 = bitcast %"class.std::ctype"* %16 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.49 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %19, align 8, !tbaa !1
  %vfn.i.50 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.49, i64 6
  %20 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.50, align 8
  %call.i.51 = tail call signext i8 %20(%"class.std::ctype"* %16, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit54

_ZNKSt5ctypeIcE5widenEc.exit54:                   ; preds = %if.then.i.48, %if.end.i.52
  %retval.0.i.53 = phi i8 [ %18, %if.then.i.48 ], [ %call.i.51, %if.end.i.52 ]
  %call1.i.26 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i8 signext %retval.0.i.53)
  %call.i.27 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i.26)
  ret i32 0
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #0

define internal void @_GLOBAL__sub_I_TagDispatch2.cpp() #0 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (http://llvm.org/git/clang.git eb6222eaad7aaec5d9ec0ddd8d1f09e506e689bf) (http://llvm.org/git/llvm.git 08bd0b92116468b52776a55e1fb9dcd479c4a42d)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"vtable pointer", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !6, i64 240}
!5 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !6, i64 216, !7, i64 224, !8, i64 225, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !3, i64 0}
!8 = !{!"bool", !7, i64 0}
!9 = !{!10, !7, i64 56}
!10 = !{!"_ZTSSt5ctypeIcE", !6, i64 16, !8, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!11 = !{!7, !7, i64 0}
