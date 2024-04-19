; ModuleID = 'F:/vivado_projects/EE4951_TaWork/ultra96ms2_418/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 3, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 3, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_main_func_ir(%"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="153600" "maxi" %input_feature_map, [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "maxi" %weights_3x3, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "maxi" %bias_3x3, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="48" "maxi" %weights_1x1, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="48" "maxi" %bias_1x1, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="2457600" "maxi" %output_feature_map) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 307200)
  %input_feature_map_copy = bitcast i8* %malloccall to [153600 x i16]*
  %weights_3x3_copy = alloca [3 x [3 x [3 x i16]]], align 512
  %bias_3x3_copy = alloca [3 x i16], align 512
  %weights_1x1_copy = alloca [48 x [3 x i16]], align 512
  %bias_1x1_copy = alloca [48 x i16], align 512
  %malloccall1 = call i8* @malloc(i64 4915200)
  %output_feature_map_copy = bitcast i8* %malloccall1 to [2457600 x i16]*
  %0 = bitcast %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %input_feature_map to [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %weights_3x3 to [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %2 = bitcast %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %bias_3x3 to [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %3 = bitcast [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %weights_1x1 to [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*
  %4 = bitcast %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %bias_1x1 to [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %5 = bitcast %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %output_feature_map to [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [153600 x i16]* %input_feature_map_copy, [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %1, [3 x [3 x [3 x i16]]]* nonnull align 512 %weights_3x3_copy, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %2, [3 x i16]* nonnull align 512 %bias_3x3_copy, [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* nonnull %3, [48 x [3 x i16]]* nonnull align 512 %weights_1x1_copy, [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %4, [48 x i16]* nonnull align 512 %bias_1x1_copy, [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %5, [2457600 x i16]* %output_feature_map_copy)
  call void @apatb_main_func_hw([153600 x i16]* %input_feature_map_copy, [3 x [3 x [3 x i16]]]* %weights_3x3_copy, [3 x i16]* %bias_3x3_copy, [48 x [3 x i16]]* %weights_1x1_copy, [48 x i16]* %bias_1x1_copy, [2457600 x i16]* %output_feature_map_copy)
  call void @copy_back([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %0, [153600 x i16]* %input_feature_map_copy, [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %1, [3 x [3 x [3 x i16]]]* %weights_3x3_copy, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %2, [3 x i16]* %bias_3x3_copy, [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %3, [48 x [3 x i16]]* %weights_1x1_copy, [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %4, [48 x i16]* %bias_1x1_copy, [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %5, [2457600 x i16]* %output_feature_map_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="0", [153600 x i16]* noalias nocapture "unpacked"="1.0", [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="2", [3 x [3 x [3 x i16]]]* noalias align 512 "unpacked"="3", [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="4", [3 x i16]* noalias nocapture align 512 "unpacked"="5.0", [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="6", [48 x [3 x i16]]* noalias align 512 "unpacked"="7", [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="8", [48 x i16]* noalias nocapture align 512 "unpacked"="9.0", [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="10", [2457600 x i16]* noalias nocapture "unpacked"="11.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a153600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.67"([153600 x i16]* %1, [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a3a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.97"([3 x [3 x [3 x i16]]]* align 512 %3, [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %2)
  call fastcc void @"onebyonecpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x i16]* align 512 %5, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a48a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([48 x [3 x i16]]* align 512 %7, [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %6)
  call fastcc void @"onebyonecpy_hls.p0a48struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.41"([48 x i16]* align 512 %9, [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a2457600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([2457600 x i16]* %11, [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a153600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [153600 x i16]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a153600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [153600 x i16]* %src, i64 153600)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a153600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [153600 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [153600 x i16], [153600 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a3a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias %dst, [3 x [3 x [3 x i16]]]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, null
  %1 = icmp eq [3 x [3 x [3 x i16]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %dst, [3 x [3 x [3 x i16]]]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, [3 x [3 x [3 x i16]]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [3 x [3 x i16]]]* %src, null
  %1 = icmp eq [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [3 x [3 x [3 x i16]]], [3 x [3 x [3 x i16]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, [3 x [3 x i16]]* %3, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, [3 x [3 x i16]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [3 x i16]]* %src, null
  %1 = icmp eq [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [3 x i16]* %3, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.61"([3 x i16]* %dst, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a48a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([48 x [3 x i16]]* noalias align 512 %dst, [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [48 x [3 x i16]]* %dst, null
  %1 = icmp eq [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a48a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([48 x [3 x i16]]* nonnull %dst, [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* nonnull %src, i64 48)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a48a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([48 x [3 x i16]]* %dst, [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [48 x [3 x i16]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [48 x [3 x i16]], [48 x [3 x i16]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.93"([3 x i16]* %3, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a48struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [48 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a48struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [48 x i16]* %src, i64 48)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a48struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [48 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [48 x i16], [48 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2457600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([2457600 x i16]* noalias nocapture "unpacked"="0.0" %dst, [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2457600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([2457600 x i16]* %dst, [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 2457600)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2457600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([2457600 x i16]* nocapture "unpacked"="0.0" %dst, [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [2457600 x i16], [2457600 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [153600 x i16]* noalias nocapture readonly "unpacked"="1.0", [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="2", [3 x [3 x [3 x i16]]]* noalias readonly align 512 "unpacked"="3", [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [3 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0", [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="6", [48 x [3 x i16]]* noalias readonly align 512 "unpacked"="7", [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="8", [48 x i16]* noalias nocapture readonly align 512 "unpacked"="9.0", [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="10", [2457600 x i16]* noalias nocapture readonly "unpacked"="11.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a153600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %0, [153600 x i16]* %1)
  call fastcc void @"onebyonecpy_hls.p0a3a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %2, [3 x [3 x [3 x i16]]]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.53"([3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %4, [3 x i16]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a48a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.81"([48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %6, [48 x [3 x i16]]* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0a48struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %8, [48 x i16]* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0a2457600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.31"([2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10, [2457600 x i16]* %11)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2457600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.31"([2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [2457600 x i16]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2457600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.34"([2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [2457600 x i16]* %src, i64 2457600)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2457600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.34"([2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [2457600 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2457600 x i16], [2457600 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a48struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.41"([48 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a48struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.44"([48 x i16]* %dst, [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 48)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a48struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.44"([48 x i16]* nocapture "unpacked"="0.0" %dst, [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [48 x i16], [48 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.53"([3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [3 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.56"([3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [3 x i16]* %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.56"([3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [3 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [3 x i16], [3 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.61"([3 x i16]* nocapture "unpacked"="0.0" %dst, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [3 x i16], [3 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a153600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.67"([153600 x i16]* noalias nocapture "unpacked"="0.0" %dst, [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a153600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.70"([153600 x i16]* %dst, [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 153600)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a153600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.70"([153600 x i16]* nocapture "unpacked"="0.0" %dst, [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [153600 x i16], [153600 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a48a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.81"([48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias %dst, [48 x [3 x i16]]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %1 = icmp eq [48 x [3 x i16]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a48a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.84"([48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* nonnull %dst, [48 x [3 x i16]]* nonnull %src, i64 48)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a48a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.84"([48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, [48 x [3 x i16]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [48 x [3 x i16]]* %src, null
  %1 = icmp eq [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [48 x [3 x i16]], [48 x [3 x i16]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [3 x i16]* %3, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, [3 x i16]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x i16]* %src, null
  %1 = icmp eq [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [3 x i16], [3 x i16]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i16, i16* %3, align 2
  store i16 %4, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.93"([3 x i16]* %dst, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [3 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [3 x i16], [3 x i16]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %4, i16* %3, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a3a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.97"([3 x [3 x [3 x i16]]]* noalias align 512 %dst, [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [3 x [3 x i16]]]* %dst, null
  %1 = icmp eq [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.100"([3 x [3 x [3 x i16]]]* nonnull %dst, [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.100"([3 x [3 x [3 x i16]]]* %dst, [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, null
  %1 = icmp eq [3 x [3 x [3 x i16]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [3 x [3 x [3 x i16]]], [3 x [3 x [3 x i16]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.103"([3 x [3 x i16]]* %3, [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.103"([3 x [3 x i16]]* %dst, [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [3 x [3 x i16]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.93"([3 x i16]* %3, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_main_func_hw([153600 x i16]*, [3 x [3 x [3 x i16]]]*, [3 x i16]*, [48 x [3 x i16]]*, [48 x i16]*, [2457600 x i16]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [153600 x i16]* noalias nocapture readonly "unpacked"="1.0", [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="2", [3 x [3 x [3 x i16]]]* noalias readonly align 512 "unpacked"="3", [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [3 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0", [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="6", [48 x [3 x i16]]* noalias readonly align 512 "unpacked"="7", [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="8", [48 x i16]* noalias nocapture readonly align 512 "unpacked"="9.0", [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="10", [2457600 x i16]* noalias nocapture readonly "unpacked"="11.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2457600struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.31"([2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10, [2457600 x i16]* %11)
  ret void
}

define void @main_func_hw_stub_wrapper([153600 x i16]*, [3 x [3 x [3 x i16]]]*, [3 x i16]*, [48 x [3 x i16]]*, [48 x i16]*, [2457600 x i16]*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 307200)
  %6 = bitcast i8* %malloccall to [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %7 = alloca [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]
  %8 = alloca [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]
  %9 = alloca [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]
  %10 = alloca [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]
  %malloccall1 = tail call i8* @malloc(i64 4915200)
  %11 = bitcast i8* %malloccall1 to [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_out([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6, [153600 x i16]* %0, [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %7, [3 x [3 x [3 x i16]]]* %1, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %8, [3 x i16]* %2, [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %9, [48 x [3 x i16]]* %3, [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10, [48 x i16]* %4, [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %11, [2457600 x i16]* %5)
  %12 = bitcast [153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6 to %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*
  %13 = bitcast [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %7 to [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*
  %14 = bitcast [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %8 to %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*
  %15 = bitcast [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %9 to [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %16 = bitcast [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10 to %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*
  %17 = bitcast [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %11 to %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*
  call void @main_func_hw_stub(%"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %12, [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %13, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %14, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %15, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %16, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %17)
  call void @copy_in([153600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6, [153600 x i16]* %0, [3 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %7, [3 x [3 x [3 x i16]]]* %1, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %8, [3 x i16]* %2, [48 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %9, [48 x [3 x i16]]* %3, [48 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10, [48 x i16]* %4, [2457600 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %11, [2457600 x i16]* %5)
  ret void
}

declare void @main_func_hw_stub(%"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*, [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
