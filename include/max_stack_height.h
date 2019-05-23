//===-- max_stack_height.h - Static analysis for stack height approximation
//--------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file provide class definition and functionality to approximate the max
// stack frame size for each fucntion.
//
//===----------------------------------------------------------------------===//

#ifndef __MAX_STACK_HEIGHT_H__
#define __MAX_STACK_HEIGHT_H__

#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"

namespace llvm {

// enum for the data flow values associated with each basic block
// Each program point is associated with 3 data flow values
// IN, OUT, GEN,; each of them is a tuple <ACTUAL_RSP, ACTUAL_RBP,
// MAX_DISP_FROM_RSP,
// MAX_DISP_FROM_RBP>
enum DFA_FUNCTIONS {
  IN = 0,
  GEN,
  OUT,
  TOTAL_FUNCTIONS // = 3
};

enum DFA_VALUES {
  ACTUAL_RSP = 0,
  ACTUAL_RBP,
  MAX_DISP_RSP,
  MAX_DISP_RBP,
  TOTAL_VALUES // = 4
};

enum INSTMAP_VAL {
  IS_RSP = 0,
  IS_UNKNOWN,
  NUM_INSTMAP_VAL // =2
};

typedef int64_t height_ty;
typedef std::vector<height_ty> dfa_values;
typedef std::vector<dfa_values> dfa_functions;

typedef std::vector<bool> attribs;
typedef std::pair<height_ty, attribs> inst_map_val;

dfa_values operator+(dfa_values &x, dfa_values &y);

class max_stack_height : public FunctionPass,
                         public InstVisitor<max_stack_height> {
private:
  Function *Func;
  height_ty stack_height;

  // Maps each Basic Block to its data flow functions (IN, OUT, GEN)
  DenseMap<BasicBlock *, dfa_functions *> BBMap;

  // Map to do a symbolic execution on the instruction of a BB
  // involving rsp, rbp displacements to track the
  // max displacement of rsp or from rbp in that BB.
  DenseMap<Value *, inst_map_val> InstMap;
  height_ty max_dis_of_rsp, max_dis_of_rbp;

  Value *get_init_xsp_or_rsp(Function *, bool);
  // LLVM alloca inst for rsp, rbp
  Value *llvm_alloca_inst_rsp;
  Value *llvm_alloca_inst_rbp;

  void perform_dfa();
  bool initialize_framework();
  void perform_const_dfa();
  void perform_global_dfa();
  dfa_values calculate_max_height_BB(BasicBlock *BB, dfa_values);
  void transfer_function(dfa_functions *, BasicBlock *);
  dfa_values meet_over_preds(BasicBlock *BB);
  void cleanup_framework();

  // Debug functions
  void debug_local_dfa_info(Value *I);
  void debug_global_dfa_info();
  void compute_height();
  void debug_dfa_values(std::string, dfa_values);
  void dump_cfg();

public:
  static char ID;

  height_ty get_stack_height() { return stack_height; }

  max_stack_height() : FunctionPass(ID) {
    llvm_alloca_inst_rsp = NULL;
    llvm_alloca_inst_rbp = NULL;
    stack_height = 0;
  }

  virtual bool runOnFunction(Function &F);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
  };

  // Overriden InstVisitor methods
  void visitLoadInst(LoadInst &I);
  void visitStoreInst(StoreInst &I);
  void visitExtractValueInst(ExtractValueInst &I);
  void visitIntrinsicInst(IntrinsicInst &I);
  void visitAdd(BinaryOperator &I);
  void visitSub(BinaryOperator &I);
  void visitCallInst(CallInst &I);
  void visitAddSubHelper(Instruction *I, bool isAdd, Value *, Value *);
};
}

#endif
