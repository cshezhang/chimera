// This program was cloned from: https://github.com/lnis-uofu/SOFA
// License: MIT License

//
//
//
//
//
//
//
//
`timescale 1ns / 1ps

//
//
module logical_tile_clb_mode_default__fle_mode_physical__fabric(prog_clk,
                                                                Test_en,
                                                                fabric_in,
                                                                fabric_reg_in,
                                                                fabric_sc_in,
                                                                fabric_clk,
                                                                ccff_head,
                                                                fabric_out,
                                                                fabric_reg_out,
                                                                fabric_sc_out,
                                                                ccff_tail);
//
input [0:0] prog_clk;
//
input [0:0] Test_en;
//
input [0:3] fabric_in;
//
input [0:0] fabric_reg_in;
//
input [0:0] fabric_sc_in;
//
input [0:0] fabric_clk;
//
input [0:0] ccff_head;
//
output [0:1] fabric_out;
//
output [0:0] fabric_reg_out;
//
output [0:0] fabric_sc_out;
//
output [0:0] ccff_tail;

//
wire [0:3] fabric_in;
wire [0:0] fabric_reg_in;
wire [0:0] fabric_sc_in;
wire [0:0] fabric_clk;
wire [0:1] fabric_out;
wire [0:0] fabric_reg_out;
wire [0:0] fabric_sc_out;
//


//
//


wire [0:0] direct_interc_2_out;
wire [0:0] direct_interc_3_out;
wire [0:0] direct_interc_4_out;
wire [0:0] direct_interc_5_out;
wire [0:0] direct_interc_6_out;
wire [0:0] direct_interc_7_out;
wire [0:0] direct_interc_8_out;
wire [0:0] direct_interc_9_out;
wire [0:0] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0_ff_Q;
wire [0:0] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q;
wire [0:0] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_ccff_tail;
wire [0:1] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out;
wire [0:1] mux_fabric_out_0_undriven_sram_inv;
wire [0:1] mux_fabric_out_1_undriven_sram_inv;
wire [0:1] mux_ff_0_D_0_undriven_sram_inv;
wire [0:1] mux_ff_1_D_0_undriven_sram_inv;
wire [0:1] mux_tree_size2_0_sram;
wire [0:1] mux_tree_size2_1_sram;
wire [0:0] mux_tree_size2_2_out;
wire [0:1] mux_tree_size2_2_sram;
wire [0:0] mux_tree_size2_3_out;
wire [0:1] mux_tree_size2_3_sram;
wire [0:0] mux_tree_size2_mem_0_ccff_tail;
wire [0:0] mux_tree_size2_mem_1_ccff_tail;
wire [0:0] mux_tree_size2_mem_2_ccff_tail;

//
//
//
//

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0 (
		.prog_clk(prog_clk[0]),
		.frac_logic_in({direct_interc_2_out[0], direct_interc_3_out[0], direct_interc_4_out[0], direct_interc_5_out[0]}),
		.ccff_head(ccff_head[0]),
		.frac_logic_out(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0:1]),
		.ccff_tail(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_ccff_tail[0]));

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0 (
		.Test_en(Test_en[0]),
		.ff_D(mux_tree_size2_2_out[0]),
		.ff_DI(direct_interc_6_out[0]),
		.ff_Q(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0_ff_Q[0]),
		.ff_clk(direct_interc_7_out[0]));

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1 (
		.Test_en(Test_en[0]),
		.ff_D(mux_tree_size2_3_out[0]),
		.ff_DI(direct_interc_8_out[0]),
		.ff_Q(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q[0]),
		.ff_clk(direct_interc_9_out[0]));

	mux_tree_size2 mux_fabric_out_0 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0_ff_Q[0], logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0]}),
		.sram(mux_tree_size2_0_sram[0:1]),
		.sram_inv(mux_fabric_out_0_undriven_sram_inv[0:1]),
		.out(fabric_out[0]));

	mux_tree_size2 mux_fabric_out_1 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q[0], logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[1]}),
		.sram(mux_tree_size2_1_sram[0:1]),
		.sram_inv(mux_fabric_out_1_undriven_sram_inv[0:1]),
		.out(fabric_out[1]));

	mux_tree_size2 mux_ff_0_D_0 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0], fabric_reg_in[0]}),
		.sram(mux_tree_size2_2_sram[0:1]),
		.sram_inv(mux_ff_0_D_0_undriven_sram_inv[0:1]),
		.out(mux_tree_size2_2_out[0]));

	mux_tree_size2 mux_ff_1_D_0 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[1], logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0_ff_Q[0]}),
		.sram(mux_tree_size2_3_sram[0:1]),
		.sram_inv(mux_ff_1_D_0_undriven_sram_inv[0:1]),
		.out(mux_tree_size2_3_out[0]));

	mux_tree_size2_mem mem_fabric_out_0 (
		.prog_clk(prog_clk[0]),
		.ccff_head(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_ccff_tail[0]),
		.ccff_tail(mux_tree_size2_mem_0_ccff_tail[0]),
		.mem_out(mux_tree_size2_0_sram[0:1]));

	mux_tree_size2_mem mem_fabric_out_1 (
		.prog_clk(prog_clk[0]),
		.ccff_head(mux_tree_size2_mem_0_ccff_tail[0]),
		.ccff_tail(mux_tree_size2_mem_1_ccff_tail[0]),
		.mem_out(mux_tree_size2_1_sram[0:1]));

	mux_tree_size2_mem mem_ff_0_D_0 (
		.prog_clk(prog_clk[0]),
		.ccff_head(mux_tree_size2_mem_1_ccff_tail[0]),
		.ccff_tail(mux_tree_size2_mem_2_ccff_tail[0]),
		.mem_out(mux_tree_size2_2_sram[0:1]));

	mux_tree_size2_mem mem_ff_1_D_0 (
		.prog_clk(prog_clk[0]),
		.ccff_head(mux_tree_size2_mem_2_ccff_tail[0]),
		.ccff_tail(ccff_tail[0]),
		.mem_out(mux_tree_size2_3_sram[0:1]));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q[0]),
		.out(fabric_reg_out[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q[0]),
		.out(fabric_sc_out[0]));

	direct_interc direct_interc_2_ (
		.in(fabric_in[0]),
		.out(direct_interc_2_out[0]));

	direct_interc direct_interc_3_ (
		.in(fabric_in[1]),
		.out(direct_interc_3_out[0]));

	direct_interc direct_interc_4_ (
		.in(fabric_in[2]),
		.out(direct_interc_4_out[0]));

	direct_interc direct_interc_5_ (
		.in(fabric_in[3]),
		.out(direct_interc_5_out[0]));

	direct_interc direct_interc_6_ (
		.in(fabric_sc_in[0]),
		.out(direct_interc_6_out[0]));

	direct_interc direct_interc_7_ (
		.in(fabric_clk[0]),
		.out(direct_interc_7_out[0]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0_ff_Q[0]),
		.out(direct_interc_8_out[0]));

	direct_interc direct_interc_9_ (
		.in(fabric_clk[0]),
		.out(direct_interc_9_out[0]));

endmodule
//


//
