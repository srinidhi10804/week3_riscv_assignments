# See LICENSE for license details.

#*****************************************************************************
# andi.S
#-----------------------------------------------------------------------------
#
# Test andi instruction.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Logical tests
  #-------------------------------------------------------------

  andi t0, t0, 0  # Clear register t0
  andi t1, t1, 0  # Clear register t1
  li t0, 0x13372D6 # Load t0 register with a value
  andi t1, t0, 0xFC # Logical AND-Immediate operation of contents of t0 with an immediate value. Result is placed in t1

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
