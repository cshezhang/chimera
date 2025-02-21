/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [15:0] _00_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire [7:0] celloutsig_0_15z;
  wire celloutsig_0_18z;
  wire [7:0] celloutsig_0_19z;
  wire [3:0] celloutsig_0_1z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [12:0] celloutsig_0_25z;
  wire [11:0] celloutsig_0_26z;
  wire [4:0] celloutsig_0_28z;
  wire [5:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [6:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [10:0] celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_45z;
  wire [8:0] celloutsig_0_49z;
  wire [15:0] celloutsig_0_4z;
  wire [7:0] celloutsig_0_5z;
  wire [3:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [16:0] celloutsig_0_9z;
  wire [4:0] celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire [9:0] celloutsig_1_11z;
  wire [3:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire [13:0] celloutsig_1_17z;
  wire [14:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [6:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [10:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_41z = ~(celloutsig_0_5z[0] | celloutsig_0_4z[9]);
  assign celloutsig_1_3z = ~(celloutsig_1_1z | celloutsig_1_1z);
  assign celloutsig_0_8z = ~(celloutsig_0_0z | celloutsig_0_3z);
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _00_ <= 16'h0000;
    else _00_ <= { celloutsig_0_29z[5:2], celloutsig_0_41z, celloutsig_0_37z };
  assign celloutsig_0_0z = in_data[13:11] == in_data[14:12];
  assign celloutsig_0_6z = celloutsig_0_4z[9:3] == { in_data[19], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_45z = { celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_18z } <= { celloutsig_0_26z[6], celloutsig_0_22z, celloutsig_0_8z };
  assign celloutsig_0_7z = { celloutsig_0_1z[1:0], celloutsig_0_2z } <= in_data[87:85];
  assign celloutsig_1_14z = ! celloutsig_1_4z[5:1];
  assign celloutsig_1_6z = celloutsig_1_4z[5] & ~(celloutsig_1_0z[1]);
  assign celloutsig_0_10z = celloutsig_0_1z[0] & ~(celloutsig_0_2z);
  assign celloutsig_0_11z = celloutsig_0_3z & ~(in_data[75]);
  assign celloutsig_0_23z = celloutsig_0_22z & ~(celloutsig_0_19z[4]);
  assign celloutsig_0_4z = in_data[27:12] % { 1'h1, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_8z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z } % { 1'h1, in_data[136:133], celloutsig_1_0z, celloutsig_1_5z };
  assign celloutsig_1_11z = celloutsig_1_8z[9:0] % { 1'h1, in_data[105:97] };
  assign celloutsig_0_14z = { celloutsig_0_9z[16:14], celloutsig_0_10z } % { 1'h1, celloutsig_0_9z[14:13], celloutsig_0_13z };
  assign celloutsig_0_15z = { celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_2z, celloutsig_0_8z } % { 1'h1, celloutsig_0_9z[7:6], celloutsig_0_14z, celloutsig_0_3z };
  assign celloutsig_0_25z = { celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_24z } % { 1'h1, celloutsig_0_1z[2:0], celloutsig_0_0z, celloutsig_0_15z };
  assign celloutsig_0_28z = celloutsig_0_4z[9:5] * { celloutsig_0_26z[3:0], celloutsig_0_18z };
  assign celloutsig_0_5z = celloutsig_0_2z ? celloutsig_0_4z[9:2] : celloutsig_0_4z[12:5];
  assign celloutsig_0_69z = celloutsig_0_49z[7] ? celloutsig_0_5z[7:4] : celloutsig_0_14z;
  assign celloutsig_1_10z = celloutsig_1_7z ? { celloutsig_1_2z[3:0], celloutsig_1_1z, celloutsig_1_5z } : { celloutsig_1_0z, 1'h0 };
  assign celloutsig_0_1z = in_data[47] ? in_data[74:71] : in_data[73:70];
  assign celloutsig_0_3z = in_data[53:43] != { in_data[86:77], celloutsig_0_0z };
  assign celloutsig_1_9z = { celloutsig_1_0z[4:1], celloutsig_1_8z } != { celloutsig_1_0z[3:1], celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_1_18z = - { celloutsig_1_3z, celloutsig_1_14z, celloutsig_1_3z, celloutsig_1_11z, celloutsig_1_9z, celloutsig_1_16z };
  assign celloutsig_0_32z = | { celloutsig_0_15z, celloutsig_0_7z };
  assign celloutsig_1_5z = | { celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_7z = | celloutsig_1_0z;
  assign celloutsig_1_16z = | { celloutsig_1_13z[2:1], celloutsig_1_10z, celloutsig_1_2z };
  assign celloutsig_0_12z = | { celloutsig_0_1z[1:0], celloutsig_0_2z };
  assign celloutsig_0_22z = | { celloutsig_0_19z[4:3], celloutsig_0_1z };
  assign celloutsig_0_2z = ~^ in_data[57:47];
  assign celloutsig_0_70z = ^ { _00_[14:13], celloutsig_0_19z };
  assign celloutsig_0_18z = ^ celloutsig_0_9z[7:2];
  assign celloutsig_0_49z = { celloutsig_0_31z, celloutsig_0_32z, celloutsig_0_45z } >> celloutsig_0_25z[9:1];
  assign celloutsig_0_31z = celloutsig_0_9z[14:8] >> { celloutsig_0_19z[5], celloutsig_0_29z };
  assign celloutsig_1_4z = in_data[126:120] >> in_data[131:125];
  assign celloutsig_1_13z = in_data[124:121] >> celloutsig_1_2z[3:0];
  assign celloutsig_0_19z = { celloutsig_0_4z[7:5], celloutsig_0_2z, celloutsig_0_14z } >> { in_data[15:10], celloutsig_0_8z, celloutsig_0_7z };
  assign celloutsig_0_29z = { celloutsig_0_15z[4:0], celloutsig_0_6z } >> { celloutsig_0_10z, celloutsig_0_28z };
  assign celloutsig_1_2z = { celloutsig_1_0z[3:1], celloutsig_1_1z, celloutsig_1_1z } - { celloutsig_1_0z[4:1], celloutsig_1_1z };
  assign celloutsig_0_26z = { celloutsig_0_5z[6:4], celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_23z, celloutsig_0_22z, celloutsig_0_7z, celloutsig_0_1z } - { celloutsig_0_15z[3:1], celloutsig_0_19z, celloutsig_0_23z };
  assign celloutsig_0_37z = { celloutsig_0_4z[10:2], celloutsig_0_6z, celloutsig_0_6z } ^ { celloutsig_0_15z[6:4], celloutsig_0_5z };
  assign celloutsig_1_0z = in_data[120:116] ^ in_data[121:117];
  assign celloutsig_1_17z = { celloutsig_1_11z[5:1], celloutsig_1_6z, celloutsig_1_16z, celloutsig_1_4z } ^ { celloutsig_1_0z[4:1], celloutsig_1_11z };
  assign celloutsig_0_9z = { celloutsig_0_4z[6:3], celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_8z } ^ { celloutsig_0_4z[5:0], celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_1z = ~((in_data[175] & in_data[158]) | (celloutsig_1_0z[0] & in_data[159]));
  assign celloutsig_1_19z = ~((celloutsig_1_7z & celloutsig_1_17z[1]) | (celloutsig_1_18z[14] & celloutsig_1_4z[4]));
  assign celloutsig_0_13z = ~((celloutsig_0_3z & celloutsig_0_2z) | (celloutsig_0_5z[1] & celloutsig_0_2z));
  assign celloutsig_0_24z = ~((celloutsig_0_1z[1] & celloutsig_0_4z[12]) | (celloutsig_0_18z & in_data[79]));
  assign { out_data[142:128], out_data[96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule
