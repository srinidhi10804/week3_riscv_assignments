# See LICENSE for license details.

#*****************************************************************************
# addi.S
#-----------------------------------------------------------------------------
#
# Test addi instruction.
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
  li t0, 0x1A352A9C # Loading register t0 with a value
  li t1, 0x1B2D4C6A # Loading register t1 with a value
  addi t2, t0, 0x1CB # Add immediate to t0 and place the result in t2
  addi t3, t1, -0x3E9 # Add negative immediate to t1 and place the result in t3

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
