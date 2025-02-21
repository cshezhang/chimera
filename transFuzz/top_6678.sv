/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [5:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  reg [14:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire [14:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [3:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [2:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [9:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [11:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [2:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire [6:0] celloutsig_0_39z;
  wire [5:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  reg [5:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [25:0] celloutsig_0_44z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [2:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  reg [15:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire [8:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_29z = ~(celloutsig_0_1z & celloutsig_0_9z[1]);
  assign celloutsig_0_36z = !(celloutsig_0_26z ? celloutsig_0_23z : celloutsig_0_2z[2]);
  assign celloutsig_0_5z = !(celloutsig_0_2z[11] ? celloutsig_0_3z[4] : celloutsig_0_3z[4]);
  assign celloutsig_0_26z = !(celloutsig_0_0z[0] ? celloutsig_0_21z : celloutsig_0_13z);
  assign celloutsig_0_10z = ~celloutsig_0_1z;
  assign celloutsig_0_24z = ~celloutsig_0_8z;
  assign celloutsig_1_0z = ~(in_data[105] ^ in_data[149]);
  assign celloutsig_1_15z = ~(celloutsig_1_9z ^ celloutsig_1_5z);
  assign celloutsig_0_1z = ~(in_data[53] ^ in_data[38]);
  assign celloutsig_0_3z = in_data[17:12] / { 1'h1, celloutsig_0_2z[6:2] };
  assign celloutsig_1_19z = celloutsig_1_17z[13:7] / { 1'h1, celloutsig_1_3z[1:0], celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_2z = in_data[48:37] / { 1'h1, in_data[68:59], celloutsig_0_1z };
  assign celloutsig_0_31z = { celloutsig_0_8z, celloutsig_0_30z, celloutsig_0_15z } / { 1'h1, celloutsig_0_11z[12], celloutsig_0_4z };
  assign celloutsig_1_2z = { in_data[189:179], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } == in_data[123:110];
  assign celloutsig_0_13z = { celloutsig_0_10z, celloutsig_0_9z } == { celloutsig_0_0z[5:3], celloutsig_0_12z };
  assign celloutsig_0_28z = { celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_24z } == celloutsig_0_0z[4:2];
  assign celloutsig_1_7z = { celloutsig_1_4z[7:6], celloutsig_1_2z } >= celloutsig_1_3z;
  assign celloutsig_0_21z = ! { celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_13z };
  assign celloutsig_0_23z = ! { celloutsig_0_21z, celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_8z };
  assign celloutsig_0_14z = { celloutsig_0_0z[5:2], celloutsig_0_4z } < { celloutsig_0_11z[2:0], celloutsig_0_12z, celloutsig_0_1z };
  assign celloutsig_0_32z = { in_data[23:8], celloutsig_0_21z } < { celloutsig_0_25z[2:1], celloutsig_0_12z, celloutsig_0_23z, celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_40z, celloutsig_0_40z, celloutsig_0_18z, celloutsig_0_16z, celloutsig_0_30z, celloutsig_0_21z, celloutsig_0_30z, celloutsig_0_26z, celloutsig_0_7z };
  assign celloutsig_0_38z = 1'h0 & ~(celloutsig_0_11z[10]);
  assign celloutsig_0_18z = celloutsig_0_11z[4] & ~(celloutsig_0_2z[11]);
  assign celloutsig_0_0z = in_data[26:21] % { 1'h1, in_data[37:33] };
  assign celloutsig_0_39z = { celloutsig_0_20z[7:6], 1'h0, celloutsig_0_36z, 1'h0, celloutsig_0_18z, celloutsig_0_13z } % { 1'h1, celloutsig_0_4z, celloutsig_0_26z, 1'h0, celloutsig_0_30z, celloutsig_0_5z, celloutsig_0_29z };
  assign celloutsig_0_44z = { celloutsig_0_41z, celloutsig_0_36z, celloutsig_0_27z, celloutsig_0_40z, celloutsig_0_28z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_16z, celloutsig_0_40z, celloutsig_0_38z } % { 1'h1, celloutsig_0_25z[0], celloutsig_0_31z, 1'h0, celloutsig_0_28z, celloutsig_0_28z, celloutsig_0_21z, celloutsig_0_22z, celloutsig_0_32z, celloutsig_0_31z, celloutsig_0_16z, celloutsig_0_39z, celloutsig_0_16z };
  assign celloutsig_0_7z = celloutsig_0_2z[2:0] % { 1'h1, celloutsig_0_2z[9:8] };
  assign celloutsig_0_25z = celloutsig_0_11z[6:4] % { 1'h1, celloutsig_0_14z, celloutsig_0_18z };
  assign celloutsig_0_9z = celloutsig_0_0z[5:3] * { in_data[71], celloutsig_0_8z, celloutsig_0_40z };
  assign celloutsig_1_3z = celloutsig_1_0z ? { in_data[129:128], celloutsig_1_2z } : { in_data[109], celloutsig_1_2z, 1'h0 };
  assign celloutsig_0_20z = celloutsig_0_15z ? { in_data[78:67], celloutsig_0_7z } : { in_data[32:20], celloutsig_0_13z, celloutsig_0_12z };
  assign celloutsig_0_27z = celloutsig_0_21z ? { celloutsig_0_0z[3:1], celloutsig_0_9z, celloutsig_0_25z, celloutsig_0_26z } : { celloutsig_0_3z[5:2], celloutsig_0_25z, celloutsig_0_25z };
  assign celloutsig_0_40z = celloutsig_0_2z[7:5] != { celloutsig_0_0z[4:3], celloutsig_0_1z };
  assign celloutsig_0_15z = { in_data[30:8], celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_14z } != { celloutsig_0_11z[14:1], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_40z };
  assign celloutsig_0_30z = { celloutsig_0_20z[11:8], celloutsig_0_4z, celloutsig_0_21z } != { in_data[59:55], celloutsig_0_14z };
  assign celloutsig_1_8z = { celloutsig_1_4z[8:3], celloutsig_1_4z[6], celloutsig_1_4z[1], celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_4z[8:3], celloutsig_1_4z[6], celloutsig_1_4z[1:0] } !== { in_data[137:115], celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_5z };
  assign celloutsig_1_14z = { celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_8z } !== { in_data[143:139], celloutsig_1_5z };
  assign celloutsig_0_22z = { celloutsig_0_0z[5], celloutsig_0_7z } | { celloutsig_0_0z[0], celloutsig_0_9z };
  assign celloutsig_1_18z = & { celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_0_42z = | { celloutsig_0_38z, celloutsig_0_18z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_7z[1:0], celloutsig_0_5z };
  assign celloutsig_1_5z = | in_data[154:105];
  assign celloutsig_1_6z = | { celloutsig_1_4z[7:3], celloutsig_1_4z[1] };
  assign celloutsig_0_43z = ^ { 1'h0, celloutsig_0_29z, celloutsig_0_41z, celloutsig_0_42z, celloutsig_0_12z, celloutsig_0_4z };
  assign celloutsig_0_8z = ^ { celloutsig_0_2z[7:6], celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_12z = ^ { in_data[10:7], celloutsig_0_5z };
  assign celloutsig_0_16z = ^ celloutsig_0_2z[10:3];
  always_latch
    if (clkin_data[32]) celloutsig_0_41z = 6'h00;
    else if (!celloutsig_1_19z[0]) celloutsig_0_41z = { celloutsig_0_27z[2:0], celloutsig_0_31z };
  always_latch
    if (clkin_data[64]) celloutsig_1_17z = 16'h0000;
    else if (!clkin_data[0]) celloutsig_1_17z = { in_data[181:174], celloutsig_1_14z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_15z, celloutsig_1_2z, celloutsig_1_8z };
  always_latch
    if (clkin_data[32]) celloutsig_0_11z = 15'h0000;
    else if (celloutsig_1_19z[0]) celloutsig_0_11z = { celloutsig_0_2z, celloutsig_0_7z };
  assign celloutsig_0_4z = ~((celloutsig_0_3z[0] & celloutsig_0_0z[1]) | (in_data[83] & celloutsig_0_1z));
  assign celloutsig_1_9z = ~((celloutsig_1_2z & celloutsig_1_0z) | (celloutsig_1_8z & celloutsig_1_8z));
  assign { celloutsig_1_4z[5:3], celloutsig_1_4z[1], celloutsig_1_4z[7:6], celloutsig_1_4z[0], celloutsig_1_4z[8] } = { celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, in_data[169] } | { celloutsig_1_3z[0], celloutsig_1_0z, celloutsig_1_3z[2], celloutsig_1_3z[0], celloutsig_1_3z[2:1], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_4z[2] = celloutsig_1_4z[6];
  assign { out_data[128], out_data[102:96], out_data[32], out_data[25:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_43z, celloutsig_0_44z };
endmodule
