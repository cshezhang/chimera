// This program was cloned from: https://github.com/chipsalliance/synlig
// License: Apache License 2.0

/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */

(* top =  1  *)

module bsg_cache_sbuf_queue(clk_i, data_i, el0_en_i, el1_en_i, mux0_sel_i, mux1_sel_i, el0_snoop_o, el1_snoop_o, data_o);
  
  wire _00_;
  
  wire _01_;
  
  wire _02_;
  
  wire _03_;
  
  wire _04_;
  
  wire _05_;
  
  wire _06_;
  
  wire _07_;
  
  wire _08_;
  
  wire _09_;
  
  wire _10_;
  
  wire _11_;
  
  wire _12_;
  
  wire _13_;
  
  wire _14_;
  
  wire _15_;
  
  input clk_i;
  wire clk_i;
  
  input [15:0] data_i;
  wire [15:0] data_i;
  
  output [15:0] data_o;
  wire [15:0] data_o;
  
  input el0_en_i;
  wire el0_en_i;
  
  reg [15:0] el0_r;
  
  output [15:0] el0_snoop_o;
  wire [15:0] el0_snoop_o;
  
  input el1_en_i;
  wire el1_en_i;
  
  reg [15:0] el1_r;
  
  output [15:0] el1_snoop_o;
  wire [15:0] el1_snoop_o;
  
  input mux0_sel_i;
  wire mux0_sel_i;
  
  input mux1_sel_i;
  wire mux1_sel_i;
  assign data_o[11] = mux1_sel_i ? el1_r[11] : data_i[11];
  assign data_o[12] = mux1_sel_i ? el1_r[12] : data_i[12];
  assign data_o[13] = mux1_sel_i ? el1_r[13] : data_i[13];
  assign data_o[14] = mux1_sel_i ? el1_r[14] : data_i[14];
  assign data_o[15] = mux1_sel_i ? el1_r[15] : data_i[15];
  assign _00_ = mux0_sel_i ? el0_r[0] : data_i[0];
  assign _07_ = mux0_sel_i ? el0_r[1] : data_i[1];
  assign _08_ = mux0_sel_i ? el0_r[2] : data_i[2];
  assign _09_ = mux0_sel_i ? el0_r[3] : data_i[3];
  assign _10_ = mux0_sel_i ? el0_r[4] : data_i[4];
  assign _11_ = mux0_sel_i ? el0_r[5] : data_i[5];
  assign _12_ = mux0_sel_i ? el0_r[6] : data_i[6];
  assign _13_ = mux0_sel_i ? el0_r[7] : data_i[7];
  assign _14_ = mux0_sel_i ? el0_r[8] : data_i[8];
  assign _15_ = mux0_sel_i ? el0_r[9] : data_i[9];
  assign _01_ = mux0_sel_i ? el0_r[10] : data_i[10];
  assign _02_ = mux0_sel_i ? el0_r[11] : data_i[11];
  assign _03_ = mux0_sel_i ? el0_r[12] : data_i[12];
  assign _04_ = mux0_sel_i ? el0_r[13] : data_i[13];
  assign _05_ = mux0_sel_i ? el0_r[14] : data_i[14];
  assign _06_ = mux0_sel_i ? el0_r[15] : data_i[15];
  assign data_o[0] = mux1_sel_i ? el1_r[0] : data_i[0];
  assign data_o[1] = mux1_sel_i ? el1_r[1] : data_i[1];
  assign data_o[2] = mux1_sel_i ? el1_r[2] : data_i[2];
  assign data_o[3] = mux1_sel_i ? el1_r[3] : data_i[3];
  assign data_o[4] = mux1_sel_i ? el1_r[4] : data_i[4];
  assign data_o[5] = mux1_sel_i ? el1_r[5] : data_i[5];
  assign data_o[6] = mux1_sel_i ? el1_r[6] : data_i[6];
  assign data_o[7] = mux1_sel_i ? el1_r[7] : data_i[7];
  assign data_o[8] = mux1_sel_i ? el1_r[8] : data_i[8];
  assign data_o[9] = mux1_sel_i ? el1_r[9] : data_i[9];
  assign data_o[10] = mux1_sel_i ? el1_r[10] : data_i[10];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[0] <= _00_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[1] <= _07_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[2] <= _08_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[3] <= _09_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[4] <= _10_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[5] <= _11_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[6] <= _12_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[7] <= _13_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[8] <= _14_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[9] <= _15_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[10] <= _01_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[11] <= _02_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[12] <= _03_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[13] <= _04_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[14] <= _05_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el1_en_i) el1_r[15] <= _06_;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[0] <= data_i[0];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[1] <= data_i[1];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[2] <= data_i[2];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[3] <= data_i[3];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[4] <= data_i[4];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[5] <= data_i[5];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[6] <= data_i[6];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[7] <= data_i[7];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[8] <= data_i[8];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[9] <= data_i[9];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[10] <= data_i[10];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[11] <= data_i[11];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[12] <= data_i[12];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[13] <= data_i[13];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[14] <= data_i[14];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (el0_en_i) el0_r[15] <= data_i[15];
  assign el0_snoop_o = el0_r;
  assign el1_snoop_o = el1_r;
endmodule

