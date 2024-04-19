; ModuleID = 'F:/vivado_projects/EE4951_TaWork/wider_bus_fp/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<160>" = type { %"struct.ap_int_base<160, false>" }
%"struct.ap_int_base<160, false>" = type { %"struct.ssdm_int<160, false>" }
%"struct.ssdm_int<160, false>" = type { i160 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_main_func_ir(%"struct.ap_uint<160>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="5" "maxi" %A_IN, %"struct.ap_uint<160>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="5" "maxi" %A_OUT) local_unnamed_addr #0 {
entry:
  %A_IN_copy = alloca [5 x i160], align 512
  %A_OUT_copy = alloca [5 x i160], align 512
  %0 = bitcast %"struct.ap_uint<160>"* %A_IN to [5 x %"struct.ap_uint<160>"]*
  %1 = bitcast %"struct.ap_uint<160>"* %A_OUT to [5 x %"struct.ap_uint<160>"]*
  call fastcc void @copy_in([5 x %"struct.ap_uint<160>"]* nonnull %0, [5 x i160]* nonnull align 512 %A_IN_copy, [5 x %"struct.ap_uint<160>"]* nonnull %1, [5 x i160]* nonnull align 512 %A_OUT_copy)
  call void @apatb_main_func_hw([5 x i160]* %A_IN_copy, [5 x i160]* %A_OUT_copy)
  call void @copy_back([5 x %"struct.ap_uint<160>"]* %0, [5 x i160]* %A_IN_copy, [5 x %"struct.ap_uint<160>"]* %1, [5 x i160]* %A_OUT_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([5 x %"struct.ap_uint<160>"]* noalias readonly "unpacked"="0", [5 x i160]* noalias nocapture align 512 "unpacked"="1.0", [5 x %"struct.ap_uint<160>"]* noalias readonly "unpacked"="2", [5 x i160]* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a5struct.ap_uint<160>.12"([5 x i160]* align 512 %1, [5 x %"struct.ap_uint<160>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a5struct.ap_uint<160>.12"([5 x i160]* align 512 %3, [5 x %"struct.ap_uint<160>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([5 x %"struct.ap_uint<160>"]* noalias "unpacked"="0", [5 x i160]* noalias nocapture readonly align 512 "unpacked"="1.0", [5 x %"struct.ap_uint<160>"]* noalias "unpacked"="2", [5 x i160]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a5struct.ap_uint<160>"([5 x %"struct.ap_uint<160>"]* %0, [5 x i160]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a5struct.ap_uint<160>"([5 x %"struct.ap_uint<160>"]* %2, [5 x i160]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a5struct.ap_uint<160>"([5 x %"struct.ap_uint<160>"]* noalias "unpacked"="0" %dst, [5 x i160]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [5 x %"struct.ap_uint<160>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a5struct.ap_uint<160>.8"([5 x %"struct.ap_uint<160>"]* nonnull %dst, [5 x i160]* %src, i64 5)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a5struct.ap_uint<160>.8"([5 x %"struct.ap_uint<160>"]* "unpacked"="0" %dst, [5 x i160]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [5 x %"struct.ap_uint<160>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [5 x i160], [5 x i160]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [5 x %"struct.ap_uint<160>"], [5 x %"struct.ap_uint<160>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i160, i160* %src.addr.0.0.05, align 32
  store i160 %1, i160* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a5struct.ap_uint<160>.12"([5 x i160]* noalias nocapture align 512 "unpacked"="0.0" %dst, [5 x %"struct.ap_uint<160>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [5 x %"struct.ap_uint<160>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a5struct.ap_uint<160>.15"([5 x i160]* %dst, [5 x %"struct.ap_uint<160>"]* nonnull %src, i64 5)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a5struct.ap_uint<160>.15"([5 x i160]* nocapture "unpacked"="0.0" %dst, [5 x %"struct.ap_uint<160>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [5 x %"struct.ap_uint<160>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [5 x %"struct.ap_uint<160>"], [5 x %"struct.ap_uint<160>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [5 x i160], [5 x i160]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i160, i160* %src.addr.0.0.05, align 32
  store i160 %1, i160* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_main_func_hw([5 x i160]*, [5 x i160]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([5 x %"struct.ap_uint<160>"]* noalias "unpacked"="0", [5 x i160]* noalias nocapture readonly align 512 "unpacked"="1.0", [5 x %"struct.ap_uint<160>"]* noalias "unpacked"="2", [5 x i160]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a5struct.ap_uint<160>"([5 x %"struct.ap_uint<160>"]* %2, [5 x i160]* align 512 %3)
  ret void
}

define void @main_func_hw_stub_wrapper([5 x i160]*, [5 x i160]*) #5 {
entry:
  %2 = alloca [5 x %"struct.ap_uint<160>"]
  %3 = alloca [5 x %"struct.ap_uint<160>"]
  call void @copy_out([5 x %"struct.ap_uint<160>"]* %2, [5 x i160]* %0, [5 x %"struct.ap_uint<160>"]* %3, [5 x i160]* %1)
  %4 = bitcast [5 x %"struct.ap_uint<160>"]* %2 to %"struct.ap_uint<160>"*
  %5 = bitcast [5 x %"struct.ap_uint<160>"]* %3 to %"struct.ap_uint<160>"*
  call void @main_func_hw_stub(%"struct.ap_uint<160>"* %4, %"struct.ap_uint<160>"* %5)
  call void @copy_in([5 x %"struct.ap_uint<160>"]* %2, [5 x i160]* %0, [5 x %"struct.ap_uint<160>"]* %3, [5 x i160]* %1)
  ret void
}

declare void @main_func_hw_stub(%"struct.ap_uint<160>"*, %"struct.ap_uint<160>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
