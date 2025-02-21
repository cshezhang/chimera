/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [4:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [27:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [8:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  reg [10:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [13:0] celloutsig_0_21z;
  wire [7:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_2z;
  reg [2:0] celloutsig_0_33z;
  wire [3:0] celloutsig_0_34z;
  wire [24:0] celloutsig_0_3z;
  wire [7:0] celloutsig_0_4z;
  wire [2:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [44:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [3:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [10:0] celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [8:0] celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  reg [7:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [3:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_7z = in_data[119] ? celloutsig_1_5z : in_data[124];
  assign celloutsig_0_6z = in_data[44] ? celloutsig_0_1z : celloutsig_0_5z[0];
  assign celloutsig_0_18z = celloutsig_0_12z[12] ? celloutsig_0_17z[2] : celloutsig_0_14z[4];
  assign celloutsig_0_2z = in_data[88] ? celloutsig_0_1z : in_data[25];
  assign celloutsig_0_1z = ~((celloutsig_0_0z | in_data[95]) & in_data[74]);
  assign celloutsig_1_5z = celloutsig_1_0z | celloutsig_1_1z[6];
  assign celloutsig_1_19z = celloutsig_1_17z[1] | celloutsig_1_14z;
  assign celloutsig_1_4z = in_data[110:106] + { celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_5z = celloutsig_0_3z[20:18] / { 1'h1, in_data[88:87] };
  assign celloutsig_0_10z = { celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_5z } / { 1'h1, celloutsig_0_7z[9:7], celloutsig_0_1z };
  assign celloutsig_0_4z = { in_data[11:5], celloutsig_0_2z } / { 1'h1, in_data[64], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, in_data[0] };
  assign celloutsig_1_12z = { celloutsig_1_6z[0], celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_4z } / { 1'h1, in_data[115:106] };
  assign celloutsig_1_18z = { celloutsig_1_6z[3:2], celloutsig_1_9z } / { 1'h1, celloutsig_1_4z[2], celloutsig_1_15z };
  assign celloutsig_0_7z = { in_data[48:8], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z } / { 1'h1, in_data[90:86], celloutsig_0_3z[24:1], 1'h1, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, in_data[0] };
  assign celloutsig_0_12z = { celloutsig_0_3z[20:5], celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_0z } / { 1'h1, celloutsig_0_3z[19:1], celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_8z };
  assign celloutsig_0_14z = { celloutsig_0_3z[20:19], celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_11z } / { 1'h1, celloutsig_0_10z, celloutsig_0_5z };
  assign celloutsig_1_3z = in_data[184:149] == { in_data[181:147], celloutsig_1_2z };
  assign celloutsig_0_11z = ! celloutsig_0_3z[18:16];
  assign celloutsig_1_2z = { celloutsig_1_1z[2:0], celloutsig_1_1z } || { celloutsig_1_1z[5:3], celloutsig_1_1z };
  assign celloutsig_1_8z = { in_data[171:169], celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_0z } || { in_data[142:133], celloutsig_1_0z };
  assign celloutsig_1_15z = { in_data[136:132], celloutsig_1_5z, celloutsig_1_10z } || { in_data[109:102], celloutsig_1_8z, celloutsig_1_11z };
  assign celloutsig_0_8z = celloutsig_0_3z[13:2] || { celloutsig_0_3z[5:4], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_6z };
  assign celloutsig_1_17z = { celloutsig_1_12z[9:2], celloutsig_1_2z } % { 1'h1, celloutsig_1_6z[2:0], celloutsig_1_4z };
  assign celloutsig_0_19z = { celloutsig_0_7z[32:30], celloutsig_0_13z } % { 1'h1, celloutsig_0_17z[1], celloutsig_0_18z, celloutsig_0_8z };
  assign celloutsig_0_23z = { celloutsig_0_10z[2:1], celloutsig_0_15z, celloutsig_0_10z } % { 1'h1, celloutsig_0_7z[25:20], celloutsig_0_11z };
  assign celloutsig_0_34z = celloutsig_0_21z[4:1] * { celloutsig_0_17z[3:1], celloutsig_0_15z };
  assign celloutsig_0_15z = in_data[15:6] !== celloutsig_0_3z[14:5];
  assign celloutsig_0_9z = | in_data[36:30];
  assign celloutsig_1_9z = celloutsig_1_5z & celloutsig_1_3z;
  assign celloutsig_0_0z = ^ in_data[26:14];
  assign celloutsig_1_0z = ^ in_data[187:185];
  assign celloutsig_1_11z = ^ celloutsig_1_1z[7:3];
  assign celloutsig_1_14z = ^ { celloutsig_1_10z[1:0], celloutsig_1_2z, celloutsig_1_11z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_13z = ^ celloutsig_0_7z[12:8];
  assign celloutsig_1_6z = celloutsig_1_4z[4:1] ~^ { celloutsig_1_4z[2], celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z };
  assign celloutsig_1_10z = { celloutsig_1_1z[5:3], celloutsig_1_7z } ~^ { celloutsig_1_4z[4:2], celloutsig_1_8z };
  assign celloutsig_0_21z = { celloutsig_0_19z[3:1], celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_6z } ^ { celloutsig_0_12z[12:0], celloutsig_0_15z };
  assign celloutsig_0_24z = ~((celloutsig_0_18z & celloutsig_0_23z[4]) | celloutsig_0_18z);
  always_latch
    if (!clkin_data[32]) celloutsig_0_33z = 3'h0;
    else if (!celloutsig_1_18z[0]) celloutsig_0_33z = { celloutsig_0_24z, celloutsig_0_15z, celloutsig_0_8z };
  always_latch
    if (clkin_data[64]) celloutsig_1_1z = 8'h00;
    else if (clkin_data[0]) celloutsig_1_1z = in_data[109:102];
  always_latch
    if (clkin_data[32]) celloutsig_0_17z = 11'h000;
    else if (!celloutsig_1_18z[0]) celloutsig_0_17z = celloutsig_0_12z[27:17];
  assign celloutsig_0_3z[24:1] = in_data[62:39] ~^ { in_data[65:44], celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_3z[0] = 1'h1;
  assign { out_data[130:128], out_data[96], out_data[34:32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_33z, celloutsig_0_34z };
endmodule
