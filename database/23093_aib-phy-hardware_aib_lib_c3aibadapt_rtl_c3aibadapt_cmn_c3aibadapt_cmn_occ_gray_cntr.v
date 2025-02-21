// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
//gray code counter
module c3aibadapt_cmn_occ_gray_cntr (
  clk,
  rst_n,
  en,
  cout
);


input clk;
input rst_n;
input en;
output [1:0] cout;

reg [1:0] counter_reg;

always @(posedge clk or negedge rst_n)
begin
  if(rst_n == 1'b0)
    counter_reg <= 2'b00;
  else
  begin
    if(en == 1'b1)
      counter_reg <= counter_reg + 1;
    else
      counter_reg <= counter_reg;
  end
end

// need auto-code generator for different WIDTH
assign cout = {counter_reg[1],counter_reg[1]^counter_reg[0]};

endmodule

