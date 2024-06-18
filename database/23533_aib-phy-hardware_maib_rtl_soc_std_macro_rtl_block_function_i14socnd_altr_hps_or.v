// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
//****************************************************************************************
// (C) 2011 Altera Corporation. All rights reserved.
//
//****************************************************************************************

//------------------------------------------------------------------------
// Description: standard or gate
//
//------------------------------------------------------------------------

module altr_hps_or
    (
    input  wire              or_in1,     // and input 1
    input  wire              or_in2,     // and input 2
    output  wire             or_out      // or output
     );

`ifdef ALTR_HPS_INTEL_MACROS_OFF
    assign or_out = or_in1 | or_in2;
`else
`endif

endmodule // altr_hps_or
