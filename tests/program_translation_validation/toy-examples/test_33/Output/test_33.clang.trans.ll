; ModuleID = 'Output/test_33.clang.trans.bc'
source_filename = "Output/test_33.clang.bc"
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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
module asm "  .globl sub_80;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_80(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [15 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64
@data_0x110 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"y\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\80\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 16, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 16, !mcsema_real_eip !4
  %6 = and i64 %5, 16, !mcsema_real_eip !4
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !4
  store i1 %7, i1* %AF, !mcsema_real_eip !4
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !4
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !4
  %11 = xor i1 %10, true, !mcsema_real_eip !4
  store i1 %11, i1* %PF, !mcsema_real_eip !4
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = lshr i64 %3, 63, !mcsema_real_eip !4
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !4
  store i1 %14, i1* %SF, !mcsema_real_eip !4
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 16, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %20 = add i64 %1, -8, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %22, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.7, -12, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.9 = load i32, i32* %ESI.8, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.9, i32* %25, !mcsema_real_eip !6
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !7
  %26 = add i64 %RBP_val.10, -8, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !7
  %29 = load i32, i32* %28, !mcsema_real_eip !7
  store i1 false, i1* %AF, !mcsema_real_eip !7
  %30 = trunc i32 %29 to i8, !mcsema_real_eip !7
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !7
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !7
  %33 = xor i1 %32, true, !mcsema_real_eip !7
  store i1 %33, i1* %PF, !mcsema_real_eip !7
  %34 = icmp eq i32 %29, 0, !mcsema_real_eip !7
  store i1 %34, i1* %ZF, !mcsema_real_eip !7
  %35 = lshr i32 %29, 31, !mcsema_real_eip !7
  %36 = trunc i32 %35 to i1, !mcsema_real_eip !7
  store i1 %36, i1* %SF, !mcsema_real_eip !7
  store i1 false, i1* %CF, !mcsema_real_eip !7
  store i1 false, i1* %OF, !mcsema_real_eip !7
  %37 = icmp eq i1 %34, false, !mcsema_real_eip !8
  br i1 %37, label %block_0x26, label %block_0x18, !mcsema_real_eip !8

block_0x18:                                       ; preds = %block_0x0
  %38 = add i64 %RBP_val.10, -12, !mcsema_real_eip !9
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !9
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !9
  %41 = load i32, i32* %40, !mcsema_real_eip !9
  %42 = zext i32 %41 to i64, !mcsema_real_eip !9
  store i64 %42, i64* %XAX, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !10
  %43 = add i32 1, %EAX_val.13, !mcsema_real_eip !10
  %44 = xor i32 %43, %EAX_val.13, !mcsema_real_eip !10
  %45 = xor i32 %44, 1, !mcsema_real_eip !10
  %46 = and i32 %45, 16, !mcsema_real_eip !10
  %47 = icmp ne i32 %46, 0, !mcsema_real_eip !10
  store i1 %47, i1* %AF, !mcsema_real_eip !10
  %48 = lshr i32 %43, 31, !mcsema_real_eip !10
  %49 = trunc i32 %48 to i1, !mcsema_real_eip !10
  store i1 %49, i1* %SF, !mcsema_real_eip !10
  %50 = icmp eq i32 %43, 0, !mcsema_real_eip !10
  store i1 %50, i1* %ZF, !mcsema_real_eip !10
  %51 = xor i32 %EAX_val.13, 1, !mcsema_real_eip !10
  %52 = xor i32 %51, -1, !mcsema_real_eip !10
  %53 = and i32 %52, %44, !mcsema_real_eip !10
  %54 = lshr i32 %53, 31, !mcsema_real_eip !10
  %55 = and i32 %54, 1, !mcsema_real_eip !10
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !10
  store i1 %56, i1* %OF, !mcsema_real_eip !10
  %57 = trunc i32 %43 to i8, !mcsema_real_eip !10
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !10
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !10
  %60 = xor i1 %59, true, !mcsema_real_eip !10
  store i1 %60, i1* %PF, !mcsema_real_eip !10
  %61 = icmp ult i32 %43, %EAX_val.13, !mcsema_real_eip !10
  store i1 %61, i1* %CF, !mcsema_real_eip !10
  %62 = zext i32 %43 to i64, !mcsema_real_eip !10
  store i64 %62, i64* %XAX, !mcsema_real_eip !10
  %63 = add i64 %RBP_val.10, -4, !mcsema_real_eip !11
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !11
  %EAX_val.16 = load i32, i32* %EAX.12, !mcsema_real_eip !11
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !11
  store i32 %EAX_val.16, i32* %65, !mcsema_real_eip !11
  br label %block_0x70, !mcsema_real_eip !12

block_0x26:                                       ; preds = %block_0x0
  %66 = add i64 %RBP_val.10, -12, !mcsema_real_eip !13
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !13
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !13
  %69 = load i32, i32* %68, !mcsema_real_eip !13
  store i1 false, i1* %AF, !mcsema_real_eip !13
  %70 = trunc i32 %69 to i8, !mcsema_real_eip !13
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !13
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !13
  %73 = xor i1 %72, true, !mcsema_real_eip !13
  store i1 %73, i1* %PF, !mcsema_real_eip !13
  %74 = icmp eq i32 %69, 0, !mcsema_real_eip !13
  store i1 %74, i1* %ZF, !mcsema_real_eip !13
  %75 = lshr i32 %69, 31, !mcsema_real_eip !13
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !13
  store i1 %76, i1* %SF, !mcsema_real_eip !13
  store i1 false, i1* %CF, !mcsema_real_eip !13
  store i1 false, i1* %OF, !mcsema_real_eip !13
  %77 = icmp eq i1 %74, false, !mcsema_real_eip !14
  br i1 %77, label %block_0x4a, label %block_0x30, !mcsema_real_eip !14

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %XSI, !mcsema_real_eip !15
  %78 = load i32, i32* %28, !mcsema_real_eip !16
  %79 = zext i32 %78 to i64, !mcsema_real_eip !16
  store i64 %79, i64* %XAX, !mcsema_real_eip !16
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !17
  %80 = sub i32 %EAX_val.20, 1, !mcsema_real_eip !17
  %81 = xor i32 %80, %EAX_val.20, !mcsema_real_eip !17
  %82 = xor i32 %81, 1, !mcsema_real_eip !17
  %83 = and i32 %82, 16, !mcsema_real_eip !17
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !17
  store i1 %84, i1* %AF, !mcsema_real_eip !17
  %85 = trunc i32 %80 to i8, !mcsema_real_eip !17
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !17
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !17
  %88 = xor i1 %87, true, !mcsema_real_eip !17
  store i1 %88, i1* %PF, !mcsema_real_eip !17
  %89 = icmp eq i32 %80, 0, !mcsema_real_eip !17
  store i1 %89, i1* %ZF, !mcsema_real_eip !17
  %90 = lshr i32 %80, 31, !mcsema_real_eip !17
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !17
  store i1 %91, i1* %SF, !mcsema_real_eip !17
  %92 = icmp ult i32 %EAX_val.20, 1, !mcsema_real_eip !17
  store i1 %92, i1* %CF, !mcsema_real_eip !17
  %93 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !17
  %94 = and i32 %93, %81, !mcsema_real_eip !17
  %95 = lshr i32 %94, 31, !mcsema_real_eip !17
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !17
  store i1 %96, i1* %OF, !mcsema_real_eip !17
  %97 = zext i32 %80 to i64, !mcsema_real_eip !17
  store i64 %97, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.22 = load i32, i32* %EAX.19, !mcsema_real_eip !18
  %98 = zext i32 %EAX_val.22 to i64, !mcsema_real_eip !18
  store i64 %98, i64* %XDI, !mcsema_real_eip !18
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !19
  %99 = sub i64 %RSP_val.23, 8, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !19
  store i64 -4981261766360305936, i64* %100, !mcsema_real_eip !19
  store i64 %99, i64* %XSP, !mcsema_real_eip !19
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !19
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !20
  %101 = add i64 %RBP_val.24, -4, !mcsema_real_eip !20
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !20
  %EAX_val.26 = load i32, i32* %EAX.19, !mcsema_real_eip !20
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.26, i32* %103, !mcsema_real_eip !20
  br label %block_0x70, !mcsema_real_eip !21

block_0x4a:                                       ; preds = %block_0x26
  %104 = load i32, i32* %28, !mcsema_real_eip !22
  %105 = zext i32 %104 to i64, !mcsema_real_eip !22
  store i64 %105, i64* %XAX, !mcsema_real_eip !22
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !23
  %106 = sub i32 %EAX_val.29, 1, !mcsema_real_eip !23
  %107 = xor i32 %106, %EAX_val.29, !mcsema_real_eip !23
  %108 = xor i32 %107, 1, !mcsema_real_eip !23
  %109 = and i32 %108, 16, !mcsema_real_eip !23
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !23
  store i1 %110, i1* %AF, !mcsema_real_eip !23
  %111 = trunc i32 %106 to i8, !mcsema_real_eip !23
  %112 = call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !23
  %113 = trunc i8 %112 to i1, !mcsema_real_eip !23
  %114 = xor i1 %113, true, !mcsema_real_eip !23
  store i1 %114, i1* %PF, !mcsema_real_eip !23
  %115 = icmp eq i32 %106, 0, !mcsema_real_eip !23
  store i1 %115, i1* %ZF, !mcsema_real_eip !23
  %116 = lshr i32 %106, 31, !mcsema_real_eip !23
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !23
  store i1 %117, i1* %SF, !mcsema_real_eip !23
  %118 = icmp ult i32 %EAX_val.29, 1, !mcsema_real_eip !23
  store i1 %118, i1* %CF, !mcsema_real_eip !23
  %119 = xor i32 %EAX_val.29, 1, !mcsema_real_eip !23
  %120 = and i32 %119, %107, !mcsema_real_eip !23
  %121 = lshr i32 %120, 31, !mcsema_real_eip !23
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !23
  store i1 %122, i1* %OF, !mcsema_real_eip !23
  %123 = zext i32 %106 to i64, !mcsema_real_eip !23
  store i64 %123, i64* %XAX, !mcsema_real_eip !23
  %124 = load i32, i32* %28, !mcsema_real_eip !24
  %125 = zext i32 %124 to i64, !mcsema_real_eip !24
  store i64 %125, i64* %XDI, !mcsema_real_eip !24
  %126 = load i32, i32* %68, !mcsema_real_eip !25
  %127 = zext i32 %126 to i64, !mcsema_real_eip !25
  store i64 %127, i64* %XCX, !mcsema_real_eip !25
  %ECX.32 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.33 = load i32, i32* %ECX.32, !mcsema_real_eip !26
  %128 = sub i32 %ECX_val.33, 1, !mcsema_real_eip !26
  %129 = xor i32 %128, %ECX_val.33, !mcsema_real_eip !26
  %130 = xor i32 %129, 1, !mcsema_real_eip !26
  %131 = and i32 %130, 16, !mcsema_real_eip !26
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !26
  store i1 %132, i1* %AF, !mcsema_real_eip !26
  %133 = trunc i32 %128 to i8, !mcsema_real_eip !26
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !26
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !26
  %136 = xor i1 %135, true, !mcsema_real_eip !26
  store i1 %136, i1* %PF, !mcsema_real_eip !26
  %137 = icmp eq i32 %128, 0, !mcsema_real_eip !26
  store i1 %137, i1* %ZF, !mcsema_real_eip !26
  %138 = lshr i32 %128, 31, !mcsema_real_eip !26
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !26
  store i1 %139, i1* %SF, !mcsema_real_eip !26
  %140 = icmp ult i32 %ECX_val.33, 1, !mcsema_real_eip !26
  store i1 %140, i1* %CF, !mcsema_real_eip !26
  %141 = xor i32 %ECX_val.33, 1, !mcsema_real_eip !26
  %142 = and i32 %141, %129, !mcsema_real_eip !26
  %143 = lshr i32 %142, 31, !mcsema_real_eip !26
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !26
  store i1 %144, i1* %OF, !mcsema_real_eip !26
  %145 = zext i32 %128 to i64, !mcsema_real_eip !26
  store i64 %145, i64* %XCX, !mcsema_real_eip !26
  %ECX_val.35 = load i32, i32* %ECX.32, !mcsema_real_eip !27
  %146 = zext i32 %ECX_val.35 to i64, !mcsema_real_eip !27
  store i64 %146, i64* %XSI, !mcsema_real_eip !27
  %147 = add i64 %RBP_val.10, -16, !mcsema_real_eip !28
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !28
  %EAX_val.38 = load i32, i32* %EAX.28, !mcsema_real_eip !28
  %149 = inttoptr i64 %147 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.38, i32* %149, !mcsema_real_eip !28
  %RSP_val.39 = load i64, i64* %XSP, !mcsema_real_eip !29
  %150 = sub i64 %RSP_val.39, 8, !mcsema_real_eip !29
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !29
  store i64 -4981261766360305936, i64* %151, !mcsema_real_eip !29
  store i64 %150, i64* %XSP, !mcsema_real_eip !29
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !29
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !30
  %152 = add i64 %RBP_val.40, -16, !mcsema_real_eip !30
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !30
  %154 = inttoptr i64 %152 to i32*, !mcsema_real_eip !30
  %155 = load i32, i32* %154, !mcsema_real_eip !30
  %156 = zext i32 %155 to i64, !mcsema_real_eip !30
  store i64 %156, i64* %XDI, !mcsema_real_eip !30
  %EAX_val.42 = load i32, i32* %EAX.28, !mcsema_real_eip !31
  %157 = zext i32 %EAX_val.42 to i64, !mcsema_real_eip !31
  store i64 %157, i64* %XSI, !mcsema_real_eip !31
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !32
  %158 = sub i64 %RSP_val.43, 8, !mcsema_real_eip !32
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !32
  store i64 -4981261766360305936, i64* %159, !mcsema_real_eip !32
  store i64 %158, i64* %XSP, !mcsema_real_eip !32
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !32
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !33
  %160 = add i64 %RBP_val.44, -4, !mcsema_real_eip !33
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !33
  %EAX_val.46 = load i32, i32* %EAX.28, !mcsema_real_eip !33
  %162 = inttoptr i64 %160 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.46, i32* %162, !mcsema_real_eip !33
  br label %block_0x70, !mcsema_real_eip !34

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !34
  %163 = add i64 %RBP_val.47, -4, !mcsema_real_eip !34
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !34
  %165 = inttoptr i64 %163 to i32*, !mcsema_real_eip !34
  %166 = load i32, i32* %165, !mcsema_real_eip !34
  %167 = zext i32 %166 to i64, !mcsema_real_eip !34
  store i64 %167, i64* %XAX, !mcsema_real_eip !34
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !35
  %168 = add i64 16, %RSP_val.48, !mcsema_real_eip !35
  %169 = xor i64 %168, %RSP_val.48, !mcsema_real_eip !35
  %170 = xor i64 %169, 16, !mcsema_real_eip !35
  %171 = and i64 %170, 16, !mcsema_real_eip !35
  %172 = icmp ne i64 %171, 0, !mcsema_real_eip !35
  store i1 %172, i1* %AF, !mcsema_real_eip !35
  %173 = lshr i64 %168, 63, !mcsema_real_eip !35
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !35
  store i1 %174, i1* %SF, !mcsema_real_eip !35
  %175 = icmp eq i64 %168, 0, !mcsema_real_eip !35
  store i1 %175, i1* %ZF, !mcsema_real_eip !35
  %176 = xor i64 %RSP_val.48, 16, !mcsema_real_eip !35
  %177 = xor i64 %176, -1, !mcsema_real_eip !35
  %178 = and i64 %177, %169, !mcsema_real_eip !35
  %179 = lshr i64 %178, 63, !mcsema_real_eip !35
  %180 = and i64 %179, 1, !mcsema_real_eip !35
  %181 = trunc i64 %180 to i1, !mcsema_real_eip !35
  store i1 %181, i1* %OF, !mcsema_real_eip !35
  %182 = trunc i64 %168 to i8, !mcsema_real_eip !35
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !35
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !35
  %185 = xor i1 %184, true, !mcsema_real_eip !35
  store i1 %185, i1* %PF, !mcsema_real_eip !35
  %186 = icmp ult i64 %168, %RSP_val.48, !mcsema_real_eip !35
  store i1 %186, i1* %CF, !mcsema_real_eip !35
  store i64 %168, i64* %XSP, !mcsema_real_eip !35
  %187 = inttoptr i64 %168 to i64*, !mcsema_real_eip !36
  %188 = load i64, i64* %187, !mcsema_real_eip !36
  store i64 %188, i64* %XBP, !mcsema_real_eip !36
  %189 = add i64 %168, 8, !mcsema_real_eip !36
  store i64 %189, i64* %XSP, !mcsema_real_eip !36
  %190 = add i64 %189, 8, !mcsema_real_eip !37
  %191 = inttoptr i64 %189 to i64*, !mcsema_real_eip !37
  %192 = load i64, i64* %191, !mcsema_real_eip !37
  store i64 %192, i64* %XIP, !mcsema_real_eip !37
  store i64 %190, i64* %XSP, !mcsema_real_eip !37
  ret void, !mcsema_real_eip !37
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_80(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !38
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !38
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !38
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !38
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !38
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !38
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !38
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !38
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !38
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !38
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !38
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !38
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !38
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !38
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !38
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !38
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !38
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !38
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !38
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !38
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !38
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !38
  br label %block_0x80, !mcsema_real_eip !38

block_0x80:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !38
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !38
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !39
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !40
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.54, 32, !mcsema_real_eip !40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !40
  %4 = and i64 %3, 16, !mcsema_real_eip !40
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !40
  store i1 %5, i1* %AF, !mcsema_real_eip !40
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !40
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !40
  %8 = xor i1 %7, true, !mcsema_real_eip !40
  store i1 %8, i1* %PF, !mcsema_real_eip !40
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !40
  %9 = lshr i64 %2, 63, !mcsema_real_eip !40
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !40
  store i1 %10, i1* %SF, !mcsema_real_eip !40
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !40
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !40
  %12 = lshr i64 %11, 63, !mcsema_real_eip !40
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !40
  store i1 %13, i1* %OF, !mcsema_real_eip !40
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !40
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !41
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !41
  store i32 0, i32* %15, !mcsema_real_eip !41
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.57 = bitcast i64* %XDI to i32*, !mcsema_real_eip !42
  %EDI_val.58 = load i32, i32* %EDI.57, !mcsema_real_eip !42
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !42
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !42
  store i32 %EDI_val.58, i32* %17, !mcsema_real_eip !42
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.60 = load i64, i64* %XSI, !mcsema_real_eip !43
  store i64 %RSI_val.60, i64* %_allin_new_bt_21, !mcsema_real_eip !43
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !44
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !44
  %20 = load i32, i32* %19, !mcsema_real_eip !44
  %21 = sub i32 %20, 2, !mcsema_real_eip !44
  %22 = xor i32 %21, %20, !mcsema_real_eip !44
  %23 = xor i32 %22, 2, !mcsema_real_eip !44
  %24 = and i32 %23, 16, !mcsema_real_eip !44
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !44
  store i1 %25, i1* %AF, !mcsema_real_eip !44
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !44
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !44
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !44
  %29 = xor i1 %28, true, !mcsema_real_eip !44
  store i1 %29, i1* %PF, !mcsema_real_eip !44
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !44
  store i1 %30, i1* %ZF, !mcsema_real_eip !44
  %31 = lshr i32 %21, 31, !mcsema_real_eip !44
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !44
  store i1 %32, i1* %SF, !mcsema_real_eip !44
  %33 = icmp ult i32 %20, 2, !mcsema_real_eip !44
  store i1 %33, i1* %CF, !mcsema_real_eip !44
  %34 = xor i32 %20, 2, !mcsema_real_eip !44
  %35 = and i32 %34, %22, !mcsema_real_eip !44
  %36 = lshr i32 %35, 31, !mcsema_real_eip !44
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !44
  store i1 %37, i1* %OF, !mcsema_real_eip !44
  %38 = icmp eq i1 %30, false, !mcsema_real_eip !45
  br i1 %38, label %block_0xb5, label %block_0xa0, !mcsema_real_eip !45

block_0xa0:                                       ; preds = %block_0x80
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %39 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !46
  store i64 %39, i64* %XAX, !mcsema_real_eip !46
  %40 = add i64 %39, 8, !mcsema_real_eip !47
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !47
  %42 = load i64, i64* %41, !mcsema_real_eip !47
  store i64 %42, i64* %XDI, !mcsema_real_eip !47
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !48
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %43 = sub i64 %RSP_val.65, 8, !mcsema_real_eip !48
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !48
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %43, i64* %XSP, !mcsema_real_eip !48
  %44 = call x86_64_sysvcc i64 @_atoi(i64 %42)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %44, i64* %XAX, !mcsema_real_eip !48
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !49
  %45 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !49
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.68, i32* %46, !mcsema_real_eip !49
  br label %block_0xc2, !mcsema_real_eip !50

block_0xb5:                                       ; preds = %block_0x80
  store i64 8, i64* %XAX, !mcsema_real_eip !51
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !52
  %47 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !52
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.71, i32* %48, !mcsema_real_eip !52
  br label %block_0xc2, !mcsema_real_eip !53

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !54
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !54
  %51 = load i32, i32* %50, !mcsema_real_eip !54
  %52 = zext i32 %51 to i64, !mcsema_real_eip !54
  store i64 %52, i64* %XAX, !mcsema_real_eip !54
  store i64 3, i64* %XDI, !mcsema_real_eip !55
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.74 = bitcast i64* %XAX to i32*, !mcsema_real_eip !56
  %EAX_val.75 = load i32, i32* %EAX.74, !mcsema_real_eip !56
  %53 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !56
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.75, i32* %54, !mcsema_real_eip !56
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -20
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !57
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !57
  %57 = load i32, i32* %56, !mcsema_real_eip !57
  %58 = zext i32 %57 to i64, !mcsema_real_eip !57
  store i64 %58, i64* %XSI, !mcsema_real_eip !57
  %59 = load i32, i32* %56, !mcsema_real_eip !58
  %60 = zext i32 %59 to i64, !mcsema_real_eip !58
  store i64 %60, i64* %XAX, !mcsema_real_eip !58
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -28
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %ESI.79 = bitcast i64* %XSI to i32*, !mcsema_real_eip !59
  %ESI_val.80 = load i32, i32* %ESI.79, !mcsema_real_eip !59
  %61 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !59
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !59
  store i32 %ESI_val.80, i32* %62, !mcsema_real_eip !59
  %EAX_val.82 = load i32, i32* %EAX.74, !mcsema_real_eip !60
  %63 = zext i32 %EAX_val.82 to i64, !mcsema_real_eip !60
  store i64 %63, i64* %XSI, !mcsema_real_eip !60
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %RSP_val.83 = load i64, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_53 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 -8
  %64 = sub i64 %RSP_val.83, 8, !mcsema_real_eip !61
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_54, !mcsema_real_eip !61
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_
  store i64 %64, i64* %XSP, !mcsema_real_eip !61
  %_load_rbp_ptr_106 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_53, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_106)
  %_rsp_fix_108 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_109 = getelementptr i8, i8* %_rsp_fix_108, i64 8
  store i8* %_gep_fix_109, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, !mcsema_real_eip !62
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -28
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %65 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !63
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !63
  %67 = load i32, i32* %66, !mcsema_real_eip !63
  %68 = zext i32 %67 to i64, !mcsema_real_eip !63
  store i64 %68, i64* %XSI, !mcsema_real_eip !63
  %EAX_val.86 = load i32, i32* %EAX.74, !mcsema_real_eip !64
  %69 = zext i32 %EAX_val.86 to i64, !mcsema_real_eip !64
  store i64 %69, i64* %XDX, !mcsema_real_eip !64
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !65
  store i8 0, i8* %AL.87, !mcsema_real_eip !65
  %RCX_val.91 = load i64, i64* %XCX, !mcsema_real_eip !66
  %R8_val.92 = load i64, i64* %R8, !mcsema_real_eip !66
  %R9_val.93 = load i64, i64* %R9, !mcsema_real_eip !66
  %_allin_new_bt_59 = bitcast i8* %_gep_fix_109 to i64*
  %70 = load i64, i64* %_allin_new_bt_59, !mcsema_real_eip !66
  %_new_gep_60 = getelementptr i8, i8* %_gep_fix_109, i64 8
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %71 = load i64, i64* %_allin_new_bt_61, !mcsema_real_eip !66
  %_new_gep_62 = getelementptr i8, i8* %_new_gep_60, i64 8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %72 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !66
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_62, i64 8
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %73 = load i64, i64* %_allin_new_bt_65, !mcsema_real_eip !66
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %74 = load i64, i64* %_allin_new_bt_67, !mcsema_real_eip !66
  %_new_gep_68 = getelementptr i8, i8* %_new_gep_66, i64 8
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %75 = load i64, i64* %_allin_new_bt_69, !mcsema_real_eip !66
  %_new_gep_70 = getelementptr i8, i8* %_new_gep_68, i64 8
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %76 = load i64, i64* %_allin_new_bt_71, !mcsema_real_eip !66
  %_new_gep_72 = getelementptr i8, i8* %_new_gep_70, i64 8
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %77 = load i64, i64* %_allin_new_bt_73, !mcsema_real_eip !66
  %_new_gep_74 = getelementptr i8, i8* %_new_gep_72, i64 8
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %78 = load i64, i64* %_allin_new_bt_75, !mcsema_real_eip !66
  %_new_gep_76 = getelementptr i8, i8* %_new_gep_74, i64 8
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %79 = load i64, i64* %_allin_new_bt_77, !mcsema_real_eip !66
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !66
  %_new_gep_79 = getelementptr i8, i8* %_gep_fix_109, i64 -8
  %80 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !66
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_80, !mcsema_real_eip !66
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_
  store i64 %80, i64* %XSP, !mcsema_real_eip !66
  %81 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %68, i64 %69, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79)
  %_rsp_fix_110 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_111 = getelementptr i8, i8* %_rsp_fix_110, i64 8
  store i8* %_gep_fix_111, i8** %_RSP_ptr_
  store i64 %81, i64* %XAX, !mcsema_real_eip !66
  %EDX.96 = bitcast i64* %XDX to i32*, !mcsema_real_eip !67
  %EDX_val.97 = load i32, i32* %EDX.96, !mcsema_real_eip !67
  store i1 false, i1* %CF, !mcsema_real_eip !67
  store i1 false, i1* %OF, !mcsema_real_eip !67
  store i1 false, i1* %SF, !mcsema_real_eip !67
  store i1 true, i1* %ZF, !mcsema_real_eip !67
  store i1 true, i1* %PF, !mcsema_real_eip !67
  store i1 undef, i1* %AF, !mcsema_real_eip !67
  store i64 0, i64* %XDX, !mcsema_real_eip !67
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -32
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %EAX_val.102 = load i32, i32* %EAX.74, !mcsema_real_eip !68
  %82 = ptrtoint i64* %_allin_new_bt_83 to i64, !mcsema_real_eip !68
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.102, i32* %83, !mcsema_real_eip !68
  %EDX_val.104 = load i32, i32* %EDX.96, !mcsema_real_eip !69
  %84 = zext i32 %EDX_val.104 to i64, !mcsema_real_eip !69
  store i64 %84, i64* %XAX, !mcsema_real_eip !69
  %_load_rsp_ptr_84 = load i8*, i8** %_RSP_ptr_
  %RSP_val.105 = load i64, i64* %XSP, !mcsema_real_eip !70
  %_new_gep_85 = getelementptr i8, i8* %_load_rsp_ptr_84, i64 32
  %85 = add i64 32, %RSP_val.105, !mcsema_real_eip !70
  %_trans_p2i_86 = ptrtoint i8* %_new_gep_85 to i64
  %_trans_p2i_87 = ptrtoint i8* %_load_rsp_ptr_84 to i64
  %_trans_xor_88 = xor i64 %_trans_p2i_86, %_trans_p2i_87
  %86 = xor i64 %_trans_xor_88, 32, !mcsema_real_eip !70
  %87 = and i64 %86, 16, !mcsema_real_eip !70
  %88 = icmp ne i64 %87, 0, !mcsema_real_eip !70
  store i1 %88, i1* %AF, !mcsema_real_eip !70
  %89 = lshr i64 %85, 63, !mcsema_real_eip !70
  %90 = trunc i64 %89 to i1, !mcsema_real_eip !70
  store i1 %90, i1* %SF, !mcsema_real_eip !70
  %_trans_icmp_eq_90 = icmp eq i64 %_trans_p2i_86, 0
  store i1 %_trans_icmp_eq_90, i1* %ZF, !mcsema_real_eip !70
  %_trans_xor_92 = xor i64 %_trans_p2i_87, 32
  %91 = xor i64 %_trans_xor_92, -1, !mcsema_real_eip !70
  %92 = and i64 %91, %_trans_xor_88, !mcsema_real_eip !70
  %93 = lshr i64 %92, 63, !mcsema_real_eip !70
  %94 = and i64 %93, 1, !mcsema_real_eip !70
  %95 = trunc i64 %94 to i1, !mcsema_real_eip !70
  store i1 %95, i1* %OF, !mcsema_real_eip !70
  %_trans_trunc_97 = trunc i64 %_trans_p2i_86 to i8
  %96 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_97), !mcsema_real_eip !70
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !70
  %98 = xor i1 %97, true, !mcsema_real_eip !70
  store i1 %98, i1* %PF, !mcsema_real_eip !70
  %_trans_icmp_ne_99 = icmp ne i64 %_trans_p2i_86, %RSP_val.105
  store i1 %_trans_icmp_ne_99, i1* %CF, !mcsema_real_eip !70
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %85, i64* %XSP, !mcsema_real_eip !70
  %_allin_new_bt_101 = bitcast i8* %_new_gep_85 to i64*
  %99 = load i64, i64* %_allin_new_bt_101, !mcsema_real_eip !71
  %_new_int2ptr_ = inttoptr i64 %99 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %99, i64* %XBP, !mcsema_real_eip !71
  %_new_gep_102 = getelementptr i8, i8* %_new_gep_85, i64 8
  %100 = add i64 %85, 8, !mcsema_real_eip !71
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_
  store i64 %100, i64* %XSP, !mcsema_real_eip !71
  %_new_gep_104 = getelementptr i8, i8* %_new_gep_102, i64 8
  %101 = add i64 %100, 8, !mcsema_real_eip !72
  %_allin_new_bt_105 = bitcast i8* %_new_gep_102 to i64*
  %102 = load i64, i64* %_allin_new_bt_105, !mcsema_real_eip !72
  store i64 %102, i64* %XIP, !mcsema_real_eip !72
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_
  store i64 %101, i64* %XSP, !mcsema_real_eip !72
  ret void, !mcsema_real_eip !72
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
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
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.3, 16, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %4 = and i64 %3, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !4
  %8 = xor i1 %7, true, !mcsema_real_eip !4
  store i1 %8, i1* %PF, !mcsema_real_eip !4
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !4
  %9 = lshr i64 %2, 63, !mcsema_real_eip !4
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !4
  store i1 %10, i1* %SF, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.9 = load i32, i32* %ESI.8, !mcsema_real_eip !6
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.9, i32* %17, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x0, %20
  %22 = phi i32* [ %19, %block_0x0 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  store i1 false, i1* %AF, !mcsema_real_eip !7
  %23 = trunc i32 %_new_load_ to i8, !mcsema_real_eip !7
  %24 = call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !7
  %25 = trunc i8 %24 to i1, !mcsema_real_eip !7
  %26 = xor i1 %25, true, !mcsema_real_eip !7
  store i1 %26, i1* %PF, !mcsema_real_eip !7
  %27 = icmp eq i32 %_new_load_, 0, !mcsema_real_eip !7
  store i1 %27, i1* %ZF, !mcsema_real_eip !7
  %28 = lshr i32 %_new_load_, 31, !mcsema_real_eip !7
  %29 = trunc i32 %28 to i1, !mcsema_real_eip !7
  store i1 %29, i1* %SF, !mcsema_real_eip !7
  store i1 false, i1* %CF, !mcsema_real_eip !7
  store i1 false, i1* %OF, !mcsema_real_eip !7
  %30 = icmp eq i1 %27, false, !mcsema_real_eip !8
  br i1 %30, label %block_0x26, label %block_0x18, !mcsema_real_eip !8

block_0x18:                                       ; preds = %21
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %31 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !9
  %_ptr_bt_101 = bitcast i32* %32 to i8*
  %_offset_above_rbp_102 = sub i64 %31, %_local_end_to_int_
  %_pot_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_cond1_104 = icmp ugt i8* %_ptr_bt_101, %_local_stack_end_ptr_
  %_cond2_1_105 = icmp ugt i8* %_ptr_bt_101, %_parent_stack_end_ptr_
  %_cond2_2_106 = icmp ult i8* %_ptr_bt_101, %_parent_stack_start_ptr_
  %_cond2_107 = or i1 %_cond2_1_105, %_cond2_2_106
  %_cond4_108 = icmp ule i8* %_pot_address_in_parent_stack_103, %_parent_stack_end_ptr_
  %_cond1_n_cond2_109 = and i1 %_cond1_104, %_cond2_107
  %_cond1_n_cond2_cond3_110 = and i1 %_cond1_n_cond2_109, %_cond4_108
  br i1 %_cond1_n_cond2_cond3_110, label %33, label %34

; <label>:33:                                     ; preds = %block_0x18
  %_address_in_parent_stack_bt_112 = bitcast i8* %_pot_address_in_parent_stack_103 to i32*
  br label %34

; <label>:34:                                     ; preds = %block_0x18, %33
  %35 = phi i32* [ %32, %block_0x18 ], [ %_address_in_parent_stack_bt_112, %33 ]
  %_new_load_113 = load i32, i32* %35
  %36 = zext i32 %_new_load_113 to i64, !mcsema_real_eip !9
  store i64 %36, i64* %XAX, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !10
  %37 = add i32 1, %EAX_val.13, !mcsema_real_eip !10
  %38 = xor i32 %37, %EAX_val.13, !mcsema_real_eip !10
  %39 = xor i32 %38, 1, !mcsema_real_eip !10
  %40 = and i32 %39, 16, !mcsema_real_eip !10
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !10
  store i1 %41, i1* %AF, !mcsema_real_eip !10
  %42 = lshr i32 %37, 31, !mcsema_real_eip !10
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !10
  store i1 %43, i1* %SF, !mcsema_real_eip !10
  %44 = icmp eq i32 %37, 0, !mcsema_real_eip !10
  store i1 %44, i1* %ZF, !mcsema_real_eip !10
  %45 = xor i32 %EAX_val.13, 1, !mcsema_real_eip !10
  %46 = xor i32 %45, -1, !mcsema_real_eip !10
  %47 = and i32 %46, %38, !mcsema_real_eip !10
  %48 = lshr i32 %47, 31, !mcsema_real_eip !10
  %49 = and i32 %48, 1, !mcsema_real_eip !10
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !10
  store i1 %50, i1* %OF, !mcsema_real_eip !10
  %51 = trunc i32 %37 to i8, !mcsema_real_eip !10
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !10
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !10
  %54 = xor i1 %53, true, !mcsema_real_eip !10
  store i1 %54, i1* %PF, !mcsema_real_eip !10
  %55 = icmp ult i32 %37, %EAX_val.13, !mcsema_real_eip !10
  store i1 %55, i1* %CF, !mcsema_real_eip !10
  %56 = zext i32 %37 to i64, !mcsema_real_eip !10
  store i64 %56, i64* %XAX, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -4
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %EAX_val.16 = load i32, i32* %EAX.12, !mcsema_real_eip !11
  %57 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !11
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !11
  store i32 %EAX_val.16, i32* %58, !mcsema_real_eip !11
  br label %block_0x70, !mcsema_real_eip !12

block_0x26:                                       ; preds = %21
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %59 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !13
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !13
  %_ptr_bt_116 = bitcast i32* %60 to i8*
  %_offset_above_rbp_117 = sub i64 %59, %_local_end_to_int_
  %_pot_address_in_parent_stack_118 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_cond1_119 = icmp ugt i8* %_ptr_bt_116, %_local_stack_end_ptr_
  %_cond2_1_120 = icmp ugt i8* %_ptr_bt_116, %_parent_stack_end_ptr_
  %_cond2_2_121 = icmp ult i8* %_ptr_bt_116, %_parent_stack_start_ptr_
  %_cond2_122 = or i1 %_cond2_1_120, %_cond2_2_121
  %_cond4_123 = icmp ule i8* %_pot_address_in_parent_stack_118, %_parent_stack_end_ptr_
  %_cond1_n_cond2_124 = and i1 %_cond1_119, %_cond2_122
  %_cond1_n_cond2_cond3_125 = and i1 %_cond1_n_cond2_124, %_cond4_123
  br i1 %_cond1_n_cond2_cond3_125, label %61, label %62

; <label>:61:                                     ; preds = %block_0x26
  %_address_in_parent_stack_bt_127 = bitcast i8* %_pot_address_in_parent_stack_118 to i32*
  br label %62

; <label>:62:                                     ; preds = %block_0x26, %61
  %63 = phi i32* [ %60, %block_0x26 ], [ %_address_in_parent_stack_bt_127, %61 ]
  %_new_load_128 = load i32, i32* %63
  store i1 false, i1* %AF, !mcsema_real_eip !13
  %64 = trunc i32 %_new_load_128 to i8, !mcsema_real_eip !13
  %65 = call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !13
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !13
  %67 = xor i1 %66, true, !mcsema_real_eip !13
  store i1 %67, i1* %PF, !mcsema_real_eip !13
  %68 = icmp eq i32 %_new_load_128, 0, !mcsema_real_eip !13
  store i1 %68, i1* %ZF, !mcsema_real_eip !13
  %69 = lshr i32 %_new_load_128, 31, !mcsema_real_eip !13
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !13
  store i1 %70, i1* %SF, !mcsema_real_eip !13
  store i1 false, i1* %CF, !mcsema_real_eip !13
  store i1 false, i1* %OF, !mcsema_real_eip !13
  %71 = icmp eq i1 %68, false, !mcsema_real_eip !14
  br i1 %71, label %block_0x4a, label %block_0x30, !mcsema_real_eip !14

block_0x30:                                       ; preds = %62
  store i64 1, i64* %XSI, !mcsema_real_eip !15
  br i1 %_cond1_n_cond2_cond3_, label %72, label %73

; <label>:72:                                     ; preds = %block_0x30
  %_address_in_parent_stack_bt_142 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %73

; <label>:73:                                     ; preds = %block_0x30, %72
  %74 = phi i32* [ %19, %block_0x30 ], [ %_address_in_parent_stack_bt_142, %72 ]
  %_new_load_143 = load i32, i32* %74
  %75 = zext i32 %_new_load_143 to i64, !mcsema_real_eip !16
  store i64 %75, i64* %XAX, !mcsema_real_eip !16
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !17
  %76 = sub i32 %EAX_val.20, 1, !mcsema_real_eip !17
  %77 = xor i32 %76, %EAX_val.20, !mcsema_real_eip !17
  %78 = xor i32 %77, 1, !mcsema_real_eip !17
  %79 = and i32 %78, 16, !mcsema_real_eip !17
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !17
  store i1 %80, i1* %AF, !mcsema_real_eip !17
  %81 = trunc i32 %76 to i8, !mcsema_real_eip !17
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !17
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !17
  %84 = xor i1 %83, true, !mcsema_real_eip !17
  store i1 %84, i1* %PF, !mcsema_real_eip !17
  %85 = icmp eq i32 %76, 0, !mcsema_real_eip !17
  store i1 %85, i1* %ZF, !mcsema_real_eip !17
  %86 = lshr i32 %76, 31, !mcsema_real_eip !17
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !17
  store i1 %87, i1* %SF, !mcsema_real_eip !17
  %88 = icmp ult i32 %EAX_val.20, 1, !mcsema_real_eip !17
  store i1 %88, i1* %CF, !mcsema_real_eip !17
  %89 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !17
  %90 = and i32 %89, %77, !mcsema_real_eip !17
  %91 = lshr i32 %90, 31, !mcsema_real_eip !17
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !17
  store i1 %92, i1* %OF, !mcsema_real_eip !17
  %93 = zext i32 %76 to i64, !mcsema_real_eip !17
  store i64 %93, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.22 = load i32, i32* %EAX.19, !mcsema_real_eip !18
  %94 = zext i32 %EAX_val.22 to i64, !mcsema_real_eip !18
  store i64 %94, i64* %XDI, !mcsema_real_eip !18
  %_load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !19
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_34, i64 -8
  %95 = sub i64 %RSP_val.23, 8, !mcsema_real_eip !19
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, !mcsema_real_eip !19
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %95, i64* %XSP, !mcsema_real_eip !19
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_35, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_89)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -4
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %EAX_val.26 = load i32, i32* %EAX.19, !mcsema_real_eip !20
  %96 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !20
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.26, i32* %97, !mcsema_real_eip !20
  br label %block_0x70, !mcsema_real_eip !21

block_0x4a:                                       ; preds = %62
  br i1 %_cond1_n_cond2_cond3_, label %98, label %99

; <label>:98:                                     ; preds = %block_0x4a
  %_address_in_parent_stack_bt_157 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %99

; <label>:99:                                     ; preds = %block_0x4a, %98
  %100 = phi i32* [ %19, %block_0x4a ], [ %_address_in_parent_stack_bt_157, %98 ]
  %_new_load_158 = load i32, i32* %100
  %101 = zext i32 %_new_load_158 to i64, !mcsema_real_eip !22
  store i64 %101, i64* %XAX, !mcsema_real_eip !22
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !23
  %102 = sub i32 %EAX_val.29, 1, !mcsema_real_eip !23
  %103 = xor i32 %102, %EAX_val.29, !mcsema_real_eip !23
  %104 = xor i32 %103, 1, !mcsema_real_eip !23
  %105 = and i32 %104, 16, !mcsema_real_eip !23
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !23
  store i1 %106, i1* %AF, !mcsema_real_eip !23
  %107 = trunc i32 %102 to i8, !mcsema_real_eip !23
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !23
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !23
  %110 = xor i1 %109, true, !mcsema_real_eip !23
  store i1 %110, i1* %PF, !mcsema_real_eip !23
  %111 = icmp eq i32 %102, 0, !mcsema_real_eip !23
  store i1 %111, i1* %ZF, !mcsema_real_eip !23
  %112 = lshr i32 %102, 31, !mcsema_real_eip !23
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !23
  store i1 %113, i1* %SF, !mcsema_real_eip !23
  %114 = icmp ult i32 %EAX_val.29, 1, !mcsema_real_eip !23
  store i1 %114, i1* %CF, !mcsema_real_eip !23
  %115 = xor i32 %EAX_val.29, 1, !mcsema_real_eip !23
  %116 = and i32 %115, %103, !mcsema_real_eip !23
  %117 = lshr i32 %116, 31, !mcsema_real_eip !23
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !23
  store i1 %118, i1* %OF, !mcsema_real_eip !23
  %119 = zext i32 %102 to i64, !mcsema_real_eip !23
  store i64 %119, i64* %XAX, !mcsema_real_eip !23
  br i1 %_cond1_n_cond2_cond3_, label %120, label %121

; <label>:120:                                    ; preds = %99
  %_address_in_parent_stack_bt_172 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %121

; <label>:121:                                    ; preds = %99, %120
  %122 = phi i32* [ %19, %99 ], [ %_address_in_parent_stack_bt_172, %120 ]
  %_new_load_173 = load i32, i32* %122
  %123 = zext i32 %_new_load_173 to i64, !mcsema_real_eip !24
  store i64 %123, i64* %XDI, !mcsema_real_eip !24
  br i1 %_cond1_n_cond2_cond3_125, label %124, label %125

; <label>:124:                                    ; preds = %121
  %_address_in_parent_stack_bt_187 = bitcast i8* %_pot_address_in_parent_stack_118 to i32*
  br label %125

; <label>:125:                                    ; preds = %121, %124
  %126 = phi i32* [ %60, %121 ], [ %_address_in_parent_stack_bt_187, %124 ]
  %_new_load_188 = load i32, i32* %126
  %127 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !25
  store i64 %127, i64* %XCX, !mcsema_real_eip !25
  %ECX.32 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.33 = load i32, i32* %ECX.32, !mcsema_real_eip !26
  %128 = sub i32 %ECX_val.33, 1, !mcsema_real_eip !26
  %129 = xor i32 %128, %ECX_val.33, !mcsema_real_eip !26
  %130 = xor i32 %129, 1, !mcsema_real_eip !26
  %131 = and i32 %130, 16, !mcsema_real_eip !26
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !26
  store i1 %132, i1* %AF, !mcsema_real_eip !26
  %133 = trunc i32 %128 to i8, !mcsema_real_eip !26
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !26
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !26
  %136 = xor i1 %135, true, !mcsema_real_eip !26
  store i1 %136, i1* %PF, !mcsema_real_eip !26
  %137 = icmp eq i32 %128, 0, !mcsema_real_eip !26
  store i1 %137, i1* %ZF, !mcsema_real_eip !26
  %138 = lshr i32 %128, 31, !mcsema_real_eip !26
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !26
  store i1 %139, i1* %SF, !mcsema_real_eip !26
  %140 = icmp ult i32 %ECX_val.33, 1, !mcsema_real_eip !26
  store i1 %140, i1* %CF, !mcsema_real_eip !26
  %141 = xor i32 %ECX_val.33, 1, !mcsema_real_eip !26
  %142 = and i32 %141, %129, !mcsema_real_eip !26
  %143 = lshr i32 %142, 31, !mcsema_real_eip !26
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !26
  store i1 %144, i1* %OF, !mcsema_real_eip !26
  %145 = zext i32 %128 to i64, !mcsema_real_eip !26
  store i64 %145, i64* %XCX, !mcsema_real_eip !26
  %ECX_val.35 = load i32, i32* %ECX.32, !mcsema_real_eip !27
  %146 = zext i32 %ECX_val.35 to i64, !mcsema_real_eip !27
  store i64 %146, i64* %XSI, !mcsema_real_eip !27
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %EAX_val.38 = load i32, i32* %EAX.28, !mcsema_real_eip !28
  %147 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !28
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.38, i32* %148, !mcsema_real_eip !28
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %RSP_val.39 = load i64, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_53 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 -8
  %149 = sub i64 %RSP_val.39, 8, !mcsema_real_eip !29
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_54, !mcsema_real_eip !29
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_
  store i64 %149, i64* %XSP, !mcsema_real_eip !29
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_53, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_91)
  %_rsp_fix_93 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_94 = getelementptr i8, i8* %_rsp_fix_93, i64 8
  store i8* %_gep_fix_94, i8** %_RSP_ptr_
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -16
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %150 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !30
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !30
  %_ptr_bt_191 = bitcast i32* %151 to i8*
  %_offset_above_rbp_192 = sub i64 %150, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_ptr_bt_191, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_ptr_bt_191, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_ptr_bt_191, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  br i1 %_cond1_n_cond2_cond3_200, label %152, label %153

; <label>:152:                                    ; preds = %125
  %_address_in_parent_stack_bt_202 = bitcast i8* %_pot_address_in_parent_stack_193 to i32*
  br label %153

; <label>:153:                                    ; preds = %125, %152
  %154 = phi i32* [ %151, %125 ], [ %_address_in_parent_stack_bt_202, %152 ]
  %_new_load_203 = load i32, i32* %154
  %155 = zext i32 %_new_load_203 to i64, !mcsema_real_eip !30
  store i64 %155, i64* %XDI, !mcsema_real_eip !30
  %EAX_val.42 = load i32, i32* %EAX.28, !mcsema_real_eip !31
  %156 = zext i32 %EAX_val.42 to i64, !mcsema_real_eip !31
  store i64 %156, i64* %XSI, !mcsema_real_eip !31
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !32
  %_new_gep_59 = getelementptr i8, i8* %_gep_fix_94, i64 -8
  %157 = sub i64 %RSP_val.43, 8, !mcsema_real_eip !32
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_60, !mcsema_real_eip !32
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_
  store i64 %157, i64* %XSP, !mcsema_real_eip !32
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_59, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_95)
  %_rsp_fix_97 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_98 = getelementptr i8, i8* %_rsp_fix_97, i64 8
  store i8* %_gep_fix_98, i8** %_RSP_ptr_
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -4
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %EAX_val.46 = load i32, i32* %EAX.28, !mcsema_real_eip !33
  %158 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !33
  %159 = inttoptr i64 %158 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.46, i32* %159, !mcsema_real_eip !33
  br label %block_0x70, !mcsema_real_eip !34

block_0x70:                                       ; preds = %153, %73, %34
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -4
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %160 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !34
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !34
  %_ptr_bt_206 = bitcast i32* %161 to i8*
  %_offset_above_rbp_207 = sub i64 %160, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_ptr_bt_206, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_ptr_bt_206, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_ptr_bt_206, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  br i1 %_cond1_n_cond2_cond3_215, label %162, label %163

; <label>:162:                                    ; preds = %block_0x70
  %_address_in_parent_stack_bt_217 = bitcast i8* %_pot_address_in_parent_stack_208 to i32*
  br label %163

; <label>:163:                                    ; preds = %block_0x70, %162
  %164 = phi i32* [ %161, %block_0x70 ], [ %_address_in_parent_stack_bt_217, %162 ]
  %_new_load_218 = load i32, i32* %164
  %165 = zext i32 %_new_load_218 to i64, !mcsema_real_eip !34
  store i64 %165, i64* %XAX, !mcsema_real_eip !34
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_67, i64 16
  %166 = add i64 16, %RSP_val.48, !mcsema_real_eip !35
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %167 = xor i64 %_trans_xor_71, 16, !mcsema_real_eip !35
  %168 = and i64 %167, 16, !mcsema_real_eip !35
  %169 = icmp ne i64 %168, 0, !mcsema_real_eip !35
  store i1 %169, i1* %AF, !mcsema_real_eip !35
  %170 = lshr i64 %166, 63, !mcsema_real_eip !35
  %171 = trunc i64 %170 to i1, !mcsema_real_eip !35
  store i1 %171, i1* %SF, !mcsema_real_eip !35
  %_trans_icmp_eq_73 = icmp eq i64 %_trans_p2i_69, 0
  store i1 %_trans_icmp_eq_73, i1* %ZF, !mcsema_real_eip !35
  %_trans_xor_75 = xor i64 %_trans_p2i_70, 16
  %172 = xor i64 %_trans_xor_75, -1, !mcsema_real_eip !35
  %173 = and i64 %172, %_trans_xor_71, !mcsema_real_eip !35
  %174 = lshr i64 %173, 63, !mcsema_real_eip !35
  %175 = and i64 %174, 1, !mcsema_real_eip !35
  %176 = trunc i64 %175 to i1, !mcsema_real_eip !35
  store i1 %176, i1* %OF, !mcsema_real_eip !35
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %177 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !35
  %178 = trunc i8 %177 to i1, !mcsema_real_eip !35
  %179 = xor i1 %178, true, !mcsema_real_eip !35
  store i1 %179, i1* %PF, !mcsema_real_eip !35
  %_trans_icmp_ne_82 = icmp ne i64 %_trans_p2i_69, %RSP_val.48
  store i1 %_trans_icmp_ne_82, i1* %CF, !mcsema_real_eip !35
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_
  store i64 %166, i64* %XSP, !mcsema_real_eip !35
  %_allin_new_bt_84 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_219 = ptrtoint i64* %_allin_new_bt_84 to i64
  %_offset_above_rbp_222 = sub i64 %_ptr_to_int_219, %_local_end_to_int_
  %_pot_address_in_parent_stack_223 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_cond1_224 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_225 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_226 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_227 = or i1 %_cond2_1_225, %_cond2_2_226
  %_cond4_228 = icmp ule i8* %_pot_address_in_parent_stack_223, %_parent_stack_end_ptr_
  %_cond1_n_cond2_229 = and i1 %_cond1_224, %_cond2_227
  %_cond1_n_cond2_cond3_230 = and i1 %_cond1_n_cond2_229, %_cond4_228
  br i1 %_cond1_n_cond2_cond3_230, label %180, label %181

; <label>:180:                                    ; preds = %163
  %_address_in_parent_stack_bt_232 = bitcast i8* %_pot_address_in_parent_stack_223 to i64*
  br label %181

; <label>:181:                                    ; preds = %163, %180
  %182 = phi i64* [ %_allin_new_bt_84, %163 ], [ %_address_in_parent_stack_bt_232, %180 ]
  %_new_load_233 = load i64, i64* %182
  %_new_int2ptr_ = inttoptr i64 %_new_load_233 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_233, i64* %XBP, !mcsema_real_eip !36
  %_new_gep_85 = getelementptr i8, i8* %_new_gep_68, i64 8
  %183 = add i64 %166, 8, !mcsema_real_eip !36
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %183, i64* %XSP, !mcsema_real_eip !36
  %_new_gep_87 = getelementptr i8, i8* %_new_gep_85, i64 8
  %184 = add i64 %183, 8, !mcsema_real_eip !37
  %_allin_new_bt_88 = bitcast i8* %_new_gep_85 to i64*
  %_ptr_to_int_234 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_237 = sub i64 %_ptr_to_int_234, %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  br i1 %_cond1_n_cond2_cond3_245, label %185, label %186

; <label>:185:                                    ; preds = %181
  %_address_in_parent_stack_bt_247 = bitcast i8* %_pot_address_in_parent_stack_238 to i64*
  br label %186

; <label>:186:                                    ; preds = %181, %185
  %187 = phi i64* [ %_allin_new_bt_88, %181 ], [ %_address_in_parent_stack_bt_247, %185 ]
  %_new_load_248 = load i64, i64* %187
  store i64 %_new_load_248, i64* %XIP, !mcsema_real_eip !37
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_
  store i64 %184, i64* %XSP, !mcsema_real_eip !37
  ret void, !mcsema_real_eip !37
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_80.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !38
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !38
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !38
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !38
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !38
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !38
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !38
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !38
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !38
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !38
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !38
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !38
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !38
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !38
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !38
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !38
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !38
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !38
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !38
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !38
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !38
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !38
  br label %block_0x80, !mcsema_real_eip !38

block_0x80:                                       ; preds = %entry
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !38
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !38
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !39
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !40
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.54, 32, !mcsema_real_eip !40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !40
  %4 = and i64 %3, 16, !mcsema_real_eip !40
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !40
  store i1 %5, i1* %AF, !mcsema_real_eip !40
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !40
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !40
  %8 = xor i1 %7, true, !mcsema_real_eip !40
  store i1 %8, i1* %PF, !mcsema_real_eip !40
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !40
  %9 = lshr i64 %2, 63, !mcsema_real_eip !40
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !40
  store i1 %10, i1* %SF, !mcsema_real_eip !40
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !40
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !40
  %12 = lshr i64 %11, 63, !mcsema_real_eip !40
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !40
  store i1 %13, i1* %OF, !mcsema_real_eip !40
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !40
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !41
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !41
  store i32 0, i32* %15, !mcsema_real_eip !41
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.57 = bitcast i64* %XDI to i32*, !mcsema_real_eip !42
  %EDI_val.58 = load i32, i32* %EDI.57, !mcsema_real_eip !42
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !42
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !42
  store i32 %EDI_val.58, i32* %17, !mcsema_real_eip !42
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.60 = load i64, i64* %XSI, !mcsema_real_eip !43
  store i64 %RSI_val.60, i64* %_allin_new_bt_21, !mcsema_real_eip !43
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !44
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !44
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x80
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x80, %20
  %22 = phi i32* [ %19, %block_0x80 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = sub i32 %_new_load_, 2, !mcsema_real_eip !44
  %24 = xor i32 %23, %_new_load_, !mcsema_real_eip !44
  %25 = xor i32 %24, 2, !mcsema_real_eip !44
  %26 = and i32 %25, 16, !mcsema_real_eip !44
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !44
  store i1 %27, i1* %AF, !mcsema_real_eip !44
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !44
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !44
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !44
  %31 = xor i1 %30, true, !mcsema_real_eip !44
  store i1 %31, i1* %PF, !mcsema_real_eip !44
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !44
  store i1 %32, i1* %ZF, !mcsema_real_eip !44
  %33 = lshr i32 %23, 31, !mcsema_real_eip !44
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !44
  store i1 %34, i1* %SF, !mcsema_real_eip !44
  %35 = icmp ult i32 %_new_load_, 2, !mcsema_real_eip !44
  store i1 %35, i1* %CF, !mcsema_real_eip !44
  %36 = xor i32 %_new_load_, 2, !mcsema_real_eip !44
  %37 = and i32 %36, %24, !mcsema_real_eip !44
  %38 = lshr i32 %37, 31, !mcsema_real_eip !44
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !44
  store i1 %39, i1* %OF, !mcsema_real_eip !44
  %40 = icmp eq i1 %32, false, !mcsema_real_eip !45
  br i1 %40, label %block_0xb5, label %block_0xa0, !mcsema_real_eip !45

block_0xa0:                                       ; preds = %21
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_112 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_115 = sub i64 %_ptr_to_int_112, %_local_end_to_int_
  %_pot_address_in_parent_stack_116 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_115
  %_cond1_117 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_118 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_119 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_120 = or i1 %_cond2_1_118, %_cond2_2_119
  %_cond4_121 = icmp ule i8* %_pot_address_in_parent_stack_116, %_parent_stack_end_ptr_
  %_cond1_n_cond2_122 = and i1 %_cond1_117, %_cond2_120
  %_cond1_n_cond2_cond3_123 = and i1 %_cond1_n_cond2_122, %_cond4_121
  br i1 %_cond1_n_cond2_cond3_123, label %41, label %42

; <label>:41:                                     ; preds = %block_0xa0
  %_address_in_parent_stack_bt_125 = bitcast i8* %_pot_address_in_parent_stack_116 to i64*
  br label %42

; <label>:42:                                     ; preds = %block_0xa0, %41
  %43 = phi i64* [ %_allin_new_bt_27, %block_0xa0 ], [ %_address_in_parent_stack_bt_125, %41 ]
  %_new_load_126 = load i64, i64* %43
  store i64 %_new_load_126, i64* %XAX, !mcsema_real_eip !46
  %44 = add i64 %_new_load_126, 8, !mcsema_real_eip !47
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !47
  %_ptr_bt_129 = bitcast i64* %45 to i8*
  %_offset_above_rbp_130 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_131 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_130
  %_cond1_132 = icmp ugt i8* %_ptr_bt_129, %_local_stack_end_ptr_
  %_cond2_1_133 = icmp ugt i8* %_ptr_bt_129, %_parent_stack_end_ptr_
  %_cond2_2_134 = icmp ult i8* %_ptr_bt_129, %_parent_stack_start_ptr_
  %_cond2_135 = or i1 %_cond2_1_133, %_cond2_2_134
  %_cond4_136 = icmp ule i8* %_pot_address_in_parent_stack_131, %_parent_stack_end_ptr_
  %_cond1_n_cond2_137 = and i1 %_cond1_132, %_cond2_135
  %_cond1_n_cond2_cond3_138 = and i1 %_cond1_n_cond2_137, %_cond4_136
  br i1 %_cond1_n_cond2_cond3_138, label %46, label %47

; <label>:46:                                     ; preds = %42
  %_address_in_parent_stack_bt_140 = bitcast i8* %_pot_address_in_parent_stack_131 to i64*
  br label %47

; <label>:47:                                     ; preds = %42, %46
  %48 = phi i64* [ %45, %42 ], [ %_address_in_parent_stack_bt_140, %46 ]
  %_new_load_141 = load i64, i64* %48
  store i64 %_new_load_141, i64* %XDI, !mcsema_real_eip !47
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !48
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %49 = sub i64 %RSP_val.65, 8, !mcsema_real_eip !48
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !48
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %49, i64* %XSP, !mcsema_real_eip !48
  %50 = call x86_64_sysvcc i64 @_atoi(i64 %_new_load_141)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %50, i64* %XAX, !mcsema_real_eip !48
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !49
  %51 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !49
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.68, i32* %52, !mcsema_real_eip !49
  br label %block_0xc2, !mcsema_real_eip !50

block_0xb5:                                       ; preds = %21
  store i64 8, i64* %XAX, !mcsema_real_eip !51
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !52
  %53 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !52
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.71, i32* %54, !mcsema_real_eip !52
  br label %block_0xc2, !mcsema_real_eip !53

block_0xc2:                                       ; preds = %block_0xb5, %47
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !54
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !54
  %_ptr_bt_144 = bitcast i32* %56 to i8*
  %_offset_above_rbp_145 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_146 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_145
  %_cond1_147 = icmp ugt i8* %_ptr_bt_144, %_local_stack_end_ptr_
  %_cond2_1_148 = icmp ugt i8* %_ptr_bt_144, %_parent_stack_end_ptr_
  %_cond2_2_149 = icmp ult i8* %_ptr_bt_144, %_parent_stack_start_ptr_
  %_cond2_150 = or i1 %_cond2_1_148, %_cond2_2_149
  %_cond4_151 = icmp ule i8* %_pot_address_in_parent_stack_146, %_parent_stack_end_ptr_
  %_cond1_n_cond2_152 = and i1 %_cond1_147, %_cond2_150
  %_cond1_n_cond2_cond3_153 = and i1 %_cond1_n_cond2_152, %_cond4_151
  br i1 %_cond1_n_cond2_cond3_153, label %57, label %58

; <label>:57:                                     ; preds = %block_0xc2
  %_address_in_parent_stack_bt_155 = bitcast i8* %_pot_address_in_parent_stack_146 to i32*
  br label %58

; <label>:58:                                     ; preds = %block_0xc2, %57
  %59 = phi i32* [ %56, %block_0xc2 ], [ %_address_in_parent_stack_bt_155, %57 ]
  %_new_load_156 = load i32, i32* %59
  %60 = zext i32 %_new_load_156 to i64, !mcsema_real_eip !54
  store i64 %60, i64* %XAX, !mcsema_real_eip !54
  store i64 3, i64* %XDI, !mcsema_real_eip !55
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.74 = bitcast i64* %XAX to i32*, !mcsema_real_eip !56
  %EAX_val.75 = load i32, i32* %EAX.74, !mcsema_real_eip !56
  %61 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !56
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.75, i32* %62, !mcsema_real_eip !56
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -20
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %63 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !57
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !57
  %_ptr_bt_159 = bitcast i32* %64 to i8*
  %_offset_above_rbp_160 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_161 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_160
  %_cond1_162 = icmp ugt i8* %_ptr_bt_159, %_local_stack_end_ptr_
  %_cond2_1_163 = icmp ugt i8* %_ptr_bt_159, %_parent_stack_end_ptr_
  %_cond2_2_164 = icmp ult i8* %_ptr_bt_159, %_parent_stack_start_ptr_
  %_cond2_165 = or i1 %_cond2_1_163, %_cond2_2_164
  %_cond4_166 = icmp ule i8* %_pot_address_in_parent_stack_161, %_parent_stack_end_ptr_
  %_cond1_n_cond2_167 = and i1 %_cond1_162, %_cond2_165
  %_cond1_n_cond2_cond3_168 = and i1 %_cond1_n_cond2_167, %_cond4_166
  br i1 %_cond1_n_cond2_cond3_168, label %65, label %66

; <label>:65:                                     ; preds = %58
  %_address_in_parent_stack_bt_170 = bitcast i8* %_pot_address_in_parent_stack_161 to i32*
  br label %66

; <label>:66:                                     ; preds = %58, %65
  %67 = phi i32* [ %64, %58 ], [ %_address_in_parent_stack_bt_170, %65 ]
  %_new_load_171 = load i32, i32* %67
  %68 = zext i32 %_new_load_171 to i64, !mcsema_real_eip !57
  store i64 %68, i64* %XSI, !mcsema_real_eip !57
  br i1 %_cond1_n_cond2_cond3_168, label %69, label %70

; <label>:69:                                     ; preds = %66
  %_address_in_parent_stack_bt_185 = bitcast i8* %_pot_address_in_parent_stack_161 to i32*
  br label %70

; <label>:70:                                     ; preds = %66, %69
  %71 = phi i32* [ %64, %66 ], [ %_address_in_parent_stack_bt_185, %69 ]
  %_new_load_186 = load i32, i32* %71
  %72 = zext i32 %_new_load_186 to i64, !mcsema_real_eip !58
  store i64 %72, i64* %XAX, !mcsema_real_eip !58
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -28
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %ESI.79 = bitcast i64* %XSI to i32*, !mcsema_real_eip !59
  %ESI_val.80 = load i32, i32* %ESI.79, !mcsema_real_eip !59
  %73 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !59
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !59
  store i32 %ESI_val.80, i32* %74, !mcsema_real_eip !59
  %EAX_val.82 = load i32, i32* %EAX.74, !mcsema_real_eip !60
  %75 = zext i32 %EAX_val.82 to i64, !mcsema_real_eip !60
  store i64 %75, i64* %XSI, !mcsema_real_eip !60
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %RSP_val.83 = load i64, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_53 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 -8
  %76 = sub i64 %RSP_val.83, 8, !mcsema_real_eip !61
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_54, !mcsema_real_eip !61
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_
  store i64 %76, i64* %XSP, !mcsema_real_eip !61
  %_load_rbp_ptr_106 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_53, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_106)
  %_rsp_fix_108 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_109 = getelementptr i8, i8* %_rsp_fix_108, i64 8
  store i8* %_gep_fix_109, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, !mcsema_real_eip !62
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -28
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %77 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !63
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !63
  %_ptr_bt_189 = bitcast i32* %78 to i8*
  %_offset_above_rbp_190 = sub i64 %77, %_local_end_to_int_
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_ptr_bt_189, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_ptr_bt_189, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_ptr_bt_189, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  br i1 %_cond1_n_cond2_cond3_198, label %79, label %80

; <label>:79:                                     ; preds = %70
  %_address_in_parent_stack_bt_200 = bitcast i8* %_pot_address_in_parent_stack_191 to i32*
  br label %80

; <label>:80:                                     ; preds = %70, %79
  %81 = phi i32* [ %78, %70 ], [ %_address_in_parent_stack_bt_200, %79 ]
  %_new_load_201 = load i32, i32* %81
  %82 = zext i32 %_new_load_201 to i64, !mcsema_real_eip !63
  store i64 %82, i64* %XSI, !mcsema_real_eip !63
  %EAX_val.86 = load i32, i32* %EAX.74, !mcsema_real_eip !64
  %83 = zext i32 %EAX_val.86 to i64, !mcsema_real_eip !64
  store i64 %83, i64* %XDX, !mcsema_real_eip !64
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !65
  store i8 0, i8* %AL.87, !mcsema_real_eip !65
  %RCX_val.91 = load i64, i64* %XCX, !mcsema_real_eip !66
  %R8_val.92 = load i64, i64* %R8, !mcsema_real_eip !66
  %R9_val.93 = load i64, i64* %R9, !mcsema_real_eip !66
  %_allin_new_bt_59 = bitcast i8* %_gep_fix_109 to i64*
  %_ptr_to_int_202 = ptrtoint i64* %_allin_new_bt_59 to i64
  %_offset_above_rbp_205 = sub i64 %_ptr_to_int_202, %_local_end_to_int_
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_gep_fix_109, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_gep_fix_109, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_gep_fix_109, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  br i1 %_cond1_n_cond2_cond3_213, label %84, label %85

; <label>:84:                                     ; preds = %80
  %_address_in_parent_stack_bt_215 = bitcast i8* %_pot_address_in_parent_stack_206 to i64*
  br label %85

; <label>:85:                                     ; preds = %80, %84
  %86 = phi i64* [ %_allin_new_bt_59, %80 ], [ %_address_in_parent_stack_bt_215, %84 ]
  %_new_load_216 = load i64, i64* %86
  %_new_gep_60 = getelementptr i8, i8* %_gep_fix_109, i64 8
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_217 = ptrtoint i64* %_allin_new_bt_61 to i64
  %_offset_above_rbp_220 = sub i64 %_ptr_to_int_217, %_local_end_to_int_
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  br i1 %_cond1_n_cond2_cond3_228, label %87, label %88

; <label>:87:                                     ; preds = %85
  %_address_in_parent_stack_bt_230 = bitcast i8* %_pot_address_in_parent_stack_221 to i64*
  br label %88

; <label>:88:                                     ; preds = %85, %87
  %89 = phi i64* [ %_allin_new_bt_61, %85 ], [ %_address_in_parent_stack_bt_230, %87 ]
  %_new_load_231 = load i64, i64* %89
  %_new_gep_62 = getelementptr i8, i8* %_new_gep_60, i64 8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %_ptr_to_int_232 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_235 = sub i64 %_ptr_to_int_232, %_local_end_to_int_
  %_pot_address_in_parent_stack_236 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_235
  %_cond1_237 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_238 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_239 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_240 = or i1 %_cond2_1_238, %_cond2_2_239
  %_cond4_241 = icmp ule i8* %_pot_address_in_parent_stack_236, %_parent_stack_end_ptr_
  %_cond1_n_cond2_242 = and i1 %_cond1_237, %_cond2_240
  %_cond1_n_cond2_cond3_243 = and i1 %_cond1_n_cond2_242, %_cond4_241
  br i1 %_cond1_n_cond2_cond3_243, label %90, label %91

; <label>:90:                                     ; preds = %88
  %_address_in_parent_stack_bt_245 = bitcast i8* %_pot_address_in_parent_stack_236 to i64*
  br label %91

; <label>:91:                                     ; preds = %88, %90
  %92 = phi i64* [ %_allin_new_bt_63, %88 ], [ %_address_in_parent_stack_bt_245, %90 ]
  %_new_load_246 = load i64, i64* %92
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_62, i64 8
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %_ptr_to_int_247 = ptrtoint i64* %_allin_new_bt_65 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %_local_end_to_int_
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  br i1 %_cond1_n_cond2_cond3_258, label %93, label %94

; <label>:93:                                     ; preds = %91
  %_address_in_parent_stack_bt_260 = bitcast i8* %_pot_address_in_parent_stack_251 to i64*
  br label %94

; <label>:94:                                     ; preds = %91, %93
  %95 = phi i64* [ %_allin_new_bt_65, %91 ], [ %_address_in_parent_stack_bt_260, %93 ]
  %_new_load_261 = load i64, i64* %95
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %_ptr_to_int_262 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_265 = sub i64 %_ptr_to_int_262, %_local_end_to_int_
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond1_n_cond2_272, %_cond4_271
  br i1 %_cond1_n_cond2_cond3_273, label %96, label %97

; <label>:96:                                     ; preds = %94
  %_address_in_parent_stack_bt_275 = bitcast i8* %_pot_address_in_parent_stack_266 to i64*
  br label %97

; <label>:97:                                     ; preds = %94, %96
  %98 = phi i64* [ %_allin_new_bt_67, %94 ], [ %_address_in_parent_stack_bt_275, %96 ]
  %_new_load_276 = load i64, i64* %98
  %_new_gep_68 = getelementptr i8, i8* %_new_gep_66, i64 8
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_277 = ptrtoint i64* %_allin_new_bt_69 to i64
  %_offset_above_rbp_280 = sub i64 %_ptr_to_int_277, %_local_end_to_int_
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  br i1 %_cond1_n_cond2_cond3_288, label %99, label %100

; <label>:99:                                     ; preds = %97
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i64*
  br label %100

; <label>:100:                                    ; preds = %97, %99
  %101 = phi i64* [ %_allin_new_bt_69, %97 ], [ %_address_in_parent_stack_bt_290, %99 ]
  %_new_load_291 = load i64, i64* %101
  %_new_gep_70 = getelementptr i8, i8* %_new_gep_68, i64 8
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %_ptr_to_int_292 = ptrtoint i64* %_allin_new_bt_71 to i64
  %_offset_above_rbp_295 = sub i64 %_ptr_to_int_292, %_local_end_to_int_
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  br i1 %_cond1_n_cond2_cond3_303, label %102, label %103

; <label>:102:                                    ; preds = %100
  %_address_in_parent_stack_bt_305 = bitcast i8* %_pot_address_in_parent_stack_296 to i64*
  br label %103

; <label>:103:                                    ; preds = %100, %102
  %104 = phi i64* [ %_allin_new_bt_71, %100 ], [ %_address_in_parent_stack_bt_305, %102 ]
  %_new_load_306 = load i64, i64* %104
  %_new_gep_72 = getelementptr i8, i8* %_new_gep_70, i64 8
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %_ptr_to_int_307 = ptrtoint i64* %_allin_new_bt_73 to i64
  %_offset_above_rbp_310 = sub i64 %_ptr_to_int_307, %_local_end_to_int_
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  br i1 %_cond1_n_cond2_cond3_318, label %105, label %106

; <label>:105:                                    ; preds = %103
  %_address_in_parent_stack_bt_320 = bitcast i8* %_pot_address_in_parent_stack_311 to i64*
  br label %106

; <label>:106:                                    ; preds = %103, %105
  %107 = phi i64* [ %_allin_new_bt_73, %103 ], [ %_address_in_parent_stack_bt_320, %105 ]
  %_new_load_321 = load i64, i64* %107
  %_new_gep_74 = getelementptr i8, i8* %_new_gep_72, i64 8
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %_ptr_to_int_322 = ptrtoint i64* %_allin_new_bt_75 to i64
  %_offset_above_rbp_325 = sub i64 %_ptr_to_int_322, %_local_end_to_int_
  %_pot_address_in_parent_stack_326 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_325
  %_cond1_327 = icmp ugt i8* %_new_gep_74, %_local_stack_end_ptr_
  %_cond2_1_328 = icmp ugt i8* %_new_gep_74, %_parent_stack_end_ptr_
  %_cond2_2_329 = icmp ult i8* %_new_gep_74, %_parent_stack_start_ptr_
  %_cond2_330 = or i1 %_cond2_1_328, %_cond2_2_329
  %_cond4_331 = icmp ule i8* %_pot_address_in_parent_stack_326, %_parent_stack_end_ptr_
  %_cond1_n_cond2_332 = and i1 %_cond1_327, %_cond2_330
  %_cond1_n_cond2_cond3_333 = and i1 %_cond1_n_cond2_332, %_cond4_331
  br i1 %_cond1_n_cond2_cond3_333, label %108, label %109

; <label>:108:                                    ; preds = %106
  %_address_in_parent_stack_bt_335 = bitcast i8* %_pot_address_in_parent_stack_326 to i64*
  br label %109

; <label>:109:                                    ; preds = %106, %108
  %110 = phi i64* [ %_allin_new_bt_75, %106 ], [ %_address_in_parent_stack_bt_335, %108 ]
  %_new_load_336 = load i64, i64* %110
  %_new_gep_76 = getelementptr i8, i8* %_new_gep_74, i64 8
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %_ptr_to_int_337 = ptrtoint i64* %_allin_new_bt_77 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %_local_end_to_int_
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_new_gep_76, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_new_gep_76, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_new_gep_76, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  br i1 %_cond1_n_cond2_cond3_348, label %111, label %112

; <label>:111:                                    ; preds = %109
  %_address_in_parent_stack_bt_350 = bitcast i8* %_pot_address_in_parent_stack_341 to i64*
  br label %112

; <label>:112:                                    ; preds = %109, %111
  %113 = phi i64* [ %_allin_new_bt_77, %109 ], [ %_address_in_parent_stack_bt_350, %111 ]
  %_new_load_351 = load i64, i64* %113
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !66
  %_new_gep_79 = getelementptr i8, i8* %_gep_fix_109, i64 -8
  %114 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !66
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_80, !mcsema_real_eip !66
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_
  store i64 %114, i64* %XSP, !mcsema_real_eip !66
  %115 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %82, i64 %83, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %_new_load_216, i64 %_new_load_231, i64 %_new_load_246, i64 %_new_load_261, i64 %_new_load_276, i64 %_new_load_291, i64 %_new_load_306, i64 %_new_load_321, i64 %_new_load_336, i64 %_new_load_351)
  %_rsp_fix_110 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_111 = getelementptr i8, i8* %_rsp_fix_110, i64 8
  store i8* %_gep_fix_111, i8** %_RSP_ptr_
  store i64 %115, i64* %XAX, !mcsema_real_eip !66
  %EDX.96 = bitcast i64* %XDX to i32*, !mcsema_real_eip !67
  %EDX_val.97 = load i32, i32* %EDX.96, !mcsema_real_eip !67
  store i1 false, i1* %CF, !mcsema_real_eip !67
  store i1 false, i1* %OF, !mcsema_real_eip !67
  store i1 false, i1* %SF, !mcsema_real_eip !67
  store i1 true, i1* %ZF, !mcsema_real_eip !67
  store i1 true, i1* %PF, !mcsema_real_eip !67
  store i1 undef, i1* %AF, !mcsema_real_eip !67
  store i64 0, i64* %XDX, !mcsema_real_eip !67
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -32
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %EAX_val.102 = load i32, i32* %EAX.74, !mcsema_real_eip !68
  %116 = ptrtoint i64* %_allin_new_bt_83 to i64, !mcsema_real_eip !68
  %117 = inttoptr i64 %116 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.102, i32* %117, !mcsema_real_eip !68
  %EDX_val.104 = load i32, i32* %EDX.96, !mcsema_real_eip !69
  %118 = zext i32 %EDX_val.104 to i64, !mcsema_real_eip !69
  store i64 %118, i64* %XAX, !mcsema_real_eip !69
  %_load_rsp_ptr_84 = load i8*, i8** %_RSP_ptr_
  %RSP_val.105 = load i64, i64* %XSP, !mcsema_real_eip !70
  %_new_gep_85 = getelementptr i8, i8* %_load_rsp_ptr_84, i64 32
  %119 = add i64 32, %RSP_val.105, !mcsema_real_eip !70
  %_trans_p2i_86 = ptrtoint i8* %_new_gep_85 to i64
  %_trans_p2i_87 = ptrtoint i8* %_load_rsp_ptr_84 to i64
  %_trans_xor_88 = xor i64 %_trans_p2i_86, %_trans_p2i_87
  %120 = xor i64 %_trans_xor_88, 32, !mcsema_real_eip !70
  %121 = and i64 %120, 16, !mcsema_real_eip !70
  %122 = icmp ne i64 %121, 0, !mcsema_real_eip !70
  store i1 %122, i1* %AF, !mcsema_real_eip !70
  %123 = lshr i64 %119, 63, !mcsema_real_eip !70
  %124 = trunc i64 %123 to i1, !mcsema_real_eip !70
  store i1 %124, i1* %SF, !mcsema_real_eip !70
  %_trans_icmp_eq_90 = icmp eq i64 %_trans_p2i_86, 0
  store i1 %_trans_icmp_eq_90, i1* %ZF, !mcsema_real_eip !70
  %_trans_xor_92 = xor i64 %_trans_p2i_87, 32
  %125 = xor i64 %_trans_xor_92, -1, !mcsema_real_eip !70
  %126 = and i64 %125, %_trans_xor_88, !mcsema_real_eip !70
  %127 = lshr i64 %126, 63, !mcsema_real_eip !70
  %128 = and i64 %127, 1, !mcsema_real_eip !70
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !70
  store i1 %129, i1* %OF, !mcsema_real_eip !70
  %_trans_trunc_97 = trunc i64 %_trans_p2i_86 to i8
  %130 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_97), !mcsema_real_eip !70
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !70
  %132 = xor i1 %131, true, !mcsema_real_eip !70
  store i1 %132, i1* %PF, !mcsema_real_eip !70
  %_trans_icmp_ne_99 = icmp ne i64 %_trans_p2i_86, %RSP_val.105
  store i1 %_trans_icmp_ne_99, i1* %CF, !mcsema_real_eip !70
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %119, i64* %XSP, !mcsema_real_eip !70
  %_allin_new_bt_101 = bitcast i8* %_new_gep_85 to i64*
  %_ptr_to_int_352 = ptrtoint i64* %_allin_new_bt_101 to i64
  %_offset_above_rbp_355 = sub i64 %_ptr_to_int_352, %_local_end_to_int_
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond1_n_cond2_362, %_cond4_361
  br i1 %_cond1_n_cond2_cond3_363, label %133, label %134

; <label>:133:                                    ; preds = %112
  %_address_in_parent_stack_bt_365 = bitcast i8* %_pot_address_in_parent_stack_356 to i64*
  br label %134

; <label>:134:                                    ; preds = %112, %133
  %135 = phi i64* [ %_allin_new_bt_101, %112 ], [ %_address_in_parent_stack_bt_365, %133 ]
  %_new_load_366 = load i64, i64* %135
  %_new_int2ptr_ = inttoptr i64 %_new_load_366 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_366, i64* %XBP, !mcsema_real_eip !71
  %_new_gep_102 = getelementptr i8, i8* %_new_gep_85, i64 8
  %136 = add i64 %119, 8, !mcsema_real_eip !71
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_
  store i64 %136, i64* %XSP, !mcsema_real_eip !71
  %_new_gep_104 = getelementptr i8, i8* %_new_gep_102, i64 8
  %137 = add i64 %136, 8, !mcsema_real_eip !72
  %_allin_new_bt_105 = bitcast i8* %_new_gep_102 to i64*
  %_ptr_to_int_367 = ptrtoint i64* %_allin_new_bt_105 to i64
  %_offset_above_rbp_370 = sub i64 %_ptr_to_int_367, %_local_end_to_int_
  %_pot_address_in_parent_stack_371 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_370
  %_cond1_372 = icmp ugt i8* %_new_gep_102, %_local_stack_end_ptr_
  %_cond2_1_373 = icmp ugt i8* %_new_gep_102, %_parent_stack_end_ptr_
  %_cond2_2_374 = icmp ult i8* %_new_gep_102, %_parent_stack_start_ptr_
  %_cond2_375 = or i1 %_cond2_1_373, %_cond2_2_374
  %_cond4_376 = icmp ule i8* %_pot_address_in_parent_stack_371, %_parent_stack_end_ptr_
  %_cond1_n_cond2_377 = and i1 %_cond1_372, %_cond2_375
  %_cond1_n_cond2_cond3_378 = and i1 %_cond1_n_cond2_377, %_cond4_376
  br i1 %_cond1_n_cond2_cond3_378, label %138, label %139

; <label>:138:                                    ; preds = %134
  %_address_in_parent_stack_bt_380 = bitcast i8* %_pot_address_in_parent_stack_371 to i64*
  br label %139

; <label>:139:                                    ; preds = %134, %138
  %140 = phi i64* [ %_allin_new_bt_105, %134 ], [ %_address_in_parent_stack_bt_380, %138 ]
  %_new_load_381 = load i64, i64* %140
  store i64 %_new_load_381, i64* %XIP, !mcsema_real_eip !72
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_
  store i64 %137, i64* %XSP, !mcsema_real_eip !72
  ret void, !mcsema_real_eip !72
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
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 14}
!8 = !{i64 18}
!9 = !{i64 24}
!10 = !{i64 27}
!11 = !{i64 30}
!12 = !{i64 33}
!13 = !{i64 38}
!14 = !{i64 42}
!15 = !{i64 48}
!16 = !{i64 53}
!17 = !{i64 56}
!18 = !{i64 59}
!19 = !{i64 61}
!20 = !{i64 66}
!21 = !{i64 69}
!22 = !{i64 74}
!23 = !{i64 77}
!24 = !{i64 80}
!25 = !{i64 83}
!26 = !{i64 86}
!27 = !{i64 89}
!28 = !{i64 91}
!29 = !{i64 94}
!30 = !{i64 99}
!31 = !{i64 102}
!32 = !{i64 104}
!33 = !{i64 109}
!34 = !{i64 112}
!35 = !{i64 115}
!36 = !{i64 119}
!37 = !{i64 120}
!38 = !{i64 128}
!39 = !{i64 129}
!40 = !{i64 132}
!41 = !{i64 136}
!42 = !{i64 143}
!43 = !{i64 146}
!44 = !{i64 150}
!45 = !{i64 154}
!46 = !{i64 160}
!47 = !{i64 164}
!48 = !{i64 168}
!49 = !{i64 173}
!50 = !{i64 176}
!51 = !{i64 181}
!52 = !{i64 186}
!53 = !{i64 189}
!54 = !{i64 194}
!55 = !{i64 197}
!56 = !{i64 202}
!57 = !{i64 205}
!58 = !{i64 208}
!59 = !{i64 211}
!60 = !{i64 214}
!61 = !{i64 216}
!62 = !{i64 221}
!63 = !{i64 231}
!64 = !{i64 234}
!65 = !{i64 236}
!66 = !{i64 238}
!67 = !{i64 243}
!68 = !{i64 245}
!69 = !{i64 248}
!70 = !{i64 250}
!71 = !{i64 254}
!72 = !{i64 255}
