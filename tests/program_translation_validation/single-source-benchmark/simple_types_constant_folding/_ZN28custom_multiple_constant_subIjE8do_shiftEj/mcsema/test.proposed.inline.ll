; ModuleID = 'mcsema/test.proposed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400388__init_type = type <{ [23 x i8] }>
%seg_4003a0__text_type = type <{ [354 x i8] }>
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
%seg_601018__data_type = type <{ [16 x i8] }>
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
%struct.Memory = type opaque

@switch.table = private unnamed_addr constant [4 x i32] [i32 2048, i32 3072, i32 0, i32 1024]
@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %union.anon, align 1
@gCR1 = external global %union.anon, align 1
@gCR2 = external global %union.anon, align 1
@gCR3 = external global %union.anon, align 1
@gCR4 = external global %union.anon, align 1
@gCR8 = external global %union.anon, align 1
@seg_400388__init = internal constant %seg_400388__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05e\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4003a0__text = internal constant %seg_4003a0__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\00\05@\00H\C7\C1\90\04@\00H\C7\C7\88\04@\00\FF\15&\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\D1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\BF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\9E\09 \00UH\8D-\9E\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\C7\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare i32 @__remill_fpu_exception_test_and_clear(i32, i32)

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.cttz.i32(i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ctlz.i32(i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind readnone
declare double @llvm.nearbyint.f64(double) #1

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.nearbyint.v4f64(<4 x double>) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #1

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.trunc.v4f64(<4 x double>) #1

; Function Attrs: nounwind readnone
declare float @llvm.nearbyint.f32(float) #1

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #1

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: alwaysinline
define %struct.Memory* @_ZN28custom_multiple_constant_subIjE8do_shiftEj(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_412650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC.i = bitcast %union.anon* %6 to i64*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP.i
  %11 = load i64, i64* %PC.i
  %12 = add i64 %11, 1
  store i64 %12, i64* %PC.i
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64 %10, i64* %16
  store i64 %15, i64* %13, align 8
  store %struct.Memory* %loadMem_412650, %struct.Memory** %MEMORY
  %loadMem_412651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i18
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i18
  store i64 %26, i64* %RBP.i19, align 8
  store %struct.Memory* %loadMem_412651, %struct.Memory** %MEMORY
  %loadMem_412654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i16 = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i17
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %EDI.i16
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i15
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i15
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_412654, %struct.Memory** %MEMORY
  %loadMem_412657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 11
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RDI.i13 = bitcast %union.anon* %50 to i64*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i14
  %55 = sub i64 %54, 4
  %56 = load i64, i64* %PC.i12
  %57 = add i64 %56, 3
  store i64 %57, i64* %PC.i12
  %58 = inttoptr i64 %55 to i32*
  %59 = load i32, i32* %58
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RDI.i13, align 8
  store %struct.Memory* %loadMem_412657, %struct.Memory** %MEMORY
  %loadMem_41265a = load %struct.Memory*, %struct.Memory** %MEMORY
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 33
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %63 to i64*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 11
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %RDI.i11 = bitcast %union.anon* %66 to i64*
  %67 = load i64, i64* %RDI.i11
  %68 = load i64, i64* %PC.i10
  %69 = add i64 %68, 3
  store i64 %69, i64* %PC.i10
  %70 = trunc i64 %67 to i32
  %71 = sub i32 %70, 1
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %RDI.i11, align 8
  %73 = icmp ult i32 %70, 1
  %74 = zext i1 %73 to i8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %74, i8* %75, align 1
  %76 = and i32 %71, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %80, i8* %81, align 1
  %82 = xor i64 1, %67
  %83 = trunc i64 %82 to i32
  %84 = xor i32 %83, %71
  %85 = lshr i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %87, i8* %88, align 1
  %89 = icmp eq i32 %71, 0
  %90 = zext i1 %89 to i8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %90, i8* %91, align 1
  %92 = lshr i32 %71, 31
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %93, i8* %94, align 1
  %95 = lshr i32 %70, 31
  %96 = xor i32 %92, %95
  %97 = add i32 %96, %95
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %99, i8* %100, align 1
  store %struct.Memory* %loadMem_41265a, %struct.Memory** %MEMORY
  %loadMem_41265d = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 11
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RDI.i9 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RDI.i9
  %108 = load i64, i64* %PC.i8
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC.i8
  %110 = trunc i64 %107 to i32
  %111 = sub i32 %110, 2
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RDI.i9, align 8
  %113 = icmp ult i32 %110, 2
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %114, i8* %115, align 1
  %116 = and i32 %111, 255
  %117 = call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %120, i8* %121, align 1
  %122 = xor i64 2, %107
  %123 = trunc i64 %122 to i32
  %124 = xor i32 %123, %111
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %127, i8* %128, align 1
  %129 = icmp eq i32 %111, 0
  %130 = zext i1 %129 to i8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %130, i8* %131, align 1
  %132 = lshr i32 %111, 31
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %133, i8* %134, align 1
  %135 = lshr i32 %110, 31
  %136 = xor i32 %132, %135
  %137 = add i32 %136, %135
  %138 = icmp eq i32 %137, 2
  %139 = zext i1 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %139, i8* %140, align 1
  store %struct.Memory* %loadMem_41265d, %struct.Memory** %MEMORY
  %loadMem_412660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 11
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RDI.i7 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RDI.i7
  %148 = load i64, i64* %PC.i6
  %149 = add i64 %148, 3
  store i64 %149, i64* %PC.i6
  %150 = trunc i64 %147 to i32
  %151 = sub i32 %150, 3
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RDI.i7, align 8
  %153 = icmp ult i32 %150, 3
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %154, i8* %155, align 1
  %156 = and i32 %151, 255
  %157 = call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %160, i8* %161, align 1
  %162 = xor i64 3, %147
  %163 = trunc i64 %162 to i32
  %164 = xor i32 %163, %151
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %167, i8* %168, align 1
  %169 = icmp eq i32 %151, 0
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %170, i8* %171, align 1
  %172 = lshr i32 %151, 31
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %173, i8* %174, align 1
  %175 = lshr i32 %150, 31
  %176 = xor i32 %172, %175
  %177 = add i32 %176, %175
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %179, i8* %180, align 1
  store %struct.Memory* %loadMem_412660, %struct.Memory** %MEMORY
  %loadMem_412663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 11
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %186 to i64*
  %187 = load i64, i64* %RDI.i
  %188 = load i64, i64* %PC.i5
  %189 = add i64 %188, 3
  store i64 %189, i64* %PC.i5
  %190 = trunc i64 %187 to i32
  %191 = sub i32 %190, 4
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RDI.i, align 8
  %193 = icmp ult i32 %190, 4
  %194 = zext i1 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %194, i8* %195, align 1
  %196 = and i32 %191, 255
  %197 = call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %200, i8* %201, align 1
  %202 = xor i64 4, %187
  %203 = trunc i64 %202 to i32
  %204 = xor i32 %203, %191
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %207, i8* %208, align 1
  %209 = icmp eq i32 %191, 0
  %210 = zext i1 %209 to i8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %210, i8* %211, align 1
  %212 = lshr i32 %191, 31
  %213 = trunc i32 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %213, i8* %214, align 1
  %215 = lshr i32 %190, 31
  %216 = xor i32 %212, %215
  %217 = add i32 %216, %215
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %219, i8* %220, align 1
  store %struct.Memory* %loadMem_412663, %struct.Memory** %MEMORY
  %loadMem_412666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 11
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %226 to i32*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %229 to i64*
  %230 = load i32, i32* %EDI.i
  %231 = zext i32 %230 to i64
  %232 = load i64, i64* %PC.i4
  %233 = add i64 %232, 2
  store i64 %233, i64* %PC.i4
  %234 = and i64 %231, 4294967295
  store i64 %234, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_412666, %struct.Memory** %MEMORY
  %loadMem_412668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 15
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %240 to i64*
  %241 = load i64, i64* %PC.i2
  %242 = add i64 %241, 1
  store i64 %242, i64* %PC.i2
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %244, 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246
  store i64 %247, i64* %RBP.i3, align 8
  store i64 %245, i64* %243, align 8
  store %struct.Memory* %loadMem_412668, %struct.Memory** %MEMORY
  %loadMem_412669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %PC.i1
  %252 = add i64 %251, 1
  store i64 %252, i64* %PC.i1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = inttoptr i64 %255 to i64*
  %257 = load i64, i64* %256
  store i64 %257, i64* %253, align 8
  %258 = add i64 %255, 8
  store i64 %258, i64* %254, align 8
  store %struct.Memory* %loadMem_412669, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_412669
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RBP, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = icmp ult i32 %12, 1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 1, %9
  %25 = trunc i64 %24 to i32
  %26 = xor i32 %25, %13
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %13, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %13, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x2___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = icmp ult i32 %12, 2
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 2, %9
  %25 = trunc i64 %24 to i32
  %26 = xor i32 %25, %13
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %13, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %13, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x3___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 3
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = icmp ult i32 %12, 3
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 3, %9
  %25 = trunc i64 %24 to i32
  %26 = xor i32 %25, %13
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %13, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %13, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x4___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 4
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = icmp ult i32 %12, 4
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 4, %9
  %25 = trunc i64 %24 to i32
  %26 = xor i32 %25, %13
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %13, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %13, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBP, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8
  ret %struct.Memory* %2
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline }
