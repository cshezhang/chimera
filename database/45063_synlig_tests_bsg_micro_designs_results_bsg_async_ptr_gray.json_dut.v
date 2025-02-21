// This program was cloned from: https://github.com/chipsalliance/synlig
// License: Apache License 2.0

/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */


module \$paramod$81d71a67a6c3ec5810ccd7d39edc413b905567d8\bsg_launch_sync_sync (iclk_i, iclk_reset_i, oclk_i, iclk_data_i, iclk_data_o, oclk_data_o);
  
  input [4:0] iclk_data_i;
  wire [4:0] iclk_data_i;
  
  output [4:0] iclk_data_o;
  wire [4:0] iclk_data_o;
  
  input iclk_i;
  wire iclk_i;
  
  input iclk_reset_i;
  wire iclk_reset_i;
  
  output [4:0] oclk_data_o;
  wire [4:0] oclk_data_o;
  
  input oclk_i;
  wire oclk_i;
  (* module_not_derived = 32'd1 *)
  
  bsg_launch_sync_sync_posedge_5_unit \sync.p.z.blss  (
    .iclk_data_i(iclk_data_i),
    .iclk_data_o(iclk_data_o),
    .iclk_i(iclk_i),
    .iclk_reset_i(iclk_reset_i),
    .oclk_data_o(oclk_data_o),
    .oclk_i(oclk_i)
  );
endmodule

(* top =  1  *)

module bsg_async_ptr_gray(w_clk_i, w_reset_i, w_inc_i, r_clk_i, w_ptr_binary_r_o, w_ptr_gray_r_o, w_ptr_gray_r_rsync_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  
  input r_clk_i;
  wire r_clk_i;
  
  input w_clk_i;
  wire w_clk_i;
  
  input w_inc_i;
  wire w_inc_i;
  
  output [4:0] w_ptr_binary_r_o;
  wire [4:0] w_ptr_binary_r_o;
  
  wire [4:0] w_ptr_gray_n;
  
  wire [4:0] w_ptr_gray_r;
  
  output [4:0] w_ptr_gray_r_o;
  wire [4:0] w_ptr_gray_r_o;
  
  wire [4:0] w_ptr_gray_r_rsync;
  
  output [4:0] w_ptr_gray_r_rsync_o;
  wire [4:0] w_ptr_gray_r_rsync_o;
  
  reg [4:0] w_ptr_p1_r;
  
  wire [4:0] w_ptr_p2;
  
  reg [4:0] w_ptr_r;
  
  input w_reset_i;
  wire w_reset_i;
  assign w_ptr_p2[0] = ~w_ptr_p1_r[0];
  assign w_ptr_p2[1] = w_ptr_p1_r[1] ^ w_ptr_p1_r[0];
  assign w_ptr_gray_n[0] = w_inc_i ? w_ptr_p2[1] : w_ptr_gray_r[0];
  assign _00_ = w_ptr_p1_r[1] ^ w_ptr_p1_r[2];
  assign w_ptr_gray_n[1] = w_inc_i ? _00_ : w_ptr_gray_r[1];
  assign _01_ = w_ptr_p1_r[3] ^ w_ptr_p1_r[2];
  assign w_ptr_gray_n[2] = w_inc_i ? _01_ : w_ptr_gray_r[2];
  assign _02_ = w_ptr_p1_r[3] ^ w_ptr_p1_r[4];
  assign w_ptr_gray_n[3] = w_inc_i ? _02_ : w_ptr_gray_r[3];
  assign w_ptr_gray_n[4] = w_inc_i ? w_ptr_p1_r[4] : w_ptr_gray_r[4];
  assign _03_ = w_ptr_p1_r[1] & w_ptr_p1_r[0];
  assign w_ptr_p2[2] = _03_ ^ w_ptr_p1_r[2];
  assign _04_ = _03_ & w_ptr_p1_r[2];
  assign w_ptr_p2[3] = _04_ ^ w_ptr_p1_r[3];
  assign _05_ = ~(w_ptr_p1_r[3] & w_ptr_p1_r[2]);
  assign _06_ = _03_ & ~(_05_);
  assign w_ptr_p2[4] = _06_ ^ w_ptr_p1_r[4];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[0] <= 1'h0;
    else if (w_inc_i) w_ptr_r[0] <= w_ptr_p1_r[0];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[1] <= 1'h0;
    else if (w_inc_i) w_ptr_r[1] <= w_ptr_p1_r[1];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[2] <= 1'h0;
    else if (w_inc_i) w_ptr_r[2] <= w_ptr_p1_r[2];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[3] <= 1'h0;
    else if (w_inc_i) w_ptr_r[3] <= w_ptr_p1_r[3];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[4] <= 1'h0;
    else if (w_inc_i) w_ptr_r[4] <= w_ptr_p1_r[4];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_p1_r[0] <= 1'h1;
    else if (w_inc_i) w_ptr_p1_r[0] <= w_ptr_p2[0];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_p1_r[1] <= 1'h0;
    else if (w_inc_i) w_ptr_p1_r[1] <= w_ptr_p2[1];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_p1_r[2] <= 1'h0;
    else if (w_inc_i) w_ptr_p1_r[2] <= w_ptr_p2[2];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_p1_r[3] <= 1'h0;
    else if (w_inc_i) w_ptr_p1_r[3] <= w_ptr_p2[3];
  
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_p1_r[4] <= 1'h0;
    else if (w_inc_i) w_ptr_p1_r[4] <= w_ptr_p2[4];
  (* module_not_derived = 32'd1 *)
  
  \$paramod$81d71a67a6c3ec5810ccd7d39edc413b905567d8\bsg_launch_sync_sync  ptr_sync (
    .iclk_data_i(w_ptr_gray_n),
    .iclk_data_o(w_ptr_gray_r),
    .iclk_i(w_clk_i),
    .iclk_reset_i(w_reset_i),
    .oclk_data_o(w_ptr_gray_r_rsync),
    .oclk_i(r_clk_i)
  );
  assign w_ptr_binary_r_o = w_ptr_r;
  assign w_ptr_gray_r_o = w_ptr_gray_r;
  assign w_ptr_gray_r_rsync_o = w_ptr_gray_r_rsync;
endmodule


module bsg_launch_sync_sync_posedge_5_unit(iclk_i, iclk_reset_i, oclk_i, iclk_data_i, iclk_data_o, oclk_data_o);
  
  reg [4:0] bsg_SYNC_1_r;
  
  reg [4:0] bsg_SYNC_2_r;
  
  reg [4:0] bsg_SYNC_LNCH_r;
  
  input [4:0] iclk_data_i;
  wire [4:0] iclk_data_i;
  
  output [4:0] iclk_data_o;
  wire [4:0] iclk_data_o;
  
  input iclk_i;
  wire iclk_i;
  
  input iclk_reset_i;
  wire iclk_reset_i;
  
  output [4:0] oclk_data_o;
  wire [4:0] oclk_data_o;
  
  input oclk_i;
  wire oclk_i;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge iclk_i)
    if (iclk_reset_i) bsg_SYNC_LNCH_r[0] <= 1'h0;
    else bsg_SYNC_LNCH_r[0] <= iclk_data_i[0];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge iclk_i)
    if (iclk_reset_i) bsg_SYNC_LNCH_r[1] <= 1'h0;
    else bsg_SYNC_LNCH_r[1] <= iclk_data_i[1];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge iclk_i)
    if (iclk_reset_i) bsg_SYNC_LNCH_r[2] <= 1'h0;
    else bsg_SYNC_LNCH_r[2] <= iclk_data_i[2];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge iclk_i)
    if (iclk_reset_i) bsg_SYNC_LNCH_r[3] <= 1'h0;
    else bsg_SYNC_LNCH_r[3] <= iclk_data_i[3];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge iclk_i)
    if (iclk_reset_i) bsg_SYNC_LNCH_r[4] <= 1'h0;
    else bsg_SYNC_LNCH_r[4] <= iclk_data_i[4];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_2_r[0] <= bsg_SYNC_1_r[0];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_2_r[1] <= bsg_SYNC_1_r[1];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_2_r[2] <= bsg_SYNC_1_r[2];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_2_r[3] <= bsg_SYNC_1_r[3];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_2_r[4] <= bsg_SYNC_1_r[4];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_1_r[0] <= bsg_SYNC_LNCH_r[0];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_1_r[1] <= bsg_SYNC_LNCH_r[1];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_1_r[2] <= bsg_SYNC_LNCH_r[2];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_1_r[3] <= bsg_SYNC_LNCH_r[3];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge oclk_i)
    bsg_SYNC_1_r[4] <= bsg_SYNC_LNCH_r[4];
  assign iclk_data_o = bsg_SYNC_LNCH_r;
  assign oclk_data_o = bsg_SYNC_2_r;
endmodule

