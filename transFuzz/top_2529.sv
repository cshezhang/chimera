/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [22:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [6:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  reg [6:0] celloutsig_0_15z;
  reg [14:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  reg [4:0] celloutsig_0_25z;
  wire [2:0] celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire [6:0] celloutsig_0_29z;
  wire [10:0] celloutsig_0_2z;
  wire [8:0] celloutsig_0_30z;
  wire [6:0] celloutsig_0_31z;
  wire [10:0] celloutsig_0_32z;
  reg [18:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [2:0] celloutsig_0_3z;
  wire [13:0] celloutsig_0_40z;
  wire [11:0] celloutsig_0_46z;
  wire celloutsig_0_48z;
  wire [5:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [16:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_95z;
  wire celloutsig_0_96z;
  wire celloutsig_0_9z;
  reg [6:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [12:0] celloutsig_1_11z;
  wire [8:0] celloutsig_1_12z;
  wire [9:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [11:0] celloutsig_1_16z;
  wire [2:0] celloutsig_1_17z;
  wire [49:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [7:0] celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [5:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_23z = ~((celloutsig_0_10z | celloutsig_0_14z[2]) & celloutsig_0_20z);
  assign celloutsig_1_7z = ~((celloutsig_1_4z[2] | celloutsig_1_2z) & (celloutsig_1_5z | celloutsig_1_0z[4]));
  assign celloutsig_0_48z = celloutsig_0_19z | ~(celloutsig_0_13z);
  assign celloutsig_0_12z = celloutsig_0_3z[2] | ~(celloutsig_0_8z);
  assign celloutsig_0_18z = celloutsig_0_16z[0] | ~(celloutsig_0_6z[16]);
  assign celloutsig_1_9z = celloutsig_1_3z[4:2] + celloutsig_1_3z[6:4];
  assign celloutsig_0_11z = celloutsig_0_2z[7:1] + { celloutsig_0_2z[10:5], celloutsig_0_8z };
  assign celloutsig_0_0z = in_data[63:41] / { 1'h1, in_data[34:13] };
  assign celloutsig_0_46z = celloutsig_0_40z[11:0] / { 1'h1, celloutsig_0_31z[4:0], celloutsig_0_4z };
  assign celloutsig_0_2z = { celloutsig_0_0z[16:8], celloutsig_0_1z, celloutsig_0_1z } / { 1'h1, in_data[9:0] };
  assign celloutsig_0_34z = { celloutsig_0_29z[6:1], celloutsig_0_25z, celloutsig_0_1z, celloutsig_0_23z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_23z, celloutsig_0_16z } >= { celloutsig_0_9z, celloutsig_0_33z, celloutsig_0_25z, celloutsig_0_13z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_9z };
  assign celloutsig_0_8z = in_data[92:83] >= { celloutsig_0_4z[3:2], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_1_19z = { in_data[154:150], celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_15z } >= celloutsig_1_18z[28:16];
  assign celloutsig_0_1z = in_data[60:52] >= celloutsig_0_0z[21:13];
  assign celloutsig_0_20z = { celloutsig_0_0z[5:3], celloutsig_0_17z, celloutsig_0_1z } >= { celloutsig_0_16z[2:0], celloutsig_0_7z, celloutsig_0_13z };
  assign celloutsig_0_96z = celloutsig_0_8z & ~(celloutsig_0_48z);
  assign celloutsig_1_5z = celloutsig_1_0z[6] & ~(in_data[185]);
  assign celloutsig_1_4z = celloutsig_1_3z[6:4] % { 1'h1, in_data[113:112] };
  assign celloutsig_1_18z = { celloutsig_1_12z[7:0], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_16z, celloutsig_1_4z, celloutsig_1_16z } % { 1'h1, celloutsig_1_12z[0], celloutsig_1_12z, celloutsig_1_2z, celloutsig_1_14z, celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_17z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_15z, celloutsig_1_7z, celloutsig_1_14z };
  assign celloutsig_0_29z = { celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_25z } % { 1'h1, celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_21z };
  assign celloutsig_0_32z = { celloutsig_0_30z[8:6], celloutsig_0_22z, celloutsig_0_11z } % { 1'h1, celloutsig_0_2z[9:1], celloutsig_0_21z };
  assign celloutsig_0_3z = celloutsig_0_0z[22:20] * celloutsig_0_2z[6:4];
  assign celloutsig_0_4z = celloutsig_0_2z[10:5] * celloutsig_0_0z[20:15];
  assign celloutsig_1_1z = celloutsig_1_0z[5:0] * in_data[156:151];
  assign celloutsig_0_6z = - in_data[46:30];
  assign celloutsig_0_5z = { celloutsig_0_2z[8:7], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_4z } !== celloutsig_0_2z[9:0];
  assign celloutsig_0_9z = { celloutsig_0_0z[12], celloutsig_0_7z } !== celloutsig_0_0z[11:10];
  assign celloutsig_1_8z = { celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_3z } !== { celloutsig_1_1z[4:1], celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_7z };
  assign celloutsig_0_13z = { celloutsig_0_11z[6], celloutsig_0_1z, celloutsig_0_8z } !== { celloutsig_0_2z[4], celloutsig_0_9z, celloutsig_0_7z };
  assign celloutsig_0_17z = { celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_9z } !== { celloutsig_0_15z[2:0], celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_4z };
  assign celloutsig_0_28z = { celloutsig_0_2z[7:5], celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_8z } !== { celloutsig_0_6z[13:8], celloutsig_0_9z };
  assign celloutsig_1_3z = { in_data[168:162], celloutsig_1_2z } | { in_data[184], celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_6z = celloutsig_1_3z[7:2] | celloutsig_1_0z[6:1];
  assign celloutsig_1_17z = celloutsig_1_0z[5:3] | { celloutsig_1_11z[2:1], celloutsig_1_15z };
  assign celloutsig_0_95z = | celloutsig_0_46z[9:5];
  assign celloutsig_0_7z = celloutsig_0_6z[13] & celloutsig_0_1z;
  assign celloutsig_0_10z = celloutsig_0_9z & in_data[49];
  assign celloutsig_1_2z = celloutsig_1_1z[2] & in_data[178];
  assign celloutsig_1_15z = celloutsig_1_9z[2] & celloutsig_1_4z[0];
  assign celloutsig_0_22z = celloutsig_0_4z[1] & celloutsig_0_2z[1];
  assign celloutsig_1_10z = ~^ { celloutsig_1_3z[5], celloutsig_1_4z };
  assign celloutsig_0_19z = ~^ { celloutsig_0_15z[2:0], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_17z };
  assign celloutsig_0_21z = ~^ { in_data[9:8], celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_17z };
  assign celloutsig_1_16z = { in_data[149:148], celloutsig_1_12z, celloutsig_1_10z } << celloutsig_1_11z[12:1];
  assign celloutsig_0_40z = { celloutsig_0_16z[7:5], celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_28z, celloutsig_0_10z, celloutsig_0_34z } >> { celloutsig_0_0z[21:10], celloutsig_0_28z, celloutsig_0_28z };
  assign celloutsig_1_11z = in_data[191:179] >> { celloutsig_1_0z[5:1], celloutsig_1_8z, celloutsig_1_0z };
  assign celloutsig_1_14z = { in_data[105:102], celloutsig_1_6z } >> { celloutsig_1_1z[4:2], celloutsig_1_0z };
  assign celloutsig_0_14z = celloutsig_0_6z[7:5] >> { celloutsig_0_6z[16:15], celloutsig_0_7z };
  assign celloutsig_0_26z = { celloutsig_0_3z[2], celloutsig_0_10z, celloutsig_0_13z } >> celloutsig_0_25z[2:0];
  assign celloutsig_0_30z = { celloutsig_0_26z[0], celloutsig_0_11z, celloutsig_0_7z } >> { celloutsig_0_0z[13], celloutsig_0_15z, celloutsig_0_28z };
  assign celloutsig_0_31z = { celloutsig_0_6z[9:4], celloutsig_0_28z } >> celloutsig_0_2z[7:1];
  assign celloutsig_1_12z = { celloutsig_1_6z[0], celloutsig_1_3z } - { celloutsig_1_3z, celloutsig_1_10z };
  always_latch
    if (!celloutsig_1_18z[12]) celloutsig_0_33z = 19'h00000;
    else if (clkin_data[0]) celloutsig_0_33z = { celloutsig_0_32z[8:6], celloutsig_0_23z, celloutsig_0_18z, celloutsig_0_31z, celloutsig_0_11z };
  always_latch
    if (clkin_data[64]) celloutsig_1_0z = 7'h00;
    else if (!clkin_data[32]) celloutsig_1_0z = in_data[140:134];
  always_latch
    if (celloutsig_1_18z[12]) celloutsig_0_15z = 7'h00;
    else if (!clkin_data[0]) celloutsig_0_15z = { celloutsig_0_2z[8:4], celloutsig_0_5z, celloutsig_0_12z };
  always_latch
    if (!celloutsig_1_18z[12]) celloutsig_0_16z = 15'h0000;
    else if (clkin_data[0]) celloutsig_0_16z = { in_data[19:6], celloutsig_0_7z };
  always_latch
    if (!celloutsig_1_18z[12]) celloutsig_0_25z = 5'h00;
    else if (clkin_data[0]) celloutsig_0_25z = { celloutsig_0_16z[2:0], celloutsig_0_18z, celloutsig_0_22z };
  assign { out_data[159:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z[43:12], celloutsig_1_19z, celloutsig_0_95z, celloutsig_0_96z };
endmodule
