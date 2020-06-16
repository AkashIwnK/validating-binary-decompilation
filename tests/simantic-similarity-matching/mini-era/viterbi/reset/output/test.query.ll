; ModuleID = './output//test.query.bc'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%struct.frame_param = type { i32, i32, i32, i32, i32 }
%union.branchtab27_u = type { [32 x i8] }

@d_ofdm = internal unnamed_addr global %struct.ofdm_param* null, align 8
@d_ntraceback = common local_unnamed_addr global i32 0, align 4
@d_frame = internal unnamed_addr global %struct.frame_param* null, align 8
@d_depunctured = internal global [24780 x i8] zeroinitializer, align 16
@d_depuncture_pattern = internal unnamed_addr global i8* null, align 8
@d_k = common local_unnamed_addr global i32 0, align 4
@d_branchtab27_generic = common local_unnamed_addr global [2 x %union.branchtab27_u] zeroinitializer, align 16
@d_decoded = internal global [18585 x i8] zeroinitializer, align 16
@PARTAB = internal unnamed_addr constant [256 x i8] c"\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00", align 16
@PUNCTURE_1_2 = internal constant [2 x i8] c"\01\01", align 1
@PUNCTURE_2_3 = internal constant [4 x i8] c"\01\01\01\00", align 1
@PUNCTURE_3_4 = internal constant [6 x i8] c"\01\01\01\00\00\01", align 1
@d_mmresult = common local_unnamed_addr global [64 x i8] zeroinitializer, align 16
@d_ppresult = common local_unnamed_addr global [24 x [64 x i8]] zeroinitializer, align 16
@switch.table = private unnamed_addr constant [8 x i32] [i32 5, i32 10, i32 5, i32 10, i32 5, i32 10, i32 9, i32 10]
@switch.table.1 = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @PUNCTURE_1_2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @PUNCTURE_1_2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @PUNCTURE_1_2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @PUNCTURE_2_3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0)]
@switch.table.2 = private unnamed_addr constant [8 x i32] [i32 1, i32 3, i32 1, i32 3, i32 1, i32 3, i32 2, i32 3]

; Function Attrs: norecurse nounwind uwtable
define i8* @depuncture(i8* readonly %in) local_unnamed_addr #0 {
entry:
  %0 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !1
  %n_cbps1 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %0, i64 0, i32 3
  %1 = load i32, i32* %n_cbps1, align 4, !tbaa !5
  %2 = load i32, i32* @d_ntraceback, align 4, !tbaa !8
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = load %struct.frame_param*, %struct.frame_param** @d_frame, align 8, !tbaa !1
  %n_sym268 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %3, i64 0, i32 1
  %4 = load i32, i32* %n_sym268, align 4, !tbaa !9
  %cmp369 = icmp sgt i32 %4, 0
  br i1 %cmp369, label %for.cond4.preheader.lr.ph, label %if.end

for.cond4.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp564 = icmp sgt i32 %1, 0
  %5 = load i8*, i8** @d_depuncture_pattern, align 8
  %6 = sext i32 %1 to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond.cleanup6, %for.cond4.preheader.lr.ph
  %7 = phi i32 [ %4, %for.cond4.preheader.lr.ph ], [ %11, %for.cond.cleanup6 ]
  %indvars.iv77 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next78, %for.cond.cleanup6 ]
  %count.070 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %count.1.lcssa, %for.cond.cleanup6 ]
  br i1 %cmp564, label %while.cond.preheader.lr.ph, label %for.cond.cleanup6

while.cond.preheader.lr.ph:                       ; preds = %for.cond4.preheader
  %8 = mul nsw i64 %indvars.iv77, %6
  %.pre = load i32, i32* @d_k, align 4, !tbaa !8
  %mul858 = shl nsw i32 %.pre, 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc, %while.cond.preheader.lr.ph
  %indvars.iv74 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next75, %for.inc ]
  %count.165 = phi i32 [ %count.070, %while.cond.preheader.lr.ph ], [ %18, %for.inc ]
  %rem59 = srem i32 %count.165, %mul858
  %idxprom60 = sext i32 %rem59 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %5, i64 %idxprom60
  %9 = load i8, i8* %arrayidx61, align 1, !tbaa !11
  %cmp962 = icmp eq i8 %9, 0
  br i1 %cmp962, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %10 = sext i32 %count.165 to i64
  br label %while.body

for.cond.cleanup6.loopexit:                       ; preds = %for.inc
  %.pre80 = load i32, i32* %n_sym268, align 4, !tbaa !9
  br label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond.cleanup6.loopexit, %for.cond4.preheader
  %11 = phi i32 [ %7, %for.cond4.preheader ], [ %.pre80, %for.cond.cleanup6.loopexit ]
  %count.1.lcssa = phi i32 [ %count.070, %for.cond4.preheader ], [ %18, %for.cond.cleanup6.loopexit ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %12 = sext i32 %11 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next78, %12
  br i1 %cmp3, label %for.cond4.preheader, label %if.end.loopexit

while.body:                                       ; preds = %while.body, %while.body.preheader
  %indvars.iv = phi i64 [ %10, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  %arrayidx12 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %indvars.iv
  store i8 2, i8* %arrayidx12, align 1, !tbaa !11
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %rem = srem i32 %13, %mul858
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %cmp9 = icmp eq i8 %14, 0
  br i1 %cmp9, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %count.2.lcssa = phi i32 [ %count.165, %while.cond.preheader ], [ %13, %while.end.loopexit ]
  %15 = add nsw i64 %indvars.iv74, %8
  %arrayidx15 = getelementptr inbounds i8, i8* %in, i64 %15
  %16 = load i8, i8* %arrayidx15, align 1, !tbaa !11
  %17 = sext i32 %count.2.lcssa to i64
  br label %while.cond19

while.cond19:                                     ; preds = %while.cond19, %while.end
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %while.cond19 ], [ %17, %while.end ]
  %.sink = phi i8 [ 2, %while.cond19 ], [ %16, %while.end ]
  %arrayidx29 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %indvars.iv72
  store i8 %.sink, i8* %arrayidx29, align 1, !tbaa !11
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %18 = trunc i64 %indvars.iv.next73 to i32
  %rem21 = srem i32 %18, %mul858
  %idxprom22 = sext i32 %rem21 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %5, i64 %idxprom22
  %19 = load i8, i8* %arrayidx23, align 1, !tbaa !11
  %cmp25 = icmp eq i8 %19, 0
  br i1 %cmp25, label %while.cond19, label %for.inc

for.inc:                                          ; preds = %while.cond19
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup6.loopexit, label %while.cond.preheader

if.end.loopexit:                                  ; preds = %for.cond.cleanup6
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.cond.preheader, %entry
  %depunctured.0 = phi i8* [ %in, %entry ], [ getelementptr inbounds ([24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 0), %for.cond.preheader ], [ getelementptr inbounds ([24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 0), %if.end.loopexit ]
  ret i8* %depunctured.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i8* @do_decoding(i32 %in_cbps, i32 %in_ntraceback, i8* nocapture readnone %in_depuncture_pattern, i32 %in_n_data_bits, i8* nocapture readonly %depd_data) local_unnamed_addr #2 {
entry:
  %l_metric0_generic = alloca [64 x i8], align 16
  %l_metric0_generic1180 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 0
  %l_metric1_generic = alloca [64 x i8], align 16
  %l_metric1_generic1181 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric1_generic, i64 0, i64 0
  %l_path0_generic = alloca [64 x i8], align 16
  %l_path0_generic1168 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 0
  %l_path1_generic = alloca [64 x i8], align 16
  %l_path1_generic1182 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path1_generic, i64 0, i64 0
  %l_mmresult = alloca [64 x i8], align 16
  %l_mmresult1183 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 0
  %l_ppresult = alloca [24 x [64 x i8]], align 16
  %m0 = alloca <16 x i8>, align 16
  %m1 = alloca <16 x i8>, align 16
  %m2 = alloca <16 x i8>, align 16
  %m3 = alloca <16 x i8>, align 16
  %decision0 = alloca <16 x i8>, align 16
  %decision1 = alloca <16 x i8>, align 16
  %survivor0 = alloca <16 x i8>, align 16
  %tmpcast1306 = bitcast <16 x i8>* %survivor0 to [16 x i8]*
  %survivor1 = alloca <16 x i8>, align 16
  %tmpcast1307 = bitcast <16 x i8>* %survivor1 to [16 x i8]*
  %metsv = alloca <16 x i8>, align 16
  %tmpcast1301 = bitcast <16 x i8>* %metsv to [16 x i8]*
  %metsvm = alloca <16 x i8>, align 16
  %shift0 = alloca <16 x i8>, align 16
  %tmpcast1293 = bitcast <16 x i8>* %shift0 to [16 x i8]*
  %shift1 = alloca <16 x i8>, align 16
  %tmpcast = bitcast <16 x i8>* %shift1 to [16 x i8]*
  %tmp0 = alloca <16 x i8>, align 16
  %tmpcast1294 = bitcast <16 x i8>* %tmp0 to [16 x i8]*
  %tmp1 = alloca <16 x i8>, align 16
  %tmpcast1296 = bitcast <16 x i8>* %tmp1 to [16 x i8]*
  %sym0v = alloca <16 x i8>, align 16
  %sym1v = alloca <16 x i8>, align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %0) #3
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric1_generic, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %1) #3
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %2) #3
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path1_generic, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %3) #3
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %4) #3
  %5 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1536, i8* nonnull %5) #3
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_metric0_generic1180, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_path0_generic1168, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_metric1_generic1181, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_path1_generic1182, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_mmresult1183, i8 0, i64 64, i32 16, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %entry
  %6 = bitcast [24 x [64 x i8]]* %l_ppresult to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %6, align 16, !tbaa !11
  %7 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 1, i64 0
  %8 = bitcast i8* %7 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %8, align 16, !tbaa !11
  %9 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 2, i64 0
  %10 = bitcast i8* %9 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %10, align 16, !tbaa !11
  %11 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 3, i64 0
  %12 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %12, align 16, !tbaa !11
  %13 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 4, i64 0
  %14 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %14, align 16, !tbaa !11
  %15 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 5, i64 0
  %16 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %16, align 16, !tbaa !11
  %17 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 6, i64 0
  %18 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %18, align 16, !tbaa !11
  %19 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 7, i64 0
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %20, align 16, !tbaa !11
  %21 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 8, i64 0
  %22 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %22, align 16, !tbaa !11
  %23 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 9, i64 0
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %24, align 16, !tbaa !11
  %25 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 10, i64 0
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %26, align 16, !tbaa !11
  %27 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 11, i64 0
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %28, align 16, !tbaa !11
  %29 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 12, i64 0
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %30, align 16, !tbaa !11
  %31 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 13, i64 0
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %32, align 16, !tbaa !11
  %33 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 14, i64 0
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %34, align 16, !tbaa !11
  %35 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 15, i64 0
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %36, align 16, !tbaa !11
  %37 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 16, i64 0
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %38, align 16, !tbaa !11
  %39 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 17, i64 0
  %40 = bitcast i8* %39 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %40, align 16, !tbaa !11
  %41 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 18, i64 0
  %42 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %42, align 16, !tbaa !11
  %43 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 19, i64 0
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %44, align 16, !tbaa !11
  %45 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 20, i64 0
  %46 = bitcast i8* %45 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %46, align 16, !tbaa !11
  %47 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 21, i64 0
  %48 = bitcast i8* %47 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %48, align 16, !tbaa !11
  %49 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 22, i64 0
  %50 = bitcast i8* %49 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %50, align 16, !tbaa !11
  %51 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 23, i64 0
  %52 = bitcast i8* %51 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %52, align 16, !tbaa !11
  %53 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 16
  %54 = bitcast i8* %53 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %54, align 16, !tbaa !11
  %55 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 1, i64 16
  %56 = bitcast i8* %55 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %56, align 16, !tbaa !11
  %57 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 2, i64 16
  %58 = bitcast i8* %57 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %58, align 16, !tbaa !11
  %59 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 3, i64 16
  %60 = bitcast i8* %59 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %60, align 16, !tbaa !11
  %61 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 4, i64 16
  %62 = bitcast i8* %61 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %62, align 16, !tbaa !11
  %63 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 5, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %64, align 16, !tbaa !11
  %65 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 6, i64 16
  %66 = bitcast i8* %65 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %66, align 16, !tbaa !11
  %67 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 7, i64 16
  %68 = bitcast i8* %67 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %68, align 16, !tbaa !11
  %69 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 8, i64 16
  %70 = bitcast i8* %69 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %70, align 16, !tbaa !11
  %71 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 9, i64 16
  %72 = bitcast i8* %71 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %72, align 16, !tbaa !11
  %73 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 10, i64 16
  %74 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %74, align 16, !tbaa !11
  %75 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 11, i64 16
  %76 = bitcast i8* %75 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %76, align 16, !tbaa !11
  %77 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 12, i64 16
  %78 = bitcast i8* %77 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %78, align 16, !tbaa !11
  %79 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 13, i64 16
  %80 = bitcast i8* %79 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %80, align 16, !tbaa !11
  %81 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 14, i64 16
  %82 = bitcast i8* %81 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %82, align 16, !tbaa !11
  %83 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 15, i64 16
  %84 = bitcast i8* %83 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %84, align 16, !tbaa !11
  %85 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 16, i64 16
  %86 = bitcast i8* %85 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %86, align 16, !tbaa !11
  %87 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 17, i64 16
  %88 = bitcast i8* %87 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %88, align 16, !tbaa !11
  %89 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 18, i64 16
  %90 = bitcast i8* %89 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %90, align 16, !tbaa !11
  %91 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 19, i64 16
  %92 = bitcast i8* %91 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %92, align 16, !tbaa !11
  %93 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 20, i64 16
  %94 = bitcast i8* %93 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %94, align 16, !tbaa !11
  %95 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 21, i64 16
  %96 = bitcast i8* %95 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %96, align 16, !tbaa !11
  %97 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 22, i64 16
  %98 = bitcast i8* %97 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %98, align 16, !tbaa !11
  %99 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 23, i64 16
  %100 = bitcast i8* %99 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %100, align 16, !tbaa !11
  %101 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 32
  %102 = bitcast i8* %101 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %102, align 16, !tbaa !11
  %103 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 1, i64 32
  %104 = bitcast i8* %103 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %104, align 16, !tbaa !11
  %105 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 2, i64 32
  %106 = bitcast i8* %105 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %106, align 16, !tbaa !11
  %107 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 3, i64 32
  %108 = bitcast i8* %107 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %108, align 16, !tbaa !11
  %109 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 4, i64 32
  %110 = bitcast i8* %109 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %110, align 16, !tbaa !11
  %111 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 5, i64 32
  %112 = bitcast i8* %111 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %112, align 16, !tbaa !11
  %113 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 6, i64 32
  %114 = bitcast i8* %113 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %114, align 16, !tbaa !11
  %115 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 7, i64 32
  %116 = bitcast i8* %115 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %116, align 16, !tbaa !11
  %117 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 8, i64 32
  %118 = bitcast i8* %117 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %118, align 16, !tbaa !11
  %119 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 9, i64 32
  %120 = bitcast i8* %119 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %120, align 16, !tbaa !11
  %121 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 10, i64 32
  %122 = bitcast i8* %121 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %122, align 16, !tbaa !11
  %123 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 11, i64 32
  %124 = bitcast i8* %123 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %124, align 16, !tbaa !11
  %125 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 12, i64 32
  %126 = bitcast i8* %125 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %126, align 16, !tbaa !11
  %127 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 13, i64 32
  %128 = bitcast i8* %127 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %128, align 16, !tbaa !11
  %129 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 14, i64 32
  %130 = bitcast i8* %129 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %130, align 16, !tbaa !11
  %131 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 15, i64 32
  %132 = bitcast i8* %131 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %132, align 16, !tbaa !11
  %133 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 16, i64 32
  %134 = bitcast i8* %133 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %134, align 16, !tbaa !11
  %135 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 17, i64 32
  %136 = bitcast i8* %135 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %136, align 16, !tbaa !11
  %137 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 18, i64 32
  %138 = bitcast i8* %137 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %138, align 16, !tbaa !11
  %139 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 19, i64 32
  %140 = bitcast i8* %139 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %140, align 16, !tbaa !11
  %141 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 20, i64 32
  %142 = bitcast i8* %141 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %142, align 16, !tbaa !11
  %143 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 21, i64 32
  %144 = bitcast i8* %143 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %144, align 16, !tbaa !11
  %145 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 22, i64 32
  %146 = bitcast i8* %145 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %146, align 16, !tbaa !11
  %147 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 23, i64 32
  %148 = bitcast i8* %147 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %148, align 16, !tbaa !11
  %149 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 48
  %150 = bitcast i8* %149 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %150, align 16, !tbaa !11
  %151 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 1, i64 48
  %152 = bitcast i8* %151 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %152, align 16, !tbaa !11
  %153 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 2, i64 48
  %154 = bitcast i8* %153 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %154, align 16, !tbaa !11
  %155 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 3, i64 48
  %156 = bitcast i8* %155 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %156, align 16, !tbaa !11
  %157 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 4, i64 48
  %158 = bitcast i8* %157 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %158, align 16, !tbaa !11
  %159 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 5, i64 48
  %160 = bitcast i8* %159 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %160, align 16, !tbaa !11
  %161 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 6, i64 48
  %162 = bitcast i8* %161 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %162, align 16, !tbaa !11
  %163 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 7, i64 48
  %164 = bitcast i8* %163 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %164, align 16, !tbaa !11
  %165 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 8, i64 48
  %166 = bitcast i8* %165 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %166, align 16, !tbaa !11
  %167 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 9, i64 48
  %168 = bitcast i8* %167 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %168, align 16, !tbaa !11
  %169 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 10, i64 48
  %170 = bitcast i8* %169 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %170, align 16, !tbaa !11
  %171 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 11, i64 48
  %172 = bitcast i8* %171 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %172, align 16, !tbaa !11
  %173 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 12, i64 48
  %174 = bitcast i8* %173 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %174, align 16, !tbaa !11
  %175 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 13, i64 48
  %176 = bitcast i8* %175 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %176, align 16, !tbaa !11
  %177 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 14, i64 48
  %178 = bitcast i8* %177 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %178, align 16, !tbaa !11
  %179 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 15, i64 48
  %180 = bitcast i8* %179 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %180, align 16, !tbaa !11
  %181 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 16, i64 48
  %182 = bitcast i8* %181 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %182, align 16, !tbaa !11
  %183 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 17, i64 48
  %184 = bitcast i8* %183 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %184, align 16, !tbaa !11
  %185 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 18, i64 48
  %186 = bitcast i8* %185 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %186, align 16, !tbaa !11
  %187 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 19, i64 48
  %188 = bitcast i8* %187 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %188, align 16, !tbaa !11
  %189 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 20, i64 48
  %190 = bitcast i8* %189 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %190, align 16, !tbaa !11
  %191 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 21, i64 48
  %192 = bitcast i8* %191 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %192, align 16, !tbaa !11
  %193 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 22, i64 48
  %194 = bitcast i8* %193 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %194, align 16, !tbaa !11
  %195 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 23, i64 48
  %196 = bitcast i8* %195 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %196, align 16, !tbaa !11
  %sym0v1058 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym0v, i64 0, i64 0
  %sym1v1059 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym1v, i64 0, i64 0
  %cmp201045 = icmp sgt i32 %in_n_data_bits, 0
  br i1 %cmp201045, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %vector.body
  %197 = getelementptr inbounds <16 x i8>, <16 x i8>* %m0, i64 0, i64 0
  %198 = getelementptr inbounds <16 x i8>, <16 x i8>* %m1, i64 0, i64 0
  %199 = getelementptr inbounds <16 x i8>, <16 x i8>* %m2, i64 0, i64 0
  %200 = getelementptr inbounds <16 x i8>, <16 x i8>* %m3, i64 0, i64 0
  %201 = getelementptr inbounds <16 x i8>, <16 x i8>* %decision0, i64 0, i64 0
  %202 = getelementptr inbounds <16 x i8>, <16 x i8>* %decision1, i64 0, i64 0
  %203 = getelementptr inbounds <16 x i8>, <16 x i8>* %survivor0, i64 0, i64 0
  %204 = getelementptr inbounds <16 x i8>, <16 x i8>* %survivor1, i64 0, i64 0
  %205 = getelementptr inbounds <16 x i8>, <16 x i8>* %metsv, i64 0, i64 0
  %206 = getelementptr inbounds <16 x i8>, <16 x i8>* %metsvm, i64 0, i64 0
  %207 = getelementptr inbounds <16 x i8>, <16 x i8>* %shift0, i64 0, i64 0
  %208 = getelementptr inbounds <16 x i8>, <16 x i8>* %shift1, i64 0, i64 0
  %209 = getelementptr inbounds <16 x i8>, <16 x i8>* %tmp0, i64 0, i64 0
  %210 = getelementptr inbounds <16 x i8>, <16 x i8>* %tmp1, i64 0, i64 0
  %211 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym0v, i64 0, i64 0
  %212 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym1v, i64 0, i64 0
  %sub636 = add i32 %in_ntraceback, -1
  %cmp6371035 = icmp sgt i32 %in_ntraceback, 1
  %arrayidx511 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 8
  %arrayidx375.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 1
  %arrayidx382.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 1
  %arrayidx375.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 2
  %arrayidx382.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 2
  %arrayidx375.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 3
  %arrayidx382.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 3
  %arrayidx375.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 4
  %arrayidx382.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 4
  %arrayidx375.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 5
  %arrayidx382.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 5
  %arrayidx375.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 6
  %arrayidx382.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 6
  %arrayidx375.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 7
  %arrayidx382.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 7
  %arrayidx417.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 1
  %arrayidx417.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 2
  %arrayidx417.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 3
  %arrayidx417.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 4
  %arrayidx417.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 5
  %arrayidx417.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 6
  %arrayidx417.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 7
  %arrayidx417.9 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 9
  %arrayidx417.10 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 10
  %arrayidx417.11 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 11
  %arrayidx417.12 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 12
  %arrayidx417.13 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 13
  %arrayidx417.14 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 14
  %arrayidx417.15 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 15
  %arrayidx429 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 8
  %arrayidx437 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 8
  %arrayidx429.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 9
  %arrayidx437.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 9
  %arrayidx429.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 10
  %arrayidx437.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 10
  %arrayidx429.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 11
  %arrayidx437.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 11
  %arrayidx429.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 12
  %arrayidx437.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 12
  %arrayidx429.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 13
  %arrayidx437.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 13
  %arrayidx429.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 14
  %arrayidx437.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 14
  %arrayidx429.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1306, i64 0, i64 15
  %arrayidx437.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 15
  %arrayidx473.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 1
  %arrayidx473.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 2
  %arrayidx473.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 3
  %arrayidx473.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 4
  %arrayidx473.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 5
  %arrayidx473.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 6
  %arrayidx473.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 7
  %arrayidx473.8 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 8
  %arrayidx473.9 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 9
  %arrayidx473.10 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 10
  %arrayidx473.11 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 11
  %arrayidx473.12 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 12
  %arrayidx473.13 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 13
  %scevgep1150.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 16
  %scevgep.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 16
  %scevgep1148.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 16
  %scevgep1150.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 32
  %scevgep.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 32
  %scevgep1148.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 32
  %scevgep1150.3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 48
  %scevgep.3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 48
  %scevgep1148.3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 48
  %arrayidx114.15.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 15
  %arrayidx79.14.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 14
  %arrayidx79.13.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 13
  %arrayidx79.12.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 12
  %arrayidx79.11.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 11
  %arrayidx79.10.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 10
  %arrayidx79.9.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 9
  %arrayidx79.8.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 8
  %arrayidx79.7.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 7
  %arrayidx79.6.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 6
  %arrayidx79.5.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 5
  %arrayidx79.4.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 4
  %arrayidx79.3.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 3
  %arrayidx79.2.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 2
  %arrayidx79.1.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 1
  %xtraiter = and i32 %sub636, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  %213 = icmp eq i32 %in_ntraceback, 2
  %214 = bitcast [64 x i8]* %l_metric0_generic to <16 x i8>*
  %215 = bitcast [64 x i8]* %l_metric0_generic to <16 x i8>*
  %arrayidx671.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 16
  %216 = bitcast i8* %arrayidx671.1 to <16 x i8>*
  %217 = bitcast i8* %arrayidx671.1 to <16 x i8>*
  %arrayidx671.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 32
  %218 = bitcast i8* %arrayidx671.2 to <16 x i8>*
  %219 = bitcast i8* %arrayidx671.2 to <16 x i8>*
  %arrayidx671.3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 48
  %220 = bitcast i8* %arrayidx671.3 to <16 x i8>*
  %221 = bitcast i8* %arrayidx671.3 to <16 x i8>*
  br label %while.body

while.body:                                       ; preds = %if.end711, %while.body.lr.ph
  %in_count.01050 = phi i32 [ 0, %while.body.lr.ph ], [ %inc712, %if.end711 ]
  %out_count.01049 = phi i32 [ 0, %while.body.lr.ph ], [ %out_count.1, %if.end711 ]
  %n_decoded.01048 = phi i32 [ 0, %while.body.lr.ph ], [ %n_decoded.3, %if.end711 ]
  %l_store_pos.01047 = phi i32 [ 0, %while.body.lr.ph ], [ %l_store_pos.1, %if.end711 ]
  %rem988 = and i32 %in_count.01050, 3
  %cmp21 = icmp eq i32 %rem988, 0
  br i1 %cmp21, label %if.then, label %if.end711

if.then:                                          ; preds = %while.body
  %and = and i32 %in_count.01050, -4
  %idxprom25 = zext i32 %and to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %depd_data, i64 %idxprom25
  call void @llvm.lifetime.start(i64 16, i8* nonnull %197) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %198) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %199) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %200) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %201) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %202) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %203) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %204) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %205) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %206) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %207) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %208) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %209) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %210) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %211) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %212) #3
  %222 = load i8, i8* %arrayidx26, align 1, !tbaa !11
  %arrayidx37 = getelementptr inbounds i8, i8* %arrayidx26, i64 1
  %223 = load i8, i8* %arrayidx37, align 1, !tbaa !11
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym0v1058, i8 %222, i64 16, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym1v1059, i8 %223, i64 16, i32 16, i1 false)
  %arrayidx542 = getelementptr inbounds i8, i8* %arrayidx26, i64 2
  %224 = load i8, i8* %arrayidx542, align 1, !tbaa !11
  %arrayidx546 = getelementptr inbounds i8, i8* %arrayidx26, i64 3
  %225 = load i8, i8* %arrayidx546, align 1, !tbaa !11
  br label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %for.body540.preheader.for.cond48.preheader_crit_edge, %if.then
  %226 = phi i8 [ %222, %if.then ], [ %.pre, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %s.01028 = phi i32 [ 0, %if.then ], [ %inc553, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %second_symbol.01027 = phi i64 [ 1, %if.then ], [ 3, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %path1.01025 = phi i8* [ %3, %if.then ], [ %2, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %path0.01024 = phi i8* [ %2, %if.then ], [ %3, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %metric1.01023 = phi i8* [ %1, %if.then ], [ %0, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %metric0.01022 = phi i8* [ %0, %if.then ], [ %1, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %cmp54 = icmp eq i8 %226, 2
  %arrayidx84 = getelementptr inbounds i8, i8* %arrayidx26, i64 %second_symbol.01027
  %wide.load1254 = load <16 x i8>, <16 x i8>* %sym0v, align 16
  %wide.load1256 = load <16 x i8>, <16 x i8>* %sym1v, align 16
  br label %for.body51

for.cond.cleanup45:                               ; preds = %for.body540.preheader
  store <16 x i8> %wide.load12401309, <16 x i8>* %metsvm, align 1, !tbaa !11
  store <16 x i8> %252, <16 x i8>* %m0, align 16, !tbaa !11
  store <16 x i8> %255, <16 x i8>* %m1, align 16, !tbaa !11
  store <16 x i8> %256, <16 x i8>* %m2, align 16, !tbaa !11
  store <16 x i8> %257, <16 x i8>* %m3, align 16, !tbaa !11
  store <16 x i8> %269, <16 x i8>* %decision0, align 16, !tbaa !11
  store <16 x i8> %271, <16 x i8>* %decision1, align 16, !tbaa !11
  call void @llvm.lifetime.end(i64 16, i8* nonnull %212) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %211) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %210) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %209) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %208) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %207) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %206) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %205) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %204) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %203) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %202) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %201) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %200) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %199) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %198) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %197) #3
  %cmp556 = icmp sgt i32 %in_count.01050, 0
  %rem558 = srem i32 %in_count.01050, 16
  %cmp559 = icmp eq i32 %rem558, 8
  %or.cond = and i1 %cmp556, %cmp559
  br i1 %or.cond, label %if.then561, label %if.end711

for.body51:                                       ; preds = %for.body357.preheader, %for.cond48.preheader
  %indvars.iv1125 = phi i64 [ 0, %for.cond48.preheader ], [ %indvars.iv.next1126, %for.body357.preheader ]
  br i1 %cmp54, label %for.cond58.preheader, label %if.else

for.cond58.preheader:                             ; preds = %for.body51
  %227 = shl i64 %indvars.iv1125, 4
  %arrayidx66 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %227
  br label %for.cond161.preheader.sink.split

for.cond161.preheader.sink.split:                 ; preds = %for.body94.preheader, %for.cond58.preheader
  %arrayidx66.sink = phi i8* [ %arrayidx66, %for.cond58.preheader ], [ %arrayidx99, %for.body94.preheader ]
  %.sink = phi i8* [ %212, %for.cond58.preheader ], [ %211, %for.body94.preheader ]
  %.pre-phi.ph = phi i64 [ %227, %for.cond58.preheader ], [ %259, %for.body94.preheader ]
  %228 = bitcast i8* %arrayidx66.sink to <16 x i8>*
  %229 = load <16 x i8>, <16 x i8>* %228, align 16, !tbaa !11
  %230 = bitcast i8* %.sink to <16 x i8>*
  %231 = load <16 x i8>, <16 x i8>* %230, align 16, !tbaa !11
  %232 = xor <16 x i8> %231, %229
  %233 = extractelement <16 x i8> %232, i32 0
  %sub = sub i8 1, %233
  store i8 %sub, i8* %205, align 16, !tbaa !11
  %234 = extractelement <16 x i8> %232, i32 1
  %sub.1 = sub i8 1, %234
  store i8 %sub.1, i8* %arrayidx79.1.sink, align 1, !tbaa !11
  %235 = extractelement <16 x i8> %232, i32 2
  %sub.2 = sub i8 1, %235
  store i8 %sub.2, i8* %arrayidx79.2.sink, align 2, !tbaa !11
  %236 = extractelement <16 x i8> %232, i32 3
  %sub.3 = sub i8 1, %236
  store i8 %sub.3, i8* %arrayidx79.3.sink, align 1, !tbaa !11
  %237 = extractelement <16 x i8> %232, i32 4
  %sub.4 = sub i8 1, %237
  store i8 %sub.4, i8* %arrayidx79.4.sink, align 4, !tbaa !11
  %238 = extractelement <16 x i8> %232, i32 5
  %sub.5 = sub i8 1, %238
  store i8 %sub.5, i8* %arrayidx79.5.sink, align 1, !tbaa !11
  %239 = extractelement <16 x i8> %232, i32 6
  %sub.6 = sub i8 1, %239
  store i8 %sub.6, i8* %arrayidx79.6.sink, align 2, !tbaa !11
  %240 = extractelement <16 x i8> %232, i32 7
  %sub.7 = sub i8 1, %240
  store i8 %sub.7, i8* %arrayidx79.7.sink, align 1, !tbaa !11
  %241 = extractelement <16 x i8> %232, i32 8
  %sub.8 = sub i8 1, %241
  store i8 %sub.8, i8* %arrayidx79.8.sink, align 8, !tbaa !11
  %242 = extractelement <16 x i8> %232, i32 9
  %sub.9 = sub i8 1, %242
  store i8 %sub.9, i8* %arrayidx79.9.sink, align 1, !tbaa !11
  %243 = extractelement <16 x i8> %232, i32 10
  %sub.10 = sub i8 1, %243
  store i8 %sub.10, i8* %arrayidx79.10.sink, align 2, !tbaa !11
  %244 = extractelement <16 x i8> %232, i32 11
  %sub.11 = sub i8 1, %244
  store i8 %sub.11, i8* %arrayidx79.11.sink, align 1, !tbaa !11
  %245 = extractelement <16 x i8> %232, i32 12
  %sub.12 = sub i8 1, %245
  store i8 %sub.12, i8* %arrayidx79.12.sink, align 4, !tbaa !11
  %246 = extractelement <16 x i8> %232, i32 13
  %sub.13 = sub i8 1, %246
  store i8 %sub.13, i8* %arrayidx79.13.sink, align 1, !tbaa !11
  %247 = extractelement <16 x i8> %232, i32 14
  %sub.14 = sub i8 1, %247
  store i8 %sub.14, i8* %arrayidx79.14.sink, align 2, !tbaa !11
  %248 = extractelement <16 x i8> %232, i32 15
  %sub111.15 = sub i8 1, %248
  store i8 %sub111.15, i8* %arrayidx114.15.sink, align 1, !tbaa !11
  br label %for.cond161.preheader

for.cond161.preheader:                            ; preds = %vector.body1241, %for.cond161.preheader.sink.split
  %wide.load12401309 = phi <16 x i8> [ %232, %for.cond161.preheader.sink.split ], [ %266, %vector.body1241 ]
  %.pre-phi = phi i64 [ %.pre-phi.ph, %for.cond161.preheader.sink.split ], [ %259, %vector.body1241 ]
  %249 = add nuw nsw i64 %.pre-phi, 32
  br label %vector.body1225

vector.body1225:                                  ; preds = %for.cond161.preheader
  %250 = getelementptr inbounds i8, i8* %metric0.01022, i64 %.pre-phi
  %251 = bitcast i8* %250 to <16 x i8>*
  %wide.load1237 = load <16 x i8>, <16 x i8>* %251, align 1, !tbaa !11
  %wide.load1238 = load <16 x i8>, <16 x i8>* %metsv, align 16, !tbaa !11
  %252 = add <16 x i8> %wide.load1238, %wide.load1237
  %253 = getelementptr inbounds i8, i8* %metric0.01022, i64 %249
  %254 = bitcast i8* %253 to <16 x i8>*
  %wide.load1239 = load <16 x i8>, <16 x i8>* %254, align 1, !tbaa !11
  %255 = add <16 x i8> %wide.load12401309, %wide.load1239
  %256 = add <16 x i8> %wide.load1237, %wide.load12401309
  %257 = add <16 x i8> %wide.load1238, %wide.load1239
  br label %vector.body1210

if.else:                                          ; preds = %for.body51
  %258 = load i8, i8* %arrayidx84, align 1, !tbaa !11
  %cmp86 = icmp eq i8 %258, 2
  %259 = shl i64 %indvars.iv1125, 4
  br i1 %cmp86, label %for.body94.preheader, label %vector.body1241.preheader

vector.body1241.preheader:                        ; preds = %if.else
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241.preheader
  %260 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %259
  %261 = bitcast i8* %260 to <16 x i8>*
  %wide.load1253 = load <16 x i8>, <16 x i8>* %261, align 16, !tbaa !11
  %262 = xor <16 x i8> %wide.load1254, %wide.load1253
  %263 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %259
  %264 = bitcast i8* %263 to <16 x i8>*
  %wide.load1255 = load <16 x i8>, <16 x i8>* %264, align 16, !tbaa !11
  %265 = xor <16 x i8> %wide.load1256, %wide.load1255
  %266 = add <16 x i8> %265, %262
  %267 = sub <16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>, %266
  store <16 x i8> %267, <16 x i8>* %metsv, align 16, !tbaa !11
  br label %for.cond161.preheader

for.body94.preheader:                             ; preds = %if.else
  %arrayidx99 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %259
  br label %for.cond161.preheader.sink.split

vector.body1210:                                  ; preds = %vector.body1225
  %268 = icmp ugt <16 x i8> %252, %255
  %269 = sext <16 x i1> %268 to <16 x i8>
  %270 = icmp ugt <16 x i8> %256, %257
  %271 = sext <16 x i1> %270 to <16 x i8>
  %272 = select <16 x i1> %268, <16 x i8> %252, <16 x i8> %255
  store <16 x i8> %272, <16 x i8>* %survivor0, align 16, !tbaa !11
  %273 = select <16 x i1> %270, <16 x i8> %256, <16 x i8> %257
  store <16 x i8> %273, <16 x i8>* %survivor1, align 16, !tbaa !11
  br label %for.body294

for.body294:                                      ; preds = %for.body294, %vector.body1210
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %for.body294 ], [ 0, %vector.body1210 ]
  %274 = add nuw nsw i64 %indvars.iv1077, %.pre-phi
  %arrayidx298 = getelementptr inbounds i8, i8* %path0.01024, i64 %274
  %275 = load i8, i8* %arrayidx298, align 1, !tbaa !11
  %276 = or i64 %indvars.iv1077, 1
  %277 = add nuw nsw i64 %276, %.pre-phi
  %arrayidx304 = getelementptr inbounds i8, i8* %path0.01024, i64 %277
  %278 = load i8, i8* %arrayidx304, align 1, !tbaa !11
  %conv305 = zext i8 %278 to i16
  %shl = shl nuw i16 %conv305, 8
  %conv306 = zext i8 %275 to i16
  %or307 = or i16 %shl, %conv306
  %shl310 = shl i8 %275, 1
  %arrayidx314 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1293, i64 0, i64 %indvars.iv1077
  store i8 %shl310, i8* %arrayidx314, align 2, !tbaa !11
  %279 = lshr i16 %or307, 7
  %conv316 = trunc i16 %279 to i8
  %arrayidx319 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1293, i64 0, i64 %276
  store i8 %conv316, i8* %arrayidx319, align 1, !tbaa !11
  %280 = add nuw nsw i64 %indvars.iv1077, %249
  %arrayidx324 = getelementptr inbounds i8, i8* %path0.01024, i64 %280
  %281 = load i8, i8* %arrayidx324, align 1, !tbaa !11
  %282 = add nuw nsw i64 %276, %249
  %arrayidx331 = getelementptr inbounds i8, i8* %path0.01024, i64 %282
  %283 = load i8, i8* %arrayidx331, align 1, !tbaa !11
  %conv332 = zext i8 %283 to i16
  %shl333 = shl nuw i16 %conv332, 8
  %conv334 = zext i8 %281 to i16
  %or335 = or i16 %shl333, %conv334
  %shl338 = shl i8 %281, 1
  %arrayidx342 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast, i64 0, i64 %indvars.iv1077
  store i8 %shl338, i8* %arrayidx342, align 2, !tbaa !11
  %284 = lshr i16 %or335, 7
  %conv345 = trunc i16 %284 to i8
  %arrayidx348 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast, i64 0, i64 %276
  store i8 %conv345, i8* %arrayidx348, align 1, !tbaa !11
  %indvars.iv.next1078 = add nuw nsw i64 %indvars.iv1077, 2
  %cmp291 = icmp slt i64 %indvars.iv.next1078, 16
  br i1 %cmp291, label %for.body294, label %for.body357.preheader

for.body357.preheader:                            ; preds = %for.body294
  %285 = load <16 x i8>, <16 x i8>* %shift1, align 16, !tbaa !11
  %286 = add <16 x i8> %285, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %286, <16 x i8>* %shift1, align 16, !tbaa !11
  %287 = shl i64 %indvars.iv1125, 5
  %288 = load i8, i8* %203, align 16, !tbaa !11
  %arrayidx380 = getelementptr inbounds i8, i8* %metric1.01023, i64 %287
  store i8 %288, i8* %arrayidx380, align 1, !tbaa !11
  %289 = load i8, i8* %204, align 16, !tbaa !11
  %290 = or i64 %287, 1
  %arrayidx388 = getelementptr inbounds i8, i8* %metric1.01023, i64 %290
  store i8 %289, i8* %arrayidx388, align 1, !tbaa !11
  %291 = load i8, i8* %arrayidx375.1, align 1, !tbaa !11
  %292 = or i64 %287, 2
  %arrayidx380.1 = getelementptr inbounds i8, i8* %metric1.01023, i64 %292
  store i8 %291, i8* %arrayidx380.1, align 1, !tbaa !11
  %293 = load i8, i8* %arrayidx382.1, align 1, !tbaa !11
  %294 = or i64 %287, 3
  %arrayidx388.1 = getelementptr inbounds i8, i8* %metric1.01023, i64 %294
  store i8 %293, i8* %arrayidx388.1, align 1, !tbaa !11
  %295 = load i8, i8* %arrayidx375.2, align 2, !tbaa !11
  %296 = or i64 %287, 4
  %arrayidx380.2 = getelementptr inbounds i8, i8* %metric1.01023, i64 %296
  store i8 %295, i8* %arrayidx380.2, align 1, !tbaa !11
  %297 = load i8, i8* %arrayidx382.2, align 2, !tbaa !11
  %298 = or i64 %287, 5
  %arrayidx388.2 = getelementptr inbounds i8, i8* %metric1.01023, i64 %298
  store i8 %297, i8* %arrayidx388.2, align 1, !tbaa !11
  %299 = load i8, i8* %arrayidx375.3, align 1, !tbaa !11
  %300 = or i64 %287, 6
  %arrayidx380.3 = getelementptr inbounds i8, i8* %metric1.01023, i64 %300
  store i8 %299, i8* %arrayidx380.3, align 1, !tbaa !11
  %301 = load i8, i8* %arrayidx382.3, align 1, !tbaa !11
  %302 = or i64 %287, 7
  %arrayidx388.3 = getelementptr inbounds i8, i8* %metric1.01023, i64 %302
  store i8 %301, i8* %arrayidx388.3, align 1, !tbaa !11
  %303 = load i8, i8* %arrayidx375.4, align 4, !tbaa !11
  %304 = or i64 %287, 8
  %arrayidx380.4 = getelementptr inbounds i8, i8* %metric1.01023, i64 %304
  store i8 %303, i8* %arrayidx380.4, align 1, !tbaa !11
  %305 = load i8, i8* %arrayidx382.4, align 4, !tbaa !11
  %306 = or i64 %287, 9
  %arrayidx388.4 = getelementptr inbounds i8, i8* %metric1.01023, i64 %306
  store i8 %305, i8* %arrayidx388.4, align 1, !tbaa !11
  %307 = load i8, i8* %arrayidx375.5, align 1, !tbaa !11
  %308 = or i64 %287, 10
  %arrayidx380.5 = getelementptr inbounds i8, i8* %metric1.01023, i64 %308
  store i8 %307, i8* %arrayidx380.5, align 1, !tbaa !11
  %309 = load i8, i8* %arrayidx382.5, align 1, !tbaa !11
  %310 = or i64 %287, 11
  %arrayidx388.5 = getelementptr inbounds i8, i8* %metric1.01023, i64 %310
  store i8 %309, i8* %arrayidx388.5, align 1, !tbaa !11
  %311 = load i8, i8* %arrayidx375.6, align 2, !tbaa !11
  %312 = or i64 %287, 12
  %arrayidx380.6 = getelementptr inbounds i8, i8* %metric1.01023, i64 %312
  store i8 %311, i8* %arrayidx380.6, align 1, !tbaa !11
  %313 = load i8, i8* %arrayidx382.6, align 2, !tbaa !11
  %314 = or i64 %287, 13
  %arrayidx388.6 = getelementptr inbounds i8, i8* %metric1.01023, i64 %314
  store i8 %313, i8* %arrayidx388.6, align 1, !tbaa !11
  %315 = load i8, i8* %arrayidx375.7, align 1, !tbaa !11
  %316 = or i64 %287, 14
  %arrayidx380.7 = getelementptr inbounds i8, i8* %metric1.01023, i64 %316
  store i8 %315, i8* %arrayidx380.7, align 1, !tbaa !11
  %317 = load i8, i8* %arrayidx382.7, align 1, !tbaa !11
  %318 = or i64 %287, 15
  %arrayidx388.7 = getelementptr inbounds i8, i8* %metric1.01023, i64 %318
  store i8 %317, i8* %arrayidx388.7, align 1, !tbaa !11
  %319 = load <16 x i8>, <16 x i8>* %shift0, align 16, !tbaa !11
  %320 = and <16 x i8> %319, %269
  %321 = xor <16 x i8> %269, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %322 = load <16 x i8>, <16 x i8>* %shift1, align 16, !tbaa !11
  %323 = and <16 x i8> %322, %321
  %324 = or <16 x i8> %323, %320
  store <16 x i8> %324, <16 x i8>* %tmp0, align 16, !tbaa !11
  %325 = or i64 %287, 16
  %326 = load i8, i8* %arrayidx429, align 8, !tbaa !11
  %arrayidx435 = getelementptr inbounds i8, i8* %metric1.01023, i64 %325
  store i8 %326, i8* %arrayidx435, align 1, !tbaa !11
  %327 = load i8, i8* %arrayidx437, align 8, !tbaa !11
  %328 = or i64 %287, 17
  %arrayidx444 = getelementptr inbounds i8, i8* %metric1.01023, i64 %328
  store i8 %327, i8* %arrayidx444, align 1, !tbaa !11
  %329 = load i8, i8* %arrayidx429.1, align 1, !tbaa !11
  %330 = or i64 %287, 18
  %arrayidx435.1 = getelementptr inbounds i8, i8* %metric1.01023, i64 %330
  store i8 %329, i8* %arrayidx435.1, align 1, !tbaa !11
  %331 = load i8, i8* %arrayidx437.1, align 1, !tbaa !11
  %332 = or i64 %287, 19
  %arrayidx444.1 = getelementptr inbounds i8, i8* %metric1.01023, i64 %332
  store i8 %331, i8* %arrayidx444.1, align 1, !tbaa !11
  %333 = load i8, i8* %arrayidx429.2, align 2, !tbaa !11
  %334 = or i64 %287, 20
  %arrayidx435.2 = getelementptr inbounds i8, i8* %metric1.01023, i64 %334
  store i8 %333, i8* %arrayidx435.2, align 1, !tbaa !11
  %335 = load i8, i8* %arrayidx437.2, align 2, !tbaa !11
  %336 = or i64 %287, 21
  %arrayidx444.2 = getelementptr inbounds i8, i8* %metric1.01023, i64 %336
  store i8 %335, i8* %arrayidx444.2, align 1, !tbaa !11
  %337 = load i8, i8* %arrayidx429.3, align 1, !tbaa !11
  %338 = or i64 %287, 22
  %arrayidx435.3 = getelementptr inbounds i8, i8* %metric1.01023, i64 %338
  store i8 %337, i8* %arrayidx435.3, align 1, !tbaa !11
  %339 = load i8, i8* %arrayidx437.3, align 1, !tbaa !11
  %340 = or i64 %287, 23
  %arrayidx444.3 = getelementptr inbounds i8, i8* %metric1.01023, i64 %340
  store i8 %339, i8* %arrayidx444.3, align 1, !tbaa !11
  %341 = load i8, i8* %arrayidx429.4, align 4, !tbaa !11
  %342 = or i64 %287, 24
  %arrayidx435.4 = getelementptr inbounds i8, i8* %metric1.01023, i64 %342
  store i8 %341, i8* %arrayidx435.4, align 1, !tbaa !11
  %343 = load i8, i8* %arrayidx437.4, align 4, !tbaa !11
  %344 = or i64 %287, 25
  %arrayidx444.4 = getelementptr inbounds i8, i8* %metric1.01023, i64 %344
  store i8 %343, i8* %arrayidx444.4, align 1, !tbaa !11
  %345 = load i8, i8* %arrayidx429.5, align 1, !tbaa !11
  %346 = or i64 %287, 26
  %arrayidx435.5 = getelementptr inbounds i8, i8* %metric1.01023, i64 %346
  store i8 %345, i8* %arrayidx435.5, align 1, !tbaa !11
  %347 = load i8, i8* %arrayidx437.5, align 1, !tbaa !11
  %348 = or i64 %287, 27
  %arrayidx444.5 = getelementptr inbounds i8, i8* %metric1.01023, i64 %348
  store i8 %347, i8* %arrayidx444.5, align 1, !tbaa !11
  %349 = load i8, i8* %arrayidx429.6, align 2, !tbaa !11
  %350 = or i64 %287, 28
  %arrayidx435.6 = getelementptr inbounds i8, i8* %metric1.01023, i64 %350
  store i8 %349, i8* %arrayidx435.6, align 1, !tbaa !11
  %351 = load i8, i8* %arrayidx437.6, align 2, !tbaa !11
  %352 = or i64 %287, 29
  %arrayidx444.6 = getelementptr inbounds i8, i8* %metric1.01023, i64 %352
  store i8 %351, i8* %arrayidx444.6, align 1, !tbaa !11
  %353 = load i8, i8* %arrayidx429.7, align 1, !tbaa !11
  %354 = or i64 %287, 30
  %arrayidx435.7 = getelementptr inbounds i8, i8* %metric1.01023, i64 %354
  store i8 %353, i8* %arrayidx435.7, align 1, !tbaa !11
  %355 = load i8, i8* %arrayidx437.7, align 1, !tbaa !11
  %356 = or i64 %287, 31
  %arrayidx444.7 = getelementptr inbounds i8, i8* %metric1.01023, i64 %356
  store i8 %355, i8* %arrayidx444.7, align 1, !tbaa !11
  %357 = load <16 x i8>, <16 x i8>* %shift0, align 16, !tbaa !11
  %358 = and <16 x i8> %357, %271
  %359 = xor <16 x i8> %271, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %360 = load <16 x i8>, <16 x i8>* %shift1, align 16, !tbaa !11
  %361 = and <16 x i8> %360, %359
  %362 = or <16 x i8> %361, %358
  store <16 x i8> %362, <16 x i8>* %tmp1, align 16, !tbaa !11
  %363 = load i8, i8* %209, align 16, !tbaa !11
  %arrayidx490 = getelementptr inbounds i8, i8* %path1.01025, i64 %287
  store i8 %363, i8* %arrayidx490, align 1, !tbaa !11
  %364 = load i8, i8* %210, align 16, !tbaa !11
  %arrayidx498 = getelementptr inbounds i8, i8* %path1.01025, i64 %290
  store i8 %364, i8* %arrayidx498, align 1, !tbaa !11
  %365 = load i8, i8* %arrayidx417.1, align 1, !tbaa !11
  %arrayidx490.1 = getelementptr inbounds i8, i8* %path1.01025, i64 %292
  store i8 %365, i8* %arrayidx490.1, align 1, !tbaa !11
  %366 = load i8, i8* %arrayidx473.1, align 1, !tbaa !11
  %arrayidx498.1 = getelementptr inbounds i8, i8* %path1.01025, i64 %294
  store i8 %366, i8* %arrayidx498.1, align 1, !tbaa !11
  %367 = load i8, i8* %arrayidx417.2, align 2, !tbaa !11
  %arrayidx490.2 = getelementptr inbounds i8, i8* %path1.01025, i64 %296
  store i8 %367, i8* %arrayidx490.2, align 1, !tbaa !11
  %368 = load i8, i8* %arrayidx473.2, align 2, !tbaa !11
  %arrayidx498.2 = getelementptr inbounds i8, i8* %path1.01025, i64 %298
  store i8 %368, i8* %arrayidx498.2, align 1, !tbaa !11
  %369 = load i8, i8* %arrayidx417.3, align 1, !tbaa !11
  %arrayidx490.3 = getelementptr inbounds i8, i8* %path1.01025, i64 %300
  store i8 %369, i8* %arrayidx490.3, align 1, !tbaa !11
  %370 = load i8, i8* %arrayidx473.3, align 1, !tbaa !11
  %arrayidx498.3 = getelementptr inbounds i8, i8* %path1.01025, i64 %302
  store i8 %370, i8* %arrayidx498.3, align 1, !tbaa !11
  %371 = load i8, i8* %arrayidx417.4, align 4, !tbaa !11
  %arrayidx490.4 = getelementptr inbounds i8, i8* %path1.01025, i64 %304
  store i8 %371, i8* %arrayidx490.4, align 1, !tbaa !11
  %372 = load i8, i8* %arrayidx473.4, align 4, !tbaa !11
  %arrayidx498.4 = getelementptr inbounds i8, i8* %path1.01025, i64 %306
  store i8 %372, i8* %arrayidx498.4, align 1, !tbaa !11
  %373 = load i8, i8* %arrayidx417.5, align 1, !tbaa !11
  %arrayidx490.5 = getelementptr inbounds i8, i8* %path1.01025, i64 %308
  store i8 %373, i8* %arrayidx490.5, align 1, !tbaa !11
  %374 = load i8, i8* %arrayidx473.5, align 1, !tbaa !11
  %arrayidx498.5 = getelementptr inbounds i8, i8* %path1.01025, i64 %310
  store i8 %374, i8* %arrayidx498.5, align 1, !tbaa !11
  %375 = load i8, i8* %arrayidx417.6, align 2, !tbaa !11
  %arrayidx490.6 = getelementptr inbounds i8, i8* %path1.01025, i64 %312
  store i8 %375, i8* %arrayidx490.6, align 1, !tbaa !11
  %376 = load i8, i8* %arrayidx473.6, align 2, !tbaa !11
  %arrayidx498.6 = getelementptr inbounds i8, i8* %path1.01025, i64 %314
  store i8 %376, i8* %arrayidx498.6, align 1, !tbaa !11
  %377 = load i8, i8* %arrayidx417.7, align 1, !tbaa !11
  %arrayidx490.7 = getelementptr inbounds i8, i8* %path1.01025, i64 %316
  store i8 %377, i8* %arrayidx490.7, align 1, !tbaa !11
  %378 = load i8, i8* %arrayidx473.7, align 1, !tbaa !11
  %arrayidx498.7 = getelementptr inbounds i8, i8* %path1.01025, i64 %318
  store i8 %378, i8* %arrayidx498.7, align 1, !tbaa !11
  %379 = load i8, i8* %arrayidx511, align 8, !tbaa !11
  %arrayidx517 = getelementptr inbounds i8, i8* %path1.01025, i64 %325
  store i8 %379, i8* %arrayidx517, align 1, !tbaa !11
  %380 = load i8, i8* %arrayidx473.8, align 8, !tbaa !11
  %arrayidx526 = getelementptr inbounds i8, i8* %path1.01025, i64 %328
  store i8 %380, i8* %arrayidx526, align 1, !tbaa !11
  %381 = load i8, i8* %arrayidx417.9, align 1, !tbaa !11
  %arrayidx517.1 = getelementptr inbounds i8, i8* %path1.01025, i64 %330
  store i8 %381, i8* %arrayidx517.1, align 1, !tbaa !11
  %382 = load i8, i8* %arrayidx473.9, align 1, !tbaa !11
  %arrayidx526.1 = getelementptr inbounds i8, i8* %path1.01025, i64 %332
  store i8 %382, i8* %arrayidx526.1, align 1, !tbaa !11
  %383 = load i8, i8* %arrayidx417.10, align 2, !tbaa !11
  %arrayidx517.2 = getelementptr inbounds i8, i8* %path1.01025, i64 %334
  store i8 %383, i8* %arrayidx517.2, align 1, !tbaa !11
  %384 = load i8, i8* %arrayidx473.10, align 2, !tbaa !11
  %arrayidx526.2 = getelementptr inbounds i8, i8* %path1.01025, i64 %336
  store i8 %384, i8* %arrayidx526.2, align 1, !tbaa !11
  %385 = load i8, i8* %arrayidx417.11, align 1, !tbaa !11
  %arrayidx517.3 = getelementptr inbounds i8, i8* %path1.01025, i64 %338
  store i8 %385, i8* %arrayidx517.3, align 1, !tbaa !11
  %386 = load i8, i8* %arrayidx473.11, align 1, !tbaa !11
  %arrayidx526.3 = getelementptr inbounds i8, i8* %path1.01025, i64 %340
  store i8 %386, i8* %arrayidx526.3, align 1, !tbaa !11
  %387 = load i8, i8* %arrayidx417.12, align 4, !tbaa !11
  %arrayidx517.4 = getelementptr inbounds i8, i8* %path1.01025, i64 %342
  store i8 %387, i8* %arrayidx517.4, align 1, !tbaa !11
  %388 = load i8, i8* %arrayidx473.12, align 4, !tbaa !11
  %arrayidx526.4 = getelementptr inbounds i8, i8* %path1.01025, i64 %344
  store i8 %388, i8* %arrayidx526.4, align 1, !tbaa !11
  %389 = load i8, i8* %arrayidx417.13, align 1, !tbaa !11
  %arrayidx517.5 = getelementptr inbounds i8, i8* %path1.01025, i64 %346
  store i8 %389, i8* %arrayidx517.5, align 1, !tbaa !11
  %390 = load i8, i8* %arrayidx473.13, align 1, !tbaa !11
  %arrayidx526.5 = getelementptr inbounds i8, i8* %path1.01025, i64 %348
  store i8 %390, i8* %arrayidx526.5, align 1, !tbaa !11
  %391 = load i8, i8* %arrayidx417.14, align 2, !tbaa !11
  %arrayidx517.6 = getelementptr inbounds i8, i8* %path1.01025, i64 %350
  store i8 %391, i8* %arrayidx517.6, align 1, !tbaa !11
  %arrayidx526.6 = getelementptr inbounds i8, i8* %path1.01025, i64 %352
  %392 = extractelement <16 x i8> %362, i32 14
  store i8 %392, i8* %arrayidx526.6, align 1, !tbaa !11
  %393 = load i8, i8* %arrayidx417.15, align 1, !tbaa !11
  %arrayidx517.7 = getelementptr inbounds i8, i8* %path1.01025, i64 %354
  store i8 %393, i8* %arrayidx517.7, align 1, !tbaa !11
  %arrayidx526.7 = getelementptr inbounds i8, i8* %path1.01025, i64 %356
  %394 = extractelement <16 x i8> %362, i32 15
  store i8 %394, i8* %arrayidx526.7, align 1, !tbaa !11
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1
  %exitcond1139 = icmp eq i64 %indvars.iv.next1126, 2
  br i1 %exitcond1139, label %for.body540.preheader, label %for.body51

for.body540.preheader:                            ; preds = %for.body357.preheader
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym0v1058, i8 %224, i64 16, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym1v1059, i8 %225, i64 16, i32 16, i1 false)
  %inc553 = add nuw nsw i32 %s.01028, 1
  %exitcond1143 = icmp eq i32 %inc553, 2
  br i1 %exitcond1143, label %for.cond.cleanup45, label %for.body540.preheader.for.cond48.preheader_crit_edge

for.body540.preheader.for.cond48.preheader_crit_edge: ; preds = %for.body540.preheader
  %.pre = load i8, i8* %arrayidx542, align 1, !tbaa !11
  br label %for.cond48.preheader

if.then561:                                       ; preds = %for.cond.cleanup45
  %add568 = add nsw i32 %l_store_pos.01047, 1
  %rem569 = srem i32 %add568, %in_ntraceback
  %idxprom590 = sext i32 %rem569 to i64
  %scevgep1149 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* nonnull %0, i64 16, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1149, i8* nonnull %2, i64 16, i32 16, i1 false)
  %scevgep1149.1 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep.1, i8* %scevgep1148.1, i64 16, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1149.1, i8* %scevgep1150.1, i64 16, i32 16, i1 false)
  %scevgep1149.2 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep.2, i8* %scevgep1148.2, i64 16, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1149.2, i8* %scevgep1150.2, i64 16, i32 16, i1 false)
  %scevgep1149.3 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep.3, i8* %scevgep1148.3, i64 16, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1149.3, i8* %scevgep1150.3, i64 16, i32 16, i1 false)
  %395 = load i8, i8* %4, align 16, !tbaa !11
  %conv604 = zext i8 %395 to i32
  br label %for.body611

for.cond635.preheader:                            ; preds = %for.body611
  %idxprom6421037 = sext i32 %i566.1.beststate.0.2 to i64
  %arrayidx6431038 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 %idxprom6421037
  %396 = load i8, i8* %arrayidx6431038, align 1, !tbaa !11
  br i1 %cmp6371035, label %for.body639.preheader, label %for.cond656.preheader

for.body639.preheader:                            ; preds = %for.cond635.preheader
  br i1 %lcmp.mod, label %for.body639.prol.loopexit.unr-lcssa, label %for.body639.prol.preheader

for.body639.prol.preheader:                       ; preds = %for.body639.preheader
  br label %for.body639.prol

for.body639.prol:                                 ; preds = %for.body639.prol.preheader
  %conv644.prol = zext i8 %396 to i64
  %shr645989.prol = lshr i64 %conv644.prol, 2
  %add647.prol = add i32 %sub636, %rem569
  %rem648.prol = srem i32 %add647.prol, %in_ntraceback
  %idxprom640.prol = sext i32 %rem648.prol to i64
  %arrayidx643.prol = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom640.prol, i64 %shr645989.prol
  %397 = load i8, i8* %arrayidx643.prol, align 1, !tbaa !11
  br label %for.body639.prol.loopexit.unr-lcssa

for.body639.prol.loopexit.unr-lcssa:              ; preds = %for.body639.prol, %for.body639.preheader
  %.lcssa1298.unr.ph = phi i8 [ %397, %for.body639.prol ], [ undef, %for.body639.preheader ]
  %.unr.ph = phi i8 [ %397, %for.body639.prol ], [ %396, %for.body639.preheader ]
  %pos.01040.unr.ph = phi i32 [ %rem648.prol, %for.body639.prol ], [ %rem569, %for.body639.preheader ]
  %i566.21039.unr.ph = phi i32 [ 1, %for.body639.prol ], [ 0, %for.body639.preheader ]
  br label %for.body639.prol.loopexit

for.body639.prol.loopexit:                        ; preds = %for.body639.prol.loopexit.unr-lcssa
  br i1 %213, label %for.cond656.preheader.loopexit, label %for.body639.preheader.new

for.body639.preheader.new:                        ; preds = %for.body639.prol.loopexit
  br label %for.body639

for.body611:                                      ; preds = %for.body611, %if.then561
  %indvars.iv1155 = phi i64 [ 1, %if.then561 ], [ %indvars.iv.next1156.2, %for.body611 ]
  %beststate.01034 = phi i32 [ 0, %if.then561 ], [ %i566.1.beststate.0.2, %for.body611 ]
  %minmetric.01033 = phi i32 [ %conv604, %if.then561 ], [ %minmetric.1.2, %for.body611 ]
  %bestmetric.01032 = phi i32 [ %conv604, %if.then561 ], [ %conv614.bestmetric.0.2, %for.body611 ]
  %arrayidx613 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv1155
  %398 = load i8, i8* %arrayidx613, align 1, !tbaa !11
  %conv614 = zext i8 %398 to i32
  %cmp615 = icmp sgt i32 %conv614, %bestmetric.01032
  %conv614.bestmetric.0 = select i1 %cmp615, i32 %conv614, i32 %bestmetric.01032
  %399 = trunc i64 %indvars.iv1155 to i32
  %i566.1.beststate.0 = select i1 %cmp615, i32 %399, i32 %beststate.01034
  %cmp625 = icmp slt i32 %conv614, %minmetric.01033
  %minmetric.1 = select i1 %cmp625, i32 %conv614, i32 %minmetric.01033
  %indvars.iv.next1156 = add nuw nsw i64 %indvars.iv1155, 1
  %arrayidx613.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv.next1156
  %400 = load i8, i8* %arrayidx613.1, align 1, !tbaa !11
  %conv614.1 = zext i8 %400 to i32
  %cmp615.1 = icmp sgt i32 %conv614.1, %conv614.bestmetric.0
  %conv614.bestmetric.0.1 = select i1 %cmp615.1, i32 %conv614.1, i32 %conv614.bestmetric.0
  %401 = trunc i64 %indvars.iv.next1156 to i32
  %i566.1.beststate.0.1 = select i1 %cmp615.1, i32 %401, i32 %i566.1.beststate.0
  %cmp625.1 = icmp slt i32 %conv614.1, %minmetric.1
  %minmetric.1.1 = select i1 %cmp625.1, i32 %conv614.1, i32 %minmetric.1
  %indvars.iv.next1156.1 = add nsw i64 %indvars.iv1155, 2
  %arrayidx613.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv.next1156.1
  %402 = load i8, i8* %arrayidx613.2, align 1, !tbaa !11
  %conv614.2 = zext i8 %402 to i32
  %cmp615.2 = icmp sgt i32 %conv614.2, %conv614.bestmetric.0.1
  %conv614.bestmetric.0.2 = select i1 %cmp615.2, i32 %conv614.2, i32 %conv614.bestmetric.0.1
  %403 = trunc i64 %indvars.iv.next1156.1 to i32
  %i566.1.beststate.0.2 = select i1 %cmp615.2, i32 %403, i32 %i566.1.beststate.0.1
  %cmp625.2 = icmp slt i32 %conv614.2, %minmetric.1.1
  %minmetric.1.2 = select i1 %cmp625.2, i32 %conv614.2, i32 %minmetric.1.1
  %indvars.iv.next1156.2 = add nsw i64 %indvars.iv1155, 3
  %exitcond1157.2 = icmp eq i64 %indvars.iv.next1156.2, 64
  br i1 %exitcond1157.2, label %for.cond635.preheader, label %for.body611

for.cond656.preheader.loopexit.unr-lcssa:         ; preds = %for.body639
  br label %for.cond656.preheader.loopexit

for.cond656.preheader.loopexit:                   ; preds = %for.cond656.preheader.loopexit.unr-lcssa, %for.body639.prol.loopexit
  %.lcssa1298 = phi i8 [ %.lcssa1298.unr.ph, %for.body639.prol.loopexit ], [ %408, %for.cond656.preheader.loopexit.unr-lcssa ]
  br label %for.cond656.preheader

for.cond656.preheader:                            ; preds = %for.cond656.preheader.loopexit, %for.cond635.preheader
  %.lcssa = phi i8 [ %396, %for.cond635.preheader ], [ %.lcssa1298, %for.cond656.preheader.loopexit ]
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_path0_generic1168, i8 0, i64 64, i32 16, i1 false)
  %404 = insertelement <16 x i32> undef, i32 %minmetric.1.2, i32 0
  %405 = shufflevector <16 x i32> %404, <16 x i32> undef, <16 x i32> zeroinitializer
  br label %for.cond660.preheader

for.body639:                                      ; preds = %for.body639, %for.body639.preheader.new
  %406 = phi i8 [ %.unr.ph, %for.body639.preheader.new ], [ %408, %for.body639 ]
  %pos.01040 = phi i32 [ %pos.01040.unr.ph, %for.body639.preheader.new ], [ %rem648.1, %for.body639 ]
  %i566.21039 = phi i32 [ %i566.21039.unr.ph, %for.body639.preheader.new ], [ %inc650.1, %for.body639 ]
  %conv644 = zext i8 %406 to i64
  %shr645989 = lshr i64 %conv644, 2
  %add647 = add i32 %sub636, %pos.01040
  %rem648 = srem i32 %add647, %in_ntraceback
  %idxprom640 = sext i32 %rem648 to i64
  %arrayidx643 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom640, i64 %shr645989
  %407 = load i8, i8* %arrayidx643, align 1, !tbaa !11
  %conv644.1 = zext i8 %407 to i64
  %shr645989.1 = lshr i64 %conv644.1, 2
  %add647.1 = add i32 %sub636, %rem648
  %rem648.1 = srem i32 %add647.1, %in_ntraceback
  %inc650.1 = add nsw i32 %i566.21039, 2
  %idxprom640.1 = sext i32 %rem648.1 to i64
  %arrayidx643.1 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom640.1, i64 %shr645989.1
  %408 = load i8, i8* %arrayidx643.1, align 1, !tbaa !11
  %exitcond1158.1 = icmp eq i32 %inc650.1, %sub636
  br i1 %exitcond1158.1, label %for.cond656.preheader.loopexit.unr-lcssa, label %for.body639

for.cond660.preheader:                            ; preds = %for.cond656.preheader
  %409 = load <16 x i8>, <16 x i8>* %214, align 16, !tbaa !11
  %410 = zext <16 x i8> %409 to <16 x i32>
  %411 = sub nsw <16 x i32> %410, %405
  %412 = trunc <16 x i32> %411 to <16 x i8>
  store <16 x i8> %412, <16 x i8>* %215, align 16, !tbaa !11
  %413 = load <16 x i8>, <16 x i8>* %216, align 16, !tbaa !11
  %414 = zext <16 x i8> %413 to <16 x i32>
  %415 = sub nsw <16 x i32> %414, %405
  %416 = trunc <16 x i32> %415 to <16 x i8>
  store <16 x i8> %416, <16 x i8>* %217, align 16, !tbaa !11
  %417 = load <16 x i8>, <16 x i8>* %218, align 16, !tbaa !11
  %418 = zext <16 x i8> %417 to <16 x i32>
  %419 = sub nsw <16 x i32> %418, %405
  %420 = trunc <16 x i32> %419 to <16 x i8>
  store <16 x i8> %420, <16 x i8>* %219, align 16, !tbaa !11
  %421 = load <16 x i8>, <16 x i8>* %220, align 16, !tbaa !11
  %422 = zext <16 x i8> %421 to <16 x i32>
  %423 = sub nsw <16 x i32> %422, %405
  %424 = trunc <16 x i32> %423 to <16 x i8>
  store <16 x i8> %424, <16 x i8>* %221, align 16, !tbaa !11
  %cmp685 = icmp slt i32 %out_count.01049, %in_ntraceback
  br i1 %cmp685, label %if.end708, label %for.cond689.preheader

for.cond689.preheader:                            ; preds = %for.cond660.preheader
  %sub699 = sub nsw i32 %out_count.01049, %in_ntraceback
  %mul700 = shl i32 %sub699, 3
  %425 = sext i32 %mul700 to i64
  %shr696 = lshr i8 %.lcssa, 7
  %arrayidx703 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %425
  store i8 %shr696, i8* %arrayidx703, align 8, !tbaa !11
  %shr696.1 = lshr i8 %.lcssa, 6
  %conv698.1 = and i8 %shr696.1, 1
  %426 = or i64 %425, 1
  %arrayidx703.1 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %426
  store i8 %conv698.1, i8* %arrayidx703.1, align 1, !tbaa !11
  %shr696.2 = lshr i8 %.lcssa, 5
  %conv698.2 = and i8 %shr696.2, 1
  %427 = or i64 %425, 2
  %arrayidx703.2 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %427
  store i8 %conv698.2, i8* %arrayidx703.2, align 2, !tbaa !11
  %shr696.3 = lshr i8 %.lcssa, 4
  %conv698.3 = and i8 %shr696.3, 1
  %428 = or i64 %425, 3
  %arrayidx703.3 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %428
  store i8 %conv698.3, i8* %arrayidx703.3, align 1, !tbaa !11
  %shr696.4 = lshr i8 %.lcssa, 3
  %conv698.4 = and i8 %shr696.4, 1
  %429 = or i64 %425, 4
  %arrayidx703.4 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %429
  store i8 %conv698.4, i8* %arrayidx703.4, align 4, !tbaa !11
  %shr696.5 = lshr i8 %.lcssa, 2
  %conv698.5 = and i8 %shr696.5, 1
  %430 = or i64 %425, 5
  %arrayidx703.5 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %430
  store i8 %conv698.5, i8* %arrayidx703.5, align 1, !tbaa !11
  %shr696.6 = lshr i8 %.lcssa, 1
  %conv698.6 = and i8 %shr696.6, 1
  %431 = or i64 %425, 6
  %arrayidx703.6 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %431
  store i8 %conv698.6, i8* %arrayidx703.6, align 2, !tbaa !11
  %conv698.7 = and i8 %.lcssa, 1
  %432 = or i64 %425, 7
  %arrayidx703.7 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %432
  store i8 %conv698.7, i8* %arrayidx703.7, align 1, !tbaa !11
  %433 = add i32 %n_decoded.01048, 8
  br label %if.end708

if.end708:                                        ; preds = %for.cond689.preheader, %for.cond660.preheader
  %n_decoded.2 = phi i32 [ %n_decoded.01048, %for.cond660.preheader ], [ %433, %for.cond689.preheader ]
  %inc709 = add nsw i32 %out_count.01049, 1
  br label %if.end711

if.end711:                                        ; preds = %if.end708, %for.cond.cleanup45, %while.body
  %l_store_pos.1 = phi i32 [ %rem569, %if.end708 ], [ %l_store_pos.01047, %for.cond.cleanup45 ], [ %l_store_pos.01047, %while.body ]
  %n_decoded.3 = phi i32 [ %n_decoded.2, %if.end708 ], [ %n_decoded.01048, %for.cond.cleanup45 ], [ %n_decoded.01048, %while.body ]
  %out_count.1 = phi i32 [ %inc709, %if.end708 ], [ %out_count.01049, %for.cond.cleanup45 ], [ %out_count.01049, %while.body ]
  %inc712 = add nuw nsw i32 %in_count.01050, 1
  %cmp20 = icmp slt i32 %n_decoded.3, %in_n_data_bits
  br i1 %cmp20, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %if.end711
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %vector.body
  call void @llvm.lifetime.end(i64 1536, i8* nonnull %5) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %4) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %3) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %2) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %1) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %0) #3
  ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}

; Function Attrs: norecurse nounwind uwtable
define void @viterbi_chunks_init_generic() local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.1, %for.body ]
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %0 = shl i32 %indvars.iv.tr, 1
  %and = and i32 %0, 108
  %idxprom35 = zext i32 %and to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35
  %1 = load i8, i8* %arrayidx3, align 4, !tbaa !11
  %tobool = icmp ne i8 %1, 0
  %conv5 = zext i1 %tobool to i8
  %arrayidx7 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv
  store i8 %conv5, i8* %arrayidx7, align 2, !tbaa !11
  %and14 = and i32 %0, 76
  %idxprom1536 = zext i32 %and14 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536
  %2 = load i8, i8* %arrayidx16, align 4, !tbaa !11
  %tobool19 = icmp ne i8 %2, 0
  %conv21 = zext i1 %tobool19 to i8
  %arrayidx23 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv
  store i8 %conv21, i8* %arrayidx23, align 2, !tbaa !11
  %indvars.iv.next = or i64 %indvars.iv, 1
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %3 = shl i32 %indvars.iv.tr.1, 1
  %and.1 = and i32 %3, 108
  %idxprom35.1 = zext i32 %and.1 to i64
  %arrayidx3.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.1
  %4 = load i8, i8* %arrayidx3.1, align 4, !tbaa !11
  %tobool.1 = icmp ne i8 %4, 0
  %conv5.1 = zext i1 %tobool.1 to i8
  %arrayidx7.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next
  store i8 %conv5.1, i8* %arrayidx7.1, align 1, !tbaa !11
  %and14.1 = and i32 %3, 78
  %idxprom1536.1 = zext i32 %and14.1 to i64
  %arrayidx16.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.1
  %5 = load i8, i8* %arrayidx16.1, align 2, !tbaa !11
  %tobool19.1 = icmp ne i8 %5, 0
  %conv21.1 = zext i1 %tobool19.1 to i8
  %arrayidx23.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next
  store i8 %conv21.1, i8* %arrayidx23.1, align 1, !tbaa !11
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.1, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @reset() local_unnamed_addr #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.1, %for.body.i ]
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %0 = shl i32 %indvars.iv.tr.i, 1
  %and.i = and i32 %0, 108
  %idxprom35.i = zext i32 %and.i to i64
  %arrayidx3.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i
  %1 = load i8, i8* %arrayidx3.i, align 4, !tbaa !11
  %tobool.i = icmp ne i8 %1, 0
  %conv5.i = zext i1 %tobool.i to i8
  %arrayidx7.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.i
  store i8 %conv5.i, i8* %arrayidx7.i, align 2, !tbaa !11
  %and14.i = and i32 %0, 76
  %idxprom1536.i = zext i32 %and14.i to i64
  %arrayidx16.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i
  %2 = load i8, i8* %arrayidx16.i, align 4, !tbaa !11
  %tobool19.i = icmp ne i8 %2, 0
  %conv21.i = zext i1 %tobool19.i to i8
  %arrayidx23.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.i
  store i8 %conv21.i, i8* %arrayidx23.i, align 2, !tbaa !11
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %indvars.iv.tr.i.1 = trunc i64 %indvars.iv.next.i to i32
  %3 = shl i32 %indvars.iv.tr.i.1, 1
  %and.i.1 = and i32 %3, 108
  %idxprom35.i.1 = zext i32 %and.i.1 to i64
  %arrayidx3.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.1
  %4 = load i8, i8* %arrayidx3.i.1, align 4, !tbaa !11
  %tobool.i.1 = icmp ne i8 %4, 0
  %conv5.i.1 = zext i1 %tobool.i.1 to i8
  %arrayidx7.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next.i
  store i8 %conv5.i.1, i8* %arrayidx7.i.1, align 1, !tbaa !11
  %and14.i.1 = and i32 %3, 78
  %idxprom1536.i.1 = zext i32 %and14.i.1 to i64
  %arrayidx16.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.1
  %5 = load i8, i8* %arrayidx16.i.1, align 2, !tbaa !11
  %tobool19.i.1 = icmp ne i8 %5, 0
  %conv21.i.1 = zext i1 %tobool19.i.1 to i8
  %arrayidx23.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next.i
  store i8 %conv21.i.1, i8* %arrayidx23.i.1, align 1, !tbaa !11
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %exitcond.i.1 = icmp eq i64 %indvars.iv.next.i.1, 32
  br i1 %exitcond.i.1, label %viterbi_chunks_init_generic.exit, label %for.body.i

viterbi_chunks_init_generic.exit:                 ; preds = %for.body.i
  %6 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !1
  %encoding = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %6, i64 0, i32 0
  %7 = load i32, i32* %encoding, align 4, !tbaa !12
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %viterbi_chunks_init_generic.exit
  %9 = sext i32 %7 to i64
  %switch.gep = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table, i64 0, i64 %9
  %switch.load = load i32, i32* %switch.gep, align 4
  %switch.gep5 = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.1, i64 0, i64 %9
  %10 = bitcast i8** %switch.gep5 to i64*
  %switch.load69 = load i64, i64* %10, align 8
  %switch.gep7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.2, i64 0, i64 %9
  %switch.load8 = load i32, i32* %switch.gep7, align 4
  store i32 %switch.load, i32* @d_ntraceback, align 4, !tbaa !8
  store i64 %switch.load69, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !1
  store i32 %switch.load8, i32* @d_k, align 4, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %viterbi_chunks_init_generic.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @decode(%struct.ofdm_param* %ofdm, %struct.frame_param* %frame, i8* readonly %in, i32* nocapture %n_dec_char) local_unnamed_addr #2 {
entry:
  store %struct.ofdm_param* %ofdm, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !1
  store %struct.frame_param* %frame, %struct.frame_param** @d_frame, align 8, !tbaa !1
  store i32 0, i32* %n_dec_char, align 4, !tbaa !8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %indvars.iv.i.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.i.1, %for.body.i.i ]
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %0 = shl i32 %indvars.iv.tr.i.i, 1
  %and.i.i = and i32 %0, 108
  %idxprom35.i.i = zext i32 %and.i.i to i64
  %arrayidx3.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.i
  %1 = load i8, i8* %arrayidx3.i.i, align 4, !tbaa !11
  %tobool.i.i = icmp ne i8 %1, 0
  %conv5.i.i = zext i1 %tobool.i.i to i8
  %arrayidx7.i.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.i.i
  store i8 %conv5.i.i, i8* %arrayidx7.i.i, align 2, !tbaa !11
  %and14.i.i = and i32 %0, 76
  %idxprom1536.i.i = zext i32 %and14.i.i to i64
  %arrayidx16.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.i
  %2 = load i8, i8* %arrayidx16.i.i, align 4, !tbaa !11
  %tobool19.i.i = icmp ne i8 %2, 0
  %conv21.i.i = zext i1 %tobool19.i.i to i8
  %arrayidx23.i.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.i.i
  store i8 %conv21.i.i, i8* %arrayidx23.i.i, align 2, !tbaa !11
  %indvars.iv.next.i.i = or i64 %indvars.iv.i.i, 1
  %indvars.iv.tr.i.i.1 = trunc i64 %indvars.iv.next.i.i to i32
  %3 = shl i32 %indvars.iv.tr.i.i.1, 1
  %and.i.i.1 = and i32 %3, 108
  %idxprom35.i.i.1 = zext i32 %and.i.i.1 to i64
  %arrayidx3.i.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.i.1
  %4 = load i8, i8* %arrayidx3.i.i.1, align 4, !tbaa !11
  %tobool.i.i.1 = icmp ne i8 %4, 0
  %conv5.i.i.1 = zext i1 %tobool.i.i.1 to i8
  %arrayidx7.i.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next.i.i
  store i8 %conv5.i.i.1, i8* %arrayidx7.i.i.1, align 1, !tbaa !11
  %and14.i.i.1 = and i32 %3, 78
  %idxprom1536.i.i.1 = zext i32 %and14.i.i.1 to i64
  %arrayidx16.i.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.i.1
  %5 = load i8, i8* %arrayidx16.i.i.1, align 2, !tbaa !11
  %tobool19.i.i.1 = icmp ne i8 %5, 0
  %conv21.i.i.1 = zext i1 %tobool19.i.i.1 to i8
  %arrayidx23.i.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next.i.i
  store i8 %conv21.i.i.1, i8* %arrayidx23.i.i.1, align 1, !tbaa !11
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, 2
  %exitcond.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 32
  br i1 %exitcond.i.i.1, label %viterbi_chunks_init_generic.exit.i, label %for.body.i.i

viterbi_chunks_init_generic.exit.i:               ; preds = %for.body.i.i
  %encoding.i = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %ofdm, i64 0, i32 0
  %6 = load i32, i32* %encoding.i, align 4, !tbaa !12
  %7 = icmp ult i32 %6, 8
  br i1 %7, label %switch.lookup.i, label %reset.exit

switch.lookup.i:                                  ; preds = %viterbi_chunks_init_generic.exit.i
  %8 = sext i32 %6 to i64
  %switch.gep.i = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table, i64 0, i64 %8
  %switch.load.i = load i32, i32* %switch.gep.i, align 4
  %switch.gep5.i = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.1, i64 0, i64 %8
  %9 = bitcast i8** %switch.gep5.i to i64*
  %switch.load69.i = load i64, i64* %9, align 8
  %switch.gep7.i = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.2, i64 0, i64 %8
  %switch.load8.i = load i32, i32* %switch.gep7.i, align 4
  store i32 %switch.load.i, i32* @d_ntraceback, align 4, !tbaa !8
  store i64 %switch.load69.i, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !1
  store i32 %switch.load8.i, i32* @d_k, align 4, !tbaa !8
  br label %reset.exit

reset.exit:                                       ; preds = %switch.lookup.i, %viterbi_chunks_init_generic.exit.i
  %call = tail call i8* @depuncture(i8* %in)
  %10 = load i32, i32* @d_ntraceback, align 4, !tbaa !8
  %n_data_bits = getelementptr inbounds %struct.frame_param, %struct.frame_param* %frame, i64 0, i32 4
  %11 = load i32, i32* %n_data_bits, align 4, !tbaa !13
  %call1 = tail call i8* @do_decoding(i32 undef, i32 %10, i8* undef, i32 %11, i8* %call)
  ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 12}
!6 = !{!"", !3, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!7 = !{!"int", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!10, !7, i64 4}
!10 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!11 = !{!3, !3, i64 0}
!12 = !{!6, !3, i64 0}
!13 = !{!10, !7, i64 16}
