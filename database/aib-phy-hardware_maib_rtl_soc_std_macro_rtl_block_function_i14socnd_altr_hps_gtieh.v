// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
//****************************************************************************************
// (C) 2011 Altera Corporation. All rights reserved.
//
//****************************************************************************************

//------------------------------------------------------------------------
// Description: GTIEH cell
// 
// GTIEH is a special "buffer" where the output polarity (1 or 0) can be changed 
// at M2 layer
// 
// GITEH will by default drive a constant "1"
//
//------------------------------------------------------------------------

module altr_hps_gtieh (
    output wire         z_out     // output
);

`ifdef ALTR_HPS_INTEL_MACROS_OFF
   assign z_out = 1'b1;
`else
`endif

endmodule // altr_hps_gtieh
