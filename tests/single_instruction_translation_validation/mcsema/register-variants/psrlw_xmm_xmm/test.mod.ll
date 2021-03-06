; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"
%union.anon = type { i64 }
%seg_4f8__init_type = type <{ [23 x i8] }>
%seg_510__plt_type = type <{ [16 x i8] }>
%seg_520__plt_got_type = type <{ [8 x i8] }>
%seg_530__text_type = type <{ [434 x i8] }>
%seg_6e4__fini_type = type <{ [9 x i8] }>
%seg_6f0__rodata_type = type <{ [4 x i8] }>
%seg_6f4__eh_frame_hdr_type = type <{ [60 x i8] }>
%seg_730__eh_frame_type = type <{ [256 x i8] }>
%seg_200de0__init_array_type = type <{ i64, i64 }>
%seg_200df0__jcr_type = type <{ [8 x i8] }>
%seg_201000__data_type = type <{ [8 x i8], i64 }>
%__bss_start_type = type <{ [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type { i64 }
%struct.uint8v32_t = type { [32 x i8] }
%struct.anon.2 = type { i8, i8 }
%struct.int32v8_t = type { [8 x i32] }
%struct.float32v8_t = type { [8 x float] }
%struct.uint8v8_t = type { [8 x i8] }
%struct.uint8v16_t = type { [16 x i8] }
%struct.uint16v8_t = type { [8 x i16] }
%struct.uint8v4_t = type { [4 x i8] }
%struct.int16v4_t = type { [4 x i16] }
%struct.int32v4_t = type { [4 x i32] }
%struct.uint64v2_t = type { [2 x i64] }
%struct.uint64v4_t = type { [4 x i64] }
%struct.uint128v2_t = type { [2 x i128] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.float64v4_t = type { [4 x double] }
%"class.(anonymous namespace)__BitMatrix" = type { %"class.std__bitset", [16 x [16 x i8]] }
%"class.std__bitset" = type { %struct.uint64v4_t }
%struct.bcd80_t = type { [9 x %union.FPUAbridgedTagWord], %union.FPUAbridgedTagWord }
%struct.FpuFSAVE = type { %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, [8 x %struct.FPUStackElem] }
%struct.anon.5 = type { i32, i32 }

define i32 @my.ctpop.i32(i32 %x) {
entry:
  %and = and i32 %x, 1
  %shr123 = lshr i32 %x, 1
  %and1 = and i32 %shr123, 1
  %shr2124 = lshr i32 %x, 2
  %and3 = and i32 %shr2124, 1
  %shr5125 = lshr i32 %x, 3
  %and6 = and i32 %shr5125, 1
  %shr8126 = lshr i32 %x, 4
  %and9 = and i32 %shr8126, 1
  %shr11127 = lshr i32 %x, 5
  %and12 = and i32 %shr11127, 1
  %shr14128 = lshr i32 %x, 6
  %and15 = and i32 %shr14128, 1
  %shr17129 = lshr i32 %x, 7
  %and18 = and i32 %shr17129, 1
  %shr20130 = lshr i32 %x, 8
  %and21 = and i32 %shr20130, 1
  %shr23131 = lshr i32 %x, 9
  %and24 = and i32 %shr23131, 1
  %shr26132 = lshr i32 %x, 10
  %and27 = and i32 %shr26132, 1
  %shr29133 = lshr i32 %x, 11
  %and30 = and i32 %shr29133, 1
  %shr32134 = lshr i32 %x, 12
  %and33 = and i32 %shr32134, 1
  %shr35135 = lshr i32 %x, 13
  %and36 = and i32 %shr35135, 1
  %shr38136 = lshr i32 %x, 14
  %and39 = and i32 %shr38136, 1
  %shr41137 = lshr i32 %x, 15
  %and42 = and i32 %shr41137, 1
  %shr44138 = lshr i32 %x, 16
  %and45 = and i32 %shr44138, 1
  %shr47139 = lshr i32 %x, 17
  %and48 = and i32 %shr47139, 1
  %shr50140 = lshr i32 %x, 18
  %and51 = and i32 %shr50140, 1
  %shr53141 = lshr i32 %x, 19
  %and54 = and i32 %shr53141, 1
  %shr56142 = lshr i32 %x, 20
  %and57 = and i32 %shr56142, 1
  %shr59143 = lshr i32 %x, 21
  %and60 = and i32 %shr59143, 1
  %shr62144 = lshr i32 %x, 22
  %and63 = and i32 %shr62144, 1
  %shr65145 = lshr i32 %x, 23
  %and66 = and i32 %shr65145, 1
  %shr68146 = lshr i32 %x, 24
  %and69 = and i32 %shr68146, 1
  %shr71147 = lshr i32 %x, 25
  %and72 = and i32 %shr71147, 1
  %shr74148 = lshr i32 %x, 26
  %and75 = and i32 %shr74148, 1
  %shr77149 = lshr i32 %x, 27
  %and78 = and i32 %shr77149, 1
  %shr80150 = lshr i32 %x, 28
  %and81 = and i32 %shr80150, 1
  %shr83151 = lshr i32 %x, 29
  %and84 = and i32 %shr83151, 1
  %shr86152 = lshr i32 %x, 30
  %and87 = and i32 %shr86152, 1
  %shr89153 = lshr i32 %x, 31
  %add = add i32 %shr89153, %and
  %add4 = add i32 %add, %and1
  %add7 = add i32 %add4, %and3
  %add10 = add i32 %add7, %and6
  %add13 = add i32 %add10, %and9
  %add16 = add i32 %add13, %and12
  %add19 = add i32 %add16, %and15
  %add22 = add i32 %add19, %and18
  %add25 = add i32 %add22, %and21
  %add28 = add i32 %add25, %and24
  %add31 = add i32 %add28, %and27
  %add34 = add i32 %add31, %and30
  %add37 = add i32 %add34, %and33
  %add40 = add i32 %add37, %and36
  %add43 = add i32 %add40, %and39
  %add46 = add i32 %add43, %and42
  %add49 = add i32 %add46, %and45
  %add52 = add i32 %add49, %and48
  %add55 = add i32 %add52, %and51
  %add58 = add i32 %add55, %and54
  %add61 = add i32 %add58, %and57
  %add64 = add i32 %add61, %and60
  %add67 = add i32 %add64, %and63
  %add70 = add i32 %add67, %and66
  %add73 = add i32 %add70, %and69
  %add76 = add i32 %add73, %and72
  %add79 = add i32 %add76, %and75
  %add82 = add i32 %add79, %and78
  %add85 = add i32 %add82, %and81
  %add88 = add i32 %add85, %and84
  %add91 = add i32 %add88, %and87
  ret i32 %add91
}

define %struct.Memory* @__remill_atomic_begin(%struct.Memory*) {
  ret %struct.Memory* %0
}

define %struct.Memory* @__remill_atomic_end(%struct.Memory*) {
  ret %struct.Memory* %0
}


define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7PSRLW_VI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = alloca <2 x i64>, align 16
  %7 = bitcast <2 x i64>* %6 to { i64, i64 }*
  %8 = alloca { i64, i64 }, align 8
  %9 = bitcast { i64, i64 }* %8 to %struct.uint16v8_t*
  %10 = bitcast { i64, i64 }* %8 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %10) #22
  %11 = bitcast i8* %3 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %3, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 0
  store i64 %12, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = bitcast i8* %4 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = icmp ugt i64 %19, 15
  %21 = and i64 %19, 65535
  %22 = bitcast <2 x i64>* %6 to i8*
  %23 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %25 = bitcast <2 x i64>* %6 to [8 x i16]*
  br i1 %20, label %76, label %26

; <label>:26:                                     ; preds = %5
  %27 = lshr i64 %12, 48
  %28 = lshr i64 %12, 32
  %29 = lshr i64 %12, 16
  %30 = and i64 %12, 65535
  %31 = lshr i64 %30, %21
  %32 = trunc i64 %31 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %33 = bitcast <2 x i64>* %6 to i16*
  store i16 %32, i16* %33, align 16
  %34 = load i64, i64* %23, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  %35 = and i64 %29, 65535
  %36 = lshr i64 %35, %21
  %37 = trunc i64 %36 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %34, i64* %23, align 16
  store i64 0, i64* %24, align 8
  %38 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 1
  store i16 %37, i16* %38, align 2
  %39 = load i64, i64* %23, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  %40 = and i64 %28, 65535
  %41 = lshr i64 %40, %21
  %42 = trunc i64 %41 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %39, i64* %23, align 16
  store i64 0, i64* %24, align 8
  %43 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 2
  store i16 %42, i16* %43, align 4
  %44 = load i64, i64* %23, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  %45 = lshr i64 %27, %21
  %46 = trunc i64 %45 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %44, i64* %23, align 16
  store i64 0, i64* %24, align 8
  %47 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 3
  store i16 %46, i16* %47, align 2
  %48 = load i64, i64* %23, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  %49 = and i64 %15, 65535
  %50 = lshr i64 %49, %21
  %51 = trunc i64 %50 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %48, i64* %23, align 16
  store i64 0, i64* %24, align 8
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %53 = bitcast i64* %52 to i16*
  store i16 %51, i16* %53, align 8
  %54 = load i64, i64* %24, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  %55 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %9, i64 0, i32 0, i64 5
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i64
  %58 = lshr i64 %57, %21
  %59 = trunc i64 %58 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %48, i64* %23, align 16
  store i64 %54, i64* %24, align 8
  %60 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 5
  store i16 %59, i16* %60, align 2
  %61 = load i64, i64* %24, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  %62 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %9, i64 0, i32 0, i64 6
  %63 = load i16, i16* %62, align 4
  %64 = zext i16 %63 to i64
  %65 = lshr i64 %64, %21
  %66 = trunc i64 %65 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %48, i64* %23, align 16
  store i64 %61, i64* %24, align 8
  %67 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 6
  store i16 %66, i16* %67, align 4
  %68 = load i64, i64* %24, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  %69 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %9, i64 0, i32 0, i64 7
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i64
  %72 = lshr i64 %71, %21
  %73 = trunc i64 %72 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %48, i64* %23, align 16
  store i64 %68, i64* %24, align 8
  %74 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 7
  store i16 %73, i16* %74, align 2
  %75 = load i64, i64* %24, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  br label %94

; <label>:76:                                     ; preds = %5
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %77 = bitcast <2 x i64>* %6 to i16*
  store i16 0, i16* %77, align 16
  %78 = load i64, i64* %23, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %78, i64* %23, align 16
  store i64 0, i64* %24, align 8
  %79 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 1
  store i16 0, i16* %79, align 2
  %80 = load i64, i64* %23, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %80, i64* %23, align 16
  store i64 0, i64* %24, align 8
  %81 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 2
  store i16 0, i16* %81, align 4
  %82 = load i64, i64* %23, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %82, i64* %23, align 16
  store i64 0, i64* %24, align 8
  %83 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 3
  store i16 0, i16* %83, align 2
  %84 = load i64, i64* %23, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %84, i64* %23, align 16
  store i64 0, i64* %24, align 8
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %86 = bitcast i64* %85 to i16*
  store i16 0, i16* %86, align 8
  %87 = load i64, i64* %24, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %84, i64* %23, align 16
  store i64 %87, i64* %24, align 8
  %88 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 5
  store i16 0, i16* %88, align 2
  %89 = load i64, i64* %24, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %84, i64* %23, align 16
  store i64 %89, i64* %24, align 8
  %90 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 6
  store i16 0, i16* %90, align 4
  %91 = load i64, i64* %24, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  call void @my.lifetime.start(i64 16, i8* nonnull %22)
  store i64 %84, i64* %23, align 16
  store i64 %91, i64* %24, align 8
  %92 = getelementptr inbounds [8 x i16], [8 x i16]* %25, i64 0, i64 7
  store i16 0, i16* %92, align 2
  %93 = load i64, i64* %24, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %22)
  br label %94

; <label>:94:                                     ; preds = %76, %26
  %95 = phi i64 [ %84, %76 ], [ %48, %26 ]
  %96 = phi i64 [ %93, %76 ], [ %75, %26 ]
  %97 = lshr i64 %95, 16
  %98 = lshr i64 %95, 32
  %99 = lshr i64 %95, 48
  %100 = trunc i64 %95 to i16
  %101 = trunc i64 %97 to i16
  %102 = trunc i64 %98 to i16
  %103 = trunc i64 %99 to i16
  %104 = bitcast i8* %2 to i16*
  store i16 %100, i16* %104, align 1
  %105 = getelementptr inbounds i8, i8* %2, i64 2
  %106 = bitcast i8* %105 to i16*
  store i16 %101, i16* %106, align 1
  %107 = getelementptr inbounds i8, i8* %2, i64 4
  %108 = bitcast i8* %107 to i16*
  store i16 %102, i16* %108, align 1
  %109 = getelementptr inbounds i8, i8* %2, i64 6
  %110 = bitcast i8* %109 to i16*
  store i16 %103, i16* %110, align 1
  %111 = trunc i64 %96 to i16
  %112 = getelementptr inbounds i8, i8* %2, i64 8
  %113 = bitcast i8* %112 to i16*
  store i16 %111, i16* %113, align 1
  %114 = lshr i64 %96, 16
  %115 = trunc i64 %114 to i16
  %116 = getelementptr inbounds i8, i8* %2, i64 10
  %117 = bitcast i8* %116 to i16*
  store i16 %115, i16* %117, align 1
  %118 = lshr i64 %96, 32
  %119 = trunc i64 %118 to i16
  %120 = getelementptr inbounds i8, i8* %2, i64 12
  %121 = bitcast i8* %120 to i16*
  store i16 %119, i16* %121, align 1
  %122 = lshr i64 %96, 48
  %123 = trunc i64 %122 to i16
  %124 = getelementptr inbounds i8, i8* %2, i64 14
  %125 = bitcast i8* %124 to i16*
  store i16 %123, i16* %125, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %10) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_psrlw_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std__bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std__bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std__bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7PSRLW_VI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define i32 @main() {
entry:
  %state = alloca %struct.State

  %mem = alloca %struct.Memory
  %memf0 = getelementptr inbounds %struct.Memory, %struct.Memory* %mem, i32 0, i32 0
  store i64 51, i64* %memf0, align 8
  
  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0
  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0
  %addr3 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 5, i32 0, i32 0
  %addr4 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 7, i32 0, i32 0
  %addr5 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 9, i32 0, i32 0
  %addr6 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 11, i32 0, i32 0
  %addr7 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 13, i32 0, i32 0
  %addr8 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 15, i32 0, i32 0
  %addr9 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 33, i32 0, i32 0

  %cf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 1
  %pf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 3
  %af = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 5
  %zf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 7
  %sf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 9
  %df = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 11
  %of = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 13

  store i64 100, i64* %addr1, align 8
  store i64 200, i64* %addr2, align 8
  store i64 300, i64* %addr3, align 8
  store i64 400, i64* %addr4, align 8
  store i64 500, i64* %addr5, align 8
  store i64 600, i64* %addr6, align 8
  store i64 700, i64* %addr7, align 8
  store i64 800, i64* %addr8, align 8
  store i64 900, i64* %addr9, align 8

  store i8 10, i8* %cf, align 1
  store i8 20, i8* %pf, align 1
  store i8 30, i8* %af, align 1
  store i8 40, i8* %zf, align 1
  store i8 50, i8* %sf, align 1
  store i8 60, i8* %df, align 1
  store i8 70, i8* %of, align 1

  %call = call %struct.Memory* @routine_psrlw_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}