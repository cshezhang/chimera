/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [7:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [9:0] celloutsig_0_13z;
  wire [19:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [4:0] celloutsig_0_16z;
  wire [6:0] celloutsig_0_17z;
  wire [9:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [6:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [6:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire [2:0] celloutsig_0_32z;
  reg [29:0] celloutsig_0_33z;
  wire [16:0] celloutsig_0_34z;
  wire [6:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [3:0] celloutsig_0_3z;
  wire [10:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [2:0] celloutsig_0_43z;
  wire [25:0] celloutsig_0_45z;
  wire [8:0] celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire [3:0] celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_5z;
  wire [8:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  reg [4:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [7:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [29:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [5:0] celloutsig_1_8z;
  wire [8:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_5z = ~in_data[10];
  assign celloutsig_0_15z = ~celloutsig_0_7z;
  assign celloutsig_0_26z = celloutsig_0_17z + { celloutsig_0_19z, celloutsig_0_21z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_13z = { celloutsig_0_0z[4:0], celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_7z } & { celloutsig_0_0z[6:4], celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_5z };
  assign celloutsig_1_2z = in_data[171:164] / { 1'h1, in_data[134:129], celloutsig_1_0z };
  assign celloutsig_0_18z = { celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_17z } / { 1'h1, celloutsig_0_13z[8:1], celloutsig_0_8z };
  assign celloutsig_0_32z = { celloutsig_0_0z[7], celloutsig_0_25z, celloutsig_0_9z } / { 1'h1, celloutsig_0_14z[3:2] };
  assign celloutsig_0_36z = { celloutsig_0_34z[16:15], celloutsig_0_9z, celloutsig_0_21z, celloutsig_0_9z, celloutsig_0_7z } === { celloutsig_0_24z[4:1], celloutsig_0_10z, celloutsig_0_27z };
  assign celloutsig_0_12z = { celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_4z } === { celloutsig_0_0z[2:1], celloutsig_0_8z };
  assign celloutsig_0_25z = celloutsig_0_6z[6:3] > { celloutsig_0_6z[7:6], celloutsig_0_12z, celloutsig_0_19z };
  assign celloutsig_0_2z = { in_data[70:60], celloutsig_0_1z } > in_data[20:9];
  assign celloutsig_0_41z = { celloutsig_0_33z[25:19], celloutsig_0_11z, celloutsig_0_1z } <= { celloutsig_0_13z[4], celloutsig_0_24z, celloutsig_0_39z };
  assign celloutsig_0_53z = { celloutsig_0_47z[0], celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_41z } <= celloutsig_0_45z[6:3];
  assign celloutsig_1_6z = { celloutsig_1_4z[26:9], celloutsig_1_5z } <= { celloutsig_1_2z[4:2], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_7z = celloutsig_1_2z <= in_data[106:99];
  assign celloutsig_1_13z = celloutsig_1_9z[3:0] <= { celloutsig_1_8z[0], celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_6z };
  assign celloutsig_0_1z = in_data[18:16] <= celloutsig_0_0z[7:5];
  assign celloutsig_0_20z = { celloutsig_0_16z[2:1], celloutsig_0_12z } && celloutsig_0_17z[4:2];
  assign celloutsig_1_10z = ! { in_data[184:181], celloutsig_1_2z, celloutsig_1_5z };
  assign celloutsig_0_10z = ! in_data[21:9];
  assign celloutsig_0_22z = ! celloutsig_0_0z[5:2];
  assign celloutsig_0_4z = { in_data[57:54], celloutsig_0_2z } < { celloutsig_0_0z[6:3], celloutsig_0_2z };
  assign celloutsig_1_0z = in_data[135:130] < in_data[126:121];
  assign celloutsig_1_1z = in_data[135:131] < { in_data[102:100], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_14z = { celloutsig_1_13z, celloutsig_1_7z, celloutsig_1_9z, celloutsig_1_7z } < { celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_9z, celloutsig_1_7z };
  assign celloutsig_0_9z = { in_data[72:71], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_8z } < { in_data[43:32], celloutsig_0_1z };
  assign celloutsig_0_11z = { celloutsig_0_6z, celloutsig_0_3z } < { in_data[54], celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_21z = { celloutsig_0_14z[10:8], celloutsig_0_19z } < { celloutsig_0_17z[5:3], celloutsig_0_19z };
  assign celloutsig_0_27z = { celloutsig_0_24z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_21z, celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_3z } < { celloutsig_0_6z[6:4], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_14z[19:1], 1'h0 };
  assign celloutsig_0_31z = { celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_22z, celloutsig_0_4z } < { celloutsig_0_26z[6:1], celloutsig_0_26z, celloutsig_0_4z };
  assign celloutsig_1_18z = celloutsig_1_10z & ~(celloutsig_1_16z);
  assign celloutsig_0_6z = { celloutsig_0_3z[2:0], celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_5z } % { 1'h1, in_data[92:88], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_4z };
  assign { celloutsig_0_47z[8:3], celloutsig_0_47z[1:0] } = celloutsig_0_13z[5] ? { celloutsig_0_40z[10:5], celloutsig_0_12z, celloutsig_0_38z } : { celloutsig_0_39z, celloutsig_0_39z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_39z, celloutsig_0_7z, celloutsig_0_31z, celloutsig_0_9z };
  assign celloutsig_0_17z = celloutsig_0_4z ? { celloutsig_0_0z[7:2], celloutsig_0_8z } : in_data[60:54];
  assign celloutsig_0_40z = - { celloutsig_0_15z, celloutsig_0_37z, celloutsig_0_24z, celloutsig_0_28z, celloutsig_0_39z };
  assign celloutsig_0_16z = - { in_data[21:20], celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_8z };
  assign celloutsig_0_37z = { celloutsig_0_8z, celloutsig_0_32z } !== { celloutsig_0_35z[3:2], celloutsig_0_7z, celloutsig_0_8z };
  assign celloutsig_0_38z = celloutsig_0_16z[3:1] !== { celloutsig_0_24z[4:3], celloutsig_0_21z };
  assign celloutsig_1_5z = { celloutsig_1_4z[10:2], celloutsig_1_1z, celloutsig_1_1z } !== { celloutsig_1_4z[13:12], celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_16z = { celloutsig_1_4z[8:5], celloutsig_1_6z } !== { celloutsig_1_15z[4:3], celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_14z };
  assign celloutsig_1_19z = { celloutsig_1_18z, celloutsig_1_10z, celloutsig_1_0z } !== in_data[122:120];
  assign celloutsig_0_39z = | { celloutsig_0_31z, in_data[62:59] };
  assign celloutsig_0_42z = ~^ celloutsig_0_17z[6:2];
  assign celloutsig_1_3z = ~^ { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_7z = ~^ { celloutsig_0_6z[8], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_8z = ~^ { in_data[59:43], celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_19z = ~^ { celloutsig_0_17z[4:0], celloutsig_0_12z };
  assign celloutsig_0_28z = ~^ { celloutsig_0_14z[19], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_20z, celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_17z, celloutsig_0_9z };
  assign celloutsig_0_45z = { celloutsig_0_33z[28:4], celloutsig_0_9z } >> { in_data[23:1], celloutsig_0_36z, celloutsig_0_19z, celloutsig_0_10z };
  assign celloutsig_1_8z = in_data[186:181] >> { celloutsig_1_4z[12:11], celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_0_35z = { celloutsig_0_24z[6], celloutsig_0_20z, celloutsig_0_25z, celloutsig_0_8z, celloutsig_0_31z, celloutsig_0_4z, celloutsig_0_9z } <<< { celloutsig_0_34z[6:1], celloutsig_0_11z };
  assign celloutsig_0_3z = in_data[91:88] <<< { in_data[52:50], celloutsig_0_2z };
  assign celloutsig_0_43z = { celloutsig_0_35z[5:4], celloutsig_0_7z } <<< { celloutsig_0_0z[2:1], celloutsig_0_25z };
  assign celloutsig_0_52z = { celloutsig_0_42z, celloutsig_0_43z } <<< { celloutsig_0_4z, celloutsig_0_36z, celloutsig_0_22z, celloutsig_0_11z };
  assign celloutsig_1_4z = { in_data[166:140], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_3z } <<< { celloutsig_1_2z[7:2], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_9z = { celloutsig_1_2z[6:0], celloutsig_1_5z, celloutsig_1_1z } <<< { in_data[119:113], celloutsig_1_7z, celloutsig_1_6z };
  assign celloutsig_0_24z = { celloutsig_0_0z[6:3], celloutsig_0_15z, celloutsig_0_9z, celloutsig_0_8z } <<< { celloutsig_0_13z[7:5], celloutsig_0_3z };
  assign celloutsig_0_34z = { in_data[71:56], celloutsig_0_12z } <<< { celloutsig_0_17z[5:2], celloutsig_0_13z, celloutsig_0_27z, celloutsig_0_10z, celloutsig_0_2z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_0z = 8'h00;
    else if (!clkin_data[32]) celloutsig_0_0z = in_data[45:38];
  always_latch
    if (clkin_data[128]) celloutsig_1_15z = 5'h00;
    else if (clkin_data[96]) celloutsig_1_15z = { celloutsig_1_9z[4:1], celloutsig_1_1z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_33z = 30'h00000000;
    else if (clkin_data[0]) celloutsig_0_33z = { celloutsig_0_28z, celloutsig_0_28z, celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_24z };
  assign { celloutsig_0_14z[13], celloutsig_0_14z[1], celloutsig_0_14z[11], celloutsig_0_14z[12], celloutsig_0_14z[10:2], celloutsig_0_14z[19:14] } = { celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_0z[5:0] } ^ { in_data[8], celloutsig_0_3z[0], in_data[6], in_data[7], in_data[5], celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_3z[3:1], in_data[14:9] };
  assign celloutsig_0_14z[0] = 1'h0;
  assign celloutsig_0_47z[2] = celloutsig_0_42z;
  assign { out_data[128], out_data[96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_52z, celloutsig_0_53z };
endmodule
