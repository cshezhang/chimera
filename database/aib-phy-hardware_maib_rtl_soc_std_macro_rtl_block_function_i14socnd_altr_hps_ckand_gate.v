// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
//-----------------------------------------------------------------------------
//  Clock XOR macro
//-----------------------------------------------------------------------------

module altr_hps_ckand_gate (
    input  wire              and_clk,     // and input 1
    input  wire              and_en,     // and input 2
    output  wire             and_out      // and output
);

// -------------------
// Port declarations
// -------------------

// -----
// RTL
// -----

`ifdef ALTR_HPS_INTEL_MACROS_OFF
assign and_out = and_clk & and_en;

`else



`endif

endmodule
