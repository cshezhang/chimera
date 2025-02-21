/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  reg [7:0] celloutsig_0_11z;
  wire [5:0] celloutsig_0_12z;
  wire [10:0] celloutsig_0_13z;
  wire [5:0] celloutsig_0_14z;
  wire [6:0] celloutsig_0_15z;
  reg [16:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [3:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  reg [11:0] celloutsig_0_26z;
  wire [14:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_34z;
  wire [20:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_3z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  reg [11:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [18:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [8:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [13:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_14z = ~(celloutsig_1_3z & celloutsig_1_6z);
  assign celloutsig_1_19z = ~(celloutsig_1_12z & celloutsig_1_13z[4]);
  assign celloutsig_0_22z = ~(celloutsig_0_13z[2] & celloutsig_0_0z);
  assign celloutsig_0_30z = !(celloutsig_0_1z[1] ? celloutsig_0_3z : celloutsig_0_23z);
  assign celloutsig_1_11z = ~((celloutsig_1_6z | celloutsig_1_1z) & (celloutsig_1_2z | celloutsig_1_7z[0]));
  assign celloutsig_1_17z = celloutsig_1_4z[2] | ~(celloutsig_1_15z);
  assign celloutsig_0_18z = celloutsig_0_17z | celloutsig_0_8z;
  assign celloutsig_1_12z = celloutsig_1_11z ^ in_data[143];
  assign celloutsig_0_17z = celloutsig_0_14z[2] ^ celloutsig_0_4z[2];
  assign celloutsig_0_19z = celloutsig_0_2z ^ celloutsig_0_0z;
  assign celloutsig_0_23z = celloutsig_0_20z ^ celloutsig_0_12z[3];
  assign celloutsig_1_18z = ~(celloutsig_1_17z ^ celloutsig_1_13z[15]);
  assign celloutsig_0_1z = in_data[86:83] / { 1'h1, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_29z = { celloutsig_0_26z[8:5], celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_19z, celloutsig_0_0z, celloutsig_0_22z } / { 1'h1, celloutsig_0_16z[15:2] };
  assign celloutsig_0_34z = { celloutsig_0_16z[7:5], celloutsig_0_1z, celloutsig_0_23z, celloutsig_0_18z, celloutsig_0_30z } >= { celloutsig_0_9z[8], celloutsig_0_21z, celloutsig_0_11z };
  assign celloutsig_1_0z = in_data[175:161] >= in_data[111:97];
  assign celloutsig_0_20z = { celloutsig_0_11z[5], celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_7z } >= { celloutsig_0_15z[6:4], celloutsig_0_14z };
  assign celloutsig_1_1z = in_data[125:119] > in_data[170:164];
  assign celloutsig_1_2z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z } > in_data[188:186];
  assign celloutsig_1_8z = { in_data[188:182], celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z } > { celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_2z };
  assign celloutsig_1_15z = { in_data[100], celloutsig_1_12z, celloutsig_1_14z, celloutsig_1_14z } > { celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_12z };
  assign celloutsig_0_7z = celloutsig_0_4z[2:0] > celloutsig_0_4z[2:0];
  assign celloutsig_0_8z = { in_data[94:86], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_5z } > { in_data[33:20], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_0_3z = in_data[56:48] > { celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_0z = in_data[13:10] <= in_data[19:16];
  assign celloutsig_1_3z = { in_data[175:143], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z } && { in_data[178:143], celloutsig_1_0z };
  assign celloutsig_0_35z = { in_data[10:7], celloutsig_0_34z, celloutsig_0_15z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_34z, celloutsig_0_17z, celloutsig_0_5z, celloutsig_0_21z } % { 1'h1, celloutsig_0_29z[13:11], celloutsig_0_13z, celloutsig_0_34z, celloutsig_0_10z, celloutsig_0_34z, celloutsig_0_23z };
  assign celloutsig_0_4z = { celloutsig_0_1z[2:0], celloutsig_0_2z } % { 1'h1, celloutsig_0_1z[1:0], in_data[0] };
  assign celloutsig_0_14z = celloutsig_0_5z ? celloutsig_0_9z[8:3] : celloutsig_0_12z;
  assign celloutsig_0_36z = & celloutsig_0_9z[7:3];
  assign celloutsig_1_5z = & { celloutsig_1_1z, celloutsig_1_0z, in_data[171:167] };
  assign celloutsig_0_6z = | { celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_2z = | { celloutsig_0_1z[3:1], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_21z = ~^ { celloutsig_0_17z, celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_0_10z = { celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_5z } >> in_data[33:31];
  assign celloutsig_1_7z = { in_data[185:173], celloutsig_1_6z } << { in_data[106:97], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_0_12z = { celloutsig_0_11z[6:2], celloutsig_0_2z } >>> { celloutsig_0_1z[1], celloutsig_0_8z, celloutsig_0_1z };
  assign celloutsig_1_13z = { celloutsig_1_7z[9:2], celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_4z[8:1], celloutsig_1_4z[1] } - { celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_6z };
  assign celloutsig_0_13z = { celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z } ^ { in_data[85:81], celloutsig_0_12z };
  assign celloutsig_0_15z = { in_data[65:60], celloutsig_0_2z } ^ { celloutsig_0_10z[0], celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_5z };
  assign celloutsig_1_6z = ~((celloutsig_1_4z[6] & celloutsig_1_3z) | celloutsig_1_1z);
  assign celloutsig_0_5z = ~((celloutsig_0_3z & celloutsig_0_4z[0]) | celloutsig_0_0z);
  always_latch
    if (!clkin_data[32]) celloutsig_0_9z = 12'h000;
    else if (!celloutsig_1_18z) celloutsig_0_9z = { in_data[87:80], celloutsig_0_4z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_11z = 8'h00;
    else if (celloutsig_1_18z) celloutsig_0_11z = { celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_3z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_16z = 17'h00000;
    else if (clkin_data[0]) celloutsig_0_16z = { celloutsig_0_9z[9:3], celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_8z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_26z = 12'h000;
    else if (!celloutsig_1_18z) celloutsig_0_26z = celloutsig_0_16z[11:0];
  assign { celloutsig_1_4z[1], celloutsig_1_4z[8:2] } = ~ { celloutsig_1_3z, in_data[171:165] };
  assign celloutsig_1_4z[0] = celloutsig_1_4z[1];
  assign { out_data[128], out_data[96], out_data[52:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_35z, celloutsig_0_36z };
endmodule
