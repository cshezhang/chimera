/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [10:0] celloutsig_0_10z;
  wire [7:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [51:0] celloutsig_0_13z;
  wire [8:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  reg [2:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [10:0] celloutsig_0_20z;
  wire [4:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [8:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [14:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [2:0] celloutsig_0_37z;
  wire [16:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [3:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [9:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  reg [10:0] celloutsig_0_47z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  reg [2:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [3:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire [35:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_7z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_34z = celloutsig_0_3z[1] ? celloutsig_0_22z : celloutsig_0_20z[2];
  assign celloutsig_0_40z = celloutsig_0_26z ? celloutsig_0_16z : celloutsig_0_32z;
  assign celloutsig_1_1z = celloutsig_1_0z[2] | ~(in_data[136]);
  assign celloutsig_0_7z = celloutsig_0_2z[2] | ~(celloutsig_0_0z);
  assign celloutsig_0_28z = celloutsig_0_7z | ~(celloutsig_0_24z);
  assign celloutsig_0_39z = celloutsig_0_17z | celloutsig_0_14z[7];
  assign celloutsig_0_32z = celloutsig_0_25z | celloutsig_0_2z[7];
  assign celloutsig_0_6z = in_data[47] ^ celloutsig_0_0z;
  assign celloutsig_0_49z = { celloutsig_0_47z[9:0], celloutsig_0_27z, celloutsig_0_42z } >= { celloutsig_0_37z[2], celloutsig_0_32z, celloutsig_0_37z, celloutsig_0_43z, celloutsig_0_40z, celloutsig_0_6z, celloutsig_0_23z, celloutsig_0_42z, celloutsig_0_30z, celloutsig_0_34z };
  assign celloutsig_0_51z = celloutsig_0_2z[5:0] >= celloutsig_0_38z[13:8];
  assign celloutsig_1_2z = { in_data[137:119], celloutsig_1_1z } >= in_data[190:171];
  assign celloutsig_0_9z = { celloutsig_0_5z[1:0], celloutsig_0_1z, celloutsig_0_4z } >= { celloutsig_0_8z[0], celloutsig_0_5z };
  assign celloutsig_0_0z = in_data[70:68] > in_data[82:80];
  assign celloutsig_1_19z = celloutsig_1_18z[16:14] > in_data[100:98];
  assign celloutsig_0_23z = { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_3z } > celloutsig_0_2z[8:3];
  assign celloutsig_0_27z = { celloutsig_0_5z, celloutsig_0_21z, celloutsig_0_0z } > celloutsig_0_20z[9:1];
  assign celloutsig_0_29z = celloutsig_0_13z[25:22] > { celloutsig_0_8z[3], celloutsig_0_27z, celloutsig_0_0z, celloutsig_0_12z };
  assign celloutsig_0_35z = { celloutsig_0_2z[7:2], celloutsig_0_16z, celloutsig_0_29z, celloutsig_0_32z } && in_data[38:30];
  assign celloutsig_0_1z = { in_data[24:21], celloutsig_0_0z, celloutsig_0_0z } && in_data[51:46];
  assign celloutsig_0_22z = celloutsig_0_2z[5:3] && celloutsig_0_2z[7:5];
  assign celloutsig_0_25z = celloutsig_0_14z[6:3] && celloutsig_0_11z[7:4];
  assign celloutsig_0_42z = celloutsig_0_10z[9:0] % { 1'h1, celloutsig_0_13z[25:23], celloutsig_0_24z, celloutsig_0_37z, celloutsig_0_36z, celloutsig_0_25z };
  assign celloutsig_0_14z = celloutsig_0_10z[8:0] % { 1'h1, celloutsig_0_11z };
  assign celloutsig_0_38z = celloutsig_0_34z ? { celloutsig_0_14z[6:3], celloutsig_0_14z, celloutsig_0_3z } : { celloutsig_0_11z[5:1], celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_35z, celloutsig_0_1z };
  assign celloutsig_1_18z = celloutsig_1_2z ? { in_data[167:138], celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_7z } : { in_data[182:151], celloutsig_1_13z, celloutsig_1_13z, celloutsig_1_0z[2], celloutsig_1_1z };
  assign celloutsig_0_11z = celloutsig_0_8z[1] ? { in_data[62:56], celloutsig_0_4z } : { celloutsig_0_3z[3:1], celloutsig_0_8z[3:2], 1'h0, celloutsig_0_8z[0], celloutsig_0_7z };
  assign celloutsig_0_43z = { in_data[85:74], celloutsig_0_39z, celloutsig_0_19z, celloutsig_0_28z } != { celloutsig_0_42z[9:7], celloutsig_0_36z, celloutsig_0_35z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_34z, celloutsig_0_14z };
  assign celloutsig_1_7z = { in_data[156:151], celloutsig_1_1z, celloutsig_1_0z[2] } != { in_data[189:184], celloutsig_1_0z[2], celloutsig_1_2z };
  assign celloutsig_0_18z = { celloutsig_0_10z[6:1], celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_5z } != { celloutsig_0_13z[37:28], celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_3z = - { in_data[26:24], celloutsig_0_0z };
  assign celloutsig_1_0z = - in_data[150:148];
  assign celloutsig_0_10z = - { in_data[70:68], celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_7z };
  assign celloutsig_0_33z = - { celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_16z, celloutsig_0_1z };
  assign celloutsig_0_4z = celloutsig_0_3z[2] & celloutsig_0_0z;
  assign celloutsig_1_5z = celloutsig_1_3z & in_data[144];
  assign celloutsig_0_15z = celloutsig_0_2z[3] & celloutsig_0_3z[0];
  assign celloutsig_0_16z = celloutsig_0_13z[3] & celloutsig_0_9z;
  assign celloutsig_0_30z = celloutsig_0_15z & celloutsig_0_5z[0];
  assign celloutsig_0_36z = | { celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_1z };
  assign celloutsig_1_3z = | { celloutsig_1_2z, in_data[174:172] };
  assign celloutsig_1_13z = | { celloutsig_1_11z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z[2], in_data[174:172] };
  assign celloutsig_0_17z = | { celloutsig_0_15z, celloutsig_0_10z[5:3], celloutsig_0_0z };
  assign celloutsig_0_24z = ~^ { celloutsig_0_2z[7:0], celloutsig_0_21z, celloutsig_0_23z };
  assign celloutsig_0_52z = ^ { celloutsig_0_20z[8:1], celloutsig_0_49z };
  assign celloutsig_1_11z = ^ in_data[165:155];
  assign celloutsig_0_26z = ^ { in_data[24:16], celloutsig_0_15z };
  assign celloutsig_0_31z = ^ celloutsig_0_2z[4:0];
  assign celloutsig_0_37z = in_data[45:43] >> { celloutsig_0_33z[5], celloutsig_0_18z, celloutsig_0_31z };
  assign celloutsig_0_8z = { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_7z } >> in_data[90:87];
  assign celloutsig_0_13z = { celloutsig_0_11z[4:1], celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_12z } >> { in_data[77:42], celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_20z = { celloutsig_0_14z[6:2], celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_19z, celloutsig_0_7z } >> { celloutsig_0_14z[5:0], celloutsig_0_7z, celloutsig_0_3z };
  assign celloutsig_0_21z = { celloutsig_0_3z[2], celloutsig_0_6z, celloutsig_0_5z } >> { celloutsig_0_20z[7:5], celloutsig_0_16z, celloutsig_0_6z };
  assign celloutsig_0_2z = in_data[80:72] >> { in_data[78:71], celloutsig_0_0z };
  assign celloutsig_1_4z = { celloutsig_1_0z[2:1], celloutsig_1_3z, celloutsig_1_3z } >>> in_data[174:171];
  assign celloutsig_0_12z = ~((celloutsig_0_10z[5] & celloutsig_0_9z) | celloutsig_0_9z);
  always_latch
    if (clkin_data[0]) celloutsig_0_47z = 11'h000;
    else if (!celloutsig_1_18z[1]) celloutsig_0_47z = { celloutsig_0_14z[7:0], celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_17z };
  always_latch
    if (clkin_data[0]) celloutsig_0_5z = 3'h0;
    else if (!celloutsig_1_18z[1]) celloutsig_0_5z = celloutsig_0_3z[3:1];
  always_latch
    if (!clkin_data[0]) celloutsig_0_19z = 3'h0;
    else if (celloutsig_1_18z[1]) celloutsig_0_19z = celloutsig_0_10z[10:8];
  assign { out_data[159:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z[32:1], celloutsig_1_19z, celloutsig_0_51z, celloutsig_0_52z };
endmodule
