/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] celloutsig_0_0z;
  wire [19:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [2:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [17:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  reg [12:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [17:0] celloutsig_0_22z;
  wire [5:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  reg [2:0] celloutsig_0_26z;
  wire [7:0] celloutsig_0_27z;
  wire [4:0] celloutsig_0_28z;
  wire [4:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [2:0] celloutsig_0_30z;
  wire [8:0] celloutsig_0_31z;
  wire [5:0] celloutsig_0_32z;
  wire [13:0] celloutsig_0_33z;
  wire [3:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire [4:0] celloutsig_0_57z;
  reg [2:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [2:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire [3:0] celloutsig_1_11z;
  wire celloutsig_1_15z;
  wire [3:0] celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire [14:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire [10:0] celloutsig_1_4z;
  wire [15:0] celloutsig_1_6z;
  wire [6:0] celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_55z = celloutsig_0_24z ? celloutsig_0_21z : celloutsig_0_37z;
  assign celloutsig_0_9z = celloutsig_0_2z ? in_data[79] : celloutsig_0_3z;
  assign celloutsig_0_15z = in_data[58] ? celloutsig_0_2z : celloutsig_0_4z;
  assign celloutsig_0_24z = celloutsig_0_19z[3] ? celloutsig_0_16z : celloutsig_0_17z[6];
  assign celloutsig_1_9z = ~((celloutsig_1_2z | celloutsig_1_4z[2]) & (celloutsig_1_3z[1] | celloutsig_1_4z[2]));
  assign celloutsig_0_21z = ~((celloutsig_0_20z | celloutsig_0_6z) & (celloutsig_0_8z[0] | celloutsig_0_0z[1]));
  assign celloutsig_0_32z = { celloutsig_0_22z[9:8], celloutsig_0_18z, celloutsig_0_26z } + celloutsig_0_1z[10:5];
  assign celloutsig_1_3z = { in_data[146:145], celloutsig_1_0z } + { celloutsig_1_0z[2], celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_11z = celloutsig_1_7z[5:2] + { celloutsig_1_3z[2:0], celloutsig_1_2z };
  assign celloutsig_1_19z = celloutsig_1_6z[14:8] + in_data[106:100];
  assign celloutsig_0_30z = in_data[66:64] + { celloutsig_0_15z, celloutsig_0_25z, celloutsig_0_25z };
  assign celloutsig_0_19z = { celloutsig_0_12z[2], celloutsig_0_0z } / { 1'h1, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_9z };
  assign celloutsig_0_31z = { celloutsig_0_29z[3:2], celloutsig_0_16z, celloutsig_0_28z, celloutsig_0_13z } / { 1'h1, celloutsig_0_1z[7:2], celloutsig_0_4z, in_data[0] };
  assign celloutsig_0_39z = { celloutsig_0_29z[3], celloutsig_0_0z, celloutsig_0_12z } === { celloutsig_0_17z[3], celloutsig_0_23z };
  assign celloutsig_1_15z = { celloutsig_1_11z[1:0], celloutsig_1_11z } === celloutsig_1_7z[6:1];
  assign celloutsig_0_3z = in_data[25:21] >= celloutsig_0_1z[10:6];
  assign celloutsig_0_37z = { celloutsig_0_28z[2:0], celloutsig_0_35z, celloutsig_0_35z, celloutsig_0_11z } >= { celloutsig_0_23z[2], celloutsig_0_2z, celloutsig_0_25z, celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_32z };
  assign celloutsig_0_50z = { celloutsig_0_3z, celloutsig_0_25z, celloutsig_0_9z, celloutsig_0_33z } >= { celloutsig_0_27z[6], celloutsig_0_47z, celloutsig_0_13z, celloutsig_0_39z, celloutsig_0_48z, celloutsig_0_36z, celloutsig_0_13z, celloutsig_0_18z, celloutsig_0_48z, celloutsig_0_30z, celloutsig_0_29z };
  assign celloutsig_1_2z = in_data[160:150] > { in_data[167:160], celloutsig_1_0z };
  assign celloutsig_0_11z = { celloutsig_0_1z[7], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_2z } > { celloutsig_0_10z[18:9], celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_0_2z = celloutsig_0_1z[10:2] > in_data[48:40];
  assign celloutsig_0_36z = { celloutsig_0_33z[7:3], celloutsig_0_7z, celloutsig_0_18z } && celloutsig_0_31z[8:2];
  assign celloutsig_0_56z = { in_data[60:58], celloutsig_0_50z } && { celloutsig_0_28z[3:1], celloutsig_0_55z };
  assign celloutsig_0_20z = { celloutsig_0_17z[8:7], celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_14z } && { celloutsig_0_1z[12:3], celloutsig_0_13z };
  assign celloutsig_0_48z = celloutsig_0_25z & ~(celloutsig_0_2z);
  assign celloutsig_0_33z = { celloutsig_0_22z[12], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_29z, celloutsig_0_30z, celloutsig_0_5z } * { celloutsig_0_22z[9:6], celloutsig_0_32z, celloutsig_0_12z, celloutsig_0_11z };
  assign celloutsig_1_6z = { celloutsig_1_4z[10:2], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z } * in_data[137:122];
  assign celloutsig_0_16z = { celloutsig_0_10z[7:6], celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_11z } != in_data[38:26];
  assign celloutsig_0_25z = { celloutsig_0_10z[15:3], celloutsig_0_2z, celloutsig_0_8z } != { celloutsig_0_17z[12:5], celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_5z };
  assign celloutsig_0_0z = - in_data[22:20];
  assign celloutsig_0_57z = - { celloutsig_0_29z[4:2], celloutsig_0_6z, celloutsig_0_48z };
  assign celloutsig_1_0z = - in_data[174:172];
  assign celloutsig_0_10z = - { in_data[19:4], celloutsig_0_7z, celloutsig_0_8z };
  assign celloutsig_0_28z = - { celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_7z = celloutsig_0_4z & in_data[27];
  assign celloutsig_0_13z = in_data[14] & celloutsig_0_4z;
  assign celloutsig_0_4z = | { celloutsig_0_2z, celloutsig_0_1z[5:1] };
  assign celloutsig_0_6z = | in_data[34:28];
  assign celloutsig_0_47z = ^ celloutsig_0_33z[7:0];
  assign celloutsig_0_18z = ^ { in_data[26:22], celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_1_1z = { in_data[130:122], celloutsig_1_0z, celloutsig_1_0z } << { in_data[174:163], celloutsig_1_0z };
  assign celloutsig_1_7z = in_data[145:139] << { celloutsig_1_1z[11], celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_0_22z = { in_data[33:20], celloutsig_0_11z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_9z } <<< { in_data[59:45], celloutsig_0_16z, celloutsig_0_20z, celloutsig_0_16z };
  assign celloutsig_0_23z = { celloutsig_0_1z[3], celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_12z } <<< { celloutsig_0_5z[1:0], celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_0_27z = { celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_15z } <<< { celloutsig_0_15z, celloutsig_0_23z, celloutsig_0_14z };
  assign celloutsig_0_35z = celloutsig_0_19z >>> celloutsig_0_10z[18:15];
  assign celloutsig_1_4z = celloutsig_1_1z[11:1] >>> { in_data[151:146], celloutsig_1_3z };
  assign celloutsig_1_18z = { celloutsig_1_9z, celloutsig_1_0z } >>> { in_data[153:151], celloutsig_1_15z };
  assign celloutsig_0_12z = { celloutsig_0_10z[17:16], celloutsig_0_2z } >>> in_data[64:62];
  assign celloutsig_0_17z = { celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_6z } >>> { in_data[90:80], celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_8z = { celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_6z } ~^ celloutsig_0_5z;
  assign celloutsig_0_29z = { celloutsig_0_8z[2:1], celloutsig_0_26z } ~^ { celloutsig_0_17z[8:5], celloutsig_0_7z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_5z = 3'h0;
    else if (!clkin_data[0]) celloutsig_0_5z = in_data[9:7];
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_1z = 13'h0000;
    else if (clkin_data[0]) celloutsig_0_1z = { in_data[65:56], celloutsig_0_0z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_26z = 3'h0;
    else if (!clkin_data[0]) celloutsig_0_26z = { celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_14z = ~((celloutsig_0_4z & celloutsig_0_2z) | (celloutsig_0_13z & celloutsig_0_2z));
  assign { out_data[131:128], out_data[102:96], out_data[32], out_data[4:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_56z, celloutsig_0_57z };
endmodule
