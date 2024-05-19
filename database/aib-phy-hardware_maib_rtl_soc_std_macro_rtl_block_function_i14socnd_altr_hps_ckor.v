// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
//-----------------------------------------------------------------------------
//  Clock OR macro
//-----------------------------------------------------------------------------

module altr_hps_ckor (
    input  wire              or_in1,     // or input 1
    input  wire              or_in2,     // or input 2
    output  wire             or_out      // or output
);

// -------------------
// Port declarations
// -------------------

// -----
// RTL
// -----

wire   or_out_n;

`ifdef ALTR_HPS_INTEL_MACROS_OFF
assign or_out = or_in1 | or_in2;

`else



`endif

endmodule
