/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [8:0] celloutsig_0_0z;
  reg [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [51:0] celloutsig_0_16z;
  wire [11:0] celloutsig_0_17z;
  reg [3:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_30z;
  wire [15:0] celloutsig_0_32z;
  reg [38:0] celloutsig_0_34z;
  wire [17:0] celloutsig_0_3z;
  wire celloutsig_0_47z;
  wire [30:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  reg [8:0] celloutsig_0_70z;
  wire [16:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [10:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  reg [15:0] celloutsig_1_18z;
  reg [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_4z;
  reg [9:0] celloutsig_1_5z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_1z = celloutsig_0_0z[4] ? in_data[36] : celloutsig_0_0z[4];
  assign celloutsig_0_24z = celloutsig_0_5z ? celloutsig_0_9z[5] : celloutsig_0_11z;
  assign celloutsig_1_0z = ~(in_data[102] & in_data[135]);
  assign celloutsig_1_4z = ~(celloutsig_1_2z & in_data[103]);
  assign celloutsig_0_15z = celloutsig_0_1z | ~(celloutsig_0_11z);
  assign celloutsig_0_69z = ~(celloutsig_0_47z ^ celloutsig_0_17z[10]);
  assign celloutsig_0_7z = { in_data[56:51], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z } / { 1'h1, celloutsig_0_3z[14:0], celloutsig_0_5z };
  assign celloutsig_0_9z = celloutsig_0_7z[13:3] / { 1'h1, celloutsig_0_4z[26:17] };
  assign celloutsig_0_0z = in_data[40:32] / { 1'h1, in_data[33:26] };
  assign celloutsig_0_4z = { in_data[20], in_data[48:46], celloutsig_0_3z, celloutsig_0_0z } / { 1'h1, in_data[81:55], in_data[48:46] };
  assign celloutsig_0_8z = { celloutsig_0_4z[24:13], celloutsig_0_5z } == in_data[86:74];
  assign celloutsig_0_19z = celloutsig_0_3z == in_data[53:36];
  assign celloutsig_0_5z = celloutsig_0_0z[5:3] && celloutsig_0_0z[8:6];
  assign celloutsig_0_12z = celloutsig_0_0z[5:1] && { celloutsig_0_10z[2:1], celloutsig_0_10z };
  assign celloutsig_0_47z = celloutsig_0_34z[35:20] || { celloutsig_0_4z[18:4], celloutsig_0_26z };
  assign celloutsig_1_1z = in_data[163:159] || { in_data[139], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_23z = { celloutsig_0_9z, in_data[48:46] } || { celloutsig_0_4z[12:0], celloutsig_0_12z };
  assign celloutsig_0_30z = { celloutsig_0_16z[39:29], celloutsig_0_14z } < { celloutsig_0_4z[26:20], celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_26z, celloutsig_0_18z };
  assign celloutsig_0_27z = { celloutsig_0_9z[9:7], celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_6z } < { celloutsig_0_9z[5:1], celloutsig_0_19z };
  assign celloutsig_0_13z = celloutsig_0_11z & ~(celloutsig_0_5z);
  assign celloutsig_0_3z = celloutsig_0_0z[3] ? { in_data[48:46], celloutsig_0_0z[8:4], 1'h1, celloutsig_0_0z[2:0], in_data[48:46], in_data[48:46] } : in_data[81:64];
  assign celloutsig_0_17z = celloutsig_0_14z[1] ? { in_data[41:37], celloutsig_0_6z, in_data[48:46], celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_6z } : celloutsig_0_16z[12:1];
  assign celloutsig_0_21z = in_data[62] ? celloutsig_0_16z[2:0] : { celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_8z };
  assign celloutsig_0_6z = { celloutsig_0_0z[8:7], celloutsig_0_5z } != celloutsig_0_3z[10:8];
  assign celloutsig_0_11z = { celloutsig_0_7z[13:9], celloutsig_0_6z } != { celloutsig_0_9z[1:0], in_data[48:46], celloutsig_0_8z };
  assign celloutsig_0_20z = { celloutsig_0_4z[19:9], celloutsig_0_1z, celloutsig_0_12z } != { celloutsig_0_9z[9:0], in_data[48:46] };
  assign celloutsig_0_25z = { celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_6z } != { in_data[47:46], celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_23z };
  assign celloutsig_0_26z = celloutsig_0_4z[14:11] != celloutsig_0_3z[14:11];
  assign celloutsig_0_32z = { in_data[50:47], celloutsig_0_17z } - { celloutsig_0_17z[11:8], celloutsig_0_30z, celloutsig_0_9z };
  assign celloutsig_0_14z = { in_data[47:46], celloutsig_0_6z } - celloutsig_0_3z[9:7];
  assign celloutsig_0_16z = { in_data[76:56], celloutsig_0_3z, celloutsig_0_13z, in_data[48:46], celloutsig_0_0z } - { in_data[52:2], celloutsig_0_6z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_34z = 39'h0000000000;
    else if (!clkin_data[32]) celloutsig_0_34z = { celloutsig_0_32z[14], celloutsig_0_3z, celloutsig_0_20z, celloutsig_0_30z, celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_27z, celloutsig_0_9z, celloutsig_0_24z };
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_70z = 9'h000;
    else if (!clkin_data[0]) celloutsig_0_70z = { celloutsig_0_10z[2:1], celloutsig_0_21z, celloutsig_0_18z };
  always_latch
    if (!clkin_data[128]) celloutsig_1_5z = 10'h000;
    else if (!clkin_data[96]) celloutsig_1_5z = { in_data[107:100], celloutsig_1_4z, celloutsig_1_2z };
  always_latch
    if (clkin_data[160]) celloutsig_1_18z = 16'h0000;
    else if (!clkin_data[96]) celloutsig_1_18z = in_data[182:167];
  always_latch
    if (clkin_data[128]) celloutsig_1_19z = 5'h00;
    else if (!clkin_data[96]) celloutsig_1_19z = { celloutsig_1_5z[3:0], celloutsig_1_2z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_10z = 3'h0;
    else if (!clkin_data[0]) celloutsig_0_10z = celloutsig_0_7z[2:0];
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_18z = 4'h0;
    else if (clkin_data[32]) celloutsig_0_18z = { celloutsig_0_16z[10], celloutsig_0_10z };
  assign celloutsig_1_2z = ~((celloutsig_1_1z & celloutsig_1_0z) | (in_data[127] & celloutsig_1_1z));
  assign { out_data[143:128], out_data[100:96], out_data[32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule
