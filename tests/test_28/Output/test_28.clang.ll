; ModuleID = 'Output/test_28.clang.bc'
source_filename = "Output/test_28.clang.bc"
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
module asm "  .globl sub_50;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_50(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x71 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64
@data_0x80 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"F\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"!\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !2
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !2
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !2
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !2
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !2
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !2
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !2
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !2
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !2
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !2
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !2
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !2
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !2
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !2
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !2
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !2
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !2
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !2
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !2
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !2
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !2
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !2
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !2
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !2
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !2
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !2
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !2
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !2
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !2
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !2
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !2
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !2
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !2
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !2
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !2
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !2
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !2
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !2
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !2
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !2
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !2
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !2
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !2
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !2
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !2
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !2
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !2
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !2
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !2
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !2
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !2
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !2
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !2
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sext i8 16 to i64, !mcsema_real_eip !4
  %4 = sub i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %5 = xor i64 %4, %RSP_val.3, !mcsema_real_eip !4
  %6 = xor i64 %5, %3, !mcsema_real_eip !4
  %7 = and i64 %6, 16, !mcsema_real_eip !4
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !4
  store i1 %8, i1* %AF, !mcsema_real_eip !4
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !4
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !4
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !4
  %12 = xor i1 %11, true, !mcsema_real_eip !4
  store i1 %12, i1* %PF, !mcsema_real_eip !4
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !4
  store i1 %13, i1* %ZF, !mcsema_real_eip !4
  %14 = lshr i64 %4, 63, !mcsema_real_eip !4
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !4
  store i1 %15, i1* %SF, !mcsema_real_eip !4
  %16 = icmp ult i64 %RSP_val.3, %3, !mcsema_real_eip !4
  store i1 %16, i1* %CF, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = xor i64 %RSP_val.3, %4, !mcsema_real_eip !4
  %19 = and i64 %17, %18, !mcsema_real_eip !4
  %20 = lshr i64 %19, 63, !mcsema_real_eip !4
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !4
  store i1 %21, i1* %OF, !mcsema_real_eip !4
  store i64 %4, i64* %XSP, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %22 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !5
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %25, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %26 = add i64 %RBP_val.7, -8, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !6
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !6
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %29, !mcsema_real_eip !6
  br label %block_0x12, !mcsema_real_eip !7

block_0x12:                                       ; preds = %block_0x1e, %block_0x0
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %30 = add i64 %RBP_val.8, -8, !mcsema_real_eip !7
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !7
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !7
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !7
  %34 = load i32, i32* %33, !mcsema_real_eip !7
  %35 = zext i32 %34 to i64, !mcsema_real_eip !7
  store i64 %35, i64* %XAX, !mcsema_real_eip !7
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !8
  %36 = add i64 %RBP_val.9, -4, !mcsema_real_eip !8
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !8
  %EAX.10 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.11 = load i32, i32* %EAX.10, !mcsema_real_eip !8
  %38 = ptrtoint i64* %37 to i64, !mcsema_real_eip !8
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !8
  %40 = load i32, i32* %39, !mcsema_real_eip !8
  %41 = sub i32 %EAX_val.11, %40, !mcsema_real_eip !8
  %42 = xor i32 %41, %EAX_val.11, !mcsema_real_eip !8
  %43 = xor i32 %42, %40, !mcsema_real_eip !8
  %44 = and i32 %43, 16, !mcsema_real_eip !8
  %45 = icmp ne i32 %44, 0, !mcsema_real_eip !8
  store i1 %45, i1* %AF, !mcsema_real_eip !8
  %46 = trunc i32 %41 to i8, !mcsema_real_eip !8
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !8
  %48 = trunc i8 %47 to i1, !mcsema_real_eip !8
  %49 = xor i1 %48, true, !mcsema_real_eip !8
  store i1 %49, i1* %PF, !mcsema_real_eip !8
  %50 = icmp eq i32 %41, 0, !mcsema_real_eip !8
  store i1 %50, i1* %ZF, !mcsema_real_eip !8
  %51 = lshr i32 %41, 31, !mcsema_real_eip !8
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !8
  store i1 %52, i1* %SF, !mcsema_real_eip !8
  %53 = icmp ult i32 %EAX_val.11, %40, !mcsema_real_eip !8
  store i1 %53, i1* %CF, !mcsema_real_eip !8
  %54 = xor i32 %EAX_val.11, %40, !mcsema_real_eip !8
  %55 = xor i32 %EAX_val.11, %41, !mcsema_real_eip !8
  %56 = and i32 %54, %55, !mcsema_real_eip !8
  %57 = lshr i32 %56, 31, !mcsema_real_eip !8
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !8
  store i1 %58, i1* %OF, !mcsema_real_eip !8
  %59 = load i1, i1* %OF, !mcsema_real_eip !9
  %60 = load i1, i1* %SF, !mcsema_real_eip !9
  %61 = icmp eq i1 %60, %59, !mcsema_real_eip !9
  br i1 %61, label %block_0x40, label %block_0x1e, !mcsema_real_eip !9

block_0x1e:                                       ; preds = %block_0x12
  %62 = getelementptr %0, %0* @data_0x71, i64 0, i32 0, !mcsema_real_eip !10
  %63 = ptrtoint [13 x i8]* %62 to i64, !mcsema_real_eip !10
  %64 = add i64 %63, 0, !mcsema_real_eip !10
  store i64 %64, i64* %XDI, !mcsema_real_eip !10
  %AL.12 = bitcast i64* %XAX to i8*, !mcsema_real_eip !11
  store i8 0, i8* %AL.12, !mcsema_real_eip !11
  %RDI_val.13 = load i64, i64* %XDI, !mcsema_real_eip !12
  %RSI_val.14 = load i64, i64* %XSI, !mcsema_real_eip !12
  %RDX_val.15 = load i64, i64* %XDX, !mcsema_real_eip !12
  %RCX_val.16 = load i64, i64* %XCX, !mcsema_real_eip !12
  %R8_val.17 = load i64, i64* %R8, !mcsema_real_eip !12
  %R9_val.18 = load i64, i64* %R9, !mcsema_real_eip !12
  %RSP_val.19 = load i64, i64* %XSP, !mcsema_real_eip !12
  %65 = inttoptr i64 %RSP_val.19 to i64*, !mcsema_real_eip !12
  %66 = load i64, i64* %65, !mcsema_real_eip !12
  %67 = add i64 %RSP_val.19, 8, !mcsema_real_eip !12
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !12
  %69 = load i64, i64* %68, !mcsema_real_eip !12
  %70 = add i64 %67, 8, !mcsema_real_eip !12
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !12
  %72 = load i64, i64* %71, !mcsema_real_eip !12
  %73 = add i64 %70, 8, !mcsema_real_eip !12
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !12
  %75 = load i64, i64* %74, !mcsema_real_eip !12
  %76 = add i64 %73, 8, !mcsema_real_eip !12
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !12
  %78 = load i64, i64* %77, !mcsema_real_eip !12
  %79 = add i64 %76, 8, !mcsema_real_eip !12
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !12
  %81 = load i64, i64* %80, !mcsema_real_eip !12
  %82 = add i64 %79, 8, !mcsema_real_eip !12
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !12
  %84 = load i64, i64* %83, !mcsema_real_eip !12
  %85 = add i64 %82, 8, !mcsema_real_eip !12
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !12
  %87 = load i64, i64* %86, !mcsema_real_eip !12
  %88 = add i64 %85, 8, !mcsema_real_eip !12
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !12
  %90 = load i64, i64* %89, !mcsema_real_eip !12
  %91 = add i64 %88, 8, !mcsema_real_eip !12
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !12
  %93 = load i64, i64* %92, !mcsema_real_eip !12
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !12
  %94 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !12
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %95, !mcsema_real_eip !12
  store i64 %94, i64* %XSP, !mcsema_real_eip !12
  %96 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.13, i64 %RSI_val.14, i64 %RDX_val.15, i64 %RCX_val.16, i64 %R8_val.17, i64 %R9_val.18, i64 %66, i64 %69, i64 %72, i64 %75, i64 %78, i64 %81, i64 %84, i64 %87, i64 %90, i64 %93), !mcsema_real_eip !12
  store i64 %96, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %97 = add i64 %RBP_val.21, -12, !mcsema_real_eip !13
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !13
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !13
  %99 = ptrtoint i64* %98 to i64, !mcsema_real_eip !13
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %100, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !14
  %101 = add i64 %RBP_val.24, -8, !mcsema_real_eip !14
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !14
  %103 = ptrtoint i64* %102 to i64, !mcsema_real_eip !14
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !14
  %105 = load i32, i32* %104, !mcsema_real_eip !14
  %106 = zext i32 %105 to i64, !mcsema_real_eip !14
  store i64 %106, i64* %XAX, !mcsema_real_eip !14
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !15
  %107 = add i32 1, %EAX_val.26, !mcsema_real_eip !15
  %108 = xor i32 %107, %EAX_val.26, !mcsema_real_eip !15
  %109 = xor i32 %108, 1, !mcsema_real_eip !15
  %110 = and i32 %109, 16, !mcsema_real_eip !15
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !15
  store i1 %111, i1* %AF, !mcsema_real_eip !15
  %112 = lshr i32 %107, 31, !mcsema_real_eip !15
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !15
  store i1 %113, i1* %SF, !mcsema_real_eip !15
  %114 = icmp eq i32 %107, 0, !mcsema_real_eip !15
  store i1 %114, i1* %ZF, !mcsema_real_eip !15
  %115 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !15
  %116 = xor i32 %115, -1, !mcsema_real_eip !15
  %117 = xor i32 %EAX_val.26, %107, !mcsema_real_eip !15
  %118 = and i32 %116, %117, !mcsema_real_eip !15
  %119 = lshr i32 %118, 31, !mcsema_real_eip !15
  %120 = and i32 %119, 1, !mcsema_real_eip !15
  %121 = trunc i32 %120 to i1, !mcsema_real_eip !15
  store i1 %121, i1* %OF, !mcsema_real_eip !15
  %122 = trunc i32 %107 to i8, !mcsema_real_eip !15
  %123 = call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !15
  %124 = trunc i8 %123 to i1, !mcsema_real_eip !15
  %125 = xor i1 %124, true, !mcsema_real_eip !15
  store i1 %125, i1* %PF, !mcsema_real_eip !15
  %126 = icmp ult i32 %107, %EAX_val.26, !mcsema_real_eip !15
  store i1 %126, i1* %CF, !mcsema_real_eip !15
  %127 = zext i32 %107 to i64, !mcsema_real_eip !15
  store i64 %127, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !16
  %128 = add i64 %RBP_val.27, -8, !mcsema_real_eip !16
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !16
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !16
  %130 = ptrtoint i64* %129 to i64, !mcsema_real_eip !16
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.29, i32* %131, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x40:                                       ; preds = %block_0x12
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !18
  %132 = add i64 16, %RSP_val.30, !mcsema_real_eip !18
  %133 = xor i64 %132, %RSP_val.30, !mcsema_real_eip !18
  %134 = xor i64 %133, 16, !mcsema_real_eip !18
  %135 = and i64 %134, 16, !mcsema_real_eip !18
  %136 = icmp ne i64 %135, 0, !mcsema_real_eip !18
  store i1 %136, i1* %AF, !mcsema_real_eip !18
  %137 = lshr i64 %132, 63, !mcsema_real_eip !18
  %138 = trunc i64 %137 to i1, !mcsema_real_eip !18
  store i1 %138, i1* %SF, !mcsema_real_eip !18
  %139 = icmp eq i64 %132, 0, !mcsema_real_eip !18
  store i1 %139, i1* %ZF, !mcsema_real_eip !18
  %140 = xor i64 %RSP_val.30, 16, !mcsema_real_eip !18
  %141 = xor i64 %140, -1, !mcsema_real_eip !18
  %142 = xor i64 %RSP_val.30, %132, !mcsema_real_eip !18
  %143 = and i64 %141, %142, !mcsema_real_eip !18
  %144 = lshr i64 %143, 63, !mcsema_real_eip !18
  %145 = and i64 %144, 1, !mcsema_real_eip !18
  %146 = trunc i64 %145 to i1, !mcsema_real_eip !18
  store i1 %146, i1* %OF, !mcsema_real_eip !18
  %147 = trunc i64 %132 to i8, !mcsema_real_eip !18
  %148 = call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !18
  %149 = trunc i8 %148 to i1, !mcsema_real_eip !18
  %150 = xor i1 %149, true, !mcsema_real_eip !18
  store i1 %150, i1* %PF, !mcsema_real_eip !18
  %151 = icmp ult i64 %132, %RSP_val.30, !mcsema_real_eip !18
  store i1 %151, i1* %CF, !mcsema_real_eip !18
  store i64 %132, i64* %XSP, !mcsema_real_eip !18
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !19
  %152 = inttoptr i64 %RSP_val.31 to i64*, !mcsema_real_eip !19
  %153 = load i64, i64* %152, !mcsema_real_eip !19
  store i64 %153, i64* %XBP, !mcsema_real_eip !19
  %154 = add i64 %RSP_val.31, 8, !mcsema_real_eip !19
  store i64 %154, i64* %XSP, !mcsema_real_eip !19
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !20
  %155 = add i64 %RSP_val.32, 8, !mcsema_real_eip !20
  %156 = inttoptr i64 %RSP_val.32 to i64*, !mcsema_real_eip !20
  %157 = load i64, i64* %156, !mcsema_real_eip !20
  store i64 %157, i64* %XIP, !mcsema_real_eip !20
  store i64 %155, i64* %XSP, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !21
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !21
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !21
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !21
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !21
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !21
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !21
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !21
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !21
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !21
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !21
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !21
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !21
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !21
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !21
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !21
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !21
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !21
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !21
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !21
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !21
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !21
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !21
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !21
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !21
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !21
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !21
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !21
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !21
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !21
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !21
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !21
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !21
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !21
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !21
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !21
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !21
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !21
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !21
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !21
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !21
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !21
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !21
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !21
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !21
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !21
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !21
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !21
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !21
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !21
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !21
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !21
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !21
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !21
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !21
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !21
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !21
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !21
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !21
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !21
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !21
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !21
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !21
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !21
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !21
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !21
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !21
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !21
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !21
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !21
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !21
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !21
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !21
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !21
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !21
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !21
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !21
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !21
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !21
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !21
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !21
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !21
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !21
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !21
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !21
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !21
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !21
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !21
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !21
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !21
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !21
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !21
  br label %block_0x50, !mcsema_real_eip !21

block_0x50:                                       ; preds = %entry
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !21
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !21
  %1 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !21
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !21
  store i64 %RBP_val.33, i64* %2, !mcsema_real_eip !21
  store i64 %1, i64* %XSP, !mcsema_real_eip !21
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !22
  store i64 %RSP_val.35, i64* %XBP, !mcsema_real_eip !22
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !23
  %3 = sext i8 16 to i64, !mcsema_real_eip !23
  %4 = sub i64 %RSP_val.36, %3, !mcsema_real_eip !23
  %5 = xor i64 %4, %RSP_val.36, !mcsema_real_eip !23
  %6 = xor i64 %5, %3, !mcsema_real_eip !23
  %7 = and i64 %6, 16, !mcsema_real_eip !23
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !23
  store i1 %8, i1* %AF, !mcsema_real_eip !23
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !23
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !23
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !23
  %12 = xor i1 %11, true, !mcsema_real_eip !23
  store i1 %12, i1* %PF, !mcsema_real_eip !23
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !23
  store i1 %13, i1* %ZF, !mcsema_real_eip !23
  %14 = lshr i64 %4, 63, !mcsema_real_eip !23
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !23
  store i1 %15, i1* %SF, !mcsema_real_eip !23
  %16 = icmp ult i64 %RSP_val.36, %3, !mcsema_real_eip !23
  store i1 %16, i1* %CF, !mcsema_real_eip !23
  %17 = xor i64 %RSP_val.36, %3, !mcsema_real_eip !23
  %18 = xor i64 %RSP_val.36, %4, !mcsema_real_eip !23
  %19 = and i64 %17, %18, !mcsema_real_eip !23
  %20 = lshr i64 %19, 63, !mcsema_real_eip !23
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !23
  store i1 %21, i1* %OF, !mcsema_real_eip !23
  store i64 %4, i64* %XSP, !mcsema_real_eip !23
  %22 = zext i32 2 to i64, !mcsema_real_eip !24
  store i64 %22, i64* %XDI, !mcsema_real_eip !24
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !25
  %23 = add i64 %RBP_val.37, -4, !mcsema_real_eip !25
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !25
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !25
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !25
  store i32 0, i32* %26, !mcsema_real_eip !25
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !26
  %27 = sub i64 %RSP_val.38, 8, !mcsema_real_eip !26
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %28, !mcsema_real_eip !26
  store i64 %27, i64* %XSP, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !26
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !27
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !27
  %29 = xor i32 %EAX_val.40, %EAX_val.42, !mcsema_real_eip !27
  store i1 false, i1* %CF, !mcsema_real_eip !27
  store i1 false, i1* %OF, !mcsema_real_eip !27
  %30 = lshr i32 %29, 31, !mcsema_real_eip !27
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !27
  store i1 %31, i1* %SF, !mcsema_real_eip !27
  %32 = icmp eq i32 %29, 0, !mcsema_real_eip !27
  store i1 %32, i1* %ZF, !mcsema_real_eip !27
  %33 = trunc i32 %29 to i8, !mcsema_real_eip !27
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !27
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !27
  %36 = xor i1 %35, true, !mcsema_real_eip !27
  store i1 %36, i1* %PF, !mcsema_real_eip !27
  store i1 undef, i1* %AF, !mcsema_real_eip !27
  %37 = zext i32 %29 to i64, !mcsema_real_eip !27
  store i64 %37, i64* %XAX, !mcsema_real_eip !27
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !28
  %38 = add i64 16, %RSP_val.43, !mcsema_real_eip !28
  %39 = xor i64 %38, %RSP_val.43, !mcsema_real_eip !28
  %40 = xor i64 %39, 16, !mcsema_real_eip !28
  %41 = and i64 %40, 16, !mcsema_real_eip !28
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !28
  store i1 %42, i1* %AF, !mcsema_real_eip !28
  %43 = lshr i64 %38, 63, !mcsema_real_eip !28
  %44 = trunc i64 %43 to i1, !mcsema_real_eip !28
  store i1 %44, i1* %SF, !mcsema_real_eip !28
  %45 = icmp eq i64 %38, 0, !mcsema_real_eip !28
  store i1 %45, i1* %ZF, !mcsema_real_eip !28
  %46 = xor i64 %RSP_val.43, 16, !mcsema_real_eip !28
  %47 = xor i64 %46, -1, !mcsema_real_eip !28
  %48 = xor i64 %RSP_val.43, %38, !mcsema_real_eip !28
  %49 = and i64 %47, %48, !mcsema_real_eip !28
  %50 = lshr i64 %49, 63, !mcsema_real_eip !28
  %51 = and i64 %50, 1, !mcsema_real_eip !28
  %52 = trunc i64 %51 to i1, !mcsema_real_eip !28
  store i1 %52, i1* %OF, !mcsema_real_eip !28
  %53 = trunc i64 %38 to i8, !mcsema_real_eip !28
  %54 = call i8 @llvm.ctpop.i8(i8 %53), !mcsema_real_eip !28
  %55 = trunc i8 %54 to i1, !mcsema_real_eip !28
  %56 = xor i1 %55, true, !mcsema_real_eip !28
  store i1 %56, i1* %PF, !mcsema_real_eip !28
  %57 = icmp ult i64 %38, %RSP_val.43, !mcsema_real_eip !28
  store i1 %57, i1* %CF, !mcsema_real_eip !28
  store i64 %38, i64* %XSP, !mcsema_real_eip !28
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !29
  %58 = inttoptr i64 %RSP_val.44 to i64*, !mcsema_real_eip !29
  %59 = load i64, i64* %58, !mcsema_real_eip !29
  store i64 %59, i64* %XBP, !mcsema_real_eip !29
  %60 = add i64 %RSP_val.44, 8, !mcsema_real_eip !29
  store i64 %60, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !30
  %61 = add i64 %RSP_val.45, 8, !mcsema_real_eip !30
  %62 = inttoptr i64 %RSP_val.45 to i64*, !mcsema_real_eip !30
  %63 = load i64, i64* %62, !mcsema_real_eip !30
  store i64 %63, i64* %XIP, !mcsema_real_eip !30
  store i64 %61, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

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
!7 = !{i64 18}
!8 = !{i64 21}
!9 = !{i64 24}
!10 = !{i64 30}
!11 = !{i64 40}
!12 = !{i64 42}
!13 = !{i64 47}
!14 = !{i64 50}
!15 = !{i64 53}
!16 = !{i64 56}
!17 = !{i64 59}
!18 = !{i64 64}
!19 = !{i64 68}
!20 = !{i64 69}
!21 = !{i64 80}
!22 = !{i64 81}
!23 = !{i64 84}
!24 = !{i64 88}
!25 = !{i64 93}
!26 = !{i64 100}
!27 = !{i64 105}
!28 = !{i64 107}
!29 = !{i64 111}
!30 = !{i64 112}
