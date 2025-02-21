/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  reg [12:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [11:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [8:0] celloutsig_0_23z;
  wire [21:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [8:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [12:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [8:0] celloutsig_0_40z;
  wire [13:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [16:0] celloutsig_0_43z;
  wire celloutsig_0_46z;
  wire [3:0] celloutsig_0_47z;
  wire [5:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [6:0] celloutsig_0_50z;
  wire celloutsig_0_53z;
  wire [3:0] celloutsig_0_54z;
  wire [10:0] celloutsig_0_5z;
  wire celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire celloutsig_0_68z;
  wire celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire celloutsig_0_72z;
  wire celloutsig_0_77z;
  wire celloutsig_0_7z;
  wire celloutsig_0_82z;
  wire celloutsig_0_86z;
  wire celloutsig_0_87z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [21:0] celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_37z = celloutsig_0_28z | ~(celloutsig_0_19z);
  assign celloutsig_0_39z = celloutsig_0_7z | ~(celloutsig_0_27z);
  assign celloutsig_0_3z = celloutsig_0_1z | ~(celloutsig_0_1z);
  assign celloutsig_0_65z = celloutsig_0_23z[7] | ~(celloutsig_0_27z);
  assign celloutsig_0_77z = celloutsig_0_29z[5] | ~(celloutsig_0_36z[2]);
  assign celloutsig_1_3z = in_data[109] | ~(celloutsig_1_0z);
  assign celloutsig_0_26z = celloutsig_0_19z | ~(celloutsig_0_22z);
  assign celloutsig_0_27z = celloutsig_0_9z | ~(celloutsig_0_10z);
  assign celloutsig_0_35z = celloutsig_0_33z | ~(celloutsig_0_6z);
  assign celloutsig_0_4z = { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z } > { in_data[90:89], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_87z = { celloutsig_0_35z, celloutsig_0_70z, celloutsig_0_77z, celloutsig_0_66z, celloutsig_0_54z[3:1], 1'h0, celloutsig_0_40z } > { celloutsig_0_43z[6:5], in_data[12], celloutsig_0_43z[3:2], celloutsig_0_0z, celloutsig_0_50z, celloutsig_0_65z, celloutsig_0_42z, celloutsig_0_12z, celloutsig_0_10z };
  assign celloutsig_1_6z = { celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_3z } > celloutsig_1_1z[2:0];
  assign celloutsig_1_9z = { in_data[186:175], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_3z } > { celloutsig_1_7z[2], 1'h0, celloutsig_1_7z[0], celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_7z[2], 1'h0, celloutsig_1_7z[0], celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_1_14z = { celloutsig_1_10z, celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_3z } > { celloutsig_1_11z[5:4], celloutsig_1_7z[2], 1'h0, celloutsig_1_7z[0], celloutsig_1_5z };
  assign celloutsig_1_17z = celloutsig_1_1z[3:1] > celloutsig_1_8z[3:1];
  assign celloutsig_1_18z = { celloutsig_1_14z, celloutsig_1_1z } > { celloutsig_1_14z, celloutsig_1_17z, celloutsig_1_17z, celloutsig_1_10z, celloutsig_1_13z, celloutsig_1_3z };
  assign celloutsig_0_12z = { in_data[21:17], celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_1z } > { celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_9z };
  assign celloutsig_0_53z = ! { celloutsig_0_48z[4:0], celloutsig_0_30z, celloutsig_0_9z, celloutsig_0_38z, celloutsig_0_0z, celloutsig_0_37z, celloutsig_0_33z, celloutsig_0_46z };
  assign celloutsig_0_7z = ! { celloutsig_0_5z[9:1], celloutsig_0_5z, celloutsig_0_2z };
  assign celloutsig_0_25z = ! celloutsig_0_13z;
  assign celloutsig_0_82z = ! { celloutsig_0_5z[7:4], celloutsig_0_36z, celloutsig_0_72z, celloutsig_0_28z, celloutsig_0_39z, celloutsig_0_8z, celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_33z, celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_64z, celloutsig_0_19z, celloutsig_0_15z, celloutsig_0_53z, celloutsig_0_25z };
  assign celloutsig_1_4z = ! { in_data[119:116], celloutsig_1_2z };
  assign celloutsig_0_18z = ! { celloutsig_0_16z[8:7], celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_28z = ! { in_data[16:14], celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_26z };
  assign celloutsig_0_31z = ! { celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_15z };
  assign celloutsig_0_2z = ! { in_data[51:26], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_34z = ! celloutsig_0_24z[21:16];
  assign celloutsig_0_64z = celloutsig_0_37z & celloutsig_0_50z[6];
  assign celloutsig_0_66z = celloutsig_0_18z & celloutsig_0_54z[2];
  assign celloutsig_0_8z = celloutsig_0_3z & celloutsig_0_0z;
  assign celloutsig_0_14z = celloutsig_0_9z & celloutsig_0_10z;
  assign celloutsig_0_22z = celloutsig_0_18z & celloutsig_0_10z;
  assign celloutsig_0_1z = in_data[10] & in_data[27];
  assign celloutsig_0_70z = ~^ { celloutsig_0_47z[1], celloutsig_0_68z, celloutsig_0_64z, celloutsig_0_49z, celloutsig_0_18z };
  assign celloutsig_0_9z = ~^ { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_1_15z = ~^ { in_data[140:136], celloutsig_1_4z };
  assign celloutsig_0_32z = ~^ celloutsig_0_21z[8:1];
  assign celloutsig_0_46z = ^ { in_data[21:13], celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_34z, celloutsig_0_36z, celloutsig_0_17z, celloutsig_0_30z, celloutsig_0_33z };
  assign celloutsig_0_68z = ^ { celloutsig_0_54z[2:1], 1'h0 };
  assign celloutsig_0_6z = ^ { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_0_86z = ^ { celloutsig_0_0z, celloutsig_0_54z[3:1], 1'h0, celloutsig_0_18z, celloutsig_0_82z, celloutsig_0_9z };
  assign celloutsig_1_2z = ^ { celloutsig_1_1z[0], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_5z = ^ { in_data[124:108], celloutsig_1_0z };
  assign celloutsig_0_10z = ^ { celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_11z = ^ { in_data[33:31], celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_15z = ^ { celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_17z = ^ { celloutsig_0_16z[12:7], celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_14z };
  assign celloutsig_0_19z = ^ { in_data[3:1], celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_18z, celloutsig_0_4z };
  assign celloutsig_0_20z = ^ { celloutsig_0_5z[3:0], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_0z, celloutsig_0_12z };
  assign celloutsig_0_40z = { celloutsig_0_24z[20:15], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_31z } ^ { celloutsig_0_16z[8:1], celloutsig_0_15z };
  assign celloutsig_0_41z = in_data[84:71] ^ { celloutsig_0_40z[6:2], celloutsig_0_13z, celloutsig_0_34z, celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_37z, celloutsig_0_26z };
  assign celloutsig_0_47z = { celloutsig_0_16z[9:7], celloutsig_0_4z } ^ { celloutsig_0_10z, celloutsig_0_39z, celloutsig_0_27z, celloutsig_0_46z };
  assign celloutsig_0_48z = { celloutsig_0_22z, celloutsig_0_32z, celloutsig_0_3z, celloutsig_0_32z, celloutsig_0_1z, celloutsig_0_27z } ^ { celloutsig_0_32z, celloutsig_0_20z, celloutsig_0_47z };
  assign celloutsig_0_50z = celloutsig_0_21z[11:5] ^ celloutsig_0_21z[9:3];
  assign celloutsig_0_5z = in_data[25:15] ^ { in_data[38:31], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_1_1z = { in_data[111:108], celloutsig_1_0z } ^ in_data[186:182];
  assign celloutsig_1_8z = celloutsig_1_1z[3:0] ^ { celloutsig_1_1z[4:3], celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_0_13z = { celloutsig_0_5z[7:6], celloutsig_0_2z } ^ { celloutsig_0_5z[6], celloutsig_0_10z, celloutsig_0_0z };
  assign celloutsig_0_21z = { in_data[94:87], celloutsig_0_14z, celloutsig_0_17z, celloutsig_0_2z, celloutsig_0_6z } ^ { celloutsig_0_16z[9:7], celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_11z };
  assign celloutsig_0_24z = { in_data[23:13], celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_22z } ^ { in_data[36], celloutsig_0_3z, celloutsig_0_20z, celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_21z, celloutsig_0_20z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_3z };
  assign celloutsig_0_29z = { celloutsig_0_21z[10:6], celloutsig_0_15z, celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_1z } ^ { celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_26z, celloutsig_0_28z, celloutsig_0_7z };
  assign celloutsig_0_36z = { celloutsig_0_24z[21:13], celloutsig_0_22z, celloutsig_0_30z, celloutsig_0_8z, celloutsig_0_25z } ^ { celloutsig_0_23z[7], celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_35z, celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_26z, celloutsig_0_22z, celloutsig_0_20z, celloutsig_0_9z };
  assign celloutsig_0_38z = ~((celloutsig_0_37z & celloutsig_0_36z[4]) | celloutsig_0_0z);
  assign celloutsig_0_42z = ~((celloutsig_0_28z & in_data[35]) | celloutsig_0_32z);
  assign celloutsig_0_72z = ~((celloutsig_0_38z & celloutsig_0_13z[1]) | celloutsig_0_49z);
  assign celloutsig_1_13z = ~((celloutsig_1_9z & celloutsig_1_0z) | celloutsig_1_5z);
  assign celloutsig_0_30z = ~((celloutsig_0_10z & celloutsig_0_29z[1]) | celloutsig_0_18z);
  always_latch
    if (!out_data[96]) celloutsig_0_16z = 13'h0000;
    else if (!clkin_data[0]) celloutsig_0_16z = { in_data[53:44], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_0z = ~((in_data[30] & in_data[27]) | (in_data[51] & in_data[42]));
  assign celloutsig_0_49z = ~((celloutsig_0_9z & celloutsig_0_1z) | (celloutsig_0_41z[8] & celloutsig_0_20z));
  assign celloutsig_1_0z = ~((in_data[169] & in_data[102]) | (in_data[168] & in_data[158]));
  assign celloutsig_1_10z = ~((celloutsig_1_9z & celloutsig_1_7z[2]) | (celloutsig_1_8z[3] & celloutsig_1_3z));
  assign celloutsig_0_33z = ~((celloutsig_0_1z & celloutsig_0_26z) | (celloutsig_0_11z & celloutsig_0_13z[1]));
  assign { celloutsig_0_23z[7], celloutsig_0_23z[8], celloutsig_0_23z[3:1], celloutsig_0_23z[5], celloutsig_0_23z[0], celloutsig_0_23z[6] } = { celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_1z } ^ { celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_22z, celloutsig_0_8z };
  assign { celloutsig_0_54z[1], celloutsig_0_54z[2], celloutsig_0_54z[3] } = { celloutsig_0_53z, celloutsig_0_11z, celloutsig_0_7z } ^ { celloutsig_0_28z, celloutsig_0_49z, celloutsig_0_37z };
  assign { celloutsig_1_7z[0], celloutsig_1_7z[2] } = { celloutsig_1_2z, celloutsig_1_1z[3] } ^ { celloutsig_1_0z, celloutsig_1_5z };
  assign { celloutsig_0_43z[0], celloutsig_0_43z[1], celloutsig_0_43z[16:5], celloutsig_0_43z[3:2] } = { celloutsig_0_33z, celloutsig_0_14z, in_data[24:13], in_data[11:10] } ^ { celloutsig_0_23z[0], celloutsig_0_23z[1], celloutsig_0_37z, celloutsig_0_26z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_32z, celloutsig_0_13z, celloutsig_0_23z[8:5], celloutsig_0_23z[3:2] };
  assign { celloutsig_1_11z[0], celloutsig_1_11z[9], celloutsig_1_11z[3], celloutsig_1_11z[11:10], celloutsig_1_11z[12], celloutsig_1_11z[17], celloutsig_1_11z[1], celloutsig_1_11z[13], celloutsig_1_11z[8:4], celloutsig_1_11z[18], celloutsig_1_11z[14], celloutsig_1_11z[16], celloutsig_1_11z[21:19] } = { celloutsig_1_10z, celloutsig_1_10z, celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_7z[0], celloutsig_1_7z[2], in_data[167:165] } ^ { celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_1z[0], in_data[122:121], in_data[123], in_data[128], celloutsig_1_9z, in_data[124], celloutsig_1_6z, celloutsig_1_1z[4:1], in_data[129], in_data[125], in_data[127], in_data[132:130] };
  assign { out_data[104], out_data[109], out_data[100:97], out_data[105], out_data[96], out_data[101], out_data[106], out_data[103], out_data[108] } = { celloutsig_1_17z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_7z[0], celloutsig_1_7z[0], celloutsig_1_7z[2], celloutsig_1_7z[2] } ^ { celloutsig_1_14z, in_data[121], celloutsig_1_6z, celloutsig_1_17z, celloutsig_1_10z, celloutsig_1_18z, in_data[117], celloutsig_1_13z, celloutsig_1_15z, in_data[118], celloutsig_1_3z, in_data[120] };
  assign celloutsig_0_23z[4] = 1'h0;
  assign celloutsig_0_43z[4] = in_data[12];
  assign celloutsig_0_54z[0] = 1'h0;
  assign { celloutsig_1_11z[15], celloutsig_1_11z[2] } = { in_data[126], 1'h0 };
  assign celloutsig_1_7z[1] = 1'h0;
  assign { out_data[128], out_data[107], out_data[102], out_data[32], out_data[0] } = { celloutsig_1_18z, in_data[119], celloutsig_1_17z, celloutsig_0_86z, celloutsig_0_87z };
endmodule
