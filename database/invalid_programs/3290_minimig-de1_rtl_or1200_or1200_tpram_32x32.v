// This program was cloned from: https://github.com/rkrajnc/minimig-de1
// License: GNU General Public License v3.0

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  Generic Two-Port Synchronous RAM                            ////
////                                                              ////
////  This file is part of memory library available from          ////
////  http://www.opencores.org/cvsweb.shtml/generic_memories/     ////
////                                                              ////
////  Description                                                 ////
////  This block is a wrapper with common two-port                ////
////  synchronous memory interface for different                  ////
////  types of ASIC and FPGA RAMs. Beside universal memory        ////
////  interface it also provides behavioral model of generic      ////
////  two-port synchronous RAM.                                   ////
////  It should be used in all OPENCORES designs that want to be  ////
////  portable accross different target technologies and          ////
////  independent of target memory.                               ////
////                                                              ////
////  Supported ASIC RAMs are:                                    ////
////  - Artisan Double-Port Sync RAM                              ////
////  - Avant! Two-Port Sync RAM (*)                              ////
////  - Virage 2-port Sync RAM                                    ////
////                                                              ////
////  Supported FPGA RAMs are:                                    ////
////  - Xilinx Virtex RAMB4_S16_S16                               ////
////  - Altera LPM                                                ////
////                                                              ////
////  To Do:                                                      ////
////   - fix Avant!                                               ////
////   - xilinx rams need external tri-state logic                ////
////   - add additional RAMs (VS etc)                             ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

module or1200_tpram_32x32(
	// Generic synchronous two-port RAM interface
	clk_a, rst_a, ce_a, we_a, oe_a, addr_a, di_a, do_a,
	clk_b, rst_b, ce_b, we_b, oe_b, addr_b, di_b, do_b
);

//
// Default address and data buses width
//
parameter aw = 5;
parameter dw = 32;

//
// Generic synchronous two-port RAM interface
//
input			clk_a;	// Clock
input			rst_a;	// Reset
input			ce_a;	// Chip enable input
input			we_a;	// Write enable input
input			oe_a;	// Output enable input
input 	[aw-1:0]	addr_a;	// address bus inputs
input	[dw-1:0]	di_a;	// input data bus
output	[dw-1:0]	do_a;	// output data bus
input			clk_b;	// Clock
input			rst_b;	// Reset
input			ce_b;	// Chip enable input
input			we_b;	// Write enable input
input			oe_b;	// Output enable input
input 	[aw-1:0]	addr_b;	// address bus inputs
input	[dw-1:0]	di_b;	// input data bus
output	[dw-1:0]	do_b;	// output data bus

//
// Internal wires and registers
//


`ifdef OR1200_ARTISAN_SDP

//
// Instantiation of ASIC memory:
//
// Artisan Synchronous Double-Port RAM (ra2sh)
//
`ifdef UNUSED
art_hsdp_32x32 #(dw, 1<<aw, aw) artisan_sdp(
`else
art_hsdp_32x32 artisan_sdp(
`endif
	.qa(do_a),
	.clka(clk_a),
	.cena(~ce_a),
	.wena(~we_a),
	.aa(addr_a),
	.da(di_a),
	.oena(~oe_a),
	.qb(do_b),
	.clkb(clk_b),
	.cenb(~ce_b),
	.wenb(~we_b),
	.ab(addr_b),
	.db(di_b),
	.oenb(~oe_b)
);

`else

`ifdef OR1200_AVANT_ATP

//
// Instantiation of ASIC memory:
//
// Avant! Asynchronous Two-Port RAM
//
avant_atp avant_atp(
	.web(~we),
	.reb(),
	.oeb(~oe),
	.rcsb(),
	.wcsb(),
	.ra(addr),
	.wa(addr),
	.di(di),
	.doq(doq)
);

`else

`ifdef OR1200_VIRAGE_STP

//
// Instantiation of ASIC memory:
//
// Virage Synchronous 2-port R/W RAM
//
virage_stp virage_stp(
	.QA(do_a),
	.QB(do_b),

	.ADRA(addr_a),
	.DA(di_a),
	.WEA(we_a),
	.OEA(oe_a),
	.MEA(ce_a),
	.CLKA(clk_a),

	.ADRB(adr_b),
	.DB(di_b),
	.WEB(we_b),
	.OEB(oe_b),
	.MEB(ce_b),
	.CLKB(clk_b)
);

`else

`ifdef OR1200_XILINX_RAMB4

//
// Instantiation of FPGA memory:
//
// Virtex/Spartan2
//

//
// Block 0
//
RAMB4_S16_S16 ramb4_s16_s16_0(
	.CLKA(clk_a),
	.RSTA(rst_a),
	.ADDRA(addr_a),
	.DIA(di_a[15:0]),
	.ENA(ce_a),
	.WEA(we_a),
	.DOA(do_a[15:0]),

	.CLKB(clk_b),
	.RSTB(rst_b),
	.ADDRB(addr_b),
	.DIB(di_b[15:0]),
	.ENB(ce_b),
	.WEB(we_b),
	.DOB(do_b[15:0])
);

//
// Block 1
//
RAMB4_S16_S16 ramb4_s16_s16_1(
	.CLKA(clk_a),
	.RSTA(rst_a),
	.ADDRA(addr_a),
	.DIA(di_a[31:16]),
	.ENA(ce_a),
	.WEA(we_a),
	.DOA(do_a[31:16]),

	.CLKB(clk_b),
	.RSTB(rst_b),
	.ADDRB(addr_b),
	.DIB(di_b[31:16]),
	.ENB(ce_b),
	.WEB(we_b),
	.DOB(do_b[31:16])
);

`else

`ifdef OR1200_ALTERA_LPM_XXX

//
// Instantiation of FPGA memory:
//
// Altera LPM
//
// Added By Jamil Khatib
//
altqpram altqpram_component (
	.wraddress_a (addr_a),
	.inclocken_a (ce_a),
	.wraddress_b (addr_b),
	.wren_a (we_a),
	.inclocken_b (ce_b),
	.wren_b (we_b),
	.inaclr_a (rst_a),
	.inaclr_b (rst_b),
	.inclock_a (clk_a),
	.inclock_b (clk_b),
	.data_a (di_a),
	.data_b (di_b),
	.q_a (do_a),
	.q_b (do_b)
);

defparam altqpram_component.operation_mode = "BIDIR_DUAL_PORT",
	altqpram_component.width_write_a = dw,
	altqpram_component.widthad_write_a = aw,
	altqpram_component.numwords_write_a = dw,
	altqpram_component.width_read_a = dw,
	altqpram_component.widthad_read_a = aw,
	altqpram_component.numwords_read_a = dw,
	altqpram_component.width_write_b = dw,
	altqpram_component.widthad_write_b = aw,
	altqpram_component.numwords_write_b = dw,
	altqpram_component.width_read_b = dw,
	altqpram_component.widthad_read_b = aw,
	altqpram_component.numwords_read_b = dw,
	altqpram_component.indata_reg_a = "INCLOCK_A",
	altqpram_component.wrcontrol_wraddress_reg_a = "INCLOCK_A",
	altqpram_component.outdata_reg_a = "INCLOCK_A",
	altqpram_component.indata_reg_b = "INCLOCK_B",
	altqpram_component.wrcontrol_wraddress_reg_b = "INCLOCK_B",
	altqpram_component.outdata_reg_b = "INCLOCK_B",
	altqpram_component.indata_aclr_a = "INACLR_A",
	altqpram_component.wraddress_aclr_a = "INACLR_A",
	altqpram_component.wrcontrol_aclr_a = "INACLR_A",
	altqpram_component.outdata_aclr_a = "INACLR_A",
	altqpram_component.indata_aclr_b = "NONE",
	altqpram_component.wraddress_aclr_b = "NONE",
	altqpram_component.wrcontrol_aclr_b = "NONE",
	altqpram_component.outdata_aclr_b = "INACLR_B",
	altqpram_component.lpm_hint = "USE_ESB=ON";
	//examplar attribute altqpram_component NOOPT TRUE

`else

//
// Generic two-port synchronous RAM model
//

//
// Generic RAM's registers and wires
//
reg	[dw-1:0]	mem [(1<<aw)-1:0];	// RAM content
reg	[aw-1:0]	addr_a_reg;		// RAM read address register
reg	[aw-1:0]	addr_b_reg;		// RAM read address register

//
// Data output drivers
//
assign do_a = (oe_a) ? mem[addr_a_reg] : {dw{1'b0}};
assign do_b = (oe_b) ? mem[addr_b_reg] : {dw{1'b0}};

//
// RAM write
//
always @(posedge clk_a)
	if (ce_a && we_a)
		mem[addr_a] <= #1 di_a;

//
// RAM write
//
always @(posedge clk_b)
	if (ce_b && we_b)
		mem[addr_b] <= #1 di_b;

//
// RAM read address register
//
always @(posedge clk_a or posedge rst_a)
	if (rst_a)
		addr_a_reg <= #1 {aw{1'b0}};
	else if (ce_a)
		addr_a_reg <= #1 addr_a;

//
// RAM read address register
//
always @(posedge clk_b or posedge rst_b)
	if (rst_b)
		addr_b_reg <= #1 {aw{1'b0}};
	else if (ce_b)
		addr_b_reg <= #1 addr_b;

`endif	// !OR1200_ALTERA_LPM
`endif	// !OR1200_XILINX_RAMB4_S16_S16
`endif	// !OR1200_VIRAGE_STP
`endif  // !OR1200_AVANT_ATP
`endif	// !OR1200_ARTISAN_SDP

endmodule
