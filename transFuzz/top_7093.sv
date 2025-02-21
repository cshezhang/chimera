/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [7:0] celloutsig_0_11z;
  wire [4:0] celloutsig_0_12z;
  wire [11:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [7:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [8:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [3:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [9:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [12:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [3:0] celloutsig_0_34z;
  wire [23:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [2:0] celloutsig_0_3z;
  wire [8:0] celloutsig_0_41z;
  wire [11:0] celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_47z;
  wire celloutsig_0_49z;
  reg [2:0] celloutsig_0_4z;
  wire celloutsig_0_53z;
  wire celloutsig_0_59z;
  reg [4:0] celloutsig_0_5z;
  wire [3:0] celloutsig_0_67z;
  wire [8:0] celloutsig_0_68z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [12:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [10:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [19:0] celloutsig_1_14z;
  wire [8:0] celloutsig_1_18z;
  wire [52:0] celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  reg [7:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [18:0] celloutsig_1_6z;
  wire [5:0] celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_13z = in_data[146] ^ celloutsig_1_0z[6];
  assign celloutsig_0_6z = celloutsig_0_2z ^ celloutsig_0_1z;
  assign celloutsig_1_2z = in_data[127] ^ in_data[178];
  assign celloutsig_0_9z = celloutsig_0_7z ^ celloutsig_0_8z[11];
  assign celloutsig_0_16z = in_data[4] ^ celloutsig_0_6z;
  assign celloutsig_1_14z = { in_data[178:169], celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_10z } + in_data[161:142];
  assign celloutsig_0_8z = { celloutsig_0_5z[4:2], celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_6z } + { in_data[25:16], celloutsig_0_3z };
  assign celloutsig_0_15z = { celloutsig_0_13z[5:2], celloutsig_0_4z, celloutsig_0_1z } + { celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_23z = { celloutsig_0_13z[5:4], celloutsig_0_9z, celloutsig_0_16z } + { celloutsig_0_5z[4:3], celloutsig_0_22z, celloutsig_0_22z };
  assign celloutsig_0_31z = { celloutsig_0_1z, celloutsig_0_26z, celloutsig_0_24z, celloutsig_0_24z } + { celloutsig_0_13z[2:1], celloutsig_0_24z, celloutsig_0_21z, celloutsig_0_19z };
  assign celloutsig_0_36z = { celloutsig_0_21z[8:2], celloutsig_0_7z, celloutsig_0_27z } == { celloutsig_0_31z[10:3], celloutsig_0_33z };
  assign celloutsig_0_39z = { in_data[81:77], celloutsig_0_7z } == celloutsig_0_21z[7:2];
  assign celloutsig_0_53z = celloutsig_0_41z[7:4] == { celloutsig_0_13z[9], celloutsig_0_6z, celloutsig_0_33z, celloutsig_0_22z };
  assign celloutsig_1_3z = { celloutsig_1_2z, celloutsig_1_13z } == { celloutsig_1_0z[5], celloutsig_1_2z };
  assign celloutsig_0_10z = { celloutsig_0_8z[11], celloutsig_0_8z } == { in_data[77:65], celloutsig_0_1z };
  assign celloutsig_0_14z = { celloutsig_0_12z[1:0], celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_12z } == { celloutsig_0_8z[7:0], celloutsig_0_9z };
  assign celloutsig_0_22z = { in_data[40:32], celloutsig_0_7z } == { celloutsig_0_21z, celloutsig_0_19z };
  assign celloutsig_0_0z = | in_data[39:33];
  assign celloutsig_0_38z = | { celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_28z, celloutsig_0_10z, celloutsig_0_0z };
  assign celloutsig_0_44z = | { celloutsig_0_35z[19:16], celloutsig_0_39z, celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_10z, celloutsig_0_17z };
  assign celloutsig_1_12z = | { celloutsig_1_6z[13:8], celloutsig_1_2z };
  assign celloutsig_0_19z = | { celloutsig_0_11z[7:5], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_16z };
  assign celloutsig_0_25z = | { celloutsig_0_24z, celloutsig_0_10z, celloutsig_0_14z };
  assign celloutsig_0_29z = | { celloutsig_0_26z[7:3], celloutsig_0_7z };
  assign celloutsig_0_18z = in_data[16] & celloutsig_0_15z[6];
  assign celloutsig_0_2z = in_data[14] & in_data[52];
  assign celloutsig_0_47z = | { celloutsig_0_3z[2:1], celloutsig_0_1z };
  assign celloutsig_0_59z = | { celloutsig_0_36z, celloutsig_0_22z, celloutsig_0_1z };
  assign celloutsig_0_17z = | in_data[31:18];
  assign celloutsig_1_9z = ~^ { in_data[157:133], celloutsig_1_3z, celloutsig_1_13z };
  assign celloutsig_0_24z = ~^ { celloutsig_0_8z[8:0], celloutsig_0_16z, celloutsig_0_9z, celloutsig_0_0z };
  assign celloutsig_0_27z = ~^ celloutsig_0_13z[2:0];
  assign celloutsig_0_35z = { celloutsig_0_11z[7], celloutsig_0_27z, celloutsig_0_5z, celloutsig_0_29z, celloutsig_0_13z, celloutsig_0_34z } << { celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_29z, celloutsig_0_27z, celloutsig_0_13z, celloutsig_0_28z, celloutsig_0_10z };
  assign celloutsig_0_41z = { celloutsig_0_31z[11:5], celloutsig_0_16z, celloutsig_0_25z } << { celloutsig_0_23z[0], celloutsig_0_38z, celloutsig_0_23z, celloutsig_0_38z, celloutsig_0_14z, celloutsig_0_24z };
  assign celloutsig_0_11z = { celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_10z } << { celloutsig_0_4z[1:0], celloutsig_0_1z, celloutsig_0_5z };
  assign celloutsig_0_13z = { celloutsig_0_8z[12:6], celloutsig_0_12z } << { celloutsig_0_5z[2:1], celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_6z };
  assign celloutsig_0_21z = { celloutsig_0_5z[4:1], celloutsig_0_4z, celloutsig_0_20z, celloutsig_0_14z } << { celloutsig_0_15z[2:0], celloutsig_0_20z, celloutsig_0_20z, celloutsig_0_9z, celloutsig_0_3z };
  assign celloutsig_0_3z = in_data[88:86] <<< in_data[50:48];
  assign celloutsig_0_67z = { celloutsig_0_11z[7:6], celloutsig_0_47z, celloutsig_0_49z } <<< { celloutsig_0_31z[12], celloutsig_0_1z, celloutsig_0_44z, celloutsig_0_49z };
  assign celloutsig_0_68z = { in_data[95:88], celloutsig_0_59z } <<< { celloutsig_0_31z[9:2], celloutsig_0_53z };
  assign celloutsig_1_8z = { 2'h3, celloutsig_1_7z[2:1] } <<< { in_data[182:181], celloutsig_1_5z, celloutsig_1_13z };
  assign celloutsig_0_34z = { celloutsig_0_26z[2], celloutsig_0_33z, celloutsig_0_17z, celloutsig_0_24z } >>> celloutsig_0_5z[3:0];
  assign celloutsig_1_0z = in_data[183:173] >>> in_data[187:177];
  assign celloutsig_1_6z = { in_data[123:111], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_13z } >>> { celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_1_18z = celloutsig_1_0z[9:1] >>> { celloutsig_1_14z[2:0], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_13z, celloutsig_1_10z, celloutsig_1_2z };
  assign celloutsig_0_26z = { celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_18z, celloutsig_0_12z } >>> { in_data[95:94], celloutsig_0_11z };
  assign celloutsig_0_43z = celloutsig_0_35z[21:10] ~^ celloutsig_0_8z[11:0];
  assign celloutsig_0_12z = { celloutsig_0_8z[3:1], celloutsig_0_10z, celloutsig_0_1z } ~^ { celloutsig_0_8z[11:8], celloutsig_0_6z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_4z = 3'h0;
    else if (!out_data[96]) celloutsig_0_4z = { celloutsig_0_3z[1:0], celloutsig_0_2z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_5z = 5'h00;
    else if (!out_data[96]) celloutsig_0_5z = { in_data[42:39], celloutsig_0_2z };
  always_latch
    if (clkin_data[96]) celloutsig_1_4z = 8'h00;
    else if (clkin_data[0]) celloutsig_1_4z = in_data[119:112];
  assign celloutsig_0_32z = ~((celloutsig_0_27z & celloutsig_0_7z) | (celloutsig_0_28z & celloutsig_0_7z));
  assign celloutsig_0_33z = ~((celloutsig_0_24z & celloutsig_0_16z) | (celloutsig_0_32z & celloutsig_0_2z));
  assign celloutsig_0_49z = ~((celloutsig_0_5z[2] & celloutsig_0_2z) | (celloutsig_0_29z & celloutsig_0_43z[4]));
  assign celloutsig_1_5z = ~((celloutsig_1_4z[7] & celloutsig_1_4z[1]) | (celloutsig_1_4z[6] & celloutsig_1_4z[6]));
  assign celloutsig_1_10z = ~((celloutsig_1_4z[7] & celloutsig_1_9z) | (celloutsig_1_3z & celloutsig_1_4z[0]));
  assign celloutsig_0_7z = ~((celloutsig_0_5z[3] & celloutsig_0_0z) | (celloutsig_0_2z & celloutsig_0_6z));
  assign celloutsig_0_1z = ~((in_data[47] & in_data[55]) | (celloutsig_0_0z & celloutsig_0_0z));
  assign celloutsig_0_20z = ~((celloutsig_0_17z & celloutsig_0_3z[2]) | (celloutsig_0_1z & celloutsig_0_6z));
  assign celloutsig_0_28z = ~((celloutsig_0_20z & celloutsig_0_0z) | (celloutsig_0_14z & celloutsig_0_10z));
  assign { celloutsig_1_7z[2], celloutsig_1_7z[0], celloutsig_1_7z[1] } = { celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_3z } ~^ { celloutsig_1_0z[7], celloutsig_1_0z[5], celloutsig_1_0z[6] };
  assign { celloutsig_1_11z[2], celloutsig_1_11z[0], celloutsig_1_11z[1] } = { celloutsig_1_7z[2], celloutsig_1_7z[0], celloutsig_1_7z[1] } ~^ { celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_3z };
  assign { out_data[101], celloutsig_1_19z[16], out_data[98], celloutsig_1_19z[2], out_data[97], celloutsig_1_19z[1], out_data[96], celloutsig_1_19z[0], celloutsig_1_19z[17], out_data[100:99], out_data[102], celloutsig_1_19z[15:6], celloutsig_1_19z[52:50], out_data[127:103] } = { celloutsig_1_12z, celloutsig_1_9z, celloutsig_1_8z[3:2], celloutsig_1_8z[2:1], celloutsig_1_8z[1:0], celloutsig_1_8z[0], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_0z[10:1], in_data[163:136] } ~^ { celloutsig_1_18z[1], celloutsig_1_0z[10], celloutsig_1_11z[2], celloutsig_1_7z[2], celloutsig_1_11z[1], celloutsig_1_7z[1], celloutsig_1_11z[0], celloutsig_1_7z[0], celloutsig_1_9z, celloutsig_1_18z[0], celloutsig_1_0z[2], celloutsig_1_18z[2], celloutsig_1_0z[9:0], celloutsig_1_4z[5:4], celloutsig_1_6z, celloutsig_1_12z, celloutsig_1_18z[8:3] };
  assign celloutsig_1_11z[3] = celloutsig_1_0z[2];
  assign { celloutsig_1_19z[49:18], celloutsig_1_19z[5:3] } = { out_data[127:96], celloutsig_1_0z[0], celloutsig_1_3z, celloutsig_1_8z[3] };
  assign celloutsig_1_7z[5:3] = 3'h7;
  assign { out_data[136:128], out_data[35:32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_0_67z, celloutsig_0_68z };
endmodule
