/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [7:0] celloutsig_0_0z;
  reg [14:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [5:0] celloutsig_0_1z;
  wire [9:0] celloutsig_0_2z;
  wire [30:0] celloutsig_0_3z;
  wire [16:0] celloutsig_0_4z;
  wire [20:0] celloutsig_0_5z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire [9:0] celloutsig_1_14z;
  wire [14:0] celloutsig_1_15z;
  wire [35:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [5:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire [13:0] celloutsig_1_3z;
  wire [6:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [38:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  reg [2:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = { celloutsig_0_2z[4], celloutsig_0_2z, celloutsig_0_1z } % { 1'h1, in_data[80:65] };
  assign celloutsig_0_5z = { celloutsig_0_0z[4:0], celloutsig_0_0z, celloutsig_0_0z } % { 1'h1, celloutsig_0_4z[5:3], celloutsig_0_4z };
  assign celloutsig_1_2z = { celloutsig_1_0z[3:1], celloutsig_1_1z, celloutsig_1_1z } % { 1'h1, in_data[155:153], in_data[96] };
  assign celloutsig_1_3z = in_data[146:133] % { 1'h1, in_data[109:102], celloutsig_1_2z };
  assign celloutsig_0_0z = in_data[59:52] * in_data[22:15];
  assign celloutsig_0_3z = { in_data[65:47], celloutsig_0_1z, celloutsig_0_1z } * { in_data[18:6], celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_1_0z = in_data[111:108] * in_data[157:154];
  assign celloutsig_0_1z = celloutsig_0_0z[6:1] * celloutsig_0_0z[6:1];
  assign celloutsig_1_4z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z } * { celloutsig_1_2z[3:1], celloutsig_1_0z };
  assign celloutsig_1_6z = { celloutsig_1_4z[4:1], celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_0z } * { in_data[138:115], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_0_2z = { celloutsig_0_0z[5:4], celloutsig_0_0z } * { in_data[84:81], celloutsig_0_1z };
  assign celloutsig_1_14z = { in_data[132:126], celloutsig_1_9z } * { celloutsig_1_6z[10:6], celloutsig_1_2z };
  assign celloutsig_1_15z = { celloutsig_1_0z[3:2], celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_9z } * { celloutsig_1_3z[10:0], celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_10z, celloutsig_1_12z };
  assign celloutsig_1_17z = { celloutsig_1_6z[37:6], celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_8z } * { celloutsig_1_6z[21:15], celloutsig_1_15z, celloutsig_1_3z };
  assign celloutsig_1_19z = celloutsig_1_14z[5:0] * celloutsig_1_17z[31:26];
  assign celloutsig_0_11z = celloutsig_0_3z[19] & celloutsig_0_5z[11];
  assign celloutsig_1_1z = celloutsig_1_0z[1] & celloutsig_1_0z[0];
  assign celloutsig_1_5z = celloutsig_1_2z[4] & celloutsig_1_2z[1];
  assign celloutsig_1_7z = celloutsig_1_1z & celloutsig_1_2z[3];
  assign celloutsig_1_8z = celloutsig_1_2z[1] & celloutsig_1_2z[0];
  assign celloutsig_1_10z = celloutsig_1_1z & celloutsig_1_4z[1];
  assign celloutsig_1_12z = celloutsig_1_0z[2] & celloutsig_1_3z[0];
  assign celloutsig_1_18z = celloutsig_1_6z[3] & celloutsig_1_17z[23];
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_10z = 15'h0000;
    else if (clkin_data[0]) celloutsig_0_10z = celloutsig_0_3z[22:8];
  always_latch
    if (!clkin_data[64]) celloutsig_1_9z = 3'h0;
    else if (clkin_data[32]) celloutsig_1_9z = in_data[103:101];
  assign { out_data[128], out_data[101:96], out_data[46:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_10z, celloutsig_0_11z };
endmodule
