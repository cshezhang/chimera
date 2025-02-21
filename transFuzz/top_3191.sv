/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  reg [9:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [2:0] celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire [2:0] celloutsig_0_4z;
  reg [10:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [10:0] celloutsig_0_7z;
  wire [34:0] celloutsig_0_8z;
  wire [4:0] celloutsig_1_0z;
  wire [4:0] celloutsig_1_15z;
  wire [5:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [5:0] celloutsig_1_19z;
  wire [9:0] celloutsig_1_1z;
  wire [23:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  reg [21:0] celloutsig_1_4z;
  wire [3:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [8:0] celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = !(in_data[1] ? in_data[0] : in_data[74]);
  assign celloutsig_1_18z = ~(celloutsig_1_15z[1] | in_data[151]);
  assign celloutsig_0_10z = ~(celloutsig_0_6z | celloutsig_0_4z[0]);
  assign celloutsig_1_7z = in_data[143] ^ celloutsig_1_0z[4];
  assign celloutsig_0_6z = { in_data[66:61], celloutsig_0_1z, celloutsig_0_0z } <= in_data[27:17];
  assign celloutsig_0_3z = ! { celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_29z = ! celloutsig_0_7z[10:1];
  assign celloutsig_0_2z = celloutsig_0_1z[2:0] % { 1'h1, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_0z = in_data[134:130] * in_data[172:168];
  assign celloutsig_1_6z = celloutsig_1_1z[1] ? { celloutsig_1_1z[6:4], celloutsig_1_3z } : celloutsig_1_4z[16:13];
  assign celloutsig_1_3z = { celloutsig_1_0z[3:1], celloutsig_1_1z } != { celloutsig_1_1z[8:1], celloutsig_1_0z };
  assign celloutsig_0_20z = celloutsig_0_15z[4:1] != { celloutsig_0_8z[5:3], celloutsig_0_16z };
  assign celloutsig_0_4z = - celloutsig_0_2z;
  assign celloutsig_0_15z = - { celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_1_1z = - { celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_8z = { in_data[73:54], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_4z } | { in_data[80:47], celloutsig_0_3z };
  assign celloutsig_0_16z = celloutsig_0_6z & celloutsig_0_10z;
  assign celloutsig_1_17z = celloutsig_1_8z[6:1] >> celloutsig_1_1z[6:1];
  assign celloutsig_0_7z = { celloutsig_0_2z[2:1], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_6z } >> { in_data[53:52], celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_1_8z = in_data[122:114] << celloutsig_1_1z[9:1];
  assign celloutsig_1_2z = in_data[178:155] << { in_data[126:113], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_1z = in_data[49:46] >>> in_data[50:47];
  assign celloutsig_1_15z = celloutsig_1_8z[4:0] ~^ celloutsig_1_2z[10:6];
  assign celloutsig_1_19z = { celloutsig_1_17z[4:0], celloutsig_1_7z } ~^ { celloutsig_1_6z[1:0], celloutsig_1_6z };
  always_latch
    if (clkin_data[64]) celloutsig_1_4z = 22'h000000;
    else if (clkin_data[32]) celloutsig_1_4z = in_data[148:127];
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_5z = 11'h000;
    else if (clkin_data[0]) celloutsig_0_5z = { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_4z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_28z = 10'h000;
    else if (!clkin_data[0]) celloutsig_0_28z = { celloutsig_0_5z[10:2], celloutsig_0_20z };
  assign { out_data[128], out_data[101:96], out_data[41:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_28z, celloutsig_0_29z };
endmodule
