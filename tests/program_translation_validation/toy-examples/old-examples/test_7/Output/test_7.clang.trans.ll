; ModuleID = 'Output/test_7.clang.trans.bc'
source_filename = "Output/test_7.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl callback_sub_0;"
module asm "  .type callback_sub_0,@function"
module asm "callback_sub_0:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size callback_sub_0,0b-callback_sub_0;"
module asm "  .cfi_endproc;"
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
module asm "  .cfi_endproc;"
module asm "  .globl printf;"
module asm "  .globl _printf;"
module asm "  .type _printf,@function"
module asm "_printf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq printf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _printf,0b-_printf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_140;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_140(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x261 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x268 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"9\01\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"!\01\00\00\00A\0E\10\86\02C\0D\06J\83\04\8E\03\00\00\00\00\00\00" }>, align 64

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %3 = sub i64 %1, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, 40, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %7 = load i64, i64* %6, !mcsema_real_eip !5
  store i64 %7, i64* %XAX, !mcsema_real_eip !5
  %8 = add i64 %RBP_val.5, 32, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = load i64, i64* %9, !mcsema_real_eip !6
  store i64 %10, i64* %R10, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.5, 24, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !7
  %13 = load i64, i64* %12, !mcsema_real_eip !7
  store i64 %13, i64* %R11, !mcsema_real_eip !7
  %14 = add i64 %RBP_val.5, 16, !mcsema_real_eip !8
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !8
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !8
  %17 = load i32, i32* %16, !mcsema_real_eip !8
  %18 = zext i32 %17 to i64, !mcsema_real_eip !8
  store i64 %18, i64* %XBX, !mcsema_real_eip !8
  %19 = add i64 %RBP_val.5, -12, !mcsema_real_eip !9
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !9
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !9
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %21, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %22 = add i64 %RBP_val.12, -24, !mcsema_real_eip !10
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !10
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !10
  store i64 %RSI_val.13, i64* %23, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !11
  %24 = add i64 %RBP_val.14, -32, !mcsema_real_eip !11
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !11
  %RDX_val.15 = load i64, i64* %XDX, !mcsema_real_eip !11
  store i64 %RDX_val.15, i64* %25, !mcsema_real_eip !11
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !12
  %26 = add i64 %RBP_val.16, -40, !mcsema_real_eip !12
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !12
  %RCX_val.17 = load i64, i64* %XCX, !mcsema_real_eip !12
  store i64 %RCX_val.17, i64* %27, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %28 = add i64 %RBP_val.18, -44, !mcsema_real_eip !13
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !13
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.20 = load i32, i32* %R8D.19, !mcsema_real_eip !13
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.20, i32* %30, !mcsema_real_eip !13
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !14
  %31 = add i64 %RBP_val.21, -48, !mcsema_real_eip !14
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !14
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.23 = load i32, i32* %R9D.22, !mcsema_real_eip !14
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.23, i32* %33, !mcsema_real_eip !14
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !15
  %34 = add i64 %RBP_val.24, -52, !mcsema_real_eip !15
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !15
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !15
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.26, i32* %36, !mcsema_real_eip !15
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !16
  %37 = add i64 %RBP_val.27, -64, !mcsema_real_eip !16
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !16
  %R11_val.28 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %R11_val.28, i64* %38, !mcsema_real_eip !16
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !17
  %39 = add i64 %RBP_val.29, -72, !mcsema_real_eip !17
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !17
  %R10_val.30 = load i64, i64* %R10, !mcsema_real_eip !17
  store i64 %R10_val.30, i64* %40, !mcsema_real_eip !17
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !18
  %41 = add i64 %RBP_val.31, -80, !mcsema_real_eip !18
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !18
  %RAX_val.32 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.32, i64* %42, !mcsema_real_eip !18
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !19
  %43 = add i64 %RBP_val.33, -84, !mcsema_real_eip !19
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !19
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %45, !mcsema_real_eip !19
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !20
  %46 = add i64 %RBP_val.34, -12, !mcsema_real_eip !20
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !20
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !20
  %49 = load i32, i32* %48, !mcsema_real_eip !20
  %50 = zext i32 %49 to i64, !mcsema_real_eip !20
  store i64 %50, i64* %XDI, !mcsema_real_eip !20
  %51 = add i64 %RBP_val.34, -84, !mcsema_real_eip !21
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !21
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !21
  %54 = load i32, i32* %53, !mcsema_real_eip !21
  %EDI_val.37 = load i32, i32* %EDI.10, !mcsema_real_eip !21
  %55 = add i32 %EDI_val.37, %54, !mcsema_real_eip !21
  %56 = xor i32 %55, %54, !mcsema_real_eip !21
  %57 = xor i32 %56, %EDI_val.37, !mcsema_real_eip !21
  %58 = and i32 %57, 16, !mcsema_real_eip !21
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !21
  store i1 %59, i1* %AF, !mcsema_real_eip !21
  %60 = lshr i32 %55, 31, !mcsema_real_eip !21
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !21
  store i1 %61, i1* %SF, !mcsema_real_eip !21
  %62 = icmp eq i32 %55, 0, !mcsema_real_eip !21
  store i1 %62, i1* %ZF, !mcsema_real_eip !21
  %63 = xor i32 %54, %EDI_val.37, !mcsema_real_eip !21
  %64 = xor i32 %63, -1, !mcsema_real_eip !21
  %65 = and i32 %64, %56, !mcsema_real_eip !21
  %66 = lshr i32 %65, 31, !mcsema_real_eip !21
  %67 = and i32 %66, 1, !mcsema_real_eip !21
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !21
  store i1 %68, i1* %OF, !mcsema_real_eip !21
  %69 = trunc i32 %55 to i8, !mcsema_real_eip !21
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !21
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !21
  %72 = xor i1 %71, true, !mcsema_real_eip !21
  store i1 %72, i1* %PF, !mcsema_real_eip !21
  %73 = icmp ult i32 %55, %54, !mcsema_real_eip !21
  store i1 %73, i1* %CF, !mcsema_real_eip !21
  %74 = zext i32 %55 to i64, !mcsema_real_eip !21
  store i64 %74, i64* %XDI, !mcsema_real_eip !21
  %EDI_val.40 = load i32, i32* %EDI.10, !mcsema_real_eip !22
  store i32 %EDI_val.40, i32* %53, !mcsema_real_eip !22
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !23
  %75 = add i64 %RBP_val.41, -88, !mcsema_real_eip !23
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !23
  %77 = inttoptr i64 %75 to i32*, !mcsema_real_eip !23
  store i32 0, i32* %77, !mcsema_real_eip !23
  br label %block_0x51, !mcsema_real_eip !24

block_0x51:                                       ; preds = %block_0x5d, %block_0x0
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !24
  %78 = add i64 %RBP_val.42, -88, !mcsema_real_eip !24
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !24
  %80 = inttoptr i64 %78 to i32*, !mcsema_real_eip !24
  %81 = load i32, i32* %80, !mcsema_real_eip !24
  %82 = zext i32 %81 to i64, !mcsema_real_eip !24
  store i64 %82, i64* %XAX, !mcsema_real_eip !24
  %83 = add i64 %RBP_val.42, -44, !mcsema_real_eip !25
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !25
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !25
  %85 = inttoptr i64 %83 to i32*, !mcsema_real_eip !25
  %86 = load i32, i32* %85, !mcsema_real_eip !25
  %87 = sub i32 %EAX_val.45, %86, !mcsema_real_eip !25
  %88 = xor i32 %87, %EAX_val.45, !mcsema_real_eip !25
  %89 = xor i32 %88, %86, !mcsema_real_eip !25
  %90 = and i32 %89, 16, !mcsema_real_eip !25
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !25
  store i1 %91, i1* %AF, !mcsema_real_eip !25
  %92 = trunc i32 %87 to i8, !mcsema_real_eip !25
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !25
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !25
  %95 = xor i1 %94, true, !mcsema_real_eip !25
  store i1 %95, i1* %PF, !mcsema_real_eip !25
  %96 = icmp eq i32 %87, 0, !mcsema_real_eip !25
  store i1 %96, i1* %ZF, !mcsema_real_eip !25
  %97 = lshr i32 %87, 31, !mcsema_real_eip !25
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !25
  store i1 %98, i1* %SF, !mcsema_real_eip !25
  %99 = icmp ult i32 %EAX_val.45, %86, !mcsema_real_eip !25
  store i1 %99, i1* %CF, !mcsema_real_eip !25
  %100 = xor i32 %EAX_val.45, %86, !mcsema_real_eip !25
  %101 = and i32 %100, %88, !mcsema_real_eip !25
  %102 = lshr i32 %101, 31, !mcsema_real_eip !25
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !25
  store i1 %103, i1* %OF, !mcsema_real_eip !25
  %104 = icmp eq i1 %98, %103, !mcsema_real_eip !26
  br i1 %104, label %block_0x7c, label %block_0x5d, !mcsema_real_eip !26

block_0x5d:                                       ; preds = %block_0x51
  %105 = add i64 %RBP_val.42, -24, !mcsema_real_eip !27
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !27
  %107 = load i64, i64* %106, !mcsema_real_eip !27
  store i64 %107, i64* %XAX, !mcsema_real_eip !27
  %108 = load i32, i32* %80, !mcsema_real_eip !28
  %109 = sext i32 %108 to i64, !mcsema_real_eip !28
  store i64 %109, i64* %XCX, !mcsema_real_eip !28
  %110 = mul i64 %109, 4, !mcsema_real_eip !29
  %111 = add i64 %107, %110, !mcsema_real_eip !29
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !29
  %113 = inttoptr i64 %111 to i32*, !mcsema_real_eip !29
  %114 = load i32, i32* %113, !mcsema_real_eip !29
  %115 = zext i32 %114 to i64, !mcsema_real_eip !29
  store i64 %115, i64* %XDX, !mcsema_real_eip !29
  %116 = add i64 %RBP_val.42, -84, !mcsema_real_eip !30
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !30
  %118 = inttoptr i64 %116 to i32*, !mcsema_real_eip !30
  %119 = load i32, i32* %118, !mcsema_real_eip !30
  %EDX.51 = bitcast i64* %XDX to i32*, !mcsema_real_eip !30
  %EDX_val.52 = load i32, i32* %EDX.51, !mcsema_real_eip !30
  %120 = add i32 %EDX_val.52, %119, !mcsema_real_eip !30
  %121 = xor i32 %120, %119, !mcsema_real_eip !30
  %122 = xor i32 %121, %EDX_val.52, !mcsema_real_eip !30
  %123 = and i32 %122, 16, !mcsema_real_eip !30
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !30
  store i1 %124, i1* %AF, !mcsema_real_eip !30
  %125 = lshr i32 %120, 31, !mcsema_real_eip !30
  %126 = trunc i32 %125 to i1, !mcsema_real_eip !30
  store i1 %126, i1* %SF, !mcsema_real_eip !30
  %127 = icmp eq i32 %120, 0, !mcsema_real_eip !30
  store i1 %127, i1* %ZF, !mcsema_real_eip !30
  %128 = xor i32 %119, %EDX_val.52, !mcsema_real_eip !30
  %129 = xor i32 %128, -1, !mcsema_real_eip !30
  %130 = and i32 %129, %121, !mcsema_real_eip !30
  %131 = lshr i32 %130, 31, !mcsema_real_eip !30
  %132 = and i32 %131, 1, !mcsema_real_eip !30
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !30
  store i1 %133, i1* %OF, !mcsema_real_eip !30
  %134 = trunc i32 %120 to i8, !mcsema_real_eip !30
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !30
  %136 = trunc i8 %135 to i1, !mcsema_real_eip !30
  %137 = xor i1 %136, true, !mcsema_real_eip !30
  store i1 %137, i1* %PF, !mcsema_real_eip !30
  %138 = icmp ult i32 %120, %119, !mcsema_real_eip !30
  store i1 %138, i1* %CF, !mcsema_real_eip !30
  %139 = zext i32 %120 to i64, !mcsema_real_eip !30
  store i64 %139, i64* %XDX, !mcsema_real_eip !30
  %EDX_val.55 = load i32, i32* %EDX.51, !mcsema_real_eip !31
  store i32 %EDX_val.55, i32* %118, !mcsema_real_eip !31
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !32
  %140 = add i64 %RBP_val.56, -88, !mcsema_real_eip !32
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !32
  %142 = inttoptr i64 %140 to i32*, !mcsema_real_eip !32
  %143 = load i32, i32* %142, !mcsema_real_eip !32
  %144 = zext i32 %143 to i64, !mcsema_real_eip !32
  store i64 %144, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.58 = load i32, i32* %EAX.44, !mcsema_real_eip !33
  %145 = add i32 1, %EAX_val.58, !mcsema_real_eip !33
  %146 = xor i32 %145, %EAX_val.58, !mcsema_real_eip !33
  %147 = xor i32 %146, 1, !mcsema_real_eip !33
  %148 = and i32 %147, 16, !mcsema_real_eip !33
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !33
  store i1 %149, i1* %AF, !mcsema_real_eip !33
  %150 = lshr i32 %145, 31, !mcsema_real_eip !33
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !33
  store i1 %151, i1* %SF, !mcsema_real_eip !33
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !33
  store i1 %152, i1* %ZF, !mcsema_real_eip !33
  %153 = xor i32 %EAX_val.58, 1, !mcsema_real_eip !33
  %154 = xor i32 %153, -1, !mcsema_real_eip !33
  %155 = and i32 %154, %146, !mcsema_real_eip !33
  %156 = lshr i32 %155, 31, !mcsema_real_eip !33
  %157 = and i32 %156, 1, !mcsema_real_eip !33
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !33
  store i1 %158, i1* %OF, !mcsema_real_eip !33
  %159 = trunc i32 %145 to i8, !mcsema_real_eip !33
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !33
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !33
  %162 = xor i1 %161, true, !mcsema_real_eip !33
  store i1 %162, i1* %PF, !mcsema_real_eip !33
  %163 = icmp ult i32 %145, %EAX_val.58, !mcsema_real_eip !33
  store i1 %163, i1* %CF, !mcsema_real_eip !33
  %164 = zext i32 %145 to i64, !mcsema_real_eip !33
  store i64 %164, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.61 = load i32, i32* %EAX.44, !mcsema_real_eip !34
  store i32 %EAX_val.61, i32* %142, !mcsema_real_eip !34
  br label %block_0x51, !mcsema_real_eip !35

block_0x7c:                                       ; preds = %block_0x51
  %165 = add i64 %RBP_val.42, -32, !mcsema_real_eip !36
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !36
  %167 = load i64, i64* %166, !mcsema_real_eip !36
  store i64 %167, i64* %XAX, !mcsema_real_eip !36
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !37
  %169 = inttoptr i64 %167 to i32*, !mcsema_real_eip !37
  %170 = load i32, i32* %169, !mcsema_real_eip !37
  %171 = zext i32 %170 to i64, !mcsema_real_eip !37
  store i64 %171, i64* %XCX, !mcsema_real_eip !37
  %172 = add i64 %RBP_val.42, -84, !mcsema_real_eip !38
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !38
  %174 = inttoptr i64 %172 to i32*, !mcsema_real_eip !38
  %175 = load i32, i32* %174, !mcsema_real_eip !38
  %ECX.65 = bitcast i64* %XCX to i32*, !mcsema_real_eip !38
  %ECX_val.66 = load i32, i32* %ECX.65, !mcsema_real_eip !38
  %176 = add i32 %ECX_val.66, %175, !mcsema_real_eip !38
  %177 = xor i32 %176, %175, !mcsema_real_eip !38
  %178 = xor i32 %177, %ECX_val.66, !mcsema_real_eip !38
  %179 = and i32 %178, 16, !mcsema_real_eip !38
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !38
  store i1 %180, i1* %AF, !mcsema_real_eip !38
  %181 = lshr i32 %176, 31, !mcsema_real_eip !38
  %182 = trunc i32 %181 to i1, !mcsema_real_eip !38
  store i1 %182, i1* %SF, !mcsema_real_eip !38
  %183 = icmp eq i32 %176, 0, !mcsema_real_eip !38
  store i1 %183, i1* %ZF, !mcsema_real_eip !38
  %184 = xor i32 %175, %ECX_val.66, !mcsema_real_eip !38
  %185 = xor i32 %184, -1, !mcsema_real_eip !38
  %186 = and i32 %185, %177, !mcsema_real_eip !38
  %187 = lshr i32 %186, 31, !mcsema_real_eip !38
  %188 = and i32 %187, 1, !mcsema_real_eip !38
  %189 = trunc i32 %188 to i1, !mcsema_real_eip !38
  store i1 %189, i1* %OF, !mcsema_real_eip !38
  %190 = trunc i32 %176 to i8, !mcsema_real_eip !38
  %191 = call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !38
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !38
  %193 = xor i1 %192, true, !mcsema_real_eip !38
  store i1 %193, i1* %PF, !mcsema_real_eip !38
  %194 = icmp ult i32 %176, %175, !mcsema_real_eip !38
  store i1 %194, i1* %CF, !mcsema_real_eip !38
  %195 = zext i32 %176 to i64, !mcsema_real_eip !38
  store i64 %195, i64* %XCX, !mcsema_real_eip !38
  %ECX_val.69 = load i32, i32* %ECX.65, !mcsema_real_eip !39
  store i32 %ECX_val.69, i32* %174, !mcsema_real_eip !39
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !40
  %196 = add i64 %RBP_val.70, -92, !mcsema_real_eip !40
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !40
  %198 = inttoptr i64 %196 to i32*, !mcsema_real_eip !40
  store i32 0, i32* %198, !mcsema_real_eip !40
  br label %block_0x8f, !mcsema_real_eip !41

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !41
  %199 = add i64 %RBP_val.71, -92, !mcsema_real_eip !41
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !41
  %201 = inttoptr i64 %199 to i32*, !mcsema_real_eip !41
  %202 = load i32, i32* %201, !mcsema_real_eip !41
  %203 = zext i32 %202 to i64, !mcsema_real_eip !41
  store i64 %203, i64* %XAX, !mcsema_real_eip !41
  %204 = add i64 %RBP_val.71, -48, !mcsema_real_eip !42
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !42
  %EAX_val.74 = load i32, i32* %EAX.44, !mcsema_real_eip !42
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !42
  %207 = load i32, i32* %206, !mcsema_real_eip !42
  %208 = sub i32 %EAX_val.74, %207, !mcsema_real_eip !42
  %209 = xor i32 %208, %EAX_val.74, !mcsema_real_eip !42
  %210 = xor i32 %209, %207, !mcsema_real_eip !42
  %211 = and i32 %210, 16, !mcsema_real_eip !42
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !42
  store i1 %212, i1* %AF, !mcsema_real_eip !42
  %213 = trunc i32 %208 to i8, !mcsema_real_eip !42
  %214 = call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !42
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !42
  %216 = xor i1 %215, true, !mcsema_real_eip !42
  store i1 %216, i1* %PF, !mcsema_real_eip !42
  %217 = icmp eq i32 %208, 0, !mcsema_real_eip !42
  store i1 %217, i1* %ZF, !mcsema_real_eip !42
  %218 = lshr i32 %208, 31, !mcsema_real_eip !42
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !42
  store i1 %219, i1* %SF, !mcsema_real_eip !42
  %220 = icmp ult i32 %EAX_val.74, %207, !mcsema_real_eip !42
  store i1 %220, i1* %CF, !mcsema_real_eip !42
  %221 = xor i32 %EAX_val.74, %207, !mcsema_real_eip !42
  %222 = and i32 %221, %209, !mcsema_real_eip !42
  %223 = lshr i32 %222, 31, !mcsema_real_eip !42
  %224 = trunc i32 %223 to i1, !mcsema_real_eip !42
  store i1 %224, i1* %OF, !mcsema_real_eip !42
  %225 = icmp eq i1 %219, %224, !mcsema_real_eip !43
  br i1 %225, label %block_0xba, label %block_0x9b, !mcsema_real_eip !43

block_0x9b:                                       ; preds = %block_0x8f
  %226 = add i64 %RBP_val.71, -40, !mcsema_real_eip !44
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !44
  %228 = load i64, i64* %227, !mcsema_real_eip !44
  store i64 %228, i64* %XAX, !mcsema_real_eip !44
  %229 = load i32, i32* %201, !mcsema_real_eip !45
  %230 = sext i32 %229 to i64, !mcsema_real_eip !45
  store i64 %230, i64* %XCX, !mcsema_real_eip !45
  %231 = mul i64 %230, 4, !mcsema_real_eip !46
  %232 = add i64 %228, %231, !mcsema_real_eip !46
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !46
  %234 = inttoptr i64 %232 to i32*, !mcsema_real_eip !46
  %235 = load i32, i32* %234, !mcsema_real_eip !46
  %236 = zext i32 %235 to i64, !mcsema_real_eip !46
  store i64 %236, i64* %XDX, !mcsema_real_eip !46
  %237 = add i64 %RBP_val.71, -84, !mcsema_real_eip !47
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !47
  %239 = inttoptr i64 %237 to i32*, !mcsema_real_eip !47
  %240 = load i32, i32* %239, !mcsema_real_eip !47
  %EDX.80 = bitcast i64* %XDX to i32*, !mcsema_real_eip !47
  %EDX_val.81 = load i32, i32* %EDX.80, !mcsema_real_eip !47
  %241 = add i32 %EDX_val.81, %240, !mcsema_real_eip !47
  %242 = xor i32 %241, %240, !mcsema_real_eip !47
  %243 = xor i32 %242, %EDX_val.81, !mcsema_real_eip !47
  %244 = and i32 %243, 16, !mcsema_real_eip !47
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !47
  store i1 %245, i1* %AF, !mcsema_real_eip !47
  %246 = lshr i32 %241, 31, !mcsema_real_eip !47
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !47
  store i1 %247, i1* %SF, !mcsema_real_eip !47
  %248 = icmp eq i32 %241, 0, !mcsema_real_eip !47
  store i1 %248, i1* %ZF, !mcsema_real_eip !47
  %249 = xor i32 %240, %EDX_val.81, !mcsema_real_eip !47
  %250 = xor i32 %249, -1, !mcsema_real_eip !47
  %251 = and i32 %250, %242, !mcsema_real_eip !47
  %252 = lshr i32 %251, 31, !mcsema_real_eip !47
  %253 = and i32 %252, 1, !mcsema_real_eip !47
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !47
  store i1 %254, i1* %OF, !mcsema_real_eip !47
  %255 = trunc i32 %241 to i8, !mcsema_real_eip !47
  %256 = call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !47
  %257 = trunc i8 %256 to i1, !mcsema_real_eip !47
  %258 = xor i1 %257, true, !mcsema_real_eip !47
  store i1 %258, i1* %PF, !mcsema_real_eip !47
  %259 = icmp ult i32 %241, %240, !mcsema_real_eip !47
  store i1 %259, i1* %CF, !mcsema_real_eip !47
  %260 = zext i32 %241 to i64, !mcsema_real_eip !47
  store i64 %260, i64* %XDX, !mcsema_real_eip !47
  %EDX_val.84 = load i32, i32* %EDX.80, !mcsema_real_eip !48
  store i32 %EDX_val.84, i32* %239, !mcsema_real_eip !48
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !49
  %261 = add i64 %RBP_val.85, -92, !mcsema_real_eip !49
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !49
  %263 = inttoptr i64 %261 to i32*, !mcsema_real_eip !49
  %264 = load i32, i32* %263, !mcsema_real_eip !49
  %265 = zext i32 %264 to i64, !mcsema_real_eip !49
  store i64 %265, i64* %XAX, !mcsema_real_eip !49
  %EAX_val.87 = load i32, i32* %EAX.44, !mcsema_real_eip !50
  %266 = add i32 1, %EAX_val.87, !mcsema_real_eip !50
  %267 = xor i32 %266, %EAX_val.87, !mcsema_real_eip !50
  %268 = xor i32 %267, 1, !mcsema_real_eip !50
  %269 = and i32 %268, 16, !mcsema_real_eip !50
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !50
  store i1 %270, i1* %AF, !mcsema_real_eip !50
  %271 = lshr i32 %266, 31, !mcsema_real_eip !50
  %272 = trunc i32 %271 to i1, !mcsema_real_eip !50
  store i1 %272, i1* %SF, !mcsema_real_eip !50
  %273 = icmp eq i32 %266, 0, !mcsema_real_eip !50
  store i1 %273, i1* %ZF, !mcsema_real_eip !50
  %274 = xor i32 %EAX_val.87, 1, !mcsema_real_eip !50
  %275 = xor i32 %274, -1, !mcsema_real_eip !50
  %276 = and i32 %275, %267, !mcsema_real_eip !50
  %277 = lshr i32 %276, 31, !mcsema_real_eip !50
  %278 = and i32 %277, 1, !mcsema_real_eip !50
  %279 = trunc i32 %278 to i1, !mcsema_real_eip !50
  store i1 %279, i1* %OF, !mcsema_real_eip !50
  %280 = trunc i32 %266 to i8, !mcsema_real_eip !50
  %281 = call i8 @llvm.ctpop.i8(i8 %280), !mcsema_real_eip !50
  %282 = trunc i8 %281 to i1, !mcsema_real_eip !50
  %283 = xor i1 %282, true, !mcsema_real_eip !50
  store i1 %283, i1* %PF, !mcsema_real_eip !50
  %284 = icmp ult i32 %266, %EAX_val.87, !mcsema_real_eip !50
  store i1 %284, i1* %CF, !mcsema_real_eip !50
  %285 = zext i32 %266 to i64, !mcsema_real_eip !50
  store i64 %285, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.90 = load i32, i32* %EAX.44, !mcsema_real_eip !51
  store i32 %EAX_val.90, i32* %263, !mcsema_real_eip !51
  br label %block_0x8f, !mcsema_real_eip !52

block_0xba:                                       ; preds = %block_0x8f
  %286 = add i64 %RBP_val.71, -52, !mcsema_real_eip !53
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !53
  %288 = inttoptr i64 %286 to i32*, !mcsema_real_eip !53
  %289 = load i32, i32* %288, !mcsema_real_eip !53
  %290 = zext i32 %289 to i64, !mcsema_real_eip !53
  store i64 %290, i64* %XAX, !mcsema_real_eip !53
  %291 = add i64 %RBP_val.71, -84, !mcsema_real_eip !54
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !54
  %293 = inttoptr i64 %291 to i32*, !mcsema_real_eip !54
  %294 = load i32, i32* %293, !mcsema_real_eip !54
  %EAX_val.94 = load i32, i32* %EAX.44, !mcsema_real_eip !54
  %295 = add i32 %EAX_val.94, %294, !mcsema_real_eip !54
  %296 = xor i32 %295, %294, !mcsema_real_eip !54
  %297 = xor i32 %296, %EAX_val.94, !mcsema_real_eip !54
  %298 = and i32 %297, 16, !mcsema_real_eip !54
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !54
  store i1 %299, i1* %AF, !mcsema_real_eip !54
  %300 = lshr i32 %295, 31, !mcsema_real_eip !54
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !54
  store i1 %301, i1* %SF, !mcsema_real_eip !54
  %302 = icmp eq i32 %295, 0, !mcsema_real_eip !54
  store i1 %302, i1* %ZF, !mcsema_real_eip !54
  %303 = xor i32 %294, %EAX_val.94, !mcsema_real_eip !54
  %304 = xor i32 %303, -1, !mcsema_real_eip !54
  %305 = and i32 %304, %296, !mcsema_real_eip !54
  %306 = lshr i32 %305, 31, !mcsema_real_eip !54
  %307 = and i32 %306, 1, !mcsema_real_eip !54
  %308 = trunc i32 %307 to i1, !mcsema_real_eip !54
  store i1 %308, i1* %OF, !mcsema_real_eip !54
  %309 = trunc i32 %295 to i8, !mcsema_real_eip !54
  %310 = call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !54
  %311 = trunc i8 %310 to i1, !mcsema_real_eip !54
  %312 = xor i1 %311, true, !mcsema_real_eip !54
  store i1 %312, i1* %PF, !mcsema_real_eip !54
  %313 = icmp ult i32 %295, %294, !mcsema_real_eip !54
  store i1 %313, i1* %CF, !mcsema_real_eip !54
  %314 = zext i32 %295 to i64, !mcsema_real_eip !54
  store i64 %314, i64* %XAX, !mcsema_real_eip !54
  %EAX_val.97 = load i32, i32* %EAX.44, !mcsema_real_eip !55
  store i32 %EAX_val.97, i32* %293, !mcsema_real_eip !55
  %RBP_val.98 = load i64, i64* %XBP, !mcsema_real_eip !56
  %315 = add i64 %RBP_val.98, -96, !mcsema_real_eip !56
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !56
  %317 = inttoptr i64 %315 to i32*, !mcsema_real_eip !56
  store i32 0, i32* %317, !mcsema_real_eip !56
  br label %block_0xca, !mcsema_real_eip !57

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !57
  %318 = add i64 %RBP_val.99, -96, !mcsema_real_eip !57
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !57
  %320 = inttoptr i64 %318 to i32*, !mcsema_real_eip !57
  %321 = load i32, i32* %320, !mcsema_real_eip !57
  %322 = zext i32 %321 to i64, !mcsema_real_eip !57
  store i64 %322, i64* %XAX, !mcsema_real_eip !57
  %323 = add i64 %RBP_val.99, -44, !mcsema_real_eip !58
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !58
  %EAX_val.102 = load i32, i32* %EAX.44, !mcsema_real_eip !58
  %325 = inttoptr i64 %323 to i32*, !mcsema_real_eip !58
  %326 = load i32, i32* %325, !mcsema_real_eip !58
  %327 = sub i32 %EAX_val.102, %326, !mcsema_real_eip !58
  %328 = xor i32 %327, %EAX_val.102, !mcsema_real_eip !58
  %329 = xor i32 %328, %326, !mcsema_real_eip !58
  %330 = and i32 %329, 16, !mcsema_real_eip !58
  %331 = icmp ne i32 %330, 0, !mcsema_real_eip !58
  store i1 %331, i1* %AF, !mcsema_real_eip !58
  %332 = trunc i32 %327 to i8, !mcsema_real_eip !58
  %333 = call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !58
  %334 = trunc i8 %333 to i1, !mcsema_real_eip !58
  %335 = xor i1 %334, true, !mcsema_real_eip !58
  store i1 %335, i1* %PF, !mcsema_real_eip !58
  %336 = icmp eq i32 %327, 0, !mcsema_real_eip !58
  store i1 %336, i1* %ZF, !mcsema_real_eip !58
  %337 = lshr i32 %327, 31, !mcsema_real_eip !58
  %338 = trunc i32 %337 to i1, !mcsema_real_eip !58
  store i1 %338, i1* %SF, !mcsema_real_eip !58
  %339 = icmp ult i32 %EAX_val.102, %326, !mcsema_real_eip !58
  store i1 %339, i1* %CF, !mcsema_real_eip !58
  %340 = xor i32 %EAX_val.102, %326, !mcsema_real_eip !58
  %341 = and i32 %340, %328, !mcsema_real_eip !58
  %342 = lshr i32 %341, 31, !mcsema_real_eip !58
  %343 = trunc i32 %342 to i1, !mcsema_real_eip !58
  store i1 %343, i1* %OF, !mcsema_real_eip !58
  %344 = icmp eq i1 %338, %343, !mcsema_real_eip !59
  br i1 %344, label %block_0xf5, label %block_0xd6, !mcsema_real_eip !59

block_0xd6:                                       ; preds = %block_0xca
  %345 = add i64 %RBP_val.99, -64, !mcsema_real_eip !60
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !60
  %347 = load i64, i64* %346, !mcsema_real_eip !60
  store i64 %347, i64* %XAX, !mcsema_real_eip !60
  %348 = load i32, i32* %320, !mcsema_real_eip !61
  %349 = sext i32 %348 to i64, !mcsema_real_eip !61
  store i64 %349, i64* %XCX, !mcsema_real_eip !61
  %350 = mul i64 %349, 4, !mcsema_real_eip !62
  %351 = add i64 %347, %350, !mcsema_real_eip !62
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !62
  %353 = inttoptr i64 %351 to i32*, !mcsema_real_eip !62
  %354 = load i32, i32* %353, !mcsema_real_eip !62
  %355 = zext i32 %354 to i64, !mcsema_real_eip !62
  store i64 %355, i64* %XDX, !mcsema_real_eip !62
  %356 = add i64 %RBP_val.99, -84, !mcsema_real_eip !63
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !63
  %358 = inttoptr i64 %356 to i32*, !mcsema_real_eip !63
  %359 = load i32, i32* %358, !mcsema_real_eip !63
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !63
  %EDX_val.109 = load i32, i32* %EDX.108, !mcsema_real_eip !63
  %360 = add i32 %EDX_val.109, %359, !mcsema_real_eip !63
  %361 = xor i32 %360, %359, !mcsema_real_eip !63
  %362 = xor i32 %361, %EDX_val.109, !mcsema_real_eip !63
  %363 = and i32 %362, 16, !mcsema_real_eip !63
  %364 = icmp ne i32 %363, 0, !mcsema_real_eip !63
  store i1 %364, i1* %AF, !mcsema_real_eip !63
  %365 = lshr i32 %360, 31, !mcsema_real_eip !63
  %366 = trunc i32 %365 to i1, !mcsema_real_eip !63
  store i1 %366, i1* %SF, !mcsema_real_eip !63
  %367 = icmp eq i32 %360, 0, !mcsema_real_eip !63
  store i1 %367, i1* %ZF, !mcsema_real_eip !63
  %368 = xor i32 %359, %EDX_val.109, !mcsema_real_eip !63
  %369 = xor i32 %368, -1, !mcsema_real_eip !63
  %370 = and i32 %369, %361, !mcsema_real_eip !63
  %371 = lshr i32 %370, 31, !mcsema_real_eip !63
  %372 = and i32 %371, 1, !mcsema_real_eip !63
  %373 = trunc i32 %372 to i1, !mcsema_real_eip !63
  store i1 %373, i1* %OF, !mcsema_real_eip !63
  %374 = trunc i32 %360 to i8, !mcsema_real_eip !63
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !63
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !63
  %377 = xor i1 %376, true, !mcsema_real_eip !63
  store i1 %377, i1* %PF, !mcsema_real_eip !63
  %378 = icmp ult i32 %360, %359, !mcsema_real_eip !63
  store i1 %378, i1* %CF, !mcsema_real_eip !63
  %379 = zext i32 %360 to i64, !mcsema_real_eip !63
  store i64 %379, i64* %XDX, !mcsema_real_eip !63
  %EDX_val.112 = load i32, i32* %EDX.108, !mcsema_real_eip !64
  store i32 %EDX_val.112, i32* %358, !mcsema_real_eip !64
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !65
  %380 = add i64 %RBP_val.113, -96, !mcsema_real_eip !65
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !65
  %382 = inttoptr i64 %380 to i32*, !mcsema_real_eip !65
  %383 = load i32, i32* %382, !mcsema_real_eip !65
  %384 = zext i32 %383 to i64, !mcsema_real_eip !65
  store i64 %384, i64* %XAX, !mcsema_real_eip !65
  %EAX_val.115 = load i32, i32* %EAX.44, !mcsema_real_eip !66
  %385 = add i32 1, %EAX_val.115, !mcsema_real_eip !66
  %386 = xor i32 %385, %EAX_val.115, !mcsema_real_eip !66
  %387 = xor i32 %386, 1, !mcsema_real_eip !66
  %388 = and i32 %387, 16, !mcsema_real_eip !66
  %389 = icmp ne i32 %388, 0, !mcsema_real_eip !66
  store i1 %389, i1* %AF, !mcsema_real_eip !66
  %390 = lshr i32 %385, 31, !mcsema_real_eip !66
  %391 = trunc i32 %390 to i1, !mcsema_real_eip !66
  store i1 %391, i1* %SF, !mcsema_real_eip !66
  %392 = icmp eq i32 %385, 0, !mcsema_real_eip !66
  store i1 %392, i1* %ZF, !mcsema_real_eip !66
  %393 = xor i32 %EAX_val.115, 1, !mcsema_real_eip !66
  %394 = xor i32 %393, -1, !mcsema_real_eip !66
  %395 = and i32 %394, %386, !mcsema_real_eip !66
  %396 = lshr i32 %395, 31, !mcsema_real_eip !66
  %397 = and i32 %396, 1, !mcsema_real_eip !66
  %398 = trunc i32 %397 to i1, !mcsema_real_eip !66
  store i1 %398, i1* %OF, !mcsema_real_eip !66
  %399 = trunc i32 %385 to i8, !mcsema_real_eip !66
  %400 = call i8 @llvm.ctpop.i8(i8 %399), !mcsema_real_eip !66
  %401 = trunc i8 %400 to i1, !mcsema_real_eip !66
  %402 = xor i1 %401, true, !mcsema_real_eip !66
  store i1 %402, i1* %PF, !mcsema_real_eip !66
  %403 = icmp ult i32 %385, %EAX_val.115, !mcsema_real_eip !66
  store i1 %403, i1* %CF, !mcsema_real_eip !66
  %404 = zext i32 %385 to i64, !mcsema_real_eip !66
  store i64 %404, i64* %XAX, !mcsema_real_eip !66
  %EAX_val.118 = load i32, i32* %EAX.44, !mcsema_real_eip !67
  store i32 %EAX_val.118, i32* %382, !mcsema_real_eip !67
  br label %block_0xca, !mcsema_real_eip !68

block_0xf5:                                       ; preds = %block_0xca
  %405 = add i64 %RBP_val.99, -72, !mcsema_real_eip !69
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !69
  %407 = load i64, i64* %406, !mcsema_real_eip !69
  store i64 %407, i64* %XAX, !mcsema_real_eip !69
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !70
  %409 = inttoptr i64 %407 to i32*, !mcsema_real_eip !70
  %410 = load i32, i32* %409, !mcsema_real_eip !70
  %411 = zext i32 %410 to i64, !mcsema_real_eip !70
  store i64 %411, i64* %XCX, !mcsema_real_eip !70
  %412 = add i64 %RBP_val.99, -84, !mcsema_real_eip !71
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !71
  %414 = inttoptr i64 %412 to i32*, !mcsema_real_eip !71
  %415 = load i32, i32* %414, !mcsema_real_eip !71
  %ECX_val.123 = load i32, i32* %ECX.65, !mcsema_real_eip !71
  %416 = add i32 %ECX_val.123, %415, !mcsema_real_eip !71
  %417 = xor i32 %416, %415, !mcsema_real_eip !71
  %418 = xor i32 %417, %ECX_val.123, !mcsema_real_eip !71
  %419 = and i32 %418, 16, !mcsema_real_eip !71
  %420 = icmp ne i32 %419, 0, !mcsema_real_eip !71
  store i1 %420, i1* %AF, !mcsema_real_eip !71
  %421 = lshr i32 %416, 31, !mcsema_real_eip !71
  %422 = trunc i32 %421 to i1, !mcsema_real_eip !71
  store i1 %422, i1* %SF, !mcsema_real_eip !71
  %423 = icmp eq i32 %416, 0, !mcsema_real_eip !71
  store i1 %423, i1* %ZF, !mcsema_real_eip !71
  %424 = xor i32 %415, %ECX_val.123, !mcsema_real_eip !71
  %425 = xor i32 %424, -1, !mcsema_real_eip !71
  %426 = and i32 %425, %417, !mcsema_real_eip !71
  %427 = lshr i32 %426, 31, !mcsema_real_eip !71
  %428 = and i32 %427, 1, !mcsema_real_eip !71
  %429 = trunc i32 %428 to i1, !mcsema_real_eip !71
  store i1 %429, i1* %OF, !mcsema_real_eip !71
  %430 = trunc i32 %416 to i8, !mcsema_real_eip !71
  %431 = call i8 @llvm.ctpop.i8(i8 %430), !mcsema_real_eip !71
  %432 = trunc i8 %431 to i1, !mcsema_real_eip !71
  %433 = xor i1 %432, true, !mcsema_real_eip !71
  store i1 %433, i1* %PF, !mcsema_real_eip !71
  %434 = icmp ult i32 %416, %415, !mcsema_real_eip !71
  store i1 %434, i1* %CF, !mcsema_real_eip !71
  %435 = zext i32 %416 to i64, !mcsema_real_eip !71
  store i64 %435, i64* %XCX, !mcsema_real_eip !71
  %ECX_val.126 = load i32, i32* %ECX.65, !mcsema_real_eip !72
  store i32 %ECX_val.126, i32* %414, !mcsema_real_eip !72
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !73
  %436 = add i64 %RBP_val.127, -100, !mcsema_real_eip !73
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !73
  %438 = inttoptr i64 %436 to i32*, !mcsema_real_eip !73
  store i32 0, i32* %438, !mcsema_real_eip !73
  br label %block_0x108, !mcsema_real_eip !74

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !74
  %439 = add i64 %RBP_val.128, -100, !mcsema_real_eip !74
  %440 = inttoptr i64 %439 to i64*, !mcsema_real_eip !74
  %441 = inttoptr i64 %439 to i32*, !mcsema_real_eip !74
  %442 = load i32, i32* %441, !mcsema_real_eip !74
  %443 = zext i32 %442 to i64, !mcsema_real_eip !74
  store i64 %443, i64* %XAX, !mcsema_real_eip !74
  %444 = add i64 %RBP_val.128, -48, !mcsema_real_eip !75
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !75
  %EAX_val.131 = load i32, i32* %EAX.44, !mcsema_real_eip !75
  %446 = inttoptr i64 %444 to i32*, !mcsema_real_eip !75
  %447 = load i32, i32* %446, !mcsema_real_eip !75
  %448 = sub i32 %EAX_val.131, %447, !mcsema_real_eip !75
  %449 = xor i32 %448, %EAX_val.131, !mcsema_real_eip !75
  %450 = xor i32 %449, %447, !mcsema_real_eip !75
  %451 = and i32 %450, 16, !mcsema_real_eip !75
  %452 = icmp ne i32 %451, 0, !mcsema_real_eip !75
  store i1 %452, i1* %AF, !mcsema_real_eip !75
  %453 = trunc i32 %448 to i8, !mcsema_real_eip !75
  %454 = call i8 @llvm.ctpop.i8(i8 %453), !mcsema_real_eip !75
  %455 = trunc i8 %454 to i1, !mcsema_real_eip !75
  %456 = xor i1 %455, true, !mcsema_real_eip !75
  store i1 %456, i1* %PF, !mcsema_real_eip !75
  %457 = icmp eq i32 %448, 0, !mcsema_real_eip !75
  store i1 %457, i1* %ZF, !mcsema_real_eip !75
  %458 = lshr i32 %448, 31, !mcsema_real_eip !75
  %459 = trunc i32 %458 to i1, !mcsema_real_eip !75
  store i1 %459, i1* %SF, !mcsema_real_eip !75
  %460 = icmp ult i32 %EAX_val.131, %447, !mcsema_real_eip !75
  store i1 %460, i1* %CF, !mcsema_real_eip !75
  %461 = xor i32 %EAX_val.131, %447, !mcsema_real_eip !75
  %462 = and i32 %461, %449, !mcsema_real_eip !75
  %463 = lshr i32 %462, 31, !mcsema_real_eip !75
  %464 = trunc i32 %463 to i1, !mcsema_real_eip !75
  store i1 %464, i1* %OF, !mcsema_real_eip !75
  %465 = icmp eq i1 %459, %464, !mcsema_real_eip !76
  br i1 %465, label %block_0x133, label %block_0x114, !mcsema_real_eip !76

block_0x114:                                      ; preds = %block_0x108
  %466 = add i64 %RBP_val.128, -80, !mcsema_real_eip !77
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !77
  %468 = load i64, i64* %467, !mcsema_real_eip !77
  store i64 %468, i64* %XAX, !mcsema_real_eip !77
  %469 = load i32, i32* %441, !mcsema_real_eip !78
  %470 = sext i32 %469 to i64, !mcsema_real_eip !78
  store i64 %470, i64* %XCX, !mcsema_real_eip !78
  %471 = mul i64 %470, 4, !mcsema_real_eip !79
  %472 = add i64 %468, %471, !mcsema_real_eip !79
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !79
  %474 = inttoptr i64 %472 to i32*, !mcsema_real_eip !79
  %475 = load i32, i32* %474, !mcsema_real_eip !79
  %476 = zext i32 %475 to i64, !mcsema_real_eip !79
  store i64 %476, i64* %XDX, !mcsema_real_eip !79
  %477 = add i64 %RBP_val.128, -84, !mcsema_real_eip !80
  %478 = inttoptr i64 %477 to i64*, !mcsema_real_eip !80
  %479 = inttoptr i64 %477 to i32*, !mcsema_real_eip !80
  %480 = load i32, i32* %479, !mcsema_real_eip !80
  %EDX.137 = bitcast i64* %XDX to i32*, !mcsema_real_eip !80
  %EDX_val.138 = load i32, i32* %EDX.137, !mcsema_real_eip !80
  %481 = add i32 %EDX_val.138, %480, !mcsema_real_eip !80
  %482 = xor i32 %481, %480, !mcsema_real_eip !80
  %483 = xor i32 %482, %EDX_val.138, !mcsema_real_eip !80
  %484 = and i32 %483, 16, !mcsema_real_eip !80
  %485 = icmp ne i32 %484, 0, !mcsema_real_eip !80
  store i1 %485, i1* %AF, !mcsema_real_eip !80
  %486 = lshr i32 %481, 31, !mcsema_real_eip !80
  %487 = trunc i32 %486 to i1, !mcsema_real_eip !80
  store i1 %487, i1* %SF, !mcsema_real_eip !80
  %488 = icmp eq i32 %481, 0, !mcsema_real_eip !80
  store i1 %488, i1* %ZF, !mcsema_real_eip !80
  %489 = xor i32 %480, %EDX_val.138, !mcsema_real_eip !80
  %490 = xor i32 %489, -1, !mcsema_real_eip !80
  %491 = and i32 %490, %482, !mcsema_real_eip !80
  %492 = lshr i32 %491, 31, !mcsema_real_eip !80
  %493 = and i32 %492, 1, !mcsema_real_eip !80
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !80
  store i1 %494, i1* %OF, !mcsema_real_eip !80
  %495 = trunc i32 %481 to i8, !mcsema_real_eip !80
  %496 = call i8 @llvm.ctpop.i8(i8 %495), !mcsema_real_eip !80
  %497 = trunc i8 %496 to i1, !mcsema_real_eip !80
  %498 = xor i1 %497, true, !mcsema_real_eip !80
  store i1 %498, i1* %PF, !mcsema_real_eip !80
  %499 = icmp ult i32 %481, %480, !mcsema_real_eip !80
  store i1 %499, i1* %CF, !mcsema_real_eip !80
  %500 = zext i32 %481 to i64, !mcsema_real_eip !80
  store i64 %500, i64* %XDX, !mcsema_real_eip !80
  %EDX_val.141 = load i32, i32* %EDX.137, !mcsema_real_eip !81
  store i32 %EDX_val.141, i32* %479, !mcsema_real_eip !81
  %RBP_val.142 = load i64, i64* %XBP, !mcsema_real_eip !82
  %501 = add i64 %RBP_val.142, -100, !mcsema_real_eip !82
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !82
  %503 = inttoptr i64 %501 to i32*, !mcsema_real_eip !82
  %504 = load i32, i32* %503, !mcsema_real_eip !82
  %505 = zext i32 %504 to i64, !mcsema_real_eip !82
  store i64 %505, i64* %XAX, !mcsema_real_eip !82
  %EAX_val.144 = load i32, i32* %EAX.44, !mcsema_real_eip !83
  %506 = add i32 1, %EAX_val.144, !mcsema_real_eip !83
  %507 = xor i32 %506, %EAX_val.144, !mcsema_real_eip !83
  %508 = xor i32 %507, 1, !mcsema_real_eip !83
  %509 = and i32 %508, 16, !mcsema_real_eip !83
  %510 = icmp ne i32 %509, 0, !mcsema_real_eip !83
  store i1 %510, i1* %AF, !mcsema_real_eip !83
  %511 = lshr i32 %506, 31, !mcsema_real_eip !83
  %512 = trunc i32 %511 to i1, !mcsema_real_eip !83
  store i1 %512, i1* %SF, !mcsema_real_eip !83
  %513 = icmp eq i32 %506, 0, !mcsema_real_eip !83
  store i1 %513, i1* %ZF, !mcsema_real_eip !83
  %514 = xor i32 %EAX_val.144, 1, !mcsema_real_eip !83
  %515 = xor i32 %514, -1, !mcsema_real_eip !83
  %516 = and i32 %515, %507, !mcsema_real_eip !83
  %517 = lshr i32 %516, 31, !mcsema_real_eip !83
  %518 = and i32 %517, 1, !mcsema_real_eip !83
  %519 = trunc i32 %518 to i1, !mcsema_real_eip !83
  store i1 %519, i1* %OF, !mcsema_real_eip !83
  %520 = trunc i32 %506 to i8, !mcsema_real_eip !83
  %521 = call i8 @llvm.ctpop.i8(i8 %520), !mcsema_real_eip !83
  %522 = trunc i8 %521 to i1, !mcsema_real_eip !83
  %523 = xor i1 %522, true, !mcsema_real_eip !83
  store i1 %523, i1* %PF, !mcsema_real_eip !83
  %524 = icmp ult i32 %506, %EAX_val.144, !mcsema_real_eip !83
  store i1 %524, i1* %CF, !mcsema_real_eip !83
  %525 = zext i32 %506 to i64, !mcsema_real_eip !83
  store i64 %525, i64* %XAX, !mcsema_real_eip !83
  %EAX_val.147 = load i32, i32* %EAX.44, !mcsema_real_eip !84
  store i32 %EAX_val.147, i32* %503, !mcsema_real_eip !84
  br label %block_0x108, !mcsema_real_eip !85

block_0x133:                                      ; preds = %block_0x108
  %526 = add i64 %RBP_val.128, -84, !mcsema_real_eip !86
  %527 = inttoptr i64 %526 to i64*, !mcsema_real_eip !86
  %528 = inttoptr i64 %526 to i32*, !mcsema_real_eip !86
  %529 = load i32, i32* %528, !mcsema_real_eip !86
  %530 = zext i32 %529 to i64, !mcsema_real_eip !86
  store i64 %530, i64* %XAX, !mcsema_real_eip !86
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !87
  %531 = inttoptr i64 %RSP_val.149 to i64*, !mcsema_real_eip !87
  %532 = load i64, i64* %531, !mcsema_real_eip !87
  store i64 %532, i64* %XBX, !mcsema_real_eip !87
  %533 = add i64 %RSP_val.149, 8, !mcsema_real_eip !87
  store i64 %533, i64* %XSP, !mcsema_real_eip !87
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !88
  %535 = load i64, i64* %534, !mcsema_real_eip !88
  store i64 %535, i64* %XBP, !mcsema_real_eip !88
  %536 = add i64 %533, 8, !mcsema_real_eip !88
  store i64 %536, i64* %XSP, !mcsema_real_eip !88
  %537 = add i64 %536, 8, !mcsema_real_eip !89
  %538 = inttoptr i64 %536 to i64*, !mcsema_real_eip !89
  %539 = load i64, i64* %538, !mcsema_real_eip !89
  store i64 %539, i64* %XIP, !mcsema_real_eip !89
  store i64 %537, i64* %XSP, !mcsema_real_eip !89
  ret void, !mcsema_real_eip !89
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_140(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 192
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 192
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !90
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !90
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !90
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !90
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !90
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !90
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !90
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !90
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !90
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !90
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !90
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !90
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !90
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !90
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !90
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !90
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !90
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !90
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !90
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !90
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !90
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !90
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !90
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !90
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !90
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !90
  br label %block_0x140, !mcsema_real_eip !90

block_0x140:                                      ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.153 = load i64, i64* %XSP, !mcsema_real_eip !90
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.153, 8, !mcsema_real_eip !90
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !90
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !91
  %R14_val.155 = load i64, i64* %R14, !mcsema_real_eip !92
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.156 = load i64, i64* %XSP, !mcsema_real_eip !92
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.156, 8, !mcsema_real_eip !92
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R14_val.155, i64* %_allin_new_bt_4, !mcsema_real_eip !92
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !92
  %RBX_val.157 = load i64, i64* %XBX, !mcsema_real_eip !93
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -8
  %3 = sub i64 %2, 8, !mcsema_real_eip !93
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %RBX_val.157, i64* %_allin_new_bt_7, !mcsema_real_eip !93
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !93
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_6, i64 -160
  %4 = sub i64 %3, 160, !mcsema_real_eip !94
  %_trans_p2i_ = ptrtoint i8* %_new_gep_9 to i64
  %_trans_p2i_10 = ptrtoint i8* %_new_gep_6 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_10
  %5 = xor i64 %_trans_xor_, 160, !mcsema_real_eip !94
  %6 = and i64 %5, 16, !mcsema_real_eip !94
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !94
  store i1 %7, i1* %AF, !mcsema_real_eip !94
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %8 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !94
  %9 = trunc i8 %8 to i1, !mcsema_real_eip !94
  %10 = xor i1 %9, true, !mcsema_real_eip !94
  store i1 %10, i1* %PF, !mcsema_real_eip !94
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !94
  %11 = lshr i64 %4, 63, !mcsema_real_eip !94
  %12 = trunc i64 %11 to i1, !mcsema_real_eip !94
  store i1 %12, i1* %SF, !mcsema_real_eip !94
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_10, 160
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !94
  %_trans_xor_15 = xor i64 %_trans_p2i_10, 160
  %13 = and i64 %_trans_xor_15, %_trans_xor_, !mcsema_real_eip !94
  %14 = lshr i64 %13, 63, !mcsema_real_eip !94
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !94
  store i1 %15, i1* %OF, !mcsema_real_eip !94
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_
  store i64 %4, i64* %XSP, !mcsema_real_eip !94
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !95
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !95
  store i32 0, i32* %17, !mcsema_real_eip !95
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !96
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !96
  store i32 1, i32* %19, !mcsema_real_eip !96
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -68
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !97
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !97
  store i32 0, i32* %21, !mcsema_real_eip !97
  br label %block_0x163, !mcsema_real_eip !98

block_0x163:                                      ; preds = %block_0x16d, %block_0x140
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -68
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !98
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !98
  %24 = load i32, i32* %23, !mcsema_real_eip !98
  %25 = sub i32 %24, 10, !mcsema_real_eip !98
  %26 = xor i32 %25, %24, !mcsema_real_eip !98
  %27 = xor i32 %26, 10, !mcsema_real_eip !98
  %28 = and i32 %27, 16, !mcsema_real_eip !98
  %29 = icmp ne i32 %28, 0, !mcsema_real_eip !98
  store i1 %29, i1* %AF, !mcsema_real_eip !98
  %30 = trunc i32 %25 to i8, !mcsema_real_eip !98
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !98
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !98
  %33 = xor i1 %32, true, !mcsema_real_eip !98
  store i1 %33, i1* %PF, !mcsema_real_eip !98
  %34 = icmp eq i32 %25, 0, !mcsema_real_eip !98
  store i1 %34, i1* %ZF, !mcsema_real_eip !98
  %35 = lshr i32 %25, 31, !mcsema_real_eip !98
  %36 = trunc i32 %35 to i1, !mcsema_real_eip !98
  store i1 %36, i1* %SF, !mcsema_real_eip !98
  %37 = icmp ult i32 %24, 10, !mcsema_real_eip !98
  store i1 %37, i1* %CF, !mcsema_real_eip !98
  %38 = xor i32 %24, 10, !mcsema_real_eip !98
  %39 = and i32 %38, %26, !mcsema_real_eip !98
  %40 = lshr i32 %39, 31, !mcsema_real_eip !98
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !98
  store i1 %41, i1* %OF, !mcsema_real_eip !98
  %42 = icmp eq i1 %36, %41, !mcsema_real_eip !99
  br i1 %42, label %block_0x189, label %block_0x16d, !mcsema_real_eip !99

block_0x16d:                                      ; preds = %block_0x163
  %43 = load i32, i32* %23, !mcsema_real_eip !100
  %44 = zext i32 %43 to i64, !mcsema_real_eip !100
  store i64 %44, i64* %XAX, !mcsema_real_eip !100
  %EAX.165 = bitcast i64* %XAX to i32*, !mcsema_real_eip !101
  %EAX_val.166 = load i32, i32* %EAX.165, !mcsema_real_eip !101
  %45 = add i32 1, %EAX_val.166, !mcsema_real_eip !101
  %46 = xor i32 %45, %EAX_val.166, !mcsema_real_eip !101
  %47 = xor i32 %46, 1, !mcsema_real_eip !101
  %48 = and i32 %47, 16, !mcsema_real_eip !101
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !101
  store i1 %49, i1* %AF, !mcsema_real_eip !101
  %50 = lshr i32 %45, 31, !mcsema_real_eip !101
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !101
  store i1 %51, i1* %SF, !mcsema_real_eip !101
  %52 = icmp eq i32 %45, 0, !mcsema_real_eip !101
  store i1 %52, i1* %ZF, !mcsema_real_eip !101
  %53 = xor i32 %EAX_val.166, 1, !mcsema_real_eip !101
  %54 = xor i32 %53, -1, !mcsema_real_eip !101
  %55 = and i32 %54, %46, !mcsema_real_eip !101
  %56 = lshr i32 %55, 31, !mcsema_real_eip !101
  %57 = and i32 %56, 1, !mcsema_real_eip !101
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !101
  store i1 %58, i1* %OF, !mcsema_real_eip !101
  %59 = trunc i32 %45 to i8, !mcsema_real_eip !101
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !101
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !101
  %62 = xor i1 %61, true, !mcsema_real_eip !101
  store i1 %62, i1* %PF, !mcsema_real_eip !101
  %63 = icmp ult i32 %45, %EAX_val.166, !mcsema_real_eip !101
  store i1 %63, i1* %CF, !mcsema_real_eip !101
  %64 = zext i32 %45 to i64, !mcsema_real_eip !101
  store i64 %64, i64* %XAX, !mcsema_real_eip !101
  %65 = load i32, i32* %23, !mcsema_real_eip !102
  %66 = sext i32 %65 to i64, !mcsema_real_eip !102
  store i64 %66, i64* %XCX, !mcsema_real_eip !102
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -64
  %67 = mul i64 %66, 4, !mcsema_real_eip !103
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_38, i64 %67
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %EAX_val.171 = load i32, i32* %EAX.165, !mcsema_real_eip !103
  %68 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !103
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !103
  store i32 %EAX_val.171, i32* %69, !mcsema_real_eip !103
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -68
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %70 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !104
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !104
  %72 = load i32, i32* %71, !mcsema_real_eip !104
  %73 = zext i32 %72 to i64, !mcsema_real_eip !104
  store i64 %73, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.174 = load i32, i32* %EAX.165, !mcsema_real_eip !105
  %74 = add i32 1, %EAX_val.174, !mcsema_real_eip !105
  %75 = xor i32 %74, %EAX_val.174, !mcsema_real_eip !105
  %76 = xor i32 %75, 1, !mcsema_real_eip !105
  %77 = and i32 %76, 16, !mcsema_real_eip !105
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !105
  store i1 %78, i1* %AF, !mcsema_real_eip !105
  %79 = lshr i32 %74, 31, !mcsema_real_eip !105
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !105
  store i1 %80, i1* %SF, !mcsema_real_eip !105
  %81 = icmp eq i32 %74, 0, !mcsema_real_eip !105
  store i1 %81, i1* %ZF, !mcsema_real_eip !105
  %82 = xor i32 %EAX_val.174, 1, !mcsema_real_eip !105
  %83 = xor i32 %82, -1, !mcsema_real_eip !105
  %84 = and i32 %83, %75, !mcsema_real_eip !105
  %85 = lshr i32 %84, 31, !mcsema_real_eip !105
  %86 = and i32 %85, 1, !mcsema_real_eip !105
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !105
  store i1 %87, i1* %OF, !mcsema_real_eip !105
  %88 = trunc i32 %74 to i8, !mcsema_real_eip !105
  %89 = call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !105
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !105
  %91 = xor i1 %90, true, !mcsema_real_eip !105
  store i1 %91, i1* %PF, !mcsema_real_eip !105
  %92 = icmp ult i32 %74, %EAX_val.174, !mcsema_real_eip !105
  store i1 %92, i1* %CF, !mcsema_real_eip !105
  %93 = zext i32 %74 to i64, !mcsema_real_eip !105
  store i64 %93, i64* %XAX, !mcsema_real_eip !105
  %EAX_val.177 = load i32, i32* %EAX.165, !mcsema_real_eip !106
  store i32 %EAX_val.177, i32* %71, !mcsema_real_eip !106
  br label %block_0x163, !mcsema_real_eip !107

block_0x189:                                      ; preds = %block_0x163
  store i64 40, i64* %XAX, !mcsema_real_eip !108
  %EAX.178 = bitcast i64* %XAX to i32*, !mcsema_real_eip !109
  %EAX_val.179 = load i32, i32* %EAX.178, !mcsema_real_eip !109
  %94 = zext i32 %EAX_val.179 to i64, !mcsema_real_eip !109
  store i64 %94, i64* %XDI, !mcsema_real_eip !109
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %95 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !110
  store i64 %95, i64* %XCX, !mcsema_real_eip !110
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -80
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  store i64 %95, i64* %_allin_new_bt_52, !mcsema_real_eip !111
  %RDI_val.183 = load i64, i64* %XDI, !mcsema_real_eip !112
  %_load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_
  %RSP_val.184 = load i64, i64* %XSP, !mcsema_real_eip !112
  %_new_gep_54 = getelementptr i8, i8* %_load_rsp_ptr_53, i64 -8
  %96 = sub i64 %RSP_val.184, 8, !mcsema_real_eip !112
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_55, !mcsema_real_eip !112
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %96, i64* %XSP, !mcsema_real_eip !112
  %97 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.183)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %97, i64* %XAX, !mcsema_real_eip !112
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -88
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  store i64 %97, i64* %_allin_new_bt_58, !mcsema_real_eip !113
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -92
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %98 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !114
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !114
  store i32 0, i32* %99, !mcsema_real_eip !114
  br label %block_0x1a8, !mcsema_real_eip !115

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -92
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %100 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !115
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !115
  %102 = load i32, i32* %101, !mcsema_real_eip !115
  %103 = sub i32 %102, 10, !mcsema_real_eip !115
  %104 = xor i32 %103, %102, !mcsema_real_eip !115
  %105 = xor i32 %104, 10, !mcsema_real_eip !115
  %106 = and i32 %105, 16, !mcsema_real_eip !115
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !115
  store i1 %107, i1* %AF, !mcsema_real_eip !115
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !115
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !115
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !115
  %111 = xor i1 %110, true, !mcsema_real_eip !115
  store i1 %111, i1* %PF, !mcsema_real_eip !115
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !115
  store i1 %112, i1* %ZF, !mcsema_real_eip !115
  %113 = lshr i32 %103, 31, !mcsema_real_eip !115
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !115
  store i1 %114, i1* %SF, !mcsema_real_eip !115
  %115 = icmp ult i32 %102, 10, !mcsema_real_eip !115
  store i1 %115, i1* %CF, !mcsema_real_eip !115
  %116 = xor i32 %102, 10, !mcsema_real_eip !115
  %117 = and i32 %116, %104, !mcsema_real_eip !115
  %118 = lshr i32 %117, 31, !mcsema_real_eip !115
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !115
  store i1 %119, i1* %OF, !mcsema_real_eip !115
  %120 = icmp eq i1 %114, %119, !mcsema_real_eip !116
  br i1 %120, label %block_0x1d1, label %block_0x1b2, !mcsema_real_eip !116

block_0x1b2:                                      ; preds = %block_0x1a8
  %121 = load i32, i32* %101, !mcsema_real_eip !117
  %122 = zext i32 %121 to i64, !mcsema_real_eip !117
  store i64 %122, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.191 = load i32, i32* %EAX.178, !mcsema_real_eip !118
  %123 = add i32 1, %EAX_val.191, !mcsema_real_eip !118
  %124 = xor i32 %123, %EAX_val.191, !mcsema_real_eip !118
  %125 = xor i32 %124, 1, !mcsema_real_eip !118
  %126 = and i32 %125, 16, !mcsema_real_eip !118
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !118
  store i1 %127, i1* %AF, !mcsema_real_eip !118
  %128 = lshr i32 %123, 31, !mcsema_real_eip !118
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !118
  store i1 %129, i1* %SF, !mcsema_real_eip !118
  %130 = icmp eq i32 %123, 0, !mcsema_real_eip !118
  store i1 %130, i1* %ZF, !mcsema_real_eip !118
  %131 = xor i32 %EAX_val.191, 1, !mcsema_real_eip !118
  %132 = xor i32 %131, -1, !mcsema_real_eip !118
  %133 = and i32 %132, %124, !mcsema_real_eip !118
  %134 = lshr i32 %133, 31, !mcsema_real_eip !118
  %135 = and i32 %134, 1, !mcsema_real_eip !118
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !118
  store i1 %136, i1* %OF, !mcsema_real_eip !118
  %137 = trunc i32 %123 to i8, !mcsema_real_eip !118
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !118
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !118
  %140 = xor i1 %139, true, !mcsema_real_eip !118
  store i1 %140, i1* %PF, !mcsema_real_eip !118
  %141 = icmp ult i32 %123, %EAX_val.191, !mcsema_real_eip !118
  store i1 %141, i1* %CF, !mcsema_real_eip !118
  %142 = zext i32 %123 to i64, !mcsema_real_eip !118
  store i64 %142, i64* %XAX, !mcsema_real_eip !118
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %143 = load i64, i64* %_allin_new_bt_70, !mcsema_real_eip !119
  store i64 %143, i64* %XCX, !mcsema_real_eip !119
  %144 = load i32, i32* %101, !mcsema_real_eip !120
  %145 = sext i32 %144 to i64, !mcsema_real_eip !120
  store i64 %145, i64* %XDX, !mcsema_real_eip !120
  %146 = mul i64 %145, 4, !mcsema_real_eip !121
  %147 = add i64 %143, %146, !mcsema_real_eip !121
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !121
  %EAX_val.197 = load i32, i32* %EAX.178, !mcsema_real_eip !121
  %149 = inttoptr i64 %147 to i32*, !mcsema_real_eip !121
  store i32 %EAX_val.197, i32* %149, !mcsema_real_eip !121
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -92
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %150 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !122
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !122
  %152 = load i32, i32* %151, !mcsema_real_eip !122
  %153 = zext i32 %152 to i64, !mcsema_real_eip !122
  store i64 %153, i64* %XAX, !mcsema_real_eip !122
  %EAX_val.200 = load i32, i32* %EAX.178, !mcsema_real_eip !123
  %154 = add i32 1, %EAX_val.200, !mcsema_real_eip !123
  %155 = xor i32 %154, %EAX_val.200, !mcsema_real_eip !123
  %156 = xor i32 %155, 1, !mcsema_real_eip !123
  %157 = and i32 %156, 16, !mcsema_real_eip !123
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !123
  store i1 %158, i1* %AF, !mcsema_real_eip !123
  %159 = lshr i32 %154, 31, !mcsema_real_eip !123
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !123
  store i1 %160, i1* %SF, !mcsema_real_eip !123
  %161 = icmp eq i32 %154, 0, !mcsema_real_eip !123
  store i1 %161, i1* %ZF, !mcsema_real_eip !123
  %162 = xor i32 %EAX_val.200, 1, !mcsema_real_eip !123
  %163 = xor i32 %162, -1, !mcsema_real_eip !123
  %164 = and i32 %163, %155, !mcsema_real_eip !123
  %165 = lshr i32 %164, 31, !mcsema_real_eip !123
  %166 = and i32 %165, 1, !mcsema_real_eip !123
  %167 = trunc i32 %166 to i1, !mcsema_real_eip !123
  store i1 %167, i1* %OF, !mcsema_real_eip !123
  %168 = trunc i32 %154 to i8, !mcsema_real_eip !123
  %169 = call i8 @llvm.ctpop.i8(i8 %168), !mcsema_real_eip !123
  %170 = trunc i8 %169 to i1, !mcsema_real_eip !123
  %171 = xor i1 %170, true, !mcsema_real_eip !123
  store i1 %171, i1* %PF, !mcsema_real_eip !123
  %172 = icmp ult i32 %154, %EAX_val.200, !mcsema_real_eip !123
  store i1 %172, i1* %CF, !mcsema_real_eip !123
  %173 = zext i32 %154 to i64, !mcsema_real_eip !123
  store i64 %173, i64* %XAX, !mcsema_real_eip !123
  %EAX_val.203 = load i32, i32* %EAX.178, !mcsema_real_eip !124
  store i32 %EAX_val.203, i32* %151, !mcsema_real_eip !124
  br label %block_0x1a8, !mcsema_real_eip !125

block_0x1d1:                                      ; preds = %block_0x1a8
  store i64 10, i64* %XAX, !mcsema_real_eip !126
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -64
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %174 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !127
  store i64 %174, i64* %XCX, !mcsema_real_eip !127
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -24
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %175 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !128
  %176 = inttoptr i64 %175 to i32*, !mcsema_real_eip !128
  %177 = load i32, i32* %176, !mcsema_real_eip !128
  %178 = zext i32 %177 to i64, !mcsema_real_eip !128
  store i64 %178, i64* %XDI, !mcsema_real_eip !128
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -80
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %179 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !129
  store i64 %179, i64* %XDX, !mcsema_real_eip !129
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %180 = load i64, i64* %_allin_new_bt_91, !mcsema_real_eip !130
  store i64 %180, i64* %XSI, !mcsema_real_eip !130
  %181 = load i32, i32* %176, !mcsema_real_eip !131
  %182 = zext i32 %181 to i64, !mcsema_real_eip !131
  store i64 %182, i64* %R8, !mcsema_real_eip !131
  %183 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !132
  store i64 %183, i64* %R9, !mcsema_real_eip !132
  %184 = load i64, i64* %_allin_new_bt_91, !mcsema_real_eip !133
  store i64 %184, i64* %R10, !mcsema_real_eip !133
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -104
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 %180, i64* %_allin_new_bt_103, !mcsema_real_eip !134
  %RCX_val.213 = load i64, i64* %XCX, !mcsema_real_eip !135
  store i64 %RCX_val.213, i64* %XSI, !mcsema_real_eip !135
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -104
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %185 = load i64, i64* %_allin_new_bt_106, !mcsema_real_eip !136
  store i64 %185, i64* %R11, !mcsema_real_eip !136
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -112
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 %RCX_val.213, i64* %_allin_new_bt_109, !mcsema_real_eip !137
  %R11_val.217 = load i64, i64* %R11, !mcsema_real_eip !138
  store i64 %R11_val.217, i64* %XCX, !mcsema_real_eip !138
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -116
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %R8D.219 = bitcast i64* %R8 to i32*, !mcsema_real_eip !139
  %R8D_val.220 = load i32, i32* %R8D.219, !mcsema_real_eip !139
  %186 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !139
  %187 = inttoptr i64 %186 to i32*, !mcsema_real_eip !139
  store i32 %R8D_val.220, i32* %187, !mcsema_real_eip !139
  %EAX_val.222 = load i32, i32* %EAX.178, !mcsema_real_eip !140
  %188 = zext i32 %EAX_val.222 to i64, !mcsema_real_eip !140
  store i64 %188, i64* %R8, !mcsema_real_eip !140
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -128
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %R9_val.224 = load i64, i64* %R9, !mcsema_real_eip !141
  store i64 %R9_val.224, i64* %_allin_new_bt_115, !mcsema_real_eip !141
  %EAX_val.226 = load i32, i32* %EAX.178, !mcsema_real_eip !142
  %189 = zext i32 %EAX_val.226 to i64, !mcsema_real_eip !142
  store i64 %189, i64* %R9, !mcsema_real_eip !142
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -116
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %190 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !143
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !143
  %192 = load i32, i32* %191, !mcsema_real_eip !143
  %193 = zext i32 %192 to i64, !mcsema_real_eip !143
  store i64 %193, i64* %XAX, !mcsema_real_eip !143
  %_load_rsp_ptr_119 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_121 = bitcast i8* %_load_rsp_ptr_119 to i64*
  %EAX_val.230 = load i32, i32* %EAX.178, !mcsema_real_eip !144
  %194 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !144
  %195 = inttoptr i64 %194 to i32*, !mcsema_real_eip !144
  store i32 %EAX_val.230, i32* %195, !mcsema_real_eip !144
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -112
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %196 = load i64, i64* %_allin_new_bt_124, !mcsema_real_eip !145
  store i64 %196, i64* %XBX, !mcsema_real_eip !145
  %_load_rsp_ptr_125 = load i8*, i8** %_RSP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rsp_ptr_125, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  store i64 %196, i64* %_allin_new_bt_127, !mcsema_real_eip !146
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -128
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %197 = load i64, i64* %_allin_new_bt_130, !mcsema_real_eip !147
  store i64 %197, i64* %R14, !mcsema_real_eip !147
  %_load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rsp_ptr_131, i64 16
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 %197, i64* %_allin_new_bt_133, !mcsema_real_eip !148
  %_load_rsp_ptr_134 = load i8*, i8** %_RSP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rsp_ptr_134, i64 24
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %R10_val.238 = load i64, i64* %R10, !mcsema_real_eip !149
  store i64 %R10_val.238, i64* %_allin_new_bt_136, !mcsema_real_eip !149
  %_load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_
  %RSP_val.239 = load i64, i64* %XSP, !mcsema_real_eip !150
  %_new_gep_138 = getelementptr i8, i8* %_load_rsp_ptr_137, i64 -8
  %198 = sub i64 %RSP_val.239, 8, !mcsema_real_eip !150
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_139, !mcsema_real_eip !150
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_
  store i64 %198, i64* %XSP, !mcsema_real_eip !150
  %_load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_138, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_203)
  %_rsp_fix_205 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_206 = getelementptr i8, i8* %_rsp_fix_205, i64 8
  store i8* %_gep_fix_206, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, !mcsema_real_eip !151
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -96
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %EAX_val.242 = load i32, i32* %EAX.178, !mcsema_real_eip !152
  %199 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !152
  %200 = inttoptr i64 %199 to i32*, !mcsema_real_eip !152
  store i32 %EAX_val.242, i32* %200, !mcsema_real_eip !152
  %_load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -96
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %201 = ptrtoint i64* %_allin_new_bt_145 to i64, !mcsema_real_eip !153
  %202 = inttoptr i64 %201 to i32*, !mcsema_real_eip !153
  %203 = load i32, i32* %202, !mcsema_real_eip !153
  %204 = zext i32 %203 to i64, !mcsema_real_eip !153
  store i64 %204, i64* %XSI, !mcsema_real_eip !153
  %AL.244 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.244, !mcsema_real_eip !154
  %RDI_val.245 = load i64, i64* %XDI, !mcsema_real_eip !155
  %RDX_val.247 = load i64, i64* %XDX, !mcsema_real_eip !155
  %RCX_val.248 = load i64, i64* %XCX, !mcsema_real_eip !155
  %R8_val.249 = load i64, i64* %R8, !mcsema_real_eip !155
  %R9_val.250 = load i64, i64* %R9, !mcsema_real_eip !155
  %_load_rsp_ptr_146 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_147 = bitcast i8* %_load_rsp_ptr_146 to i64*
  %205 = load i64, i64* %_allin_new_bt_147, !mcsema_real_eip !155
  %_new_gep_148 = getelementptr i8, i8* %_load_rsp_ptr_146, i64 8
  %_allin_new_bt_149 = bitcast i8* %_new_gep_148 to i64*
  %206 = load i64, i64* %_allin_new_bt_149, !mcsema_real_eip !155
  %_new_gep_150 = getelementptr i8, i8* %_new_gep_148, i64 8
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %207 = load i64, i64* %_allin_new_bt_151, !mcsema_real_eip !155
  %_new_gep_152 = getelementptr i8, i8* %_new_gep_150, i64 8
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %208 = load i64, i64* %_allin_new_bt_153, !mcsema_real_eip !155
  %_new_gep_154 = getelementptr i8, i8* %_new_gep_152, i64 8
  %_allin_new_bt_155 = bitcast i8* %_new_gep_154 to i64*
  %209 = load i64, i64* %_allin_new_bt_155, !mcsema_real_eip !155
  %_new_gep_156 = getelementptr i8, i8* %_new_gep_154, i64 8
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %210 = load i64, i64* %_allin_new_bt_157, !mcsema_real_eip !155
  %_new_gep_158 = getelementptr i8, i8* %_new_gep_156, i64 8
  %_allin_new_bt_159 = bitcast i8* %_new_gep_158 to i64*
  %211 = load i64, i64* %_allin_new_bt_159, !mcsema_real_eip !155
  %_new_gep_160 = getelementptr i8, i8* %_new_gep_158, i64 8
  %_allin_new_bt_161 = bitcast i8* %_new_gep_160 to i64*
  %212 = load i64, i64* %_allin_new_bt_161, !mcsema_real_eip !155
  %_new_gep_162 = getelementptr i8, i8* %_new_gep_160, i64 8
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %213 = load i64, i64* %_allin_new_bt_163, !mcsema_real_eip !155
  %_new_gep_164 = getelementptr i8, i8* %_new_gep_162, i64 8
  %_allin_new_bt_165 = bitcast i8* %_new_gep_164 to i64*
  %214 = load i64, i64* %_allin_new_bt_165, !mcsema_real_eip !155
  %RSP_val.252 = load i64, i64* %XSP, !mcsema_real_eip !155
  %_new_gep_167 = getelementptr i8, i8* %_load_rsp_ptr_146, i64 -8
  %215 = sub i64 %RSP_val.252, 8, !mcsema_real_eip !155
  %_allin_new_bt_168 = bitcast i8* %_new_gep_167 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_168, !mcsema_real_eip !155
  store volatile i8* %_new_gep_167, i8** %_RSP_ptr_
  store i64 %215, i64* %XSP, !mcsema_real_eip !155
  %216 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.245, i64 %204, i64 %RDX_val.247, i64 %RCX_val.248, i64 %R8_val.249, i64 %R9_val.250, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %_rsp_fix_207 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_208 = getelementptr i8, i8* %_rsp_fix_207, i64 8
  store i8* %_gep_fix_208, i8** %_RSP_ptr_
  store i64 %216, i64* %XAX, !mcsema_real_eip !155
  %_load_rbp_ptr_169 = load i8*, i8** %_RBP_ptr_
  %_new_gep_170 = getelementptr i8, i8* %_load_rbp_ptr_169, i64 -96
  %_allin_new_bt_171 = bitcast i8* %_new_gep_170 to i64*
  %217 = ptrtoint i64* %_allin_new_bt_171 to i64, !mcsema_real_eip !156
  %218 = inttoptr i64 %217 to i32*, !mcsema_real_eip !156
  %219 = load i32, i32* %218, !mcsema_real_eip !156
  %220 = zext i32 %219 to i64, !mcsema_real_eip !156
  store i64 %220, i64* %XSI, !mcsema_real_eip !156
  %_new_gep_173 = getelementptr i8, i8* %_load_rbp_ptr_169, i64 -132
  %_allin_new_bt_174 = bitcast i8* %_new_gep_173 to i64*
  %EAX_val.256 = load i32, i32* %EAX.178, !mcsema_real_eip !157
  %221 = ptrtoint i64* %_allin_new_bt_174 to i64, !mcsema_real_eip !157
  %222 = inttoptr i64 %221 to i32*, !mcsema_real_eip !157
  store i32 %EAX_val.256, i32* %222, !mcsema_real_eip !157
  %ESI.257 = bitcast i64* %XSI to i32*, !mcsema_real_eip !158
  %ESI_val.258 = load i32, i32* %ESI.257, !mcsema_real_eip !158
  %223 = zext i32 %ESI_val.258 to i64, !mcsema_real_eip !158
  store i64 %223, i64* %XAX, !mcsema_real_eip !158
  %_load_rsp_ptr_175 = load i8*, i8** %_RSP_ptr_
  %RSP_val.259 = load i64, i64* %XSP, !mcsema_real_eip !159
  %_new_gep_176 = getelementptr i8, i8* %_load_rsp_ptr_175, i64 160
  %224 = add i64 160, %RSP_val.259, !mcsema_real_eip !159
  %_trans_p2i_177 = ptrtoint i8* %_new_gep_176 to i64
  %_trans_p2i_178 = ptrtoint i8* %_load_rsp_ptr_175 to i64
  %_trans_xor_179 = xor i64 %_trans_p2i_177, %_trans_p2i_178
  %225 = xor i64 %_trans_xor_179, 160, !mcsema_real_eip !159
  %226 = and i64 %225, 16, !mcsema_real_eip !159
  %227 = icmp ne i64 %226, 0, !mcsema_real_eip !159
  store i1 %227, i1* %AF, !mcsema_real_eip !159
  %228 = lshr i64 %224, 63, !mcsema_real_eip !159
  %229 = trunc i64 %228 to i1, !mcsema_real_eip !159
  store i1 %229, i1* %SF, !mcsema_real_eip !159
  %_trans_icmp_eq_181 = icmp eq i64 %_trans_p2i_177, 0
  store i1 %_trans_icmp_eq_181, i1* %ZF, !mcsema_real_eip !159
  %_trans_xor_183 = xor i64 %_trans_p2i_178, 160
  %230 = xor i64 %_trans_xor_183, -1, !mcsema_real_eip !159
  %231 = and i64 %230, %_trans_xor_179, !mcsema_real_eip !159
  %232 = lshr i64 %231, 63, !mcsema_real_eip !159
  %233 = and i64 %232, 1, !mcsema_real_eip !159
  %234 = trunc i64 %233 to i1, !mcsema_real_eip !159
  store i1 %234, i1* %OF, !mcsema_real_eip !159
  %_trans_trunc_188 = trunc i64 %_trans_p2i_177 to i8
  %235 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_188), !mcsema_real_eip !159
  %236 = trunc i8 %235 to i1, !mcsema_real_eip !159
  %237 = xor i1 %236, true, !mcsema_real_eip !159
  store i1 %237, i1* %PF, !mcsema_real_eip !159
  %_trans_icmp_ne_190 = icmp ne i64 %_trans_p2i_177, %RSP_val.259
  store i1 %_trans_icmp_ne_190, i1* %CF, !mcsema_real_eip !159
  store volatile i8* %_new_gep_176, i8** %_RSP_ptr_
  store i64 %224, i64* %XSP, !mcsema_real_eip !159
  %_allin_new_bt_192 = bitcast i8* %_new_gep_176 to i64*
  %238 = load i64, i64* %_allin_new_bt_192, !mcsema_real_eip !160
  store i64 %238, i64* %XBX, !mcsema_real_eip !160
  %_new_gep_193 = getelementptr i8, i8* %_new_gep_176, i64 8
  %239 = add i64 %224, 8, !mcsema_real_eip !160
  store volatile i8* %_new_gep_193, i8** %_RSP_ptr_
  store i64 %239, i64* %XSP, !mcsema_real_eip !160
  %_allin_new_bt_195 = bitcast i8* %_new_gep_193 to i64*
  %240 = load i64, i64* %_allin_new_bt_195, !mcsema_real_eip !161
  store i64 %240, i64* %R14, !mcsema_real_eip !161
  %_new_gep_196 = getelementptr i8, i8* %_new_gep_193, i64 8
  %241 = add i64 %239, 8, !mcsema_real_eip !161
  store volatile i8* %_new_gep_196, i8** %_RSP_ptr_
  store i64 %241, i64* %XSP, !mcsema_real_eip !161
  %_allin_new_bt_198 = bitcast i8* %_new_gep_196 to i64*
  %242 = load i64, i64* %_allin_new_bt_198, !mcsema_real_eip !162
  %_new_int2ptr_ = inttoptr i64 %242 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %242, i64* %XBP, !mcsema_real_eip !162
  %_new_gep_199 = getelementptr i8, i8* %_new_gep_196, i64 8
  %243 = add i64 %241, 8, !mcsema_real_eip !162
  store volatile i8* %_new_gep_199, i8** %_RSP_ptr_
  store i64 %243, i64* %XSP, !mcsema_real_eip !162
  %_new_gep_201 = getelementptr i8, i8* %_new_gep_199, i64 8
  %244 = add i64 %243, 8, !mcsema_real_eip !163
  %_allin_new_bt_202 = bitcast i8* %_new_gep_199 to i64*
  %245 = load i64, i64* %_allin_new_bt_202, !mcsema_real_eip !163
  store i64 %245, i64* %XIP, !mcsema_real_eip !163
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_
  store i64 %244, i64* %XSP, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 108
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 108
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.3, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 40
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_7 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %3, label %4

; <label>:3:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %4

; <label>:4:                                      ; preds = %block_0x0, %3
  %5 = phi i64* [ %_allin_new_bt_7, %block_0x0 ], [ %_address_in_parent_stack_bt_, %3 ]
  %_new_load_ = load i64, i64* %5
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 32
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %_ptr_to_int_206 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_offset_above_rbp_209 = sub i64 %_ptr_to_int_206, %_local_end_to_int_
  %_pot_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_209
  %_cond1_211 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_212 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_213 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_214 = or i1 %_cond2_1_212, %_cond2_2_213
  %_cond4_215 = icmp ule i8* %_pot_address_in_parent_stack_210, %_parent_stack_end_ptr_
  %_cond1_n_cond2_216 = and i1 %_cond1_211, %_cond2_214
  %_cond1_n_cond2_cond3_217 = and i1 %_cond1_n_cond2_216, %_cond4_215
  br i1 %_cond1_n_cond2_cond3_217, label %6, label %7

; <label>:6:                                      ; preds = %4
  %_address_in_parent_stack_bt_219 = bitcast i8* %_pot_address_in_parent_stack_210 to i64*
  br label %7

; <label>:7:                                      ; preds = %4, %6
  %8 = phi i64* [ %_allin_new_bt_10, %4 ], [ %_address_in_parent_stack_bt_219, %6 ]
  %_new_load_220 = load i64, i64* %8
  store i64 %_new_load_220, i64* %R10, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %_ptr_to_int_221 = ptrtoint i64* %_allin_new_bt_13 to i64
  %_offset_above_rbp_224 = sub i64 %_ptr_to_int_221, %_local_end_to_int_
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_224
  %_cond1_226 = icmp ugt i8* %_new_gep_12, %_local_stack_end_ptr_
  %_cond2_1_227 = icmp ugt i8* %_new_gep_12, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %_new_gep_12, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond1_n_cond2_231, %_cond4_230
  br i1 %_cond1_n_cond2_cond3_232, label %9, label %10

; <label>:9:                                      ; preds = %7
  %_address_in_parent_stack_bt_234 = bitcast i8* %_pot_address_in_parent_stack_225 to i64*
  br label %10

; <label>:10:                                     ; preds = %7, %9
  %11 = phi i64* [ %_allin_new_bt_13, %7 ], [ %_address_in_parent_stack_bt_234, %9 ]
  %_new_load_235 = load i64, i64* %11
  store i64 %_new_load_235, i64* %R11, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %12 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !8
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !8
  %_ptr_bt_238 = bitcast i32* %13 to i8*
  %_offset_above_rbp_239 = sub i64 %12, %_local_end_to_int_
  %_pot_address_in_parent_stack_240 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_239
  %_cond1_241 = icmp ugt i8* %_ptr_bt_238, %_local_stack_end_ptr_
  %_cond2_1_242 = icmp ugt i8* %_ptr_bt_238, %_parent_stack_end_ptr_
  %_cond2_2_243 = icmp ult i8* %_ptr_bt_238, %_parent_stack_start_ptr_
  %_cond2_244 = or i1 %_cond2_1_242, %_cond2_2_243
  %_cond4_245 = icmp ule i8* %_pot_address_in_parent_stack_240, %_parent_stack_end_ptr_
  %_cond1_n_cond2_246 = and i1 %_cond1_241, %_cond2_244
  %_cond1_n_cond2_cond3_247 = and i1 %_cond1_n_cond2_246, %_cond4_245
  br i1 %_cond1_n_cond2_cond3_247, label %14, label %15

; <label>:14:                                     ; preds = %10
  %_address_in_parent_stack_bt_249 = bitcast i8* %_pot_address_in_parent_stack_240 to i32*
  br label %15

; <label>:15:                                     ; preds = %10, %14
  %16 = phi i32* [ %13, %10 ], [ %_address_in_parent_stack_bt_249, %14 ]
  %_new_load_250 = load i32, i32* %16
  %17 = zext i32 %_new_load_250 to i64, !mcsema_real_eip !8
  store i64 %17, i64* %XBX, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !9
  %18 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !9
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %19, !mcsema_real_eip !9
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !10
  store i64 %RSI_val.13, i64* %_allin_new_bt_22, !mcsema_real_eip !10
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -32
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %RDX_val.15 = load i64, i64* %XDX, !mcsema_real_eip !11
  store i64 %RDX_val.15, i64* %_allin_new_bt_25, !mcsema_real_eip !11
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -40
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %RCX_val.17 = load i64, i64* %XCX, !mcsema_real_eip !12
  store i64 %RCX_val.17, i64* %_allin_new_bt_28, !mcsema_real_eip !12
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -44
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.20 = load i32, i32* %R8D.19, !mcsema_real_eip !13
  %20 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !13
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.20, i32* %21, !mcsema_real_eip !13
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -48
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.23 = load i32, i32* %R9D.22, !mcsema_real_eip !14
  %22 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !14
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.23, i32* %23, !mcsema_real_eip !14
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -52
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !15
  %24 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !15
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.26, i32* %25, !mcsema_real_eip !15
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -64
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %R11_val.28 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %R11_val.28, i64* %_allin_new_bt_40, !mcsema_real_eip !16
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -72
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %R10_val.30 = load i64, i64* %R10, !mcsema_real_eip !17
  store i64 %R10_val.30, i64* %_allin_new_bt_43, !mcsema_real_eip !17
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -80
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %RAX_val.32 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.32, i64* %_allin_new_bt_46, !mcsema_real_eip !18
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -84
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !19
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %27, !mcsema_real_eip !19
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -12
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %28 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !20
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !20
  %_ptr_bt_253 = bitcast i32* %29 to i8*
  %_offset_above_rbp_254 = sub i64 %28, %_local_end_to_int_
  %_pot_address_in_parent_stack_255 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_254
  %_cond1_256 = icmp ugt i8* %_ptr_bt_253, %_local_stack_end_ptr_
  %_cond2_1_257 = icmp ugt i8* %_ptr_bt_253, %_parent_stack_end_ptr_
  %_cond2_2_258 = icmp ult i8* %_ptr_bt_253, %_parent_stack_start_ptr_
  %_cond2_259 = or i1 %_cond2_1_257, %_cond2_2_258
  %_cond4_260 = icmp ule i8* %_pot_address_in_parent_stack_255, %_parent_stack_end_ptr_
  %_cond1_n_cond2_261 = and i1 %_cond1_256, %_cond2_259
  %_cond1_n_cond2_cond3_262 = and i1 %_cond1_n_cond2_261, %_cond4_260
  br i1 %_cond1_n_cond2_cond3_262, label %30, label %31

; <label>:30:                                     ; preds = %15
  %_address_in_parent_stack_bt_264 = bitcast i8* %_pot_address_in_parent_stack_255 to i32*
  br label %31

; <label>:31:                                     ; preds = %15, %30
  %32 = phi i32* [ %29, %15 ], [ %_address_in_parent_stack_bt_264, %30 ]
  %_new_load_265 = load i32, i32* %32
  %33 = zext i32 %_new_load_265 to i64, !mcsema_real_eip !20
  store i64 %33, i64* %XDI, !mcsema_real_eip !20
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -84
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %34 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !21
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !21
  %_ptr_bt_268 = bitcast i32* %35 to i8*
  %_offset_above_rbp_269 = sub i64 %34, %_local_end_to_int_
  %_pot_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_269
  %_cond1_271 = icmp ugt i8* %_ptr_bt_268, %_local_stack_end_ptr_
  %_cond2_1_272 = icmp ugt i8* %_ptr_bt_268, %_parent_stack_end_ptr_
  %_cond2_2_273 = icmp ult i8* %_ptr_bt_268, %_parent_stack_start_ptr_
  %_cond2_274 = or i1 %_cond2_1_272, %_cond2_2_273
  %_cond4_275 = icmp ule i8* %_pot_address_in_parent_stack_270, %_parent_stack_end_ptr_
  %_cond1_n_cond2_276 = and i1 %_cond1_271, %_cond2_274
  %_cond1_n_cond2_cond3_277 = and i1 %_cond1_n_cond2_276, %_cond4_275
  br i1 %_cond1_n_cond2_cond3_277, label %36, label %37

; <label>:36:                                     ; preds = %31
  %_address_in_parent_stack_bt_279 = bitcast i8* %_pot_address_in_parent_stack_270 to i32*
  br label %37

; <label>:37:                                     ; preds = %31, %36
  %38 = phi i32* [ %35, %31 ], [ %_address_in_parent_stack_bt_279, %36 ]
  %_new_load_280 = load i32, i32* %38
  %EDI_val.37 = load i32, i32* %EDI.10, !mcsema_real_eip !21
  %39 = add i32 %EDI_val.37, %_new_load_280, !mcsema_real_eip !21
  %40 = xor i32 %39, %_new_load_280, !mcsema_real_eip !21
  %41 = xor i32 %40, %EDI_val.37, !mcsema_real_eip !21
  %42 = and i32 %41, 16, !mcsema_real_eip !21
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !21
  store i1 %43, i1* %AF, !mcsema_real_eip !21
  %44 = lshr i32 %39, 31, !mcsema_real_eip !21
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !21
  store i1 %45, i1* %SF, !mcsema_real_eip !21
  %46 = icmp eq i32 %39, 0, !mcsema_real_eip !21
  store i1 %46, i1* %ZF, !mcsema_real_eip !21
  %47 = xor i32 %_new_load_280, %EDI_val.37, !mcsema_real_eip !21
  %48 = xor i32 %47, -1, !mcsema_real_eip !21
  %49 = and i32 %48, %40, !mcsema_real_eip !21
  %50 = lshr i32 %49, 31, !mcsema_real_eip !21
  %51 = and i32 %50, 1, !mcsema_real_eip !21
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !21
  store i1 %52, i1* %OF, !mcsema_real_eip !21
  %53 = trunc i32 %39 to i8, !mcsema_real_eip !21
  %54 = call i8 @llvm.ctpop.i8(i8 %53), !mcsema_real_eip !21
  %55 = trunc i8 %54 to i1, !mcsema_real_eip !21
  %56 = xor i1 %55, true, !mcsema_real_eip !21
  store i1 %56, i1* %PF, !mcsema_real_eip !21
  %57 = icmp ult i32 %39, %_new_load_280, !mcsema_real_eip !21
  store i1 %57, i1* %CF, !mcsema_real_eip !21
  %58 = zext i32 %39 to i64, !mcsema_real_eip !21
  store i64 %58, i64* %XDI, !mcsema_real_eip !21
  %EDI_val.40 = load i32, i32* %EDI.10, !mcsema_real_eip !22
  store i32 %EDI_val.40, i32* %35, !mcsema_real_eip !22
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -88
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %59 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !23
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !23
  store i32 0, i32* %60, !mcsema_real_eip !23
  br label %block_0x51, !mcsema_real_eip !24

block_0x51:                                       ; preds = %133, %37
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %61 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !24
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !24
  %_ptr_bt_283 = bitcast i32* %62 to i8*
  %_offset_above_rbp_284 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_285 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_284
  %_cond1_286 = icmp ugt i8* %_ptr_bt_283, %_local_stack_end_ptr_
  %_cond2_1_287 = icmp ugt i8* %_ptr_bt_283, %_parent_stack_end_ptr_
  %_cond2_2_288 = icmp ult i8* %_ptr_bt_283, %_parent_stack_start_ptr_
  %_cond2_289 = or i1 %_cond2_1_287, %_cond2_2_288
  %_cond4_290 = icmp ule i8* %_pot_address_in_parent_stack_285, %_parent_stack_end_ptr_
  %_cond1_n_cond2_291 = and i1 %_cond1_286, %_cond2_289
  %_cond1_n_cond2_cond3_292 = and i1 %_cond1_n_cond2_291, %_cond4_290
  br i1 %_cond1_n_cond2_cond3_292, label %63, label %64

; <label>:63:                                     ; preds = %block_0x51
  %_address_in_parent_stack_bt_294 = bitcast i8* %_pot_address_in_parent_stack_285 to i32*
  br label %64

; <label>:64:                                     ; preds = %block_0x51, %63
  %65 = phi i32* [ %62, %block_0x51 ], [ %_address_in_parent_stack_bt_294, %63 ]
  %_new_load_295 = load i32, i32* %65
  %66 = zext i32 %_new_load_295 to i64, !mcsema_real_eip !24
  store i64 %66, i64* %XAX, !mcsema_real_eip !24
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -44
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !25
  %67 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !25
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !25
  %_ptr_bt_298 = bitcast i32* %68 to i8*
  %_offset_above_rbp_299 = sub i64 %67, %_local_end_to_int_
  %_pot_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_299
  %_cond1_301 = icmp ugt i8* %_ptr_bt_298, %_local_stack_end_ptr_
  %_cond2_1_302 = icmp ugt i8* %_ptr_bt_298, %_parent_stack_end_ptr_
  %_cond2_2_303 = icmp ult i8* %_ptr_bt_298, %_parent_stack_start_ptr_
  %_cond2_304 = or i1 %_cond2_1_302, %_cond2_2_303
  %_cond4_305 = icmp ule i8* %_pot_address_in_parent_stack_300, %_parent_stack_end_ptr_
  %_cond1_n_cond2_306 = and i1 %_cond1_301, %_cond2_304
  %_cond1_n_cond2_cond3_307 = and i1 %_cond1_n_cond2_306, %_cond4_305
  br i1 %_cond1_n_cond2_cond3_307, label %69, label %70

; <label>:69:                                     ; preds = %64
  %_address_in_parent_stack_bt_309 = bitcast i8* %_pot_address_in_parent_stack_300 to i32*
  br label %70

; <label>:70:                                     ; preds = %64, %69
  %71 = phi i32* [ %68, %64 ], [ %_address_in_parent_stack_bt_309, %69 ]
  %_new_load_310 = load i32, i32* %71
  %72 = sub i32 %EAX_val.45, %_new_load_310, !mcsema_real_eip !25
  %73 = xor i32 %72, %EAX_val.45, !mcsema_real_eip !25
  %74 = xor i32 %73, %_new_load_310, !mcsema_real_eip !25
  %75 = and i32 %74, 16, !mcsema_real_eip !25
  %76 = icmp ne i32 %75, 0, !mcsema_real_eip !25
  store i1 %76, i1* %AF, !mcsema_real_eip !25
  %77 = trunc i32 %72 to i8, !mcsema_real_eip !25
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !25
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !25
  %80 = xor i1 %79, true, !mcsema_real_eip !25
  store i1 %80, i1* %PF, !mcsema_real_eip !25
  %81 = icmp eq i32 %72, 0, !mcsema_real_eip !25
  store i1 %81, i1* %ZF, !mcsema_real_eip !25
  %82 = lshr i32 %72, 31, !mcsema_real_eip !25
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !25
  store i1 %83, i1* %SF, !mcsema_real_eip !25
  %84 = icmp ult i32 %EAX_val.45, %_new_load_310, !mcsema_real_eip !25
  store i1 %84, i1* %CF, !mcsema_real_eip !25
  %85 = xor i32 %EAX_val.45, %_new_load_310, !mcsema_real_eip !25
  %86 = and i32 %85, %73, !mcsema_real_eip !25
  %87 = lshr i32 %86, 31, !mcsema_real_eip !25
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !25
  store i1 %88, i1* %OF, !mcsema_real_eip !25
  %89 = icmp eq i1 %83, %88, !mcsema_real_eip !26
  br i1 %89, label %block_0x7c, label %block_0x5d, !mcsema_real_eip !26

block_0x5d:                                       ; preds = %70
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -24
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %_ptr_to_int_311 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_314 = sub i64 %_ptr_to_int_311, %_local_end_to_int_
  %_pot_address_in_parent_stack_315 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_314
  %_cond1_316 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_317 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_318 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_319 = or i1 %_cond2_1_317, %_cond2_2_318
  %_cond4_320 = icmp ule i8* %_pot_address_in_parent_stack_315, %_parent_stack_end_ptr_
  %_cond1_n_cond2_321 = and i1 %_cond1_316, %_cond2_319
  %_cond1_n_cond2_cond3_322 = and i1 %_cond1_n_cond2_321, %_cond4_320
  br i1 %_cond1_n_cond2_cond3_322, label %90, label %91

; <label>:90:                                     ; preds = %block_0x5d
  %_address_in_parent_stack_bt_324 = bitcast i8* %_pot_address_in_parent_stack_315 to i64*
  br label %91

; <label>:91:                                     ; preds = %block_0x5d, %90
  %92 = phi i64* [ %_allin_new_bt_70, %block_0x5d ], [ %_address_in_parent_stack_bt_324, %90 ]
  %_new_load_325 = load i64, i64* %92
  store i64 %_new_load_325, i64* %XAX, !mcsema_real_eip !27
  br i1 %_cond1_n_cond2_cond3_292, label %93, label %94

; <label>:93:                                     ; preds = %91
  %_address_in_parent_stack_bt_339 = bitcast i8* %_pot_address_in_parent_stack_285 to i32*
  br label %94

; <label>:94:                                     ; preds = %91, %93
  %95 = phi i32* [ %62, %91 ], [ %_address_in_parent_stack_bt_339, %93 ]
  %_new_load_340 = load i32, i32* %95
  %96 = sext i32 %_new_load_340 to i64, !mcsema_real_eip !28
  store i64 %96, i64* %XCX, !mcsema_real_eip !28
  %97 = mul i64 %96, 4, !mcsema_real_eip !29
  %98 = add i64 %_new_load_325, %97, !mcsema_real_eip !29
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !29
  %100 = inttoptr i64 %98 to i32*, !mcsema_real_eip !29
  %_ptr_bt_343 = bitcast i32* %100 to i8*
  %_offset_above_rbp_344 = sub i64 %98, %_local_end_to_int_
  %_pot_address_in_parent_stack_345 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_344
  %_cond1_346 = icmp ugt i8* %_ptr_bt_343, %_local_stack_end_ptr_
  %_cond2_1_347 = icmp ugt i8* %_ptr_bt_343, %_parent_stack_end_ptr_
  %_cond2_2_348 = icmp ult i8* %_ptr_bt_343, %_parent_stack_start_ptr_
  %_cond2_349 = or i1 %_cond2_1_347, %_cond2_2_348
  %_cond4_350 = icmp ule i8* %_pot_address_in_parent_stack_345, %_parent_stack_end_ptr_
  %_cond1_n_cond2_351 = and i1 %_cond1_346, %_cond2_349
  %_cond1_n_cond2_cond3_352 = and i1 %_cond1_n_cond2_351, %_cond4_350
  br i1 %_cond1_n_cond2_cond3_352, label %101, label %102

; <label>:101:                                    ; preds = %94
  %_address_in_parent_stack_bt_354 = bitcast i8* %_pot_address_in_parent_stack_345 to i32*
  br label %102

; <label>:102:                                    ; preds = %94, %101
  %103 = phi i32* [ %100, %94 ], [ %_address_in_parent_stack_bt_354, %101 ]
  %_new_load_355 = load i32, i32* %103
  %104 = zext i32 %_new_load_355 to i64, !mcsema_real_eip !29
  store i64 %104, i64* %XDX, !mcsema_real_eip !29
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -84
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %105 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !30
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !30
  %_ptr_bt_358 = bitcast i32* %106 to i8*
  %_offset_above_rbp_359 = sub i64 %105, %_local_end_to_int_
  %_pot_address_in_parent_stack_360 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_359
  %_cond1_361 = icmp ugt i8* %_ptr_bt_358, %_local_stack_end_ptr_
  %_cond2_1_362 = icmp ugt i8* %_ptr_bt_358, %_parent_stack_end_ptr_
  %_cond2_2_363 = icmp ult i8* %_ptr_bt_358, %_parent_stack_start_ptr_
  %_cond2_364 = or i1 %_cond2_1_362, %_cond2_2_363
  %_cond4_365 = icmp ule i8* %_pot_address_in_parent_stack_360, %_parent_stack_end_ptr_
  %_cond1_n_cond2_366 = and i1 %_cond1_361, %_cond2_364
  %_cond1_n_cond2_cond3_367 = and i1 %_cond1_n_cond2_366, %_cond4_365
  br i1 %_cond1_n_cond2_cond3_367, label %107, label %108

; <label>:107:                                    ; preds = %102
  %_address_in_parent_stack_bt_369 = bitcast i8* %_pot_address_in_parent_stack_360 to i32*
  br label %108

; <label>:108:                                    ; preds = %102, %107
  %109 = phi i32* [ %106, %102 ], [ %_address_in_parent_stack_bt_369, %107 ]
  %_new_load_370 = load i32, i32* %109
  %EDX.51 = bitcast i64* %XDX to i32*, !mcsema_real_eip !30
  %EDX_val.52 = load i32, i32* %EDX.51, !mcsema_real_eip !30
  %110 = add i32 %EDX_val.52, %_new_load_370, !mcsema_real_eip !30
  %111 = xor i32 %110, %_new_load_370, !mcsema_real_eip !30
  %112 = xor i32 %111, %EDX_val.52, !mcsema_real_eip !30
  %113 = and i32 %112, 16, !mcsema_real_eip !30
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !30
  store i1 %114, i1* %AF, !mcsema_real_eip !30
  %115 = lshr i32 %110, 31, !mcsema_real_eip !30
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !30
  store i1 %116, i1* %SF, !mcsema_real_eip !30
  %117 = icmp eq i32 %110, 0, !mcsema_real_eip !30
  store i1 %117, i1* %ZF, !mcsema_real_eip !30
  %118 = xor i32 %_new_load_370, %EDX_val.52, !mcsema_real_eip !30
  %119 = xor i32 %118, -1, !mcsema_real_eip !30
  %120 = and i32 %119, %111, !mcsema_real_eip !30
  %121 = lshr i32 %120, 31, !mcsema_real_eip !30
  %122 = and i32 %121, 1, !mcsema_real_eip !30
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !30
  store i1 %123, i1* %OF, !mcsema_real_eip !30
  %124 = trunc i32 %110 to i8, !mcsema_real_eip !30
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !30
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !30
  %127 = xor i1 %126, true, !mcsema_real_eip !30
  store i1 %127, i1* %PF, !mcsema_real_eip !30
  %128 = icmp ult i32 %110, %_new_load_370, !mcsema_real_eip !30
  store i1 %128, i1* %CF, !mcsema_real_eip !30
  %129 = zext i32 %110 to i64, !mcsema_real_eip !30
  store i64 %129, i64* %XDX, !mcsema_real_eip !30
  %EDX_val.55 = load i32, i32* %EDX.51, !mcsema_real_eip !31
  store i32 %EDX_val.55, i32* %106, !mcsema_real_eip !31
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -88
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %130 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !32
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !32
  %_ptr_bt_373 = bitcast i32* %131 to i8*
  %_offset_above_rbp_374 = sub i64 %130, %_local_end_to_int_
  %_pot_address_in_parent_stack_375 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_374
  %_cond1_376 = icmp ugt i8* %_ptr_bt_373, %_local_stack_end_ptr_
  %_cond2_1_377 = icmp ugt i8* %_ptr_bt_373, %_parent_stack_end_ptr_
  %_cond2_2_378 = icmp ult i8* %_ptr_bt_373, %_parent_stack_start_ptr_
  %_cond2_379 = or i1 %_cond2_1_377, %_cond2_2_378
  %_cond4_380 = icmp ule i8* %_pot_address_in_parent_stack_375, %_parent_stack_end_ptr_
  %_cond1_n_cond2_381 = and i1 %_cond1_376, %_cond2_379
  %_cond1_n_cond2_cond3_382 = and i1 %_cond1_n_cond2_381, %_cond4_380
  br i1 %_cond1_n_cond2_cond3_382, label %132, label %133

; <label>:132:                                    ; preds = %108
  %_address_in_parent_stack_bt_384 = bitcast i8* %_pot_address_in_parent_stack_375 to i32*
  br label %133

; <label>:133:                                    ; preds = %108, %132
  %134 = phi i32* [ %131, %108 ], [ %_address_in_parent_stack_bt_384, %132 ]
  %_new_load_385 = load i32, i32* %134
  %135 = zext i32 %_new_load_385 to i64, !mcsema_real_eip !32
  store i64 %135, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.58 = load i32, i32* %EAX.44, !mcsema_real_eip !33
  %136 = add i32 1, %EAX_val.58, !mcsema_real_eip !33
  %137 = xor i32 %136, %EAX_val.58, !mcsema_real_eip !33
  %138 = xor i32 %137, 1, !mcsema_real_eip !33
  %139 = and i32 %138, 16, !mcsema_real_eip !33
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !33
  store i1 %140, i1* %AF, !mcsema_real_eip !33
  %141 = lshr i32 %136, 31, !mcsema_real_eip !33
  %142 = trunc i32 %141 to i1, !mcsema_real_eip !33
  store i1 %142, i1* %SF, !mcsema_real_eip !33
  %143 = icmp eq i32 %136, 0, !mcsema_real_eip !33
  store i1 %143, i1* %ZF, !mcsema_real_eip !33
  %144 = xor i32 %EAX_val.58, 1, !mcsema_real_eip !33
  %145 = xor i32 %144, -1, !mcsema_real_eip !33
  %146 = and i32 %145, %137, !mcsema_real_eip !33
  %147 = lshr i32 %146, 31, !mcsema_real_eip !33
  %148 = and i32 %147, 1, !mcsema_real_eip !33
  %149 = trunc i32 %148 to i1, !mcsema_real_eip !33
  store i1 %149, i1* %OF, !mcsema_real_eip !33
  %150 = trunc i32 %136 to i8, !mcsema_real_eip !33
  %151 = call i8 @llvm.ctpop.i8(i8 %150), !mcsema_real_eip !33
  %152 = trunc i8 %151 to i1, !mcsema_real_eip !33
  %153 = xor i1 %152, true, !mcsema_real_eip !33
  store i1 %153, i1* %PF, !mcsema_real_eip !33
  %154 = icmp ult i32 %136, %EAX_val.58, !mcsema_real_eip !33
  store i1 %154, i1* %CF, !mcsema_real_eip !33
  %155 = zext i32 %136 to i64, !mcsema_real_eip !33
  store i64 %155, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.61 = load i32, i32* %EAX.44, !mcsema_real_eip !34
  store i32 %EAX_val.61, i32* %131, !mcsema_real_eip !34
  br label %block_0x51, !mcsema_real_eip !35

block_0x7c:                                       ; preds = %70
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -32
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %_ptr_to_int_386 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_389 = sub i64 %_ptr_to_int_386, %_local_end_to_int_
  %_pot_address_in_parent_stack_390 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_389
  %_cond1_391 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_392 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_393 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_394 = or i1 %_cond2_1_392, %_cond2_2_393
  %_cond4_395 = icmp ule i8* %_pot_address_in_parent_stack_390, %_parent_stack_end_ptr_
  %_cond1_n_cond2_396 = and i1 %_cond1_391, %_cond2_394
  %_cond1_n_cond2_cond3_397 = and i1 %_cond1_n_cond2_396, %_cond4_395
  br i1 %_cond1_n_cond2_cond3_397, label %156, label %157

; <label>:156:                                    ; preds = %block_0x7c
  %_address_in_parent_stack_bt_399 = bitcast i8* %_pot_address_in_parent_stack_390 to i64*
  br label %157

; <label>:157:                                    ; preds = %block_0x7c, %156
  %158 = phi i64* [ %_allin_new_bt_88, %block_0x7c ], [ %_address_in_parent_stack_bt_399, %156 ]
  %_new_load_400 = load i64, i64* %158
  store i64 %_new_load_400, i64* %XAX, !mcsema_real_eip !36
  %159 = inttoptr i64 %_new_load_400 to i64*, !mcsema_real_eip !37
  %160 = inttoptr i64 %_new_load_400 to i32*, !mcsema_real_eip !37
  %_ptr_bt_403 = bitcast i32* %160 to i8*
  %_offset_above_rbp_404 = sub i64 %_new_load_400, %_local_end_to_int_
  %_pot_address_in_parent_stack_405 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_404
  %_cond1_406 = icmp ugt i8* %_ptr_bt_403, %_local_stack_end_ptr_
  %_cond2_1_407 = icmp ugt i8* %_ptr_bt_403, %_parent_stack_end_ptr_
  %_cond2_2_408 = icmp ult i8* %_ptr_bt_403, %_parent_stack_start_ptr_
  %_cond2_409 = or i1 %_cond2_1_407, %_cond2_2_408
  %_cond4_410 = icmp ule i8* %_pot_address_in_parent_stack_405, %_parent_stack_end_ptr_
  %_cond1_n_cond2_411 = and i1 %_cond1_406, %_cond2_409
  %_cond1_n_cond2_cond3_412 = and i1 %_cond1_n_cond2_411, %_cond4_410
  br i1 %_cond1_n_cond2_cond3_412, label %161, label %162

; <label>:161:                                    ; preds = %157
  %_address_in_parent_stack_bt_414 = bitcast i8* %_pot_address_in_parent_stack_405 to i32*
  br label %162

; <label>:162:                                    ; preds = %157, %161
  %163 = phi i32* [ %160, %157 ], [ %_address_in_parent_stack_bt_414, %161 ]
  %_new_load_415 = load i32, i32* %163
  %164 = zext i32 %_new_load_415 to i64, !mcsema_real_eip !37
  store i64 %164, i64* %XCX, !mcsema_real_eip !37
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -84
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %165 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !38
  %166 = inttoptr i64 %165 to i32*, !mcsema_real_eip !38
  %_ptr_bt_418 = bitcast i32* %166 to i8*
  %_offset_above_rbp_419 = sub i64 %165, %_local_end_to_int_
  %_pot_address_in_parent_stack_420 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_419
  %_cond1_421 = icmp ugt i8* %_ptr_bt_418, %_local_stack_end_ptr_
  %_cond2_1_422 = icmp ugt i8* %_ptr_bt_418, %_parent_stack_end_ptr_
  %_cond2_2_423 = icmp ult i8* %_ptr_bt_418, %_parent_stack_start_ptr_
  %_cond2_424 = or i1 %_cond2_1_422, %_cond2_2_423
  %_cond4_425 = icmp ule i8* %_pot_address_in_parent_stack_420, %_parent_stack_end_ptr_
  %_cond1_n_cond2_426 = and i1 %_cond1_421, %_cond2_424
  %_cond1_n_cond2_cond3_427 = and i1 %_cond1_n_cond2_426, %_cond4_425
  br i1 %_cond1_n_cond2_cond3_427, label %167, label %168

; <label>:167:                                    ; preds = %162
  %_address_in_parent_stack_bt_429 = bitcast i8* %_pot_address_in_parent_stack_420 to i32*
  br label %168

; <label>:168:                                    ; preds = %162, %167
  %169 = phi i32* [ %166, %162 ], [ %_address_in_parent_stack_bt_429, %167 ]
  %_new_load_430 = load i32, i32* %169
  %ECX.65 = bitcast i64* %XCX to i32*, !mcsema_real_eip !38
  %ECX_val.66 = load i32, i32* %ECX.65, !mcsema_real_eip !38
  %170 = add i32 %ECX_val.66, %_new_load_430, !mcsema_real_eip !38
  %171 = xor i32 %170, %_new_load_430, !mcsema_real_eip !38
  %172 = xor i32 %171, %ECX_val.66, !mcsema_real_eip !38
  %173 = and i32 %172, 16, !mcsema_real_eip !38
  %174 = icmp ne i32 %173, 0, !mcsema_real_eip !38
  store i1 %174, i1* %AF, !mcsema_real_eip !38
  %175 = lshr i32 %170, 31, !mcsema_real_eip !38
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !38
  store i1 %176, i1* %SF, !mcsema_real_eip !38
  %177 = icmp eq i32 %170, 0, !mcsema_real_eip !38
  store i1 %177, i1* %ZF, !mcsema_real_eip !38
  %178 = xor i32 %_new_load_430, %ECX_val.66, !mcsema_real_eip !38
  %179 = xor i32 %178, -1, !mcsema_real_eip !38
  %180 = and i32 %179, %171, !mcsema_real_eip !38
  %181 = lshr i32 %180, 31, !mcsema_real_eip !38
  %182 = and i32 %181, 1, !mcsema_real_eip !38
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !38
  store i1 %183, i1* %OF, !mcsema_real_eip !38
  %184 = trunc i32 %170 to i8, !mcsema_real_eip !38
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !38
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !38
  %187 = xor i1 %186, true, !mcsema_real_eip !38
  store i1 %187, i1* %PF, !mcsema_real_eip !38
  %188 = icmp ult i32 %170, %_new_load_430, !mcsema_real_eip !38
  store i1 %188, i1* %CF, !mcsema_real_eip !38
  %189 = zext i32 %170 to i64, !mcsema_real_eip !38
  store i64 %189, i64* %XCX, !mcsema_real_eip !38
  %ECX_val.69 = load i32, i32* %ECX.65, !mcsema_real_eip !39
  store i32 %ECX_val.69, i32* %166, !mcsema_real_eip !39
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -92
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %190 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !40
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !40
  store i32 0, i32* %191, !mcsema_real_eip !40
  br label %block_0x8f, !mcsema_real_eip !41

block_0x8f:                                       ; preds = %264, %168
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -92
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %192 = ptrtoint i64* %_allin_new_bt_100 to i64, !mcsema_real_eip !41
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !41
  %_ptr_bt_433 = bitcast i32* %193 to i8*
  %_offset_above_rbp_434 = sub i64 %192, %_local_end_to_int_
  %_pot_address_in_parent_stack_435 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_434
  %_cond1_436 = icmp ugt i8* %_ptr_bt_433, %_local_stack_end_ptr_
  %_cond2_1_437 = icmp ugt i8* %_ptr_bt_433, %_parent_stack_end_ptr_
  %_cond2_2_438 = icmp ult i8* %_ptr_bt_433, %_parent_stack_start_ptr_
  %_cond2_439 = or i1 %_cond2_1_437, %_cond2_2_438
  %_cond4_440 = icmp ule i8* %_pot_address_in_parent_stack_435, %_parent_stack_end_ptr_
  %_cond1_n_cond2_441 = and i1 %_cond1_436, %_cond2_439
  %_cond1_n_cond2_cond3_442 = and i1 %_cond1_n_cond2_441, %_cond4_440
  br i1 %_cond1_n_cond2_cond3_442, label %194, label %195

; <label>:194:                                    ; preds = %block_0x8f
  %_address_in_parent_stack_bt_444 = bitcast i8* %_pot_address_in_parent_stack_435 to i32*
  br label %195

; <label>:195:                                    ; preds = %block_0x8f, %194
  %196 = phi i32* [ %193, %block_0x8f ], [ %_address_in_parent_stack_bt_444, %194 ]
  %_new_load_445 = load i32, i32* %196
  %197 = zext i32 %_new_load_445 to i64, !mcsema_real_eip !41
  store i64 %197, i64* %XAX, !mcsema_real_eip !41
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -48
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %EAX_val.74 = load i32, i32* %EAX.44, !mcsema_real_eip !42
  %198 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !42
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !42
  %_ptr_bt_448 = bitcast i32* %199 to i8*
  %_offset_above_rbp_449 = sub i64 %198, %_local_end_to_int_
  %_pot_address_in_parent_stack_450 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_449
  %_cond1_451 = icmp ugt i8* %_ptr_bt_448, %_local_stack_end_ptr_
  %_cond2_1_452 = icmp ugt i8* %_ptr_bt_448, %_parent_stack_end_ptr_
  %_cond2_2_453 = icmp ult i8* %_ptr_bt_448, %_parent_stack_start_ptr_
  %_cond2_454 = or i1 %_cond2_1_452, %_cond2_2_453
  %_cond4_455 = icmp ule i8* %_pot_address_in_parent_stack_450, %_parent_stack_end_ptr_
  %_cond1_n_cond2_456 = and i1 %_cond1_451, %_cond2_454
  %_cond1_n_cond2_cond3_457 = and i1 %_cond1_n_cond2_456, %_cond4_455
  br i1 %_cond1_n_cond2_cond3_457, label %200, label %201

; <label>:200:                                    ; preds = %195
  %_address_in_parent_stack_bt_459 = bitcast i8* %_pot_address_in_parent_stack_450 to i32*
  br label %201

; <label>:201:                                    ; preds = %195, %200
  %202 = phi i32* [ %199, %195 ], [ %_address_in_parent_stack_bt_459, %200 ]
  %_new_load_460 = load i32, i32* %202
  %203 = sub i32 %EAX_val.74, %_new_load_460, !mcsema_real_eip !42
  %204 = xor i32 %203, %EAX_val.74, !mcsema_real_eip !42
  %205 = xor i32 %204, %_new_load_460, !mcsema_real_eip !42
  %206 = and i32 %205, 16, !mcsema_real_eip !42
  %207 = icmp ne i32 %206, 0, !mcsema_real_eip !42
  store i1 %207, i1* %AF, !mcsema_real_eip !42
  %208 = trunc i32 %203 to i8, !mcsema_real_eip !42
  %209 = call i8 @llvm.ctpop.i8(i8 %208), !mcsema_real_eip !42
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !42
  %211 = xor i1 %210, true, !mcsema_real_eip !42
  store i1 %211, i1* %PF, !mcsema_real_eip !42
  %212 = icmp eq i32 %203, 0, !mcsema_real_eip !42
  store i1 %212, i1* %ZF, !mcsema_real_eip !42
  %213 = lshr i32 %203, 31, !mcsema_real_eip !42
  %214 = trunc i32 %213 to i1, !mcsema_real_eip !42
  store i1 %214, i1* %SF, !mcsema_real_eip !42
  %215 = icmp ult i32 %EAX_val.74, %_new_load_460, !mcsema_real_eip !42
  store i1 %215, i1* %CF, !mcsema_real_eip !42
  %216 = xor i32 %EAX_val.74, %_new_load_460, !mcsema_real_eip !42
  %217 = and i32 %216, %204, !mcsema_real_eip !42
  %218 = lshr i32 %217, 31, !mcsema_real_eip !42
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !42
  store i1 %219, i1* %OF, !mcsema_real_eip !42
  %220 = icmp eq i1 %214, %219, !mcsema_real_eip !43
  br i1 %220, label %block_0xba, label %block_0x9b, !mcsema_real_eip !43

block_0x9b:                                       ; preds = %201
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -40
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %_ptr_to_int_461 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_offset_above_rbp_464 = sub i64 %_ptr_to_int_461, %_local_end_to_int_
  %_pot_address_in_parent_stack_465 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_464
  %_cond1_466 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_467 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_468 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_469 = or i1 %_cond2_1_467, %_cond2_2_468
  %_cond4_470 = icmp ule i8* %_pot_address_in_parent_stack_465, %_parent_stack_end_ptr_
  %_cond1_n_cond2_471 = and i1 %_cond1_466, %_cond2_469
  %_cond1_n_cond2_cond3_472 = and i1 %_cond1_n_cond2_471, %_cond4_470
  br i1 %_cond1_n_cond2_cond3_472, label %221, label %222

; <label>:221:                                    ; preds = %block_0x9b
  %_address_in_parent_stack_bt_474 = bitcast i8* %_pot_address_in_parent_stack_465 to i64*
  br label %222

; <label>:222:                                    ; preds = %block_0x9b, %221
  %223 = phi i64* [ %_allin_new_bt_106, %block_0x9b ], [ %_address_in_parent_stack_bt_474, %221 ]
  %_new_load_475 = load i64, i64* %223
  store i64 %_new_load_475, i64* %XAX, !mcsema_real_eip !44
  br i1 %_cond1_n_cond2_cond3_442, label %224, label %225

; <label>:224:                                    ; preds = %222
  %_address_in_parent_stack_bt_489 = bitcast i8* %_pot_address_in_parent_stack_435 to i32*
  br label %225

; <label>:225:                                    ; preds = %222, %224
  %226 = phi i32* [ %193, %222 ], [ %_address_in_parent_stack_bt_489, %224 ]
  %_new_load_490 = load i32, i32* %226
  %227 = sext i32 %_new_load_490 to i64, !mcsema_real_eip !45
  store i64 %227, i64* %XCX, !mcsema_real_eip !45
  %228 = mul i64 %227, 4, !mcsema_real_eip !46
  %229 = add i64 %_new_load_475, %228, !mcsema_real_eip !46
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !46
  %231 = inttoptr i64 %229 to i32*, !mcsema_real_eip !46
  %_ptr_bt_493 = bitcast i32* %231 to i8*
  %_offset_above_rbp_494 = sub i64 %229, %_local_end_to_int_
  %_pot_address_in_parent_stack_495 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_494
  %_cond1_496 = icmp ugt i8* %_ptr_bt_493, %_local_stack_end_ptr_
  %_cond2_1_497 = icmp ugt i8* %_ptr_bt_493, %_parent_stack_end_ptr_
  %_cond2_2_498 = icmp ult i8* %_ptr_bt_493, %_parent_stack_start_ptr_
  %_cond2_499 = or i1 %_cond2_1_497, %_cond2_2_498
  %_cond4_500 = icmp ule i8* %_pot_address_in_parent_stack_495, %_parent_stack_end_ptr_
  %_cond1_n_cond2_501 = and i1 %_cond1_496, %_cond2_499
  %_cond1_n_cond2_cond3_502 = and i1 %_cond1_n_cond2_501, %_cond4_500
  br i1 %_cond1_n_cond2_cond3_502, label %232, label %233

; <label>:232:                                    ; preds = %225
  %_address_in_parent_stack_bt_504 = bitcast i8* %_pot_address_in_parent_stack_495 to i32*
  br label %233

; <label>:233:                                    ; preds = %225, %232
  %234 = phi i32* [ %231, %225 ], [ %_address_in_parent_stack_bt_504, %232 ]
  %_new_load_505 = load i32, i32* %234
  %235 = zext i32 %_new_load_505 to i64, !mcsema_real_eip !46
  store i64 %235, i64* %XDX, !mcsema_real_eip !46
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -84
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %236 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !47
  %237 = inttoptr i64 %236 to i32*, !mcsema_real_eip !47
  %_ptr_bt_508 = bitcast i32* %237 to i8*
  %_offset_above_rbp_509 = sub i64 %236, %_local_end_to_int_
  %_pot_address_in_parent_stack_510 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_509
  %_cond1_511 = icmp ugt i8* %_ptr_bt_508, %_local_stack_end_ptr_
  %_cond2_1_512 = icmp ugt i8* %_ptr_bt_508, %_parent_stack_end_ptr_
  %_cond2_2_513 = icmp ult i8* %_ptr_bt_508, %_parent_stack_start_ptr_
  %_cond2_514 = or i1 %_cond2_1_512, %_cond2_2_513
  %_cond4_515 = icmp ule i8* %_pot_address_in_parent_stack_510, %_parent_stack_end_ptr_
  %_cond1_n_cond2_516 = and i1 %_cond1_511, %_cond2_514
  %_cond1_n_cond2_cond3_517 = and i1 %_cond1_n_cond2_516, %_cond4_515
  br i1 %_cond1_n_cond2_cond3_517, label %238, label %239

; <label>:238:                                    ; preds = %233
  %_address_in_parent_stack_bt_519 = bitcast i8* %_pot_address_in_parent_stack_510 to i32*
  br label %239

; <label>:239:                                    ; preds = %233, %238
  %240 = phi i32* [ %237, %233 ], [ %_address_in_parent_stack_bt_519, %238 ]
  %_new_load_520 = load i32, i32* %240
  %EDX.80 = bitcast i64* %XDX to i32*, !mcsema_real_eip !47
  %EDX_val.81 = load i32, i32* %EDX.80, !mcsema_real_eip !47
  %241 = add i32 %EDX_val.81, %_new_load_520, !mcsema_real_eip !47
  %242 = xor i32 %241, %_new_load_520, !mcsema_real_eip !47
  %243 = xor i32 %242, %EDX_val.81, !mcsema_real_eip !47
  %244 = and i32 %243, 16, !mcsema_real_eip !47
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !47
  store i1 %245, i1* %AF, !mcsema_real_eip !47
  %246 = lshr i32 %241, 31, !mcsema_real_eip !47
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !47
  store i1 %247, i1* %SF, !mcsema_real_eip !47
  %248 = icmp eq i32 %241, 0, !mcsema_real_eip !47
  store i1 %248, i1* %ZF, !mcsema_real_eip !47
  %249 = xor i32 %_new_load_520, %EDX_val.81, !mcsema_real_eip !47
  %250 = xor i32 %249, -1, !mcsema_real_eip !47
  %251 = and i32 %250, %242, !mcsema_real_eip !47
  %252 = lshr i32 %251, 31, !mcsema_real_eip !47
  %253 = and i32 %252, 1, !mcsema_real_eip !47
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !47
  store i1 %254, i1* %OF, !mcsema_real_eip !47
  %255 = trunc i32 %241 to i8, !mcsema_real_eip !47
  %256 = call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !47
  %257 = trunc i8 %256 to i1, !mcsema_real_eip !47
  %258 = xor i1 %257, true, !mcsema_real_eip !47
  store i1 %258, i1* %PF, !mcsema_real_eip !47
  %259 = icmp ult i32 %241, %_new_load_520, !mcsema_real_eip !47
  store i1 %259, i1* %CF, !mcsema_real_eip !47
  %260 = zext i32 %241 to i64, !mcsema_real_eip !47
  store i64 %260, i64* %XDX, !mcsema_real_eip !47
  %EDX_val.84 = load i32, i32* %EDX.80, !mcsema_real_eip !48
  store i32 %EDX_val.84, i32* %237, !mcsema_real_eip !48
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -92
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %261 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !49
  %262 = inttoptr i64 %261 to i32*, !mcsema_real_eip !49
  %_ptr_bt_523 = bitcast i32* %262 to i8*
  %_offset_above_rbp_524 = sub i64 %261, %_local_end_to_int_
  %_pot_address_in_parent_stack_525 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_524
  %_cond1_526 = icmp ugt i8* %_ptr_bt_523, %_local_stack_end_ptr_
  %_cond2_1_527 = icmp ugt i8* %_ptr_bt_523, %_parent_stack_end_ptr_
  %_cond2_2_528 = icmp ult i8* %_ptr_bt_523, %_parent_stack_start_ptr_
  %_cond2_529 = or i1 %_cond2_1_527, %_cond2_2_528
  %_cond4_530 = icmp ule i8* %_pot_address_in_parent_stack_525, %_parent_stack_end_ptr_
  %_cond1_n_cond2_531 = and i1 %_cond1_526, %_cond2_529
  %_cond1_n_cond2_cond3_532 = and i1 %_cond1_n_cond2_531, %_cond4_530
  br i1 %_cond1_n_cond2_cond3_532, label %263, label %264

; <label>:263:                                    ; preds = %239
  %_address_in_parent_stack_bt_534 = bitcast i8* %_pot_address_in_parent_stack_525 to i32*
  br label %264

; <label>:264:                                    ; preds = %239, %263
  %265 = phi i32* [ %262, %239 ], [ %_address_in_parent_stack_bt_534, %263 ]
  %_new_load_535 = load i32, i32* %265
  %266 = zext i32 %_new_load_535 to i64, !mcsema_real_eip !49
  store i64 %266, i64* %XAX, !mcsema_real_eip !49
  %EAX_val.87 = load i32, i32* %EAX.44, !mcsema_real_eip !50
  %267 = add i32 1, %EAX_val.87, !mcsema_real_eip !50
  %268 = xor i32 %267, %EAX_val.87, !mcsema_real_eip !50
  %269 = xor i32 %268, 1, !mcsema_real_eip !50
  %270 = and i32 %269, 16, !mcsema_real_eip !50
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !50
  store i1 %271, i1* %AF, !mcsema_real_eip !50
  %272 = lshr i32 %267, 31, !mcsema_real_eip !50
  %273 = trunc i32 %272 to i1, !mcsema_real_eip !50
  store i1 %273, i1* %SF, !mcsema_real_eip !50
  %274 = icmp eq i32 %267, 0, !mcsema_real_eip !50
  store i1 %274, i1* %ZF, !mcsema_real_eip !50
  %275 = xor i32 %EAX_val.87, 1, !mcsema_real_eip !50
  %276 = xor i32 %275, -1, !mcsema_real_eip !50
  %277 = and i32 %276, %268, !mcsema_real_eip !50
  %278 = lshr i32 %277, 31, !mcsema_real_eip !50
  %279 = and i32 %278, 1, !mcsema_real_eip !50
  %280 = trunc i32 %279 to i1, !mcsema_real_eip !50
  store i1 %280, i1* %OF, !mcsema_real_eip !50
  %281 = trunc i32 %267 to i8, !mcsema_real_eip !50
  %282 = call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !50
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !50
  %284 = xor i1 %283, true, !mcsema_real_eip !50
  store i1 %284, i1* %PF, !mcsema_real_eip !50
  %285 = icmp ult i32 %267, %EAX_val.87, !mcsema_real_eip !50
  store i1 %285, i1* %CF, !mcsema_real_eip !50
  %286 = zext i32 %267 to i64, !mcsema_real_eip !50
  store i64 %286, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.90 = load i32, i32* %EAX.44, !mcsema_real_eip !51
  store i32 %EAX_val.90, i32* %262, !mcsema_real_eip !51
  br label %block_0x8f, !mcsema_real_eip !52

block_0xba:                                       ; preds = %201
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -52
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %287 = ptrtoint i64* %_allin_new_bt_124 to i64, !mcsema_real_eip !53
  %288 = inttoptr i64 %287 to i32*, !mcsema_real_eip !53
  %_ptr_bt_538 = bitcast i32* %288 to i8*
  %_offset_above_rbp_539 = sub i64 %287, %_local_end_to_int_
  %_pot_address_in_parent_stack_540 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_539
  %_cond1_541 = icmp ugt i8* %_ptr_bt_538, %_local_stack_end_ptr_
  %_cond2_1_542 = icmp ugt i8* %_ptr_bt_538, %_parent_stack_end_ptr_
  %_cond2_2_543 = icmp ult i8* %_ptr_bt_538, %_parent_stack_start_ptr_
  %_cond2_544 = or i1 %_cond2_1_542, %_cond2_2_543
  %_cond4_545 = icmp ule i8* %_pot_address_in_parent_stack_540, %_parent_stack_end_ptr_
  %_cond1_n_cond2_546 = and i1 %_cond1_541, %_cond2_544
  %_cond1_n_cond2_cond3_547 = and i1 %_cond1_n_cond2_546, %_cond4_545
  br i1 %_cond1_n_cond2_cond3_547, label %289, label %290

; <label>:289:                                    ; preds = %block_0xba
  %_address_in_parent_stack_bt_549 = bitcast i8* %_pot_address_in_parent_stack_540 to i32*
  br label %290

; <label>:290:                                    ; preds = %block_0xba, %289
  %291 = phi i32* [ %288, %block_0xba ], [ %_address_in_parent_stack_bt_549, %289 ]
  %_new_load_550 = load i32, i32* %291
  %292 = zext i32 %_new_load_550 to i64, !mcsema_real_eip !53
  store i64 %292, i64* %XAX, !mcsema_real_eip !53
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -84
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %293 = ptrtoint i64* %_allin_new_bt_127 to i64, !mcsema_real_eip !54
  %294 = inttoptr i64 %293 to i32*, !mcsema_real_eip !54
  %_ptr_bt_553 = bitcast i32* %294 to i8*
  %_offset_above_rbp_554 = sub i64 %293, %_local_end_to_int_
  %_pot_address_in_parent_stack_555 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_554
  %_cond1_556 = icmp ugt i8* %_ptr_bt_553, %_local_stack_end_ptr_
  %_cond2_1_557 = icmp ugt i8* %_ptr_bt_553, %_parent_stack_end_ptr_
  %_cond2_2_558 = icmp ult i8* %_ptr_bt_553, %_parent_stack_start_ptr_
  %_cond2_559 = or i1 %_cond2_1_557, %_cond2_2_558
  %_cond4_560 = icmp ule i8* %_pot_address_in_parent_stack_555, %_parent_stack_end_ptr_
  %_cond1_n_cond2_561 = and i1 %_cond1_556, %_cond2_559
  %_cond1_n_cond2_cond3_562 = and i1 %_cond1_n_cond2_561, %_cond4_560
  br i1 %_cond1_n_cond2_cond3_562, label %295, label %296

; <label>:295:                                    ; preds = %290
  %_address_in_parent_stack_bt_564 = bitcast i8* %_pot_address_in_parent_stack_555 to i32*
  br label %296

; <label>:296:                                    ; preds = %290, %295
  %297 = phi i32* [ %294, %290 ], [ %_address_in_parent_stack_bt_564, %295 ]
  %_new_load_565 = load i32, i32* %297
  %EAX_val.94 = load i32, i32* %EAX.44, !mcsema_real_eip !54
  %298 = add i32 %EAX_val.94, %_new_load_565, !mcsema_real_eip !54
  %299 = xor i32 %298, %_new_load_565, !mcsema_real_eip !54
  %300 = xor i32 %299, %EAX_val.94, !mcsema_real_eip !54
  %301 = and i32 %300, 16, !mcsema_real_eip !54
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !54
  store i1 %302, i1* %AF, !mcsema_real_eip !54
  %303 = lshr i32 %298, 31, !mcsema_real_eip !54
  %304 = trunc i32 %303 to i1, !mcsema_real_eip !54
  store i1 %304, i1* %SF, !mcsema_real_eip !54
  %305 = icmp eq i32 %298, 0, !mcsema_real_eip !54
  store i1 %305, i1* %ZF, !mcsema_real_eip !54
  %306 = xor i32 %_new_load_565, %EAX_val.94, !mcsema_real_eip !54
  %307 = xor i32 %306, -1, !mcsema_real_eip !54
  %308 = and i32 %307, %299, !mcsema_real_eip !54
  %309 = lshr i32 %308, 31, !mcsema_real_eip !54
  %310 = and i32 %309, 1, !mcsema_real_eip !54
  %311 = trunc i32 %310 to i1, !mcsema_real_eip !54
  store i1 %311, i1* %OF, !mcsema_real_eip !54
  %312 = trunc i32 %298 to i8, !mcsema_real_eip !54
  %313 = call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !54
  %314 = trunc i8 %313 to i1, !mcsema_real_eip !54
  %315 = xor i1 %314, true, !mcsema_real_eip !54
  store i1 %315, i1* %PF, !mcsema_real_eip !54
  %316 = icmp ult i32 %298, %_new_load_565, !mcsema_real_eip !54
  store i1 %316, i1* %CF, !mcsema_real_eip !54
  %317 = zext i32 %298 to i64, !mcsema_real_eip !54
  store i64 %317, i64* %XAX, !mcsema_real_eip !54
  %EAX_val.97 = load i32, i32* %EAX.44, !mcsema_real_eip !55
  store i32 %EAX_val.97, i32* %294, !mcsema_real_eip !55
  %_load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -96
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %318 = ptrtoint i64* %_allin_new_bt_133 to i64, !mcsema_real_eip !56
  %319 = inttoptr i64 %318 to i32*, !mcsema_real_eip !56
  store i32 0, i32* %319, !mcsema_real_eip !56
  br label %block_0xca, !mcsema_real_eip !57

block_0xca:                                       ; preds = %392, %296
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -96
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %320 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !57
  %321 = inttoptr i64 %320 to i32*, !mcsema_real_eip !57
  %_ptr_bt_568 = bitcast i32* %321 to i8*
  %_offset_above_rbp_569 = sub i64 %320, %_local_end_to_int_
  %_pot_address_in_parent_stack_570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_569
  %_cond1_571 = icmp ugt i8* %_ptr_bt_568, %_local_stack_end_ptr_
  %_cond2_1_572 = icmp ugt i8* %_ptr_bt_568, %_parent_stack_end_ptr_
  %_cond2_2_573 = icmp ult i8* %_ptr_bt_568, %_parent_stack_start_ptr_
  %_cond2_574 = or i1 %_cond2_1_572, %_cond2_2_573
  %_cond4_575 = icmp ule i8* %_pot_address_in_parent_stack_570, %_parent_stack_end_ptr_
  %_cond1_n_cond2_576 = and i1 %_cond1_571, %_cond2_574
  %_cond1_n_cond2_cond3_577 = and i1 %_cond1_n_cond2_576, %_cond4_575
  br i1 %_cond1_n_cond2_cond3_577, label %322, label %323

; <label>:322:                                    ; preds = %block_0xca
  %_address_in_parent_stack_bt_579 = bitcast i8* %_pot_address_in_parent_stack_570 to i32*
  br label %323

; <label>:323:                                    ; preds = %block_0xca, %322
  %324 = phi i32* [ %321, %block_0xca ], [ %_address_in_parent_stack_bt_579, %322 ]
  %_new_load_580 = load i32, i32* %324
  %325 = zext i32 %_new_load_580 to i64, !mcsema_real_eip !57
  store i64 %325, i64* %XAX, !mcsema_real_eip !57
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -44
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %EAX_val.102 = load i32, i32* %EAX.44, !mcsema_real_eip !58
  %326 = ptrtoint i64* %_allin_new_bt_139 to i64, !mcsema_real_eip !58
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !58
  %_ptr_bt_583 = bitcast i32* %327 to i8*
  %_offset_above_rbp_584 = sub i64 %326, %_local_end_to_int_
  %_pot_address_in_parent_stack_585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_584
  %_cond1_586 = icmp ugt i8* %_ptr_bt_583, %_local_stack_end_ptr_
  %_cond2_1_587 = icmp ugt i8* %_ptr_bt_583, %_parent_stack_end_ptr_
  %_cond2_2_588 = icmp ult i8* %_ptr_bt_583, %_parent_stack_start_ptr_
  %_cond2_589 = or i1 %_cond2_1_587, %_cond2_2_588
  %_cond4_590 = icmp ule i8* %_pot_address_in_parent_stack_585, %_parent_stack_end_ptr_
  %_cond1_n_cond2_591 = and i1 %_cond1_586, %_cond2_589
  %_cond1_n_cond2_cond3_592 = and i1 %_cond1_n_cond2_591, %_cond4_590
  br i1 %_cond1_n_cond2_cond3_592, label %328, label %329

; <label>:328:                                    ; preds = %323
  %_address_in_parent_stack_bt_594 = bitcast i8* %_pot_address_in_parent_stack_585 to i32*
  br label %329

; <label>:329:                                    ; preds = %323, %328
  %330 = phi i32* [ %327, %323 ], [ %_address_in_parent_stack_bt_594, %328 ]
  %_new_load_595 = load i32, i32* %330
  %331 = sub i32 %EAX_val.102, %_new_load_595, !mcsema_real_eip !58
  %332 = xor i32 %331, %EAX_val.102, !mcsema_real_eip !58
  %333 = xor i32 %332, %_new_load_595, !mcsema_real_eip !58
  %334 = and i32 %333, 16, !mcsema_real_eip !58
  %335 = icmp ne i32 %334, 0, !mcsema_real_eip !58
  store i1 %335, i1* %AF, !mcsema_real_eip !58
  %336 = trunc i32 %331 to i8, !mcsema_real_eip !58
  %337 = call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !58
  %338 = trunc i8 %337 to i1, !mcsema_real_eip !58
  %339 = xor i1 %338, true, !mcsema_real_eip !58
  store i1 %339, i1* %PF, !mcsema_real_eip !58
  %340 = icmp eq i32 %331, 0, !mcsema_real_eip !58
  store i1 %340, i1* %ZF, !mcsema_real_eip !58
  %341 = lshr i32 %331, 31, !mcsema_real_eip !58
  %342 = trunc i32 %341 to i1, !mcsema_real_eip !58
  store i1 %342, i1* %SF, !mcsema_real_eip !58
  %343 = icmp ult i32 %EAX_val.102, %_new_load_595, !mcsema_real_eip !58
  store i1 %343, i1* %CF, !mcsema_real_eip !58
  %344 = xor i32 %EAX_val.102, %_new_load_595, !mcsema_real_eip !58
  %345 = and i32 %344, %332, !mcsema_real_eip !58
  %346 = lshr i32 %345, 31, !mcsema_real_eip !58
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !58
  store i1 %347, i1* %OF, !mcsema_real_eip !58
  %348 = icmp eq i1 %342, %347, !mcsema_real_eip !59
  br i1 %348, label %block_0xf5, label %block_0xd6, !mcsema_real_eip !59

block_0xd6:                                       ; preds = %329
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -64
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %_ptr_to_int_596 = ptrtoint i64* %_allin_new_bt_142 to i64
  %_offset_above_rbp_599 = sub i64 %_ptr_to_int_596, %_local_end_to_int_
  %_pot_address_in_parent_stack_600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_599
  %_cond1_601 = icmp ugt i8* %_new_gep_141, %_local_stack_end_ptr_
  %_cond2_1_602 = icmp ugt i8* %_new_gep_141, %_parent_stack_end_ptr_
  %_cond2_2_603 = icmp ult i8* %_new_gep_141, %_parent_stack_start_ptr_
  %_cond2_604 = or i1 %_cond2_1_602, %_cond2_2_603
  %_cond4_605 = icmp ule i8* %_pot_address_in_parent_stack_600, %_parent_stack_end_ptr_
  %_cond1_n_cond2_606 = and i1 %_cond1_601, %_cond2_604
  %_cond1_n_cond2_cond3_607 = and i1 %_cond1_n_cond2_606, %_cond4_605
  br i1 %_cond1_n_cond2_cond3_607, label %349, label %350

; <label>:349:                                    ; preds = %block_0xd6
  %_address_in_parent_stack_bt_609 = bitcast i8* %_pot_address_in_parent_stack_600 to i64*
  br label %350

; <label>:350:                                    ; preds = %block_0xd6, %349
  %351 = phi i64* [ %_allin_new_bt_142, %block_0xd6 ], [ %_address_in_parent_stack_bt_609, %349 ]
  %_new_load_610 = load i64, i64* %351
  store i64 %_new_load_610, i64* %XAX, !mcsema_real_eip !60
  br i1 %_cond1_n_cond2_cond3_577, label %352, label %353

; <label>:352:                                    ; preds = %350
  %_address_in_parent_stack_bt_624 = bitcast i8* %_pot_address_in_parent_stack_570 to i32*
  br label %353

; <label>:353:                                    ; preds = %350, %352
  %354 = phi i32* [ %321, %350 ], [ %_address_in_parent_stack_bt_624, %352 ]
  %_new_load_625 = load i32, i32* %354
  %355 = sext i32 %_new_load_625 to i64, !mcsema_real_eip !61
  store i64 %355, i64* %XCX, !mcsema_real_eip !61
  %356 = mul i64 %355, 4, !mcsema_real_eip !62
  %357 = add i64 %_new_load_610, %356, !mcsema_real_eip !62
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !62
  %359 = inttoptr i64 %357 to i32*, !mcsema_real_eip !62
  %_ptr_bt_628 = bitcast i32* %359 to i8*
  %_offset_above_rbp_629 = sub i64 %357, %_local_end_to_int_
  %_pot_address_in_parent_stack_630 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_629
  %_cond1_631 = icmp ugt i8* %_ptr_bt_628, %_local_stack_end_ptr_
  %_cond2_1_632 = icmp ugt i8* %_ptr_bt_628, %_parent_stack_end_ptr_
  %_cond2_2_633 = icmp ult i8* %_ptr_bt_628, %_parent_stack_start_ptr_
  %_cond2_634 = or i1 %_cond2_1_632, %_cond2_2_633
  %_cond4_635 = icmp ule i8* %_pot_address_in_parent_stack_630, %_parent_stack_end_ptr_
  %_cond1_n_cond2_636 = and i1 %_cond1_631, %_cond2_634
  %_cond1_n_cond2_cond3_637 = and i1 %_cond1_n_cond2_636, %_cond4_635
  br i1 %_cond1_n_cond2_cond3_637, label %360, label %361

; <label>:360:                                    ; preds = %353
  %_address_in_parent_stack_bt_639 = bitcast i8* %_pot_address_in_parent_stack_630 to i32*
  br label %361

; <label>:361:                                    ; preds = %353, %360
  %362 = phi i32* [ %359, %353 ], [ %_address_in_parent_stack_bt_639, %360 ]
  %_new_load_640 = load i32, i32* %362
  %363 = zext i32 %_new_load_640 to i64, !mcsema_real_eip !62
  store i64 %363, i64* %XDX, !mcsema_real_eip !62
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -84
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %364 = ptrtoint i64* %_allin_new_bt_148 to i64, !mcsema_real_eip !63
  %365 = inttoptr i64 %364 to i32*, !mcsema_real_eip !63
  %_ptr_bt_643 = bitcast i32* %365 to i8*
  %_offset_above_rbp_644 = sub i64 %364, %_local_end_to_int_
  %_pot_address_in_parent_stack_645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_644
  %_cond1_646 = icmp ugt i8* %_ptr_bt_643, %_local_stack_end_ptr_
  %_cond2_1_647 = icmp ugt i8* %_ptr_bt_643, %_parent_stack_end_ptr_
  %_cond2_2_648 = icmp ult i8* %_ptr_bt_643, %_parent_stack_start_ptr_
  %_cond2_649 = or i1 %_cond2_1_647, %_cond2_2_648
  %_cond4_650 = icmp ule i8* %_pot_address_in_parent_stack_645, %_parent_stack_end_ptr_
  %_cond1_n_cond2_651 = and i1 %_cond1_646, %_cond2_649
  %_cond1_n_cond2_cond3_652 = and i1 %_cond1_n_cond2_651, %_cond4_650
  br i1 %_cond1_n_cond2_cond3_652, label %366, label %367

; <label>:366:                                    ; preds = %361
  %_address_in_parent_stack_bt_654 = bitcast i8* %_pot_address_in_parent_stack_645 to i32*
  br label %367

; <label>:367:                                    ; preds = %361, %366
  %368 = phi i32* [ %365, %361 ], [ %_address_in_parent_stack_bt_654, %366 ]
  %_new_load_655 = load i32, i32* %368
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !63
  %EDX_val.109 = load i32, i32* %EDX.108, !mcsema_real_eip !63
  %369 = add i32 %EDX_val.109, %_new_load_655, !mcsema_real_eip !63
  %370 = xor i32 %369, %_new_load_655, !mcsema_real_eip !63
  %371 = xor i32 %370, %EDX_val.109, !mcsema_real_eip !63
  %372 = and i32 %371, 16, !mcsema_real_eip !63
  %373 = icmp ne i32 %372, 0, !mcsema_real_eip !63
  store i1 %373, i1* %AF, !mcsema_real_eip !63
  %374 = lshr i32 %369, 31, !mcsema_real_eip !63
  %375 = trunc i32 %374 to i1, !mcsema_real_eip !63
  store i1 %375, i1* %SF, !mcsema_real_eip !63
  %376 = icmp eq i32 %369, 0, !mcsema_real_eip !63
  store i1 %376, i1* %ZF, !mcsema_real_eip !63
  %377 = xor i32 %_new_load_655, %EDX_val.109, !mcsema_real_eip !63
  %378 = xor i32 %377, -1, !mcsema_real_eip !63
  %379 = and i32 %378, %370, !mcsema_real_eip !63
  %380 = lshr i32 %379, 31, !mcsema_real_eip !63
  %381 = and i32 %380, 1, !mcsema_real_eip !63
  %382 = trunc i32 %381 to i1, !mcsema_real_eip !63
  store i1 %382, i1* %OF, !mcsema_real_eip !63
  %383 = trunc i32 %369 to i8, !mcsema_real_eip !63
  %384 = call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !63
  %385 = trunc i8 %384 to i1, !mcsema_real_eip !63
  %386 = xor i1 %385, true, !mcsema_real_eip !63
  store i1 %386, i1* %PF, !mcsema_real_eip !63
  %387 = icmp ult i32 %369, %_new_load_655, !mcsema_real_eip !63
  store i1 %387, i1* %CF, !mcsema_real_eip !63
  %388 = zext i32 %369 to i64, !mcsema_real_eip !63
  store i64 %388, i64* %XDX, !mcsema_real_eip !63
  %EDX_val.112 = load i32, i32* %EDX.108, !mcsema_real_eip !64
  store i32 %EDX_val.112, i32* %365, !mcsema_real_eip !64
  %_load_rbp_ptr_152 = load i8*, i8** %_RBP_ptr_
  %_new_gep_153 = getelementptr i8, i8* %_load_rbp_ptr_152, i64 -96
  %_allin_new_bt_154 = bitcast i8* %_new_gep_153 to i64*
  %389 = ptrtoint i64* %_allin_new_bt_154 to i64, !mcsema_real_eip !65
  %390 = inttoptr i64 %389 to i32*, !mcsema_real_eip !65
  %_ptr_bt_658 = bitcast i32* %390 to i8*
  %_offset_above_rbp_659 = sub i64 %389, %_local_end_to_int_
  %_pot_address_in_parent_stack_660 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_659
  %_cond1_661 = icmp ugt i8* %_ptr_bt_658, %_local_stack_end_ptr_
  %_cond2_1_662 = icmp ugt i8* %_ptr_bt_658, %_parent_stack_end_ptr_
  %_cond2_2_663 = icmp ult i8* %_ptr_bt_658, %_parent_stack_start_ptr_
  %_cond2_664 = or i1 %_cond2_1_662, %_cond2_2_663
  %_cond4_665 = icmp ule i8* %_pot_address_in_parent_stack_660, %_parent_stack_end_ptr_
  %_cond1_n_cond2_666 = and i1 %_cond1_661, %_cond2_664
  %_cond1_n_cond2_cond3_667 = and i1 %_cond1_n_cond2_666, %_cond4_665
  br i1 %_cond1_n_cond2_cond3_667, label %391, label %392

; <label>:391:                                    ; preds = %367
  %_address_in_parent_stack_bt_669 = bitcast i8* %_pot_address_in_parent_stack_660 to i32*
  br label %392

; <label>:392:                                    ; preds = %367, %391
  %393 = phi i32* [ %390, %367 ], [ %_address_in_parent_stack_bt_669, %391 ]
  %_new_load_670 = load i32, i32* %393
  %394 = zext i32 %_new_load_670 to i64, !mcsema_real_eip !65
  store i64 %394, i64* %XAX, !mcsema_real_eip !65
  %EAX_val.115 = load i32, i32* %EAX.44, !mcsema_real_eip !66
  %395 = add i32 1, %EAX_val.115, !mcsema_real_eip !66
  %396 = xor i32 %395, %EAX_val.115, !mcsema_real_eip !66
  %397 = xor i32 %396, 1, !mcsema_real_eip !66
  %398 = and i32 %397, 16, !mcsema_real_eip !66
  %399 = icmp ne i32 %398, 0, !mcsema_real_eip !66
  store i1 %399, i1* %AF, !mcsema_real_eip !66
  %400 = lshr i32 %395, 31, !mcsema_real_eip !66
  %401 = trunc i32 %400 to i1, !mcsema_real_eip !66
  store i1 %401, i1* %SF, !mcsema_real_eip !66
  %402 = icmp eq i32 %395, 0, !mcsema_real_eip !66
  store i1 %402, i1* %ZF, !mcsema_real_eip !66
  %403 = xor i32 %EAX_val.115, 1, !mcsema_real_eip !66
  %404 = xor i32 %403, -1, !mcsema_real_eip !66
  %405 = and i32 %404, %396, !mcsema_real_eip !66
  %406 = lshr i32 %405, 31, !mcsema_real_eip !66
  %407 = and i32 %406, 1, !mcsema_real_eip !66
  %408 = trunc i32 %407 to i1, !mcsema_real_eip !66
  store i1 %408, i1* %OF, !mcsema_real_eip !66
  %409 = trunc i32 %395 to i8, !mcsema_real_eip !66
  %410 = call i8 @llvm.ctpop.i8(i8 %409), !mcsema_real_eip !66
  %411 = trunc i8 %410 to i1, !mcsema_real_eip !66
  %412 = xor i1 %411, true, !mcsema_real_eip !66
  store i1 %412, i1* %PF, !mcsema_real_eip !66
  %413 = icmp ult i32 %395, %EAX_val.115, !mcsema_real_eip !66
  store i1 %413, i1* %CF, !mcsema_real_eip !66
  %414 = zext i32 %395 to i64, !mcsema_real_eip !66
  store i64 %414, i64* %XAX, !mcsema_real_eip !66
  %EAX_val.118 = load i32, i32* %EAX.44, !mcsema_real_eip !67
  store i32 %EAX_val.118, i32* %390, !mcsema_real_eip !67
  br label %block_0xca, !mcsema_real_eip !68

block_0xf5:                                       ; preds = %329
  %_new_gep_159 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -72
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  %_ptr_to_int_671 = ptrtoint i64* %_allin_new_bt_160 to i64
  %_offset_above_rbp_674 = sub i64 %_ptr_to_int_671, %_local_end_to_int_
  %_pot_address_in_parent_stack_675 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_674
  %_cond1_676 = icmp ugt i8* %_new_gep_159, %_local_stack_end_ptr_
  %_cond2_1_677 = icmp ugt i8* %_new_gep_159, %_parent_stack_end_ptr_
  %_cond2_2_678 = icmp ult i8* %_new_gep_159, %_parent_stack_start_ptr_
  %_cond2_679 = or i1 %_cond2_1_677, %_cond2_2_678
  %_cond4_680 = icmp ule i8* %_pot_address_in_parent_stack_675, %_parent_stack_end_ptr_
  %_cond1_n_cond2_681 = and i1 %_cond1_676, %_cond2_679
  %_cond1_n_cond2_cond3_682 = and i1 %_cond1_n_cond2_681, %_cond4_680
  br i1 %_cond1_n_cond2_cond3_682, label %415, label %416

; <label>:415:                                    ; preds = %block_0xf5
  %_address_in_parent_stack_bt_684 = bitcast i8* %_pot_address_in_parent_stack_675 to i64*
  br label %416

; <label>:416:                                    ; preds = %block_0xf5, %415
  %417 = phi i64* [ %_allin_new_bt_160, %block_0xf5 ], [ %_address_in_parent_stack_bt_684, %415 ]
  %_new_load_685 = load i64, i64* %417
  store i64 %_new_load_685, i64* %XAX, !mcsema_real_eip !69
  %418 = inttoptr i64 %_new_load_685 to i64*, !mcsema_real_eip !70
  %419 = inttoptr i64 %_new_load_685 to i32*, !mcsema_real_eip !70
  %_ptr_bt_688 = bitcast i32* %419 to i8*
  %_offset_above_rbp_689 = sub i64 %_new_load_685, %_local_end_to_int_
  %_pot_address_in_parent_stack_690 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_689
  %_cond1_691 = icmp ugt i8* %_ptr_bt_688, %_local_stack_end_ptr_
  %_cond2_1_692 = icmp ugt i8* %_ptr_bt_688, %_parent_stack_end_ptr_
  %_cond2_2_693 = icmp ult i8* %_ptr_bt_688, %_parent_stack_start_ptr_
  %_cond2_694 = or i1 %_cond2_1_692, %_cond2_2_693
  %_cond4_695 = icmp ule i8* %_pot_address_in_parent_stack_690, %_parent_stack_end_ptr_
  %_cond1_n_cond2_696 = and i1 %_cond1_691, %_cond2_694
  %_cond1_n_cond2_cond3_697 = and i1 %_cond1_n_cond2_696, %_cond4_695
  br i1 %_cond1_n_cond2_cond3_697, label %420, label %421

; <label>:420:                                    ; preds = %416
  %_address_in_parent_stack_bt_699 = bitcast i8* %_pot_address_in_parent_stack_690 to i32*
  br label %421

; <label>:421:                                    ; preds = %416, %420
  %422 = phi i32* [ %419, %416 ], [ %_address_in_parent_stack_bt_699, %420 ]
  %_new_load_700 = load i32, i32* %422
  %423 = zext i32 %_new_load_700 to i64, !mcsema_real_eip !70
  store i64 %423, i64* %XCX, !mcsema_real_eip !70
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -84
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %424 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !71
  %425 = inttoptr i64 %424 to i32*, !mcsema_real_eip !71
  %_ptr_bt_703 = bitcast i32* %425 to i8*
  %_offset_above_rbp_704 = sub i64 %424, %_local_end_to_int_
  %_pot_address_in_parent_stack_705 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_704
  %_cond1_706 = icmp ugt i8* %_ptr_bt_703, %_local_stack_end_ptr_
  %_cond2_1_707 = icmp ugt i8* %_ptr_bt_703, %_parent_stack_end_ptr_
  %_cond2_2_708 = icmp ult i8* %_ptr_bt_703, %_parent_stack_start_ptr_
  %_cond2_709 = or i1 %_cond2_1_707, %_cond2_2_708
  %_cond4_710 = icmp ule i8* %_pot_address_in_parent_stack_705, %_parent_stack_end_ptr_
  %_cond1_n_cond2_711 = and i1 %_cond1_706, %_cond2_709
  %_cond1_n_cond2_cond3_712 = and i1 %_cond1_n_cond2_711, %_cond4_710
  br i1 %_cond1_n_cond2_cond3_712, label %426, label %427

; <label>:426:                                    ; preds = %421
  %_address_in_parent_stack_bt_714 = bitcast i8* %_pot_address_in_parent_stack_705 to i32*
  br label %427

; <label>:427:                                    ; preds = %421, %426
  %428 = phi i32* [ %425, %421 ], [ %_address_in_parent_stack_bt_714, %426 ]
  %_new_load_715 = load i32, i32* %428
  %ECX_val.123 = load i32, i32* %ECX.65, !mcsema_real_eip !71
  %429 = add i32 %ECX_val.123, %_new_load_715, !mcsema_real_eip !71
  %430 = xor i32 %429, %_new_load_715, !mcsema_real_eip !71
  %431 = xor i32 %430, %ECX_val.123, !mcsema_real_eip !71
  %432 = and i32 %431, 16, !mcsema_real_eip !71
  %433 = icmp ne i32 %432, 0, !mcsema_real_eip !71
  store i1 %433, i1* %AF, !mcsema_real_eip !71
  %434 = lshr i32 %429, 31, !mcsema_real_eip !71
  %435 = trunc i32 %434 to i1, !mcsema_real_eip !71
  store i1 %435, i1* %SF, !mcsema_real_eip !71
  %436 = icmp eq i32 %429, 0, !mcsema_real_eip !71
  store i1 %436, i1* %ZF, !mcsema_real_eip !71
  %437 = xor i32 %_new_load_715, %ECX_val.123, !mcsema_real_eip !71
  %438 = xor i32 %437, -1, !mcsema_real_eip !71
  %439 = and i32 %438, %430, !mcsema_real_eip !71
  %440 = lshr i32 %439, 31, !mcsema_real_eip !71
  %441 = and i32 %440, 1, !mcsema_real_eip !71
  %442 = trunc i32 %441 to i1, !mcsema_real_eip !71
  store i1 %442, i1* %OF, !mcsema_real_eip !71
  %443 = trunc i32 %429 to i8, !mcsema_real_eip !71
  %444 = call i8 @llvm.ctpop.i8(i8 %443), !mcsema_real_eip !71
  %445 = trunc i8 %444 to i1, !mcsema_real_eip !71
  %446 = xor i1 %445, true, !mcsema_real_eip !71
  store i1 %446, i1* %PF, !mcsema_real_eip !71
  %447 = icmp ult i32 %429, %_new_load_715, !mcsema_real_eip !71
  store i1 %447, i1* %CF, !mcsema_real_eip !71
  %448 = zext i32 %429 to i64, !mcsema_real_eip !71
  store i64 %448, i64* %XCX, !mcsema_real_eip !71
  %ECX_val.126 = load i32, i32* %ECX.65, !mcsema_real_eip !72
  store i32 %ECX_val.126, i32* %425, !mcsema_real_eip !72
  %_load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_
  %_new_gep_168 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -100
  %_allin_new_bt_169 = bitcast i8* %_new_gep_168 to i64*
  %449 = ptrtoint i64* %_allin_new_bt_169 to i64, !mcsema_real_eip !73
  %450 = inttoptr i64 %449 to i32*, !mcsema_real_eip !73
  store i32 0, i32* %450, !mcsema_real_eip !73
  br label %block_0x108, !mcsema_real_eip !74

block_0x108:                                      ; preds = %523, %427
  %_load_rbp_ptr_170 = load i8*, i8** %_RBP_ptr_
  %_new_gep_171 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -100
  %_allin_new_bt_172 = bitcast i8* %_new_gep_171 to i64*
  %451 = ptrtoint i64* %_allin_new_bt_172 to i64, !mcsema_real_eip !74
  %452 = inttoptr i64 %451 to i32*, !mcsema_real_eip !74
  %_ptr_bt_718 = bitcast i32* %452 to i8*
  %_offset_above_rbp_719 = sub i64 %451, %_local_end_to_int_
  %_pot_address_in_parent_stack_720 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_719
  %_cond1_721 = icmp ugt i8* %_ptr_bt_718, %_local_stack_end_ptr_
  %_cond2_1_722 = icmp ugt i8* %_ptr_bt_718, %_parent_stack_end_ptr_
  %_cond2_2_723 = icmp ult i8* %_ptr_bt_718, %_parent_stack_start_ptr_
  %_cond2_724 = or i1 %_cond2_1_722, %_cond2_2_723
  %_cond4_725 = icmp ule i8* %_pot_address_in_parent_stack_720, %_parent_stack_end_ptr_
  %_cond1_n_cond2_726 = and i1 %_cond1_721, %_cond2_724
  %_cond1_n_cond2_cond3_727 = and i1 %_cond1_n_cond2_726, %_cond4_725
  br i1 %_cond1_n_cond2_cond3_727, label %453, label %454

; <label>:453:                                    ; preds = %block_0x108
  %_address_in_parent_stack_bt_729 = bitcast i8* %_pot_address_in_parent_stack_720 to i32*
  br label %454

; <label>:454:                                    ; preds = %block_0x108, %453
  %455 = phi i32* [ %452, %block_0x108 ], [ %_address_in_parent_stack_bt_729, %453 ]
  %_new_load_730 = load i32, i32* %455
  %456 = zext i32 %_new_load_730 to i64, !mcsema_real_eip !74
  store i64 %456, i64* %XAX, !mcsema_real_eip !74
  %_new_gep_174 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -48
  %_allin_new_bt_175 = bitcast i8* %_new_gep_174 to i64*
  %EAX_val.131 = load i32, i32* %EAX.44, !mcsema_real_eip !75
  %457 = ptrtoint i64* %_allin_new_bt_175 to i64, !mcsema_real_eip !75
  %458 = inttoptr i64 %457 to i32*, !mcsema_real_eip !75
  %_ptr_bt_733 = bitcast i32* %458 to i8*
  %_offset_above_rbp_734 = sub i64 %457, %_local_end_to_int_
  %_pot_address_in_parent_stack_735 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_734
  %_cond1_736 = icmp ugt i8* %_ptr_bt_733, %_local_stack_end_ptr_
  %_cond2_1_737 = icmp ugt i8* %_ptr_bt_733, %_parent_stack_end_ptr_
  %_cond2_2_738 = icmp ult i8* %_ptr_bt_733, %_parent_stack_start_ptr_
  %_cond2_739 = or i1 %_cond2_1_737, %_cond2_2_738
  %_cond4_740 = icmp ule i8* %_pot_address_in_parent_stack_735, %_parent_stack_end_ptr_
  %_cond1_n_cond2_741 = and i1 %_cond1_736, %_cond2_739
  %_cond1_n_cond2_cond3_742 = and i1 %_cond1_n_cond2_741, %_cond4_740
  br i1 %_cond1_n_cond2_cond3_742, label %459, label %460

; <label>:459:                                    ; preds = %454
  %_address_in_parent_stack_bt_744 = bitcast i8* %_pot_address_in_parent_stack_735 to i32*
  br label %460

; <label>:460:                                    ; preds = %454, %459
  %461 = phi i32* [ %458, %454 ], [ %_address_in_parent_stack_bt_744, %459 ]
  %_new_load_745 = load i32, i32* %461
  %462 = sub i32 %EAX_val.131, %_new_load_745, !mcsema_real_eip !75
  %463 = xor i32 %462, %EAX_val.131, !mcsema_real_eip !75
  %464 = xor i32 %463, %_new_load_745, !mcsema_real_eip !75
  %465 = and i32 %464, 16, !mcsema_real_eip !75
  %466 = icmp ne i32 %465, 0, !mcsema_real_eip !75
  store i1 %466, i1* %AF, !mcsema_real_eip !75
  %467 = trunc i32 %462 to i8, !mcsema_real_eip !75
  %468 = call i8 @llvm.ctpop.i8(i8 %467), !mcsema_real_eip !75
  %469 = trunc i8 %468 to i1, !mcsema_real_eip !75
  %470 = xor i1 %469, true, !mcsema_real_eip !75
  store i1 %470, i1* %PF, !mcsema_real_eip !75
  %471 = icmp eq i32 %462, 0, !mcsema_real_eip !75
  store i1 %471, i1* %ZF, !mcsema_real_eip !75
  %472 = lshr i32 %462, 31, !mcsema_real_eip !75
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !75
  store i1 %473, i1* %SF, !mcsema_real_eip !75
  %474 = icmp ult i32 %EAX_val.131, %_new_load_745, !mcsema_real_eip !75
  store i1 %474, i1* %CF, !mcsema_real_eip !75
  %475 = xor i32 %EAX_val.131, %_new_load_745, !mcsema_real_eip !75
  %476 = and i32 %475, %463, !mcsema_real_eip !75
  %477 = lshr i32 %476, 31, !mcsema_real_eip !75
  %478 = trunc i32 %477 to i1, !mcsema_real_eip !75
  store i1 %478, i1* %OF, !mcsema_real_eip !75
  %479 = icmp eq i1 %473, %478, !mcsema_real_eip !76
  br i1 %479, label %block_0x133, label %block_0x114, !mcsema_real_eip !76

block_0x114:                                      ; preds = %460
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -80
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %_ptr_to_int_746 = ptrtoint i64* %_allin_new_bt_178 to i64
  %_offset_above_rbp_749 = sub i64 %_ptr_to_int_746, %_local_end_to_int_
  %_pot_address_in_parent_stack_750 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_749
  %_cond1_751 = icmp ugt i8* %_new_gep_177, %_local_stack_end_ptr_
  %_cond2_1_752 = icmp ugt i8* %_new_gep_177, %_parent_stack_end_ptr_
  %_cond2_2_753 = icmp ult i8* %_new_gep_177, %_parent_stack_start_ptr_
  %_cond2_754 = or i1 %_cond2_1_752, %_cond2_2_753
  %_cond4_755 = icmp ule i8* %_pot_address_in_parent_stack_750, %_parent_stack_end_ptr_
  %_cond1_n_cond2_756 = and i1 %_cond1_751, %_cond2_754
  %_cond1_n_cond2_cond3_757 = and i1 %_cond1_n_cond2_756, %_cond4_755
  br i1 %_cond1_n_cond2_cond3_757, label %480, label %481

; <label>:480:                                    ; preds = %block_0x114
  %_address_in_parent_stack_bt_759 = bitcast i8* %_pot_address_in_parent_stack_750 to i64*
  br label %481

; <label>:481:                                    ; preds = %block_0x114, %480
  %482 = phi i64* [ %_allin_new_bt_178, %block_0x114 ], [ %_address_in_parent_stack_bt_759, %480 ]
  %_new_load_760 = load i64, i64* %482
  store i64 %_new_load_760, i64* %XAX, !mcsema_real_eip !77
  br i1 %_cond1_n_cond2_cond3_727, label %483, label %484

; <label>:483:                                    ; preds = %481
  %_address_in_parent_stack_bt_774 = bitcast i8* %_pot_address_in_parent_stack_720 to i32*
  br label %484

; <label>:484:                                    ; preds = %481, %483
  %485 = phi i32* [ %452, %481 ], [ %_address_in_parent_stack_bt_774, %483 ]
  %_new_load_775 = load i32, i32* %485
  %486 = sext i32 %_new_load_775 to i64, !mcsema_real_eip !78
  store i64 %486, i64* %XCX, !mcsema_real_eip !78
  %487 = mul i64 %486, 4, !mcsema_real_eip !79
  %488 = add i64 %_new_load_760, %487, !mcsema_real_eip !79
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !79
  %490 = inttoptr i64 %488 to i32*, !mcsema_real_eip !79
  %_ptr_bt_778 = bitcast i32* %490 to i8*
  %_offset_above_rbp_779 = sub i64 %488, %_local_end_to_int_
  %_pot_address_in_parent_stack_780 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_779
  %_cond1_781 = icmp ugt i8* %_ptr_bt_778, %_local_stack_end_ptr_
  %_cond2_1_782 = icmp ugt i8* %_ptr_bt_778, %_parent_stack_end_ptr_
  %_cond2_2_783 = icmp ult i8* %_ptr_bt_778, %_parent_stack_start_ptr_
  %_cond2_784 = or i1 %_cond2_1_782, %_cond2_2_783
  %_cond4_785 = icmp ule i8* %_pot_address_in_parent_stack_780, %_parent_stack_end_ptr_
  %_cond1_n_cond2_786 = and i1 %_cond1_781, %_cond2_784
  %_cond1_n_cond2_cond3_787 = and i1 %_cond1_n_cond2_786, %_cond4_785
  br i1 %_cond1_n_cond2_cond3_787, label %491, label %492

; <label>:491:                                    ; preds = %484
  %_address_in_parent_stack_bt_789 = bitcast i8* %_pot_address_in_parent_stack_780 to i32*
  br label %492

; <label>:492:                                    ; preds = %484, %491
  %493 = phi i32* [ %490, %484 ], [ %_address_in_parent_stack_bt_789, %491 ]
  %_new_load_790 = load i32, i32* %493
  %494 = zext i32 %_new_load_790 to i64, !mcsema_real_eip !79
  store i64 %494, i64* %XDX, !mcsema_real_eip !79
  %_new_gep_183 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -84
  %_allin_new_bt_184 = bitcast i8* %_new_gep_183 to i64*
  %495 = ptrtoint i64* %_allin_new_bt_184 to i64, !mcsema_real_eip !80
  %496 = inttoptr i64 %495 to i32*, !mcsema_real_eip !80
  %_ptr_bt_793 = bitcast i32* %496 to i8*
  %_offset_above_rbp_794 = sub i64 %495, %_local_end_to_int_
  %_pot_address_in_parent_stack_795 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_794
  %_cond1_796 = icmp ugt i8* %_ptr_bt_793, %_local_stack_end_ptr_
  %_cond2_1_797 = icmp ugt i8* %_ptr_bt_793, %_parent_stack_end_ptr_
  %_cond2_2_798 = icmp ult i8* %_ptr_bt_793, %_parent_stack_start_ptr_
  %_cond2_799 = or i1 %_cond2_1_797, %_cond2_2_798
  %_cond4_800 = icmp ule i8* %_pot_address_in_parent_stack_795, %_parent_stack_end_ptr_
  %_cond1_n_cond2_801 = and i1 %_cond1_796, %_cond2_799
  %_cond1_n_cond2_cond3_802 = and i1 %_cond1_n_cond2_801, %_cond4_800
  br i1 %_cond1_n_cond2_cond3_802, label %497, label %498

; <label>:497:                                    ; preds = %492
  %_address_in_parent_stack_bt_804 = bitcast i8* %_pot_address_in_parent_stack_795 to i32*
  br label %498

; <label>:498:                                    ; preds = %492, %497
  %499 = phi i32* [ %496, %492 ], [ %_address_in_parent_stack_bt_804, %497 ]
  %_new_load_805 = load i32, i32* %499
  %EDX.137 = bitcast i64* %XDX to i32*, !mcsema_real_eip !80
  %EDX_val.138 = load i32, i32* %EDX.137, !mcsema_real_eip !80
  %500 = add i32 %EDX_val.138, %_new_load_805, !mcsema_real_eip !80
  %501 = xor i32 %500, %_new_load_805, !mcsema_real_eip !80
  %502 = xor i32 %501, %EDX_val.138, !mcsema_real_eip !80
  %503 = and i32 %502, 16, !mcsema_real_eip !80
  %504 = icmp ne i32 %503, 0, !mcsema_real_eip !80
  store i1 %504, i1* %AF, !mcsema_real_eip !80
  %505 = lshr i32 %500, 31, !mcsema_real_eip !80
  %506 = trunc i32 %505 to i1, !mcsema_real_eip !80
  store i1 %506, i1* %SF, !mcsema_real_eip !80
  %507 = icmp eq i32 %500, 0, !mcsema_real_eip !80
  store i1 %507, i1* %ZF, !mcsema_real_eip !80
  %508 = xor i32 %_new_load_805, %EDX_val.138, !mcsema_real_eip !80
  %509 = xor i32 %508, -1, !mcsema_real_eip !80
  %510 = and i32 %509, %501, !mcsema_real_eip !80
  %511 = lshr i32 %510, 31, !mcsema_real_eip !80
  %512 = and i32 %511, 1, !mcsema_real_eip !80
  %513 = trunc i32 %512 to i1, !mcsema_real_eip !80
  store i1 %513, i1* %OF, !mcsema_real_eip !80
  %514 = trunc i32 %500 to i8, !mcsema_real_eip !80
  %515 = call i8 @llvm.ctpop.i8(i8 %514), !mcsema_real_eip !80
  %516 = trunc i8 %515 to i1, !mcsema_real_eip !80
  %517 = xor i1 %516, true, !mcsema_real_eip !80
  store i1 %517, i1* %PF, !mcsema_real_eip !80
  %518 = icmp ult i32 %500, %_new_load_805, !mcsema_real_eip !80
  store i1 %518, i1* %CF, !mcsema_real_eip !80
  %519 = zext i32 %500 to i64, !mcsema_real_eip !80
  store i64 %519, i64* %XDX, !mcsema_real_eip !80
  %EDX_val.141 = load i32, i32* %EDX.137, !mcsema_real_eip !81
  store i32 %EDX_val.141, i32* %496, !mcsema_real_eip !81
  %_load_rbp_ptr_188 = load i8*, i8** %_RBP_ptr_
  %_new_gep_189 = getelementptr i8, i8* %_load_rbp_ptr_188, i64 -100
  %_allin_new_bt_190 = bitcast i8* %_new_gep_189 to i64*
  %520 = ptrtoint i64* %_allin_new_bt_190 to i64, !mcsema_real_eip !82
  %521 = inttoptr i64 %520 to i32*, !mcsema_real_eip !82
  %_ptr_bt_808 = bitcast i32* %521 to i8*
  %_offset_above_rbp_809 = sub i64 %520, %_local_end_to_int_
  %_pot_address_in_parent_stack_810 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_809
  %_cond1_811 = icmp ugt i8* %_ptr_bt_808, %_local_stack_end_ptr_
  %_cond2_1_812 = icmp ugt i8* %_ptr_bt_808, %_parent_stack_end_ptr_
  %_cond2_2_813 = icmp ult i8* %_ptr_bt_808, %_parent_stack_start_ptr_
  %_cond2_814 = or i1 %_cond2_1_812, %_cond2_2_813
  %_cond4_815 = icmp ule i8* %_pot_address_in_parent_stack_810, %_parent_stack_end_ptr_
  %_cond1_n_cond2_816 = and i1 %_cond1_811, %_cond2_814
  %_cond1_n_cond2_cond3_817 = and i1 %_cond1_n_cond2_816, %_cond4_815
  br i1 %_cond1_n_cond2_cond3_817, label %522, label %523

; <label>:522:                                    ; preds = %498
  %_address_in_parent_stack_bt_819 = bitcast i8* %_pot_address_in_parent_stack_810 to i32*
  br label %523

; <label>:523:                                    ; preds = %498, %522
  %524 = phi i32* [ %521, %498 ], [ %_address_in_parent_stack_bt_819, %522 ]
  %_new_load_820 = load i32, i32* %524
  %525 = zext i32 %_new_load_820 to i64, !mcsema_real_eip !82
  store i64 %525, i64* %XAX, !mcsema_real_eip !82
  %EAX_val.144 = load i32, i32* %EAX.44, !mcsema_real_eip !83
  %526 = add i32 1, %EAX_val.144, !mcsema_real_eip !83
  %527 = xor i32 %526, %EAX_val.144, !mcsema_real_eip !83
  %528 = xor i32 %527, 1, !mcsema_real_eip !83
  %529 = and i32 %528, 16, !mcsema_real_eip !83
  %530 = icmp ne i32 %529, 0, !mcsema_real_eip !83
  store i1 %530, i1* %AF, !mcsema_real_eip !83
  %531 = lshr i32 %526, 31, !mcsema_real_eip !83
  %532 = trunc i32 %531 to i1, !mcsema_real_eip !83
  store i1 %532, i1* %SF, !mcsema_real_eip !83
  %533 = icmp eq i32 %526, 0, !mcsema_real_eip !83
  store i1 %533, i1* %ZF, !mcsema_real_eip !83
  %534 = xor i32 %EAX_val.144, 1, !mcsema_real_eip !83
  %535 = xor i32 %534, -1, !mcsema_real_eip !83
  %536 = and i32 %535, %527, !mcsema_real_eip !83
  %537 = lshr i32 %536, 31, !mcsema_real_eip !83
  %538 = and i32 %537, 1, !mcsema_real_eip !83
  %539 = trunc i32 %538 to i1, !mcsema_real_eip !83
  store i1 %539, i1* %OF, !mcsema_real_eip !83
  %540 = trunc i32 %526 to i8, !mcsema_real_eip !83
  %541 = call i8 @llvm.ctpop.i8(i8 %540), !mcsema_real_eip !83
  %542 = trunc i8 %541 to i1, !mcsema_real_eip !83
  %543 = xor i1 %542, true, !mcsema_real_eip !83
  store i1 %543, i1* %PF, !mcsema_real_eip !83
  %544 = icmp ult i32 %526, %EAX_val.144, !mcsema_real_eip !83
  store i1 %544, i1* %CF, !mcsema_real_eip !83
  %545 = zext i32 %526 to i64, !mcsema_real_eip !83
  store i64 %545, i64* %XAX, !mcsema_real_eip !83
  %EAX_val.147 = load i32, i32* %EAX.44, !mcsema_real_eip !84
  store i32 %EAX_val.147, i32* %521, !mcsema_real_eip !84
  br label %block_0x108, !mcsema_real_eip !85

block_0x133:                                      ; preds = %460
  %_new_gep_195 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -84
  %_allin_new_bt_196 = bitcast i8* %_new_gep_195 to i64*
  %546 = ptrtoint i64* %_allin_new_bt_196 to i64, !mcsema_real_eip !86
  %547 = inttoptr i64 %546 to i32*, !mcsema_real_eip !86
  %_ptr_bt_823 = bitcast i32* %547 to i8*
  %_offset_above_rbp_824 = sub i64 %546, %_local_end_to_int_
  %_pot_address_in_parent_stack_825 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_824
  %_cond1_826 = icmp ugt i8* %_ptr_bt_823, %_local_stack_end_ptr_
  %_cond2_1_827 = icmp ugt i8* %_ptr_bt_823, %_parent_stack_end_ptr_
  %_cond2_2_828 = icmp ult i8* %_ptr_bt_823, %_parent_stack_start_ptr_
  %_cond2_829 = or i1 %_cond2_1_827, %_cond2_2_828
  %_cond4_830 = icmp ule i8* %_pot_address_in_parent_stack_825, %_parent_stack_end_ptr_
  %_cond1_n_cond2_831 = and i1 %_cond1_826, %_cond2_829
  %_cond1_n_cond2_cond3_832 = and i1 %_cond1_n_cond2_831, %_cond4_830
  br i1 %_cond1_n_cond2_cond3_832, label %548, label %549

; <label>:548:                                    ; preds = %block_0x133
  %_address_in_parent_stack_bt_834 = bitcast i8* %_pot_address_in_parent_stack_825 to i32*
  br label %549

; <label>:549:                                    ; preds = %block_0x133, %548
  %550 = phi i32* [ %547, %block_0x133 ], [ %_address_in_parent_stack_bt_834, %548 ]
  %_new_load_835 = load i32, i32* %550
  %551 = zext i32 %_new_load_835 to i64, !mcsema_real_eip !86
  store i64 %551, i64* %XAX, !mcsema_real_eip !86
  %_load_rsp_ptr_197 = load i8*, i8** %_RSP_ptr_
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !87
  %_allin_new_bt_198 = bitcast i8* %_load_rsp_ptr_197 to i64*
  %_ptr_to_int_836 = ptrtoint i64* %_allin_new_bt_198 to i64
  %_offset_above_rbp_839 = sub i64 %_ptr_to_int_836, %_local_end_to_int_
  %_pot_address_in_parent_stack_840 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_839
  %_cond1_841 = icmp ugt i8* %_load_rsp_ptr_197, %_local_stack_end_ptr_
  %_cond2_1_842 = icmp ugt i8* %_load_rsp_ptr_197, %_parent_stack_end_ptr_
  %_cond2_2_843 = icmp ult i8* %_load_rsp_ptr_197, %_parent_stack_start_ptr_
  %_cond2_844 = or i1 %_cond2_1_842, %_cond2_2_843
  %_cond4_845 = icmp ule i8* %_pot_address_in_parent_stack_840, %_parent_stack_end_ptr_
  %_cond1_n_cond2_846 = and i1 %_cond1_841, %_cond2_844
  %_cond1_n_cond2_cond3_847 = and i1 %_cond1_n_cond2_846, %_cond4_845
  br i1 %_cond1_n_cond2_cond3_847, label %552, label %553

; <label>:552:                                    ; preds = %549
  %_address_in_parent_stack_bt_849 = bitcast i8* %_pot_address_in_parent_stack_840 to i64*
  br label %553

; <label>:553:                                    ; preds = %549, %552
  %554 = phi i64* [ %_allin_new_bt_198, %549 ], [ %_address_in_parent_stack_bt_849, %552 ]
  %_new_load_850 = load i64, i64* %554
  store i64 %_new_load_850, i64* %XBX, !mcsema_real_eip !87
  %_new_gep_199 = getelementptr i8, i8* %_load_rsp_ptr_197, i64 8
  %555 = add i64 %RSP_val.149, 8, !mcsema_real_eip !87
  store volatile i8* %_new_gep_199, i8** %_RSP_ptr_
  store i64 %555, i64* %XSP, !mcsema_real_eip !87
  %_allin_new_bt_201 = bitcast i8* %_new_gep_199 to i64*
  %_ptr_to_int_851 = ptrtoint i64* %_allin_new_bt_201 to i64
  %_offset_above_rbp_854 = sub i64 %_ptr_to_int_851, %_local_end_to_int_
  %_pot_address_in_parent_stack_855 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_854
  %_cond1_856 = icmp ugt i8* %_new_gep_199, %_local_stack_end_ptr_
  %_cond2_1_857 = icmp ugt i8* %_new_gep_199, %_parent_stack_end_ptr_
  %_cond2_2_858 = icmp ult i8* %_new_gep_199, %_parent_stack_start_ptr_
  %_cond2_859 = or i1 %_cond2_1_857, %_cond2_2_858
  %_cond4_860 = icmp ule i8* %_pot_address_in_parent_stack_855, %_parent_stack_end_ptr_
  %_cond1_n_cond2_861 = and i1 %_cond1_856, %_cond2_859
  %_cond1_n_cond2_cond3_862 = and i1 %_cond1_n_cond2_861, %_cond4_860
  br i1 %_cond1_n_cond2_cond3_862, label %556, label %557

; <label>:556:                                    ; preds = %553
  %_address_in_parent_stack_bt_864 = bitcast i8* %_pot_address_in_parent_stack_855 to i64*
  br label %557

; <label>:557:                                    ; preds = %553, %556
  %558 = phi i64* [ %_allin_new_bt_201, %553 ], [ %_address_in_parent_stack_bt_864, %556 ]
  %_new_load_865 = load i64, i64* %558
  %_new_int2ptr_ = inttoptr i64 %_new_load_865 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_865, i64* %XBP, !mcsema_real_eip !88
  %_new_gep_202 = getelementptr i8, i8* %_new_gep_199, i64 8
  %559 = add i64 %555, 8, !mcsema_real_eip !88
  store volatile i8* %_new_gep_202, i8** %_RSP_ptr_
  store i64 %559, i64* %XSP, !mcsema_real_eip !88
  %_new_gep_204 = getelementptr i8, i8* %_new_gep_202, i64 8
  %560 = add i64 %559, 8, !mcsema_real_eip !89
  %_allin_new_bt_205 = bitcast i8* %_new_gep_202 to i64*
  %_ptr_to_int_866 = ptrtoint i64* %_allin_new_bt_205 to i64
  %_offset_above_rbp_869 = sub i64 %_ptr_to_int_866, %_local_end_to_int_
  %_pot_address_in_parent_stack_870 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_869
  %_cond1_871 = icmp ugt i8* %_new_gep_202, %_local_stack_end_ptr_
  %_cond2_1_872 = icmp ugt i8* %_new_gep_202, %_parent_stack_end_ptr_
  %_cond2_2_873 = icmp ult i8* %_new_gep_202, %_parent_stack_start_ptr_
  %_cond2_874 = or i1 %_cond2_1_872, %_cond2_2_873
  %_cond4_875 = icmp ule i8* %_pot_address_in_parent_stack_870, %_parent_stack_end_ptr_
  %_cond1_n_cond2_876 = and i1 %_cond1_871, %_cond2_874
  %_cond1_n_cond2_cond3_877 = and i1 %_cond1_n_cond2_876, %_cond4_875
  br i1 %_cond1_n_cond2_cond3_877, label %561, label %562

; <label>:561:                                    ; preds = %557
  %_address_in_parent_stack_bt_879 = bitcast i8* %_pot_address_in_parent_stack_870 to i64*
  br label %562

; <label>:562:                                    ; preds = %557, %561
  %563 = phi i64* [ %_allin_new_bt_205, %557 ], [ %_address_in_parent_stack_bt_879, %561 ]
  %_new_load_880 = load i64, i64* %563
  store i64 %_new_load_880, i64* %XIP, !mcsema_real_eip !89
  store volatile i8* %_new_gep_204, i8** %_RSP_ptr_
  store i64 %560, i64* %XSP, !mcsema_real_eip !89
  ret void, !mcsema_real_eip !89
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_140.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 192
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 192
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !90
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !90
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !90
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !90
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !90
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !90
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !90
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !90
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !90
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !90
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !90
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !90
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !90
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !90
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !90
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !90
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !90
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !90
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !90
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !90
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !90
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !90
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !90
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !90
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !90
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !90
  br label %block_0x140, !mcsema_real_eip !90

block_0x140:                                      ; preds = %entry
  %RSP_val.153 = load i64, i64* %XSP, !mcsema_real_eip !90
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.153, 8, !mcsema_real_eip !90
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !90
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !91
  %R14_val.155 = load i64, i64* %R14, !mcsema_real_eip !92
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.156 = load i64, i64* %XSP, !mcsema_real_eip !92
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.156, 8, !mcsema_real_eip !92
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R14_val.155, i64* %_allin_new_bt_4, !mcsema_real_eip !92
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !92
  %RBX_val.157 = load i64, i64* %XBX, !mcsema_real_eip !93
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -8
  %3 = sub i64 %2, 8, !mcsema_real_eip !93
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %RBX_val.157, i64* %_allin_new_bt_7, !mcsema_real_eip !93
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !93
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_6, i64 -160
  %4 = sub i64 %3, 160, !mcsema_real_eip !94
  %_trans_p2i_ = ptrtoint i8* %_new_gep_9 to i64
  %_trans_p2i_10 = ptrtoint i8* %_new_gep_6 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_10
  %5 = xor i64 %_trans_xor_, 160, !mcsema_real_eip !94
  %6 = and i64 %5, 16, !mcsema_real_eip !94
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !94
  store i1 %7, i1* %AF, !mcsema_real_eip !94
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %8 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !94
  %9 = trunc i8 %8 to i1, !mcsema_real_eip !94
  %10 = xor i1 %9, true, !mcsema_real_eip !94
  store i1 %10, i1* %PF, !mcsema_real_eip !94
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !94
  %11 = lshr i64 %4, 63, !mcsema_real_eip !94
  %12 = trunc i64 %11 to i1, !mcsema_real_eip !94
  store i1 %12, i1* %SF, !mcsema_real_eip !94
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_10, 160
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !94
  %_trans_xor_15 = xor i64 %_trans_p2i_10, 160
  %13 = and i64 %_trans_xor_15, %_trans_xor_, !mcsema_real_eip !94
  %14 = lshr i64 %13, 63, !mcsema_real_eip !94
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !94
  store i1 %15, i1* %OF, !mcsema_real_eip !94
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_
  store i64 %4, i64* %XSP, !mcsema_real_eip !94
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !95
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !95
  store i32 0, i32* %17, !mcsema_real_eip !95
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !96
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !96
  store i32 1, i32* %19, !mcsema_real_eip !96
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -68
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !97
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !97
  store i32 0, i32* %21, !mcsema_real_eip !97
  br label %block_0x163, !mcsema_real_eip !98

block_0x163:                                      ; preds = %79, %block_0x140
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -68
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !98
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !98
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %23 to i8*
  %_offset_above_rbp_ = sub i64 %22, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %24, label %25

; <label>:24:                                     ; preds = %block_0x163
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %25

; <label>:25:                                     ; preds = %block_0x163, %24
  %26 = phi i32* [ %23, %block_0x163 ], [ %_address_in_parent_stack_bt_, %24 ]
  %_new_load_ = load i32, i32* %26
  %27 = sub i32 %_new_load_, 10, !mcsema_real_eip !98
  %28 = xor i32 %27, %_new_load_, !mcsema_real_eip !98
  %29 = xor i32 %28, 10, !mcsema_real_eip !98
  %30 = and i32 %29, 16, !mcsema_real_eip !98
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !98
  store i1 %31, i1* %AF, !mcsema_real_eip !98
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !98
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !98
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !98
  %35 = xor i1 %34, true, !mcsema_real_eip !98
  store i1 %35, i1* %PF, !mcsema_real_eip !98
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !98
  store i1 %36, i1* %ZF, !mcsema_real_eip !98
  %37 = lshr i32 %27, 31, !mcsema_real_eip !98
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !98
  store i1 %38, i1* %SF, !mcsema_real_eip !98
  %39 = icmp ult i32 %_new_load_, 10, !mcsema_real_eip !98
  store i1 %39, i1* %CF, !mcsema_real_eip !98
  %40 = xor i32 %_new_load_, 10, !mcsema_real_eip !98
  %41 = and i32 %40, %28, !mcsema_real_eip !98
  %42 = lshr i32 %41, 31, !mcsema_real_eip !98
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !98
  store i1 %43, i1* %OF, !mcsema_real_eip !98
  %44 = icmp eq i1 %38, %43, !mcsema_real_eip !99
  br i1 %44, label %block_0x189, label %block_0x16d, !mcsema_real_eip !99

block_0x16d:                                      ; preds = %25
  br i1 %_cond1_n_cond2_cond3_, label %45, label %46

; <label>:45:                                     ; preds = %block_0x16d
  %_address_in_parent_stack_bt_222 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %46

; <label>:46:                                     ; preds = %block_0x16d, %45
  %47 = phi i32* [ %23, %block_0x16d ], [ %_address_in_parent_stack_bt_222, %45 ]
  %_new_load_223 = load i32, i32* %47
  %48 = zext i32 %_new_load_223 to i64, !mcsema_real_eip !100
  store i64 %48, i64* %XAX, !mcsema_real_eip !100
  %EAX.165 = bitcast i64* %XAX to i32*, !mcsema_real_eip !101
  %EAX_val.166 = load i32, i32* %EAX.165, !mcsema_real_eip !101
  %49 = add i32 1, %EAX_val.166, !mcsema_real_eip !101
  %50 = xor i32 %49, %EAX_val.166, !mcsema_real_eip !101
  %51 = xor i32 %50, 1, !mcsema_real_eip !101
  %52 = and i32 %51, 16, !mcsema_real_eip !101
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !101
  store i1 %53, i1* %AF, !mcsema_real_eip !101
  %54 = lshr i32 %49, 31, !mcsema_real_eip !101
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !101
  store i1 %55, i1* %SF, !mcsema_real_eip !101
  %56 = icmp eq i32 %49, 0, !mcsema_real_eip !101
  store i1 %56, i1* %ZF, !mcsema_real_eip !101
  %57 = xor i32 %EAX_val.166, 1, !mcsema_real_eip !101
  %58 = xor i32 %57, -1, !mcsema_real_eip !101
  %59 = and i32 %58, %50, !mcsema_real_eip !101
  %60 = lshr i32 %59, 31, !mcsema_real_eip !101
  %61 = and i32 %60, 1, !mcsema_real_eip !101
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !101
  store i1 %62, i1* %OF, !mcsema_real_eip !101
  %63 = trunc i32 %49 to i8, !mcsema_real_eip !101
  %64 = call i8 @llvm.ctpop.i8(i8 %63), !mcsema_real_eip !101
  %65 = trunc i8 %64 to i1, !mcsema_real_eip !101
  %66 = xor i1 %65, true, !mcsema_real_eip !101
  store i1 %66, i1* %PF, !mcsema_real_eip !101
  %67 = icmp ult i32 %49, %EAX_val.166, !mcsema_real_eip !101
  store i1 %67, i1* %CF, !mcsema_real_eip !101
  %68 = zext i32 %49 to i64, !mcsema_real_eip !101
  store i64 %68, i64* %XAX, !mcsema_real_eip !101
  br i1 %_cond1_n_cond2_cond3_, label %69, label %70

; <label>:69:                                     ; preds = %46
  %_address_in_parent_stack_bt_237 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %70

; <label>:70:                                     ; preds = %46, %69
  %71 = phi i32* [ %23, %46 ], [ %_address_in_parent_stack_bt_237, %69 ]
  %_new_load_238 = load i32, i32* %71
  %72 = sext i32 %_new_load_238 to i64, !mcsema_real_eip !102
  store i64 %72, i64* %XCX, !mcsema_real_eip !102
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -64
  %73 = mul i64 %72, 4, !mcsema_real_eip !103
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_38, i64 %73
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %EAX_val.171 = load i32, i32* %EAX.165, !mcsema_real_eip !103
  %74 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !103
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !103
  store i32 %EAX_val.171, i32* %75, !mcsema_real_eip !103
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -68
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %76 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !104
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !104
  %_ptr_bt_241 = bitcast i32* %77 to i8*
  %_offset_above_rbp_242 = sub i64 %76, %_local_end_to_int_
  %_pot_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_242
  %_cond1_244 = icmp ugt i8* %_ptr_bt_241, %_local_stack_end_ptr_
  %_cond2_1_245 = icmp ugt i8* %_ptr_bt_241, %_parent_stack_end_ptr_
  %_cond2_2_246 = icmp ult i8* %_ptr_bt_241, %_parent_stack_start_ptr_
  %_cond2_247 = or i1 %_cond2_1_245, %_cond2_2_246
  %_cond4_248 = icmp ule i8* %_pot_address_in_parent_stack_243, %_parent_stack_end_ptr_
  %_cond1_n_cond2_249 = and i1 %_cond1_244, %_cond2_247
  %_cond1_n_cond2_cond3_250 = and i1 %_cond1_n_cond2_249, %_cond4_248
  br i1 %_cond1_n_cond2_cond3_250, label %78, label %79

; <label>:78:                                     ; preds = %70
  %_address_in_parent_stack_bt_252 = bitcast i8* %_pot_address_in_parent_stack_243 to i32*
  br label %79

; <label>:79:                                     ; preds = %70, %78
  %80 = phi i32* [ %77, %70 ], [ %_address_in_parent_stack_bt_252, %78 ]
  %_new_load_253 = load i32, i32* %80
  %81 = zext i32 %_new_load_253 to i64, !mcsema_real_eip !104
  store i64 %81, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.174 = load i32, i32* %EAX.165, !mcsema_real_eip !105
  %82 = add i32 1, %EAX_val.174, !mcsema_real_eip !105
  %83 = xor i32 %82, %EAX_val.174, !mcsema_real_eip !105
  %84 = xor i32 %83, 1, !mcsema_real_eip !105
  %85 = and i32 %84, 16, !mcsema_real_eip !105
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !105
  store i1 %86, i1* %AF, !mcsema_real_eip !105
  %87 = lshr i32 %82, 31, !mcsema_real_eip !105
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !105
  store i1 %88, i1* %SF, !mcsema_real_eip !105
  %89 = icmp eq i32 %82, 0, !mcsema_real_eip !105
  store i1 %89, i1* %ZF, !mcsema_real_eip !105
  %90 = xor i32 %EAX_val.174, 1, !mcsema_real_eip !105
  %91 = xor i32 %90, -1, !mcsema_real_eip !105
  %92 = and i32 %91, %83, !mcsema_real_eip !105
  %93 = lshr i32 %92, 31, !mcsema_real_eip !105
  %94 = and i32 %93, 1, !mcsema_real_eip !105
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !105
  store i1 %95, i1* %OF, !mcsema_real_eip !105
  %96 = trunc i32 %82 to i8, !mcsema_real_eip !105
  %97 = call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !105
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !105
  %99 = xor i1 %98, true, !mcsema_real_eip !105
  store i1 %99, i1* %PF, !mcsema_real_eip !105
  %100 = icmp ult i32 %82, %EAX_val.174, !mcsema_real_eip !105
  store i1 %100, i1* %CF, !mcsema_real_eip !105
  %101 = zext i32 %82 to i64, !mcsema_real_eip !105
  store i64 %101, i64* %XAX, !mcsema_real_eip !105
  %EAX_val.177 = load i32, i32* %EAX.165, !mcsema_real_eip !106
  store i32 %EAX_val.177, i32* %77, !mcsema_real_eip !106
  br label %block_0x163, !mcsema_real_eip !107

block_0x189:                                      ; preds = %25
  store i64 40, i64* %XAX, !mcsema_real_eip !108
  %EAX.178 = bitcast i64* %XAX to i32*, !mcsema_real_eip !109
  %EAX_val.179 = load i32, i32* %EAX.178, !mcsema_real_eip !109
  %102 = zext i32 %EAX_val.179 to i64, !mcsema_real_eip !109
  store i64 %102, i64* %XDI, !mcsema_real_eip !109
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %103 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !110
  store i64 %103, i64* %XCX, !mcsema_real_eip !110
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -80
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  store i64 %103, i64* %_allin_new_bt_52, !mcsema_real_eip !111
  %RDI_val.183 = load i64, i64* %XDI, !mcsema_real_eip !112
  %_load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_
  %RSP_val.184 = load i64, i64* %XSP, !mcsema_real_eip !112
  %_new_gep_54 = getelementptr i8, i8* %_load_rsp_ptr_53, i64 -8
  %104 = sub i64 %RSP_val.184, 8, !mcsema_real_eip !112
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_55, !mcsema_real_eip !112
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %104, i64* %XSP, !mcsema_real_eip !112
  %105 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.183)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %105, i64* %XAX, !mcsema_real_eip !112
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -88
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  store i64 %105, i64* %_allin_new_bt_58, !mcsema_real_eip !113
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -92
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %106 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !114
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !114
  store i32 0, i32* %107, !mcsema_real_eip !114
  br label %block_0x1a8, !mcsema_real_eip !115

block_0x1a8:                                      ; preds = %169, %block_0x189
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -92
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %108 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !115
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !115
  %_ptr_bt_256 = bitcast i32* %109 to i8*
  %_offset_above_rbp_257 = sub i64 %108, %_local_end_to_int_
  %_pot_address_in_parent_stack_258 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_257
  %_cond1_259 = icmp ugt i8* %_ptr_bt_256, %_local_stack_end_ptr_
  %_cond2_1_260 = icmp ugt i8* %_ptr_bt_256, %_parent_stack_end_ptr_
  %_cond2_2_261 = icmp ult i8* %_ptr_bt_256, %_parent_stack_start_ptr_
  %_cond2_262 = or i1 %_cond2_1_260, %_cond2_2_261
  %_cond4_263 = icmp ule i8* %_pot_address_in_parent_stack_258, %_parent_stack_end_ptr_
  %_cond1_n_cond2_264 = and i1 %_cond1_259, %_cond2_262
  %_cond1_n_cond2_cond3_265 = and i1 %_cond1_n_cond2_264, %_cond4_263
  br i1 %_cond1_n_cond2_cond3_265, label %110, label %111

; <label>:110:                                    ; preds = %block_0x1a8
  %_address_in_parent_stack_bt_267 = bitcast i8* %_pot_address_in_parent_stack_258 to i32*
  br label %111

; <label>:111:                                    ; preds = %block_0x1a8, %110
  %112 = phi i32* [ %109, %block_0x1a8 ], [ %_address_in_parent_stack_bt_267, %110 ]
  %_new_load_268 = load i32, i32* %112
  %113 = sub i32 %_new_load_268, 10, !mcsema_real_eip !115
  %114 = xor i32 %113, %_new_load_268, !mcsema_real_eip !115
  %115 = xor i32 %114, 10, !mcsema_real_eip !115
  %116 = and i32 %115, 16, !mcsema_real_eip !115
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !115
  store i1 %117, i1* %AF, !mcsema_real_eip !115
  %118 = trunc i32 %113 to i8, !mcsema_real_eip !115
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !115
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !115
  %121 = xor i1 %120, true, !mcsema_real_eip !115
  store i1 %121, i1* %PF, !mcsema_real_eip !115
  %122 = icmp eq i32 %113, 0, !mcsema_real_eip !115
  store i1 %122, i1* %ZF, !mcsema_real_eip !115
  %123 = lshr i32 %113, 31, !mcsema_real_eip !115
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !115
  store i1 %124, i1* %SF, !mcsema_real_eip !115
  %125 = icmp ult i32 %_new_load_268, 10, !mcsema_real_eip !115
  store i1 %125, i1* %CF, !mcsema_real_eip !115
  %126 = xor i32 %_new_load_268, 10, !mcsema_real_eip !115
  %127 = and i32 %126, %114, !mcsema_real_eip !115
  %128 = lshr i32 %127, 31, !mcsema_real_eip !115
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !115
  store i1 %129, i1* %OF, !mcsema_real_eip !115
  %130 = icmp eq i1 %124, %129, !mcsema_real_eip !116
  br i1 %130, label %block_0x1d1, label %block_0x1b2, !mcsema_real_eip !116

block_0x1b2:                                      ; preds = %111
  br i1 %_cond1_n_cond2_cond3_265, label %131, label %132

; <label>:131:                                    ; preds = %block_0x1b2
  %_address_in_parent_stack_bt_282 = bitcast i8* %_pot_address_in_parent_stack_258 to i32*
  br label %132

; <label>:132:                                    ; preds = %block_0x1b2, %131
  %133 = phi i32* [ %109, %block_0x1b2 ], [ %_address_in_parent_stack_bt_282, %131 ]
  %_new_load_283 = load i32, i32* %133
  %134 = zext i32 %_new_load_283 to i64, !mcsema_real_eip !117
  store i64 %134, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.191 = load i32, i32* %EAX.178, !mcsema_real_eip !118
  %135 = add i32 1, %EAX_val.191, !mcsema_real_eip !118
  %136 = xor i32 %135, %EAX_val.191, !mcsema_real_eip !118
  %137 = xor i32 %136, 1, !mcsema_real_eip !118
  %138 = and i32 %137, 16, !mcsema_real_eip !118
  %139 = icmp ne i32 %138, 0, !mcsema_real_eip !118
  store i1 %139, i1* %AF, !mcsema_real_eip !118
  %140 = lshr i32 %135, 31, !mcsema_real_eip !118
  %141 = trunc i32 %140 to i1, !mcsema_real_eip !118
  store i1 %141, i1* %SF, !mcsema_real_eip !118
  %142 = icmp eq i32 %135, 0, !mcsema_real_eip !118
  store i1 %142, i1* %ZF, !mcsema_real_eip !118
  %143 = xor i32 %EAX_val.191, 1, !mcsema_real_eip !118
  %144 = xor i32 %143, -1, !mcsema_real_eip !118
  %145 = and i32 %144, %136, !mcsema_real_eip !118
  %146 = lshr i32 %145, 31, !mcsema_real_eip !118
  %147 = and i32 %146, 1, !mcsema_real_eip !118
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !118
  store i1 %148, i1* %OF, !mcsema_real_eip !118
  %149 = trunc i32 %135 to i8, !mcsema_real_eip !118
  %150 = call i8 @llvm.ctpop.i8(i8 %149), !mcsema_real_eip !118
  %151 = trunc i8 %150 to i1, !mcsema_real_eip !118
  %152 = xor i1 %151, true, !mcsema_real_eip !118
  store i1 %152, i1* %PF, !mcsema_real_eip !118
  %153 = icmp ult i32 %135, %EAX_val.191, !mcsema_real_eip !118
  store i1 %153, i1* %CF, !mcsema_real_eip !118
  %154 = zext i32 %135 to i64, !mcsema_real_eip !118
  store i64 %154, i64* %XAX, !mcsema_real_eip !118
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %_ptr_to_int_284 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_287 = sub i64 %_ptr_to_int_284, %_local_end_to_int_
  %_pot_address_in_parent_stack_288 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_287
  %_cond1_289 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_290 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_291 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_292 = or i1 %_cond2_1_290, %_cond2_2_291
  %_cond4_293 = icmp ule i8* %_pot_address_in_parent_stack_288, %_parent_stack_end_ptr_
  %_cond1_n_cond2_294 = and i1 %_cond1_289, %_cond2_292
  %_cond1_n_cond2_cond3_295 = and i1 %_cond1_n_cond2_294, %_cond4_293
  br i1 %_cond1_n_cond2_cond3_295, label %155, label %156

; <label>:155:                                    ; preds = %132
  %_address_in_parent_stack_bt_297 = bitcast i8* %_pot_address_in_parent_stack_288 to i64*
  br label %156

; <label>:156:                                    ; preds = %132, %155
  %157 = phi i64* [ %_allin_new_bt_70, %132 ], [ %_address_in_parent_stack_bt_297, %155 ]
  %_new_load_298 = load i64, i64* %157
  store i64 %_new_load_298, i64* %XCX, !mcsema_real_eip !119
  br i1 %_cond1_n_cond2_cond3_265, label %158, label %159

; <label>:158:                                    ; preds = %156
  %_address_in_parent_stack_bt_312 = bitcast i8* %_pot_address_in_parent_stack_258 to i32*
  br label %159

; <label>:159:                                    ; preds = %156, %158
  %160 = phi i32* [ %109, %156 ], [ %_address_in_parent_stack_bt_312, %158 ]
  %_new_load_313 = load i32, i32* %160
  %161 = sext i32 %_new_load_313 to i64, !mcsema_real_eip !120
  store i64 %161, i64* %XDX, !mcsema_real_eip !120
  %162 = mul i64 %161, 4, !mcsema_real_eip !121
  %163 = add i64 %_new_load_298, %162, !mcsema_real_eip !121
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !121
  %EAX_val.197 = load i32, i32* %EAX.178, !mcsema_real_eip !121
  %165 = inttoptr i64 %163 to i32*, !mcsema_real_eip !121
  store i32 %EAX_val.197, i32* %165, !mcsema_real_eip !121
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -92
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %166 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !122
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !122
  %_ptr_bt_316 = bitcast i32* %167 to i8*
  %_offset_above_rbp_317 = sub i64 %166, %_local_end_to_int_
  %_pot_address_in_parent_stack_318 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_317
  %_cond1_319 = icmp ugt i8* %_ptr_bt_316, %_local_stack_end_ptr_
  %_cond2_1_320 = icmp ugt i8* %_ptr_bt_316, %_parent_stack_end_ptr_
  %_cond2_2_321 = icmp ult i8* %_ptr_bt_316, %_parent_stack_start_ptr_
  %_cond2_322 = or i1 %_cond2_1_320, %_cond2_2_321
  %_cond4_323 = icmp ule i8* %_pot_address_in_parent_stack_318, %_parent_stack_end_ptr_
  %_cond1_n_cond2_324 = and i1 %_cond1_319, %_cond2_322
  %_cond1_n_cond2_cond3_325 = and i1 %_cond1_n_cond2_324, %_cond4_323
  br i1 %_cond1_n_cond2_cond3_325, label %168, label %169

; <label>:168:                                    ; preds = %159
  %_address_in_parent_stack_bt_327 = bitcast i8* %_pot_address_in_parent_stack_318 to i32*
  br label %169

; <label>:169:                                    ; preds = %159, %168
  %170 = phi i32* [ %167, %159 ], [ %_address_in_parent_stack_bt_327, %168 ]
  %_new_load_328 = load i32, i32* %170
  %171 = zext i32 %_new_load_328 to i64, !mcsema_real_eip !122
  store i64 %171, i64* %XAX, !mcsema_real_eip !122
  %EAX_val.200 = load i32, i32* %EAX.178, !mcsema_real_eip !123
  %172 = add i32 1, %EAX_val.200, !mcsema_real_eip !123
  %173 = xor i32 %172, %EAX_val.200, !mcsema_real_eip !123
  %174 = xor i32 %173, 1, !mcsema_real_eip !123
  %175 = and i32 %174, 16, !mcsema_real_eip !123
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !123
  store i1 %176, i1* %AF, !mcsema_real_eip !123
  %177 = lshr i32 %172, 31, !mcsema_real_eip !123
  %178 = trunc i32 %177 to i1, !mcsema_real_eip !123
  store i1 %178, i1* %SF, !mcsema_real_eip !123
  %179 = icmp eq i32 %172, 0, !mcsema_real_eip !123
  store i1 %179, i1* %ZF, !mcsema_real_eip !123
  %180 = xor i32 %EAX_val.200, 1, !mcsema_real_eip !123
  %181 = xor i32 %180, -1, !mcsema_real_eip !123
  %182 = and i32 %181, %173, !mcsema_real_eip !123
  %183 = lshr i32 %182, 31, !mcsema_real_eip !123
  %184 = and i32 %183, 1, !mcsema_real_eip !123
  %185 = trunc i32 %184 to i1, !mcsema_real_eip !123
  store i1 %185, i1* %OF, !mcsema_real_eip !123
  %186 = trunc i32 %172 to i8, !mcsema_real_eip !123
  %187 = call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !123
  %188 = trunc i8 %187 to i1, !mcsema_real_eip !123
  %189 = xor i1 %188, true, !mcsema_real_eip !123
  store i1 %189, i1* %PF, !mcsema_real_eip !123
  %190 = icmp ult i32 %172, %EAX_val.200, !mcsema_real_eip !123
  store i1 %190, i1* %CF, !mcsema_real_eip !123
  %191 = zext i32 %172 to i64, !mcsema_real_eip !123
  store i64 %191, i64* %XAX, !mcsema_real_eip !123
  %EAX_val.203 = load i32, i32* %EAX.178, !mcsema_real_eip !124
  store i32 %EAX_val.203, i32* %167, !mcsema_real_eip !124
  br label %block_0x1a8, !mcsema_real_eip !125

block_0x1d1:                                      ; preds = %111
  store i64 10, i64* %XAX, !mcsema_real_eip !126
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -64
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %192 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !127
  store i64 %192, i64* %XCX, !mcsema_real_eip !127
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -24
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %193 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !128
  %194 = inttoptr i64 %193 to i32*, !mcsema_real_eip !128
  %_ptr_bt_331 = bitcast i32* %194 to i8*
  %_offset_above_rbp_332 = sub i64 %193, %_local_end_to_int_
  %_pot_address_in_parent_stack_333 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_332
  %_cond1_334 = icmp ugt i8* %_ptr_bt_331, %_local_stack_end_ptr_
  %_cond2_1_335 = icmp ugt i8* %_ptr_bt_331, %_parent_stack_end_ptr_
  %_cond2_2_336 = icmp ult i8* %_ptr_bt_331, %_parent_stack_start_ptr_
  %_cond2_337 = or i1 %_cond2_1_335, %_cond2_2_336
  %_cond4_338 = icmp ule i8* %_pot_address_in_parent_stack_333, %_parent_stack_end_ptr_
  %_cond1_n_cond2_339 = and i1 %_cond1_334, %_cond2_337
  %_cond1_n_cond2_cond3_340 = and i1 %_cond1_n_cond2_339, %_cond4_338
  br i1 %_cond1_n_cond2_cond3_340, label %195, label %196

; <label>:195:                                    ; preds = %block_0x1d1
  %_address_in_parent_stack_bt_342 = bitcast i8* %_pot_address_in_parent_stack_333 to i32*
  br label %196

; <label>:196:                                    ; preds = %block_0x1d1, %195
  %197 = phi i32* [ %194, %block_0x1d1 ], [ %_address_in_parent_stack_bt_342, %195 ]
  %_new_load_343 = load i32, i32* %197
  %198 = zext i32 %_new_load_343 to i64, !mcsema_real_eip !128
  store i64 %198, i64* %XDI, !mcsema_real_eip !128
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -80
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %_ptr_to_int_344 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_347 = sub i64 %_ptr_to_int_344, %_local_end_to_int_
  %_pot_address_in_parent_stack_348 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_347
  %_cond1_349 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_350 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_351 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_352 = or i1 %_cond2_1_350, %_cond2_2_351
  %_cond4_353 = icmp ule i8* %_pot_address_in_parent_stack_348, %_parent_stack_end_ptr_
  %_cond1_n_cond2_354 = and i1 %_cond1_349, %_cond2_352
  %_cond1_n_cond2_cond3_355 = and i1 %_cond1_n_cond2_354, %_cond4_353
  br i1 %_cond1_n_cond2_cond3_355, label %199, label %200

; <label>:199:                                    ; preds = %196
  %_address_in_parent_stack_bt_357 = bitcast i8* %_pot_address_in_parent_stack_348 to i64*
  br label %200

; <label>:200:                                    ; preds = %196, %199
  %201 = phi i64* [ %_allin_new_bt_88, %196 ], [ %_address_in_parent_stack_bt_357, %199 ]
  %_new_load_358 = load i64, i64* %201
  store i64 %_new_load_358, i64* %XDX, !mcsema_real_eip !129
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %_ptr_to_int_359 = ptrtoint i64* %_allin_new_bt_91 to i64
  %_offset_above_rbp_362 = sub i64 %_ptr_to_int_359, %_local_end_to_int_
  %_pot_address_in_parent_stack_363 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_362
  %_cond1_364 = icmp ugt i8* %_new_gep_90, %_local_stack_end_ptr_
  %_cond2_1_365 = icmp ugt i8* %_new_gep_90, %_parent_stack_end_ptr_
  %_cond2_2_366 = icmp ult i8* %_new_gep_90, %_parent_stack_start_ptr_
  %_cond2_367 = or i1 %_cond2_1_365, %_cond2_2_366
  %_cond4_368 = icmp ule i8* %_pot_address_in_parent_stack_363, %_parent_stack_end_ptr_
  %_cond1_n_cond2_369 = and i1 %_cond1_364, %_cond2_367
  %_cond1_n_cond2_cond3_370 = and i1 %_cond1_n_cond2_369, %_cond4_368
  br i1 %_cond1_n_cond2_cond3_370, label %202, label %203

; <label>:202:                                    ; preds = %200
  %_address_in_parent_stack_bt_372 = bitcast i8* %_pot_address_in_parent_stack_363 to i64*
  br label %203

; <label>:203:                                    ; preds = %200, %202
  %204 = phi i64* [ %_allin_new_bt_91, %200 ], [ %_address_in_parent_stack_bt_372, %202 ]
  %_new_load_373 = load i64, i64* %204
  store i64 %_new_load_373, i64* %XSI, !mcsema_real_eip !130
  br i1 %_cond1_n_cond2_cond3_340, label %205, label %206

; <label>:205:                                    ; preds = %203
  %_address_in_parent_stack_bt_387 = bitcast i8* %_pot_address_in_parent_stack_333 to i32*
  br label %206

; <label>:206:                                    ; preds = %203, %205
  %207 = phi i32* [ %194, %203 ], [ %_address_in_parent_stack_bt_387, %205 ]
  %_new_load_388 = load i32, i32* %207
  %208 = zext i32 %_new_load_388 to i64, !mcsema_real_eip !131
  store i64 %208, i64* %R8, !mcsema_real_eip !131
  br i1 %_cond1_n_cond2_cond3_355, label %209, label %210

; <label>:209:                                    ; preds = %206
  %_address_in_parent_stack_bt_402 = bitcast i8* %_pot_address_in_parent_stack_348 to i64*
  br label %210

; <label>:210:                                    ; preds = %206, %209
  %211 = phi i64* [ %_allin_new_bt_88, %206 ], [ %_address_in_parent_stack_bt_402, %209 ]
  %_new_load_403 = load i64, i64* %211
  store i64 %_new_load_403, i64* %R9, !mcsema_real_eip !132
  br i1 %_cond1_n_cond2_cond3_370, label %212, label %213

; <label>:212:                                    ; preds = %210
  %_address_in_parent_stack_bt_417 = bitcast i8* %_pot_address_in_parent_stack_363 to i64*
  br label %213

; <label>:213:                                    ; preds = %210, %212
  %214 = phi i64* [ %_allin_new_bt_91, %210 ], [ %_address_in_parent_stack_bt_417, %212 ]
  %_new_load_418 = load i64, i64* %214
  store i64 %_new_load_418, i64* %R10, !mcsema_real_eip !133
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -104
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 %_new_load_373, i64* %_allin_new_bt_103, !mcsema_real_eip !134
  %RCX_val.213 = load i64, i64* %XCX, !mcsema_real_eip !135
  store i64 %RCX_val.213, i64* %XSI, !mcsema_real_eip !135
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -104
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %_ptr_to_int_419 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_offset_above_rbp_422 = sub i64 %_ptr_to_int_419, %_local_end_to_int_
  %_pot_address_in_parent_stack_423 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_422
  %_cond1_424 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_425 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_426 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_427 = or i1 %_cond2_1_425, %_cond2_2_426
  %_cond4_428 = icmp ule i8* %_pot_address_in_parent_stack_423, %_parent_stack_end_ptr_
  %_cond1_n_cond2_429 = and i1 %_cond1_424, %_cond2_427
  %_cond1_n_cond2_cond3_430 = and i1 %_cond1_n_cond2_429, %_cond4_428
  br i1 %_cond1_n_cond2_cond3_430, label %215, label %216

; <label>:215:                                    ; preds = %213
  %_address_in_parent_stack_bt_432 = bitcast i8* %_pot_address_in_parent_stack_423 to i64*
  br label %216

; <label>:216:                                    ; preds = %213, %215
  %217 = phi i64* [ %_allin_new_bt_106, %213 ], [ %_address_in_parent_stack_bt_432, %215 ]
  %_new_load_433 = load i64, i64* %217
  store i64 %_new_load_433, i64* %R11, !mcsema_real_eip !136
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -112
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 %RCX_val.213, i64* %_allin_new_bt_109, !mcsema_real_eip !137
  %R11_val.217 = load i64, i64* %R11, !mcsema_real_eip !138
  store i64 %R11_val.217, i64* %XCX, !mcsema_real_eip !138
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -116
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %R8D.219 = bitcast i64* %R8 to i32*, !mcsema_real_eip !139
  %R8D_val.220 = load i32, i32* %R8D.219, !mcsema_real_eip !139
  %218 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !139
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !139
  store i32 %R8D_val.220, i32* %219, !mcsema_real_eip !139
  %EAX_val.222 = load i32, i32* %EAX.178, !mcsema_real_eip !140
  %220 = zext i32 %EAX_val.222 to i64, !mcsema_real_eip !140
  store i64 %220, i64* %R8, !mcsema_real_eip !140
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -128
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %R9_val.224 = load i64, i64* %R9, !mcsema_real_eip !141
  store i64 %R9_val.224, i64* %_allin_new_bt_115, !mcsema_real_eip !141
  %EAX_val.226 = load i32, i32* %EAX.178, !mcsema_real_eip !142
  %221 = zext i32 %EAX_val.226 to i64, !mcsema_real_eip !142
  store i64 %221, i64* %R9, !mcsema_real_eip !142
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -116
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %222 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !143
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !143
  %_ptr_bt_436 = bitcast i32* %223 to i8*
  %_offset_above_rbp_437 = sub i64 %222, %_local_end_to_int_
  %_pot_address_in_parent_stack_438 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_437
  %_cond1_439 = icmp ugt i8* %_ptr_bt_436, %_local_stack_end_ptr_
  %_cond2_1_440 = icmp ugt i8* %_ptr_bt_436, %_parent_stack_end_ptr_
  %_cond2_2_441 = icmp ult i8* %_ptr_bt_436, %_parent_stack_start_ptr_
  %_cond2_442 = or i1 %_cond2_1_440, %_cond2_2_441
  %_cond4_443 = icmp ule i8* %_pot_address_in_parent_stack_438, %_parent_stack_end_ptr_
  %_cond1_n_cond2_444 = and i1 %_cond1_439, %_cond2_442
  %_cond1_n_cond2_cond3_445 = and i1 %_cond1_n_cond2_444, %_cond4_443
  br i1 %_cond1_n_cond2_cond3_445, label %224, label %225

; <label>:224:                                    ; preds = %216
  %_address_in_parent_stack_bt_447 = bitcast i8* %_pot_address_in_parent_stack_438 to i32*
  br label %225

; <label>:225:                                    ; preds = %216, %224
  %226 = phi i32* [ %223, %216 ], [ %_address_in_parent_stack_bt_447, %224 ]
  %_new_load_448 = load i32, i32* %226
  %227 = zext i32 %_new_load_448 to i64, !mcsema_real_eip !143
  store i64 %227, i64* %XAX, !mcsema_real_eip !143
  %_load_rsp_ptr_119 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_121 = bitcast i8* %_load_rsp_ptr_119 to i64*
  %EAX_val.230 = load i32, i32* %EAX.178, !mcsema_real_eip !144
  %228 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !144
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !144
  store i32 %EAX_val.230, i32* %229, !mcsema_real_eip !144
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -112
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %_ptr_to_int_449 = ptrtoint i64* %_allin_new_bt_124 to i64
  %_offset_above_rbp_452 = sub i64 %_ptr_to_int_449, %_local_end_to_int_
  %_pot_address_in_parent_stack_453 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_452
  %_cond1_454 = icmp ugt i8* %_new_gep_123, %_local_stack_end_ptr_
  %_cond2_1_455 = icmp ugt i8* %_new_gep_123, %_parent_stack_end_ptr_
  %_cond2_2_456 = icmp ult i8* %_new_gep_123, %_parent_stack_start_ptr_
  %_cond2_457 = or i1 %_cond2_1_455, %_cond2_2_456
  %_cond4_458 = icmp ule i8* %_pot_address_in_parent_stack_453, %_parent_stack_end_ptr_
  %_cond1_n_cond2_459 = and i1 %_cond1_454, %_cond2_457
  %_cond1_n_cond2_cond3_460 = and i1 %_cond1_n_cond2_459, %_cond4_458
  br i1 %_cond1_n_cond2_cond3_460, label %230, label %231

; <label>:230:                                    ; preds = %225
  %_address_in_parent_stack_bt_462 = bitcast i8* %_pot_address_in_parent_stack_453 to i64*
  br label %231

; <label>:231:                                    ; preds = %225, %230
  %232 = phi i64* [ %_allin_new_bt_124, %225 ], [ %_address_in_parent_stack_bt_462, %230 ]
  %_new_load_463 = load i64, i64* %232
  store i64 %_new_load_463, i64* %XBX, !mcsema_real_eip !145
  %_load_rsp_ptr_125 = load i8*, i8** %_RSP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rsp_ptr_125, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  store i64 %_new_load_463, i64* %_allin_new_bt_127, !mcsema_real_eip !146
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -128
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %_ptr_to_int_464 = ptrtoint i64* %_allin_new_bt_130 to i64
  %_offset_above_rbp_467 = sub i64 %_ptr_to_int_464, %_local_end_to_int_
  %_pot_address_in_parent_stack_468 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_467
  %_cond1_469 = icmp ugt i8* %_new_gep_129, %_local_stack_end_ptr_
  %_cond2_1_470 = icmp ugt i8* %_new_gep_129, %_parent_stack_end_ptr_
  %_cond2_2_471 = icmp ult i8* %_new_gep_129, %_parent_stack_start_ptr_
  %_cond2_472 = or i1 %_cond2_1_470, %_cond2_2_471
  %_cond4_473 = icmp ule i8* %_pot_address_in_parent_stack_468, %_parent_stack_end_ptr_
  %_cond1_n_cond2_474 = and i1 %_cond1_469, %_cond2_472
  %_cond1_n_cond2_cond3_475 = and i1 %_cond1_n_cond2_474, %_cond4_473
  br i1 %_cond1_n_cond2_cond3_475, label %233, label %234

; <label>:233:                                    ; preds = %231
  %_address_in_parent_stack_bt_477 = bitcast i8* %_pot_address_in_parent_stack_468 to i64*
  br label %234

; <label>:234:                                    ; preds = %231, %233
  %235 = phi i64* [ %_allin_new_bt_130, %231 ], [ %_address_in_parent_stack_bt_477, %233 ]
  %_new_load_478 = load i64, i64* %235
  store i64 %_new_load_478, i64* %R14, !mcsema_real_eip !147
  %_load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rsp_ptr_131, i64 16
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 %_new_load_478, i64* %_allin_new_bt_133, !mcsema_real_eip !148
  %_load_rsp_ptr_134 = load i8*, i8** %_RSP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rsp_ptr_134, i64 24
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %R10_val.238 = load i64, i64* %R10, !mcsema_real_eip !149
  store i64 %R10_val.238, i64* %_allin_new_bt_136, !mcsema_real_eip !149
  %_load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_
  %RSP_val.239 = load i64, i64* %XSP, !mcsema_real_eip !150
  %_new_gep_138 = getelementptr i8, i8* %_load_rsp_ptr_137, i64 -8
  %236 = sub i64 %RSP_val.239, 8, !mcsema_real_eip !150
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_139, !mcsema_real_eip !150
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_
  store i64 %236, i64* %XSP, !mcsema_real_eip !150
  %_load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_138, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_203)
  %_rsp_fix_205 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_206 = getelementptr i8, i8* %_rsp_fix_205, i64 8
  store i8* %_gep_fix_206, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, !mcsema_real_eip !151
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -96
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %EAX_val.242 = load i32, i32* %EAX.178, !mcsema_real_eip !152
  %237 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !152
  %238 = inttoptr i64 %237 to i32*, !mcsema_real_eip !152
  store i32 %EAX_val.242, i32* %238, !mcsema_real_eip !152
  %_load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -96
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %239 = ptrtoint i64* %_allin_new_bt_145 to i64, !mcsema_real_eip !153
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !153
  %_ptr_bt_481 = bitcast i32* %240 to i8*
  %_offset_above_rbp_482 = sub i64 %239, %_local_end_to_int_
  %_pot_address_in_parent_stack_483 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_482
  %_cond1_484 = icmp ugt i8* %_ptr_bt_481, %_local_stack_end_ptr_
  %_cond2_1_485 = icmp ugt i8* %_ptr_bt_481, %_parent_stack_end_ptr_
  %_cond2_2_486 = icmp ult i8* %_ptr_bt_481, %_parent_stack_start_ptr_
  %_cond2_487 = or i1 %_cond2_1_485, %_cond2_2_486
  %_cond4_488 = icmp ule i8* %_pot_address_in_parent_stack_483, %_parent_stack_end_ptr_
  %_cond1_n_cond2_489 = and i1 %_cond1_484, %_cond2_487
  %_cond1_n_cond2_cond3_490 = and i1 %_cond1_n_cond2_489, %_cond4_488
  br i1 %_cond1_n_cond2_cond3_490, label %241, label %242

; <label>:241:                                    ; preds = %234
  %_address_in_parent_stack_bt_492 = bitcast i8* %_pot_address_in_parent_stack_483 to i32*
  br label %242

; <label>:242:                                    ; preds = %234, %241
  %243 = phi i32* [ %240, %234 ], [ %_address_in_parent_stack_bt_492, %241 ]
  %_new_load_493 = load i32, i32* %243
  %244 = zext i32 %_new_load_493 to i64, !mcsema_real_eip !153
  store i64 %244, i64* %XSI, !mcsema_real_eip !153
  %AL.244 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.244, !mcsema_real_eip !154
  %RDI_val.245 = load i64, i64* %XDI, !mcsema_real_eip !155
  %RDX_val.247 = load i64, i64* %XDX, !mcsema_real_eip !155
  %RCX_val.248 = load i64, i64* %XCX, !mcsema_real_eip !155
  %R8_val.249 = load i64, i64* %R8, !mcsema_real_eip !155
  %R9_val.250 = load i64, i64* %R9, !mcsema_real_eip !155
  %_load_rsp_ptr_146 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_147 = bitcast i8* %_load_rsp_ptr_146 to i64*
  %_ptr_to_int_494 = ptrtoint i64* %_allin_new_bt_147 to i64
  %_offset_above_rbp_497 = sub i64 %_ptr_to_int_494, %_local_end_to_int_
  %_pot_address_in_parent_stack_498 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_497
  %_cond1_499 = icmp ugt i8* %_load_rsp_ptr_146, %_local_stack_end_ptr_
  %_cond2_1_500 = icmp ugt i8* %_load_rsp_ptr_146, %_parent_stack_end_ptr_
  %_cond2_2_501 = icmp ult i8* %_load_rsp_ptr_146, %_parent_stack_start_ptr_
  %_cond2_502 = or i1 %_cond2_1_500, %_cond2_2_501
  %_cond4_503 = icmp ule i8* %_pot_address_in_parent_stack_498, %_parent_stack_end_ptr_
  %_cond1_n_cond2_504 = and i1 %_cond1_499, %_cond2_502
  %_cond1_n_cond2_cond3_505 = and i1 %_cond1_n_cond2_504, %_cond4_503
  br i1 %_cond1_n_cond2_cond3_505, label %245, label %246

; <label>:245:                                    ; preds = %242
  %_address_in_parent_stack_bt_507 = bitcast i8* %_pot_address_in_parent_stack_498 to i64*
  br label %246

; <label>:246:                                    ; preds = %242, %245
  %247 = phi i64* [ %_allin_new_bt_147, %242 ], [ %_address_in_parent_stack_bt_507, %245 ]
  %_new_load_508 = load i64, i64* %247
  %_new_gep_148 = getelementptr i8, i8* %_load_rsp_ptr_146, i64 8
  %_allin_new_bt_149 = bitcast i8* %_new_gep_148 to i64*
  %_ptr_to_int_509 = ptrtoint i64* %_allin_new_bt_149 to i64
  %_offset_above_rbp_512 = sub i64 %_ptr_to_int_509, %_local_end_to_int_
  %_pot_address_in_parent_stack_513 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_512
  %_cond1_514 = icmp ugt i8* %_new_gep_148, %_local_stack_end_ptr_
  %_cond2_1_515 = icmp ugt i8* %_new_gep_148, %_parent_stack_end_ptr_
  %_cond2_2_516 = icmp ult i8* %_new_gep_148, %_parent_stack_start_ptr_
  %_cond2_517 = or i1 %_cond2_1_515, %_cond2_2_516
  %_cond4_518 = icmp ule i8* %_pot_address_in_parent_stack_513, %_parent_stack_end_ptr_
  %_cond1_n_cond2_519 = and i1 %_cond1_514, %_cond2_517
  %_cond1_n_cond2_cond3_520 = and i1 %_cond1_n_cond2_519, %_cond4_518
  br i1 %_cond1_n_cond2_cond3_520, label %248, label %249

; <label>:248:                                    ; preds = %246
  %_address_in_parent_stack_bt_522 = bitcast i8* %_pot_address_in_parent_stack_513 to i64*
  br label %249

; <label>:249:                                    ; preds = %246, %248
  %250 = phi i64* [ %_allin_new_bt_149, %246 ], [ %_address_in_parent_stack_bt_522, %248 ]
  %_new_load_523 = load i64, i64* %250
  %_new_gep_150 = getelementptr i8, i8* %_new_gep_148, i64 8
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %_ptr_to_int_524 = ptrtoint i64* %_allin_new_bt_151 to i64
  %_offset_above_rbp_527 = sub i64 %_ptr_to_int_524, %_local_end_to_int_
  %_pot_address_in_parent_stack_528 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_527
  %_cond1_529 = icmp ugt i8* %_new_gep_150, %_local_stack_end_ptr_
  %_cond2_1_530 = icmp ugt i8* %_new_gep_150, %_parent_stack_end_ptr_
  %_cond2_2_531 = icmp ult i8* %_new_gep_150, %_parent_stack_start_ptr_
  %_cond2_532 = or i1 %_cond2_1_530, %_cond2_2_531
  %_cond4_533 = icmp ule i8* %_pot_address_in_parent_stack_528, %_parent_stack_end_ptr_
  %_cond1_n_cond2_534 = and i1 %_cond1_529, %_cond2_532
  %_cond1_n_cond2_cond3_535 = and i1 %_cond1_n_cond2_534, %_cond4_533
  br i1 %_cond1_n_cond2_cond3_535, label %251, label %252

; <label>:251:                                    ; preds = %249
  %_address_in_parent_stack_bt_537 = bitcast i8* %_pot_address_in_parent_stack_528 to i64*
  br label %252

; <label>:252:                                    ; preds = %249, %251
  %253 = phi i64* [ %_allin_new_bt_151, %249 ], [ %_address_in_parent_stack_bt_537, %251 ]
  %_new_load_538 = load i64, i64* %253
  %_new_gep_152 = getelementptr i8, i8* %_new_gep_150, i64 8
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %_ptr_to_int_539 = ptrtoint i64* %_allin_new_bt_153 to i64
  %_offset_above_rbp_542 = sub i64 %_ptr_to_int_539, %_local_end_to_int_
  %_pot_address_in_parent_stack_543 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_542
  %_cond1_544 = icmp ugt i8* %_new_gep_152, %_local_stack_end_ptr_
  %_cond2_1_545 = icmp ugt i8* %_new_gep_152, %_parent_stack_end_ptr_
  %_cond2_2_546 = icmp ult i8* %_new_gep_152, %_parent_stack_start_ptr_
  %_cond2_547 = or i1 %_cond2_1_545, %_cond2_2_546
  %_cond4_548 = icmp ule i8* %_pot_address_in_parent_stack_543, %_parent_stack_end_ptr_
  %_cond1_n_cond2_549 = and i1 %_cond1_544, %_cond2_547
  %_cond1_n_cond2_cond3_550 = and i1 %_cond1_n_cond2_549, %_cond4_548
  br i1 %_cond1_n_cond2_cond3_550, label %254, label %255

; <label>:254:                                    ; preds = %252
  %_address_in_parent_stack_bt_552 = bitcast i8* %_pot_address_in_parent_stack_543 to i64*
  br label %255

; <label>:255:                                    ; preds = %252, %254
  %256 = phi i64* [ %_allin_new_bt_153, %252 ], [ %_address_in_parent_stack_bt_552, %254 ]
  %_new_load_553 = load i64, i64* %256
  %_new_gep_154 = getelementptr i8, i8* %_new_gep_152, i64 8
  %_allin_new_bt_155 = bitcast i8* %_new_gep_154 to i64*
  %_ptr_to_int_554 = ptrtoint i64* %_allin_new_bt_155 to i64
  %_offset_above_rbp_557 = sub i64 %_ptr_to_int_554, %_local_end_to_int_
  %_pot_address_in_parent_stack_558 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_557
  %_cond1_559 = icmp ugt i8* %_new_gep_154, %_local_stack_end_ptr_
  %_cond2_1_560 = icmp ugt i8* %_new_gep_154, %_parent_stack_end_ptr_
  %_cond2_2_561 = icmp ult i8* %_new_gep_154, %_parent_stack_start_ptr_
  %_cond2_562 = or i1 %_cond2_1_560, %_cond2_2_561
  %_cond4_563 = icmp ule i8* %_pot_address_in_parent_stack_558, %_parent_stack_end_ptr_
  %_cond1_n_cond2_564 = and i1 %_cond1_559, %_cond2_562
  %_cond1_n_cond2_cond3_565 = and i1 %_cond1_n_cond2_564, %_cond4_563
  br i1 %_cond1_n_cond2_cond3_565, label %257, label %258

; <label>:257:                                    ; preds = %255
  %_address_in_parent_stack_bt_567 = bitcast i8* %_pot_address_in_parent_stack_558 to i64*
  br label %258

; <label>:258:                                    ; preds = %255, %257
  %259 = phi i64* [ %_allin_new_bt_155, %255 ], [ %_address_in_parent_stack_bt_567, %257 ]
  %_new_load_568 = load i64, i64* %259
  %_new_gep_156 = getelementptr i8, i8* %_new_gep_154, i64 8
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %_ptr_to_int_569 = ptrtoint i64* %_allin_new_bt_157 to i64
  %_offset_above_rbp_572 = sub i64 %_ptr_to_int_569, %_local_end_to_int_
  %_pot_address_in_parent_stack_573 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_572
  %_cond1_574 = icmp ugt i8* %_new_gep_156, %_local_stack_end_ptr_
  %_cond2_1_575 = icmp ugt i8* %_new_gep_156, %_parent_stack_end_ptr_
  %_cond2_2_576 = icmp ult i8* %_new_gep_156, %_parent_stack_start_ptr_
  %_cond2_577 = or i1 %_cond2_1_575, %_cond2_2_576
  %_cond4_578 = icmp ule i8* %_pot_address_in_parent_stack_573, %_parent_stack_end_ptr_
  %_cond1_n_cond2_579 = and i1 %_cond1_574, %_cond2_577
  %_cond1_n_cond2_cond3_580 = and i1 %_cond1_n_cond2_579, %_cond4_578
  br i1 %_cond1_n_cond2_cond3_580, label %260, label %261

; <label>:260:                                    ; preds = %258
  %_address_in_parent_stack_bt_582 = bitcast i8* %_pot_address_in_parent_stack_573 to i64*
  br label %261

; <label>:261:                                    ; preds = %258, %260
  %262 = phi i64* [ %_allin_new_bt_157, %258 ], [ %_address_in_parent_stack_bt_582, %260 ]
  %_new_load_583 = load i64, i64* %262
  %_new_gep_158 = getelementptr i8, i8* %_new_gep_156, i64 8
  %_allin_new_bt_159 = bitcast i8* %_new_gep_158 to i64*
  %_ptr_to_int_584 = ptrtoint i64* %_allin_new_bt_159 to i64
  %_offset_above_rbp_587 = sub i64 %_ptr_to_int_584, %_local_end_to_int_
  %_pot_address_in_parent_stack_588 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_587
  %_cond1_589 = icmp ugt i8* %_new_gep_158, %_local_stack_end_ptr_
  %_cond2_1_590 = icmp ugt i8* %_new_gep_158, %_parent_stack_end_ptr_
  %_cond2_2_591 = icmp ult i8* %_new_gep_158, %_parent_stack_start_ptr_
  %_cond2_592 = or i1 %_cond2_1_590, %_cond2_2_591
  %_cond4_593 = icmp ule i8* %_pot_address_in_parent_stack_588, %_parent_stack_end_ptr_
  %_cond1_n_cond2_594 = and i1 %_cond1_589, %_cond2_592
  %_cond1_n_cond2_cond3_595 = and i1 %_cond1_n_cond2_594, %_cond4_593
  br i1 %_cond1_n_cond2_cond3_595, label %263, label %264

; <label>:263:                                    ; preds = %261
  %_address_in_parent_stack_bt_597 = bitcast i8* %_pot_address_in_parent_stack_588 to i64*
  br label %264

; <label>:264:                                    ; preds = %261, %263
  %265 = phi i64* [ %_allin_new_bt_159, %261 ], [ %_address_in_parent_stack_bt_597, %263 ]
  %_new_load_598 = load i64, i64* %265
  %_new_gep_160 = getelementptr i8, i8* %_new_gep_158, i64 8
  %_allin_new_bt_161 = bitcast i8* %_new_gep_160 to i64*
  %_ptr_to_int_599 = ptrtoint i64* %_allin_new_bt_161 to i64
  %_offset_above_rbp_602 = sub i64 %_ptr_to_int_599, %_local_end_to_int_
  %_pot_address_in_parent_stack_603 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_602
  %_cond1_604 = icmp ugt i8* %_new_gep_160, %_local_stack_end_ptr_
  %_cond2_1_605 = icmp ugt i8* %_new_gep_160, %_parent_stack_end_ptr_
  %_cond2_2_606 = icmp ult i8* %_new_gep_160, %_parent_stack_start_ptr_
  %_cond2_607 = or i1 %_cond2_1_605, %_cond2_2_606
  %_cond4_608 = icmp ule i8* %_pot_address_in_parent_stack_603, %_parent_stack_end_ptr_
  %_cond1_n_cond2_609 = and i1 %_cond1_604, %_cond2_607
  %_cond1_n_cond2_cond3_610 = and i1 %_cond1_n_cond2_609, %_cond4_608
  br i1 %_cond1_n_cond2_cond3_610, label %266, label %267

; <label>:266:                                    ; preds = %264
  %_address_in_parent_stack_bt_612 = bitcast i8* %_pot_address_in_parent_stack_603 to i64*
  br label %267

; <label>:267:                                    ; preds = %264, %266
  %268 = phi i64* [ %_allin_new_bt_161, %264 ], [ %_address_in_parent_stack_bt_612, %266 ]
  %_new_load_613 = load i64, i64* %268
  %_new_gep_162 = getelementptr i8, i8* %_new_gep_160, i64 8
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %_ptr_to_int_614 = ptrtoint i64* %_allin_new_bt_163 to i64
  %_offset_above_rbp_617 = sub i64 %_ptr_to_int_614, %_local_end_to_int_
  %_pot_address_in_parent_stack_618 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_617
  %_cond1_619 = icmp ugt i8* %_new_gep_162, %_local_stack_end_ptr_
  %_cond2_1_620 = icmp ugt i8* %_new_gep_162, %_parent_stack_end_ptr_
  %_cond2_2_621 = icmp ult i8* %_new_gep_162, %_parent_stack_start_ptr_
  %_cond2_622 = or i1 %_cond2_1_620, %_cond2_2_621
  %_cond4_623 = icmp ule i8* %_pot_address_in_parent_stack_618, %_parent_stack_end_ptr_
  %_cond1_n_cond2_624 = and i1 %_cond1_619, %_cond2_622
  %_cond1_n_cond2_cond3_625 = and i1 %_cond1_n_cond2_624, %_cond4_623
  br i1 %_cond1_n_cond2_cond3_625, label %269, label %270

; <label>:269:                                    ; preds = %267
  %_address_in_parent_stack_bt_627 = bitcast i8* %_pot_address_in_parent_stack_618 to i64*
  br label %270

; <label>:270:                                    ; preds = %267, %269
  %271 = phi i64* [ %_allin_new_bt_163, %267 ], [ %_address_in_parent_stack_bt_627, %269 ]
  %_new_load_628 = load i64, i64* %271
  %_new_gep_164 = getelementptr i8, i8* %_new_gep_162, i64 8
  %_allin_new_bt_165 = bitcast i8* %_new_gep_164 to i64*
  %_ptr_to_int_629 = ptrtoint i64* %_allin_new_bt_165 to i64
  %_offset_above_rbp_632 = sub i64 %_ptr_to_int_629, %_local_end_to_int_
  %_pot_address_in_parent_stack_633 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_632
  %_cond1_634 = icmp ugt i8* %_new_gep_164, %_local_stack_end_ptr_
  %_cond2_1_635 = icmp ugt i8* %_new_gep_164, %_parent_stack_end_ptr_
  %_cond2_2_636 = icmp ult i8* %_new_gep_164, %_parent_stack_start_ptr_
  %_cond2_637 = or i1 %_cond2_1_635, %_cond2_2_636
  %_cond4_638 = icmp ule i8* %_pot_address_in_parent_stack_633, %_parent_stack_end_ptr_
  %_cond1_n_cond2_639 = and i1 %_cond1_634, %_cond2_637
  %_cond1_n_cond2_cond3_640 = and i1 %_cond1_n_cond2_639, %_cond4_638
  br i1 %_cond1_n_cond2_cond3_640, label %272, label %273

; <label>:272:                                    ; preds = %270
  %_address_in_parent_stack_bt_642 = bitcast i8* %_pot_address_in_parent_stack_633 to i64*
  br label %273

; <label>:273:                                    ; preds = %270, %272
  %274 = phi i64* [ %_allin_new_bt_165, %270 ], [ %_address_in_parent_stack_bt_642, %272 ]
  %_new_load_643 = load i64, i64* %274
  %RSP_val.252 = load i64, i64* %XSP, !mcsema_real_eip !155
  %_new_gep_167 = getelementptr i8, i8* %_load_rsp_ptr_146, i64 -8
  %275 = sub i64 %RSP_val.252, 8, !mcsema_real_eip !155
  %_allin_new_bt_168 = bitcast i8* %_new_gep_167 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_168, !mcsema_real_eip !155
  store volatile i8* %_new_gep_167, i8** %_RSP_ptr_
  store i64 %275, i64* %XSP, !mcsema_real_eip !155
  %276 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.245, i64 %244, i64 %RDX_val.247, i64 %RCX_val.248, i64 %R8_val.249, i64 %R9_val.250, i64 %_new_load_508, i64 %_new_load_523, i64 %_new_load_538, i64 %_new_load_553, i64 %_new_load_568, i64 %_new_load_583, i64 %_new_load_598, i64 %_new_load_613, i64 %_new_load_628, i64 %_new_load_643)
  %_rsp_fix_207 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_208 = getelementptr i8, i8* %_rsp_fix_207, i64 8
  store i8* %_gep_fix_208, i8** %_RSP_ptr_
  store i64 %276, i64* %XAX, !mcsema_real_eip !155
  %_load_rbp_ptr_169 = load i8*, i8** %_RBP_ptr_
  %_new_gep_170 = getelementptr i8, i8* %_load_rbp_ptr_169, i64 -96
  %_allin_new_bt_171 = bitcast i8* %_new_gep_170 to i64*
  %277 = ptrtoint i64* %_allin_new_bt_171 to i64, !mcsema_real_eip !156
  %278 = inttoptr i64 %277 to i32*, !mcsema_real_eip !156
  %_ptr_bt_646 = bitcast i32* %278 to i8*
  %_offset_above_rbp_647 = sub i64 %277, %_local_end_to_int_
  %_pot_address_in_parent_stack_648 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_647
  %_cond1_649 = icmp ugt i8* %_ptr_bt_646, %_local_stack_end_ptr_
  %_cond2_1_650 = icmp ugt i8* %_ptr_bt_646, %_parent_stack_end_ptr_
  %_cond2_2_651 = icmp ult i8* %_ptr_bt_646, %_parent_stack_start_ptr_
  %_cond2_652 = or i1 %_cond2_1_650, %_cond2_2_651
  %_cond4_653 = icmp ule i8* %_pot_address_in_parent_stack_648, %_parent_stack_end_ptr_
  %_cond1_n_cond2_654 = and i1 %_cond1_649, %_cond2_652
  %_cond1_n_cond2_cond3_655 = and i1 %_cond1_n_cond2_654, %_cond4_653
  br i1 %_cond1_n_cond2_cond3_655, label %279, label %280

; <label>:279:                                    ; preds = %273
  %_address_in_parent_stack_bt_657 = bitcast i8* %_pot_address_in_parent_stack_648 to i32*
  br label %280

; <label>:280:                                    ; preds = %273, %279
  %281 = phi i32* [ %278, %273 ], [ %_address_in_parent_stack_bt_657, %279 ]
  %_new_load_658 = load i32, i32* %281
  %282 = zext i32 %_new_load_658 to i64, !mcsema_real_eip !156
  store i64 %282, i64* %XSI, !mcsema_real_eip !156
  %_new_gep_173 = getelementptr i8, i8* %_load_rbp_ptr_169, i64 -132
  %_allin_new_bt_174 = bitcast i8* %_new_gep_173 to i64*
  %EAX_val.256 = load i32, i32* %EAX.178, !mcsema_real_eip !157
  %283 = ptrtoint i64* %_allin_new_bt_174 to i64, !mcsema_real_eip !157
  %284 = inttoptr i64 %283 to i32*, !mcsema_real_eip !157
  store i32 %EAX_val.256, i32* %284, !mcsema_real_eip !157
  %ESI.257 = bitcast i64* %XSI to i32*, !mcsema_real_eip !158
  %ESI_val.258 = load i32, i32* %ESI.257, !mcsema_real_eip !158
  %285 = zext i32 %ESI_val.258 to i64, !mcsema_real_eip !158
  store i64 %285, i64* %XAX, !mcsema_real_eip !158
  %_load_rsp_ptr_175 = load i8*, i8** %_RSP_ptr_
  %RSP_val.259 = load i64, i64* %XSP, !mcsema_real_eip !159
  %_new_gep_176 = getelementptr i8, i8* %_load_rsp_ptr_175, i64 160
  %286 = add i64 160, %RSP_val.259, !mcsema_real_eip !159
  %_trans_p2i_177 = ptrtoint i8* %_new_gep_176 to i64
  %_trans_p2i_178 = ptrtoint i8* %_load_rsp_ptr_175 to i64
  %_trans_xor_179 = xor i64 %_trans_p2i_177, %_trans_p2i_178
  %287 = xor i64 %_trans_xor_179, 160, !mcsema_real_eip !159
  %288 = and i64 %287, 16, !mcsema_real_eip !159
  %289 = icmp ne i64 %288, 0, !mcsema_real_eip !159
  store i1 %289, i1* %AF, !mcsema_real_eip !159
  %290 = lshr i64 %286, 63, !mcsema_real_eip !159
  %291 = trunc i64 %290 to i1, !mcsema_real_eip !159
  store i1 %291, i1* %SF, !mcsema_real_eip !159
  %_trans_icmp_eq_181 = icmp eq i64 %_trans_p2i_177, 0
  store i1 %_trans_icmp_eq_181, i1* %ZF, !mcsema_real_eip !159
  %_trans_xor_183 = xor i64 %_trans_p2i_178, 160
  %292 = xor i64 %_trans_xor_183, -1, !mcsema_real_eip !159
  %293 = and i64 %292, %_trans_xor_179, !mcsema_real_eip !159
  %294 = lshr i64 %293, 63, !mcsema_real_eip !159
  %295 = and i64 %294, 1, !mcsema_real_eip !159
  %296 = trunc i64 %295 to i1, !mcsema_real_eip !159
  store i1 %296, i1* %OF, !mcsema_real_eip !159
  %_trans_trunc_188 = trunc i64 %_trans_p2i_177 to i8
  %297 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_188), !mcsema_real_eip !159
  %298 = trunc i8 %297 to i1, !mcsema_real_eip !159
  %299 = xor i1 %298, true, !mcsema_real_eip !159
  store i1 %299, i1* %PF, !mcsema_real_eip !159
  %_trans_icmp_ne_190 = icmp ne i64 %_trans_p2i_177, %RSP_val.259
  store i1 %_trans_icmp_ne_190, i1* %CF, !mcsema_real_eip !159
  store volatile i8* %_new_gep_176, i8** %_RSP_ptr_
  store i64 %286, i64* %XSP, !mcsema_real_eip !159
  %_allin_new_bt_192 = bitcast i8* %_new_gep_176 to i64*
  %_ptr_to_int_659 = ptrtoint i64* %_allin_new_bt_192 to i64
  %_offset_above_rbp_662 = sub i64 %_ptr_to_int_659, %_local_end_to_int_
  %_pot_address_in_parent_stack_663 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_662
  %_cond1_664 = icmp ugt i8* %_new_gep_176, %_local_stack_end_ptr_
  %_cond2_1_665 = icmp ugt i8* %_new_gep_176, %_parent_stack_end_ptr_
  %_cond2_2_666 = icmp ult i8* %_new_gep_176, %_parent_stack_start_ptr_
  %_cond2_667 = or i1 %_cond2_1_665, %_cond2_2_666
  %_cond4_668 = icmp ule i8* %_pot_address_in_parent_stack_663, %_parent_stack_end_ptr_
  %_cond1_n_cond2_669 = and i1 %_cond1_664, %_cond2_667
  %_cond1_n_cond2_cond3_670 = and i1 %_cond1_n_cond2_669, %_cond4_668
  br i1 %_cond1_n_cond2_cond3_670, label %300, label %301

; <label>:300:                                    ; preds = %280
  %_address_in_parent_stack_bt_672 = bitcast i8* %_pot_address_in_parent_stack_663 to i64*
  br label %301

; <label>:301:                                    ; preds = %280, %300
  %302 = phi i64* [ %_allin_new_bt_192, %280 ], [ %_address_in_parent_stack_bt_672, %300 ]
  %_new_load_673 = load i64, i64* %302
  store i64 %_new_load_673, i64* %XBX, !mcsema_real_eip !160
  %_new_gep_193 = getelementptr i8, i8* %_new_gep_176, i64 8
  %303 = add i64 %286, 8, !mcsema_real_eip !160
  store volatile i8* %_new_gep_193, i8** %_RSP_ptr_
  store i64 %303, i64* %XSP, !mcsema_real_eip !160
  %_allin_new_bt_195 = bitcast i8* %_new_gep_193 to i64*
  %_ptr_to_int_674 = ptrtoint i64* %_allin_new_bt_195 to i64
  %_offset_above_rbp_677 = sub i64 %_ptr_to_int_674, %_local_end_to_int_
  %_pot_address_in_parent_stack_678 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_677
  %_cond1_679 = icmp ugt i8* %_new_gep_193, %_local_stack_end_ptr_
  %_cond2_1_680 = icmp ugt i8* %_new_gep_193, %_parent_stack_end_ptr_
  %_cond2_2_681 = icmp ult i8* %_new_gep_193, %_parent_stack_start_ptr_
  %_cond2_682 = or i1 %_cond2_1_680, %_cond2_2_681
  %_cond4_683 = icmp ule i8* %_pot_address_in_parent_stack_678, %_parent_stack_end_ptr_
  %_cond1_n_cond2_684 = and i1 %_cond1_679, %_cond2_682
  %_cond1_n_cond2_cond3_685 = and i1 %_cond1_n_cond2_684, %_cond4_683
  br i1 %_cond1_n_cond2_cond3_685, label %304, label %305

; <label>:304:                                    ; preds = %301
  %_address_in_parent_stack_bt_687 = bitcast i8* %_pot_address_in_parent_stack_678 to i64*
  br label %305

; <label>:305:                                    ; preds = %301, %304
  %306 = phi i64* [ %_allin_new_bt_195, %301 ], [ %_address_in_parent_stack_bt_687, %304 ]
  %_new_load_688 = load i64, i64* %306
  store i64 %_new_load_688, i64* %R14, !mcsema_real_eip !161
  %_new_gep_196 = getelementptr i8, i8* %_new_gep_193, i64 8
  %307 = add i64 %303, 8, !mcsema_real_eip !161
  store volatile i8* %_new_gep_196, i8** %_RSP_ptr_
  store i64 %307, i64* %XSP, !mcsema_real_eip !161
  %_allin_new_bt_198 = bitcast i8* %_new_gep_196 to i64*
  %_ptr_to_int_689 = ptrtoint i64* %_allin_new_bt_198 to i64
  %_offset_above_rbp_692 = sub i64 %_ptr_to_int_689, %_local_end_to_int_
  %_pot_address_in_parent_stack_693 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_692
  %_cond1_694 = icmp ugt i8* %_new_gep_196, %_local_stack_end_ptr_
  %_cond2_1_695 = icmp ugt i8* %_new_gep_196, %_parent_stack_end_ptr_
  %_cond2_2_696 = icmp ult i8* %_new_gep_196, %_parent_stack_start_ptr_
  %_cond2_697 = or i1 %_cond2_1_695, %_cond2_2_696
  %_cond4_698 = icmp ule i8* %_pot_address_in_parent_stack_693, %_parent_stack_end_ptr_
  %_cond1_n_cond2_699 = and i1 %_cond1_694, %_cond2_697
  %_cond1_n_cond2_cond3_700 = and i1 %_cond1_n_cond2_699, %_cond4_698
  br i1 %_cond1_n_cond2_cond3_700, label %308, label %309

; <label>:308:                                    ; preds = %305
  %_address_in_parent_stack_bt_702 = bitcast i8* %_pot_address_in_parent_stack_693 to i64*
  br label %309

; <label>:309:                                    ; preds = %305, %308
  %310 = phi i64* [ %_allin_new_bt_198, %305 ], [ %_address_in_parent_stack_bt_702, %308 ]
  %_new_load_703 = load i64, i64* %310
  %_new_int2ptr_ = inttoptr i64 %_new_load_703 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_703, i64* %XBP, !mcsema_real_eip !162
  %_new_gep_199 = getelementptr i8, i8* %_new_gep_196, i64 8
  %311 = add i64 %307, 8, !mcsema_real_eip !162
  store volatile i8* %_new_gep_199, i8** %_RSP_ptr_
  store i64 %311, i64* %XSP, !mcsema_real_eip !162
  %_new_gep_201 = getelementptr i8, i8* %_new_gep_199, i64 8
  %312 = add i64 %311, 8, !mcsema_real_eip !163
  %_allin_new_bt_202 = bitcast i8* %_new_gep_199 to i64*
  %_ptr_to_int_704 = ptrtoint i64* %_allin_new_bt_202 to i64
  %_offset_above_rbp_707 = sub i64 %_ptr_to_int_704, %_local_end_to_int_
  %_pot_address_in_parent_stack_708 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_707
  %_cond1_709 = icmp ugt i8* %_new_gep_199, %_local_stack_end_ptr_
  %_cond2_1_710 = icmp ugt i8* %_new_gep_199, %_parent_stack_end_ptr_
  %_cond2_2_711 = icmp ult i8* %_new_gep_199, %_parent_stack_start_ptr_
  %_cond2_712 = or i1 %_cond2_1_710, %_cond2_2_711
  %_cond4_713 = icmp ule i8* %_pot_address_in_parent_stack_708, %_parent_stack_end_ptr_
  %_cond1_n_cond2_714 = and i1 %_cond1_709, %_cond2_712
  %_cond1_n_cond2_cond3_715 = and i1 %_cond1_n_cond2_714, %_cond4_713
  br i1 %_cond1_n_cond2_cond3_715, label %313, label %314

; <label>:313:                                    ; preds = %309
  %_address_in_parent_stack_bt_717 = bitcast i8* %_pot_address_in_parent_stack_708 to i64*
  br label %314

; <label>:314:                                    ; preds = %309, %313
  %315 = phi i64* [ %_allin_new_bt_202, %309 ], [ %_address_in_parent_stack_bt_717, %313 ]
  %_new_load_718 = load i64, i64* %315
  store i64 %_new_load_718, i64* %XIP, !mcsema_real_eip !163
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_
  store i64 %312, i64* %XSP, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 5}
!6 = !{i64 9}
!7 = !{i64 13}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 23}
!11 = !{i64 27}
!12 = !{i64 31}
!13 = !{i64 35}
!14 = !{i64 39}
!15 = !{i64 43}
!16 = !{i64 46}
!17 = !{i64 50}
!18 = !{i64 54}
!19 = !{i64 58}
!20 = !{i64 65}
!21 = !{i64 68}
!22 = !{i64 71}
!23 = !{i64 74}
!24 = !{i64 81}
!25 = !{i64 84}
!26 = !{i64 87}
!27 = !{i64 93}
!28 = !{i64 97}
!29 = !{i64 101}
!30 = !{i64 104}
!31 = !{i64 107}
!32 = !{i64 110}
!33 = !{i64 113}
!34 = !{i64 116}
!35 = !{i64 119}
!36 = !{i64 124}
!37 = !{i64 128}
!38 = !{i64 130}
!39 = !{i64 133}
!40 = !{i64 136}
!41 = !{i64 143}
!42 = !{i64 146}
!43 = !{i64 149}
!44 = !{i64 155}
!45 = !{i64 159}
!46 = !{i64 163}
!47 = !{i64 166}
!48 = !{i64 169}
!49 = !{i64 172}
!50 = !{i64 175}
!51 = !{i64 178}
!52 = !{i64 181}
!53 = !{i64 186}
!54 = !{i64 189}
!55 = !{i64 192}
!56 = !{i64 195}
!57 = !{i64 202}
!58 = !{i64 205}
!59 = !{i64 208}
!60 = !{i64 214}
!61 = !{i64 218}
!62 = !{i64 222}
!63 = !{i64 225}
!64 = !{i64 228}
!65 = !{i64 231}
!66 = !{i64 234}
!67 = !{i64 237}
!68 = !{i64 240}
!69 = !{i64 245}
!70 = !{i64 249}
!71 = !{i64 251}
!72 = !{i64 254}
!73 = !{i64 257}
!74 = !{i64 264}
!75 = !{i64 267}
!76 = !{i64 270}
!77 = !{i64 276}
!78 = !{i64 280}
!79 = !{i64 284}
!80 = !{i64 287}
!81 = !{i64 290}
!82 = !{i64 293}
!83 = !{i64 296}
!84 = !{i64 299}
!85 = !{i64 302}
!86 = !{i64 307}
!87 = !{i64 310}
!88 = !{i64 311}
!89 = !{i64 312}
!90 = !{i64 320}
!91 = !{i64 321}
!92 = !{i64 324}
!93 = !{i64 326}
!94 = !{i64 327}
!95 = !{i64 334}
!96 = !{i64 341}
!97 = !{i64 348}
!98 = !{i64 355}
!99 = !{i64 359}
!100 = !{i64 365}
!101 = !{i64 368}
!102 = !{i64 371}
!103 = !{i64 375}
!104 = !{i64 379}
!105 = !{i64 382}
!106 = !{i64 385}
!107 = !{i64 388}
!108 = !{i64 393}
!109 = !{i64 398}
!110 = !{i64 400}
!111 = !{i64 404}
!112 = !{i64 408}
!113 = !{i64 413}
!114 = !{i64 417}
!115 = !{i64 424}
!116 = !{i64 428}
!117 = !{i64 434}
!118 = !{i64 437}
!119 = !{i64 440}
!120 = !{i64 444}
!121 = !{i64 448}
!122 = !{i64 451}
!123 = !{i64 454}
!124 = !{i64 457}
!125 = !{i64 460}
!126 = !{i64 465}
!127 = !{i64 470}
!128 = !{i64 474}
!129 = !{i64 477}
!130 = !{i64 481}
!131 = !{i64 485}
!132 = !{i64 489}
!133 = !{i64 493}
!134 = !{i64 497}
!135 = !{i64 501}
!136 = !{i64 504}
!137 = !{i64 508}
!138 = !{i64 512}
!139 = !{i64 515}
!140 = !{i64 519}
!141 = !{i64 522}
!142 = !{i64 526}
!143 = !{i64 529}
!144 = !{i64 532}
!145 = !{i64 535}
!146 = !{i64 539}
!147 = !{i64 544}
!148 = !{i64 548}
!149 = !{i64 553}
!150 = !{i64 558}
!151 = !{i64 563}
!152 = !{i64 573}
!153 = !{i64 576}
!154 = !{i64 579}
!155 = !{i64 581}
!156 = !{i64 586}
!157 = !{i64 589}
!158 = !{i64 595}
!159 = !{i64 597}
!160 = !{i64 604}
!161 = !{i64 605}
!162 = !{i64 607}
!163 = !{i64 608}
