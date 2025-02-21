// This program was cloned from: https://github.com/mustafabbas/ECE1373_2016_hft_on_fpga
// License: MIT License

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="udpLowercase,hls_ip_2016_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku115-flva1517-2-e,HLS_INPUT_CLOCK=6.660000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=11.113750,HLS_SYN_LAT=1,HLS_SYN_TPT=1,HLS_SYN_MEM=5,HLS_SYN_DSP=0,HLS_SYN_FF=190,HLS_SYN_LUT=801}" *)

module udpLowercase (
        lbRxDataIn_V_data_V_dout,
        lbRxDataIn_V_data_V_empty_n,
        lbRxDataIn_V_data_V_read,
        lbRxDataIn_V_keep_V_dout,
        lbRxDataIn_V_keep_V_empty_n,
        lbRxDataIn_V_keep_V_read,
        lbRxDataIn_V_last_V_dout,
        lbRxDataIn_V_last_V_empty_n,
        lbRxDataIn_V_last_V_read,
        lbRxMetadataIn_V_dout,
        lbRxMetadataIn_V_empty_n,
        lbRxMetadataIn_V_read,
        lbRequestPortOpenOut_V_V_din,
        lbRequestPortOpenOut_V_V_full_n,
        lbRequestPortOpenOut_V_V_write,
        lbPortOpenReplyIn_V_dout,
        lbPortOpenReplyIn_V_empty_n,
        lbPortOpenReplyIn_V_read,
        lbTxDataOut_V_data_V_din,
        lbTxDataOut_V_data_V_full_n,
        lbTxDataOut_V_data_V_write,
        lbTxDataOut_V_keep_V_din,
        lbTxDataOut_V_keep_V_full_n,
        lbTxDataOut_V_keep_V_write,
        lbTxDataOut_V_last_V_din,
        lbTxDataOut_V_last_V_full_n,
        lbTxDataOut_V_last_V_write,
        lbTxMetadataOut_V_din,
        lbTxMetadataOut_V_full_n,
        lbTxMetadataOut_V_write,
        lbTxLengthOut_V_V_din,
        lbTxLengthOut_V_V_full_n,
        lbTxLengthOut_V_V_write,
        lbRxPort_V,
        ap_clk,
        ap_rst
);

parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv96_0 = 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

input  [63:0] lbRxDataIn_V_data_V_dout;
input   lbRxDataIn_V_data_V_empty_n;
output   lbRxDataIn_V_data_V_read;
input  [7:0] lbRxDataIn_V_keep_V_dout;
input   lbRxDataIn_V_keep_V_empty_n;
output   lbRxDataIn_V_keep_V_read;
input  [0:0] lbRxDataIn_V_last_V_dout;
input   lbRxDataIn_V_last_V_empty_n;
output   lbRxDataIn_V_last_V_read;
input  [95:0] lbRxMetadataIn_V_dout;
input   lbRxMetadataIn_V_empty_n;
output   lbRxMetadataIn_V_read;
output  [15:0] lbRequestPortOpenOut_V_V_din;
input   lbRequestPortOpenOut_V_V_full_n;
output   lbRequestPortOpenOut_V_V_write;
input   lbPortOpenReplyIn_V_dout;
input   lbPortOpenReplyIn_V_empty_n;
output   lbPortOpenReplyIn_V_read;
output  [63:0] lbTxDataOut_V_data_V_din;
input   lbTxDataOut_V_data_V_full_n;
output   lbTxDataOut_V_data_V_write;
output  [7:0] lbTxDataOut_V_keep_V_din;
input   lbTxDataOut_V_keep_V_full_n;
output   lbTxDataOut_V_keep_V_write;
output  [0:0] lbTxDataOut_V_last_V_din;
input   lbTxDataOut_V_last_V_full_n;
output   lbTxDataOut_V_last_V_write;
output  [95:0] lbTxMetadataOut_V_din;
input   lbTxMetadataOut_V_full_n;
output   lbTxMetadataOut_V_write;
output  [15:0] lbTxLengthOut_V_V_din;
input   lbTxLengthOut_V_V_full_n;
output   lbTxLengthOut_V_V_write;
output  [15:0] lbRxPort_V;
input   ap_clk;
input   ap_rst;

wire    Block_codeRepl30_pro_U0_ap_start;
wire    Block_codeRepl30_pro_U0_ap_done;
wire    Block_codeRepl30_pro_U0_ap_continue;
wire    Block_codeRepl30_pro_U0_ap_idle;
wire    Block_codeRepl30_pro_U0_ap_ready;
wire   [15:0] Block_codeRepl30_pro_U0_lbRxPort_V;
wire    Block_codeRepl30_pro_U0_lbRxPort_V_ap_vld;
wire    ap_hs_continue;
reg    rxPath_U0_ap_start;
wire    rxPath_U0_ap_done;
wire    rxPath_U0_ap_continue;
wire    rxPath_U0_ap_idle;
wire    rxPath_U0_ap_ready;
wire    rxPath_U0_start_out;
wire    rxPath_U0_start_write;
wire    rxPath_U0_lbRxDataIn_V_data_V_read;
wire    rxPath_U0_lbRxDataIn_V_keep_V_read;
wire    rxPath_U0_lbRxDataIn_V_last_V_read;
wire    rxPath_U0_lbRxMetadataIn_V_read;
wire   [15:0] rxPath_U0_lbRequestPortOpenOut_din;
wire    rxPath_U0_lbRequestPortOpenOut_write;
wire    rxPath_U0_lbPortOpenReplyIn_V_read;
wire   [72:0] rxPath_U0_lb_packetBuffer_V_din;
wire    rxPath_U0_lb_packetBuffer_V_write;
wire   [15:0] rxPath_U0_lb_metadataBuffer_V_s_din;
wire    rxPath_U0_lb_metadataBuffer_V_s_write;
wire   [31:0] rxPath_U0_lb_metadataBuffer_V_4_din;
wire    rxPath_U0_lb_metadataBuffer_V_4_write;
wire   [15:0] rxPath_U0_lb_metadataBuffer_V_3_din;
wire    rxPath_U0_lb_metadataBuffer_V_3_write;
wire   [31:0] rxPath_U0_lb_metadataBuffer_V_1_din;
wire    rxPath_U0_lb_metadataBuffer_V_1_write;
wire   [15:0] rxPath_U0_lb_lengthBuffer_V_V_din;
wire    rxPath_U0_lb_lengthBuffer_V_V_write;
wire    txPath_U0_ap_start;
wire    txPath_U0_ap_done;
wire    txPath_U0_ap_continue;
wire    txPath_U0_ap_idle;
wire    txPath_U0_ap_ready;
wire   [63:0] txPath_U0_lbTxDataOut_V_data_V_din;
wire    txPath_U0_lbTxDataOut_V_data_V_write;
wire   [7:0] txPath_U0_lbTxDataOut_V_keep_V_din;
wire    txPath_U0_lbTxDataOut_V_keep_V_write;
wire   [0:0] txPath_U0_lbTxDataOut_V_last_V_din;
wire    txPath_U0_lbTxDataOut_V_last_V_write;
wire   [95:0] txPath_U0_lbTxMetadataOut_V_din;
wire    txPath_U0_lbTxMetadataOut_V_write;
wire   [15:0] txPath_U0_lbTxLengthOut_V_V_din;
wire    txPath_U0_lbTxLengthOut_V_V_write;
wire    txPath_U0_lb_packetBuffer_V_read;
wire    txPath_U0_lb_metadataBuffer_V_s_read;
wire    txPath_U0_lb_metadataBuffer_V_4_read;
wire    txPath_U0_lb_metadataBuffer_V_3_read;
wire    txPath_U0_lb_metadataBuffer_V_1_read;
wire    txPath_U0_lb_lengthBuffer_V_V_read;
wire    lb_packetBuffer_V_full_n;
wire   [72:0] lb_packetBuffer_V_dout;
wire    lb_packetBuffer_V_empty_n;
wire    lb_metadataBuffer_V_s_full_n;
wire   [15:0] lb_metadataBuffer_V_s_dout;
wire    lb_metadataBuffer_V_s_empty_n;
wire    lb_metadataBuffer_V_4_full_n;
wire   [31:0] lb_metadataBuffer_V_4_dout;
wire    lb_metadataBuffer_V_4_empty_n;
wire    lb_metadataBuffer_V_3_full_n;
wire   [15:0] lb_metadataBuffer_V_3_dout;
wire    lb_metadataBuffer_V_3_empty_n;
wire    lb_metadataBuffer_V_1_full_n;
wire   [31:0] lb_metadataBuffer_V_1_dout;
wire    lb_metadataBuffer_V_1_empty_n;
wire    lb_lengthBuffer_V_V_full_n;
wire   [15:0] lb_lengthBuffer_V_V_dout;
wire    lb_lengthBuffer_V_V_empty_n;
wire   [0:0] start_for_txPath_U0_din;
wire    start_for_txPath_U0_full_n;
wire   [0:0] start_for_txPath_U0_dout;
wire    start_for_txPath_U0_empty_n;

// power-on initialization
initial begin
#0 rxPath_U0_ap_start = 1'b0;
end

Block_codeRepl30_pro Block_codeRepl30_pro_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Block_codeRepl30_pro_U0_ap_start),
    .ap_done(Block_codeRepl30_pro_U0_ap_done),
    .ap_continue(Block_codeRepl30_pro_U0_ap_continue),
    .ap_idle(Block_codeRepl30_pro_U0_ap_idle),
    .ap_ready(Block_codeRepl30_pro_U0_ap_ready),
    .lbRxPort_V(Block_codeRepl30_pro_U0_lbRxPort_V),
    .lbRxPort_V_ap_vld(Block_codeRepl30_pro_U0_lbRxPort_V_ap_vld)
);

rxPath rxPath_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(rxPath_U0_ap_start),
    .start_full_n(start_for_txPath_U0_full_n),
    .ap_done(rxPath_U0_ap_done),
    .ap_continue(rxPath_U0_ap_continue),
    .ap_idle(rxPath_U0_ap_idle),
    .ap_ready(rxPath_U0_ap_ready),
    .start_out(rxPath_U0_start_out),
    .start_write(rxPath_U0_start_write),
    .lbRxDataIn_V_data_V_dout(lbRxDataIn_V_data_V_dout),
    .lbRxDataIn_V_data_V_empty_n(lbRxDataIn_V_data_V_empty_n),
    .lbRxDataIn_V_data_V_read(rxPath_U0_lbRxDataIn_V_data_V_read),
    .lbRxDataIn_V_keep_V_dout(lbRxDataIn_V_keep_V_dout),
    .lbRxDataIn_V_keep_V_empty_n(lbRxDataIn_V_keep_V_empty_n),
    .lbRxDataIn_V_keep_V_read(rxPath_U0_lbRxDataIn_V_keep_V_read),
    .lbRxDataIn_V_last_V_dout(lbRxDataIn_V_last_V_dout),
    .lbRxDataIn_V_last_V_empty_n(lbRxDataIn_V_last_V_empty_n),
    .lbRxDataIn_V_last_V_read(rxPath_U0_lbRxDataIn_V_last_V_read),
    .lbRxMetadataIn_V_dout(lbRxMetadataIn_V_dout),
    .lbRxMetadataIn_V_empty_n(lbRxMetadataIn_V_empty_n),
    .lbRxMetadataIn_V_read(rxPath_U0_lbRxMetadataIn_V_read),
    .lbRequestPortOpenOut_din(rxPath_U0_lbRequestPortOpenOut_din),
    .lbRequestPortOpenOut_full_n(lbRequestPortOpenOut_V_V_full_n),
    .lbRequestPortOpenOut_write(rxPath_U0_lbRequestPortOpenOut_write),
    .lbPortOpenReplyIn_V_dout(lbPortOpenReplyIn_V_dout),
    .lbPortOpenReplyIn_V_empty_n(lbPortOpenReplyIn_V_empty_n),
    .lbPortOpenReplyIn_V_read(rxPath_U0_lbPortOpenReplyIn_V_read),
    .lb_packetBuffer_V_din(rxPath_U0_lb_packetBuffer_V_din),
    .lb_packetBuffer_V_full_n(lb_packetBuffer_V_full_n),
    .lb_packetBuffer_V_write(rxPath_U0_lb_packetBuffer_V_write),
    .lb_metadataBuffer_V_s_din(rxPath_U0_lb_metadataBuffer_V_s_din),
    .lb_metadataBuffer_V_s_full_n(lb_metadataBuffer_V_s_full_n),
    .lb_metadataBuffer_V_s_write(rxPath_U0_lb_metadataBuffer_V_s_write),
    .lb_metadataBuffer_V_4_din(rxPath_U0_lb_metadataBuffer_V_4_din),
    .lb_metadataBuffer_V_4_full_n(lb_metadataBuffer_V_4_full_n),
    .lb_metadataBuffer_V_4_write(rxPath_U0_lb_metadataBuffer_V_4_write),
    .lb_metadataBuffer_V_3_din(rxPath_U0_lb_metadataBuffer_V_3_din),
    .lb_metadataBuffer_V_3_full_n(lb_metadataBuffer_V_3_full_n),
    .lb_metadataBuffer_V_3_write(rxPath_U0_lb_metadataBuffer_V_3_write),
    .lb_metadataBuffer_V_1_din(rxPath_U0_lb_metadataBuffer_V_1_din),
    .lb_metadataBuffer_V_1_full_n(lb_metadataBuffer_V_1_full_n),
    .lb_metadataBuffer_V_1_write(rxPath_U0_lb_metadataBuffer_V_1_write),
    .lb_lengthBuffer_V_V_din(rxPath_U0_lb_lengthBuffer_V_V_din),
    .lb_lengthBuffer_V_V_full_n(lb_lengthBuffer_V_V_full_n),
    .lb_lengthBuffer_V_V_write(rxPath_U0_lb_lengthBuffer_V_V_write)
);

txPath txPath_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(txPath_U0_ap_start),
    .ap_done(txPath_U0_ap_done),
    .ap_continue(txPath_U0_ap_continue),
    .ap_idle(txPath_U0_ap_idle),
    .ap_ready(txPath_U0_ap_ready),
    .lbTxDataOut_V_data_V_din(txPath_U0_lbTxDataOut_V_data_V_din),
    .lbTxDataOut_V_data_V_full_n(lbTxDataOut_V_data_V_full_n),
    .lbTxDataOut_V_data_V_write(txPath_U0_lbTxDataOut_V_data_V_write),
    .lbTxDataOut_V_keep_V_din(txPath_U0_lbTxDataOut_V_keep_V_din),
    .lbTxDataOut_V_keep_V_full_n(lbTxDataOut_V_keep_V_full_n),
    .lbTxDataOut_V_keep_V_write(txPath_U0_lbTxDataOut_V_keep_V_write),
    .lbTxDataOut_V_last_V_din(txPath_U0_lbTxDataOut_V_last_V_din),
    .lbTxDataOut_V_last_V_full_n(lbTxDataOut_V_last_V_full_n),
    .lbTxDataOut_V_last_V_write(txPath_U0_lbTxDataOut_V_last_V_write),
    .lbTxMetadataOut_V_din(txPath_U0_lbTxMetadataOut_V_din),
    .lbTxMetadataOut_V_full_n(lbTxMetadataOut_V_full_n),
    .lbTxMetadataOut_V_write(txPath_U0_lbTxMetadataOut_V_write),
    .lbTxLengthOut_V_V_din(txPath_U0_lbTxLengthOut_V_V_din),
    .lbTxLengthOut_V_V_full_n(lbTxLengthOut_V_V_full_n),
    .lbTxLengthOut_V_V_write(txPath_U0_lbTxLengthOut_V_V_write),
    .lb_packetBuffer_V_dout(lb_packetBuffer_V_dout),
    .lb_packetBuffer_V_empty_n(lb_packetBuffer_V_empty_n),
    .lb_packetBuffer_V_read(txPath_U0_lb_packetBuffer_V_read),
    .lb_metadataBuffer_V_s_dout(lb_metadataBuffer_V_s_dout),
    .lb_metadataBuffer_V_s_empty_n(lb_metadataBuffer_V_s_empty_n),
    .lb_metadataBuffer_V_s_read(txPath_U0_lb_metadataBuffer_V_s_read),
    .lb_metadataBuffer_V_4_dout(lb_metadataBuffer_V_4_dout),
    .lb_metadataBuffer_V_4_empty_n(lb_metadataBuffer_V_4_empty_n),
    .lb_metadataBuffer_V_4_read(txPath_U0_lb_metadataBuffer_V_4_read),
    .lb_metadataBuffer_V_3_dout(lb_metadataBuffer_V_3_dout),
    .lb_metadataBuffer_V_3_empty_n(lb_metadataBuffer_V_3_empty_n),
    .lb_metadataBuffer_V_3_read(txPath_U0_lb_metadataBuffer_V_3_read),
    .lb_metadataBuffer_V_1_dout(lb_metadataBuffer_V_1_dout),
    .lb_metadataBuffer_V_1_empty_n(lb_metadataBuffer_V_1_empty_n),
    .lb_metadataBuffer_V_1_read(txPath_U0_lb_metadataBuffer_V_1_read),
    .lb_lengthBuffer_V_V_dout(lb_lengthBuffer_V_V_dout),
    .lb_lengthBuffer_V_V_empty_n(lb_lengthBuffer_V_V_empty_n),
    .lb_lengthBuffer_V_V_read(txPath_U0_lb_lengthBuffer_V_V_read)
);

udpLowercase_lb_pbkb lb_packetBuffer_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rxPath_U0_lb_packetBuffer_V_din),
    .if_full_n(lb_packetBuffer_V_full_n),
    .if_write(rxPath_U0_lb_packetBuffer_V_write),
    .if_dout(lb_packetBuffer_V_dout),
    .if_empty_n(lb_packetBuffer_V_empty_n),
    .if_read(txPath_U0_lb_packetBuffer_V_read)
);

udpLowercase_lb_mcud lb_metadataBuffer_V_s_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rxPath_U0_lb_metadataBuffer_V_s_din),
    .if_full_n(lb_metadataBuffer_V_s_full_n),
    .if_write(rxPath_U0_lb_metadataBuffer_V_s_write),
    .if_dout(lb_metadataBuffer_V_s_dout),
    .if_empty_n(lb_metadataBuffer_V_s_empty_n),
    .if_read(txPath_U0_lb_metadataBuffer_V_s_read)
);

udpLowercase_lb_mdEe lb_metadataBuffer_V_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rxPath_U0_lb_metadataBuffer_V_4_din),
    .if_full_n(lb_metadataBuffer_V_4_full_n),
    .if_write(rxPath_U0_lb_metadataBuffer_V_4_write),
    .if_dout(lb_metadataBuffer_V_4_dout),
    .if_empty_n(lb_metadataBuffer_V_4_empty_n),
    .if_read(txPath_U0_lb_metadataBuffer_V_4_read)
);

udpLowercase_lb_meOg lb_metadataBuffer_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rxPath_U0_lb_metadataBuffer_V_3_din),
    .if_full_n(lb_metadataBuffer_V_3_full_n),
    .if_write(rxPath_U0_lb_metadataBuffer_V_3_write),
    .if_dout(lb_metadataBuffer_V_3_dout),
    .if_empty_n(lb_metadataBuffer_V_3_empty_n),
    .if_read(txPath_U0_lb_metadataBuffer_V_3_read)
);

udpLowercase_lb_mfYi lb_metadataBuffer_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rxPath_U0_lb_metadataBuffer_V_1_din),
    .if_full_n(lb_metadataBuffer_V_1_full_n),
    .if_write(rxPath_U0_lb_metadataBuffer_V_1_write),
    .if_dout(lb_metadataBuffer_V_1_dout),
    .if_empty_n(lb_metadataBuffer_V_1_empty_n),
    .if_read(txPath_U0_lb_metadataBuffer_V_1_read)
);

udpLowercase_lb_lg8j lb_lengthBuffer_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(rxPath_U0_lb_lengthBuffer_V_V_din),
    .if_full_n(lb_lengthBuffer_V_V_full_n),
    .if_write(rxPath_U0_lb_lengthBuffer_V_V_write),
    .if_dout(lb_lengthBuffer_V_V_dout),
    .if_empty_n(lb_lengthBuffer_V_V_empty_n),
    .if_read(txPath_U0_lb_lengthBuffer_V_V_read)
);

start_for_txPath_U0 start_for_txPath_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_txPath_U0_din),
    .if_full_n(start_for_txPath_U0_full_n),
    .if_write(rxPath_U0_start_write),
    .if_dout(start_for_txPath_U0_dout),
    .if_empty_n(start_for_txPath_U0_empty_n),
    .if_read(txPath_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        rxPath_U0_ap_start <= 1'b0;
    end else begin
        rxPath_U0_ap_start <= 1'b1;
    end
end

assign Block_codeRepl30_pro_U0_ap_continue = 1'b1;

assign Block_codeRepl30_pro_U0_ap_start = 1'b1;

assign ap_hs_continue = 1'b0;

assign lbPortOpenReplyIn_V_read = rxPath_U0_lbPortOpenReplyIn_V_read;

assign lbRequestPortOpenOut_V_V_din = rxPath_U0_lbRequestPortOpenOut_din;

assign lbRequestPortOpenOut_V_V_write = rxPath_U0_lbRequestPortOpenOut_write;

assign lbRxDataIn_V_data_V_read = rxPath_U0_lbRxDataIn_V_data_V_read;

assign lbRxDataIn_V_keep_V_read = rxPath_U0_lbRxDataIn_V_keep_V_read;

assign lbRxDataIn_V_last_V_read = rxPath_U0_lbRxDataIn_V_last_V_read;

assign lbRxMetadataIn_V_read = rxPath_U0_lbRxMetadataIn_V_read;

assign lbRxPort_V = Block_codeRepl30_pro_U0_lbRxPort_V;

assign lbTxDataOut_V_data_V_din = txPath_U0_lbTxDataOut_V_data_V_din;

assign lbTxDataOut_V_data_V_write = txPath_U0_lbTxDataOut_V_data_V_write;

assign lbTxDataOut_V_keep_V_din = txPath_U0_lbTxDataOut_V_keep_V_din;

assign lbTxDataOut_V_keep_V_write = txPath_U0_lbTxDataOut_V_keep_V_write;

assign lbTxDataOut_V_last_V_din = txPath_U0_lbTxDataOut_V_last_V_din;

assign lbTxDataOut_V_last_V_write = txPath_U0_lbTxDataOut_V_last_V_write;

assign lbTxLengthOut_V_V_din = txPath_U0_lbTxLengthOut_V_V_din;

assign lbTxLengthOut_V_V_write = txPath_U0_lbTxLengthOut_V_V_write;

assign lbTxMetadataOut_V_din = txPath_U0_lbTxMetadataOut_V_din;

assign lbTxMetadataOut_V_write = txPath_U0_lbTxMetadataOut_V_write;

assign rxPath_U0_ap_continue = 1'b1;

assign start_for_txPath_U0_din = 1'b1;

assign txPath_U0_ap_continue = 1'b1;

assign txPath_U0_ap_start = start_for_txPath_U0_empty_n;

endmodule //udpLowercase
