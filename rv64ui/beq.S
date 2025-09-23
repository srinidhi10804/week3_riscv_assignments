# See LICENSE for license details.

#*****************************************************************************
# beq.S
#-----------------------------------------------------------------------------
#
# Test beq instruction.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Test 1: Branch if registers are equal
  #-------------------------------------------------------------
  andi t0, t0, 0     # Clear register t0
  andi t1, t1, 0     # Clear register t1
  andi t2, t2, 0     # Clear register t2
  andi t3, t3, 0     # Clear register t3
  li t0, 0x1234      # Load a value into t0
  li t1, 0x1234      # Load the same value into t1
  beq t0, t1, equal  # Branch to 'equal' if t0 == t1

  # This instruction should be skipped if the branch is taken
  addi t2, t2, 1     # This instruction is skipped if t0 == t1

equal:
  addi t3, t3, 1     # Set t3 to 1 to confirm branch was taken

  #-------------------------------------------------------------
  # Test 2: Branch if registers are not equal
  #-------------------------------------------------------------
  andi t0, t0, 0     # Clear register t0 again
  andi t1, t1, 0     # Clear register t1 again
  andi t2, t2, 0     # Clear register t2 again
  andi t3, t3, 0     # Clear register t3 again
  li t0, 0x1234      # Load a value into t0
  li t1, 0x5678      # Load a different value into t1
  beq t0, t1, not_equal  # Branch to 'not_equal' if t0 == t1

  # This instruction should be executed if the branch is not taken
  addi t2, t2, 1     # Increment t2 if branch is not taken

not_equal:
  addi t3, t3, 1     # Set t3 to 1 to confirm branch was not taken

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
