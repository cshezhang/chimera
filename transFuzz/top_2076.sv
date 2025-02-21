/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [23:0] _00_;
  reg [4:0] _01_;
  wire celloutsig_0_0z;
  wire celloutsig_0_12z;
  wire [15:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [7:0] celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire [3:0] celloutsig_0_4z;
  wire [2:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [5:0] celloutsig_0_9z;
  wire [30:0] celloutsig_1_0z;
  wire [6:0] celloutsig_1_10z;
  wire [5:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [11:0] celloutsig_1_13z;
  wire [5:0] celloutsig_1_14z;
  wire celloutsig_1_17z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [33:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [11:0] celloutsig_1_5z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_9z = celloutsig_1_4z ? celloutsig_1_1z[25] : celloutsig_1_3z;
  assign celloutsig_0_7z = ~((celloutsig_0_2z[5] | celloutsig_0_2z[2]) & celloutsig_0_0z);
  assign celloutsig_0_3z = ~(celloutsig_0_1z[3] ^ celloutsig_0_2z[6]);
  assign celloutsig_1_18z = celloutsig_1_13z[10:7] + celloutsig_1_10z[4:1];
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _00_ <= 24'h000000;
    else _00_ <= { in_data[36:14], celloutsig_0_6z };
  always_ff @(posedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _01_ <= 5'h00;
    else _01_ <= celloutsig_1_1z[5:1];
  assign celloutsig_1_10z = { celloutsig_1_5z[5:2], celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_4z } / { 1'h1, celloutsig_1_4z, _01_ };
  assign celloutsig_1_11z = { celloutsig_1_0z[16:13], celloutsig_1_8z, celloutsig_1_4z } / { 1'h1, _01_ };
  assign celloutsig_1_12z = { celloutsig_1_1z[11], celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_4z, _01_, celloutsig_1_4z, _01_, celloutsig_1_7z, celloutsig_1_3z } == { celloutsig_1_0z[27:6], celloutsig_1_4z, celloutsig_1_8z };
  assign celloutsig_1_2z = celloutsig_1_1z[26:22] == celloutsig_1_1z[27:23];
  assign celloutsig_1_3z = { in_data[102:100], celloutsig_1_2z } >= in_data[116:113];
  assign celloutsig_1_4z = { in_data[107:98], celloutsig_1_3z, celloutsig_1_3z } >= in_data[149:138];
  assign celloutsig_0_12z = { _00_[17:11], celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_5z } > { celloutsig_0_2z[5:0], celloutsig_0_8z, celloutsig_0_9z };
  assign celloutsig_1_8z = { celloutsig_1_1z[13:7], celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_3z } > celloutsig_1_5z[11:2];
  assign celloutsig_1_17z = celloutsig_1_4z & ~(celloutsig_1_3z);
  assign celloutsig_0_8z = celloutsig_0_6z & ~(celloutsig_0_2z[6]);
  assign celloutsig_0_20z = celloutsig_0_12z & ~(celloutsig_0_5z[0]);
  assign celloutsig_0_21z = celloutsig_0_5z[2] & ~(celloutsig_0_12z);
  assign celloutsig_0_5z = celloutsig_0_2z[3:1] % { 1'h1, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_9z = celloutsig_0_1z[7:2] % { 1'h1, celloutsig_0_2z[4:2], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_13z = { celloutsig_1_0z[25:15], celloutsig_1_3z } % { 1'h1, celloutsig_1_0z[23:20], celloutsig_1_7z, _01_, celloutsig_1_9z };
  assign celloutsig_1_0z = in_data[175:145] % { 1'h1, in_data[177:148] };
  assign celloutsig_0_0z = in_data[75:69] !== in_data[72:66];
  assign celloutsig_1_19z = { celloutsig_1_0z[27:15], celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_12z, celloutsig_1_12z, celloutsig_1_14z, celloutsig_1_17z } !== { celloutsig_1_1z[18:7], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_14z, celloutsig_1_14z, celloutsig_1_9z, celloutsig_1_17z, celloutsig_1_12z };
  assign celloutsig_0_6z = { in_data[23], celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_2z } !== { in_data[16:11], celloutsig_0_1z[15:1], 1'h1, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_7z = { celloutsig_1_5z[10:7], celloutsig_1_3z, celloutsig_1_5z } !== in_data[173:157];
  assign celloutsig_1_14z = celloutsig_1_11z ~^ { celloutsig_1_1z[14:11], celloutsig_1_4z, celloutsig_1_2z };
  assign celloutsig_0_4z = { in_data[87:85], celloutsig_0_0z } ~^ celloutsig_0_1z[9:6];
  assign celloutsig_0_2z = celloutsig_0_1z[15:8] ~^ { celloutsig_0_1z[11:5], celloutsig_0_0z };
  assign celloutsig_1_1z = { celloutsig_1_0z[28:26], celloutsig_1_0z } ~^ in_data[156:123];
  assign celloutsig_1_5z = in_data[165:154] ~^ celloutsig_1_1z[19:8];
  assign celloutsig_0_1z[15:1] = { in_data[34:24], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } ~^ in_data[17:3];
  assign celloutsig_0_1z[0] = 1'h1;
  assign { out_data[131:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_20z, celloutsig_0_21z };
endmodule
