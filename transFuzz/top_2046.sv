/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [4:0] _00_;
  reg [4:0] _01_;
  reg [7:0] _02_;
  wire [14:0] celloutsig_0_0z;
  wire [16:0] celloutsig_0_11z;
  reg [2:0] celloutsig_0_12z;
  wire [5:0] celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire [4:0] celloutsig_0_1z;
  wire celloutsig_0_2z;
  wire [10:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [5:0] celloutsig_0_6z;
  wire [13:0] celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [2:0] celloutsig_1_10z;
  wire [8:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [2:0] celloutsig_1_13z;
  wire [13:0] celloutsig_1_14z;
  wire [6:0] celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  wire [10:0] celloutsig_1_2z;
  wire [5:0] celloutsig_1_3z;
  wire [14:0] celloutsig_1_4z;
  wire [5:0] celloutsig_1_5z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_5z = ~(celloutsig_0_2z & celloutsig_0_0z[7]);
  assign celloutsig_1_0z = ~in_data[187];
  assign celloutsig_0_4z = celloutsig_0_3z[4] ^ celloutsig_0_1z[3];
  assign celloutsig_1_19z = celloutsig_1_14z[11:9] + celloutsig_1_2z[4:2];
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _00_ <= 5'h00;
    else _00_ <= { in_data[34:31], celloutsig_0_5z };
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _01_ <= 5'h00;
    else _01_ <= { celloutsig_0_1z[3:0], celloutsig_0_9z };
  always_ff @(negedge clkin_data[64], posedge clkin_data[128])
    if (clkin_data[128]) _02_ <= 8'h00;
    else _02_ <= in_data[137:130];
  assign celloutsig_0_0z = in_data[84:70] & in_data[25:11];
  assign celloutsig_1_3z = _02_[7:2] & celloutsig_1_2z[7:2];
  assign celloutsig_0_9z = { celloutsig_0_3z[9:0], celloutsig_0_2z, celloutsig_0_4z, _00_ } > { celloutsig_0_0z[4:1], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_4z };
  assign celloutsig_0_2z = { celloutsig_0_0z[13], celloutsig_0_1z } > celloutsig_0_0z[5:0];
  assign celloutsig_1_12z = celloutsig_1_0z & ~(celloutsig_1_4z[14]);
  assign celloutsig_1_2z = { in_data[143:141], _02_ } % { 1'h1, celloutsig_1_0z, _02_, celloutsig_1_0z };
  assign celloutsig_1_5z = in_data[187] ? in_data[162:157] : in_data[107:102];
  assign celloutsig_0_15z = { celloutsig_0_0z[2:0], celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_5z } != { celloutsig_0_13z[4:2], _00_, celloutsig_0_6z };
  assign celloutsig_1_18z = ~ { celloutsig_1_2z[6:3], celloutsig_1_13z };
  assign celloutsig_0_6z = celloutsig_0_3z[5:0] << { celloutsig_0_3z[6:2], celloutsig_0_2z };
  assign celloutsig_1_11z = celloutsig_1_2z[10:2] << { _02_[2:1], celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_0_3z = { in_data[37:28], celloutsig_0_2z } >> celloutsig_0_0z[12:2];
  assign celloutsig_1_14z = { _02_[7:1], celloutsig_1_13z, celloutsig_1_12z, celloutsig_1_13z } >> { celloutsig_1_10z[2:1], celloutsig_1_10z, celloutsig_1_11z };
  assign celloutsig_0_7z = in_data[32:19] >> { in_data[81:69], celloutsig_0_4z };
  assign celloutsig_1_4z = in_data[169:155] >> { in_data[176:170], _02_ };
  assign celloutsig_1_10z = celloutsig_1_3z[2:0] >> { celloutsig_1_5z[4:3], celloutsig_1_0z };
  assign celloutsig_0_1z = celloutsig_0_0z[8:4] >>> in_data[41:37];
  assign celloutsig_0_11z = { celloutsig_0_7z[7:3], celloutsig_0_3z, celloutsig_0_4z } - { celloutsig_0_0z[12:7], celloutsig_0_5z, _01_, celloutsig_0_1z };
  assign celloutsig_0_13z = celloutsig_0_6z - { celloutsig_0_6z[5:1], celloutsig_0_4z };
  assign celloutsig_1_13z = { celloutsig_1_5z[4:3], celloutsig_1_0z } ~^ celloutsig_1_5z[3:1];
  always_latch
    if (clkin_data[96]) celloutsig_0_12z = 3'h0;
    else if (clkin_data[160]) celloutsig_0_12z = celloutsig_0_0z[4:2];
  assign { out_data[9:6], out_data[0] } = { celloutsig_0_11z[9:6], celloutsig_0_4z } ~^ { in_data[40:39], celloutsig_0_15z, celloutsig_0_9z, celloutsig_0_2z };
  assign { out_data[134:128], out_data[98:96], out_data[32], out_data[5:1] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_15z, 5'h1f };
endmodule
