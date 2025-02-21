/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [11:0] celloutsig_0_0z;
  wire [7:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [15:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire [6:0] celloutsig_0_16z;
  wire [10:0] celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [12:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [8:0] celloutsig_0_22z;
  wire [3:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [3:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [3:0] celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [4:0] celloutsig_0_34z;
  wire [10:0] celloutsig_0_35z;
  wire [11:0] celloutsig_0_36z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [10:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  reg [8:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_52z;
  wire [13:0] celloutsig_0_55z;
  wire celloutsig_0_57z;
  wire [4:0] celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  reg [5:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  reg [5:0] celloutsig_1_11z;
  wire [23:0] celloutsig_1_13z;
  wire celloutsig_1_17z;
  wire [5:0] celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [6:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_52z = ~(celloutsig_0_39z & in_data[60]);
  assign celloutsig_0_11z = ~(celloutsig_0_9z[0] & celloutsig_0_8z);
  assign celloutsig_0_46z = { celloutsig_0_13z[11:9], celloutsig_0_7z, celloutsig_0_29z } > { celloutsig_0_36z[7:4], celloutsig_0_40z };
  assign celloutsig_1_1z = in_data[163:147] > { in_data[116:101], celloutsig_1_0z };
  assign celloutsig_1_8z = { celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_1z } > { in_data[191:186], celloutsig_1_2z };
  assign celloutsig_0_28z = { celloutsig_0_13z[11:2], celloutsig_0_10z, celloutsig_0_22z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_24z } > { celloutsig_0_0z[7:3], celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_13z };
  assign celloutsig_0_33z = { celloutsig_0_21z, celloutsig_0_9z } > celloutsig_0_17z[6:0];
  assign celloutsig_1_0z = in_data[160:150] && in_data[132:122];
  assign celloutsig_1_17z = celloutsig_1_11z[2:0] && celloutsig_1_13z[12:10];
  assign celloutsig_0_29z = { celloutsig_0_16z[5:4], celloutsig_0_18z, celloutsig_0_27z } && { celloutsig_0_17z[9:3], celloutsig_0_6z, celloutsig_0_6z };
  assign celloutsig_0_32z = { celloutsig_0_16z[6:5], celloutsig_0_29z, celloutsig_0_8z } && { celloutsig_0_18z[3:1], celloutsig_0_3z };
  assign celloutsig_0_3z = { celloutsig_0_0z[2], celloutsig_0_0z, celloutsig_0_1z } < { celloutsig_0_0z[11:3], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_45z = { celloutsig_0_42z[10:3], celloutsig_0_12z } < celloutsig_0_0z[9:1];
  assign celloutsig_1_9z = { in_data[115:109], celloutsig_1_3z, celloutsig_1_3z } < { celloutsig_1_7z[6], celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_0_43z = celloutsig_0_34z[0] & ~(celloutsig_0_25z[0]);
  assign celloutsig_0_4z = in_data[31] & ~(in_data[86]);
  assign celloutsig_0_6z = celloutsig_0_0z[6] & ~(celloutsig_0_1z[4]);
  assign celloutsig_1_3z = in_data[166:163] != in_data[185:182];
  assign celloutsig_1_6z = { celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_3z } != { in_data[111:103], celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_0_8z = { celloutsig_0_1z[11:8], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_4z } != { in_data[55:39], celloutsig_0_5z };
  assign celloutsig_0_14z = celloutsig_0_10z[7:4] != { celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_8z };
  assign celloutsig_0_19z = celloutsig_0_1z[9:7] != { celloutsig_0_13z[12], celloutsig_0_5z, celloutsig_0_7z };
  assign celloutsig_0_21z = { celloutsig_0_13z[11:7], celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z } != { celloutsig_0_8z, celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_19z, celloutsig_0_9z, celloutsig_0_13z };
  assign celloutsig_0_24z = { celloutsig_0_17z[9], celloutsig_0_14z, celloutsig_0_9z } != { celloutsig_0_1z[10:6], celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_20z };
  assign celloutsig_0_36z = ~ { celloutsig_0_13z[7:0], celloutsig_0_26z, celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_6z };
  assign celloutsig_1_18z = ~ { celloutsig_1_11z[5:3], celloutsig_1_17z, celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_0_10z = ~ { celloutsig_0_0z[9:3], celloutsig_0_5z };
  assign celloutsig_0_15z = ~ { celloutsig_0_10z[3:0], celloutsig_0_7z };
  assign celloutsig_0_17z = ~ { celloutsig_0_10z[7:5], celloutsig_0_16z, celloutsig_0_8z };
  assign celloutsig_0_22z = ~ { celloutsig_0_13z[12:5], celloutsig_0_7z };
  assign celloutsig_0_59z = | { celloutsig_0_2z[2:1], celloutsig_0_40z, celloutsig_0_57z, celloutsig_0_57z };
  assign celloutsig_0_7z = | in_data[32:21];
  assign celloutsig_0_27z = | { celloutsig_0_9z[5:1], celloutsig_0_23z };
  assign celloutsig_0_39z = celloutsig_0_33z & celloutsig_0_27z;
  assign celloutsig_0_5z = celloutsig_0_4z & celloutsig_0_3z;
  assign celloutsig_1_5z = celloutsig_1_2z & celloutsig_1_1z;
  assign celloutsig_0_20z = celloutsig_0_12z & celloutsig_0_16z[1];
  assign celloutsig_0_40z = | { celloutsig_0_15z, celloutsig_0_0z[2:1] };
  assign celloutsig_0_12z = | { celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_26z = | { celloutsig_0_21z, celloutsig_0_19z, celloutsig_0_11z, celloutsig_0_2z };
  assign celloutsig_0_31z = | { celloutsig_0_27z, celloutsig_0_5z, in_data[33:25] };
  assign celloutsig_0_55z = { celloutsig_0_3z, celloutsig_0_35z, celloutsig_0_46z, celloutsig_0_12z } >> { celloutsig_0_42z[4:2], celloutsig_0_7z, celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_4z, celloutsig_0_32z };
  assign celloutsig_0_16z = { in_data[10:8], celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_6z } >> { celloutsig_0_10z[7:2], celloutsig_0_11z };
  assign celloutsig_0_1z = in_data[73:61] >> in_data[64:52];
  assign celloutsig_0_42z = { celloutsig_0_22z[6:3], celloutsig_0_39z, celloutsig_0_3z, celloutsig_0_23z, celloutsig_0_19z } - { celloutsig_0_25z, celloutsig_0_15z, celloutsig_0_26z, celloutsig_0_39z };
  assign celloutsig_1_4z = { celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_2z } - { in_data[106], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_13z = { in_data[141:120], celloutsig_1_5z, celloutsig_1_6z } - { celloutsig_1_4z[1:0], celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_9z };
  assign celloutsig_0_23z = { celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_19z } - celloutsig_0_9z[4:1];
  assign celloutsig_0_25z = { celloutsig_0_16z[6:5], celloutsig_0_21z, celloutsig_0_4z } - celloutsig_0_1z[9:6];
  assign celloutsig_0_35z = celloutsig_0_1z[12:2] - { celloutsig_0_0z[11:2], celloutsig_0_3z };
  assign celloutsig_0_58z = { celloutsig_0_55z[1:0], celloutsig_0_52z, celloutsig_0_45z, celloutsig_0_11z } ^ { celloutsig_0_0z[10:7], celloutsig_0_12z };
  assign celloutsig_1_7z = { in_data[174:170], celloutsig_1_1z, celloutsig_1_3z } ^ { celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_19z = in_data[131:127] ^ celloutsig_1_18z[4:0];
  assign celloutsig_0_13z = { celloutsig_0_9z[5:3], celloutsig_0_1z } ^ { celloutsig_0_9z[2], celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_12z };
  assign celloutsig_0_18z = { celloutsig_0_9z[4:0], celloutsig_0_4z } ^ celloutsig_0_10z[6:1];
  assign celloutsig_0_2z = in_data[59:56] ^ celloutsig_0_0z[5:2];
  assign celloutsig_0_34z = { celloutsig_0_0z[11:8], celloutsig_0_31z } ^ { celloutsig_0_9z[4:1], celloutsig_0_28z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_0z = 12'h000;
    else if (clkin_data[0]) celloutsig_0_0z = in_data[74:63];
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_49z = 9'h000;
    else if (!clkin_data[32]) celloutsig_0_49z = { celloutsig_0_15z[3:0], celloutsig_0_43z, celloutsig_0_25z };
  always_latch
    if (clkin_data[128]) celloutsig_1_11z = 6'h00;
    else if (!clkin_data[64]) celloutsig_1_11z = { in_data[109:105], celloutsig_1_9z };
  always_latch
    if (!clkin_data[96]) celloutsig_0_9z = 6'h00;
    else if (!clkin_data[32]) celloutsig_0_9z = { celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_2z };
  assign celloutsig_0_57z = ~((celloutsig_0_21z & celloutsig_0_34z[2]) | (celloutsig_0_49z[8] & celloutsig_0_52z));
  assign celloutsig_1_2z = ~((celloutsig_1_0z & in_data[181]) | (celloutsig_1_1z & celloutsig_1_1z));
  assign { out_data[133:128], out_data[100:96], out_data[36:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_58z, celloutsig_0_59z };
endmodule
