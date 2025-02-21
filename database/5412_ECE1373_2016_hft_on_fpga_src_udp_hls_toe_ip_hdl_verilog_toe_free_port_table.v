// This program was cloned from: https://github.com/mustafabbas/ECE1373_2016_hft_on_fpga
// License: MIT License

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_free_port_table (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txApp2portTable_port_req_V_V_dout,
        txApp2portTable_port_req_V_V_empty_n,
        txApp2portTable_port_req_V_V_read,
        pt_portCheckUsed_req_fifo_V_V_dout,
        pt_portCheckUsed_req_fifo_V_V_empty_n,
        pt_portCheckUsed_req_fifo_V_V_read,
        sLookup2portTable_releasePort_s_dout,
        sLookup2portTable_releasePort_s_empty_n,
        sLookup2portTable_releasePort_s_read,
        pt_portCheckUsed_rsp_fifo_V_din,
        pt_portCheckUsed_rsp_fifo_V_full_n,
        pt_portCheckUsed_rsp_fifo_V_write,
        portTable2txApp_port_rsp_V_V_din,
        portTable2txApp_port_rsp_V_V_full_n,
        portTable2txApp_port_rsp_V_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv15_1 = 15'b1;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [0:0] txApp2portTable_port_req_V_V_dout;
input   txApp2portTable_port_req_V_V_empty_n;
output   txApp2portTable_port_req_V_V_read;
input  [14:0] pt_portCheckUsed_req_fifo_V_V_dout;
input   pt_portCheckUsed_req_fifo_V_V_empty_n;
output   pt_portCheckUsed_req_fifo_V_V_read;
input  [15:0] sLookup2portTable_releasePort_s_dout;
input   sLookup2portTable_releasePort_s_empty_n;
output   sLookup2portTable_releasePort_s_read;
output  [0:0] pt_portCheckUsed_rsp_fifo_V_din;
input   pt_portCheckUsed_rsp_fifo_V_full_n;
output   pt_portCheckUsed_rsp_fifo_V_write;
output  [15:0] portTable2txApp_port_rsp_V_V_din;
input   portTable2txApp_port_rsp_V_V_full_n;
output   portTable2txApp_port_rsp_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txApp2portTable_port_req_V_V_read;
reg pt_portCheckUsed_req_fifo_V_V_read;
reg sLookup2portTable_releasePort_s_read;
reg pt_portCheckUsed_rsp_fifo_V_write;
reg portTable2txApp_port_rsp_V_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_84_p3;
wire   [0:0] tmp_131_nbreadreq_fu_92_p3;
reg    ap_sig_bdd_67;
reg   [0:0] searching_load_reg_281;
reg   [0:0] eval_load_reg_290;
reg   [0:0] tmp_reg_294;
reg   [0:0] tmp_131_reg_298;
wire   [0:0] tmp_132_nbreadreq_fu_112_p3;
reg   [0:0] temp_load_reg_277;
reg    ap_sig_bdd_111;
reg   [0:0] temp = 1'b0;
reg   [0:0] searching = 1'b0;
reg   [14:0] freePort_V = 15'b000000000000000;
reg   [0:0] eval = 1'b0;
reg   [14:0] freePortTable_address0;
reg    freePortTable_ce0;
reg    freePortTable_we0;
wire   [0:0] freePortTable_d0;
wire   [0:0] freePortTable_q0;
wire   [14:0] freePortTable_address1;
reg    freePortTable_ce1;
reg    freePortTable_we1;
wire   [0:0] freePortTable_d1;
wire   [0:0] temp_load_load_fu_189_p1;
reg   [14:0] freePort_V_load_reg_285;
wire   [63:0] tmp_172_fu_205_p1;
wire   [63:0] tmp_171_fu_210_p1;
wire   [63:0] tmp_s_fu_233_p1;
wire   [63:0] tmp_174_fu_262_p1;
wire   [0:0] tmp_495_fu_250_p3;
reg   [0:0] ap_sig_aloccmp_temp_load;
wire   [14:0] tmp_173_fu_221_p2;
wire   [14:0] tmp_496_fu_258_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_156;
reg    ap_sig_bdd_118;
reg    ap_sig_bdd_61;
reg    ap_sig_bdd_158;
reg    ap_sig_bdd_35;


toe_free_port_table_freePortTable #(
    .DataWidth( 1 ),
    .AddressRange( 32768 ),
    .AddressWidth( 15 ))
freePortTable_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( freePortTable_address0 ),
    .ce0( freePortTable_ce0 ),
    .we0( freePortTable_we0 ),
    .d0( freePortTable_d0 ),
    .q0( freePortTable_q0 ),
    .address1( freePortTable_address1 ),
    .ce1( freePortTable_ce1 ),
    .we1( freePortTable_we1 ),
    .d1( freePortTable_d1 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_118) begin
        if (~(searching == ap_const_lv1_0)) begin
            eval <= ap_const_lv1_1;
        end else if (ap_sig_bdd_156) begin
            eval <= ap_const_lv1_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(searching == ap_const_lv1_0))) begin
        searching <= ap_const_lv1_0;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (searching == ap_const_lv1_0) & (ap_const_lv1_0 == eval) & (ap_const_lv1_0 == tmp_nbreadreq_fu_84_p3) & ~(ap_const_lv1_0 == tmp_131_nbreadreq_fu_92_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (searching == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == eval) & ~(ap_const_lv1_0 == temp_load_load_fu_189_p1)))) begin
        searching <= ap_const_lv1_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        eval_load_reg_290 <= eval;
        freePort_V_load_reg_285 <= freePort_V;
        searching_load_reg_281 <= searching;
        temp_load_reg_277 <= ap_sig_aloccmp_temp_load;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (searching == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == eval))) begin
        freePort_V <= tmp_173_fu_221_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == searching_load_reg_281))) begin
        temp <= freePortTable_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (searching == ap_const_lv1_0) & (ap_const_lv1_0 == eval) & (ap_const_lv1_0 == tmp_nbreadreq_fu_84_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_131_reg_298 <= tmp_131_nbreadreq_fu_92_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (searching == ap_const_lv1_0) & (ap_const_lv1_0 == eval) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_294 <= tmp_nbreadreq_fu_84_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or ap_sig_bdd_111)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
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
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or ap_sig_bdd_111)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_aloccmp_temp_load assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or searching_load_reg_281 or temp or freePortTable_q0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_const_lv1_0 == searching_load_reg_281))) begin
        ap_sig_aloccmp_temp_load = freePortTable_q0;
    end else begin
        ap_sig_aloccmp_temp_load = temp;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
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

/// freePortTable_address0 assign process. ///
always @ (searching or tmp_172_fu_205_p1 or tmp_171_fu_210_p1 or tmp_s_fu_233_p1 or ap_sig_bdd_61 or ap_sig_bdd_158 or ap_sig_bdd_35)
begin
    if (ap_sig_bdd_35) begin
        if (ap_sig_bdd_158) begin
            freePortTable_address0 = tmp_171_fu_210_p1;
        end else if (~(searching == ap_const_lv1_0)) begin
            freePortTable_address0 = tmp_s_fu_233_p1;
        end else if (ap_sig_bdd_61) begin
            freePortTable_address0 = tmp_172_fu_205_p1;
        end else begin
            freePortTable_address0 = 'bx;
        end
    end else begin
        freePortTable_address0 = 'bx;
    end
end

/// freePortTable_ce0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_84_p3 or ap_sig_bdd_67 or ap_sig_bdd_111 or searching or eval or temp_load_load_fu_189_p1)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (searching == ap_const_lv1_0) & (ap_const_lv1_0 == eval) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_84_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(searching == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (searching == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == eval) & (ap_const_lv1_0 == temp_load_load_fu_189_p1)))) begin
        freePortTable_ce0 = ap_const_logic_1;
    end else begin
        freePortTable_ce0 = ap_const_logic_0;
    end
end

/// freePortTable_ce1 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or ap_sig_bdd_111)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        freePortTable_ce1 = ap_const_logic_1;
    end else begin
        freePortTable_ce1 = ap_const_logic_0;
    end
end

/// freePortTable_we0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or ap_sig_bdd_111 or searching or eval or temp_load_load_fu_189_p1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (searching == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == eval) & (ap_const_lv1_0 == temp_load_load_fu_189_p1))) begin
        freePortTable_we0 = ap_const_logic_1;
    end else begin
        freePortTable_we0 = ap_const_logic_0;
    end
end

/// freePortTable_we1 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or searching_load_reg_281 or eval_load_reg_290 or tmp_reg_294 or tmp_131_reg_298 or tmp_132_nbreadreq_fu_112_p3 or ap_sig_bdd_111 or tmp_495_fu_250_p3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == searching_load_reg_281) & (ap_const_lv1_0 == eval_load_reg_290) & (ap_const_lv1_0 == tmp_reg_294) & (ap_const_lv1_0 == tmp_131_reg_298) & ~(ap_const_lv1_0 == tmp_132_nbreadreq_fu_112_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == tmp_495_fu_250_p3))) begin
        freePortTable_we1 = ap_const_logic_1;
    end else begin
        freePortTable_we1 = ap_const_logic_0;
    end
end

/// portTable2txApp_port_rsp_V_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or searching_load_reg_281 or eval_load_reg_290 or temp_load_reg_277 or ap_sig_bdd_111)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == searching_load_reg_281) & ~(ap_const_lv1_0 == eval_load_reg_290) & (ap_const_lv1_0 == temp_load_reg_277) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        portTable2txApp_port_rsp_V_V_write = ap_const_logic_1;
    end else begin
        portTable2txApp_port_rsp_V_V_write = ap_const_logic_0;
    end
end

/// pt_portCheckUsed_req_fifo_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_84_p3 or ap_sig_bdd_67 or ap_sig_bdd_111 or searching or eval)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (searching == ap_const_lv1_0) & (ap_const_lv1_0 == eval) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_84_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        pt_portCheckUsed_req_fifo_V_V_read = ap_const_logic_1;
    end else begin
        pt_portCheckUsed_req_fifo_V_V_read = ap_const_logic_0;
    end
end

/// pt_portCheckUsed_rsp_fifo_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or searching_load_reg_281 or eval_load_reg_290 or tmp_reg_294 or ap_sig_bdd_111)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == searching_load_reg_281) & (ap_const_lv1_0 == eval_load_reg_290) & ~(ap_const_lv1_0 == tmp_reg_294) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        pt_portCheckUsed_rsp_fifo_V_write = ap_const_logic_1;
    end else begin
        pt_portCheckUsed_rsp_fifo_V_write = ap_const_logic_0;
    end
end

/// sLookup2portTable_releasePort_s_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or searching_load_reg_281 or eval_load_reg_290 or tmp_reg_294 or tmp_131_reg_298 or tmp_132_nbreadreq_fu_112_p3 or ap_sig_bdd_111)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == searching_load_reg_281) & (ap_const_lv1_0 == eval_load_reg_290) & (ap_const_lv1_0 == tmp_reg_294) & (ap_const_lv1_0 == tmp_131_reg_298) & ~(ap_const_lv1_0 == tmp_132_nbreadreq_fu_112_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        sLookup2portTable_releasePort_s_read = ap_const_logic_1;
    end else begin
        sLookup2portTable_releasePort_s_read = ap_const_logic_0;
    end
end

/// txApp2portTable_port_req_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_84_p3 or tmp_131_nbreadreq_fu_92_p3 or ap_sig_bdd_67 or ap_sig_bdd_111 or searching or eval)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (searching == ap_const_lv1_0) & (ap_const_lv1_0 == eval) & (ap_const_lv1_0 == tmp_nbreadreq_fu_84_p3) & ~(ap_const_lv1_0 == tmp_131_nbreadreq_fu_92_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txApp2portTable_port_req_V_V_read = ap_const_logic_1;
    end else begin
        txApp2portTable_port_req_V_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or ap_sig_bdd_111 or ap_sig_pprstidle_pp0)
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

/// ap_sig_bdd_111 assign process. ///
always @ (sLookup2portTable_releasePort_s_empty_n or searching_load_reg_281 or eval_load_reg_290 or tmp_reg_294 or tmp_131_reg_298 or tmp_132_nbreadreq_fu_112_p3 or pt_portCheckUsed_rsp_fifo_V_full_n or portTable2txApp_port_rsp_V_V_full_n or temp_load_reg_277)
begin
    ap_sig_bdd_111 = (((sLookup2portTable_releasePort_s_empty_n == ap_const_logic_0) & (ap_const_lv1_0 == searching_load_reg_281) & (ap_const_lv1_0 == eval_load_reg_290) & (ap_const_lv1_0 == tmp_reg_294) & (ap_const_lv1_0 == tmp_131_reg_298) & ~(ap_const_lv1_0 == tmp_132_nbreadreq_fu_112_p3)) | ((ap_const_lv1_0 == searching_load_reg_281) & (ap_const_lv1_0 == eval_load_reg_290) & (pt_portCheckUsed_rsp_fifo_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_294)) | ((ap_const_lv1_0 == searching_load_reg_281) & (portTable2txApp_port_rsp_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == eval_load_reg_290) & (ap_const_lv1_0 == temp_load_reg_277)));
end

/// ap_sig_bdd_118 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_67 or ap_sig_bdd_111)
begin
    ap_sig_bdd_118 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_67) | (ap_sig_bdd_111 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_156 assign process. ///
always @ (searching or eval)
begin
    ap_sig_bdd_156 = ((searching == ap_const_lv1_0) & ~(ap_const_lv1_0 == eval));
end

/// ap_sig_bdd_158 assign process. ///
always @ (searching or eval or temp_load_load_fu_189_p1)
begin
    ap_sig_bdd_158 = ((searching == ap_const_lv1_0) & ~(ap_const_lv1_0 == eval) & (ap_const_lv1_0 == temp_load_load_fu_189_p1));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_35 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0)
begin
    ap_sig_bdd_35 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0));
end

/// ap_sig_bdd_61 assign process. ///
always @ (tmp_nbreadreq_fu_84_p3 or searching or eval)
begin
    ap_sig_bdd_61 = ((searching == ap_const_lv1_0) & (ap_const_lv1_0 == eval) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_84_p3));
end

/// ap_sig_bdd_67 assign process. ///
always @ (ap_start or ap_done_reg or txApp2portTable_port_req_V_V_empty_n or tmp_nbreadreq_fu_84_p3 or tmp_131_nbreadreq_fu_92_p3 or pt_portCheckUsed_req_fifo_V_V_empty_n or searching or eval)
begin
    ap_sig_bdd_67 = (((txApp2portTable_port_req_V_V_empty_n == ap_const_logic_0) & (searching == ap_const_lv1_0) & (ap_const_lv1_0 == eval) & (ap_const_lv1_0 == tmp_nbreadreq_fu_84_p3) & ~(ap_const_lv1_0 == tmp_131_nbreadreq_fu_92_p3)) | ((searching == ap_const_lv1_0) & (ap_const_lv1_0 == eval) & (pt_portCheckUsed_req_fifo_V_V_empty_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_84_p3)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign freePortTable_address1 = tmp_174_fu_262_p1;
assign freePortTable_d0 = ap_const_lv1_1;
assign freePortTable_d1 = ap_const_lv1_0;
assign portTable2txApp_port_rsp_V_V_din = freePort_V_load_reg_285;
assign pt_portCheckUsed_rsp_fifo_V_din = freePortTable_q0;
assign temp_load_load_fu_189_p1 = ap_sig_aloccmp_temp_load;
assign tmp_131_nbreadreq_fu_92_p3 = txApp2portTable_port_req_V_V_empty_n;
assign tmp_132_nbreadreq_fu_112_p3 = sLookup2portTable_releasePort_s_empty_n;
assign tmp_171_fu_210_p1 = freePort_V;
assign tmp_172_fu_205_p1 = pt_portCheckUsed_req_fifo_V_V_dout;
assign tmp_173_fu_221_p2 = (freePort_V + ap_const_lv15_1);
assign tmp_174_fu_262_p1 = tmp_496_fu_258_p1;
assign tmp_495_fu_250_p3 = sLookup2portTable_releasePort_s_dout[ap_const_lv32_F];
assign tmp_496_fu_258_p1 = sLookup2portTable_releasePort_s_dout[14:0];
assign tmp_nbreadreq_fu_84_p3 = pt_portCheckUsed_req_fifo_V_V_empty_n;
assign tmp_s_fu_233_p1 = freePort_V;


endmodule //toe_free_port_table

