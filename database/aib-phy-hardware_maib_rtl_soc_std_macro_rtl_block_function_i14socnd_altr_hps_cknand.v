// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
//-----------------------------------------------------------------------------
//  Clock XOR macro
//-----------------------------------------------------------------------------

module altr_hps_cknand (
    input  wire              nand_in1,     // and input 1
    input  wire              nand_in2,     // and input 2
    output  wire             nand_out      // and output
);

// -------------------
// Port declarations
// -------------------

// -----
// RTL
// -----

`ifdef ALTR_HPS_INTEL_MACROS_OFF
assign nand_out = ~(nand_in1 & nand_in2);

`else


`endif

endmodule
