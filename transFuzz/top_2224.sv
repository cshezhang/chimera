/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  reg [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [8:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [22:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [20:0] celloutsig_0_28z;
  wire [32:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [30:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [5:0] celloutsig_0_35z;
  wire [7:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [6:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [7:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [4:0] celloutsig_0_45z;
  wire [2:0] celloutsig_0_46z;
  wire [12:0] celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire [6:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [10:0] celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire [10:0] celloutsig_0_54z;
  reg [2:0] celloutsig_0_55z;
  wire [7:0] celloutsig_0_56z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire celloutsig_0_64z;
  wire [25:0] celloutsig_0_65z;
  wire celloutsig_0_67z;
  wire [7:0] celloutsig_0_6z;
  wire celloutsig_0_71z;
  wire celloutsig_0_75z;
  wire [8:0] celloutsig_0_76z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [18:0] celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [26:0] celloutsig_1_11z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [31:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [6:0] celloutsig_1_4z;
  wire [12:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_48z = ~((celloutsig_0_2z | celloutsig_0_1z) & (celloutsig_0_46z[2] | celloutsig_0_5z));
  assign celloutsig_0_5z = ~((in_data[13] | celloutsig_0_0z) & (celloutsig_0_1z | celloutsig_0_3z[0]));
  assign celloutsig_0_46z = { celloutsig_0_3z[5], celloutsig_0_24z, celloutsig_0_1z } + { celloutsig_0_26z, celloutsig_0_5z, celloutsig_0_40z };
  assign celloutsig_0_9z = in_data[56:38] + { celloutsig_0_3z[4:3], celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_20z = { celloutsig_0_6z[4:0], celloutsig_0_19z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_10z } + { celloutsig_0_6z[3:2], celloutsig_0_0z, celloutsig_0_16z, celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_15z };
  assign celloutsig_0_23z = { in_data[87:70], celloutsig_0_17z, celloutsig_0_19z } + { in_data[40:21], celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_5z };
  assign celloutsig_0_29z = { celloutsig_0_20z, celloutsig_0_7z, celloutsig_0_23z } + { celloutsig_0_3z[6:5], celloutsig_0_27z, celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_3z, celloutsig_0_22z, celloutsig_0_12z, celloutsig_0_25z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_15z };
  assign celloutsig_0_3z = { in_data[51:48], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z } / { 1'h1, in_data[23:22], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z, in_data[0] };
  assign celloutsig_0_35z = { in_data[54:52], celloutsig_0_34z, celloutsig_0_2z, celloutsig_0_24z } / { 1'h1, celloutsig_0_28z[17:13] };
  assign celloutsig_0_47z = { celloutsig_0_23z[14:13], celloutsig_0_2z, celloutsig_0_22z, celloutsig_0_36z, celloutsig_0_31z } / { 1'h1, celloutsig_0_29z[12:4], celloutsig_0_26z, celloutsig_0_37z, celloutsig_0_18z };
  assign celloutsig_0_49z = { celloutsig_0_23z[15:10], celloutsig_0_27z } / { 1'h1, celloutsig_0_45z, celloutsig_0_2z };
  assign celloutsig_0_11z = celloutsig_0_3z[5:3] == in_data[25:23];
  assign celloutsig_0_1z = { in_data[61:53], celloutsig_0_0z } == in_data[84:75];
  assign celloutsig_0_12z = in_data[39:34] == { celloutsig_0_3z[4], celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_7z };
  assign celloutsig_0_26z = { celloutsig_0_17z[0], celloutsig_0_4z, celloutsig_0_10z } == celloutsig_0_23z[18:16];
  assign celloutsig_1_7z = { celloutsig_1_2z[5], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_1z } === celloutsig_1_2z[20:17];
  assign celloutsig_0_13z = celloutsig_0_6z[2:0] === { celloutsig_0_6z[3], celloutsig_0_10z, celloutsig_0_8z };
  assign celloutsig_0_25z = { celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_16z } === { celloutsig_0_9z[4], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_7z };
  assign celloutsig_0_34z = celloutsig_0_23z[19:16] >= { celloutsig_0_27z, celloutsig_0_18z, celloutsig_0_26z, celloutsig_0_8z };
  assign celloutsig_0_42z = celloutsig_0_9z[7:0] >= { celloutsig_0_33z[12:9], celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_30z, celloutsig_0_16z };
  assign celloutsig_0_4z = { celloutsig_0_3z[5], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z } >= { celloutsig_0_3z[6:4], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_43z = celloutsig_0_9z[13:11] >= { in_data[86], celloutsig_0_42z, celloutsig_0_13z };
  assign celloutsig_0_52z = { celloutsig_0_47z[8:5], celloutsig_0_22z } >= { celloutsig_0_32z, celloutsig_0_10z, celloutsig_0_46z };
  assign celloutsig_0_7z = { celloutsig_0_3z[5:0], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_2z } >= { celloutsig_0_3z[6:5], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_8z = { celloutsig_1_6z[10:3], celloutsig_1_4z } >= { celloutsig_1_6z[3], celloutsig_1_6z, celloutsig_1_1z };
  assign celloutsig_0_8z = { celloutsig_0_6z[5:1], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_5z } >= { celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_18z = celloutsig_0_6z >= celloutsig_0_9z[12:5];
  assign celloutsig_0_22z = { celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_17z } >= { celloutsig_0_9z[13:1], celloutsig_0_0z };
  assign celloutsig_0_31z = celloutsig_0_17z >= { celloutsig_0_25z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_22z };
  assign celloutsig_0_0z = in_data[35:33] && in_data[67:65];
  assign celloutsig_0_59z = celloutsig_0_28z[8:4] && celloutsig_0_47z[5:1];
  assign celloutsig_0_61z = { celloutsig_0_48z, celloutsig_0_42z, celloutsig_0_48z, celloutsig_0_18z, celloutsig_0_41z, celloutsig_0_34z, celloutsig_0_27z, celloutsig_0_51z } && { in_data[27:16], celloutsig_0_54z, celloutsig_0_43z, celloutsig_0_10z };
  assign celloutsig_0_64z = { celloutsig_0_9z[1], celloutsig_0_52z, celloutsig_0_34z, celloutsig_0_61z, celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_11z } && { celloutsig_0_51z[4:3], celloutsig_0_34z, celloutsig_0_55z, celloutsig_0_19z };
  assign celloutsig_0_67z = { celloutsig_0_49z[5:4], celloutsig_0_61z, celloutsig_0_43z, celloutsig_0_24z } && celloutsig_0_6z[4:0];
  assign celloutsig_0_75z = { celloutsig_0_65z[6:4], celloutsig_0_59z } && { celloutsig_0_20z[2:0], celloutsig_0_71z };
  assign celloutsig_1_10z = { celloutsig_1_6z[5:2], celloutsig_1_8z } && { celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_1_16z = { celloutsig_1_4z[4:3], celloutsig_1_14z, celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_7z } && in_data[142:135];
  assign celloutsig_0_14z = { celloutsig_0_9z[13:11], celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_6z } && { celloutsig_0_9z[15:1], celloutsig_0_2z };
  assign celloutsig_0_15z = { celloutsig_0_6z[4:2], celloutsig_0_4z, celloutsig_0_0z } && celloutsig_0_3z[5:1];
  assign celloutsig_0_2z = in_data[22] & ~(celloutsig_0_1z);
  assign celloutsig_0_24z = celloutsig_0_21z[1] & ~(celloutsig_0_11z);
  assign celloutsig_0_41z = celloutsig_0_36z | { celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_21z };
  assign celloutsig_0_45z = celloutsig_0_20z[7:3] | { celloutsig_0_17z, celloutsig_0_22z };
  assign celloutsig_0_51z = { celloutsig_0_9z[15:11], celloutsig_0_34z, celloutsig_0_46z, celloutsig_0_27z, celloutsig_0_22z } | { celloutsig_0_35z[5:3], celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_54z = celloutsig_0_51z | { celloutsig_0_47z[12:7], celloutsig_0_52z, celloutsig_0_17z };
  assign celloutsig_0_65z = { celloutsig_0_55z, celloutsig_0_64z, celloutsig_0_24z, celloutsig_0_4z, celloutsig_0_43z, celloutsig_0_54z, celloutsig_0_41z } | { celloutsig_0_29z[23:18], celloutsig_0_19z, celloutsig_0_43z, celloutsig_0_2z, celloutsig_0_56z, celloutsig_0_64z, celloutsig_0_56z };
  assign celloutsig_0_6z = { in_data[18], celloutsig_0_3z } | { in_data[23:17], celloutsig_0_4z };
  assign celloutsig_0_76z = { celloutsig_0_6z[6:0], celloutsig_0_67z, celloutsig_0_43z } | celloutsig_0_23z[20:12];
  assign celloutsig_1_0z = in_data[162:160] | in_data[190:188];
  assign celloutsig_1_9z = celloutsig_1_6z[4:2] | celloutsig_1_4z[6:4];
  assign celloutsig_1_18z = celloutsig_1_6z[8:5] | { celloutsig_1_4z[3:1], celloutsig_1_3z };
  assign celloutsig_0_28z = { in_data[26:11], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_16z, celloutsig_0_15z, celloutsig_0_2z } | { celloutsig_0_23z[11:10], celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_24z, celloutsig_0_27z, celloutsig_0_25z, celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_0_33z = { celloutsig_0_9z[11:9], celloutsig_0_25z, celloutsig_0_0z, celloutsig_0_24z, celloutsig_0_1z, celloutsig_0_30z, celloutsig_0_30z, celloutsig_0_28z, celloutsig_0_32z } | { celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_24z, celloutsig_0_19z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_32z, celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_18z };
  assign celloutsig_1_3z = | in_data[191:180];
  assign celloutsig_0_16z = | { celloutsig_0_12z, celloutsig_0_9z[6:0] };
  assign celloutsig_0_19z = | { celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_1_1z = ~^ { in_data[112], celloutsig_1_0z };
  assign celloutsig_1_19z = ~^ { celloutsig_1_4z[2], celloutsig_1_9z, celloutsig_1_15z, celloutsig_1_3z, celloutsig_1_16z };
  assign celloutsig_0_32z = ~^ celloutsig_0_3z[6:4];
  assign celloutsig_0_37z = ^ { celloutsig_0_8z, celloutsig_0_21z, celloutsig_0_19z, celloutsig_0_15z, celloutsig_0_0z };
  assign celloutsig_1_14z = ^ { celloutsig_1_11z[4:3], celloutsig_1_7z };
  assign celloutsig_1_15z = ^ { celloutsig_1_11z[12:7], celloutsig_1_10z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_10z, celloutsig_1_8z };
  assign celloutsig_0_27z = ^ celloutsig_0_20z[7:3];
  assign celloutsig_0_30z = ^ celloutsig_0_20z[8:2];
  assign celloutsig_0_56z = { celloutsig_0_20z[1:0], celloutsig_0_37z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_32z, celloutsig_0_48z } >> celloutsig_0_36z;
  assign celloutsig_1_11z = { celloutsig_1_2z[27:15], celloutsig_1_7z, celloutsig_1_6z } >> { celloutsig_1_4z[3:0], celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_0z };
  assign celloutsig_0_36z = { celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_24z, celloutsig_0_24z, celloutsig_0_11z, celloutsig_0_21z } >> { celloutsig_0_29z[13:9], celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_31z };
  assign celloutsig_1_2z = in_data[150:119] >> { in_data[141:113], celloutsig_1_0z };
  assign celloutsig_1_4z = { in_data[172:170], celloutsig_1_0z, celloutsig_1_1z } >> { in_data[107:102], celloutsig_1_3z };
  assign celloutsig_1_6z = celloutsig_1_2z[15:3] >> { in_data[190:179], celloutsig_1_1z };
  assign celloutsig_0_21z = { celloutsig_0_20z[6:5], celloutsig_0_10z } >> celloutsig_0_3z[4:2];
  assign celloutsig_0_40z = ~((celloutsig_0_30z & celloutsig_0_24z) | celloutsig_0_15z);
  assign celloutsig_0_71z = ~((celloutsig_0_3z[2] & celloutsig_0_47z[9]) | celloutsig_0_31z);
  assign celloutsig_0_10z = ~((celloutsig_0_8z & celloutsig_0_0z) | celloutsig_0_6z[2]);
  always_latch
    if (celloutsig_1_19z) celloutsig_0_55z = 3'h0;
    else if (!clkin_data[0]) celloutsig_0_55z = { celloutsig_0_6z[1:0], celloutsig_0_10z };
  always_latch
    if (celloutsig_1_19z) celloutsig_0_17z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_17z = { celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_4z };
  assign { out_data[131:128], out_data[96], out_data[32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_75z, celloutsig_0_76z };
endmodule
