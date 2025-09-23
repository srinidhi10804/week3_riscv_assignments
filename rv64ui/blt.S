# See LICENSE for license details.

#*****************************************************************************
# blt.S
#-----------------------------------------------------------------------------
#
# Test blt instruction (Branch if Less Than).
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Test 1: Branch if Less Than (Signed) (t0 < t1)
  #-------------------------------------------------------------
  andi t0, t0, 0     # Clear register t0
  andi t1, t1, 0     # Clear register t1
  andi t2, t2, 0     # Clear register t2
  andi t3, t3, 0     # Clear register t3
  li t0, -10         # Load a negative value into t0 (-10)
  li t1, 5           # Load a positive value into t1 (5)
  blt t0, t1, less_than  # Branch to 'less_than' if t0 < t1 (signed comparison)

  # This instruction should be skipped if the branch is taken
  addi t2, t2, 1     # This should be skipped if t0 < t1

less_than:
  addi t3, t3, 1     # Set t3 to 1 to confirm branch was taken

  #-------------------------------------------------------------
  # Test 2: Branch if Less Than (Signed) (t0 >= t1)
  #-------------------------------------------------------------
  andi t0, t0, 0     # Clear register t0 again
  andi t1, t1, 0     # Clear register t1 again
  andi t2, t2, 0     # Clear register t2 again
  andi t3, t3, 0     # Clear register t3 again
  li t0, 10          # Load a positive value into t0 (10)
  li t1, 5           # Load a smaller value into t1 (5)
  blt t0, t1, not_less_than  # Branch to 'not_less_than' if t0 < t1 (signed comparison)

  # This instruction should be executed if the branch is not taken
  addi t2, t2, 1     # Increment t2 if branch is not taken

not_less_than:
  addi t3, t3, 1     # Set t3 to 1 to confirm branch was not taken

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
