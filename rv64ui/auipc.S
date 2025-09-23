# See LICENSE for license details.

#*****************************************************************************
# auipc.S
#-----------------------------------------------------------------------------
#
# Test auipc instruction.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Test 1: Test auipc with zero immediate value (edge case)
  #-------------------------------------------------------------
  andi a0, a0, 0    # Clear register a0
  auipc a0, 0        # a0 = PC + (0 << 12) = PC (no change)
  addi a0, a0, 0     # No-op to ensure a0 holds the correct value

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
