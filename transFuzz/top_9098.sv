/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [11:0] celloutsig_0_0z;
  wire [10:0] celloutsig_0_12z;
  wire [5:0] celloutsig_0_13z;
  wire [9:0] celloutsig_0_14z;
  wire celloutsig_0_1z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  reg [4:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [9:0] celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [24:0] celloutsig_1_11z;
  wire [4:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [3:0] celloutsig_1_15z;
  wire [6:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire [12:0] celloutsig_1_3z;
  wire [7:0] celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  reg [32:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = in_data[93:82] + in_data[12:1];
  assign celloutsig_0_8z = { in_data[49:43], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_4z } + { in_data[21], celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_7z };
  assign celloutsig_0_13z = celloutsig_0_12z[5:0] + in_data[26:21];
  assign celloutsig_1_3z = { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z } + { in_data[118:114], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_4z = in_data[82:73] === { celloutsig_0_0z[8:0], celloutsig_0_2z };
  assign celloutsig_1_18z = { celloutsig_1_16z[3:1], celloutsig_1_8z } === { celloutsig_1_12z[4:3], celloutsig_1_7z, celloutsig_1_13z };
  assign celloutsig_1_2z = in_data[172:168] % { 1'h1, in_data[120:119], celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_4z = celloutsig_1_3z[12:5] % { 1'h1, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_11z = celloutsig_1_9z[32:8] % { 1'h1, celloutsig_1_3z[4:0], celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_10z };
  assign celloutsig_1_16z = celloutsig_1_3z[9:3] % { 1'h1, celloutsig_1_11z[16], celloutsig_1_2z };
  assign celloutsig_0_3z = in_data[54:46] != in_data[82:74];
  assign celloutsig_0_5z = { in_data[74:73], celloutsig_0_1z } != { in_data[6:5], celloutsig_0_3z };
  assign celloutsig_0_1z = in_data[77:55] != in_data[73:51];
  assign celloutsig_1_0z = in_data[116:107] != in_data[123:114];
  assign celloutsig_1_6z = celloutsig_1_4z[7:1] != celloutsig_1_3z[6:0];
  assign celloutsig_1_14z = | { celloutsig_1_4z[4:1], celloutsig_1_1z };
  assign celloutsig_0_7z = in_data[30] & celloutsig_0_0z[11];
  assign celloutsig_1_1z = celloutsig_1_0z & in_data[170];
  assign celloutsig_1_7z = celloutsig_1_4z[7] & celloutsig_1_2z[0];
  assign celloutsig_0_2z = celloutsig_0_1z & celloutsig_0_0z[1];
  assign celloutsig_1_10z = celloutsig_1_1z & celloutsig_1_9z[1];
  assign celloutsig_1_19z = ^ { celloutsig_1_9z[4:1], celloutsig_1_15z, celloutsig_1_8z };
  assign celloutsig_1_8z = ^ celloutsig_1_4z[5:1];
  assign celloutsig_1_13z = ^ in_data[188:186];
  assign celloutsig_0_12z = in_data[87:77] << { in_data[34:26], celloutsig_0_7z, celloutsig_0_3z };
  assign celloutsig_0_14z = { celloutsig_0_6z[4:1], celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_4z } << { celloutsig_0_8z[9:2], celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_1_12z = { celloutsig_1_9z[28:25], celloutsig_1_0z } << { celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_7z };
  assign celloutsig_1_15z = { celloutsig_1_11z[18:17], celloutsig_1_14z, celloutsig_1_0z } << celloutsig_1_2z[4:1];
  always_latch
    if (celloutsig_1_19z) celloutsig_0_6z = 5'h00;
    else if (clkin_data[0]) celloutsig_0_6z = in_data[46:42];
  always_latch
    if (clkin_data[64]) celloutsig_1_9z = 33'h000000000;
    else if (clkin_data[32]) celloutsig_1_9z = { in_data[164:133], celloutsig_1_7z };
  assign { out_data[128], out_data[96], out_data[37:32], out_data[9:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_13z, celloutsig_0_14z };
endmodule
