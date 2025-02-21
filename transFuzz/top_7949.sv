/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [8:0] _00_;
  reg [2:0] _01_;
  wire [6:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [2:0] celloutsig_0_11z;
  wire [3:0] celloutsig_0_12z;
  reg [8:0] celloutsig_0_13z;
  wire [4:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [6:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [10:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [5:0] celloutsig_0_21z;
  wire [2:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire [4:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [10:0] celloutsig_0_29z;
  wire [11:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [8:0] celloutsig_0_33z;
  wire [3:0] celloutsig_0_35z;
  wire [11:0] celloutsig_0_36z;
  wire [3:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [4:0] celloutsig_0_39z;
  wire [9:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [4:0] celloutsig_0_41z;
  wire [9:0] celloutsig_0_42z;
  wire [10:0] celloutsig_0_44z;
  reg [3:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [14:0] celloutsig_0_47z;
  wire [7:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_54z;
  wire [8:0] celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire [2:0] celloutsig_0_58z;
  reg [4:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire [4:0] celloutsig_0_61z;
  wire [9:0] celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire [10:0] celloutsig_0_69z;
  wire [5:0] celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [4:0] celloutsig_1_11z;
  wire [15:0] celloutsig_1_12z;
  wire [2:0] celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_4z;
  reg [32:0] celloutsig_1_5z;
  wire [13:0] celloutsig_1_6z;
  wire [14:0] celloutsig_1_7z;
  wire [36:0] celloutsig_1_8z;
  wire [3:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_70z = ~(celloutsig_0_64z[3] & celloutsig_0_59z[4]);
  assign celloutsig_1_2z = ~(celloutsig_1_1z & celloutsig_1_0z);
  assign celloutsig_1_19z = ~(celloutsig_1_8z[9] & celloutsig_1_15z[0]);
  assign celloutsig_0_10z = ~(celloutsig_0_5z & celloutsig_0_0z[4]);
  assign celloutsig_0_17z = ~(celloutsig_0_6z[4] & celloutsig_0_12z[2]);
  assign celloutsig_0_5z = !(celloutsig_0_3z[7] ? in_data[58] : celloutsig_0_1z);
  assign celloutsig_0_40z = ~celloutsig_0_6z[5];
  assign celloutsig_0_23z = ~celloutsig_0_9z[2];
  assign celloutsig_0_30z = ~in_data[21];
  assign celloutsig_0_28z = celloutsig_0_12z[3] | ~(celloutsig_0_12z[3]);
  assign celloutsig_0_38z = celloutsig_0_2z[6] | celloutsig_0_9z[1];
  assign celloutsig_0_37z = celloutsig_0_33z[5:2] + { celloutsig_0_28z, celloutsig_0_11z };
  assign celloutsig_0_44z = { celloutsig_0_3z[5:4], celloutsig_0_39z, celloutsig_0_9z, celloutsig_0_10z } + { celloutsig_0_29z[10:1], celloutsig_0_28z };
  always_ff @(posedge clkin_data[96], negedge clkin_data[32])
    if (!clkin_data[32]) _00_ <= 9'h000;
    else _00_ <= { in_data[6:2], celloutsig_0_45z };
  always_ff @(posedge clkin_data[128], negedge clkin_data[64])
    if (!clkin_data[64]) _01_ <= 3'h0;
    else _01_ <= in_data[122:120];
  assign celloutsig_0_42z = { celloutsig_0_0z[4:0], celloutsig_0_37z, celloutsig_0_18z } / { 1'h1, celloutsig_0_3z[4:1], celloutsig_0_27z };
  assign celloutsig_0_56z = { celloutsig_0_48z, celloutsig_0_23z } / { 1'h1, celloutsig_0_33z[6:0], celloutsig_0_17z };
  assign celloutsig_0_6z = in_data[30:25] / { 1'h1, celloutsig_0_3z[5:1] };
  assign celloutsig_0_8z = celloutsig_0_2z[7:2] / { 1'h1, in_data[39:35] };
  assign celloutsig_0_19z = in_data[35:25] / { 1'h1, celloutsig_0_3z[8:0], celloutsig_0_15z };
  assign celloutsig_1_10z = { celloutsig_1_5z[24:20], celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_0z } == { celloutsig_1_7z[10:7], celloutsig_1_4z, _01_ };
  assign celloutsig_0_7z = in_data[60:58] === in_data[90:88];
  assign celloutsig_1_18z = { celloutsig_1_12z[5:1], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_17z } === celloutsig_1_8z[22:14];
  assign celloutsig_0_57z = { _00_[4:3], celloutsig_0_36z, celloutsig_0_15z, celloutsig_0_5z } >= { celloutsig_0_14z[1], celloutsig_0_47z };
  assign celloutsig_1_0z = in_data[143:138] >= in_data[169:164];
  assign celloutsig_0_1z = celloutsig_0_0z[5:0] >= celloutsig_0_0z[6:1];
  assign celloutsig_0_15z = in_data[8:6] >= celloutsig_0_3z[6:4];
  assign celloutsig_0_18z = { celloutsig_0_6z[4:1], celloutsig_0_15z } >= { celloutsig_0_14z[4:1], celloutsig_0_1z };
  assign celloutsig_0_4z = celloutsig_0_0z[3:0] <= in_data[64:61];
  assign celloutsig_0_65z = { celloutsig_0_4z, celloutsig_0_38z, celloutsig_0_64z } <= { celloutsig_0_9z[2:1], celloutsig_0_61z, celloutsig_0_37z, celloutsig_0_7z };
  assign celloutsig_1_1z = in_data[114:112] <= in_data[133:131];
  assign celloutsig_1_4z = in_data[145:118] <= in_data[139:112];
  assign celloutsig_0_32z = { celloutsig_0_8z[2:1], celloutsig_0_4z } <= { celloutsig_0_1z, celloutsig_0_23z, celloutsig_0_15z };
  assign celloutsig_0_54z = ! { celloutsig_0_33z[2:0], celloutsig_0_45z, celloutsig_0_44z, celloutsig_0_35z };
  assign celloutsig_0_24z = ! celloutsig_0_6z[3:0];
  assign celloutsig_0_26z = ! { in_data[74:67], celloutsig_0_11z, celloutsig_0_4z };
  assign celloutsig_0_3z = { celloutsig_0_2z[11:3], celloutsig_0_1z } % { 1'h1, celloutsig_0_0z[1:0], celloutsig_0_0z };
  assign celloutsig_1_8z = { in_data[182:147], celloutsig_1_4z } % { 1'h1, celloutsig_1_5z[13], celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_0_12z = { celloutsig_0_1z, celloutsig_0_11z } % { 1'h1, celloutsig_0_9z[1:0], celloutsig_0_4z };
  assign celloutsig_0_14z = { in_data[9:6], celloutsig_0_7z } % { 1'h1, celloutsig_0_3z[4:1] };
  assign celloutsig_0_41z = - { celloutsig_0_21z[5:2], celloutsig_0_17z };
  assign celloutsig_0_33z = - { celloutsig_0_29z[8:4], celloutsig_0_22z, celloutsig_0_31z };
  assign celloutsig_0_35z = ~ { celloutsig_0_2z[10:9], celloutsig_0_17z, celloutsig_0_18z };
  assign celloutsig_0_36z = ~ { celloutsig_0_28z, celloutsig_0_16z, celloutsig_0_24z, celloutsig_0_9z };
  assign celloutsig_1_9z = ~ { celloutsig_1_8z[32:30], celloutsig_1_4z };
  assign celloutsig_0_31z = ~^ { celloutsig_0_3z[9:2], celloutsig_0_5z, celloutsig_0_28z };
  assign celloutsig_0_47z = { celloutsig_0_30z, celloutsig_0_32z, celloutsig_0_0z, celloutsig_0_22z, celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_31z } >> { celloutsig_0_0z[6:5], celloutsig_0_20z, celloutsig_0_44z, celloutsig_0_46z };
  assign celloutsig_1_7z = { celloutsig_1_2z, celloutsig_1_6z[13:6], 1'h0, celloutsig_1_6z[4:0] } >> celloutsig_1_5z[22:8];
  assign celloutsig_0_9z = { in_data[85:84], celloutsig_0_4z } >> celloutsig_0_8z[2:0];
  assign celloutsig_0_16z = celloutsig_0_2z[8:2] >> celloutsig_0_2z[9:3];
  assign celloutsig_0_21z = { celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_12z } >> { celloutsig_0_0z[3:0], celloutsig_0_17z, celloutsig_0_20z };
  assign celloutsig_0_27z = { celloutsig_0_16z[3:1], celloutsig_0_18z, celloutsig_0_10z } >> celloutsig_0_2z[11:7];
  assign celloutsig_0_0z = in_data[69:63] << in_data[65:59];
  assign celloutsig_0_39z = { celloutsig_0_19z[1], celloutsig_0_35z } << { celloutsig_0_11z, celloutsig_0_15z, celloutsig_0_26z };
  assign celloutsig_1_11z = celloutsig_1_8z[5:1] << { celloutsig_1_5z[14:11], celloutsig_1_4z };
  assign celloutsig_1_15z = { celloutsig_1_9z[3:2], celloutsig_1_2z } << { celloutsig_1_11z[2:1], celloutsig_1_0z };
  assign celloutsig_0_48z = { celloutsig_0_39z, celloutsig_0_46z, celloutsig_0_20z, celloutsig_0_24z } >>> { celloutsig_0_3z[3:0], celloutsig_0_11z, celloutsig_0_40z };
  assign celloutsig_0_61z = celloutsig_0_21z[5:1] >>> celloutsig_0_14z;
  assign celloutsig_1_12z = { celloutsig_1_8z[0], celloutsig_1_10z, celloutsig_1_6z[13:6], 1'h0, celloutsig_1_6z[4:0] } >>> celloutsig_1_8z[20:5];
  assign celloutsig_0_11z = { celloutsig_0_6z[5], celloutsig_0_1z, celloutsig_0_1z } >>> in_data[48:46];
  assign celloutsig_0_2z = in_data[38:27] >>> in_data[25:14];
  assign celloutsig_0_29z = { celloutsig_0_21z[5], celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_23z } >>> { celloutsig_0_16z[2:1], celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_20z };
  assign celloutsig_0_58z = celloutsig_0_56z[3:1] ^ { celloutsig_0_42z[6:5], celloutsig_0_30z };
  assign celloutsig_0_64z = { celloutsig_0_38z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_28z } ^ { celloutsig_0_54z, celloutsig_0_54z, celloutsig_0_40z, celloutsig_0_30z, celloutsig_0_41z, celloutsig_0_40z };
  assign celloutsig_0_69z = { celloutsig_0_44z[9:4], celloutsig_0_58z, celloutsig_0_65z, celloutsig_0_10z } ^ { celloutsig_0_19z[7:6], celloutsig_0_13z };
  assign celloutsig_0_22z = celloutsig_0_21z[3:1] ^ { celloutsig_0_14z[4:3], celloutsig_0_4z };
  assign celloutsig_0_46z = ~((celloutsig_0_18z & celloutsig_0_36z[11]) | celloutsig_0_44z[1]);
  assign celloutsig_1_17z = ~((celloutsig_1_6z[11] & celloutsig_1_7z[13]) | celloutsig_1_4z);
  always_latch
    if (clkin_data[32]) celloutsig_0_45z = 4'h0;
    else if (!celloutsig_1_18z) celloutsig_0_45z = { celloutsig_0_22z[2], celloutsig_0_11z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_59z = 5'h00;
    else if (!celloutsig_1_18z) celloutsig_0_59z = { celloutsig_0_26z, celloutsig_0_22z, celloutsig_0_57z };
  always_latch
    if (clkin_data[64]) celloutsig_1_5z = 33'h000000000;
    else if (clkin_data[0]) celloutsig_1_5z = in_data[144:112];
  always_latch
    if (clkin_data[32]) celloutsig_0_13z = 9'h000;
    else if (celloutsig_1_18z) celloutsig_0_13z = { in_data[72:65], celloutsig_0_4z };
  assign celloutsig_0_20z = ~((celloutsig_0_14z[0] & celloutsig_0_2z[8]) | (celloutsig_0_14z[1] & celloutsig_0_10z));
  assign { celloutsig_1_6z[11], celloutsig_1_6z[9:7], celloutsig_1_6z[1], celloutsig_1_6z[6], celloutsig_1_6z[4:2], celloutsig_1_6z[12], celloutsig_1_6z[0], celloutsig_1_6z[10], celloutsig_1_6z[13] } = { celloutsig_1_4z, _01_, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z, in_data[126] } ^ { in_data[158], in_data[156:154], celloutsig_1_4z, in_data[153], _01_, in_data[159], celloutsig_1_2z, in_data[157], in_data[160] };
  assign celloutsig_1_6z[5] = 1'h0;
  assign { out_data[128], out_data[96], out_data[42:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule
