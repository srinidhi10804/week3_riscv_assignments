# See LICENSE for license details.

#*****************************************************************************
# addiw.S
#-----------------------------------------------------------------------------
#
# Test addiw instruction (Add Immediate Word).
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
  addiw t2, t0, 0x123 # Add immediate word (32-bit) to t0, result in t2
  addiw t3, t1, -0x456 # Add negative immediate word (32-bit) to t1, result in t3

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
