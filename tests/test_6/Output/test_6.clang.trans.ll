; ModuleID = 'Output/test_6.clang.trans.bc'
source_filename = "Output/test_6.clang.bc"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x1af = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x1b8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\0F\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !6
  %11 = load i32, i32* %10, !mcsema_real_eip !6
  %12 = zext i32 %11 to i64, !mcsema_real_eip !6
  store i64 %12, i64* %R10, !mcsema_real_eip !6
  %13 = add i64 %RBP_val.5, 24, !mcsema_real_eip !7
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !7
  %15 = load i64, i64* %14, !mcsema_real_eip !7
  store i64 %15, i64* %R11, !mcsema_real_eip !7
  %16 = add i64 %RBP_val.5, 16, !mcsema_real_eip !8
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !8
  %18 = inttoptr i64 %16 to i32*, !mcsema_real_eip !8
  %19 = load i32, i32* %18, !mcsema_real_eip !8
  %20 = zext i32 %19 to i64, !mcsema_real_eip !8
  store i64 %20, i64* %XBX, !mcsema_real_eip !8
  %21 = add i64 %RBP_val.5, -12, !mcsema_real_eip !9
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !9
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !9
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %23, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %24 = add i64 %RBP_val.12, -16, !mcsema_real_eip !10
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !10
  %ESI.13 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.14 = load i32, i32* %ESI.13, !mcsema_real_eip !10
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !10
  store i32 %ESI_val.14, i32* %26, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %27 = add i64 %RBP_val.15, -20, !mcsema_real_eip !11
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !11
  %EDX.16 = bitcast i64* %XDX to i32*, !mcsema_real_eip !11
  %EDX_val.17 = load i32, i32* %EDX.16, !mcsema_real_eip !11
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !11
  store i32 %EDX_val.17, i32* %29, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !12
  %30 = add i64 %RBP_val.18, -24, !mcsema_real_eip !12
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !12
  %ECX.19 = bitcast i64* %XCX to i32*, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.19, !mcsema_real_eip !12
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !12
  store i32 %ECX_val.20, i32* %32, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %33 = add i64 %RBP_val.21, -28, !mcsema_real_eip !13
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !13
  %R8D.22 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.23 = load i32, i32* %R8D.22, !mcsema_real_eip !13
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.23, i32* %35, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !14
  %36 = add i64 %RBP_val.24, -32, !mcsema_real_eip !14
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !14
  %R9D.25 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.26 = load i32, i32* %R9D.25, !mcsema_real_eip !14
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.26, i32* %38, !mcsema_real_eip !14
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !15
  %39 = add i64 %RBP_val.27, -36, !mcsema_real_eip !15
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !15
  %EBX.28 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.29 = load i32, i32* %EBX.28, !mcsema_real_eip !15
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.29, i32* %41, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !16
  %42 = add i64 %RBP_val.30, -48, !mcsema_real_eip !16
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !16
  %R11_val.31 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %R11_val.31, i64* %43, !mcsema_real_eip !16
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !17
  %44 = add i64 %RBP_val.32, -52, !mcsema_real_eip !17
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !17
  %R10D.33 = bitcast i64* %R10 to i32*, !mcsema_real_eip !17
  %R10D_val.34 = load i32, i32* %R10D.33, !mcsema_real_eip !17
  %46 = inttoptr i64 %44 to i32*, !mcsema_real_eip !17
  store i32 %R10D_val.34, i32* %46, !mcsema_real_eip !17
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !18
  %47 = add i64 %RBP_val.35, -64, !mcsema_real_eip !18
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !18
  %RAX_val.36 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.36, i64* %48, !mcsema_real_eip !18
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !19
  %49 = add i64 %RBP_val.37, -68, !mcsema_real_eip !19
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !19
  %51 = inttoptr i64 %49 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %51, !mcsema_real_eip !19
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !20
  %52 = add i64 %RBP_val.38, -72, !mcsema_real_eip !20
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !20
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !20
  store i32 0, i32* %54, !mcsema_real_eip !20
  br label %block_0x45, !mcsema_real_eip !21

block_0x45:                                       ; preds = %block_0x51, %block_0x0
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !21
  %55 = add i64 %RBP_val.39, -72, !mcsema_real_eip !21
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !21
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !21
  %58 = load i32, i32* %57, !mcsema_real_eip !21
  %59 = zext i32 %58 to i64, !mcsema_real_eip !21
  store i64 %59, i64* %XAX, !mcsema_real_eip !21
  %60 = add i64 %RBP_val.39, -36, !mcsema_real_eip !22
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !22
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !22
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !22
  %63 = load i32, i32* %62, !mcsema_real_eip !22
  %64 = sub i32 %EAX_val.42, %63, !mcsema_real_eip !22
  %65 = xor i32 %64, %EAX_val.42, !mcsema_real_eip !22
  %66 = xor i32 %65, %63, !mcsema_real_eip !22
  %67 = and i32 %66, 16, !mcsema_real_eip !22
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !22
  store i1 %68, i1* %AF, !mcsema_real_eip !22
  %69 = trunc i32 %64 to i8, !mcsema_real_eip !22
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !22
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !22
  %72 = xor i1 %71, true, !mcsema_real_eip !22
  store i1 %72, i1* %PF, !mcsema_real_eip !22
  %73 = icmp eq i32 %64, 0, !mcsema_real_eip !22
  store i1 %73, i1* %ZF, !mcsema_real_eip !22
  %74 = lshr i32 %64, 31, !mcsema_real_eip !22
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !22
  store i1 %75, i1* %SF, !mcsema_real_eip !22
  %76 = icmp ult i32 %EAX_val.42, %63, !mcsema_real_eip !22
  store i1 %76, i1* %CF, !mcsema_real_eip !22
  %77 = xor i32 %EAX_val.42, %63, !mcsema_real_eip !22
  %78 = and i32 %77, %65, !mcsema_real_eip !22
  %79 = lshr i32 %78, 31, !mcsema_real_eip !22
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !22
  store i1 %80, i1* %OF, !mcsema_real_eip !22
  %81 = icmp eq i1 %75, %80, !mcsema_real_eip !23
  br i1 %81, label %block_0x7b, label %block_0x51, !mcsema_real_eip !23

block_0x51:                                       ; preds = %block_0x45
  %82 = add i64 %RBP_val.39, -48, !mcsema_real_eip !24
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !24
  %84 = load i64, i64* %83, !mcsema_real_eip !24
  store i64 %84, i64* %XAX, !mcsema_real_eip !24
  %85 = load i32, i32* %57, !mcsema_real_eip !25
  %86 = sext i32 %85 to i64, !mcsema_real_eip !25
  store i64 %86, i64* %XCX, !mcsema_real_eip !25
  %87 = mul i64 %86, 4, !mcsema_real_eip !26
  %88 = add i64 %84, %87, !mcsema_real_eip !26
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !26
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !26
  %91 = load i32, i32* %90, !mcsema_real_eip !26
  %92 = zext i32 %91 to i64, !mcsema_real_eip !26
  store i64 %92, i64* %XDX, !mcsema_real_eip !26
  %93 = add i64 %RBP_val.39, -64, !mcsema_real_eip !27
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !27
  %95 = load i64, i64* %94, !mcsema_real_eip !27
  store i64 %95, i64* %XAX, !mcsema_real_eip !27
  %96 = load i32, i32* %57, !mcsema_real_eip !28
  %97 = sext i32 %96 to i64, !mcsema_real_eip !28
  store i64 %97, i64* %XCX, !mcsema_real_eip !28
  %98 = mul i64 %97, 4, !mcsema_real_eip !29
  %99 = add i64 %95, %98, !mcsema_real_eip !29
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !29
  %EDX_val.52 = load i32, i32* %EDX.16, !mcsema_real_eip !29
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !29
  %102 = load i32, i32* %101, !mcsema_real_eip !29
  %103 = sub i32 %EDX_val.52, %102, !mcsema_real_eip !29
  %104 = xor i32 %103, %EDX_val.52, !mcsema_real_eip !29
  %105 = xor i32 %104, %102, !mcsema_real_eip !29
  %106 = and i32 %105, 16, !mcsema_real_eip !29
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !29
  store i1 %107, i1* %AF, !mcsema_real_eip !29
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !29
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !29
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !29
  %111 = xor i1 %110, true, !mcsema_real_eip !29
  store i1 %111, i1* %PF, !mcsema_real_eip !29
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !29
  store i1 %112, i1* %ZF, !mcsema_real_eip !29
  %113 = lshr i32 %103, 31, !mcsema_real_eip !29
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !29
  store i1 %114, i1* %SF, !mcsema_real_eip !29
  %115 = icmp ult i32 %EDX_val.52, %102, !mcsema_real_eip !29
  store i1 %115, i1* %CF, !mcsema_real_eip !29
  %116 = xor i32 %EDX_val.52, %102, !mcsema_real_eip !29
  %117 = and i32 %116, %104, !mcsema_real_eip !29
  %118 = lshr i32 %117, 31, !mcsema_real_eip !29
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !29
  store i1 %119, i1* %OF, !mcsema_real_eip !29
  %120 = zext i32 %103 to i64, !mcsema_real_eip !29
  store i64 %120, i64* %XDX, !mcsema_real_eip !29
  %121 = add i64 %RBP_val.39, -68, !mcsema_real_eip !30
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !30
  %123 = inttoptr i64 %121 to i32*, !mcsema_real_eip !30
  %124 = load i32, i32* %123, !mcsema_real_eip !30
  %EDX_val.55 = load i32, i32* %EDX.16, !mcsema_real_eip !30
  %125 = add i32 %EDX_val.55, %124, !mcsema_real_eip !30
  %126 = xor i32 %125, %124, !mcsema_real_eip !30
  %127 = xor i32 %126, %EDX_val.55, !mcsema_real_eip !30
  %128 = and i32 %127, 16, !mcsema_real_eip !30
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !30
  store i1 %129, i1* %AF, !mcsema_real_eip !30
  %130 = lshr i32 %125, 31, !mcsema_real_eip !30
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !30
  store i1 %131, i1* %SF, !mcsema_real_eip !30
  %132 = icmp eq i32 %125, 0, !mcsema_real_eip !30
  store i1 %132, i1* %ZF, !mcsema_real_eip !30
  %133 = xor i32 %124, %EDX_val.55, !mcsema_real_eip !30
  %134 = xor i32 %133, -1, !mcsema_real_eip !30
  %135 = and i32 %134, %126, !mcsema_real_eip !30
  %136 = lshr i32 %135, 31, !mcsema_real_eip !30
  %137 = and i32 %136, 1, !mcsema_real_eip !30
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !30
  store i1 %138, i1* %OF, !mcsema_real_eip !30
  %139 = trunc i32 %125 to i8, !mcsema_real_eip !30
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !30
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !30
  %142 = xor i1 %141, true, !mcsema_real_eip !30
  store i1 %142, i1* %PF, !mcsema_real_eip !30
  %143 = icmp ult i32 %125, %124, !mcsema_real_eip !30
  store i1 %143, i1* %CF, !mcsema_real_eip !30
  %144 = zext i32 %125 to i64, !mcsema_real_eip !30
  store i64 %144, i64* %XDX, !mcsema_real_eip !30
  %EDX_val.58 = load i32, i32* %EDX.16, !mcsema_real_eip !31
  store i32 %EDX_val.58, i32* %123, !mcsema_real_eip !31
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !32
  %145 = add i64 %RBP_val.59, -72, !mcsema_real_eip !32
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !32
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !32
  %148 = load i32, i32* %147, !mcsema_real_eip !32
  %149 = zext i32 %148 to i64, !mcsema_real_eip !32
  store i64 %149, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.61 = load i32, i32* %EAX.41, !mcsema_real_eip !33
  %150 = add i32 1, %EAX_val.61, !mcsema_real_eip !33
  %151 = xor i32 %150, %EAX_val.61, !mcsema_real_eip !33
  %152 = xor i32 %151, 1, !mcsema_real_eip !33
  %153 = and i32 %152, 16, !mcsema_real_eip !33
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !33
  store i1 %154, i1* %AF, !mcsema_real_eip !33
  %155 = lshr i32 %150, 31, !mcsema_real_eip !33
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !33
  store i1 %156, i1* %SF, !mcsema_real_eip !33
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !33
  store i1 %157, i1* %ZF, !mcsema_real_eip !33
  %158 = xor i32 %EAX_val.61, 1, !mcsema_real_eip !33
  %159 = xor i32 %158, -1, !mcsema_real_eip !33
  %160 = and i32 %159, %151, !mcsema_real_eip !33
  %161 = lshr i32 %160, 31, !mcsema_real_eip !33
  %162 = and i32 %161, 1, !mcsema_real_eip !33
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !33
  store i1 %163, i1* %OF, !mcsema_real_eip !33
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !33
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !33
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !33
  %167 = xor i1 %166, true, !mcsema_real_eip !33
  store i1 %167, i1* %PF, !mcsema_real_eip !33
  %168 = icmp ult i32 %150, %EAX_val.61, !mcsema_real_eip !33
  store i1 %168, i1* %CF, !mcsema_real_eip !33
  %169 = zext i32 %150 to i64, !mcsema_real_eip !33
  store i64 %169, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.64 = load i32, i32* %EAX.41, !mcsema_real_eip !34
  store i32 %EAX_val.64, i32* %147, !mcsema_real_eip !34
  br label %block_0x45, !mcsema_real_eip !35

block_0x7b:                                       ; preds = %block_0x45
  %170 = add i64 %RBP_val.39, -68, !mcsema_real_eip !36
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !36
  %172 = inttoptr i64 %170 to i32*, !mcsema_real_eip !36
  %173 = load i32, i32* %172, !mcsema_real_eip !36
  %174 = zext i32 %173 to i64, !mcsema_real_eip !36
  store i64 %174, i64* %XAX, !mcsema_real_eip !36
  %175 = add i64 %RBP_val.39, -12, !mcsema_real_eip !37
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !37
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !37
  %178 = load i32, i32* %177, !mcsema_real_eip !37
  %179 = zext i32 %178 to i64, !mcsema_real_eip !37
  store i64 %179, i64* %XCX, !mcsema_real_eip !37
  %180 = add i64 %RBP_val.39, -16, !mcsema_real_eip !38
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !38
  %182 = inttoptr i64 %180 to i32*, !mcsema_real_eip !38
  %183 = load i32, i32* %182, !mcsema_real_eip !38
  %ECX_val.69 = load i32, i32* %ECX.19, !mcsema_real_eip !38
  %184 = add i32 %ECX_val.69, %183, !mcsema_real_eip !38
  %185 = xor i32 %184, %183, !mcsema_real_eip !38
  %186 = xor i32 %185, %ECX_val.69, !mcsema_real_eip !38
  %187 = and i32 %186, 16, !mcsema_real_eip !38
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !38
  store i1 %188, i1* %AF, !mcsema_real_eip !38
  %189 = lshr i32 %184, 31, !mcsema_real_eip !38
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !38
  store i1 %190, i1* %SF, !mcsema_real_eip !38
  %191 = icmp eq i32 %184, 0, !mcsema_real_eip !38
  store i1 %191, i1* %ZF, !mcsema_real_eip !38
  %192 = xor i32 %183, %ECX_val.69, !mcsema_real_eip !38
  %193 = xor i32 %192, -1, !mcsema_real_eip !38
  %194 = and i32 %193, %185, !mcsema_real_eip !38
  %195 = lshr i32 %194, 31, !mcsema_real_eip !38
  %196 = and i32 %195, 1, !mcsema_real_eip !38
  %197 = trunc i32 %196 to i1, !mcsema_real_eip !38
  store i1 %197, i1* %OF, !mcsema_real_eip !38
  %198 = trunc i32 %184 to i8, !mcsema_real_eip !38
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !38
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !38
  %201 = xor i1 %200, true, !mcsema_real_eip !38
  store i1 %201, i1* %PF, !mcsema_real_eip !38
  %202 = icmp ult i32 %184, %183, !mcsema_real_eip !38
  store i1 %202, i1* %CF, !mcsema_real_eip !38
  %203 = zext i32 %184 to i64, !mcsema_real_eip !38
  store i64 %203, i64* %XCX, !mcsema_real_eip !38
  %204 = add i64 %RBP_val.39, -20, !mcsema_real_eip !39
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !39
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !39
  %207 = load i32, i32* %206, !mcsema_real_eip !39
  %ECX_val.72 = load i32, i32* %ECX.19, !mcsema_real_eip !39
  %208 = add i32 %ECX_val.72, %207, !mcsema_real_eip !39
  %209 = xor i32 %208, %207, !mcsema_real_eip !39
  %210 = xor i32 %209, %ECX_val.72, !mcsema_real_eip !39
  %211 = and i32 %210, 16, !mcsema_real_eip !39
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !39
  store i1 %212, i1* %AF, !mcsema_real_eip !39
  %213 = lshr i32 %208, 31, !mcsema_real_eip !39
  %214 = trunc i32 %213 to i1, !mcsema_real_eip !39
  store i1 %214, i1* %SF, !mcsema_real_eip !39
  %215 = icmp eq i32 %208, 0, !mcsema_real_eip !39
  store i1 %215, i1* %ZF, !mcsema_real_eip !39
  %216 = xor i32 %207, %ECX_val.72, !mcsema_real_eip !39
  %217 = xor i32 %216, -1, !mcsema_real_eip !39
  %218 = and i32 %217, %209, !mcsema_real_eip !39
  %219 = lshr i32 %218, 31, !mcsema_real_eip !39
  %220 = and i32 %219, 1, !mcsema_real_eip !39
  %221 = trunc i32 %220 to i1, !mcsema_real_eip !39
  store i1 %221, i1* %OF, !mcsema_real_eip !39
  %222 = trunc i32 %208 to i8, !mcsema_real_eip !39
  %223 = call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !39
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !39
  %225 = xor i1 %224, true, !mcsema_real_eip !39
  store i1 %225, i1* %PF, !mcsema_real_eip !39
  %226 = icmp ult i32 %208, %207, !mcsema_real_eip !39
  store i1 %226, i1* %CF, !mcsema_real_eip !39
  %227 = zext i32 %208 to i64, !mcsema_real_eip !39
  store i64 %227, i64* %XCX, !mcsema_real_eip !39
  %228 = add i64 %RBP_val.39, -24, !mcsema_real_eip !40
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !40
  %230 = inttoptr i64 %228 to i32*, !mcsema_real_eip !40
  %231 = load i32, i32* %230, !mcsema_real_eip !40
  %ECX_val.75 = load i32, i32* %ECX.19, !mcsema_real_eip !40
  %232 = add i32 %ECX_val.75, %231, !mcsema_real_eip !40
  %233 = xor i32 %232, %231, !mcsema_real_eip !40
  %234 = xor i32 %233, %ECX_val.75, !mcsema_real_eip !40
  %235 = and i32 %234, 16, !mcsema_real_eip !40
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !40
  store i1 %236, i1* %AF, !mcsema_real_eip !40
  %237 = lshr i32 %232, 31, !mcsema_real_eip !40
  %238 = trunc i32 %237 to i1, !mcsema_real_eip !40
  store i1 %238, i1* %SF, !mcsema_real_eip !40
  %239 = icmp eq i32 %232, 0, !mcsema_real_eip !40
  store i1 %239, i1* %ZF, !mcsema_real_eip !40
  %240 = xor i32 %231, %ECX_val.75, !mcsema_real_eip !40
  %241 = xor i32 %240, -1, !mcsema_real_eip !40
  %242 = and i32 %241, %233, !mcsema_real_eip !40
  %243 = lshr i32 %242, 31, !mcsema_real_eip !40
  %244 = and i32 %243, 1, !mcsema_real_eip !40
  %245 = trunc i32 %244 to i1, !mcsema_real_eip !40
  store i1 %245, i1* %OF, !mcsema_real_eip !40
  %246 = trunc i32 %232 to i8, !mcsema_real_eip !40
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !40
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !40
  %249 = xor i1 %248, true, !mcsema_real_eip !40
  store i1 %249, i1* %PF, !mcsema_real_eip !40
  %250 = icmp ult i32 %232, %231, !mcsema_real_eip !40
  store i1 %250, i1* %CF, !mcsema_real_eip !40
  %251 = zext i32 %232 to i64, !mcsema_real_eip !40
  store i64 %251, i64* %XCX, !mcsema_real_eip !40
  %252 = add i64 %RBP_val.39, -28, !mcsema_real_eip !41
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !41
  %254 = inttoptr i64 %252 to i32*, !mcsema_real_eip !41
  %255 = load i32, i32* %254, !mcsema_real_eip !41
  %ECX_val.78 = load i32, i32* %ECX.19, !mcsema_real_eip !41
  %256 = add i32 %ECX_val.78, %255, !mcsema_real_eip !41
  %257 = xor i32 %256, %255, !mcsema_real_eip !41
  %258 = xor i32 %257, %ECX_val.78, !mcsema_real_eip !41
  %259 = and i32 %258, 16, !mcsema_real_eip !41
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !41
  store i1 %260, i1* %AF, !mcsema_real_eip !41
  %261 = lshr i32 %256, 31, !mcsema_real_eip !41
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !41
  store i1 %262, i1* %SF, !mcsema_real_eip !41
  %263 = icmp eq i32 %256, 0, !mcsema_real_eip !41
  store i1 %263, i1* %ZF, !mcsema_real_eip !41
  %264 = xor i32 %255, %ECX_val.78, !mcsema_real_eip !41
  %265 = xor i32 %264, -1, !mcsema_real_eip !41
  %266 = and i32 %265, %257, !mcsema_real_eip !41
  %267 = lshr i32 %266, 31, !mcsema_real_eip !41
  %268 = and i32 %267, 1, !mcsema_real_eip !41
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !41
  store i1 %269, i1* %OF, !mcsema_real_eip !41
  %270 = trunc i32 %256 to i8, !mcsema_real_eip !41
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !41
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !41
  %273 = xor i1 %272, true, !mcsema_real_eip !41
  store i1 %273, i1* %PF, !mcsema_real_eip !41
  %274 = icmp ult i32 %256, %255, !mcsema_real_eip !41
  store i1 %274, i1* %CF, !mcsema_real_eip !41
  %275 = zext i32 %256 to i64, !mcsema_real_eip !41
  store i64 %275, i64* %XCX, !mcsema_real_eip !41
  %276 = add i64 %RBP_val.39, -32, !mcsema_real_eip !42
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !42
  %278 = inttoptr i64 %276 to i32*, !mcsema_real_eip !42
  %279 = load i32, i32* %278, !mcsema_real_eip !42
  %ECX_val.81 = load i32, i32* %ECX.19, !mcsema_real_eip !42
  %280 = add i32 %ECX_val.81, %279, !mcsema_real_eip !42
  %281 = xor i32 %280, %279, !mcsema_real_eip !42
  %282 = xor i32 %281, %ECX_val.81, !mcsema_real_eip !42
  %283 = and i32 %282, 16, !mcsema_real_eip !42
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !42
  store i1 %284, i1* %AF, !mcsema_real_eip !42
  %285 = lshr i32 %280, 31, !mcsema_real_eip !42
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !42
  store i1 %286, i1* %SF, !mcsema_real_eip !42
  %287 = icmp eq i32 %280, 0, !mcsema_real_eip !42
  store i1 %287, i1* %ZF, !mcsema_real_eip !42
  %288 = xor i32 %279, %ECX_val.81, !mcsema_real_eip !42
  %289 = xor i32 %288, -1, !mcsema_real_eip !42
  %290 = and i32 %289, %281, !mcsema_real_eip !42
  %291 = lshr i32 %290, 31, !mcsema_real_eip !42
  %292 = and i32 %291, 1, !mcsema_real_eip !42
  %293 = trunc i32 %292 to i1, !mcsema_real_eip !42
  store i1 %293, i1* %OF, !mcsema_real_eip !42
  %294 = trunc i32 %280 to i8, !mcsema_real_eip !42
  %295 = call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !42
  %296 = trunc i8 %295 to i1, !mcsema_real_eip !42
  %297 = xor i1 %296, true, !mcsema_real_eip !42
  store i1 %297, i1* %PF, !mcsema_real_eip !42
  %298 = icmp ult i32 %280, %279, !mcsema_real_eip !42
  store i1 %298, i1* %CF, !mcsema_real_eip !42
  %299 = zext i32 %280 to i64, !mcsema_real_eip !42
  store i64 %299, i64* %XCX, !mcsema_real_eip !42
  %ECX_val.83 = load i32, i32* %ECX.19, !mcsema_real_eip !43
  %EAX_val.85 = load i32, i32* %EAX.41, !mcsema_real_eip !43
  %300 = sext i32 %EAX_val.85 to i64, !mcsema_real_eip !43
  %301 = sext i32 %ECX_val.83 to i64, !mcsema_real_eip !43
  %302 = mul i64 %300, %301, !mcsema_real_eip !43
  %303 = trunc i64 %302 to i32, !mcsema_real_eip !43
  %304 = sext i32 %303 to i64, !mcsema_real_eip !43
  %305 = icmp ne i64 %304, %302, !mcsema_real_eip !43
  %306 = icmp slt i32 %303, 0, !mcsema_real_eip !43
  store i1 %306, i1* %SF, !mcsema_real_eip !43
  store i1 %305, i1* %OF, !mcsema_real_eip !43
  store i1 %305, i1* %CF, !mcsema_real_eip !43
  %307 = zext i32 %303 to i64, !mcsema_real_eip !43
  store i64 %307, i64* %XAX, !mcsema_real_eip !43
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !44
  %308 = inttoptr i64 %RSP_val.86 to i64*, !mcsema_real_eip !44
  %309 = load i64, i64* %308, !mcsema_real_eip !44
  store i64 %309, i64* %XBX, !mcsema_real_eip !44
  %310 = add i64 %RSP_val.86, 8, !mcsema_real_eip !44
  store i64 %310, i64* %XSP, !mcsema_real_eip !44
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !45
  %312 = load i64, i64* %311, !mcsema_real_eip !45
  store i64 %312, i64* %XBP, !mcsema_real_eip !45
  %313 = add i64 %310, 8, !mcsema_real_eip !45
  store i64 %313, i64* %XSP, !mcsema_real_eip !45
  %314 = add i64 %313, 8, !mcsema_real_eip !46
  %315 = inttoptr i64 %313 to i64*, !mcsema_real_eip !46
  %316 = load i64, i64* %315, !mcsema_real_eip !46
  store i64 %316, i64* %XIP, !mcsema_real_eip !46
  store i64 %314, i64* %XSP, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 112
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 112
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !47
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !47
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !47
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !47
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !47
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !47
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !47
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !47
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !47
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !47
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !47
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !47
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !47
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !47
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !47
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !47
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !47
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !47
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !47
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !47
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !47
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !47
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !47
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !47
  br label %block_0xa0, !mcsema_real_eip !47

block_0xa0:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.90, 8, !mcsema_real_eip !47
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !47
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !48
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !49
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -96
  %2 = sub i64 %RSP_val.92, 96, !mcsema_real_eip !49
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 96, !mcsema_real_eip !49
  %4 = and i64 %3, 16, !mcsema_real_eip !49
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !49
  store i1 %5, i1* %AF, !mcsema_real_eip !49
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !49
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !49
  %8 = xor i1 %7, true, !mcsema_real_eip !49
  store i1 %8, i1* %PF, !mcsema_real_eip !49
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !49
  %9 = lshr i64 %2, 63, !mcsema_real_eip !49
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !49
  store i1 %10, i1* %SF, !mcsema_real_eip !49
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 96
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !49
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 96
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !49
  %12 = lshr i64 %11, 63, !mcsema_real_eip !49
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !49
  store i1 %13, i1* %OF, !mcsema_real_eip !49
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !49
  store i64 40, i64* %XAX, !mcsema_real_eip !50
  %EAX.93 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.94 = load i32, i32* %EAX.93, !mcsema_real_eip !51
  %14 = zext i32 %EAX_val.94 to i64, !mcsema_real_eip !51
  store i64 %14, i64* %XCX, !mcsema_real_eip !51
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !52
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !52
  store i32 0, i32* %16, !mcsema_real_eip !52
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !53
  %EDI_val.98 = load i32, i32* %EDI.97, !mcsema_real_eip !53
  %17 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !53
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !53
  store i32 %EDI_val.98, i32* %18, !mcsema_real_eip !53
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.100 = load i64, i64* %XSI, !mcsema_real_eip !54
  store i64 %RSI_val.100, i64* %_allin_new_bt_21, !mcsema_real_eip !54
  %RCX_val.101 = load i64, i64* %XCX, !mcsema_real_eip !55
  store i64 %RCX_val.101, i64* %XDI, !mcsema_real_eip !55
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %RSP_val.103 = load i64, i64* %XSP, !mcsema_real_eip !56
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %19 = sub i64 %RSP_val.103, 8, !mcsema_real_eip !56
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, !mcsema_real_eip !56
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %19, i64* %XSP, !mcsema_real_eip !56
  %20 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.101)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %20, i64* %XAX, !mcsema_real_eip !56
  store i64 40, i64* %XDX, !mcsema_real_eip !57
  %EDX.104 = bitcast i64* %XDX to i32*, !mcsema_real_eip !58
  %EDX_val.105 = load i32, i32* %EDX.104, !mcsema_real_eip !58
  %21 = zext i32 %EDX_val.105 to i64, !mcsema_real_eip !58
  store i64 %21, i64* %XDI, !mcsema_real_eip !58
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 %20, i64* %_allin_new_bt_27, !mcsema_real_eip !59
  %RDI_val.108 = load i64, i64* %XDI, !mcsema_real_eip !60
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.109 = load i64, i64* %XSP, !mcsema_real_eip !60
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %22 = sub i64 %RSP_val.109, 8, !mcsema_real_eip !60
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !60
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %22, i64* %XSP, !mcsema_real_eip !60
  %23 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.108)
  %_rsp_fix_157 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_158 = getelementptr i8, i8* %_rsp_fix_157, i64 8
  store i8* %_gep_fix_158, i8** %_RSP_ptr_
  store i64 %23, i64* %XAX, !mcsema_real_eip !60
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %23, i64* %_allin_new_bt_33, !mcsema_real_eip !61
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -36
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !62
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !62
  store i32 0, i32* %25, !mcsema_real_eip !62
  br label %block_0xe0, !mcsema_real_eip !63

block_0xe0:                                       ; preds = %block_0xea, %block_0xa0
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -36
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !63
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !63
  %28 = load i32, i32* %27, !mcsema_real_eip !63
  %29 = sub i32 %28, 10, !mcsema_real_eip !63
  %30 = xor i32 %29, %28, !mcsema_real_eip !63
  %31 = xor i32 %30, 10, !mcsema_real_eip !63
  %32 = and i32 %31, 16, !mcsema_real_eip !63
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !63
  store i1 %33, i1* %AF, !mcsema_real_eip !63
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !63
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !63
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !63
  %37 = xor i1 %36, true, !mcsema_real_eip !63
  store i1 %37, i1* %PF, !mcsema_real_eip !63
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !63
  store i1 %38, i1* %ZF, !mcsema_real_eip !63
  %39 = lshr i32 %29, 31, !mcsema_real_eip !63
  %40 = trunc i32 %39 to i1, !mcsema_real_eip !63
  store i1 %40, i1* %SF, !mcsema_real_eip !63
  %41 = icmp ult i32 %28, 10, !mcsema_real_eip !63
  store i1 %41, i1* %CF, !mcsema_real_eip !63
  %42 = xor i32 %28, 10, !mcsema_real_eip !63
  %43 = and i32 %42, %30, !mcsema_real_eip !63
  %44 = lshr i32 %43, 31, !mcsema_real_eip !63
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !63
  store i1 %45, i1* %OF, !mcsema_real_eip !63
  %46 = icmp eq i1 %40, %45, !mcsema_real_eip !64
  br i1 %46, label %block_0x10c, label %block_0xea, !mcsema_real_eip !64

block_0xea:                                       ; preds = %block_0xe0
  %47 = load i32, i32* %27, !mcsema_real_eip !65
  %48 = zext i32 %47 to i64, !mcsema_real_eip !65
  store i64 %48, i64* %XAX, !mcsema_real_eip !65
  %EAX_val.116 = load i32, i32* %EAX.93, !mcsema_real_eip !66
  %49 = add i32 10, %EAX_val.116, !mcsema_real_eip !66
  %50 = xor i32 %49, %EAX_val.116, !mcsema_real_eip !66
  %51 = xor i32 %50, 10, !mcsema_real_eip !66
  %52 = and i32 %51, 16, !mcsema_real_eip !66
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !66
  store i1 %53, i1* %AF, !mcsema_real_eip !66
  %54 = lshr i32 %49, 31, !mcsema_real_eip !66
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !66
  store i1 %55, i1* %SF, !mcsema_real_eip !66
  %56 = icmp eq i32 %49, 0, !mcsema_real_eip !66
  store i1 %56, i1* %ZF, !mcsema_real_eip !66
  %57 = xor i32 %EAX_val.116, 10, !mcsema_real_eip !66
  %58 = xor i32 %57, -1, !mcsema_real_eip !66
  %59 = and i32 %58, %50, !mcsema_real_eip !66
  %60 = lshr i32 %59, 31, !mcsema_real_eip !66
  %61 = and i32 %60, 1, !mcsema_real_eip !66
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !66
  store i1 %62, i1* %OF, !mcsema_real_eip !66
  %63 = trunc i32 %49 to i8, !mcsema_real_eip !66
  %64 = call i8 @llvm.ctpop.i8(i8 %63), !mcsema_real_eip !66
  %65 = trunc i8 %64 to i1, !mcsema_real_eip !66
  %66 = xor i1 %65, true, !mcsema_real_eip !66
  store i1 %66, i1* %PF, !mcsema_real_eip !66
  %67 = icmp ult i32 %49, %EAX_val.116, !mcsema_real_eip !66
  store i1 %67, i1* %CF, !mcsema_real_eip !66
  %68 = zext i32 %49 to i64, !mcsema_real_eip !66
  store i64 %68, i64* %XAX, !mcsema_real_eip !66
  %EAX_val.118 = load i32, i32* %EAX.93, !mcsema_real_eip !67
  %69 = add i32 1, %EAX_val.118, !mcsema_real_eip !67
  %70 = xor i32 %69, %EAX_val.118, !mcsema_real_eip !67
  %71 = xor i32 %70, 1, !mcsema_real_eip !67
  %72 = and i32 %71, 16, !mcsema_real_eip !67
  %73 = icmp ne i32 %72, 0, !mcsema_real_eip !67
  store i1 %73, i1* %AF, !mcsema_real_eip !67
  %74 = lshr i32 %69, 31, !mcsema_real_eip !67
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !67
  store i1 %75, i1* %SF, !mcsema_real_eip !67
  %76 = icmp eq i32 %69, 0, !mcsema_real_eip !67
  store i1 %76, i1* %ZF, !mcsema_real_eip !67
  %77 = xor i32 %EAX_val.118, 1, !mcsema_real_eip !67
  %78 = xor i32 %77, -1, !mcsema_real_eip !67
  %79 = and i32 %78, %70, !mcsema_real_eip !67
  %80 = lshr i32 %79, 31, !mcsema_real_eip !67
  %81 = and i32 %80, 1, !mcsema_real_eip !67
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !67
  store i1 %82, i1* %OF, !mcsema_real_eip !67
  %83 = trunc i32 %69 to i8, !mcsema_real_eip !67
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !67
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !67
  %86 = xor i1 %85, true, !mcsema_real_eip !67
  store i1 %86, i1* %PF, !mcsema_real_eip !67
  %87 = icmp ult i32 %69, %EAX_val.118, !mcsema_real_eip !67
  store i1 %87, i1* %CF, !mcsema_real_eip !67
  %88 = zext i32 %69 to i64, !mcsema_real_eip !67
  store i64 %88, i64* %XAX, !mcsema_real_eip !67
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %89 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !68
  store i64 %89, i64* %XCX, !mcsema_real_eip !68
  %90 = load i32, i32* %27, !mcsema_real_eip !69
  %91 = sext i32 %90 to i64, !mcsema_real_eip !69
  store i64 %91, i64* %XDX, !mcsema_real_eip !69
  %92 = mul i64 %91, 4, !mcsema_real_eip !70
  %93 = add i64 %89, %92, !mcsema_real_eip !70
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !70
  %EAX_val.124 = load i32, i32* %EAX.93, !mcsema_real_eip !70
  %95 = inttoptr i64 %93 to i32*, !mcsema_real_eip !70
  store i32 %EAX_val.124, i32* %95, !mcsema_real_eip !70
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -36
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %96 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !71
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !71
  %98 = load i32, i32* %97, !mcsema_real_eip !71
  %99 = zext i32 %98 to i64, !mcsema_real_eip !71
  store i64 %99, i64* %XAX, !mcsema_real_eip !71
  %EAX_val.127 = load i32, i32* %EAX.93, !mcsema_real_eip !72
  %100 = add i32 1, %EAX_val.127, !mcsema_real_eip !72
  %101 = xor i32 %100, %EAX_val.127, !mcsema_real_eip !72
  %102 = xor i32 %101, 1, !mcsema_real_eip !72
  %103 = and i32 %102, 16, !mcsema_real_eip !72
  %104 = icmp ne i32 %103, 0, !mcsema_real_eip !72
  store i1 %104, i1* %AF, !mcsema_real_eip !72
  %105 = lshr i32 %100, 31, !mcsema_real_eip !72
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !72
  store i1 %106, i1* %SF, !mcsema_real_eip !72
  %107 = icmp eq i32 %100, 0, !mcsema_real_eip !72
  store i1 %107, i1* %ZF, !mcsema_real_eip !72
  %108 = xor i32 %EAX_val.127, 1, !mcsema_real_eip !72
  %109 = xor i32 %108, -1, !mcsema_real_eip !72
  %110 = and i32 %109, %101, !mcsema_real_eip !72
  %111 = lshr i32 %110, 31, !mcsema_real_eip !72
  %112 = and i32 %111, 1, !mcsema_real_eip !72
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !72
  store i1 %113, i1* %OF, !mcsema_real_eip !72
  %114 = trunc i32 %100 to i8, !mcsema_real_eip !72
  %115 = call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !72
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !72
  %117 = xor i1 %116, true, !mcsema_real_eip !72
  store i1 %117, i1* %PF, !mcsema_real_eip !72
  %118 = icmp ult i32 %100, %EAX_val.127, !mcsema_real_eip !72
  store i1 %118, i1* %CF, !mcsema_real_eip !72
  %119 = zext i32 %100 to i64, !mcsema_real_eip !72
  store i64 %119, i64* %XAX, !mcsema_real_eip !72
  %EAX_val.130 = load i32, i32* %EAX.93, !mcsema_real_eip !73
  store i32 %EAX_val.130, i32* %97, !mcsema_real_eip !73
  br label %block_0xe0, !mcsema_real_eip !74

block_0x10c:                                      ; preds = %block_0xe0
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -40
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %120 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !75
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !75
  store i32 0, i32* %121, !mcsema_real_eip !75
  br label %block_0x113, !mcsema_real_eip !76

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %122 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !76
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !76
  %124 = load i32, i32* %123, !mcsema_real_eip !76
  %125 = sub i32 %124, 10, !mcsema_real_eip !76
  %126 = xor i32 %125, %124, !mcsema_real_eip !76
  %127 = xor i32 %126, 10, !mcsema_real_eip !76
  %128 = and i32 %127, 16, !mcsema_real_eip !76
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !76
  store i1 %129, i1* %AF, !mcsema_real_eip !76
  %130 = trunc i32 %125 to i8, !mcsema_real_eip !76
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !76
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !76
  %133 = xor i1 %132, true, !mcsema_real_eip !76
  store i1 %133, i1* %PF, !mcsema_real_eip !76
  %134 = icmp eq i32 %125, 0, !mcsema_real_eip !76
  store i1 %134, i1* %ZF, !mcsema_real_eip !76
  %135 = lshr i32 %125, 31, !mcsema_real_eip !76
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !76
  store i1 %136, i1* %SF, !mcsema_real_eip !76
  %137 = icmp ult i32 %124, 10, !mcsema_real_eip !76
  store i1 %137, i1* %CF, !mcsema_real_eip !76
  %138 = xor i32 %124, 10, !mcsema_real_eip !76
  %139 = and i32 %138, %126, !mcsema_real_eip !76
  %140 = lshr i32 %139, 31, !mcsema_real_eip !76
  %141 = trunc i32 %140 to i1, !mcsema_real_eip !76
  store i1 %141, i1* %OF, !mcsema_real_eip !76
  %142 = icmp eq i1 %136, %141, !mcsema_real_eip !77
  br i1 %142, label %block_0x13c, label %block_0x11d, !mcsema_real_eip !77

block_0x11d:                                      ; preds = %block_0x113
  %143 = load i32, i32* %123, !mcsema_real_eip !78
  %144 = zext i32 %143 to i64, !mcsema_real_eip !78
  store i64 %144, i64* %XAX, !mcsema_real_eip !78
  %EAX_val.135 = load i32, i32* %EAX.93, !mcsema_real_eip !79
  %145 = add i32 1, %EAX_val.135, !mcsema_real_eip !79
  %146 = xor i32 %145, %EAX_val.135, !mcsema_real_eip !79
  %147 = xor i32 %146, 1, !mcsema_real_eip !79
  %148 = and i32 %147, 16, !mcsema_real_eip !79
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !79
  store i1 %149, i1* %AF, !mcsema_real_eip !79
  %150 = lshr i32 %145, 31, !mcsema_real_eip !79
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !79
  store i1 %151, i1* %SF, !mcsema_real_eip !79
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !79
  store i1 %152, i1* %ZF, !mcsema_real_eip !79
  %153 = xor i32 %EAX_val.135, 1, !mcsema_real_eip !79
  %154 = xor i32 %153, -1, !mcsema_real_eip !79
  %155 = and i32 %154, %146, !mcsema_real_eip !79
  %156 = lshr i32 %155, 31, !mcsema_real_eip !79
  %157 = and i32 %156, 1, !mcsema_real_eip !79
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !79
  store i1 %158, i1* %OF, !mcsema_real_eip !79
  %159 = trunc i32 %145 to i8, !mcsema_real_eip !79
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !79
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !79
  %162 = xor i1 %161, true, !mcsema_real_eip !79
  store i1 %162, i1* %PF, !mcsema_real_eip !79
  %163 = icmp ult i32 %145, %EAX_val.135, !mcsema_real_eip !79
  store i1 %163, i1* %CF, !mcsema_real_eip !79
  %164 = zext i32 %145 to i64, !mcsema_real_eip !79
  store i64 %164, i64* %XAX, !mcsema_real_eip !79
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %165 = load i64, i64* %_allin_new_bt_66, !mcsema_real_eip !80
  store i64 %165, i64* %XCX, !mcsema_real_eip !80
  %166 = load i32, i32* %123, !mcsema_real_eip !81
  %167 = sext i32 %166 to i64, !mcsema_real_eip !81
  store i64 %167, i64* %XDX, !mcsema_real_eip !81
  %168 = mul i64 %167, 4, !mcsema_real_eip !82
  %169 = add i64 %165, %168, !mcsema_real_eip !82
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !82
  %EAX_val.141 = load i32, i32* %EAX.93, !mcsema_real_eip !82
  %171 = inttoptr i64 %169 to i32*, !mcsema_real_eip !82
  store i32 %EAX_val.141, i32* %171, !mcsema_real_eip !82
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -40
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %172 = ptrtoint i64* %_allin_new_bt_72 to i64, !mcsema_real_eip !83
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !83
  %174 = load i32, i32* %173, !mcsema_real_eip !83
  %175 = zext i32 %174 to i64, !mcsema_real_eip !83
  store i64 %175, i64* %XAX, !mcsema_real_eip !83
  %EAX_val.144 = load i32, i32* %EAX.93, !mcsema_real_eip !84
  %176 = add i32 1, %EAX_val.144, !mcsema_real_eip !84
  %177 = xor i32 %176, %EAX_val.144, !mcsema_real_eip !84
  %178 = xor i32 %177, 1, !mcsema_real_eip !84
  %179 = and i32 %178, 16, !mcsema_real_eip !84
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !84
  store i1 %180, i1* %AF, !mcsema_real_eip !84
  %181 = lshr i32 %176, 31, !mcsema_real_eip !84
  %182 = trunc i32 %181 to i1, !mcsema_real_eip !84
  store i1 %182, i1* %SF, !mcsema_real_eip !84
  %183 = icmp eq i32 %176, 0, !mcsema_real_eip !84
  store i1 %183, i1* %ZF, !mcsema_real_eip !84
  %184 = xor i32 %EAX_val.144, 1, !mcsema_real_eip !84
  %185 = xor i32 %184, -1, !mcsema_real_eip !84
  %186 = and i32 %185, %177, !mcsema_real_eip !84
  %187 = lshr i32 %186, 31, !mcsema_real_eip !84
  %188 = and i32 %187, 1, !mcsema_real_eip !84
  %189 = trunc i32 %188 to i1, !mcsema_real_eip !84
  store i1 %189, i1* %OF, !mcsema_real_eip !84
  %190 = trunc i32 %176 to i8, !mcsema_real_eip !84
  %191 = call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !84
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !84
  %193 = xor i1 %192, true, !mcsema_real_eip !84
  store i1 %193, i1* %PF, !mcsema_real_eip !84
  %194 = icmp ult i32 %176, %EAX_val.144, !mcsema_real_eip !84
  store i1 %194, i1* %CF, !mcsema_real_eip !84
  %195 = zext i32 %176 to i64, !mcsema_real_eip !84
  store i64 %195, i64* %XAX, !mcsema_real_eip !84
  %EAX_val.147 = load i32, i32* %EAX.93, !mcsema_real_eip !85
  store i32 %EAX_val.147, i32* %173, !mcsema_real_eip !85
  br label %block_0x113, !mcsema_real_eip !86

block_0x13c:                                      ; preds = %block_0x113
  store i64 100, i64* %XDI, !mcsema_real_eip !87
  store i64 200, i64* %XSI, !mcsema_real_eip !88
  store i64 300, i64* %XDX, !mcsema_real_eip !89
  store i64 400, i64* %XCX, !mcsema_real_eip !90
  store i64 500, i64* %R8, !mcsema_real_eip !91
  store i64 600, i64* %R9, !mcsema_real_eip !92
  store i64 10, i64* %XAX, !mcsema_real_eip !93
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -24
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %196 = load i64, i64* %_allin_new_bt_78, !mcsema_real_eip !94
  store i64 %196, i64* %R10, !mcsema_real_eip !94
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %197 = load i64, i64* %_allin_new_bt_81, !mcsema_real_eip !95
  store i64 %197, i64* %R11, !mcsema_real_eip !95
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_84 = bitcast i8* %_load_rsp_ptr_82 to i64*
  %198 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !96
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !96
  store i32 10, i32* %199, !mcsema_real_eip !96
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 8
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10_val.152 = load i64, i64* %R10, !mcsema_real_eip !97
  store i64 %R10_val.152, i64* %_allin_new_bt_87, !mcsema_real_eip !97
  %_load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_
  %_new_gep_89 = getelementptr i8, i8* %_load_rsp_ptr_88, i64 16
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %200 = ptrtoint i64* %_allin_new_bt_90 to i64, !mcsema_real_eip !98
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !98
  store i32 10, i32* %201, !mcsema_real_eip !98
  %_load_rsp_ptr_91 = load i8*, i8** %_RSP_ptr_
  %_new_gep_92 = getelementptr i8, i8* %_load_rsp_ptr_91, i64 24
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %R11_val.155 = load i64, i64* %R11, !mcsema_real_eip !99
  store i64 %R11_val.155, i64* %_allin_new_bt_93, !mcsema_real_eip !99
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -48
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %EAX_val.158 = load i32, i32* %EAX.93, !mcsema_real_eip !100
  %202 = ptrtoint i64* %_allin_new_bt_96 to i64, !mcsema_real_eip !100
  %203 = inttoptr i64 %202 to i32*, !mcsema_real_eip !100
  store i32 %EAX_val.158, i32* %203, !mcsema_real_eip !100
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !101
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 -8
  %204 = sub i64 %RSP_val.159, 8, !mcsema_real_eip !101
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, !mcsema_real_eip !101
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %204, i64* %XSP, !mcsema_real_eip !101
  %_load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_159)
  %_rsp_fix_161 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_162 = getelementptr i8, i8* %_rsp_fix_161, i64 8
  store i8* %_gep_fix_162, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, !mcsema_real_eip !102
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -44
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %EAX_val.162 = load i32, i32* %EAX.93, !mcsema_real_eip !103
  %205 = ptrtoint i64* %_allin_new_bt_102 to i64, !mcsema_real_eip !103
  %206 = inttoptr i64 %205 to i32*, !mcsema_real_eip !103
  store i32 %EAX_val.162, i32* %206, !mcsema_real_eip !103
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -44
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %207 = ptrtoint i64* %_allin_new_bt_105 to i64, !mcsema_real_eip !104
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !104
  %209 = load i32, i32* %208, !mcsema_real_eip !104
  %210 = zext i32 %209 to i64, !mcsema_real_eip !104
  store i64 %210, i64* %XSI, !mcsema_real_eip !104
  %AL.164 = bitcast i64* %XAX to i8*, !mcsema_real_eip !105
  store i8 0, i8* %AL.164, !mcsema_real_eip !105
  %RDI_val.165 = load i64, i64* %XDI, !mcsema_real_eip !106
  %RDX_val.167 = load i64, i64* %XDX, !mcsema_real_eip !106
  %RCX_val.168 = load i64, i64* %XCX, !mcsema_real_eip !106
  %R8_val.169 = load i64, i64* %R8, !mcsema_real_eip !106
  %R9_val.170 = load i64, i64* %R9, !mcsema_real_eip !106
  %_load_rsp_ptr_106 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_107 = bitcast i8* %_load_rsp_ptr_106 to i64*
  %211 = load i64, i64* %_allin_new_bt_107, !mcsema_real_eip !106
  %_new_gep_108 = getelementptr i8, i8* %_load_rsp_ptr_106, i64 8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %212 = load i64, i64* %_allin_new_bt_109, !mcsema_real_eip !106
  %_new_gep_110 = getelementptr i8, i8* %_new_gep_108, i64 8
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %213 = load i64, i64* %_allin_new_bt_111, !mcsema_real_eip !106
  %_new_gep_112 = getelementptr i8, i8* %_new_gep_110, i64 8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %214 = load i64, i64* %_allin_new_bt_113, !mcsema_real_eip !106
  %_new_gep_114 = getelementptr i8, i8* %_new_gep_112, i64 8
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %215 = load i64, i64* %_allin_new_bt_115, !mcsema_real_eip !106
  %_new_gep_116 = getelementptr i8, i8* %_new_gep_114, i64 8
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %216 = load i64, i64* %_allin_new_bt_117, !mcsema_real_eip !106
  %_new_gep_118 = getelementptr i8, i8* %_new_gep_116, i64 8
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %217 = load i64, i64* %_allin_new_bt_119, !mcsema_real_eip !106
  %_new_gep_120 = getelementptr i8, i8* %_new_gep_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %218 = load i64, i64* %_allin_new_bt_121, !mcsema_real_eip !106
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %219 = load i64, i64* %_allin_new_bt_123, !mcsema_real_eip !106
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %220 = load i64, i64* %_allin_new_bt_125, !mcsema_real_eip !106
  %RSP_val.172 = load i64, i64* %XSP, !mcsema_real_eip !106
  %_new_gep_127 = getelementptr i8, i8* %_load_rsp_ptr_106, i64 -8
  %221 = sub i64 %RSP_val.172, 8, !mcsema_real_eip !106
  %_allin_new_bt_128 = bitcast i8* %_new_gep_127 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_128, !mcsema_real_eip !106
  store volatile i8* %_new_gep_127, i8** %_RSP_ptr_
  store i64 %221, i64* %XSP, !mcsema_real_eip !106
  %222 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.165, i64 %210, i64 %RDX_val.167, i64 %RCX_val.168, i64 %R8_val.169, i64 %R9_val.170, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220)
  %_rsp_fix_163 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_164 = getelementptr i8, i8* %_rsp_fix_163, i64 8
  store i8* %_gep_fix_164, i8** %_RSP_ptr_
  store i64 %222, i64* %XAX, !mcsema_real_eip !106
  %_load_rbp_ptr_129 = load i8*, i8** %_RBP_ptr_
  %_new_gep_130 = getelementptr i8, i8* %_load_rbp_ptr_129, i64 -44
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %223 = ptrtoint i64* %_allin_new_bt_131 to i64, !mcsema_real_eip !107
  %224 = inttoptr i64 %223 to i32*, !mcsema_real_eip !107
  %225 = load i32, i32* %224, !mcsema_real_eip !107
  %226 = zext i32 %225 to i64, !mcsema_real_eip !107
  store i64 %226, i64* %XCX, !mcsema_real_eip !107
  %_new_gep_133 = getelementptr i8, i8* %_load_rbp_ptr_129, i64 -52
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %EAX_val.176 = load i32, i32* %EAX.93, !mcsema_real_eip !108
  %227 = ptrtoint i64* %_allin_new_bt_134 to i64, !mcsema_real_eip !108
  %228 = inttoptr i64 %227 to i32*, !mcsema_real_eip !108
  store i32 %EAX_val.176, i32* %228, !mcsema_real_eip !108
  %ECX.177 = bitcast i64* %XCX to i32*, !mcsema_real_eip !109
  %ECX_val.178 = load i32, i32* %ECX.177, !mcsema_real_eip !109
  %229 = zext i32 %ECX_val.178 to i64, !mcsema_real_eip !109
  store i64 %229, i64* %XAX, !mcsema_real_eip !109
  %_load_rsp_ptr_135 = load i8*, i8** %_RSP_ptr_
  %RSP_val.179 = load i64, i64* %XSP, !mcsema_real_eip !110
  %_new_gep_136 = getelementptr i8, i8* %_load_rsp_ptr_135, i64 96
  %230 = add i64 96, %RSP_val.179, !mcsema_real_eip !110
  %_trans_p2i_137 = ptrtoint i8* %_new_gep_136 to i64
  %_trans_p2i_138 = ptrtoint i8* %_load_rsp_ptr_135 to i64
  %_trans_xor_139 = xor i64 %_trans_p2i_137, %_trans_p2i_138
  %231 = xor i64 %_trans_xor_139, 96, !mcsema_real_eip !110
  %232 = and i64 %231, 16, !mcsema_real_eip !110
  %233 = icmp ne i64 %232, 0, !mcsema_real_eip !110
  store i1 %233, i1* %AF, !mcsema_real_eip !110
  %234 = lshr i64 %230, 63, !mcsema_real_eip !110
  %235 = trunc i64 %234 to i1, !mcsema_real_eip !110
  store i1 %235, i1* %SF, !mcsema_real_eip !110
  %_trans_icmp_eq_141 = icmp eq i64 %_trans_p2i_137, 0
  store i1 %_trans_icmp_eq_141, i1* %ZF, !mcsema_real_eip !110
  %_trans_xor_143 = xor i64 %_trans_p2i_138, 96
  %236 = xor i64 %_trans_xor_143, -1, !mcsema_real_eip !110
  %237 = and i64 %236, %_trans_xor_139, !mcsema_real_eip !110
  %238 = lshr i64 %237, 63, !mcsema_real_eip !110
  %239 = and i64 %238, 1, !mcsema_real_eip !110
  %240 = trunc i64 %239 to i1, !mcsema_real_eip !110
  store i1 %240, i1* %OF, !mcsema_real_eip !110
  %_trans_trunc_148 = trunc i64 %_trans_p2i_137 to i8
  %241 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_148), !mcsema_real_eip !110
  %242 = trunc i8 %241 to i1, !mcsema_real_eip !110
  %243 = xor i1 %242, true, !mcsema_real_eip !110
  store i1 %243, i1* %PF, !mcsema_real_eip !110
  %_trans_icmp_ne_150 = icmp ne i64 %_trans_p2i_137, %RSP_val.179
  store i1 %_trans_icmp_ne_150, i1* %CF, !mcsema_real_eip !110
  store volatile i8* %_new_gep_136, i8** %_RSP_ptr_
  store i64 %230, i64* %XSP, !mcsema_real_eip !110
  %_allin_new_bt_152 = bitcast i8* %_new_gep_136 to i64*
  %244 = load i64, i64* %_allin_new_bt_152, !mcsema_real_eip !111
  %_new_int2ptr_ = inttoptr i64 %244 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %244, i64* %XBP, !mcsema_real_eip !111
  %_new_gep_153 = getelementptr i8, i8* %_new_gep_136, i64 8
  %245 = add i64 %230, 8, !mcsema_real_eip !111
  store volatile i8* %_new_gep_153, i8** %_RSP_ptr_
  store i64 %245, i64* %XSP, !mcsema_real_eip !111
  %_new_gep_155 = getelementptr i8, i8* %_new_gep_153, i64 8
  %246 = add i64 %245, 8, !mcsema_real_eip !112
  %_allin_new_bt_156 = bitcast i8* %_new_gep_153 to i64*
  %247 = load i64, i64* %_allin_new_bt_156, !mcsema_real_eip !112
  store i64 %247, i64* %XIP, !mcsema_real_eip !112
  store volatile i8* %_new_gep_155, i8** %_RSP_ptr_
  store i64 %246, i64* %XSP, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
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
  %_local_stack_start_ptr_ = alloca i8, i64 80
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 80
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
  %6 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !6
  %_ptr_bt_115 = bitcast i32* %7 to i8*
  %_offset_above_rbp_116 = sub i64 %6, %_local_end_to_int_
  %_pot_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_116
  %_cond1_118 = icmp ugt i8* %_ptr_bt_115, %_local_stack_end_ptr_
  %_cond2_1_119 = icmp ugt i8* %_ptr_bt_115, %_parent_stack_end_ptr_
  %_cond2_2_120 = icmp ult i8* %_ptr_bt_115, %_parent_stack_start_ptr_
  %_cond2_121 = or i1 %_cond2_1_119, %_cond2_2_120
  %_cond4_122 = icmp ule i8* %_pot_address_in_parent_stack_117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_123 = and i1 %_cond1_118, %_cond2_121
  %_cond1_n_cond2_cond3_124 = and i1 %_cond1_n_cond2_123, %_cond4_122
  br i1 %_cond1_n_cond2_cond3_124, label %8, label %9

; <label>:8:                                      ; preds = %4
  %_address_in_parent_stack_bt_126 = bitcast i8* %_pot_address_in_parent_stack_117 to i32*
  br label %9

; <label>:9:                                      ; preds = %4, %8
  %10 = phi i32* [ %7, %4 ], [ %_address_in_parent_stack_bt_126, %8 ]
  %_new_load_127 = load i32, i32* %10
  %11 = zext i32 %_new_load_127 to i64, !mcsema_real_eip !6
  store i64 %11, i64* %R10, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %_ptr_to_int_128 = ptrtoint i64* %_allin_new_bt_13 to i64
  %_offset_above_rbp_131 = sub i64 %_ptr_to_int_128, %_local_end_to_int_
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_131
  %_cond1_133 = icmp ugt i8* %_new_gep_12, %_local_stack_end_ptr_
  %_cond2_1_134 = icmp ugt i8* %_new_gep_12, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %_new_gep_12, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  br i1 %_cond1_n_cond2_cond3_139, label %12, label %13

; <label>:12:                                     ; preds = %9
  %_address_in_parent_stack_bt_141 = bitcast i8* %_pot_address_in_parent_stack_132 to i64*
  br label %13

; <label>:13:                                     ; preds = %9, %12
  %14 = phi i64* [ %_allin_new_bt_13, %9 ], [ %_address_in_parent_stack_bt_141, %12 ]
  %_new_load_142 = load i64, i64* %14
  store i64 %_new_load_142, i64* %R11, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !8
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !8
  %_ptr_bt_145 = bitcast i32* %16 to i8*
  %_offset_above_rbp_146 = sub i64 %15, %_local_end_to_int_
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_146
  %_cond1_148 = icmp ugt i8* %_ptr_bt_145, %_local_stack_end_ptr_
  %_cond2_1_149 = icmp ugt i8* %_ptr_bt_145, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_ptr_bt_145, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  br i1 %_cond1_n_cond2_cond3_154, label %17, label %18

; <label>:17:                                     ; preds = %13
  %_address_in_parent_stack_bt_156 = bitcast i8* %_pot_address_in_parent_stack_147 to i32*
  br label %18

; <label>:18:                                     ; preds = %13, %17
  %19 = phi i32* [ %16, %13 ], [ %_address_in_parent_stack_bt_156, %17 ]
  %_new_load_157 = load i32, i32* %19
  %20 = zext i32 %_new_load_157 to i64, !mcsema_real_eip !8
  store i64 %20, i64* %XBX, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !9
  %21 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !9
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %22, !mcsema_real_eip !9
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -16
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %ESI.13 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.14 = load i32, i32* %ESI.13, !mcsema_real_eip !10
  %23 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !10
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !10
  store i32 %ESI_val.14, i32* %24, !mcsema_real_eip !10
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -20
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %EDX.16 = bitcast i64* %XDX to i32*, !mcsema_real_eip !11
  %EDX_val.17 = load i32, i32* %EDX.16, !mcsema_real_eip !11
  %25 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !11
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !11
  store i32 %EDX_val.17, i32* %26, !mcsema_real_eip !11
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -24
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %ECX.19 = bitcast i64* %XCX to i32*, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.19, !mcsema_real_eip !12
  %27 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !12
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !12
  store i32 %ECX_val.20, i32* %28, !mcsema_real_eip !12
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -28
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %R8D.22 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.23 = load i32, i32* %R8D.22, !mcsema_real_eip !13
  %29 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !13
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.23, i32* %30, !mcsema_real_eip !13
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -32
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %R9D.25 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.26 = load i32, i32* %R9D.25, !mcsema_real_eip !14
  %31 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !14
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.26, i32* %32, !mcsema_real_eip !14
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -36
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %EBX.28 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.29 = load i32, i32* %EBX.28, !mcsema_real_eip !15
  %33 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !15
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.29, i32* %34, !mcsema_real_eip !15
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -48
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %R11_val.31 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %R11_val.31, i64* %_allin_new_bt_40, !mcsema_real_eip !16
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -52
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %R10D.33 = bitcast i64* %R10 to i32*, !mcsema_real_eip !17
  %R10D_val.34 = load i32, i32* %R10D.33, !mcsema_real_eip !17
  %35 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !17
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !17
  store i32 %R10D_val.34, i32* %36, !mcsema_real_eip !17
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -64
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %RAX_val.36 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.36, i64* %_allin_new_bt_46, !mcsema_real_eip !18
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -68
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %37 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !19
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %38, !mcsema_real_eip !19
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -72
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !20
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !20
  store i32 0, i32* %40, !mcsema_real_eip !20
  br label %block_0x45, !mcsema_real_eip !21

block_0x45:                                       ; preds = %145, %18
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -72
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !21
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !21
  %_ptr_bt_160 = bitcast i32* %42 to i8*
  %_offset_above_rbp_161 = sub i64 %41, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %_ptr_bt_160, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %_ptr_bt_160, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %_ptr_bt_160, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  br i1 %_cond1_n_cond2_cond3_169, label %43, label %44

; <label>:43:                                     ; preds = %block_0x45
  %_address_in_parent_stack_bt_171 = bitcast i8* %_pot_address_in_parent_stack_162 to i32*
  br label %44

; <label>:44:                                     ; preds = %block_0x45, %43
  %45 = phi i32* [ %42, %block_0x45 ], [ %_address_in_parent_stack_bt_171, %43 ]
  %_new_load_172 = load i32, i32* %45
  %46 = zext i32 %_new_load_172 to i64, !mcsema_real_eip !21
  store i64 %46, i64* %XAX, !mcsema_real_eip !21
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -36
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !22
  %47 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !22
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !22
  %_ptr_bt_175 = bitcast i32* %48 to i8*
  %_offset_above_rbp_176 = sub i64 %47, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_ptr_bt_175, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_ptr_bt_175, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_ptr_bt_175, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %49, label %50

; <label>:49:                                     ; preds = %44
  %_address_in_parent_stack_bt_186 = bitcast i8* %_pot_address_in_parent_stack_177 to i32*
  br label %50

; <label>:50:                                     ; preds = %44, %49
  %51 = phi i32* [ %48, %44 ], [ %_address_in_parent_stack_bt_186, %49 ]
  %_new_load_187 = load i32, i32* %51
  %52 = sub i32 %EAX_val.42, %_new_load_187, !mcsema_real_eip !22
  %53 = xor i32 %52, %EAX_val.42, !mcsema_real_eip !22
  %54 = xor i32 %53, %_new_load_187, !mcsema_real_eip !22
  %55 = and i32 %54, 16, !mcsema_real_eip !22
  %56 = icmp ne i32 %55, 0, !mcsema_real_eip !22
  store i1 %56, i1* %AF, !mcsema_real_eip !22
  %57 = trunc i32 %52 to i8, !mcsema_real_eip !22
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !22
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !22
  %60 = xor i1 %59, true, !mcsema_real_eip !22
  store i1 %60, i1* %PF, !mcsema_real_eip !22
  %61 = icmp eq i32 %52, 0, !mcsema_real_eip !22
  store i1 %61, i1* %ZF, !mcsema_real_eip !22
  %62 = lshr i32 %52, 31, !mcsema_real_eip !22
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !22
  store i1 %63, i1* %SF, !mcsema_real_eip !22
  %64 = icmp ult i32 %EAX_val.42, %_new_load_187, !mcsema_real_eip !22
  store i1 %64, i1* %CF, !mcsema_real_eip !22
  %65 = xor i32 %EAX_val.42, %_new_load_187, !mcsema_real_eip !22
  %66 = and i32 %65, %53, !mcsema_real_eip !22
  %67 = lshr i32 %66, 31, !mcsema_real_eip !22
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !22
  store i1 %68, i1* %OF, !mcsema_real_eip !22
  %69 = icmp eq i1 %63, %68, !mcsema_real_eip !23
  br i1 %69, label %block_0x7b, label %block_0x51, !mcsema_real_eip !23

block_0x51:                                       ; preds = %50
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -48
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_188 = ptrtoint i64* %_allin_new_bt_61 to i64
  %_offset_above_rbp_191 = sub i64 %_ptr_to_int_188, %_local_end_to_int_
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  br i1 %_cond1_n_cond2_cond3_199, label %70, label %71

; <label>:70:                                     ; preds = %block_0x51
  %_address_in_parent_stack_bt_201 = bitcast i8* %_pot_address_in_parent_stack_192 to i64*
  br label %71

; <label>:71:                                     ; preds = %block_0x51, %70
  %72 = phi i64* [ %_allin_new_bt_61, %block_0x51 ], [ %_address_in_parent_stack_bt_201, %70 ]
  %_new_load_202 = load i64, i64* %72
  store i64 %_new_load_202, i64* %XAX, !mcsema_real_eip !24
  br i1 %_cond1_n_cond2_cond3_169, label %73, label %74

; <label>:73:                                     ; preds = %71
  %_address_in_parent_stack_bt_216 = bitcast i8* %_pot_address_in_parent_stack_162 to i32*
  br label %74

; <label>:74:                                     ; preds = %71, %73
  %75 = phi i32* [ %42, %71 ], [ %_address_in_parent_stack_bt_216, %73 ]
  %_new_load_217 = load i32, i32* %75
  %76 = sext i32 %_new_load_217 to i64, !mcsema_real_eip !25
  store i64 %76, i64* %XCX, !mcsema_real_eip !25
  %77 = mul i64 %76, 4, !mcsema_real_eip !26
  %78 = add i64 %_new_load_202, %77, !mcsema_real_eip !26
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !26
  %80 = inttoptr i64 %78 to i32*, !mcsema_real_eip !26
  %_ptr_bt_220 = bitcast i32* %80 to i8*
  %_offset_above_rbp_221 = sub i64 %78, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_ptr_bt_220, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  br i1 %_cond1_n_cond2_cond3_229, label %81, label %82

; <label>:81:                                     ; preds = %74
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to i32*
  br label %82

; <label>:82:                                     ; preds = %74, %81
  %83 = phi i32* [ %80, %74 ], [ %_address_in_parent_stack_bt_231, %81 ]
  %_new_load_232 = load i32, i32* %83
  %84 = zext i32 %_new_load_232 to i64, !mcsema_real_eip !26
  store i64 %84, i64* %XDX, !mcsema_real_eip !26
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -64
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %_ptr_to_int_233 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_236 = sub i64 %_ptr_to_int_233, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  br i1 %_cond1_n_cond2_cond3_244, label %85, label %86

; <label>:85:                                     ; preds = %82
  %_address_in_parent_stack_bt_246 = bitcast i8* %_pot_address_in_parent_stack_237 to i64*
  br label %86

; <label>:86:                                     ; preds = %82, %85
  %87 = phi i64* [ %_allin_new_bt_67, %82 ], [ %_address_in_parent_stack_bt_246, %85 ]
  %_new_load_247 = load i64, i64* %87
  store i64 %_new_load_247, i64* %XAX, !mcsema_real_eip !27
  br i1 %_cond1_n_cond2_cond3_169, label %88, label %89

; <label>:88:                                     ; preds = %86
  %_address_in_parent_stack_bt_261 = bitcast i8* %_pot_address_in_parent_stack_162 to i32*
  br label %89

; <label>:89:                                     ; preds = %86, %88
  %90 = phi i32* [ %42, %86 ], [ %_address_in_parent_stack_bt_261, %88 ]
  %_new_load_262 = load i32, i32* %90
  %91 = sext i32 %_new_load_262 to i64, !mcsema_real_eip !28
  store i64 %91, i64* %XCX, !mcsema_real_eip !28
  %92 = mul i64 %91, 4, !mcsema_real_eip !29
  %93 = add i64 %_new_load_247, %92, !mcsema_real_eip !29
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !29
  %EDX_val.52 = load i32, i32* %EDX.16, !mcsema_real_eip !29
  %95 = inttoptr i64 %93 to i32*, !mcsema_real_eip !29
  %_ptr_bt_265 = bitcast i32* %95 to i8*
  %_offset_above_rbp_266 = sub i64 %93, %_local_end_to_int_
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ugt i8* %_ptr_bt_265, %_local_stack_end_ptr_
  %_cond2_1_269 = icmp ugt i8* %_ptr_bt_265, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_ptr_bt_265, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond1_n_cond2_273, %_cond4_272
  br i1 %_cond1_n_cond2_cond3_274, label %96, label %97

; <label>:96:                                     ; preds = %89
  %_address_in_parent_stack_bt_276 = bitcast i8* %_pot_address_in_parent_stack_267 to i32*
  br label %97

; <label>:97:                                     ; preds = %89, %96
  %98 = phi i32* [ %95, %89 ], [ %_address_in_parent_stack_bt_276, %96 ]
  %_new_load_277 = load i32, i32* %98
  %99 = sub i32 %EDX_val.52, %_new_load_277, !mcsema_real_eip !29
  %100 = xor i32 %99, %EDX_val.52, !mcsema_real_eip !29
  %101 = xor i32 %100, %_new_load_277, !mcsema_real_eip !29
  %102 = and i32 %101, 16, !mcsema_real_eip !29
  %103 = icmp ne i32 %102, 0, !mcsema_real_eip !29
  store i1 %103, i1* %AF, !mcsema_real_eip !29
  %104 = trunc i32 %99 to i8, !mcsema_real_eip !29
  %105 = call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !29
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !29
  %107 = xor i1 %106, true, !mcsema_real_eip !29
  store i1 %107, i1* %PF, !mcsema_real_eip !29
  %108 = icmp eq i32 %99, 0, !mcsema_real_eip !29
  store i1 %108, i1* %ZF, !mcsema_real_eip !29
  %109 = lshr i32 %99, 31, !mcsema_real_eip !29
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !29
  store i1 %110, i1* %SF, !mcsema_real_eip !29
  %111 = icmp ult i32 %EDX_val.52, %_new_load_277, !mcsema_real_eip !29
  store i1 %111, i1* %CF, !mcsema_real_eip !29
  %112 = xor i32 %EDX_val.52, %_new_load_277, !mcsema_real_eip !29
  %113 = and i32 %112, %100, !mcsema_real_eip !29
  %114 = lshr i32 %113, 31, !mcsema_real_eip !29
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !29
  store i1 %115, i1* %OF, !mcsema_real_eip !29
  %116 = zext i32 %99 to i64, !mcsema_real_eip !29
  store i64 %116, i64* %XDX, !mcsema_real_eip !29
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -68
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %117 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !30
  %118 = inttoptr i64 %117 to i32*, !mcsema_real_eip !30
  %_ptr_bt_280 = bitcast i32* %118 to i8*
  %_offset_above_rbp_281 = sub i64 %117, %_local_end_to_int_
  %_pot_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_cond1_283 = icmp ugt i8* %_ptr_bt_280, %_local_stack_end_ptr_
  %_cond2_1_284 = icmp ugt i8* %_ptr_bt_280, %_parent_stack_end_ptr_
  %_cond2_2_285 = icmp ult i8* %_ptr_bt_280, %_parent_stack_start_ptr_
  %_cond2_286 = or i1 %_cond2_1_284, %_cond2_2_285
  %_cond4_287 = icmp ule i8* %_pot_address_in_parent_stack_282, %_parent_stack_end_ptr_
  %_cond1_n_cond2_288 = and i1 %_cond1_283, %_cond2_286
  %_cond1_n_cond2_cond3_289 = and i1 %_cond1_n_cond2_288, %_cond4_287
  br i1 %_cond1_n_cond2_cond3_289, label %119, label %120

; <label>:119:                                    ; preds = %97
  %_address_in_parent_stack_bt_291 = bitcast i8* %_pot_address_in_parent_stack_282 to i32*
  br label %120

; <label>:120:                                    ; preds = %97, %119
  %121 = phi i32* [ %118, %97 ], [ %_address_in_parent_stack_bt_291, %119 ]
  %_new_load_292 = load i32, i32* %121
  %EDX_val.55 = load i32, i32* %EDX.16, !mcsema_real_eip !30
  %122 = add i32 %EDX_val.55, %_new_load_292, !mcsema_real_eip !30
  %123 = xor i32 %122, %_new_load_292, !mcsema_real_eip !30
  %124 = xor i32 %123, %EDX_val.55, !mcsema_real_eip !30
  %125 = and i32 %124, 16, !mcsema_real_eip !30
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !30
  store i1 %126, i1* %AF, !mcsema_real_eip !30
  %127 = lshr i32 %122, 31, !mcsema_real_eip !30
  %128 = trunc i32 %127 to i1, !mcsema_real_eip !30
  store i1 %128, i1* %SF, !mcsema_real_eip !30
  %129 = icmp eq i32 %122, 0, !mcsema_real_eip !30
  store i1 %129, i1* %ZF, !mcsema_real_eip !30
  %130 = xor i32 %_new_load_292, %EDX_val.55, !mcsema_real_eip !30
  %131 = xor i32 %130, -1, !mcsema_real_eip !30
  %132 = and i32 %131, %123, !mcsema_real_eip !30
  %133 = lshr i32 %132, 31, !mcsema_real_eip !30
  %134 = and i32 %133, 1, !mcsema_real_eip !30
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !30
  store i1 %135, i1* %OF, !mcsema_real_eip !30
  %136 = trunc i32 %122 to i8, !mcsema_real_eip !30
  %137 = call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !30
  %138 = trunc i8 %137 to i1, !mcsema_real_eip !30
  %139 = xor i1 %138, true, !mcsema_real_eip !30
  store i1 %139, i1* %PF, !mcsema_real_eip !30
  %140 = icmp ult i32 %122, %_new_load_292, !mcsema_real_eip !30
  store i1 %140, i1* %CF, !mcsema_real_eip !30
  %141 = zext i32 %122 to i64, !mcsema_real_eip !30
  store i64 %141, i64* %XDX, !mcsema_real_eip !30
  %EDX_val.58 = load i32, i32* %EDX.16, !mcsema_real_eip !31
  store i32 %EDX_val.58, i32* %118, !mcsema_real_eip !31
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -72
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %142 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !32
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !32
  %_ptr_bt_295 = bitcast i32* %143 to i8*
  %_offset_above_rbp_296 = sub i64 %142, %_local_end_to_int_
  %_pot_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_cond1_298 = icmp ugt i8* %_ptr_bt_295, %_local_stack_end_ptr_
  %_cond2_1_299 = icmp ugt i8* %_ptr_bt_295, %_parent_stack_end_ptr_
  %_cond2_2_300 = icmp ult i8* %_ptr_bt_295, %_parent_stack_start_ptr_
  %_cond2_301 = or i1 %_cond2_1_299, %_cond2_2_300
  %_cond4_302 = icmp ule i8* %_pot_address_in_parent_stack_297, %_parent_stack_end_ptr_
  %_cond1_n_cond2_303 = and i1 %_cond1_298, %_cond2_301
  %_cond1_n_cond2_cond3_304 = and i1 %_cond1_n_cond2_303, %_cond4_302
  br i1 %_cond1_n_cond2_cond3_304, label %144, label %145

; <label>:144:                                    ; preds = %120
  %_address_in_parent_stack_bt_306 = bitcast i8* %_pot_address_in_parent_stack_297 to i32*
  br label %145

; <label>:145:                                    ; preds = %120, %144
  %146 = phi i32* [ %143, %120 ], [ %_address_in_parent_stack_bt_306, %144 ]
  %_new_load_307 = load i32, i32* %146
  %147 = zext i32 %_new_load_307 to i64, !mcsema_real_eip !32
  store i64 %147, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.61 = load i32, i32* %EAX.41, !mcsema_real_eip !33
  %148 = add i32 1, %EAX_val.61, !mcsema_real_eip !33
  %149 = xor i32 %148, %EAX_val.61, !mcsema_real_eip !33
  %150 = xor i32 %149, 1, !mcsema_real_eip !33
  %151 = and i32 %150, 16, !mcsema_real_eip !33
  %152 = icmp ne i32 %151, 0, !mcsema_real_eip !33
  store i1 %152, i1* %AF, !mcsema_real_eip !33
  %153 = lshr i32 %148, 31, !mcsema_real_eip !33
  %154 = trunc i32 %153 to i1, !mcsema_real_eip !33
  store i1 %154, i1* %SF, !mcsema_real_eip !33
  %155 = icmp eq i32 %148, 0, !mcsema_real_eip !33
  store i1 %155, i1* %ZF, !mcsema_real_eip !33
  %156 = xor i32 %EAX_val.61, 1, !mcsema_real_eip !33
  %157 = xor i32 %156, -1, !mcsema_real_eip !33
  %158 = and i32 %157, %149, !mcsema_real_eip !33
  %159 = lshr i32 %158, 31, !mcsema_real_eip !33
  %160 = and i32 %159, 1, !mcsema_real_eip !33
  %161 = trunc i32 %160 to i1, !mcsema_real_eip !33
  store i1 %161, i1* %OF, !mcsema_real_eip !33
  %162 = trunc i32 %148 to i8, !mcsema_real_eip !33
  %163 = call i8 @llvm.ctpop.i8(i8 %162), !mcsema_real_eip !33
  %164 = trunc i8 %163 to i1, !mcsema_real_eip !33
  %165 = xor i1 %164, true, !mcsema_real_eip !33
  store i1 %165, i1* %PF, !mcsema_real_eip !33
  %166 = icmp ult i32 %148, %EAX_val.61, !mcsema_real_eip !33
  store i1 %166, i1* %CF, !mcsema_real_eip !33
  %167 = zext i32 %148 to i64, !mcsema_real_eip !33
  store i64 %167, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.64 = load i32, i32* %EAX.41, !mcsema_real_eip !34
  store i32 %EAX_val.64, i32* %143, !mcsema_real_eip !34
  br label %block_0x45, !mcsema_real_eip !35

block_0x7b:                                       ; preds = %50
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -68
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %168 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !36
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !36
  %_ptr_bt_310 = bitcast i32* %169 to i8*
  %_offset_above_rbp_311 = sub i64 %168, %_local_end_to_int_
  %_pot_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_cond1_313 = icmp ugt i8* %_ptr_bt_310, %_local_stack_end_ptr_
  %_cond2_1_314 = icmp ugt i8* %_ptr_bt_310, %_parent_stack_end_ptr_
  %_cond2_2_315 = icmp ult i8* %_ptr_bt_310, %_parent_stack_start_ptr_
  %_cond2_316 = or i1 %_cond2_1_314, %_cond2_2_315
  %_cond4_317 = icmp ule i8* %_pot_address_in_parent_stack_312, %_parent_stack_end_ptr_
  %_cond1_n_cond2_318 = and i1 %_cond1_313, %_cond2_316
  %_cond1_n_cond2_cond3_319 = and i1 %_cond1_n_cond2_318, %_cond4_317
  br i1 %_cond1_n_cond2_cond3_319, label %170, label %171

; <label>:170:                                    ; preds = %block_0x7b
  %_address_in_parent_stack_bt_321 = bitcast i8* %_pot_address_in_parent_stack_312 to i32*
  br label %171

; <label>:171:                                    ; preds = %block_0x7b, %170
  %172 = phi i32* [ %169, %block_0x7b ], [ %_address_in_parent_stack_bt_321, %170 ]
  %_new_load_322 = load i32, i32* %172
  %173 = zext i32 %_new_load_322 to i64, !mcsema_real_eip !36
  store i64 %173, i64* %XAX, !mcsema_real_eip !36
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -12
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %174 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !37
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !37
  %_ptr_bt_325 = bitcast i32* %175 to i8*
  %_offset_above_rbp_326 = sub i64 %174, %_local_end_to_int_
  %_pot_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_cond1_328 = icmp ugt i8* %_ptr_bt_325, %_local_stack_end_ptr_
  %_cond2_1_329 = icmp ugt i8* %_ptr_bt_325, %_parent_stack_end_ptr_
  %_cond2_2_330 = icmp ult i8* %_ptr_bt_325, %_parent_stack_start_ptr_
  %_cond2_331 = or i1 %_cond2_1_329, %_cond2_2_330
  %_cond4_332 = icmp ule i8* %_pot_address_in_parent_stack_327, %_parent_stack_end_ptr_
  %_cond1_n_cond2_333 = and i1 %_cond1_328, %_cond2_331
  %_cond1_n_cond2_cond3_334 = and i1 %_cond1_n_cond2_333, %_cond4_332
  br i1 %_cond1_n_cond2_cond3_334, label %176, label %177

; <label>:176:                                    ; preds = %171
  %_address_in_parent_stack_bt_336 = bitcast i8* %_pot_address_in_parent_stack_327 to i32*
  br label %177

; <label>:177:                                    ; preds = %171, %176
  %178 = phi i32* [ %175, %171 ], [ %_address_in_parent_stack_bt_336, %176 ]
  %_new_load_337 = load i32, i32* %178
  %179 = zext i32 %_new_load_337 to i64, !mcsema_real_eip !37
  store i64 %179, i64* %XCX, !mcsema_real_eip !37
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -16
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %180 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !38
  %181 = inttoptr i64 %180 to i32*, !mcsema_real_eip !38
  %_ptr_bt_340 = bitcast i32* %181 to i8*
  %_offset_above_rbp_341 = sub i64 %180, %_local_end_to_int_
  %_pot_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_cond1_343 = icmp ugt i8* %_ptr_bt_340, %_local_stack_end_ptr_
  %_cond2_1_344 = icmp ugt i8* %_ptr_bt_340, %_parent_stack_end_ptr_
  %_cond2_2_345 = icmp ult i8* %_ptr_bt_340, %_parent_stack_start_ptr_
  %_cond2_346 = or i1 %_cond2_1_344, %_cond2_2_345
  %_cond4_347 = icmp ule i8* %_pot_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond1_n_cond2_348 = and i1 %_cond1_343, %_cond2_346
  %_cond1_n_cond2_cond3_349 = and i1 %_cond1_n_cond2_348, %_cond4_347
  br i1 %_cond1_n_cond2_cond3_349, label %182, label %183

; <label>:182:                                    ; preds = %177
  %_address_in_parent_stack_bt_351 = bitcast i8* %_pot_address_in_parent_stack_342 to i32*
  br label %183

; <label>:183:                                    ; preds = %177, %182
  %184 = phi i32* [ %181, %177 ], [ %_address_in_parent_stack_bt_351, %182 ]
  %_new_load_352 = load i32, i32* %184
  %ECX_val.69 = load i32, i32* %ECX.19, !mcsema_real_eip !38
  %185 = add i32 %ECX_val.69, %_new_load_352, !mcsema_real_eip !38
  %186 = xor i32 %185, %_new_load_352, !mcsema_real_eip !38
  %187 = xor i32 %186, %ECX_val.69, !mcsema_real_eip !38
  %188 = and i32 %187, 16, !mcsema_real_eip !38
  %189 = icmp ne i32 %188, 0, !mcsema_real_eip !38
  store i1 %189, i1* %AF, !mcsema_real_eip !38
  %190 = lshr i32 %185, 31, !mcsema_real_eip !38
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !38
  store i1 %191, i1* %SF, !mcsema_real_eip !38
  %192 = icmp eq i32 %185, 0, !mcsema_real_eip !38
  store i1 %192, i1* %ZF, !mcsema_real_eip !38
  %193 = xor i32 %_new_load_352, %ECX_val.69, !mcsema_real_eip !38
  %194 = xor i32 %193, -1, !mcsema_real_eip !38
  %195 = and i32 %194, %186, !mcsema_real_eip !38
  %196 = lshr i32 %195, 31, !mcsema_real_eip !38
  %197 = and i32 %196, 1, !mcsema_real_eip !38
  %198 = trunc i32 %197 to i1, !mcsema_real_eip !38
  store i1 %198, i1* %OF, !mcsema_real_eip !38
  %199 = trunc i32 %185 to i8, !mcsema_real_eip !38
  %200 = call i8 @llvm.ctpop.i8(i8 %199), !mcsema_real_eip !38
  %201 = trunc i8 %200 to i1, !mcsema_real_eip !38
  %202 = xor i1 %201, true, !mcsema_real_eip !38
  store i1 %202, i1* %PF, !mcsema_real_eip !38
  %203 = icmp ult i32 %185, %_new_load_352, !mcsema_real_eip !38
  store i1 %203, i1* %CF, !mcsema_real_eip !38
  %204 = zext i32 %185 to i64, !mcsema_real_eip !38
  store i64 %204, i64* %XCX, !mcsema_real_eip !38
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -20
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %205 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !39
  %206 = inttoptr i64 %205 to i32*, !mcsema_real_eip !39
  %_ptr_bt_355 = bitcast i32* %206 to i8*
  %_offset_above_rbp_356 = sub i64 %205, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_ptr_bt_355, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_ptr_bt_355, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_ptr_bt_355, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  br i1 %_cond1_n_cond2_cond3_364, label %207, label %208

; <label>:207:                                    ; preds = %183
  %_address_in_parent_stack_bt_366 = bitcast i8* %_pot_address_in_parent_stack_357 to i32*
  br label %208

; <label>:208:                                    ; preds = %183, %207
  %209 = phi i32* [ %206, %183 ], [ %_address_in_parent_stack_bt_366, %207 ]
  %_new_load_367 = load i32, i32* %209
  %ECX_val.72 = load i32, i32* %ECX.19, !mcsema_real_eip !39
  %210 = add i32 %ECX_val.72, %_new_load_367, !mcsema_real_eip !39
  %211 = xor i32 %210, %_new_load_367, !mcsema_real_eip !39
  %212 = xor i32 %211, %ECX_val.72, !mcsema_real_eip !39
  %213 = and i32 %212, 16, !mcsema_real_eip !39
  %214 = icmp ne i32 %213, 0, !mcsema_real_eip !39
  store i1 %214, i1* %AF, !mcsema_real_eip !39
  %215 = lshr i32 %210, 31, !mcsema_real_eip !39
  %216 = trunc i32 %215 to i1, !mcsema_real_eip !39
  store i1 %216, i1* %SF, !mcsema_real_eip !39
  %217 = icmp eq i32 %210, 0, !mcsema_real_eip !39
  store i1 %217, i1* %ZF, !mcsema_real_eip !39
  %218 = xor i32 %_new_load_367, %ECX_val.72, !mcsema_real_eip !39
  %219 = xor i32 %218, -1, !mcsema_real_eip !39
  %220 = and i32 %219, %211, !mcsema_real_eip !39
  %221 = lshr i32 %220, 31, !mcsema_real_eip !39
  %222 = and i32 %221, 1, !mcsema_real_eip !39
  %223 = trunc i32 %222 to i1, !mcsema_real_eip !39
  store i1 %223, i1* %OF, !mcsema_real_eip !39
  %224 = trunc i32 %210 to i8, !mcsema_real_eip !39
  %225 = call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !39
  %226 = trunc i8 %225 to i1, !mcsema_real_eip !39
  %227 = xor i1 %226, true, !mcsema_real_eip !39
  store i1 %227, i1* %PF, !mcsema_real_eip !39
  %228 = icmp ult i32 %210, %_new_load_367, !mcsema_real_eip !39
  store i1 %228, i1* %CF, !mcsema_real_eip !39
  %229 = zext i32 %210 to i64, !mcsema_real_eip !39
  store i64 %229, i64* %XCX, !mcsema_real_eip !39
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -24
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %230 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !40
  %231 = inttoptr i64 %230 to i32*, !mcsema_real_eip !40
  %_ptr_bt_370 = bitcast i32* %231 to i8*
  %_offset_above_rbp_371 = sub i64 %230, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_ptr_bt_370, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_ptr_bt_370, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_ptr_bt_370, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  br i1 %_cond1_n_cond2_cond3_379, label %232, label %233

; <label>:232:                                    ; preds = %208
  %_address_in_parent_stack_bt_381 = bitcast i8* %_pot_address_in_parent_stack_372 to i32*
  br label %233

; <label>:233:                                    ; preds = %208, %232
  %234 = phi i32* [ %231, %208 ], [ %_address_in_parent_stack_bt_381, %232 ]
  %_new_load_382 = load i32, i32* %234
  %ECX_val.75 = load i32, i32* %ECX.19, !mcsema_real_eip !40
  %235 = add i32 %ECX_val.75, %_new_load_382, !mcsema_real_eip !40
  %236 = xor i32 %235, %_new_load_382, !mcsema_real_eip !40
  %237 = xor i32 %236, %ECX_val.75, !mcsema_real_eip !40
  %238 = and i32 %237, 16, !mcsema_real_eip !40
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !40
  store i1 %239, i1* %AF, !mcsema_real_eip !40
  %240 = lshr i32 %235, 31, !mcsema_real_eip !40
  %241 = trunc i32 %240 to i1, !mcsema_real_eip !40
  store i1 %241, i1* %SF, !mcsema_real_eip !40
  %242 = icmp eq i32 %235, 0, !mcsema_real_eip !40
  store i1 %242, i1* %ZF, !mcsema_real_eip !40
  %243 = xor i32 %_new_load_382, %ECX_val.75, !mcsema_real_eip !40
  %244 = xor i32 %243, -1, !mcsema_real_eip !40
  %245 = and i32 %244, %236, !mcsema_real_eip !40
  %246 = lshr i32 %245, 31, !mcsema_real_eip !40
  %247 = and i32 %246, 1, !mcsema_real_eip !40
  %248 = trunc i32 %247 to i1, !mcsema_real_eip !40
  store i1 %248, i1* %OF, !mcsema_real_eip !40
  %249 = trunc i32 %235 to i8, !mcsema_real_eip !40
  %250 = call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !40
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !40
  %252 = xor i1 %251, true, !mcsema_real_eip !40
  store i1 %252, i1* %PF, !mcsema_real_eip !40
  %253 = icmp ult i32 %235, %_new_load_382, !mcsema_real_eip !40
  store i1 %253, i1* %CF, !mcsema_real_eip !40
  %254 = zext i32 %235 to i64, !mcsema_real_eip !40
  store i64 %254, i64* %XCX, !mcsema_real_eip !40
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -28
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %255 = ptrtoint i64* %_allin_new_bt_100 to i64, !mcsema_real_eip !41
  %256 = inttoptr i64 %255 to i32*, !mcsema_real_eip !41
  %_ptr_bt_385 = bitcast i32* %256 to i8*
  %_offset_above_rbp_386 = sub i64 %255, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_ptr_bt_385, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_ptr_bt_385, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_ptr_bt_385, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  br i1 %_cond1_n_cond2_cond3_394, label %257, label %258

; <label>:257:                                    ; preds = %233
  %_address_in_parent_stack_bt_396 = bitcast i8* %_pot_address_in_parent_stack_387 to i32*
  br label %258

; <label>:258:                                    ; preds = %233, %257
  %259 = phi i32* [ %256, %233 ], [ %_address_in_parent_stack_bt_396, %257 ]
  %_new_load_397 = load i32, i32* %259
  %ECX_val.78 = load i32, i32* %ECX.19, !mcsema_real_eip !41
  %260 = add i32 %ECX_val.78, %_new_load_397, !mcsema_real_eip !41
  %261 = xor i32 %260, %_new_load_397, !mcsema_real_eip !41
  %262 = xor i32 %261, %ECX_val.78, !mcsema_real_eip !41
  %263 = and i32 %262, 16, !mcsema_real_eip !41
  %264 = icmp ne i32 %263, 0, !mcsema_real_eip !41
  store i1 %264, i1* %AF, !mcsema_real_eip !41
  %265 = lshr i32 %260, 31, !mcsema_real_eip !41
  %266 = trunc i32 %265 to i1, !mcsema_real_eip !41
  store i1 %266, i1* %SF, !mcsema_real_eip !41
  %267 = icmp eq i32 %260, 0, !mcsema_real_eip !41
  store i1 %267, i1* %ZF, !mcsema_real_eip !41
  %268 = xor i32 %_new_load_397, %ECX_val.78, !mcsema_real_eip !41
  %269 = xor i32 %268, -1, !mcsema_real_eip !41
  %270 = and i32 %269, %261, !mcsema_real_eip !41
  %271 = lshr i32 %270, 31, !mcsema_real_eip !41
  %272 = and i32 %271, 1, !mcsema_real_eip !41
  %273 = trunc i32 %272 to i1, !mcsema_real_eip !41
  store i1 %273, i1* %OF, !mcsema_real_eip !41
  %274 = trunc i32 %260 to i8, !mcsema_real_eip !41
  %275 = call i8 @llvm.ctpop.i8(i8 %274), !mcsema_real_eip !41
  %276 = trunc i8 %275 to i1, !mcsema_real_eip !41
  %277 = xor i1 %276, true, !mcsema_real_eip !41
  store i1 %277, i1* %PF, !mcsema_real_eip !41
  %278 = icmp ult i32 %260, %_new_load_397, !mcsema_real_eip !41
  store i1 %278, i1* %CF, !mcsema_real_eip !41
  %279 = zext i32 %260 to i64, !mcsema_real_eip !41
  store i64 %279, i64* %XCX, !mcsema_real_eip !41
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -32
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %280 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !42
  %281 = inttoptr i64 %280 to i32*, !mcsema_real_eip !42
  %_ptr_bt_400 = bitcast i32* %281 to i8*
  %_offset_above_rbp_401 = sub i64 %280, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_ptr_bt_400, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_ptr_bt_400, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_ptr_bt_400, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  br i1 %_cond1_n_cond2_cond3_409, label %282, label %283

; <label>:282:                                    ; preds = %258
  %_address_in_parent_stack_bt_411 = bitcast i8* %_pot_address_in_parent_stack_402 to i32*
  br label %283

; <label>:283:                                    ; preds = %258, %282
  %284 = phi i32* [ %281, %258 ], [ %_address_in_parent_stack_bt_411, %282 ]
  %_new_load_412 = load i32, i32* %284
  %ECX_val.81 = load i32, i32* %ECX.19, !mcsema_real_eip !42
  %285 = add i32 %ECX_val.81, %_new_load_412, !mcsema_real_eip !42
  %286 = xor i32 %285, %_new_load_412, !mcsema_real_eip !42
  %287 = xor i32 %286, %ECX_val.81, !mcsema_real_eip !42
  %288 = and i32 %287, 16, !mcsema_real_eip !42
  %289 = icmp ne i32 %288, 0, !mcsema_real_eip !42
  store i1 %289, i1* %AF, !mcsema_real_eip !42
  %290 = lshr i32 %285, 31, !mcsema_real_eip !42
  %291 = trunc i32 %290 to i1, !mcsema_real_eip !42
  store i1 %291, i1* %SF, !mcsema_real_eip !42
  %292 = icmp eq i32 %285, 0, !mcsema_real_eip !42
  store i1 %292, i1* %ZF, !mcsema_real_eip !42
  %293 = xor i32 %_new_load_412, %ECX_val.81, !mcsema_real_eip !42
  %294 = xor i32 %293, -1, !mcsema_real_eip !42
  %295 = and i32 %294, %286, !mcsema_real_eip !42
  %296 = lshr i32 %295, 31, !mcsema_real_eip !42
  %297 = and i32 %296, 1, !mcsema_real_eip !42
  %298 = trunc i32 %297 to i1, !mcsema_real_eip !42
  store i1 %298, i1* %OF, !mcsema_real_eip !42
  %299 = trunc i32 %285 to i8, !mcsema_real_eip !42
  %300 = call i8 @llvm.ctpop.i8(i8 %299), !mcsema_real_eip !42
  %301 = trunc i8 %300 to i1, !mcsema_real_eip !42
  %302 = xor i1 %301, true, !mcsema_real_eip !42
  store i1 %302, i1* %PF, !mcsema_real_eip !42
  %303 = icmp ult i32 %285, %_new_load_412, !mcsema_real_eip !42
  store i1 %303, i1* %CF, !mcsema_real_eip !42
  %304 = zext i32 %285 to i64, !mcsema_real_eip !42
  store i64 %304, i64* %XCX, !mcsema_real_eip !42
  %ECX_val.83 = load i32, i32* %ECX.19, !mcsema_real_eip !43
  %EAX_val.85 = load i32, i32* %EAX.41, !mcsema_real_eip !43
  %305 = sext i32 %EAX_val.85 to i64, !mcsema_real_eip !43
  %306 = sext i32 %ECX_val.83 to i64, !mcsema_real_eip !43
  %307 = mul i64 %305, %306, !mcsema_real_eip !43
  %308 = trunc i64 %307 to i32, !mcsema_real_eip !43
  %309 = sext i32 %308 to i64, !mcsema_real_eip !43
  %310 = icmp ne i64 %309, %307, !mcsema_real_eip !43
  %311 = icmp slt i32 %308, 0, !mcsema_real_eip !43
  store i1 %311, i1* %SF, !mcsema_real_eip !43
  store i1 %310, i1* %OF, !mcsema_real_eip !43
  store i1 %310, i1* %CF, !mcsema_real_eip !43
  %312 = zext i32 %308 to i64, !mcsema_real_eip !43
  store i64 %312, i64* %XAX, !mcsema_real_eip !43
  %_load_rsp_ptr_104 = load i8*, i8** %_RSP_ptr_
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !44
  %_allin_new_bt_105 = bitcast i8* %_load_rsp_ptr_104 to i64*
  %_ptr_to_int_413 = ptrtoint i64* %_allin_new_bt_105 to i64
  %_offset_above_rbp_416 = sub i64 %_ptr_to_int_413, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_load_rsp_ptr_104, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_load_rsp_ptr_104, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_load_rsp_ptr_104, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  br i1 %_cond1_n_cond2_cond3_424, label %313, label %314

; <label>:313:                                    ; preds = %283
  %_address_in_parent_stack_bt_426 = bitcast i8* %_pot_address_in_parent_stack_417 to i64*
  br label %314

; <label>:314:                                    ; preds = %283, %313
  %315 = phi i64* [ %_allin_new_bt_105, %283 ], [ %_address_in_parent_stack_bt_426, %313 ]
  %_new_load_427 = load i64, i64* %315
  store i64 %_new_load_427, i64* %XBX, !mcsema_real_eip !44
  %_new_gep_106 = getelementptr i8, i8* %_load_rsp_ptr_104, i64 8
  %316 = add i64 %RSP_val.86, 8, !mcsema_real_eip !44
  store volatile i8* %_new_gep_106, i8** %_RSP_ptr_
  store i64 %316, i64* %XSP, !mcsema_real_eip !44
  %_allin_new_bt_108 = bitcast i8* %_new_gep_106 to i64*
  %_ptr_to_int_428 = ptrtoint i64* %_allin_new_bt_108 to i64
  %_offset_above_rbp_431 = sub i64 %_ptr_to_int_428, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  br i1 %_cond1_n_cond2_cond3_439, label %317, label %318

; <label>:317:                                    ; preds = %314
  %_address_in_parent_stack_bt_441 = bitcast i8* %_pot_address_in_parent_stack_432 to i64*
  br label %318

; <label>:318:                                    ; preds = %314, %317
  %319 = phi i64* [ %_allin_new_bt_108, %314 ], [ %_address_in_parent_stack_bt_441, %317 ]
  %_new_load_442 = load i64, i64* %319
  %_new_int2ptr_ = inttoptr i64 %_new_load_442 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_442, i64* %XBP, !mcsema_real_eip !45
  %_new_gep_109 = getelementptr i8, i8* %_new_gep_106, i64 8
  %320 = add i64 %316, 8, !mcsema_real_eip !45
  store volatile i8* %_new_gep_109, i8** %_RSP_ptr_
  store i64 %320, i64* %XSP, !mcsema_real_eip !45
  %_new_gep_111 = getelementptr i8, i8* %_new_gep_109, i64 8
  %321 = add i64 %320, 8, !mcsema_real_eip !46
  %_allin_new_bt_112 = bitcast i8* %_new_gep_109 to i64*
  %_ptr_to_int_443 = ptrtoint i64* %_allin_new_bt_112 to i64
  %_offset_above_rbp_446 = sub i64 %_ptr_to_int_443, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_new_gep_109, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_new_gep_109, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_new_gep_109, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  br i1 %_cond1_n_cond2_cond3_454, label %322, label %323

; <label>:322:                                    ; preds = %318
  %_address_in_parent_stack_bt_456 = bitcast i8* %_pot_address_in_parent_stack_447 to i64*
  br label %323

; <label>:323:                                    ; preds = %318, %322
  %324 = phi i64* [ %_allin_new_bt_112, %318 ], [ %_address_in_parent_stack_bt_456, %322 ]
  %_new_load_457 = load i64, i64* %324
  store i64 %_new_load_457, i64* %XIP, !mcsema_real_eip !46
  store volatile i8* %_new_gep_111, i8** %_RSP_ptr_
  store i64 %321, i64* %XSP, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 112
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 112
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !47
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !47
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !47
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !47
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !47
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !47
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !47
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !47
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !47
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !47
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !47
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !47
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !47
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !47
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !47
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !47
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !47
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !47
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !47
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !47
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !47
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !47
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !47
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !47
  br label %block_0xa0, !mcsema_real_eip !47

block_0xa0:                                       ; preds = %entry
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.90, 8, !mcsema_real_eip !47
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !47
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !48
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !49
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -96
  %2 = sub i64 %RSP_val.92, 96, !mcsema_real_eip !49
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 96, !mcsema_real_eip !49
  %4 = and i64 %3, 16, !mcsema_real_eip !49
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !49
  store i1 %5, i1* %AF, !mcsema_real_eip !49
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !49
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !49
  %8 = xor i1 %7, true, !mcsema_real_eip !49
  store i1 %8, i1* %PF, !mcsema_real_eip !49
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !49
  %9 = lshr i64 %2, 63, !mcsema_real_eip !49
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !49
  store i1 %10, i1* %SF, !mcsema_real_eip !49
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 96
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !49
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 96
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !49
  %12 = lshr i64 %11, 63, !mcsema_real_eip !49
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !49
  store i1 %13, i1* %OF, !mcsema_real_eip !49
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !49
  store i64 40, i64* %XAX, !mcsema_real_eip !50
  %EAX.93 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.94 = load i32, i32* %EAX.93, !mcsema_real_eip !51
  %14 = zext i32 %EAX_val.94 to i64, !mcsema_real_eip !51
  store i64 %14, i64* %XCX, !mcsema_real_eip !51
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !52
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !52
  store i32 0, i32* %16, !mcsema_real_eip !52
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !53
  %EDI_val.98 = load i32, i32* %EDI.97, !mcsema_real_eip !53
  %17 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !53
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !53
  store i32 %EDI_val.98, i32* %18, !mcsema_real_eip !53
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.100 = load i64, i64* %XSI, !mcsema_real_eip !54
  store i64 %RSI_val.100, i64* %_allin_new_bt_21, !mcsema_real_eip !54
  %RCX_val.101 = load i64, i64* %XCX, !mcsema_real_eip !55
  store i64 %RCX_val.101, i64* %XDI, !mcsema_real_eip !55
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %RSP_val.103 = load i64, i64* %XSP, !mcsema_real_eip !56
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %19 = sub i64 %RSP_val.103, 8, !mcsema_real_eip !56
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, !mcsema_real_eip !56
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %19, i64* %XSP, !mcsema_real_eip !56
  %20 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.101)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %20, i64* %XAX, !mcsema_real_eip !56
  store i64 40, i64* %XDX, !mcsema_real_eip !57
  %EDX.104 = bitcast i64* %XDX to i32*, !mcsema_real_eip !58
  %EDX_val.105 = load i32, i32* %EDX.104, !mcsema_real_eip !58
  %21 = zext i32 %EDX_val.105 to i64, !mcsema_real_eip !58
  store i64 %21, i64* %XDI, !mcsema_real_eip !58
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 %20, i64* %_allin_new_bt_27, !mcsema_real_eip !59
  %RDI_val.108 = load i64, i64* %XDI, !mcsema_real_eip !60
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.109 = load i64, i64* %XSP, !mcsema_real_eip !60
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %22 = sub i64 %RSP_val.109, 8, !mcsema_real_eip !60
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !60
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %22, i64* %XSP, !mcsema_real_eip !60
  %23 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.108)
  %_rsp_fix_157 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_158 = getelementptr i8, i8* %_rsp_fix_157, i64 8
  store i8* %_gep_fix_158, i8** %_RSP_ptr_
  store i64 %23, i64* %XAX, !mcsema_real_eip !60
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %23, i64* %_allin_new_bt_33, !mcsema_real_eip !61
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -36
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !62
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !62
  store i32 0, i32* %25, !mcsema_real_eip !62
  br label %block_0xe0, !mcsema_real_eip !63

block_0xe0:                                       ; preds = %107, %block_0xa0
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -36
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !63
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !63
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %27 to i8*
  %_offset_above_rbp_ = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %28, label %29

; <label>:28:                                     ; preds = %block_0xe0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %29

; <label>:29:                                     ; preds = %block_0xe0, %28
  %30 = phi i32* [ %27, %block_0xe0 ], [ %_address_in_parent_stack_bt_, %28 ]
  %_new_load_ = load i32, i32* %30
  %31 = sub i32 %_new_load_, 10, !mcsema_real_eip !63
  %32 = xor i32 %31, %_new_load_, !mcsema_real_eip !63
  %33 = xor i32 %32, 10, !mcsema_real_eip !63
  %34 = and i32 %33, 16, !mcsema_real_eip !63
  %35 = icmp ne i32 %34, 0, !mcsema_real_eip !63
  store i1 %35, i1* %AF, !mcsema_real_eip !63
  %36 = trunc i32 %31 to i8, !mcsema_real_eip !63
  %37 = call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !63
  %38 = trunc i8 %37 to i1, !mcsema_real_eip !63
  %39 = xor i1 %38, true, !mcsema_real_eip !63
  store i1 %39, i1* %PF, !mcsema_real_eip !63
  %40 = icmp eq i32 %31, 0, !mcsema_real_eip !63
  store i1 %40, i1* %ZF, !mcsema_real_eip !63
  %41 = lshr i32 %31, 31, !mcsema_real_eip !63
  %42 = trunc i32 %41 to i1, !mcsema_real_eip !63
  store i1 %42, i1* %SF, !mcsema_real_eip !63
  %43 = icmp ult i32 %_new_load_, 10, !mcsema_real_eip !63
  store i1 %43, i1* %CF, !mcsema_real_eip !63
  %44 = xor i32 %_new_load_, 10, !mcsema_real_eip !63
  %45 = and i32 %44, %32, !mcsema_real_eip !63
  %46 = lshr i32 %45, 31, !mcsema_real_eip !63
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !63
  store i1 %47, i1* %OF, !mcsema_real_eip !63
  %48 = icmp eq i1 %42, %47, !mcsema_real_eip !64
  br i1 %48, label %block_0x10c, label %block_0xea, !mcsema_real_eip !64

block_0xea:                                       ; preds = %29
  br i1 %_cond1_n_cond2_cond3_, label %49, label %50

; <label>:49:                                     ; preds = %block_0xea
  %_address_in_parent_stack_bt_178 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %50

; <label>:50:                                     ; preds = %block_0xea, %49
  %51 = phi i32* [ %27, %block_0xea ], [ %_address_in_parent_stack_bt_178, %49 ]
  %_new_load_179 = load i32, i32* %51
  %52 = zext i32 %_new_load_179 to i64, !mcsema_real_eip !65
  store i64 %52, i64* %XAX, !mcsema_real_eip !65
  %EAX_val.116 = load i32, i32* %EAX.93, !mcsema_real_eip !66
  %53 = add i32 10, %EAX_val.116, !mcsema_real_eip !66
  %54 = xor i32 %53, %EAX_val.116, !mcsema_real_eip !66
  %55 = xor i32 %54, 10, !mcsema_real_eip !66
  %56 = and i32 %55, 16, !mcsema_real_eip !66
  %57 = icmp ne i32 %56, 0, !mcsema_real_eip !66
  store i1 %57, i1* %AF, !mcsema_real_eip !66
  %58 = lshr i32 %53, 31, !mcsema_real_eip !66
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !66
  store i1 %59, i1* %SF, !mcsema_real_eip !66
  %60 = icmp eq i32 %53, 0, !mcsema_real_eip !66
  store i1 %60, i1* %ZF, !mcsema_real_eip !66
  %61 = xor i32 %EAX_val.116, 10, !mcsema_real_eip !66
  %62 = xor i32 %61, -1, !mcsema_real_eip !66
  %63 = and i32 %62, %54, !mcsema_real_eip !66
  %64 = lshr i32 %63, 31, !mcsema_real_eip !66
  %65 = and i32 %64, 1, !mcsema_real_eip !66
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !66
  store i1 %66, i1* %OF, !mcsema_real_eip !66
  %67 = trunc i32 %53 to i8, !mcsema_real_eip !66
  %68 = call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !66
  %69 = trunc i8 %68 to i1, !mcsema_real_eip !66
  %70 = xor i1 %69, true, !mcsema_real_eip !66
  store i1 %70, i1* %PF, !mcsema_real_eip !66
  %71 = icmp ult i32 %53, %EAX_val.116, !mcsema_real_eip !66
  store i1 %71, i1* %CF, !mcsema_real_eip !66
  %72 = zext i32 %53 to i64, !mcsema_real_eip !66
  store i64 %72, i64* %XAX, !mcsema_real_eip !66
  %EAX_val.118 = load i32, i32* %EAX.93, !mcsema_real_eip !67
  %73 = add i32 1, %EAX_val.118, !mcsema_real_eip !67
  %74 = xor i32 %73, %EAX_val.118, !mcsema_real_eip !67
  %75 = xor i32 %74, 1, !mcsema_real_eip !67
  %76 = and i32 %75, 16, !mcsema_real_eip !67
  %77 = icmp ne i32 %76, 0, !mcsema_real_eip !67
  store i1 %77, i1* %AF, !mcsema_real_eip !67
  %78 = lshr i32 %73, 31, !mcsema_real_eip !67
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !67
  store i1 %79, i1* %SF, !mcsema_real_eip !67
  %80 = icmp eq i32 %73, 0, !mcsema_real_eip !67
  store i1 %80, i1* %ZF, !mcsema_real_eip !67
  %81 = xor i32 %EAX_val.118, 1, !mcsema_real_eip !67
  %82 = xor i32 %81, -1, !mcsema_real_eip !67
  %83 = and i32 %82, %74, !mcsema_real_eip !67
  %84 = lshr i32 %83, 31, !mcsema_real_eip !67
  %85 = and i32 %84, 1, !mcsema_real_eip !67
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !67
  store i1 %86, i1* %OF, !mcsema_real_eip !67
  %87 = trunc i32 %73 to i8, !mcsema_real_eip !67
  %88 = call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !67
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !67
  %90 = xor i1 %89, true, !mcsema_real_eip !67
  store i1 %90, i1* %PF, !mcsema_real_eip !67
  %91 = icmp ult i32 %73, %EAX_val.118, !mcsema_real_eip !67
  store i1 %91, i1* %CF, !mcsema_real_eip !67
  %92 = zext i32 %73 to i64, !mcsema_real_eip !67
  store i64 %92, i64* %XAX, !mcsema_real_eip !67
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_180 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_183 = sub i64 %_ptr_to_int_180, %_local_end_to_int_
  %_pot_address_in_parent_stack_184 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_183
  %_cond1_185 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_186 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_187 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_188 = or i1 %_cond2_1_186, %_cond2_2_187
  %_cond4_189 = icmp ule i8* %_pot_address_in_parent_stack_184, %_parent_stack_end_ptr_
  %_cond1_n_cond2_190 = and i1 %_cond1_185, %_cond2_188
  %_cond1_n_cond2_cond3_191 = and i1 %_cond1_n_cond2_190, %_cond4_189
  br i1 %_cond1_n_cond2_cond3_191, label %93, label %94

; <label>:93:                                     ; preds = %50
  %_address_in_parent_stack_bt_193 = bitcast i8* %_pot_address_in_parent_stack_184 to i64*
  br label %94

; <label>:94:                                     ; preds = %50, %93
  %95 = phi i64* [ %_allin_new_bt_45, %50 ], [ %_address_in_parent_stack_bt_193, %93 ]
  %_new_load_194 = load i64, i64* %95
  store i64 %_new_load_194, i64* %XCX, !mcsema_real_eip !68
  br i1 %_cond1_n_cond2_cond3_, label %96, label %97

; <label>:96:                                     ; preds = %94
  %_address_in_parent_stack_bt_208 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %97

; <label>:97:                                     ; preds = %94, %96
  %98 = phi i32* [ %27, %94 ], [ %_address_in_parent_stack_bt_208, %96 ]
  %_new_load_209 = load i32, i32* %98
  %99 = sext i32 %_new_load_209 to i64, !mcsema_real_eip !69
  store i64 %99, i64* %XDX, !mcsema_real_eip !69
  %100 = mul i64 %99, 4, !mcsema_real_eip !70
  %101 = add i64 %_new_load_194, %100, !mcsema_real_eip !70
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !70
  %EAX_val.124 = load i32, i32* %EAX.93, !mcsema_real_eip !70
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !70
  store i32 %EAX_val.124, i32* %103, !mcsema_real_eip !70
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -36
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %104 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !71
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !71
  %_ptr_bt_212 = bitcast i32* %105 to i8*
  %_offset_above_rbp_213 = sub i64 %104, %_local_end_to_int_
  %_pot_address_in_parent_stack_214 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_cond1_215 = icmp ugt i8* %_ptr_bt_212, %_local_stack_end_ptr_
  %_cond2_1_216 = icmp ugt i8* %_ptr_bt_212, %_parent_stack_end_ptr_
  %_cond2_2_217 = icmp ult i8* %_ptr_bt_212, %_parent_stack_start_ptr_
  %_cond2_218 = or i1 %_cond2_1_216, %_cond2_2_217
  %_cond4_219 = icmp ule i8* %_pot_address_in_parent_stack_214, %_parent_stack_end_ptr_
  %_cond1_n_cond2_220 = and i1 %_cond1_215, %_cond2_218
  %_cond1_n_cond2_cond3_221 = and i1 %_cond1_n_cond2_220, %_cond4_219
  br i1 %_cond1_n_cond2_cond3_221, label %106, label %107

; <label>:106:                                    ; preds = %97
  %_address_in_parent_stack_bt_223 = bitcast i8* %_pot_address_in_parent_stack_214 to i32*
  br label %107

; <label>:107:                                    ; preds = %97, %106
  %108 = phi i32* [ %105, %97 ], [ %_address_in_parent_stack_bt_223, %106 ]
  %_new_load_224 = load i32, i32* %108
  %109 = zext i32 %_new_load_224 to i64, !mcsema_real_eip !71
  store i64 %109, i64* %XAX, !mcsema_real_eip !71
  %EAX_val.127 = load i32, i32* %EAX.93, !mcsema_real_eip !72
  %110 = add i32 1, %EAX_val.127, !mcsema_real_eip !72
  %111 = xor i32 %110, %EAX_val.127, !mcsema_real_eip !72
  %112 = xor i32 %111, 1, !mcsema_real_eip !72
  %113 = and i32 %112, 16, !mcsema_real_eip !72
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !72
  store i1 %114, i1* %AF, !mcsema_real_eip !72
  %115 = lshr i32 %110, 31, !mcsema_real_eip !72
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !72
  store i1 %116, i1* %SF, !mcsema_real_eip !72
  %117 = icmp eq i32 %110, 0, !mcsema_real_eip !72
  store i1 %117, i1* %ZF, !mcsema_real_eip !72
  %118 = xor i32 %EAX_val.127, 1, !mcsema_real_eip !72
  %119 = xor i32 %118, -1, !mcsema_real_eip !72
  %120 = and i32 %119, %111, !mcsema_real_eip !72
  %121 = lshr i32 %120, 31, !mcsema_real_eip !72
  %122 = and i32 %121, 1, !mcsema_real_eip !72
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !72
  store i1 %123, i1* %OF, !mcsema_real_eip !72
  %124 = trunc i32 %110 to i8, !mcsema_real_eip !72
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !72
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !72
  %127 = xor i1 %126, true, !mcsema_real_eip !72
  store i1 %127, i1* %PF, !mcsema_real_eip !72
  %128 = icmp ult i32 %110, %EAX_val.127, !mcsema_real_eip !72
  store i1 %128, i1* %CF, !mcsema_real_eip !72
  %129 = zext i32 %110 to i64, !mcsema_real_eip !72
  store i64 %129, i64* %XAX, !mcsema_real_eip !72
  %EAX_val.130 = load i32, i32* %EAX.93, !mcsema_real_eip !73
  store i32 %EAX_val.130, i32* %105, !mcsema_real_eip !73
  br label %block_0xe0, !mcsema_real_eip !74

block_0x10c:                                      ; preds = %29
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -40
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %130 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !75
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !75
  store i32 0, i32* %131, !mcsema_real_eip !75
  br label %block_0x113, !mcsema_real_eip !76

block_0x113:                                      ; preds = %193, %block_0x10c
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %132 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !76
  %133 = inttoptr i64 %132 to i32*, !mcsema_real_eip !76
  %_ptr_bt_227 = bitcast i32* %133 to i8*
  %_offset_above_rbp_228 = sub i64 %132, %_local_end_to_int_
  %_pot_address_in_parent_stack_229 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_228
  %_cond1_230 = icmp ugt i8* %_ptr_bt_227, %_local_stack_end_ptr_
  %_cond2_1_231 = icmp ugt i8* %_ptr_bt_227, %_parent_stack_end_ptr_
  %_cond2_2_232 = icmp ult i8* %_ptr_bt_227, %_parent_stack_start_ptr_
  %_cond2_233 = or i1 %_cond2_1_231, %_cond2_2_232
  %_cond4_234 = icmp ule i8* %_pot_address_in_parent_stack_229, %_parent_stack_end_ptr_
  %_cond1_n_cond2_235 = and i1 %_cond1_230, %_cond2_233
  %_cond1_n_cond2_cond3_236 = and i1 %_cond1_n_cond2_235, %_cond4_234
  br i1 %_cond1_n_cond2_cond3_236, label %134, label %135

; <label>:134:                                    ; preds = %block_0x113
  %_address_in_parent_stack_bt_238 = bitcast i8* %_pot_address_in_parent_stack_229 to i32*
  br label %135

; <label>:135:                                    ; preds = %block_0x113, %134
  %136 = phi i32* [ %133, %block_0x113 ], [ %_address_in_parent_stack_bt_238, %134 ]
  %_new_load_239 = load i32, i32* %136
  %137 = sub i32 %_new_load_239, 10, !mcsema_real_eip !76
  %138 = xor i32 %137, %_new_load_239, !mcsema_real_eip !76
  %139 = xor i32 %138, 10, !mcsema_real_eip !76
  %140 = and i32 %139, 16, !mcsema_real_eip !76
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !76
  store i1 %141, i1* %AF, !mcsema_real_eip !76
  %142 = trunc i32 %137 to i8, !mcsema_real_eip !76
  %143 = call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !76
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !76
  %145 = xor i1 %144, true, !mcsema_real_eip !76
  store i1 %145, i1* %PF, !mcsema_real_eip !76
  %146 = icmp eq i32 %137, 0, !mcsema_real_eip !76
  store i1 %146, i1* %ZF, !mcsema_real_eip !76
  %147 = lshr i32 %137, 31, !mcsema_real_eip !76
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !76
  store i1 %148, i1* %SF, !mcsema_real_eip !76
  %149 = icmp ult i32 %_new_load_239, 10, !mcsema_real_eip !76
  store i1 %149, i1* %CF, !mcsema_real_eip !76
  %150 = xor i32 %_new_load_239, 10, !mcsema_real_eip !76
  %151 = and i32 %150, %138, !mcsema_real_eip !76
  %152 = lshr i32 %151, 31, !mcsema_real_eip !76
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !76
  store i1 %153, i1* %OF, !mcsema_real_eip !76
  %154 = icmp eq i1 %148, %153, !mcsema_real_eip !77
  br i1 %154, label %block_0x13c, label %block_0x11d, !mcsema_real_eip !77

block_0x11d:                                      ; preds = %135
  br i1 %_cond1_n_cond2_cond3_236, label %155, label %156

; <label>:155:                                    ; preds = %block_0x11d
  %_address_in_parent_stack_bt_253 = bitcast i8* %_pot_address_in_parent_stack_229 to i32*
  br label %156

; <label>:156:                                    ; preds = %block_0x11d, %155
  %157 = phi i32* [ %133, %block_0x11d ], [ %_address_in_parent_stack_bt_253, %155 ]
  %_new_load_254 = load i32, i32* %157
  %158 = zext i32 %_new_load_254 to i64, !mcsema_real_eip !78
  store i64 %158, i64* %XAX, !mcsema_real_eip !78
  %EAX_val.135 = load i32, i32* %EAX.93, !mcsema_real_eip !79
  %159 = add i32 1, %EAX_val.135, !mcsema_real_eip !79
  %160 = xor i32 %159, %EAX_val.135, !mcsema_real_eip !79
  %161 = xor i32 %160, 1, !mcsema_real_eip !79
  %162 = and i32 %161, 16, !mcsema_real_eip !79
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !79
  store i1 %163, i1* %AF, !mcsema_real_eip !79
  %164 = lshr i32 %159, 31, !mcsema_real_eip !79
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !79
  store i1 %165, i1* %SF, !mcsema_real_eip !79
  %166 = icmp eq i32 %159, 0, !mcsema_real_eip !79
  store i1 %166, i1* %ZF, !mcsema_real_eip !79
  %167 = xor i32 %EAX_val.135, 1, !mcsema_real_eip !79
  %168 = xor i32 %167, -1, !mcsema_real_eip !79
  %169 = and i32 %168, %160, !mcsema_real_eip !79
  %170 = lshr i32 %169, 31, !mcsema_real_eip !79
  %171 = and i32 %170, 1, !mcsema_real_eip !79
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !79
  store i1 %172, i1* %OF, !mcsema_real_eip !79
  %173 = trunc i32 %159 to i8, !mcsema_real_eip !79
  %174 = call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !79
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !79
  %176 = xor i1 %175, true, !mcsema_real_eip !79
  store i1 %176, i1* %PF, !mcsema_real_eip !79
  %177 = icmp ult i32 %159, %EAX_val.135, !mcsema_real_eip !79
  store i1 %177, i1* %CF, !mcsema_real_eip !79
  %178 = zext i32 %159 to i64, !mcsema_real_eip !79
  store i64 %178, i64* %XAX, !mcsema_real_eip !79
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %_ptr_to_int_255 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_258 = sub i64 %_ptr_to_int_255, %_local_end_to_int_
  %_pot_address_in_parent_stack_259 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_cond1_260 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_261 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_262 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_263 = or i1 %_cond2_1_261, %_cond2_2_262
  %_cond4_264 = icmp ule i8* %_pot_address_in_parent_stack_259, %_parent_stack_end_ptr_
  %_cond1_n_cond2_265 = and i1 %_cond1_260, %_cond2_263
  %_cond1_n_cond2_cond3_266 = and i1 %_cond1_n_cond2_265, %_cond4_264
  br i1 %_cond1_n_cond2_cond3_266, label %179, label %180

; <label>:179:                                    ; preds = %156
  %_address_in_parent_stack_bt_268 = bitcast i8* %_pot_address_in_parent_stack_259 to i64*
  br label %180

; <label>:180:                                    ; preds = %156, %179
  %181 = phi i64* [ %_allin_new_bt_66, %156 ], [ %_address_in_parent_stack_bt_268, %179 ]
  %_new_load_269 = load i64, i64* %181
  store i64 %_new_load_269, i64* %XCX, !mcsema_real_eip !80
  br i1 %_cond1_n_cond2_cond3_236, label %182, label %183

; <label>:182:                                    ; preds = %180
  %_address_in_parent_stack_bt_283 = bitcast i8* %_pot_address_in_parent_stack_229 to i32*
  br label %183

; <label>:183:                                    ; preds = %180, %182
  %184 = phi i32* [ %133, %180 ], [ %_address_in_parent_stack_bt_283, %182 ]
  %_new_load_284 = load i32, i32* %184
  %185 = sext i32 %_new_load_284 to i64, !mcsema_real_eip !81
  store i64 %185, i64* %XDX, !mcsema_real_eip !81
  %186 = mul i64 %185, 4, !mcsema_real_eip !82
  %187 = add i64 %_new_load_269, %186, !mcsema_real_eip !82
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !82
  %EAX_val.141 = load i32, i32* %EAX.93, !mcsema_real_eip !82
  %189 = inttoptr i64 %187 to i32*, !mcsema_real_eip !82
  store i32 %EAX_val.141, i32* %189, !mcsema_real_eip !82
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -40
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %190 = ptrtoint i64* %_allin_new_bt_72 to i64, !mcsema_real_eip !83
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !83
  %_ptr_bt_287 = bitcast i32* %191 to i8*
  %_offset_above_rbp_288 = sub i64 %190, %_local_end_to_int_
  %_pot_address_in_parent_stack_289 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_288
  %_cond1_290 = icmp ugt i8* %_ptr_bt_287, %_local_stack_end_ptr_
  %_cond2_1_291 = icmp ugt i8* %_ptr_bt_287, %_parent_stack_end_ptr_
  %_cond2_2_292 = icmp ult i8* %_ptr_bt_287, %_parent_stack_start_ptr_
  %_cond2_293 = or i1 %_cond2_1_291, %_cond2_2_292
  %_cond4_294 = icmp ule i8* %_pot_address_in_parent_stack_289, %_parent_stack_end_ptr_
  %_cond1_n_cond2_295 = and i1 %_cond1_290, %_cond2_293
  %_cond1_n_cond2_cond3_296 = and i1 %_cond1_n_cond2_295, %_cond4_294
  br i1 %_cond1_n_cond2_cond3_296, label %192, label %193

; <label>:192:                                    ; preds = %183
  %_address_in_parent_stack_bt_298 = bitcast i8* %_pot_address_in_parent_stack_289 to i32*
  br label %193

; <label>:193:                                    ; preds = %183, %192
  %194 = phi i32* [ %191, %183 ], [ %_address_in_parent_stack_bt_298, %192 ]
  %_new_load_299 = load i32, i32* %194
  %195 = zext i32 %_new_load_299 to i64, !mcsema_real_eip !83
  store i64 %195, i64* %XAX, !mcsema_real_eip !83
  %EAX_val.144 = load i32, i32* %EAX.93, !mcsema_real_eip !84
  %196 = add i32 1, %EAX_val.144, !mcsema_real_eip !84
  %197 = xor i32 %196, %EAX_val.144, !mcsema_real_eip !84
  %198 = xor i32 %197, 1, !mcsema_real_eip !84
  %199 = and i32 %198, 16, !mcsema_real_eip !84
  %200 = icmp ne i32 %199, 0, !mcsema_real_eip !84
  store i1 %200, i1* %AF, !mcsema_real_eip !84
  %201 = lshr i32 %196, 31, !mcsema_real_eip !84
  %202 = trunc i32 %201 to i1, !mcsema_real_eip !84
  store i1 %202, i1* %SF, !mcsema_real_eip !84
  %203 = icmp eq i32 %196, 0, !mcsema_real_eip !84
  store i1 %203, i1* %ZF, !mcsema_real_eip !84
  %204 = xor i32 %EAX_val.144, 1, !mcsema_real_eip !84
  %205 = xor i32 %204, -1, !mcsema_real_eip !84
  %206 = and i32 %205, %197, !mcsema_real_eip !84
  %207 = lshr i32 %206, 31, !mcsema_real_eip !84
  %208 = and i32 %207, 1, !mcsema_real_eip !84
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !84
  store i1 %209, i1* %OF, !mcsema_real_eip !84
  %210 = trunc i32 %196 to i8, !mcsema_real_eip !84
  %211 = call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !84
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !84
  %213 = xor i1 %212, true, !mcsema_real_eip !84
  store i1 %213, i1* %PF, !mcsema_real_eip !84
  %214 = icmp ult i32 %196, %EAX_val.144, !mcsema_real_eip !84
  store i1 %214, i1* %CF, !mcsema_real_eip !84
  %215 = zext i32 %196 to i64, !mcsema_real_eip !84
  store i64 %215, i64* %XAX, !mcsema_real_eip !84
  %EAX_val.147 = load i32, i32* %EAX.93, !mcsema_real_eip !85
  store i32 %EAX_val.147, i32* %191, !mcsema_real_eip !85
  br label %block_0x113, !mcsema_real_eip !86

block_0x13c:                                      ; preds = %135
  store i64 100, i64* %XDI, !mcsema_real_eip !87
  store i64 200, i64* %XSI, !mcsema_real_eip !88
  store i64 300, i64* %XDX, !mcsema_real_eip !89
  store i64 400, i64* %XCX, !mcsema_real_eip !90
  store i64 500, i64* %R8, !mcsema_real_eip !91
  store i64 600, i64* %R9, !mcsema_real_eip !92
  store i64 10, i64* %XAX, !mcsema_real_eip !93
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -24
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %_ptr_to_int_300 = ptrtoint i64* %_allin_new_bt_78 to i64
  %_offset_above_rbp_303 = sub i64 %_ptr_to_int_300, %_local_end_to_int_
  %_pot_address_in_parent_stack_304 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_cond1_305 = icmp ugt i8* %_new_gep_77, %_local_stack_end_ptr_
  %_cond2_1_306 = icmp ugt i8* %_new_gep_77, %_parent_stack_end_ptr_
  %_cond2_2_307 = icmp ult i8* %_new_gep_77, %_parent_stack_start_ptr_
  %_cond2_308 = or i1 %_cond2_1_306, %_cond2_2_307
  %_cond4_309 = icmp ule i8* %_pot_address_in_parent_stack_304, %_parent_stack_end_ptr_
  %_cond1_n_cond2_310 = and i1 %_cond1_305, %_cond2_308
  %_cond1_n_cond2_cond3_311 = and i1 %_cond1_n_cond2_310, %_cond4_309
  br i1 %_cond1_n_cond2_cond3_311, label %216, label %217

; <label>:216:                                    ; preds = %block_0x13c
  %_address_in_parent_stack_bt_313 = bitcast i8* %_pot_address_in_parent_stack_304 to i64*
  br label %217

; <label>:217:                                    ; preds = %block_0x13c, %216
  %218 = phi i64* [ %_allin_new_bt_78, %block_0x13c ], [ %_address_in_parent_stack_bt_313, %216 ]
  %_new_load_314 = load i64, i64* %218
  store i64 %_new_load_314, i64* %R10, !mcsema_real_eip !94
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %_ptr_to_int_315 = ptrtoint i64* %_allin_new_bt_81 to i64
  %_offset_above_rbp_318 = sub i64 %_ptr_to_int_315, %_local_end_to_int_
  %_pot_address_in_parent_stack_319 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_318
  %_cond1_320 = icmp ugt i8* %_new_gep_80, %_local_stack_end_ptr_
  %_cond2_1_321 = icmp ugt i8* %_new_gep_80, %_parent_stack_end_ptr_
  %_cond2_2_322 = icmp ult i8* %_new_gep_80, %_parent_stack_start_ptr_
  %_cond2_323 = or i1 %_cond2_1_321, %_cond2_2_322
  %_cond4_324 = icmp ule i8* %_pot_address_in_parent_stack_319, %_parent_stack_end_ptr_
  %_cond1_n_cond2_325 = and i1 %_cond1_320, %_cond2_323
  %_cond1_n_cond2_cond3_326 = and i1 %_cond1_n_cond2_325, %_cond4_324
  br i1 %_cond1_n_cond2_cond3_326, label %219, label %220

; <label>:219:                                    ; preds = %217
  %_address_in_parent_stack_bt_328 = bitcast i8* %_pot_address_in_parent_stack_319 to i64*
  br label %220

; <label>:220:                                    ; preds = %217, %219
  %221 = phi i64* [ %_allin_new_bt_81, %217 ], [ %_address_in_parent_stack_bt_328, %219 ]
  %_new_load_329 = load i64, i64* %221
  store i64 %_new_load_329, i64* %R11, !mcsema_real_eip !95
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_84 = bitcast i8* %_load_rsp_ptr_82 to i64*
  %222 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !96
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !96
  store i32 10, i32* %223, !mcsema_real_eip !96
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 8
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10_val.152 = load i64, i64* %R10, !mcsema_real_eip !97
  store i64 %R10_val.152, i64* %_allin_new_bt_87, !mcsema_real_eip !97
  %_load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_
  %_new_gep_89 = getelementptr i8, i8* %_load_rsp_ptr_88, i64 16
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %224 = ptrtoint i64* %_allin_new_bt_90 to i64, !mcsema_real_eip !98
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !98
  store i32 10, i32* %225, !mcsema_real_eip !98
  %_load_rsp_ptr_91 = load i8*, i8** %_RSP_ptr_
  %_new_gep_92 = getelementptr i8, i8* %_load_rsp_ptr_91, i64 24
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %R11_val.155 = load i64, i64* %R11, !mcsema_real_eip !99
  store i64 %R11_val.155, i64* %_allin_new_bt_93, !mcsema_real_eip !99
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -48
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %EAX_val.158 = load i32, i32* %EAX.93, !mcsema_real_eip !100
  %226 = ptrtoint i64* %_allin_new_bt_96 to i64, !mcsema_real_eip !100
  %227 = inttoptr i64 %226 to i32*, !mcsema_real_eip !100
  store i32 %EAX_val.158, i32* %227, !mcsema_real_eip !100
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !101
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 -8
  %228 = sub i64 %RSP_val.159, 8, !mcsema_real_eip !101
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, !mcsema_real_eip !101
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %228, i64* %XSP, !mcsema_real_eip !101
  %_load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_159)
  %_rsp_fix_161 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_162 = getelementptr i8, i8* %_rsp_fix_161, i64 8
  store i8* %_gep_fix_162, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, !mcsema_real_eip !102
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -44
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %EAX_val.162 = load i32, i32* %EAX.93, !mcsema_real_eip !103
  %229 = ptrtoint i64* %_allin_new_bt_102 to i64, !mcsema_real_eip !103
  %230 = inttoptr i64 %229 to i32*, !mcsema_real_eip !103
  store i32 %EAX_val.162, i32* %230, !mcsema_real_eip !103
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -44
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %231 = ptrtoint i64* %_allin_new_bt_105 to i64, !mcsema_real_eip !104
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !104
  %_ptr_bt_332 = bitcast i32* %232 to i8*
  %_offset_above_rbp_333 = sub i64 %231, %_local_end_to_int_
  %_pot_address_in_parent_stack_334 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_333
  %_cond1_335 = icmp ugt i8* %_ptr_bt_332, %_local_stack_end_ptr_
  %_cond2_1_336 = icmp ugt i8* %_ptr_bt_332, %_parent_stack_end_ptr_
  %_cond2_2_337 = icmp ult i8* %_ptr_bt_332, %_parent_stack_start_ptr_
  %_cond2_338 = or i1 %_cond2_1_336, %_cond2_2_337
  %_cond4_339 = icmp ule i8* %_pot_address_in_parent_stack_334, %_parent_stack_end_ptr_
  %_cond1_n_cond2_340 = and i1 %_cond1_335, %_cond2_338
  %_cond1_n_cond2_cond3_341 = and i1 %_cond1_n_cond2_340, %_cond4_339
  br i1 %_cond1_n_cond2_cond3_341, label %233, label %234

; <label>:233:                                    ; preds = %220
  %_address_in_parent_stack_bt_343 = bitcast i8* %_pot_address_in_parent_stack_334 to i32*
  br label %234

; <label>:234:                                    ; preds = %220, %233
  %235 = phi i32* [ %232, %220 ], [ %_address_in_parent_stack_bt_343, %233 ]
  %_new_load_344 = load i32, i32* %235
  %236 = zext i32 %_new_load_344 to i64, !mcsema_real_eip !104
  store i64 %236, i64* %XSI, !mcsema_real_eip !104
  %AL.164 = bitcast i64* %XAX to i8*, !mcsema_real_eip !105
  store i8 0, i8* %AL.164, !mcsema_real_eip !105
  %RDI_val.165 = load i64, i64* %XDI, !mcsema_real_eip !106
  %RDX_val.167 = load i64, i64* %XDX, !mcsema_real_eip !106
  %RCX_val.168 = load i64, i64* %XCX, !mcsema_real_eip !106
  %R8_val.169 = load i64, i64* %R8, !mcsema_real_eip !106
  %R9_val.170 = load i64, i64* %R9, !mcsema_real_eip !106
  %_load_rsp_ptr_106 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_107 = bitcast i8* %_load_rsp_ptr_106 to i64*
  %_ptr_to_int_345 = ptrtoint i64* %_allin_new_bt_107 to i64
  %_offset_above_rbp_348 = sub i64 %_ptr_to_int_345, %_local_end_to_int_
  %_pot_address_in_parent_stack_349 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_348
  %_cond1_350 = icmp ugt i8* %_load_rsp_ptr_106, %_local_stack_end_ptr_
  %_cond2_1_351 = icmp ugt i8* %_load_rsp_ptr_106, %_parent_stack_end_ptr_
  %_cond2_2_352 = icmp ult i8* %_load_rsp_ptr_106, %_parent_stack_start_ptr_
  %_cond2_353 = or i1 %_cond2_1_351, %_cond2_2_352
  %_cond4_354 = icmp ule i8* %_pot_address_in_parent_stack_349, %_parent_stack_end_ptr_
  %_cond1_n_cond2_355 = and i1 %_cond1_350, %_cond2_353
  %_cond1_n_cond2_cond3_356 = and i1 %_cond1_n_cond2_355, %_cond4_354
  br i1 %_cond1_n_cond2_cond3_356, label %237, label %238

; <label>:237:                                    ; preds = %234
  %_address_in_parent_stack_bt_358 = bitcast i8* %_pot_address_in_parent_stack_349 to i64*
  br label %238

; <label>:238:                                    ; preds = %234, %237
  %239 = phi i64* [ %_allin_new_bt_107, %234 ], [ %_address_in_parent_stack_bt_358, %237 ]
  %_new_load_359 = load i64, i64* %239
  %_new_gep_108 = getelementptr i8, i8* %_load_rsp_ptr_106, i64 8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %_ptr_to_int_360 = ptrtoint i64* %_allin_new_bt_109 to i64
  %_offset_above_rbp_363 = sub i64 %_ptr_to_int_360, %_local_end_to_int_
  %_pot_address_in_parent_stack_364 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_363
  %_cond1_365 = icmp ugt i8* %_new_gep_108, %_local_stack_end_ptr_
  %_cond2_1_366 = icmp ugt i8* %_new_gep_108, %_parent_stack_end_ptr_
  %_cond2_2_367 = icmp ult i8* %_new_gep_108, %_parent_stack_start_ptr_
  %_cond2_368 = or i1 %_cond2_1_366, %_cond2_2_367
  %_cond4_369 = icmp ule i8* %_pot_address_in_parent_stack_364, %_parent_stack_end_ptr_
  %_cond1_n_cond2_370 = and i1 %_cond1_365, %_cond2_368
  %_cond1_n_cond2_cond3_371 = and i1 %_cond1_n_cond2_370, %_cond4_369
  br i1 %_cond1_n_cond2_cond3_371, label %240, label %241

; <label>:240:                                    ; preds = %238
  %_address_in_parent_stack_bt_373 = bitcast i8* %_pot_address_in_parent_stack_364 to i64*
  br label %241

; <label>:241:                                    ; preds = %238, %240
  %242 = phi i64* [ %_allin_new_bt_109, %238 ], [ %_address_in_parent_stack_bt_373, %240 ]
  %_new_load_374 = load i64, i64* %242
  %_new_gep_110 = getelementptr i8, i8* %_new_gep_108, i64 8
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %_ptr_to_int_375 = ptrtoint i64* %_allin_new_bt_111 to i64
  %_offset_above_rbp_378 = sub i64 %_ptr_to_int_375, %_local_end_to_int_
  %_pot_address_in_parent_stack_379 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_378
  %_cond1_380 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_381 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_382 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_383 = or i1 %_cond2_1_381, %_cond2_2_382
  %_cond4_384 = icmp ule i8* %_pot_address_in_parent_stack_379, %_parent_stack_end_ptr_
  %_cond1_n_cond2_385 = and i1 %_cond1_380, %_cond2_383
  %_cond1_n_cond2_cond3_386 = and i1 %_cond1_n_cond2_385, %_cond4_384
  br i1 %_cond1_n_cond2_cond3_386, label %243, label %244

; <label>:243:                                    ; preds = %241
  %_address_in_parent_stack_bt_388 = bitcast i8* %_pot_address_in_parent_stack_379 to i64*
  br label %244

; <label>:244:                                    ; preds = %241, %243
  %245 = phi i64* [ %_allin_new_bt_111, %241 ], [ %_address_in_parent_stack_bt_388, %243 ]
  %_new_load_389 = load i64, i64* %245
  %_new_gep_112 = getelementptr i8, i8* %_new_gep_110, i64 8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %_ptr_to_int_390 = ptrtoint i64* %_allin_new_bt_113 to i64
  %_offset_above_rbp_393 = sub i64 %_ptr_to_int_390, %_local_end_to_int_
  %_pot_address_in_parent_stack_394 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_393
  %_cond1_395 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_396 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_397 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_398 = or i1 %_cond2_1_396, %_cond2_2_397
  %_cond4_399 = icmp ule i8* %_pot_address_in_parent_stack_394, %_parent_stack_end_ptr_
  %_cond1_n_cond2_400 = and i1 %_cond1_395, %_cond2_398
  %_cond1_n_cond2_cond3_401 = and i1 %_cond1_n_cond2_400, %_cond4_399
  br i1 %_cond1_n_cond2_cond3_401, label %246, label %247

; <label>:246:                                    ; preds = %244
  %_address_in_parent_stack_bt_403 = bitcast i8* %_pot_address_in_parent_stack_394 to i64*
  br label %247

; <label>:247:                                    ; preds = %244, %246
  %248 = phi i64* [ %_allin_new_bt_113, %244 ], [ %_address_in_parent_stack_bt_403, %246 ]
  %_new_load_404 = load i64, i64* %248
  %_new_gep_114 = getelementptr i8, i8* %_new_gep_112, i64 8
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %_ptr_to_int_405 = ptrtoint i64* %_allin_new_bt_115 to i64
  %_offset_above_rbp_408 = sub i64 %_ptr_to_int_405, %_local_end_to_int_
  %_pot_address_in_parent_stack_409 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_408
  %_cond1_410 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_411 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_412 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_413 = or i1 %_cond2_1_411, %_cond2_2_412
  %_cond4_414 = icmp ule i8* %_pot_address_in_parent_stack_409, %_parent_stack_end_ptr_
  %_cond1_n_cond2_415 = and i1 %_cond1_410, %_cond2_413
  %_cond1_n_cond2_cond3_416 = and i1 %_cond1_n_cond2_415, %_cond4_414
  br i1 %_cond1_n_cond2_cond3_416, label %249, label %250

; <label>:249:                                    ; preds = %247
  %_address_in_parent_stack_bt_418 = bitcast i8* %_pot_address_in_parent_stack_409 to i64*
  br label %250

; <label>:250:                                    ; preds = %247, %249
  %251 = phi i64* [ %_allin_new_bt_115, %247 ], [ %_address_in_parent_stack_bt_418, %249 ]
  %_new_load_419 = load i64, i64* %251
  %_new_gep_116 = getelementptr i8, i8* %_new_gep_114, i64 8
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %_ptr_to_int_420 = ptrtoint i64* %_allin_new_bt_117 to i64
  %_offset_above_rbp_423 = sub i64 %_ptr_to_int_420, %_local_end_to_int_
  %_pot_address_in_parent_stack_424 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_423
  %_cond1_425 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_426 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_427 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_428 = or i1 %_cond2_1_426, %_cond2_2_427
  %_cond4_429 = icmp ule i8* %_pot_address_in_parent_stack_424, %_parent_stack_end_ptr_
  %_cond1_n_cond2_430 = and i1 %_cond1_425, %_cond2_428
  %_cond1_n_cond2_cond3_431 = and i1 %_cond1_n_cond2_430, %_cond4_429
  br i1 %_cond1_n_cond2_cond3_431, label %252, label %253

; <label>:252:                                    ; preds = %250
  %_address_in_parent_stack_bt_433 = bitcast i8* %_pot_address_in_parent_stack_424 to i64*
  br label %253

; <label>:253:                                    ; preds = %250, %252
  %254 = phi i64* [ %_allin_new_bt_117, %250 ], [ %_address_in_parent_stack_bt_433, %252 ]
  %_new_load_434 = load i64, i64* %254
  %_new_gep_118 = getelementptr i8, i8* %_new_gep_116, i64 8
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %_ptr_to_int_435 = ptrtoint i64* %_allin_new_bt_119 to i64
  %_offset_above_rbp_438 = sub i64 %_ptr_to_int_435, %_local_end_to_int_
  %_pot_address_in_parent_stack_439 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_438
  %_cond1_440 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_441 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_442 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_443 = or i1 %_cond2_1_441, %_cond2_2_442
  %_cond4_444 = icmp ule i8* %_pot_address_in_parent_stack_439, %_parent_stack_end_ptr_
  %_cond1_n_cond2_445 = and i1 %_cond1_440, %_cond2_443
  %_cond1_n_cond2_cond3_446 = and i1 %_cond1_n_cond2_445, %_cond4_444
  br i1 %_cond1_n_cond2_cond3_446, label %255, label %256

; <label>:255:                                    ; preds = %253
  %_address_in_parent_stack_bt_448 = bitcast i8* %_pot_address_in_parent_stack_439 to i64*
  br label %256

; <label>:256:                                    ; preds = %253, %255
  %257 = phi i64* [ %_allin_new_bt_119, %253 ], [ %_address_in_parent_stack_bt_448, %255 ]
  %_new_load_449 = load i64, i64* %257
  %_new_gep_120 = getelementptr i8, i8* %_new_gep_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %_ptr_to_int_450 = ptrtoint i64* %_allin_new_bt_121 to i64
  %_offset_above_rbp_453 = sub i64 %_ptr_to_int_450, %_local_end_to_int_
  %_pot_address_in_parent_stack_454 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_453
  %_cond1_455 = icmp ugt i8* %_new_gep_120, %_local_stack_end_ptr_
  %_cond2_1_456 = icmp ugt i8* %_new_gep_120, %_parent_stack_end_ptr_
  %_cond2_2_457 = icmp ult i8* %_new_gep_120, %_parent_stack_start_ptr_
  %_cond2_458 = or i1 %_cond2_1_456, %_cond2_2_457
  %_cond4_459 = icmp ule i8* %_pot_address_in_parent_stack_454, %_parent_stack_end_ptr_
  %_cond1_n_cond2_460 = and i1 %_cond1_455, %_cond2_458
  %_cond1_n_cond2_cond3_461 = and i1 %_cond1_n_cond2_460, %_cond4_459
  br i1 %_cond1_n_cond2_cond3_461, label %258, label %259

; <label>:258:                                    ; preds = %256
  %_address_in_parent_stack_bt_463 = bitcast i8* %_pot_address_in_parent_stack_454 to i64*
  br label %259

; <label>:259:                                    ; preds = %256, %258
  %260 = phi i64* [ %_allin_new_bt_121, %256 ], [ %_address_in_parent_stack_bt_463, %258 ]
  %_new_load_464 = load i64, i64* %260
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %_ptr_to_int_465 = ptrtoint i64* %_allin_new_bt_123 to i64
  %_offset_above_rbp_468 = sub i64 %_ptr_to_int_465, %_local_end_to_int_
  %_pot_address_in_parent_stack_469 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_468
  %_cond1_470 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_471 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_472 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_473 = or i1 %_cond2_1_471, %_cond2_2_472
  %_cond4_474 = icmp ule i8* %_pot_address_in_parent_stack_469, %_parent_stack_end_ptr_
  %_cond1_n_cond2_475 = and i1 %_cond1_470, %_cond2_473
  %_cond1_n_cond2_cond3_476 = and i1 %_cond1_n_cond2_475, %_cond4_474
  br i1 %_cond1_n_cond2_cond3_476, label %261, label %262

; <label>:261:                                    ; preds = %259
  %_address_in_parent_stack_bt_478 = bitcast i8* %_pot_address_in_parent_stack_469 to i64*
  br label %262

; <label>:262:                                    ; preds = %259, %261
  %263 = phi i64* [ %_allin_new_bt_123, %259 ], [ %_address_in_parent_stack_bt_478, %261 ]
  %_new_load_479 = load i64, i64* %263
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %_ptr_to_int_480 = ptrtoint i64* %_allin_new_bt_125 to i64
  %_offset_above_rbp_483 = sub i64 %_ptr_to_int_480, %_local_end_to_int_
  %_pot_address_in_parent_stack_484 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_483
  %_cond1_485 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_486 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_487 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_488 = or i1 %_cond2_1_486, %_cond2_2_487
  %_cond4_489 = icmp ule i8* %_pot_address_in_parent_stack_484, %_parent_stack_end_ptr_
  %_cond1_n_cond2_490 = and i1 %_cond1_485, %_cond2_488
  %_cond1_n_cond2_cond3_491 = and i1 %_cond1_n_cond2_490, %_cond4_489
  br i1 %_cond1_n_cond2_cond3_491, label %264, label %265

; <label>:264:                                    ; preds = %262
  %_address_in_parent_stack_bt_493 = bitcast i8* %_pot_address_in_parent_stack_484 to i64*
  br label %265

; <label>:265:                                    ; preds = %262, %264
  %266 = phi i64* [ %_allin_new_bt_125, %262 ], [ %_address_in_parent_stack_bt_493, %264 ]
  %_new_load_494 = load i64, i64* %266
  %RSP_val.172 = load i64, i64* %XSP, !mcsema_real_eip !106
  %_new_gep_127 = getelementptr i8, i8* %_load_rsp_ptr_106, i64 -8
  %267 = sub i64 %RSP_val.172, 8, !mcsema_real_eip !106
  %_allin_new_bt_128 = bitcast i8* %_new_gep_127 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_128, !mcsema_real_eip !106
  store volatile i8* %_new_gep_127, i8** %_RSP_ptr_
  store i64 %267, i64* %XSP, !mcsema_real_eip !106
  %268 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.165, i64 %236, i64 %RDX_val.167, i64 %RCX_val.168, i64 %R8_val.169, i64 %R9_val.170, i64 %_new_load_359, i64 %_new_load_374, i64 %_new_load_389, i64 %_new_load_404, i64 %_new_load_419, i64 %_new_load_434, i64 %_new_load_449, i64 %_new_load_464, i64 %_new_load_479, i64 %_new_load_494)
  %_rsp_fix_163 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_164 = getelementptr i8, i8* %_rsp_fix_163, i64 8
  store i8* %_gep_fix_164, i8** %_RSP_ptr_
  store i64 %268, i64* %XAX, !mcsema_real_eip !106
  %_load_rbp_ptr_129 = load i8*, i8** %_RBP_ptr_
  %_new_gep_130 = getelementptr i8, i8* %_load_rbp_ptr_129, i64 -44
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %269 = ptrtoint i64* %_allin_new_bt_131 to i64, !mcsema_real_eip !107
  %270 = inttoptr i64 %269 to i32*, !mcsema_real_eip !107
  %_ptr_bt_497 = bitcast i32* %270 to i8*
  %_offset_above_rbp_498 = sub i64 %269, %_local_end_to_int_
  %_pot_address_in_parent_stack_499 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_498
  %_cond1_500 = icmp ugt i8* %_ptr_bt_497, %_local_stack_end_ptr_
  %_cond2_1_501 = icmp ugt i8* %_ptr_bt_497, %_parent_stack_end_ptr_
  %_cond2_2_502 = icmp ult i8* %_ptr_bt_497, %_parent_stack_start_ptr_
  %_cond2_503 = or i1 %_cond2_1_501, %_cond2_2_502
  %_cond4_504 = icmp ule i8* %_pot_address_in_parent_stack_499, %_parent_stack_end_ptr_
  %_cond1_n_cond2_505 = and i1 %_cond1_500, %_cond2_503
  %_cond1_n_cond2_cond3_506 = and i1 %_cond1_n_cond2_505, %_cond4_504
  br i1 %_cond1_n_cond2_cond3_506, label %271, label %272

; <label>:271:                                    ; preds = %265
  %_address_in_parent_stack_bt_508 = bitcast i8* %_pot_address_in_parent_stack_499 to i32*
  br label %272

; <label>:272:                                    ; preds = %265, %271
  %273 = phi i32* [ %270, %265 ], [ %_address_in_parent_stack_bt_508, %271 ]
  %_new_load_509 = load i32, i32* %273
  %274 = zext i32 %_new_load_509 to i64, !mcsema_real_eip !107
  store i64 %274, i64* %XCX, !mcsema_real_eip !107
  %_new_gep_133 = getelementptr i8, i8* %_load_rbp_ptr_129, i64 -52
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %EAX_val.176 = load i32, i32* %EAX.93, !mcsema_real_eip !108
  %275 = ptrtoint i64* %_allin_new_bt_134 to i64, !mcsema_real_eip !108
  %276 = inttoptr i64 %275 to i32*, !mcsema_real_eip !108
  store i32 %EAX_val.176, i32* %276, !mcsema_real_eip !108
  %ECX.177 = bitcast i64* %XCX to i32*, !mcsema_real_eip !109
  %ECX_val.178 = load i32, i32* %ECX.177, !mcsema_real_eip !109
  %277 = zext i32 %ECX_val.178 to i64, !mcsema_real_eip !109
  store i64 %277, i64* %XAX, !mcsema_real_eip !109
  %_load_rsp_ptr_135 = load i8*, i8** %_RSP_ptr_
  %RSP_val.179 = load i64, i64* %XSP, !mcsema_real_eip !110
  %_new_gep_136 = getelementptr i8, i8* %_load_rsp_ptr_135, i64 96
  %278 = add i64 96, %RSP_val.179, !mcsema_real_eip !110
  %_trans_p2i_137 = ptrtoint i8* %_new_gep_136 to i64
  %_trans_p2i_138 = ptrtoint i8* %_load_rsp_ptr_135 to i64
  %_trans_xor_139 = xor i64 %_trans_p2i_137, %_trans_p2i_138
  %279 = xor i64 %_trans_xor_139, 96, !mcsema_real_eip !110
  %280 = and i64 %279, 16, !mcsema_real_eip !110
  %281 = icmp ne i64 %280, 0, !mcsema_real_eip !110
  store i1 %281, i1* %AF, !mcsema_real_eip !110
  %282 = lshr i64 %278, 63, !mcsema_real_eip !110
  %283 = trunc i64 %282 to i1, !mcsema_real_eip !110
  store i1 %283, i1* %SF, !mcsema_real_eip !110
  %_trans_icmp_eq_141 = icmp eq i64 %_trans_p2i_137, 0
  store i1 %_trans_icmp_eq_141, i1* %ZF, !mcsema_real_eip !110
  %_trans_xor_143 = xor i64 %_trans_p2i_138, 96
  %284 = xor i64 %_trans_xor_143, -1, !mcsema_real_eip !110
  %285 = and i64 %284, %_trans_xor_139, !mcsema_real_eip !110
  %286 = lshr i64 %285, 63, !mcsema_real_eip !110
  %287 = and i64 %286, 1, !mcsema_real_eip !110
  %288 = trunc i64 %287 to i1, !mcsema_real_eip !110
  store i1 %288, i1* %OF, !mcsema_real_eip !110
  %_trans_trunc_148 = trunc i64 %_trans_p2i_137 to i8
  %289 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_148), !mcsema_real_eip !110
  %290 = trunc i8 %289 to i1, !mcsema_real_eip !110
  %291 = xor i1 %290, true, !mcsema_real_eip !110
  store i1 %291, i1* %PF, !mcsema_real_eip !110
  %_trans_icmp_ne_150 = icmp ne i64 %_trans_p2i_137, %RSP_val.179
  store i1 %_trans_icmp_ne_150, i1* %CF, !mcsema_real_eip !110
  store volatile i8* %_new_gep_136, i8** %_RSP_ptr_
  store i64 %278, i64* %XSP, !mcsema_real_eip !110
  %_allin_new_bt_152 = bitcast i8* %_new_gep_136 to i64*
  %_ptr_to_int_510 = ptrtoint i64* %_allin_new_bt_152 to i64
  %_offset_above_rbp_513 = sub i64 %_ptr_to_int_510, %_local_end_to_int_
  %_pot_address_in_parent_stack_514 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_513
  %_cond1_515 = icmp ugt i8* %_new_gep_136, %_local_stack_end_ptr_
  %_cond2_1_516 = icmp ugt i8* %_new_gep_136, %_parent_stack_end_ptr_
  %_cond2_2_517 = icmp ult i8* %_new_gep_136, %_parent_stack_start_ptr_
  %_cond2_518 = or i1 %_cond2_1_516, %_cond2_2_517
  %_cond4_519 = icmp ule i8* %_pot_address_in_parent_stack_514, %_parent_stack_end_ptr_
  %_cond1_n_cond2_520 = and i1 %_cond1_515, %_cond2_518
  %_cond1_n_cond2_cond3_521 = and i1 %_cond1_n_cond2_520, %_cond4_519
  br i1 %_cond1_n_cond2_cond3_521, label %292, label %293

; <label>:292:                                    ; preds = %272
  %_address_in_parent_stack_bt_523 = bitcast i8* %_pot_address_in_parent_stack_514 to i64*
  br label %293

; <label>:293:                                    ; preds = %272, %292
  %294 = phi i64* [ %_allin_new_bt_152, %272 ], [ %_address_in_parent_stack_bt_523, %292 ]
  %_new_load_524 = load i64, i64* %294
  %_new_int2ptr_ = inttoptr i64 %_new_load_524 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_524, i64* %XBP, !mcsema_real_eip !111
  %_new_gep_153 = getelementptr i8, i8* %_new_gep_136, i64 8
  %295 = add i64 %278, 8, !mcsema_real_eip !111
  store volatile i8* %_new_gep_153, i8** %_RSP_ptr_
  store i64 %295, i64* %XSP, !mcsema_real_eip !111
  %_new_gep_155 = getelementptr i8, i8* %_new_gep_153, i64 8
  %296 = add i64 %295, 8, !mcsema_real_eip !112
  %_allin_new_bt_156 = bitcast i8* %_new_gep_153 to i64*
  %_ptr_to_int_525 = ptrtoint i64* %_allin_new_bt_156 to i64
  %_offset_above_rbp_528 = sub i64 %_ptr_to_int_525, %_local_end_to_int_
  %_pot_address_in_parent_stack_529 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_528
  %_cond1_530 = icmp ugt i8* %_new_gep_153, %_local_stack_end_ptr_
  %_cond2_1_531 = icmp ugt i8* %_new_gep_153, %_parent_stack_end_ptr_
  %_cond2_2_532 = icmp ult i8* %_new_gep_153, %_parent_stack_start_ptr_
  %_cond2_533 = or i1 %_cond2_1_531, %_cond2_2_532
  %_cond4_534 = icmp ule i8* %_pot_address_in_parent_stack_529, %_parent_stack_end_ptr_
  %_cond1_n_cond2_535 = and i1 %_cond1_530, %_cond2_533
  %_cond1_n_cond2_cond3_536 = and i1 %_cond1_n_cond2_535, %_cond4_534
  br i1 %_cond1_n_cond2_cond3_536, label %297, label %298

; <label>:297:                                    ; preds = %293
  %_address_in_parent_stack_bt_538 = bitcast i8* %_pot_address_in_parent_stack_529 to i64*
  br label %298

; <label>:298:                                    ; preds = %293, %297
  %299 = phi i64* [ %_allin_new_bt_156, %293 ], [ %_address_in_parent_stack_bt_538, %297 ]
  %_new_load_539 = load i64, i64* %299
  store i64 %_new_load_539, i64* %XIP, !mcsema_real_eip !112
  store volatile i8* %_new_gep_155, i8** %_RSP_ptr_
  store i64 %296, i64* %XSP, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
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
!11 = !{i64 26}
!12 = !{i64 29}
!13 = !{i64 32}
!14 = !{i64 36}
!15 = !{i64 40}
!16 = !{i64 43}
!17 = !{i64 47}
!18 = !{i64 51}
!19 = !{i64 55}
!20 = !{i64 62}
!21 = !{i64 69}
!22 = !{i64 72}
!23 = !{i64 75}
!24 = !{i64 81}
!25 = !{i64 85}
!26 = !{i64 89}
!27 = !{i64 92}
!28 = !{i64 96}
!29 = !{i64 100}
!30 = !{i64 103}
!31 = !{i64 106}
!32 = !{i64 109}
!33 = !{i64 112}
!34 = !{i64 115}
!35 = !{i64 118}
!36 = !{i64 123}
!37 = !{i64 126}
!38 = !{i64 129}
!39 = !{i64 132}
!40 = !{i64 135}
!41 = !{i64 138}
!42 = !{i64 141}
!43 = !{i64 144}
!44 = !{i64 147}
!45 = !{i64 148}
!46 = !{i64 149}
!47 = !{i64 160}
!48 = !{i64 161}
!49 = !{i64 164}
!50 = !{i64 168}
!51 = !{i64 173}
!52 = !{i64 175}
!53 = !{i64 182}
!54 = !{i64 185}
!55 = !{i64 189}
!56 = !{i64 192}
!57 = !{i64 197}
!58 = !{i64 202}
!59 = !{i64 204}
!60 = !{i64 208}
!61 = !{i64 213}
!62 = !{i64 217}
!63 = !{i64 224}
!64 = !{i64 228}
!65 = !{i64 234}
!66 = !{i64 237}
!67 = !{i64 240}
!68 = !{i64 243}
!69 = !{i64 247}
!70 = !{i64 251}
!71 = !{i64 254}
!72 = !{i64 257}
!73 = !{i64 260}
!74 = !{i64 263}
!75 = !{i64 268}
!76 = !{i64 275}
!77 = !{i64 279}
!78 = !{i64 285}
!79 = !{i64 288}
!80 = !{i64 291}
!81 = !{i64 295}
!82 = !{i64 299}
!83 = !{i64 302}
!84 = !{i64 305}
!85 = !{i64 308}
!86 = !{i64 311}
!87 = !{i64 316}
!88 = !{i64 321}
!89 = !{i64 326}
!90 = !{i64 331}
!91 = !{i64 336}
!92 = !{i64 342}
!93 = !{i64 348}
!94 = !{i64 353}
!95 = !{i64 357}
!96 = !{i64 361}
!97 = !{i64 368}
!98 = !{i64 373}
!99 = !{i64 381}
!100 = !{i64 386}
!101 = !{i64 389}
!102 = !{i64 394}
!103 = !{i64 404}
!104 = !{i64 407}
!105 = !{i64 410}
!106 = !{i64 412}
!107 = !{i64 417}
!108 = !{i64 420}
!109 = !{i64 423}
!110 = !{i64 425}
!111 = !{i64 429}
!112 = !{i64 430}
