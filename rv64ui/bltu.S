# See LICENSE for license details.

#*****************************************************************************
# bltu.S
#-----------------------------------------------------------------------------
#
# Test bltu instruction (Branch if Less Than, Unsigned).
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Test 1: Branch if Less Than Unsigned (t0 < t1) - Unsigned Comparison
  #-------------------------------------------------------------
  andi t0, t0, 0     # Clear register t0
  andi t1, t1, 0     # Clear register t1
  andi t2, t2, 0     # Clear register t2
  andi t3, t3, 0     # Clear register t3
  li t0, 0xFFFFFFF0  # Load a large unsigned value into t0 (signed value -16)
  li t1, 0x0000F234  # Load a smaller unsigned value into t1 (positive value)
  bltu t0, t1, less_than_unsigned  # Branch to 'less_than_unsigned' if t0 < t1 (unsigned)

  # This instruction should be skipped if the branch is taken
  addi t2, t2, 1     # This should be skipped if t0 < t1 (unsigned)

less_than_unsigned:
  addi t3, t3, 1     # Set t3 to 1 to confirm branch was taken

  #-------------------------------------------------------------
  # Test 2: Branch if Less Than Unsigned (t0 >= t1) - Unsigned Comparison
  #-------------------------------------------------------------
  andi t0, t0, 0     # Clear register t0 again
  andi t1, t1, 0     # Clear register t1 again
  andi t2, t2, 0     # Clear register t2 again
  andi t3, t3, 0     # Clear register t3 again
  li t0, 0x00001234  # Load a small unsigned value into t0 (positive value)
  li t1, 0x0000F234  # Load a larger unsigned value into t1 (positive value)
  bltu t0, t1, not_less_than_unsigned  # Branch to 'not_less_than_unsigned' if t0 < t1 (unsigned)

  # This instruction should be executed if the branch is not taken
  addi t2, t2, 1     # Increment t2 if branch is not taken

not_less_than_unsigned:
  addi t3, t3, 1     # Set t3 to 1 to confirm branch was not taken

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
