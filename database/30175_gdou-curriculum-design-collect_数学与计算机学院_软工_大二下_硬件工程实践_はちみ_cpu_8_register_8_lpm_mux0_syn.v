// This program was cloned from: https://github.com/QingXia-Ela/gdou-curriculum-design-collect
// License: MIT License

// megafunction wizard: %LPM_MUX%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mux 

// ============================================================
// File Name: lpm_mux0.v
// Megafunction Name(s):
// 			lpm_mux
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.1 Build 222 10/21/2009 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2009 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//lpm_mux DEVICE_FAMILY="Stratix II" LPM_SIZE=4 LPM_WIDTH=8 LPM_WIDTHS=2 data result sel
//VERSION_BEGIN 9.1 cbx_lpm_mux 2009:10:21:21:22:16:SJ cbx_mgl 2009:10:21:21:37:49:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lut 8 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  lpm_mux0_mux
	( 
	data,
	result,
	sel) /* synthesis synthesis_clearbox=1 */;
	input   [31:0]  data;
	output   [7:0]  result;
	input   [1:0]  sel;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [31:0]  data;
	tri0   [1:0]  sel;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire	wire_l1_w0_n0_mux_dataout;
	wire	wire_l1_w0_n1_mux_dataout;
	wire	wire_l1_w1_n0_mux_dataout;
	wire	wire_l1_w1_n1_mux_dataout;
	wire	wire_l1_w2_n0_mux_dataout;
	wire	wire_l1_w2_n1_mux_dataout;
	wire	wire_l1_w3_n0_mux_dataout;
	wire	wire_l1_w3_n1_mux_dataout;
	wire	wire_l1_w4_n0_mux_dataout;
	wire	wire_l1_w4_n1_mux_dataout;
	wire	wire_l1_w5_n0_mux_dataout;
	wire	wire_l1_w5_n1_mux_dataout;
	wire	wire_l1_w6_n0_mux_dataout;
	wire	wire_l1_w6_n1_mux_dataout;
	wire	wire_l1_w7_n0_mux_dataout;
	wire	wire_l1_w7_n1_mux_dataout;
	wire	wire_l2_w0_n0_mux_dataout;
	wire	wire_l2_w1_n0_mux_dataout;
	wire	wire_l2_w2_n0_mux_dataout;
	wire	wire_l2_w3_n0_mux_dataout;
	wire	wire_l2_w4_n0_mux_dataout;
	wire	wire_l2_w5_n0_mux_dataout;
	wire	wire_l2_w6_n0_mux_dataout;
	wire	wire_l2_w7_n0_mux_dataout;
	wire  [47:0]  data_wire;
	wire  [7:0]  result_wire_ext;
	wire  [3:0]  sel_wire;

	assign		wire_l1_w0_n0_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[8] : data_wire[0];
	assign		wire_l1_w0_n1_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[24] : data_wire[16];
	assign		wire_l1_w1_n0_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[9] : data_wire[1];
	assign		wire_l1_w1_n1_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[25] : data_wire[17];
	assign		wire_l1_w2_n0_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[10] : data_wire[2];
	assign		wire_l1_w2_n1_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[26] : data_wire[18];
	assign		wire_l1_w3_n0_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[11] : data_wire[3];
	assign		wire_l1_w3_n1_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[27] : data_wire[19];
	assign		wire_l1_w4_n0_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[12] : data_wire[4];
	assign		wire_l1_w4_n1_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[28] : data_wire[20];
	assign		wire_l1_w5_n0_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[13] : data_wire[5];
	assign		wire_l1_w5_n1_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[29] : data_wire[21];
	assign		wire_l1_w6_n0_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[14] : data_wire[6];
	assign		wire_l1_w6_n1_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[30] : data_wire[22];
	assign		wire_l1_w7_n0_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[15] : data_wire[7];
	assign		wire_l1_w7_n1_mux_dataout = (sel_wire[0] === 1'b1) ? data_wire[31] : data_wire[23];
	assign		wire_l2_w0_n0_mux_dataout = (sel_wire[3] === 1'b1) ? data_wire[33] : data_wire[32];
	assign		wire_l2_w1_n0_mux_dataout = (sel_wire[3] === 1'b1) ? data_wire[35] : data_wire[34];
	assign		wire_l2_w2_n0_mux_dataout = (sel_wire[3] === 1'b1) ? data_wire[37] : data_wire[36];
	assign		wire_l2_w3_n0_mux_dataout = (sel_wire[3] === 1'b1) ? data_wire[39] : data_wire[38];
	assign		wire_l2_w4_n0_mux_dataout = (sel_wire[3] === 1'b1) ? data_wire[41] : data_wire[40];
	assign		wire_l2_w5_n0_mux_dataout = (sel_wire[3] === 1'b1) ? data_wire[43] : data_wire[42];
	assign		wire_l2_w6_n0_mux_dataout = (sel_wire[3] === 1'b1) ? data_wire[45] : data_wire[44];
	assign		wire_l2_w7_n0_mux_dataout = (sel_wire[3] === 1'b1) ? data_wire[47] : data_wire[46];
	assign
		data_wire = {wire_l1_w7_n1_mux_dataout, wire_l1_w7_n0_mux_dataout, wire_l1_w6_n1_mux_dataout, wire_l1_w6_n0_mux_dataout, wire_l1_w5_n1_mux_dataout, wire_l1_w5_n0_mux_dataout, wire_l1_w4_n1_mux_dataout, wire_l1_w4_n0_mux_dataout, wire_l1_w3_n1_mux_dataout, wire_l1_w3_n0_mux_dataout, wire_l1_w2_n1_mux_dataout, wire_l1_w2_n0_mux_dataout, wire_l1_w1_n1_mux_dataout, wire_l1_w1_n0_mux_dataout, wire_l1_w0_n1_mux_dataout, wire_l1_w0_n0_mux_dataout, data},
		result = result_wire_ext,
		result_wire_ext = {wire_l2_w7_n0_mux_dataout, wire_l2_w6_n0_mux_dataout, wire_l2_w5_n0_mux_dataout, wire_l2_w4_n0_mux_dataout, wire_l2_w3_n0_mux_dataout, wire_l2_w2_n0_mux_dataout, wire_l2_w1_n0_mux_dataout, wire_l2_w0_n0_mux_dataout},
		sel_wire = {sel[1], {2{1'b0}}, sel[0]};
endmodule //lpm_mux0_mux
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module lpm_mux0 (
	data0x,
	data1x,
	data2x,
	data3x,
	sel,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	[7:0]  data0x;
	input	[7:0]  data1x;
	input	[7:0]  data2x;
	input	[7:0]  data3x;
	input	[1:0]  sel;
	output	[7:0]  result;

	wire [7:0] sub_wire0;
	wire [7:0] sub_wire5 = data0x[7:0];
	wire [7:0] sub_wire4 = data1x[7:0];
	wire [7:0] sub_wire3 = data2x[7:0];
	wire [7:0] result = sub_wire0[7:0];
	wire [7:0] sub_wire1 = data3x[7:0];
	wire [31:0] sub_wire2 = {sub_wire5, sub_wire4, sub_wire3, sub_wire1};

	lpm_mux0_mux	lpm_mux0_mux_component (
				.sel (sel),
				.data (sub_wire2),
				.result (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "4"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "2"
// Retrieval info: USED_PORT: data0x 0 0 8 0 INPUT NODEFVAL data0x[7..0]
// Retrieval info: USED_PORT: data1x 0 0 8 0 INPUT NODEFVAL data1x[7..0]
// Retrieval info: USED_PORT: data2x 0 0 8 0 INPUT NODEFVAL data2x[7..0]
// Retrieval info: USED_PORT: data3x 0 0 8 0 INPUT NODEFVAL data3x[7..0]
// Retrieval info: USED_PORT: result 0 0 8 0 OUTPUT NODEFVAL result[7..0]
// Retrieval info: USED_PORT: sel 0 0 2 0 INPUT NODEFVAL sel[1..0]
// Retrieval info: CONNECT: result 0 0 8 0 @result 0 0 8 0
// Retrieval info: CONNECT: @data 1 3 8 0 data3x 0 0 8 0
// Retrieval info: CONNECT: @data 1 2 8 0 data2x 0 0 8 0
// Retrieval info: CONNECT: @data 1 1 8 0 data1x 0 0 8 0
// Retrieval info: CONNECT: @data 1 0 8 0 data0x 0 0 8 0
// Retrieval info: CONNECT: @sel 0 0 2 0 sel 0 0 2 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0_inst.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0_syn.v TRUE
// Retrieval info: LIB_FILE: lpm
