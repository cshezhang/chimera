// This program was cloned from: https://github.com/johnathan-convertino-afrl/ad_hdl_fusesoc
// License: MIT License

// ***************************************************************************
// ***************************************************************************
// Copyright 2014 - 2017 (c) Analog Devices, Inc. All rights reserved.
//
// In this HDL repository, there are many different and unique modules, consisting
// of various HDL (Verilog or VHDL) components. The individual modules are
// developed independently, and may be accompanied by separate and unique license
// terms.
//
// The user should read each of these license terms, and understand the
// freedoms and responsibilities that he or she has by using this source/core.
//
// This core is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.
//
// Redistribution and use of source or resulting binaries, with or without modification
// of this file, are permitted under one of the following two license terms:
//
//   1. The GNU General Public License version 2 as published by the
//      Free Software Foundation, which can be found in the top level directory
//      of this repository (LICENSE_GPL2), and also online at:
//      <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html>
//
// OR
//
//   2. An ADI specific BSD license, which can be found in the top level directory
//      of this repository (LICENSE_ADIBSD), and also on-line at:
//      https://github.com/analogdevicesinc/hdl/blob/master/LICENSE_ADIBSD
//      This will allow to generate bit files and not release the source code,
//      as long as it attaches to an ADI device.
//
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps

module ad_data_clk #(
  parameter   FPGA_TECHNOLOGY = 103,
  parameter   GLOBAL_CLOCK = 1,
  parameter   SINGLE_ENDED = 0) (

  input               rst,
  output              locked,

  input               clk_in_p,
  input               clk_in_n,
  output              clk);
  
  // local parameters

  localparam CYCLONE5 = 101;
  localparam ARRIA10  = 103;
  
  // defaults
  
  assign locked = 1'b1;

  // instantiations

  generate
  if (FPGA_TECHNOLOGY == CYCLONE5) begin
    //don't have one to test 
    assign clk = 0;
  end
  endgenerate
  
  generate
  if (FPGA_TECHNOLOGY == ARRIA10) begin
    if(GLOBAL_CLOCK == 1) begin
    twentynm_clkena #(
      .clock_type("Global Clock"),
      .en_register_mode("always enabled"),
      .lpm_type("twentynm_clkena"))
    clk_buf ( 
      .ena(1'b1),
      .enaout(),
      .inclk(clk_in_p),
      .outclk(clk));
    end else begin
    twentynm_clkena #(
      .clock_type("Regional Clock"),
      .en_register_mode("always enabled"),
      .lpm_type("twentynm_clkena"))
    clk_buf ( 
      .ena(1'b1),
      .enaout(),
      .inclk(clk_in_p),
      .outclk(clk));
    end
  end
  endgenerate
endmodule

// ***************************************************************************
// ***************************************************************************
