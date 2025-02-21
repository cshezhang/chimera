/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [3:0] _00_;
  wire celloutsig_0_0z;
  wire [13:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [6:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire [43:0] celloutsig_0_15z;
  wire [13:0] celloutsig_0_16z;
  wire [4:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [3:0] celloutsig_0_22z;
  wire [6:0] celloutsig_0_23z;
  reg [2:0] celloutsig_0_25z;
  wire [5:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [4:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [5:0] celloutsig_0_32z;
  wire [11:0] celloutsig_0_34z;
  wire [4:0] celloutsig_0_35z;
  wire [28:0] celloutsig_0_36z;
  wire [2:0] celloutsig_0_37z;
  wire [7:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [14:0] celloutsig_0_3z;
  wire [11:0] celloutsig_0_40z;
  wire [9:0] celloutsig_0_41z;
  wire [2:0] celloutsig_0_4z;
  wire [9:0] celloutsig_0_5z;
  wire [23:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [9:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [7:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [9:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [12:0] celloutsig_1_13z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire [4:0] celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire [2:0] celloutsig_1_2z;
  wire [13:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [8:0] celloutsig_1_5z;
  wire [3:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [3:0] celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(negedge clkin_data[0], posedge clkin_data[32])
    if (clkin_data[32]) _00_ <= 4'h0;
    else _00_ <= { celloutsig_0_7z, celloutsig_0_4z };
  assign celloutsig_0_3z = in_data[66:52] & in_data[24:10];
  assign celloutsig_0_32z = celloutsig_0_6z[13:8] & { celloutsig_0_15z[39:38], _00_ };
  assign celloutsig_0_4z = { celloutsig_0_1z[3:2], celloutsig_0_2z } & { celloutsig_0_1z[2:1], celloutsig_0_0z };
  assign celloutsig_0_41z = { celloutsig_0_5z[1:0], celloutsig_0_38z } & { celloutsig_0_35z, celloutsig_0_35z };
  assign celloutsig_1_3z = { celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z } & { celloutsig_1_2z[1:0], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_5z = { in_data[112:107], celloutsig_1_2z } & { in_data[128:125], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_0_5z = { celloutsig_0_3z[14:6], celloutsig_0_2z } & { celloutsig_0_4z[1:0], celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_1_11z = { celloutsig_1_3z[1:0], celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_7z } & in_data[175:166];
  assign celloutsig_1_13z = { celloutsig_1_3z[8:1], celloutsig_1_10z, celloutsig_1_6z } & { in_data[172:164], celloutsig_1_9z };
  assign celloutsig_0_6z = { celloutsig_0_3z[8:6], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z } & { in_data[30:13], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_8z = celloutsig_0_3z[13:4] & { celloutsig_0_6z[22:20], celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_1z = in_data[32:28] & in_data[26:22];
  assign celloutsig_0_34z = { celloutsig_0_3z[13:3], celloutsig_0_18z } / { 1'h1, in_data[94:85], celloutsig_0_7z };
  assign celloutsig_0_36z = { celloutsig_0_10z[12:1], celloutsig_0_31z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_30z } / { 1'h1, celloutsig_0_16z[12:7], celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_34z, celloutsig_0_1z };
  assign celloutsig_0_40z = { celloutsig_0_26z[4:3], celloutsig_0_28z, celloutsig_0_22z, celloutsig_0_39z } / { 1'h1, celloutsig_0_36z[11:4], celloutsig_0_7z, celloutsig_0_18z, celloutsig_0_0z };
  assign celloutsig_1_1z = celloutsig_1_0z[4:2] / { 1'h1, in_data[120:119] };
  assign celloutsig_1_9z = { celloutsig_1_6z[2], celloutsig_1_1z } / { 1'h1, celloutsig_1_5z[2:0] };
  assign celloutsig_1_14z = celloutsig_1_9z[3:1] / { 1'h1, celloutsig_1_5z[6:5] };
  assign celloutsig_1_17z = { celloutsig_1_4z, celloutsig_1_14z, celloutsig_1_4z } / { 1'h1, celloutsig_1_13z[8:5] };
  assign celloutsig_0_10z = { celloutsig_0_6z[18:15], celloutsig_0_5z } / { 1'h1, in_data[39:27] };
  assign celloutsig_0_12z = celloutsig_0_8z[8:2] / { 1'h1, celloutsig_0_8z[8:3] };
  assign celloutsig_0_14z = celloutsig_0_5z[8:6] / { 1'h1, celloutsig_0_8z[3:2] };
  assign celloutsig_0_22z = celloutsig_0_8z[8:5] / { 1'h1, celloutsig_0_14z[1:0], celloutsig_0_19z };
  assign celloutsig_0_23z = celloutsig_0_5z[8:2] / { 1'h1, celloutsig_0_17z[3], celloutsig_0_17z };
  assign celloutsig_0_26z = celloutsig_0_3z[11:6] / { 1'h1, celloutsig_0_8z[3], celloutsig_0_4z, celloutsig_0_13z };
  assign celloutsig_0_0z = in_data[37:27] < in_data[36:26];
  assign celloutsig_0_30z = celloutsig_0_16z[11:8] < celloutsig_0_12z[3:0];
  assign celloutsig_1_4z = { in_data[146:139], celloutsig_1_1z } < { celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_7z = { celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_1z } < in_data[122:108];
  assign celloutsig_1_10z = celloutsig_1_3z[3:0] < { celloutsig_1_9z[3:1], celloutsig_1_7z };
  assign celloutsig_1_12z = in_data[184:181] < celloutsig_1_3z[9:6];
  assign celloutsig_0_18z = { celloutsig_0_12z[6:3], celloutsig_0_11z } < { celloutsig_0_1z[2:0], celloutsig_0_7z, celloutsig_0_7z };
  assign celloutsig_0_2z = { celloutsig_0_1z[4:1], celloutsig_0_1z } < { celloutsig_0_1z[4], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_27z = in_data[88:57] < { celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_25z, celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_17z, celloutsig_0_18z, celloutsig_0_22z };
  assign celloutsig_0_35z = { celloutsig_0_5z[6:4], celloutsig_0_27z, celloutsig_0_7z } * { celloutsig_0_1z[3], celloutsig_0_7z, celloutsig_0_25z };
  assign celloutsig_0_37z = { celloutsig_0_13z, celloutsig_0_19z, celloutsig_0_13z } * celloutsig_0_8z[2:0];
  assign celloutsig_0_38z = { celloutsig_0_9z, celloutsig_0_32z, celloutsig_0_19z } * { celloutsig_0_37z[2:1], celloutsig_0_31z, celloutsig_0_17z };
  assign celloutsig_1_0z = in_data[118:111] * in_data[165:158];
  assign celloutsig_1_2z = celloutsig_1_0z[3:1] * in_data[183:181];
  assign celloutsig_1_6z = celloutsig_1_5z[5:2] * { celloutsig_1_3z[8], celloutsig_1_2z };
  assign celloutsig_1_18z = celloutsig_1_17z[2:0] * { in_data[157], celloutsig_1_16z, celloutsig_1_12z };
  assign celloutsig_1_19z = { celloutsig_1_11z[9:7], celloutsig_1_6z } * celloutsig_1_5z[7:1];
  assign celloutsig_0_15z = { in_data[52:30], celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_3z } * { in_data[83:62], celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_7z };
  assign celloutsig_0_16z = { celloutsig_0_5z[5], celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_12z } * { celloutsig_0_14z[1:0], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_7z };
  assign celloutsig_0_17z = { celloutsig_0_10z[12:10], celloutsig_0_2z, celloutsig_0_7z } * celloutsig_0_3z[12:8];
  assign celloutsig_0_28z = { celloutsig_0_10z[5:2], celloutsig_0_19z } * { celloutsig_0_16z[0], celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_27z };
  assign celloutsig_0_31z = ~((celloutsig_0_21z & celloutsig_0_23z[2]) | celloutsig_0_2z);
  assign celloutsig_0_39z = ~((celloutsig_0_6z[6] & celloutsig_0_18z) | celloutsig_0_31z);
  assign celloutsig_1_16z = ~((celloutsig_1_1z[2] & celloutsig_1_10z) | celloutsig_1_11z[6]);
  assign celloutsig_0_7z = ~((celloutsig_0_4z[0] & celloutsig_0_2z) | celloutsig_0_2z);
  assign celloutsig_0_9z = ~((celloutsig_0_2z & celloutsig_0_1z[0]) | celloutsig_0_4z[1]);
  assign celloutsig_0_11z = ~((celloutsig_0_6z[11] & in_data[44]) | celloutsig_0_6z[13]);
  assign celloutsig_0_13z = ~((celloutsig_0_4z[0] & celloutsig_0_7z) | celloutsig_0_6z[8]);
  assign celloutsig_0_19z = ~((celloutsig_0_1z[1] & celloutsig_0_6z[5]) | celloutsig_0_12z[0]);
  assign celloutsig_0_21z = ~((celloutsig_0_14z[1] & celloutsig_0_10z[10]) | celloutsig_0_6z[2]);
  always_latch
    if (!clkin_data[32]) celloutsig_0_25z = 3'h0;
    else if (!celloutsig_1_18z[0]) celloutsig_0_25z = { celloutsig_0_1z[2], celloutsig_0_2z, celloutsig_0_0z };
  assign { out_data[130:128], out_data[102:96], out_data[43:32], out_data[9:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_40z, celloutsig_0_41z };
endmodule
