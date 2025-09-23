# See LICENSE for license details.

#*****************************************************************************
# addw.S
#-----------------------------------------------------------------------------
#
# Test addw instruction (Add Word).
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  andi t0, t0, 0 # Clear register t0
  andi t1, t1, 0 # Clear register t1
  andi t2, t2, 0 # Clear register t2
  andi t3, t3, 0 # Clear register t3
  li t0, 0x12345678 # Loading register t0 with a 32-bit value
  li t1, 0x9ABCDEF0 # Loading register t1 with a 32-bit value
  addw t2, t0, t1 # Add word (32-bit) of t0 and t1, store result in t2
  addw t3, t1, t0 # Add word (32-bit) of t1 and t0, store result in t3

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
