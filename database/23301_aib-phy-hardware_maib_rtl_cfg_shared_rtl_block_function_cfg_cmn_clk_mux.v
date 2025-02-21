// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
module cfg_cmn_clk_mux (
  input  clk1,
  input  clk2,
  input  sel,
  output clk_out
);

  assign clk_out = sel ? clk1 : clk2;

endmodule
