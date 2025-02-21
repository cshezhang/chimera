// This program was cloned from: https://github.com/alan4186/Hardware-CNN
// License: MIT License

// megafunction wizard: %Shift register (RAM-based)%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altshift_taps 

// ============================================================
// File Name: Line_Buffer1.v
// Megafunction Name(s):
// 			altshift_taps
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.1 Build 350 03/24/2010 SP 2 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2010 Altera Corporation
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


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module Line_Buffer1 (
	clken,
	clock,
	shiftin,
	shiftout,
	taps0x,
	taps1x);

	input	  clken;
	input	  clock;
	input	[11:0]  shiftin;
	output	[11:0]  shiftout;
	output	[11:0]  taps0x;
	output	[11:0]  taps1x;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1	  clken;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [23:0] sub_wire0;
	wire [11:0] sub_wire3;
	wire [23:12] sub_wire1 = sub_wire0[23:12];
	wire [11:0] sub_wire2 = sub_wire0[11:0];
	wire [11:0] taps1x = sub_wire1[23:12];
	wire [11:0] taps0x = sub_wire2[11:0];
	wire [11:0] shiftout = sub_wire3[11:0];

	altshift_taps	altshift_taps_component (
				.clken (clken),
				.clock (clock),
				.shiftin (shiftin),
				.taps (sub_wire0),
				.shiftout (sub_wire3)
				// synopsys translate_off
				,
				.aclr ()
				// synopsys translate_on
				);
	defparam
		altshift_taps_component.lpm_hint = "RAM_BLOCK_TYPE=M9K",
		altshift_taps_component.lpm_type = "altshift_taps",
		altshift_taps_component.number_of_taps = 2,
		altshift_taps_component.tap_distance = 1280,
		altshift_taps_component.width = 12;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "0"
// Retrieval info: PRIVATE: CLKEN NUMERIC "1"
// Retrieval info: PRIVATE: GROUP_TAPS NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: NUMBER_OF_TAPS NUMERIC "2"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: TAP_DISTANCE NUMERIC "1280"
// Retrieval info: PRIVATE: WIDTH NUMERIC "12"
// Retrieval info: CONSTANT: LPM_HINT STRING "RAM_BLOCK_TYPE=M9K"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altshift_taps"
// Retrieval info: CONSTANT: NUMBER_OF_TAPS NUMERIC "2"
// Retrieval info: CONSTANT: TAP_DISTANCE NUMERIC "1280"
// Retrieval info: CONSTANT: WIDTH NUMERIC "12"
// Retrieval info: USED_PORT: clken 0 0 0 0 INPUT VCC clken
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: shiftin 0 0 12 0 INPUT NODEFVAL shiftin[11..0]
// Retrieval info: USED_PORT: shiftout 0 0 12 0 OUTPUT NODEFVAL shiftout[11..0]
// Retrieval info: USED_PORT: taps0x 0 0 12 0 OUTPUT NODEFVAL taps0x[11..0]
// Retrieval info: USED_PORT: taps1x 0 0 12 0 OUTPUT NODEFVAL taps1x[11..0]
// Retrieval info: CONNECT: @shiftin 0 0 12 0 shiftin 0 0 12 0
// Retrieval info: CONNECT: shiftout 0 0 12 0 @shiftout 0 0 12 0
// Retrieval info: CONNECT: taps0x 0 0 12 0 @taps 0 0 12 0
// Retrieval info: CONNECT: taps1x 0 0 12 0 @taps 0 0 12 12
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @clken 0 0 0 0 clken 0 0 0 0
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL Line_Buffer1.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Line_Buffer1.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Line_Buffer1.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Line_Buffer1.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Line_Buffer1_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Line_Buffer1_bb.v FALSE
// Retrieval info: LIB_FILE: altera_mf
