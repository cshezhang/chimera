/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [6:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [9:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [6:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [11:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [14:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [8:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_32z;
  wire [10:0] celloutsig_0_34z;
  wire celloutsig_0_37z;
  reg [9:0] celloutsig_0_39z;
  wire [11:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_42z;
  wire [9:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [25:0] celloutsig_0_5z;
  wire [3:0] celloutsig_0_62z;
  wire [5:0] celloutsig_0_6z;
  reg [2:0] celloutsig_0_74z;
  wire celloutsig_0_75z;
  wire [9:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire [9:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [10:0] celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [7:0] celloutsig_1_1z;
  wire [10:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_8z = celloutsig_1_2z[9] ? celloutsig_1_7z : celloutsig_1_5z;
  assign celloutsig_0_12z = celloutsig_0_0z[0] ? in_data[63] : celloutsig_0_8z;
  assign celloutsig_0_40z = ~(celloutsig_0_39z[0] & celloutsig_0_32z);
  assign celloutsig_1_11z = ~(celloutsig_1_2z[3] & celloutsig_1_6z);
  assign celloutsig_0_21z = ~(celloutsig_0_11z[2] & celloutsig_0_4z);
  assign celloutsig_0_75z = !(celloutsig_0_34z[5] ? celloutsig_0_62z[2] : celloutsig_0_49z[5]);
  assign celloutsig_0_37z = ~(celloutsig_0_14z | celloutsig_0_10z);
  assign celloutsig_0_4z = ~(celloutsig_0_2z | celloutsig_0_0z[1]);
  assign celloutsig_1_3z = ~(celloutsig_1_1z[4] | celloutsig_1_2z[2]);
  assign celloutsig_1_7z = ~(celloutsig_1_6z | celloutsig_1_2z[0]);
  assign celloutsig_0_42z = celloutsig_0_28z ^ celloutsig_0_2z;
  assign celloutsig_1_10z = celloutsig_1_3z ^ celloutsig_1_2z[0];
  assign celloutsig_1_12z = celloutsig_1_7z ^ celloutsig_1_10z;
  assign celloutsig_1_18z = celloutsig_1_6z ^ celloutsig_1_4z;
  assign celloutsig_0_28z = ~(celloutsig_0_21z ^ celloutsig_0_2z);
  assign celloutsig_0_0z = in_data[65:63] & in_data[83:81];
  assign celloutsig_0_9z = celloutsig_0_6z[5:1] & { in_data[70:67], celloutsig_0_8z };
  assign celloutsig_0_49z = { celloutsig_0_24z[9:4], celloutsig_0_40z, celloutsig_0_10z, celloutsig_0_25z, celloutsig_0_21z } / { 1'h1, celloutsig_0_11z[5:0], celloutsig_0_42z, celloutsig_0_18z, celloutsig_0_16z };
  assign celloutsig_0_27z = celloutsig_0_13z[9:1] / { 1'h1, celloutsig_0_13z[4:0], celloutsig_0_0z };
  assign celloutsig_1_19z = { celloutsig_1_2z[6:1], celloutsig_1_12z } === { celloutsig_1_13z[8:4], celloutsig_1_8z, celloutsig_1_6z };
  assign celloutsig_0_19z = { celloutsig_0_5z[5], celloutsig_0_9z, celloutsig_0_8z } === celloutsig_0_17z[7:1];
  assign celloutsig_0_10z = { in_data[55:47], celloutsig_0_6z } <= { celloutsig_0_6z[1:0], celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_1z };
  assign celloutsig_0_8z = { celloutsig_0_0z, celloutsig_0_4z } < celloutsig_0_5z[25:22];
  assign celloutsig_0_14z = { celloutsig_0_5z[8:6], celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_9z } < { celloutsig_0_5z[23:16], celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_12z };
  assign celloutsig_1_5z = celloutsig_1_0z[4] & ~(celloutsig_1_3z);
  assign celloutsig_0_25z = celloutsig_0_11z[6] & ~(celloutsig_0_9z[2]);
  assign celloutsig_0_5z = in_data[46:21] % { 1'h1, celloutsig_0_3z[9:5], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z[11:1], celloutsig_0_3z[6], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_11z = { celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_9z } * { celloutsig_0_6z[2:1], celloutsig_0_9z };
  assign celloutsig_0_13z = { celloutsig_0_7z[9:1], celloutsig_0_1z } * { celloutsig_0_5z[7:2], celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_4z };
  assign celloutsig_0_34z = - { celloutsig_0_13z[7:6], celloutsig_0_27z };
  assign celloutsig_1_0z = - in_data[161:152];
  assign celloutsig_0_24z = ~ { in_data[76:64], celloutsig_0_19z, celloutsig_0_8z };
  assign celloutsig_0_62z = { celloutsig_0_13z[2], celloutsig_0_0z } | celloutsig_0_5z[23:20];
  assign celloutsig_1_2z = { celloutsig_1_1z[3:1], celloutsig_1_1z } | in_data[127:117];
  assign celloutsig_0_15z = celloutsig_0_7z[8:2] | { celloutsig_0_7z[4:1], celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_14z };
  assign celloutsig_1_4z = | celloutsig_1_0z[7:1];
  assign celloutsig_1_6z = | { celloutsig_1_2z, in_data[126] };
  assign celloutsig_0_16z = | celloutsig_0_6z[4:1];
  assign celloutsig_0_18z = | { celloutsig_0_12z, in_data[46:30] };
  assign celloutsig_0_2z = ~^ { in_data[58:55], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_7z = { celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z } <<< { celloutsig_0_6z[4:2], celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_0_6z = { celloutsig_0_5z[19:18], celloutsig_0_0z, celloutsig_0_4z } - { in_data[8:5], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_1z = in_data[117:110] - celloutsig_1_0z[7:0];
  assign celloutsig_1_13z = { celloutsig_1_0z[9:2], celloutsig_1_11z, celloutsig_1_7z, celloutsig_1_5z } - { in_data[174:165], celloutsig_1_11z };
  assign celloutsig_0_17z = { celloutsig_0_7z[8:0], celloutsig_0_0z } - { in_data[70], celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_14z };
  assign celloutsig_0_1z = ~((celloutsig_0_0z[2] & celloutsig_0_0z[0]) | in_data[4]);
  assign celloutsig_0_32z = ~((celloutsig_0_28z & celloutsig_0_24z[6]) | celloutsig_0_9z[1]);
  always_latch
    if (!clkin_data[0]) celloutsig_0_39z = 10'h000;
    else if (celloutsig_1_19z) celloutsig_0_39z = { celloutsig_0_17z[9:2], celloutsig_0_37z, celloutsig_0_28z };
  always_latch
    if (!clkin_data[0]) celloutsig_0_74z = 3'h0;
    else if (celloutsig_1_19z) celloutsig_0_74z = celloutsig_0_62z[3:1];
  assign { celloutsig_0_3z[7:5], celloutsig_0_3z[1], celloutsig_0_3z[4:2], celloutsig_0_3z[11:8] } = { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, in_data[41:38] } | { celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, in_data[79:76] };
  assign celloutsig_0_3z[0] = celloutsig_0_3z[6];
  assign { out_data[128], out_data[96], out_data[34:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_74z, celloutsig_0_75z };
endmodule
