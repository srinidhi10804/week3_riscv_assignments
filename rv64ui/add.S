# See LICENSE for license details.

#*****************************************************************************
# add.S
#-----------------------------------------------------------------------------
#
# Test add instruction.
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
  addi t2, t0, 0x1CB # Add t0 with an immediate value
  add t2, t0, t1 # Add -- t0 with t1 and place the result in t2
  addw t3, t0, t1

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
