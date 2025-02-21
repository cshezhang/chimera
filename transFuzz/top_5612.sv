/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [5:0] celloutsig_0_10z;
  wire [7:0] celloutsig_0_11z;
  wire [10:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [5:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [35:0] celloutsig_0_17z;
  wire [2:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_29z;
  wire [2:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_33z;
  wire [5:0] celloutsig_0_36z;
  reg [2:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [21:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [9:0] celloutsig_0_4z;
  wire [4:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [24:0] celloutsig_0_7z;
  reg [14:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [8:0] celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = in_data[94] ? celloutsig_0_2z[2] : in_data[15];
  assign celloutsig_0_0z = ~(in_data[9] & in_data[92]);
  assign celloutsig_0_9z = ~(celloutsig_0_6z & celloutsig_0_1z);
  assign celloutsig_0_16z = ~(in_data[30] & celloutsig_0_13z);
  assign celloutsig_0_19z = ~(celloutsig_0_14z & celloutsig_0_5z[2]);
  assign celloutsig_0_25z = ~(celloutsig_0_12z[8] & celloutsig_0_19z);
  assign celloutsig_0_40z = !(celloutsig_0_30z ? celloutsig_0_29z : celloutsig_0_17z[31]);
  assign celloutsig_1_3z = !(celloutsig_1_1z ? celloutsig_1_2z : in_data[103]);
  assign celloutsig_1_7z = !(celloutsig_1_2z ? celloutsig_1_2z : celloutsig_1_5z[1]);
  assign celloutsig_1_15z = !(celloutsig_1_10z ? celloutsig_1_10z : celloutsig_1_7z);
  assign celloutsig_0_24z = !(celloutsig_0_1z ? celloutsig_0_15z[5] : celloutsig_0_6z);
  assign celloutsig_0_33z = ~((celloutsig_0_19z | celloutsig_0_20z) & celloutsig_0_17z[27]);
  assign celloutsig_1_2z = ~((celloutsig_1_1z | celloutsig_1_0z) & celloutsig_1_0z);
  assign celloutsig_0_30z = celloutsig_0_0z | celloutsig_0_16z;
  assign celloutsig_0_29z = ~(celloutsig_0_14z ^ celloutsig_0_9z);
  assign celloutsig_1_1z = { in_data[125:118], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } >= { in_data[190:180], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_10z = { celloutsig_1_6z, celloutsig_1_5z } >= { celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_0_6z = { celloutsig_0_5z[4:2], celloutsig_0_3z, celloutsig_0_0z } >= { in_data[63:61], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_19z = { celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_3z } < { celloutsig_1_15z, celloutsig_1_13z, celloutsig_1_18z };
  assign celloutsig_0_20z = celloutsig_0_10z[4:2] < { celloutsig_0_18z[1:0], celloutsig_0_3z };
  assign celloutsig_0_21z = { in_data[71:67], celloutsig_0_18z, celloutsig_0_19z } < { celloutsig_0_15z[2], celloutsig_0_11z };
  assign celloutsig_0_13z = celloutsig_0_0z & ~(celloutsig_0_4z[0]);
  assign celloutsig_0_14z = celloutsig_0_10z[3] & ~(celloutsig_0_9z);
  assign celloutsig_0_36z = celloutsig_0_10z % { 1'h1, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_11z = { celloutsig_0_2z[1:0], celloutsig_0_5z, celloutsig_0_0z } % { 1'h1, celloutsig_0_8z[13:7] };
  assign celloutsig_0_12z = celloutsig_0_7z[13:3] % { 1'h1, celloutsig_0_8z[12:4], celloutsig_0_3z };
  assign celloutsig_0_7z = { in_data[61:48], celloutsig_0_1z, celloutsig_0_4z } * { in_data[9:1], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_6z };
  assign celloutsig_0_22z = { in_data[91:78], celloutsig_0_16z, celloutsig_0_2z } != { celloutsig_0_8z[10:4], celloutsig_0_20z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_5z };
  assign celloutsig_1_4z = ~ { in_data[148:142], celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_13z = celloutsig_1_1z & celloutsig_1_4z[8];
  assign celloutsig_1_18z = celloutsig_1_0z & celloutsig_1_11z;
  assign celloutsig_1_0z = | in_data[190:188];
  assign celloutsig_0_1z = | { in_data[69:67], celloutsig_0_0z };
  assign celloutsig_0_43z = ~^ { celloutsig_0_38z[2:1], celloutsig_0_41z, celloutsig_0_22z, celloutsig_0_24z };
  assign celloutsig_1_11z = ~^ { in_data[134:133], celloutsig_1_6z };
  assign celloutsig_0_41z = ^ celloutsig_0_8z[14:1];
  assign celloutsig_1_6z = ^ { celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_4z = { in_data[30:24], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z } >> { in_data[44:43], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_5z = celloutsig_0_4z[5:1] >> in_data[24:20];
  assign celloutsig_0_15z = { celloutsig_0_12z[6:2], celloutsig_0_1z } >> in_data[65:60];
  assign celloutsig_1_5z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_3z } << in_data[148:146];
  assign celloutsig_0_2z = { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z } << { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_42z = { celloutsig_0_7z[13:1], celloutsig_0_36z, celloutsig_0_25z, celloutsig_0_14z, celloutsig_0_19z } >>> { celloutsig_0_8z[1], celloutsig_0_5z, celloutsig_0_40z, celloutsig_0_33z, celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_40z, celloutsig_0_16z, celloutsig_0_41z };
  assign celloutsig_0_10z = in_data[44:39] - { in_data[55:53], celloutsig_0_2z };
  assign celloutsig_0_18z = in_data[68:66] - celloutsig_0_5z[3:1];
  assign celloutsig_0_17z = { celloutsig_0_8z[8], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_14z } ^ in_data[38:3];
  always_latch
    if (clkin_data[64]) celloutsig_0_38z = 3'h0;
    else if (celloutsig_1_18z) celloutsig_0_38z = celloutsig_0_11z[2:0];
  always_latch
    if (clkin_data[32]) celloutsig_0_8z = 15'h0000;
    else if (celloutsig_1_18z) celloutsig_0_8z = { in_data[38:28], celloutsig_0_2z, celloutsig_0_3z };
  assign { out_data[128], out_data[96], out_data[53:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_42z, celloutsig_0_43z };
endmodule
