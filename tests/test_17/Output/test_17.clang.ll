; ModuleID = 'Output/test_17.clang.bc'
source_filename = "Output/test_17.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl printdata;"
module asm "  .type printdata,@function"
module asm "printdata:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size printdata,0b-printdata;"
module asm "  .cfi_endproc;"

%0 = type <{ [24 x i8], i64, [16 x i8], i64, [16 x i8], i64, [16 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x60 = internal global %0 <{ [24 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [16 x i8] zeroinitializer }>, align 64
@data_0xc0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"_\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %RBP_val.3 = load i64, i64* %XBP, !mcsema_real_eip !4
  %3 = add i64 %RBP_val.3, -8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %5 = ptrtoint i64* %4 to i64, !mcsema_real_eip !4
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !4
  store i32 0, i32* %6, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %7 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !5
  %9 = ptrtoint i64* %8 to i64, !mcsema_real_eip !5
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %10, !mcsema_real_eip !5
  br label %block_0x12, !mcsema_real_eip !6

block_0x12:                                       ; preds = %block_0x4c, %block_0x0
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.5, -4, !mcsema_real_eip !6
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !6
  %13 = ptrtoint i64* %12 to i64, !mcsema_real_eip !6
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !6
  %15 = load i32, i32* %14, !mcsema_real_eip !6
  %16 = sext i32 %15 to i64, !mcsema_real_eip !6
  store i64 %16, i64* %XAX, !mcsema_real_eip !6
  %RAX_val.6 = load i64, i64* %XAX, !mcsema_real_eip !7
  %17 = sub i64 %RAX_val.6, 10, !mcsema_real_eip !7
  %18 = xor i64 %17, %RAX_val.6, !mcsema_real_eip !7
  %19 = xor i64 %18, 10, !mcsema_real_eip !7
  %20 = and i64 %19, 16, !mcsema_real_eip !7
  %21 = icmp ne i64 %20, 0, !mcsema_real_eip !7
  store i1 %21, i1* %AF, !mcsema_real_eip !7
  %22 = trunc i64 %17 to i8, !mcsema_real_eip !7
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !7
  %24 = trunc i8 %23 to i1, !mcsema_real_eip !7
  %25 = xor i1 %24, true, !mcsema_real_eip !7
  store i1 %25, i1* %PF, !mcsema_real_eip !7
  %26 = icmp eq i64 %17, 0, !mcsema_real_eip !7
  store i1 %26, i1* %ZF, !mcsema_real_eip !7
  %27 = lshr i64 %17, 63, !mcsema_real_eip !7
  %28 = trunc i64 %27 to i1, !mcsema_real_eip !7
  store i1 %28, i1* %SF, !mcsema_real_eip !7
  %29 = icmp ult i64 %RAX_val.6, 10, !mcsema_real_eip !7
  store i1 %29, i1* %CF, !mcsema_real_eip !7
  %30 = xor i64 %RAX_val.6, 10, !mcsema_real_eip !7
  %31 = xor i64 %RAX_val.6, %17, !mcsema_real_eip !7
  %32 = and i64 %30, %31, !mcsema_real_eip !7
  %33 = lshr i64 %32, 63, !mcsema_real_eip !7
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !7
  store i1 %34, i1* %OF, !mcsema_real_eip !7
  %35 = load i1, i1* %CF, !mcsema_real_eip !8
  %36 = icmp eq i1 %35, false, !mcsema_real_eip !8
  br i1 %36, label %block_0x5a, label %block_0x20, !mcsema_real_eip !8

block_0x20:                                       ; preds = %block_0x12
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !9
  %37 = add i64 %RBP_val.7, -4, !mcsema_real_eip !9
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !9
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !9
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !9
  %41 = load i32, i32* %40, !mcsema_real_eip !9
  %42 = sext i32 %41 to i64, !mcsema_real_eip !9
  store i64 %42, i64* %XAX, !mcsema_real_eip !9
  %43 = getelementptr %0, %0* @data_0x60, i64 0, i32 0, !mcsema_real_eip !10
  %44 = ptrtoint [24 x i8]* %43 to i64, !mcsema_real_eip !10
  %45 = add i64 %44, 16, !mcsema_real_eip !10
  %46 = add i64 0, %45, !mcsema_real_eip !10
  %RAX_val.8 = load i64, i64* %XAX, !mcsema_real_eip !10
  %47 = mul i64 %RAX_val.8, 8, !mcsema_real_eip !10
  %48 = add i64 %46, %47, !mcsema_real_eip !10
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !10
  %50 = load i64, i64* %49, !mcsema_real_eip !10
  %51 = sub i64 %50, 0, !mcsema_real_eip !10
  %52 = xor i64 %51, %50, !mcsema_real_eip !10
  %53 = xor i64 %52, 0, !mcsema_real_eip !10
  %54 = and i64 %53, 16, !mcsema_real_eip !10
  %55 = icmp ne i64 %54, 0, !mcsema_real_eip !10
  store i1 %55, i1* %AF, !mcsema_real_eip !10
  %56 = trunc i64 %51 to i8, !mcsema_real_eip !10
  %57 = call i8 @llvm.ctpop.i8(i8 %56), !mcsema_real_eip !10
  %58 = trunc i8 %57 to i1, !mcsema_real_eip !10
  %59 = xor i1 %58, true, !mcsema_real_eip !10
  store i1 %59, i1* %PF, !mcsema_real_eip !10
  %60 = icmp eq i64 %51, 0, !mcsema_real_eip !10
  store i1 %60, i1* %ZF, !mcsema_real_eip !10
  %61 = lshr i64 %51, 63, !mcsema_real_eip !10
  %62 = trunc i64 %61 to i1, !mcsema_real_eip !10
  store i1 %62, i1* %SF, !mcsema_real_eip !10
  %63 = icmp ult i64 %50, 0, !mcsema_real_eip !10
  store i1 %63, i1* %CF, !mcsema_real_eip !10
  %64 = xor i64 %50, 0, !mcsema_real_eip !10
  %65 = xor i64 %50, %51, !mcsema_real_eip !10
  %66 = and i64 %64, %65, !mcsema_real_eip !10
  %67 = lshr i64 %66, 63, !mcsema_real_eip !10
  %68 = trunc i64 %67 to i1, !mcsema_real_eip !10
  store i1 %68, i1* %OF, !mcsema_real_eip !10
  %69 = load i1, i1* %ZF, !mcsema_real_eip !11
  %70 = icmp eq i1 %69, true, !mcsema_real_eip !11
  br i1 %70, label %block_0x47, label %block_0x33, !mcsema_real_eip !11

block_0x33:                                       ; preds = %block_0x20
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !12
  %71 = add i64 %RBP_val.9, -4, !mcsema_real_eip !12
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !12
  %73 = ptrtoint i64* %72 to i64, !mcsema_real_eip !12
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !12
  %75 = load i32, i32* %74, !mcsema_real_eip !12
  %76 = sext i32 %75 to i64, !mcsema_real_eip !12
  store i64 %76, i64* %XAX, !mcsema_real_eip !12
  %77 = getelementptr %0, %0* @data_0x60, i64 0, i32 0, !mcsema_real_eip !13
  %78 = ptrtoint [24 x i8]* %77 to i64, !mcsema_real_eip !13
  %79 = add i64 %78, 16, !mcsema_real_eip !13
  %80 = add i64 0, %79, !mcsema_real_eip !13
  %RAX_val.10 = load i64, i64* %XAX, !mcsema_real_eip !13
  %81 = mul i64 %RAX_val.10, 8, !mcsema_real_eip !13
  %82 = add i64 %80, %81, !mcsema_real_eip !13
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !13
  %84 = load i64, i64* %83, !mcsema_real_eip !13
  store i64 %84, i64* %XAX, !mcsema_real_eip !13
  %RAX_val.11 = load i64, i64* %XAX, !mcsema_real_eip !14
  %85 = add i64 %RAX_val.11, 0, !mcsema_real_eip !14
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !14
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !14
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !14
  %89 = load i32, i32* %88, !mcsema_real_eip !14
  %90 = zext i32 %89 to i64, !mcsema_real_eip !14
  store i64 %90, i64* %XCX, !mcsema_real_eip !14
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !15
  %91 = add i64 %RBP_val.12, -8, !mcsema_real_eip !15
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !15
  %93 = ptrtoint i64* %92 to i64, !mcsema_real_eip !15
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !15
  %95 = load i32, i32* %94, !mcsema_real_eip !15
  %ECX.13 = bitcast i64* %XCX to i32*, !mcsema_real_eip !15
  %ECX_val.14 = load i32, i32* %ECX.13, !mcsema_real_eip !15
  %96 = add i32 %ECX_val.14, %95, !mcsema_real_eip !15
  %97 = xor i32 %96, %95, !mcsema_real_eip !15
  %98 = xor i32 %97, %ECX_val.14, !mcsema_real_eip !15
  %99 = and i32 %98, 16, !mcsema_real_eip !15
  %100 = icmp ne i32 %99, 0, !mcsema_real_eip !15
  store i1 %100, i1* %AF, !mcsema_real_eip !15
  %101 = lshr i32 %96, 31, !mcsema_real_eip !15
  %102 = trunc i32 %101 to i1, !mcsema_real_eip !15
  store i1 %102, i1* %SF, !mcsema_real_eip !15
  %103 = icmp eq i32 %96, 0, !mcsema_real_eip !15
  store i1 %103, i1* %ZF, !mcsema_real_eip !15
  %104 = xor i32 %95, %ECX_val.14, !mcsema_real_eip !15
  %105 = xor i32 %104, -1, !mcsema_real_eip !15
  %106 = xor i32 %95, %96, !mcsema_real_eip !15
  %107 = and i32 %105, %106, !mcsema_real_eip !15
  %108 = lshr i32 %107, 31, !mcsema_real_eip !15
  %109 = and i32 %108, 1, !mcsema_real_eip !15
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !15
  store i1 %110, i1* %OF, !mcsema_real_eip !15
  %111 = trunc i32 %96 to i8, !mcsema_real_eip !15
  %112 = call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !15
  %113 = trunc i8 %112 to i1, !mcsema_real_eip !15
  %114 = xor i1 %113, true, !mcsema_real_eip !15
  store i1 %114, i1* %PF, !mcsema_real_eip !15
  %115 = icmp ult i32 %96, %95, !mcsema_real_eip !15
  store i1 %115, i1* %CF, !mcsema_real_eip !15
  %116 = zext i32 %96 to i64, !mcsema_real_eip !15
  store i64 %116, i64* %XCX, !mcsema_real_eip !15
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !16
  %117 = add i64 %RBP_val.15, -8, !mcsema_real_eip !16
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !16
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !16
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !16
  %119 = ptrtoint i64* %118 to i64, !mcsema_real_eip !16
  %120 = inttoptr i64 %119 to i32*, !mcsema_real_eip !16
  store i32 %ECX_val.17, i32* %120, !mcsema_real_eip !16
  br label %block_0x47, !mcsema_real_eip !17

block_0x47:                                       ; preds = %block_0x33, %block_0x20
  br label %block_0x4c, !mcsema_real_eip !17

block_0x4c:                                       ; preds = %block_0x47
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !18
  %121 = add i64 %RBP_val.18, -4, !mcsema_real_eip !18
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !18
  %123 = ptrtoint i64* %122 to i64, !mcsema_real_eip !18
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !18
  %125 = load i32, i32* %124, !mcsema_real_eip !18
  %126 = zext i32 %125 to i64, !mcsema_real_eip !18
  store i64 %126, i64* %XAX, !mcsema_real_eip !18
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !19
  %127 = add i32 1, %EAX_val.20, !mcsema_real_eip !19
  %128 = xor i32 %127, %EAX_val.20, !mcsema_real_eip !19
  %129 = xor i32 %128, 1, !mcsema_real_eip !19
  %130 = and i32 %129, 16, !mcsema_real_eip !19
  %131 = icmp ne i32 %130, 0, !mcsema_real_eip !19
  store i1 %131, i1* %AF, !mcsema_real_eip !19
  %132 = lshr i32 %127, 31, !mcsema_real_eip !19
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !19
  store i1 %133, i1* %SF, !mcsema_real_eip !19
  %134 = icmp eq i32 %127, 0, !mcsema_real_eip !19
  store i1 %134, i1* %ZF, !mcsema_real_eip !19
  %135 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !19
  %136 = xor i32 %135, -1, !mcsema_real_eip !19
  %137 = xor i32 %EAX_val.20, %127, !mcsema_real_eip !19
  %138 = and i32 %136, %137, !mcsema_real_eip !19
  %139 = lshr i32 %138, 31, !mcsema_real_eip !19
  %140 = and i32 %139, 1, !mcsema_real_eip !19
  %141 = trunc i32 %140 to i1, !mcsema_real_eip !19
  store i1 %141, i1* %OF, !mcsema_real_eip !19
  %142 = trunc i32 %127 to i8, !mcsema_real_eip !19
  %143 = call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !19
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !19
  %145 = xor i1 %144, true, !mcsema_real_eip !19
  store i1 %145, i1* %PF, !mcsema_real_eip !19
  %146 = icmp ult i32 %127, %EAX_val.20, !mcsema_real_eip !19
  store i1 %146, i1* %CF, !mcsema_real_eip !19
  %147 = zext i32 %127 to i64, !mcsema_real_eip !19
  store i64 %147, i64* %XAX, !mcsema_real_eip !19
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !20
  %148 = add i64 %RBP_val.21, -4, !mcsema_real_eip !20
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !20
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !20
  %150 = ptrtoint i64* %149 to i64, !mcsema_real_eip !20
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.23, i32* %151, !mcsema_real_eip !20
  br label %block_0x12, !mcsema_real_eip !21

block_0x5a:                                       ; preds = %block_0x12
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !22
  %152 = add i64 %RBP_val.24, -8, !mcsema_real_eip !22
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !22
  %154 = ptrtoint i64* %153 to i64, !mcsema_real_eip !22
  %155 = inttoptr i64 %154 to i32*, !mcsema_real_eip !22
  %156 = load i32, i32* %155, !mcsema_real_eip !22
  %157 = zext i32 %156 to i64, !mcsema_real_eip !22
  store i64 %157, i64* %XAX, !mcsema_real_eip !22
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !23
  %158 = inttoptr i64 %RSP_val.25 to i64*, !mcsema_real_eip !23
  %159 = load i64, i64* %158, !mcsema_real_eip !23
  store i64 %159, i64* %XBP, !mcsema_real_eip !23
  %160 = add i64 %RSP_val.25, 8, !mcsema_real_eip !23
  store i64 %160, i64* %XSP, !mcsema_real_eip !23
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !24
  %161 = add i64 %RSP_val.26, 8, !mcsema_real_eip !24
  %162 = inttoptr i64 %RSP_val.26 to i64*, !mcsema_real_eip !24
  %163 = load i64, i64* %162, !mcsema_real_eip !24
  store i64 %163, i64* %XIP, !mcsema_real_eip !24
  store i64 %161, i64* %XSP, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare void @printdata() #2

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
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 26}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 45}
!12 = !{i64 51}
!13 = !{i64 55}
!14 = !{i64 63}
!15 = !{i64 65}
!16 = !{i64 68}
!17 = !{i64 71}
!18 = !{i64 76}
!19 = !{i64 79}
!20 = !{i64 82}
!21 = !{i64 85}
!22 = !{i64 90}
!23 = !{i64 93}
!24 = !{i64 94}
