// This program was cloned from: https://github.com/mustafabbas/ECE1373_2016_hft_on_fpga
// License: MIT License

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="echo_server_application,hls_ip_2015_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku115-flva1517-2-e,HLS_INPUT_CLOCK=6.660000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=1.420000,HLS_SYN_LAT=1,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=150,HLS_SYN_LUT=13}" *)

module echo_server_application (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        openConStatus_V_dout,
        openConStatus_V_empty_n,
        openConStatus_V_read,
        listenPortStatus_V_dout,
        listenPortStatus_V_empty_n,
        listenPortStatus_V_read,
        notifications_V_dout,
        notifications_V_empty_n,
        notifications_V_read,
        rxMetaData_V_V_dout,
        rxMetaData_V_V_empty_n,
        rxMetaData_V_V_read,
        rxData_V_dout,
        rxData_V_empty_n,
        rxData_V_read,
        txStatus_V_V_dout,
        txStatus_V_V_empty_n,
        txStatus_V_V_read,
        openConnection_V_din,
        openConnection_V_full_n,
        openConnection_V_write,
        closeConnection_V_V_din,
        closeConnection_V_V_full_n,
        closeConnection_V_V_write,
        listenPort_V_V_din,
        listenPort_V_V_full_n,
        listenPort_V_V_write,
        readRequest_V_din,
        readRequest_V_full_n,
        readRequest_V_write,
        txMetaData_V_V_din,
        txMetaData_V_V_full_n,
        txMetaData_V_V_write,
        txData_V_din,
        txData_V_full_n,
        txData_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv48_34120A010101 = 48'b1101000001001000001010000000010000000100000001;
parameter    ap_const_lv16_1389 = 16'b1001110001001;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv32_48 = 32'b1001000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [16:0] openConStatus_V_dout;
input   openConStatus_V_empty_n;
output   openConStatus_V_read;
input   listenPortStatus_V_dout;
input   listenPortStatus_V_empty_n;
output   listenPortStatus_V_read;
input  [80:0] notifications_V_dout;
input   notifications_V_empty_n;
output   notifications_V_read;
input  [15:0] rxMetaData_V_V_dout;
input   rxMetaData_V_V_empty_n;
output   rxMetaData_V_V_read;
input  [72:0] rxData_V_dout;
input   rxData_V_empty_n;
output   rxData_V_read;
input  [16:0] txStatus_V_V_dout;
input   txStatus_V_V_empty_n;
output   txStatus_V_V_read;
output  [47:0] openConnection_V_din;
input   openConnection_V_full_n;
output   openConnection_V_write;
output  [15:0] closeConnection_V_V_din;
input   closeConnection_V_V_full_n;
output   closeConnection_V_V_write;
output  [15:0] listenPort_V_V_din;
input   listenPort_V_V_full_n;
output   listenPort_V_V_write;
output  [31:0] readRequest_V_din;
input   readRequest_V_full_n;
output   readRequest_V_write;
output  [15:0] txMetaData_V_V_din;
input   txMetaData_V_V_full_n;
output   txMetaData_V_V_write;
output  [72:0] txData_V_din;
input   txData_V_full_n;
output   txData_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg openConStatus_V_read;
reg listenPortStatus_V_read;
reg notifications_V_read;
reg rxMetaData_V_V_read;
reg rxData_V_read;
reg txStatus_V_V_read;
reg openConnection_V_write;
reg closeConnection_V_V_write;
reg listenPort_V_V_write;
reg readRequest_V_write;
reg txMetaData_V_V_write;
reg txData_V_write;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_17;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_218_p3;
wire   [0:0] brmerge_fu_367_p2;
wire   [0:0] tmp_1_nbreadreq_fu_232_p3;
wire   [0:0] tmp_3_nbreadreq_fu_246_p3;
wire   [0:0] tmp_4_nbreadreq_fu_260_p3;
wire   [0:0] tmp_5_nbreadreq_fu_274_p3;
wire   [0:0] tmp_6_nbreadreq_fu_288_p3;
reg    ap_sig_bdd_107;
reg   [0:0] tmp_reg_435;
reg   [0:0] tmp_7_reg_444;
reg   [0:0] brmerge_reg_452;
reg   [0:0] tmp_3_reg_460;
reg   [0:0] tmp_9_reg_464;
reg   [0:0] ea_fsmState_V_load_reg_473;
reg   [0:0] tmp_4_reg_477;
reg   [0:0] tmp_5_reg_486;
reg    ap_sig_bdd_176;
reg   [0:0] listenDone = 1'b0;
reg   [0:0] waitPortStatus = 1'b0;
reg   [0:0] ea_fsmState_V = 1'b0;
wire   [15:0] tmp_V_fu_347_p1;
reg   [15:0] tmp_V_reg_439;
wire   [0:0] tmp_9_fu_401_p2;
wire   [31:0] tmp_327_fu_407_p1;
reg   [31:0] tmp_327_reg_468;
reg   [15:0] tmp_V_2_reg_481;
reg   [72:0] tmp_432_reg_490;
wire   [0:0] tmp_last_V_fu_421_p3;
wire   [0:0] tmp_8_read_fu_240_p2;
wire   [15:0] tmp_length_V_fu_391_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_79;
reg    ap_sig_bdd_250;
reg    ap_sig_bdd_182;
reg    ap_sig_bdd_58;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_182) begin
        if (ap_sig_bdd_250) begin
            ea_fsmState_V <= ap_const_lv1_0;
        end else if (ap_sig_bdd_79) begin
            ea_fsmState_V <= ap_const_lv1_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_182) begin
        if (ap_sig_bdd_58) begin
            waitPortStatus <= ap_const_lv1_0;
        end else if ((ap_const_lv1_0 == brmerge_fu_367_p2)) begin
            waitPortStatus <= ap_const_lv1_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        brmerge_reg_452 <= brmerge_fu_367_p2;
        ea_fsmState_V_load_reg_473 <= ea_fsmState_V;
        tmp_3_reg_460 <= tmp_3_nbreadreq_fu_246_p3;
        tmp_reg_435 <= tmp_nbreadreq_fu_218_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_const_lv1_0 == brmerge_fu_367_p2) & ~(ap_const_lv1_0 == waitPortStatus) & ~(ap_const_lv1_0 == tmp_1_nbreadreq_fu_232_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        listenDone <= tmp_8_read_fu_240_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_246_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & (ap_const_lv1_0 == tmp_9_fu_401_p2))) begin
        tmp_327_reg_468 <= tmp_327_fu_407_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == ea_fsmState_V) & ~(ap_const_lv1_0 == tmp_5_nbreadreq_fu_274_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_432_reg_490 <= rxData_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == ea_fsmState_V) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_4_reg_477 <= tmp_4_nbreadreq_fu_260_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == ea_fsmState_V) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_5_reg_486 <= tmp_5_nbreadreq_fu_274_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_218_p3 == ap_const_lv1_0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_7_reg_444 <= openConStatus_V_dout[ap_const_lv32_10];
        tmp_V_reg_439 <= tmp_V_fu_347_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_246_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_9_reg_464 <= tmp_9_fu_401_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == ea_fsmState_V) & ~(ap_const_lv1_0 == tmp_4_nbreadreq_fu_260_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_V_2_reg_481 <= rxMetaData_V_V_dout;
    end
end

/// ap_done assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_17)
begin
    if (ap_sig_bdd_17) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// closeConnection_V_V_write assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or tmp_reg_435 or tmp_7_reg_444 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_435) & ~(ap_const_lv1_0 == tmp_7_reg_444) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        closeConnection_V_V_write = ap_const_logic_1;
    end else begin
        closeConnection_V_V_write = ap_const_logic_0;
    end
end

/// listenPortStatus_V_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or brmerge_fu_367_p2 or tmp_1_nbreadreq_fu_232_p3 or ap_sig_bdd_107 or ap_sig_bdd_176 or waitPortStatus)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_const_lv1_0 == brmerge_fu_367_p2) & ~(ap_const_lv1_0 == waitPortStatus) & ~(ap_const_lv1_0 == tmp_1_nbreadreq_fu_232_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        listenPortStatus_V_read = ap_const_logic_1;
    end else begin
        listenPortStatus_V_read = ap_const_logic_0;
    end
end

/// listenPort_V_V_write assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or brmerge_reg_452 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == brmerge_reg_452) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        listenPort_V_V_write = ap_const_logic_1;
    end else begin
        listenPort_V_V_write = ap_const_logic_0;
    end
end

/// notifications_V_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_3_nbreadreq_fu_246_p3 or ap_sig_bdd_107 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_246_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        notifications_V_read = ap_const_logic_1;
    end else begin
        notifications_V_read = ap_const_logic_0;
    end
end

/// openConStatus_V_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_218_p3 or ap_sig_bdd_107 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_218_p3 == ap_const_lv1_0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        openConStatus_V_read = ap_const_logic_1;
    end else begin
        openConStatus_V_read = ap_const_logic_0;
    end
end

/// openConnection_V_write assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or tmp_reg_435 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_435) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        openConnection_V_write = ap_const_logic_1;
    end else begin
        openConnection_V_write = ap_const_logic_0;
    end
end

/// readRequest_V_write assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or tmp_3_reg_460 or tmp_9_reg_464 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_3_reg_460) & (ap_const_lv1_0 == tmp_9_reg_464) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        readRequest_V_write = ap_const_logic_1;
    end else begin
        readRequest_V_write = ap_const_logic_0;
    end
end

/// rxData_V_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_5_nbreadreq_fu_274_p3 or ap_sig_bdd_107 or ap_sig_bdd_176 or ea_fsmState_V)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_const_lv1_0 == ea_fsmState_V) & ~(ap_const_lv1_0 == tmp_5_nbreadreq_fu_274_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        rxData_V_read = ap_const_logic_1;
    end else begin
        rxData_V_read = ap_const_logic_0;
    end
end

/// rxMetaData_V_V_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_4_nbreadreq_fu_260_p3 or ap_sig_bdd_107 or ap_sig_bdd_176 or ea_fsmState_V)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_lv1_0 == ea_fsmState_V) & ~(ap_const_lv1_0 == tmp_4_nbreadreq_fu_260_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        rxMetaData_V_V_read = ap_const_logic_1;
    end else begin
        rxMetaData_V_V_read = ap_const_logic_0;
    end
end

/// txData_V_write assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or ea_fsmState_V_load_reg_473 or tmp_5_reg_486 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == ea_fsmState_V_load_reg_473) & ~(ap_const_lv1_0 == tmp_5_reg_486) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txData_V_write = ap_const_logic_1;
    end else begin
        txData_V_write = ap_const_logic_0;
    end
end

/// txMetaData_V_V_write assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or ea_fsmState_V_load_reg_473 or tmp_4_reg_477 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == ea_fsmState_V_load_reg_473) & ~(ap_const_lv1_0 == tmp_4_reg_477) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txMetaData_V_V_write = ap_const_logic_1;
    end else begin
        txMetaData_V_V_write = ap_const_logic_0;
    end
end

/// txStatus_V_V_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_6_nbreadreq_fu_288_p3 or ap_sig_bdd_107 or ap_sig_bdd_176)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_const_lv1_0 == tmp_6_nbreadreq_fu_288_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txStatus_V_V_read = ap_const_logic_1;
    end else begin
        txStatus_V_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or ap_sig_bdd_176 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_107 assign process. ///
always @ (ap_start or openConStatus_V_empty_n or tmp_nbreadreq_fu_218_p3 or listenPortStatus_V_empty_n or brmerge_fu_367_p2 or tmp_1_nbreadreq_fu_232_p3 or notifications_V_empty_n or tmp_3_nbreadreq_fu_246_p3 or rxMetaData_V_V_empty_n or tmp_4_nbreadreq_fu_260_p3 or rxData_V_empty_n or tmp_5_nbreadreq_fu_274_p3 or txStatus_V_V_empty_n or tmp_6_nbreadreq_fu_288_p3 or waitPortStatus or ea_fsmState_V)
begin
    ap_sig_bdd_107 = (((openConStatus_V_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_218_p3 == ap_const_lv1_0)) | ((listenPortStatus_V_empty_n == ap_const_logic_0) & ~(ap_const_lv1_0 == brmerge_fu_367_p2) & ~(ap_const_lv1_0 == waitPortStatus) & ~(ap_const_lv1_0 == tmp_1_nbreadreq_fu_232_p3)) | ((notifications_V_empty_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_246_p3)) | ((rxMetaData_V_V_empty_n == ap_const_logic_0) & (ap_const_lv1_0 == ea_fsmState_V) & ~(ap_const_lv1_0 == tmp_4_nbreadreq_fu_260_p3)) | ((rxData_V_empty_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ea_fsmState_V) & ~(ap_const_lv1_0 == tmp_5_nbreadreq_fu_274_p3)) | ((txStatus_V_V_empty_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_6_nbreadreq_fu_288_p3)) | (ap_start == ap_const_logic_0));
end

/// ap_sig_bdd_17 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_17 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_176 assign process. ///
always @ (openConnection_V_full_n or tmp_reg_435 or closeConnection_V_V_full_n or tmp_7_reg_444 or listenPort_V_V_full_n or brmerge_reg_452 or readRequest_V_full_n or tmp_3_reg_460 or tmp_9_reg_464 or txMetaData_V_V_full_n or ea_fsmState_V_load_reg_473 or tmp_4_reg_477 or txData_V_full_n or tmp_5_reg_486)
begin
    ap_sig_bdd_176 = (((openConnection_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_435)) | (~(ap_const_lv1_0 == tmp_reg_435) & (closeConnection_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_7_reg_444)) | ((listenPort_V_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == brmerge_reg_452)) | ((readRequest_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_3_reg_460) & (ap_const_lv1_0 == tmp_9_reg_464)) | ((txMetaData_V_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ea_fsmState_V_load_reg_473) & ~(ap_const_lv1_0 == tmp_4_reg_477)) | ((txData_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ea_fsmState_V_load_reg_473) & ~(ap_const_lv1_0 == tmp_5_reg_486)));
end

/// ap_sig_bdd_182 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_107 or ap_sig_bdd_176)
begin
    ap_sig_bdd_182 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_107) | (ap_sig_bdd_176 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_250 assign process. ///
always @ (tmp_5_nbreadreq_fu_274_p3 or ea_fsmState_V or tmp_last_V_fu_421_p3)
begin
    ap_sig_bdd_250 = (~(ap_const_lv1_0 == ea_fsmState_V) & ~(ap_const_lv1_0 == tmp_5_nbreadreq_fu_274_p3) & ~(ap_const_lv1_0 == tmp_last_V_fu_421_p3));
end

/// ap_sig_bdd_58 assign process. ///
always @ (brmerge_fu_367_p2 or tmp_1_nbreadreq_fu_232_p3 or waitPortStatus)
begin
    ap_sig_bdd_58 = (~(ap_const_lv1_0 == brmerge_fu_367_p2) & ~(ap_const_lv1_0 == waitPortStatus) & ~(ap_const_lv1_0 == tmp_1_nbreadreq_fu_232_p3));
end

/// ap_sig_bdd_79 assign process. ///
always @ (tmp_4_nbreadreq_fu_260_p3 or ea_fsmState_V)
begin
    ap_sig_bdd_79 = ((ap_const_lv1_0 == ea_fsmState_V) & ~(ap_const_lv1_0 == tmp_4_nbreadreq_fu_260_p3));
end
assign brmerge_fu_367_p2 = (listenDone | waitPortStatus);
assign closeConnection_V_V_din = tmp_V_reg_439;
assign listenPort_V_V_din = ap_const_lv16_1389;
assign openConnection_V_din = ap_const_lv48_34120A010101;
assign readRequest_V_din = tmp_327_reg_468;
assign tmp_1_nbreadreq_fu_232_p3 = listenPortStatus_V_empty_n;
assign tmp_327_fu_407_p1 = notifications_V_dout[31:0];
assign tmp_3_nbreadreq_fu_246_p3 = notifications_V_empty_n;
assign tmp_4_nbreadreq_fu_260_p3 = rxMetaData_V_V_empty_n;
assign tmp_5_nbreadreq_fu_274_p3 = rxData_V_empty_n;
assign tmp_6_nbreadreq_fu_288_p3 = txStatus_V_V_empty_n;
assign tmp_8_read_fu_240_p2 = listenPortStatus_V_dout;
assign tmp_9_fu_401_p2 = (tmp_length_V_fu_391_p4 == ap_const_lv16_0? 1'b1: 1'b0);
assign tmp_V_fu_347_p1 = openConStatus_V_dout[15:0];
assign tmp_last_V_fu_421_p3 = rxData_V_dout[ap_const_lv32_48];
assign tmp_length_V_fu_391_p4 = {{notifications_V_dout[ap_const_lv32_1F : ap_const_lv32_10]}};
assign tmp_nbreadreq_fu_218_p3 = openConStatus_V_empty_n;
assign txData_V_din = tmp_432_reg_490;
assign txMetaData_V_V_din = tmp_V_2_reg_481;


endmodule //echo_server_application

