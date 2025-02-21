/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  reg [15:0] celloutsig_0_13z;
  wire [12:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [9:0] celloutsig_0_16z;
  wire [16:0] celloutsig_0_17z;
  wire [12:0] celloutsig_0_18z;
  wire [2:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  reg [6:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [11:0] celloutsig_0_23z;
  wire [12:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [29:0] celloutsig_0_2z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [12:0] celloutsig_0_35z;
  wire celloutsig_0_38z;
  wire [2:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [9:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [14:0] celloutsig_0_50z;
  wire [16:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [10:0] celloutsig_0_8z;
  wire [8:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [18:0] celloutsig_1_14z;
  wire [3:0] celloutsig_1_15z;
  wire [35:0] celloutsig_1_17z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [3:0] celloutsig_1_1z;
  wire [5:0] celloutsig_1_2z;
  wire [9:0] celloutsig_1_3z;
  wire [14:0] celloutsig_1_5z;
  wire [8:0] celloutsig_1_6z;
  wire [3:0] celloutsig_1_7z;
  wire [6:0] celloutsig_1_8z;
  wire [19:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = celloutsig_0_2z[19:17] * { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_35z = celloutsig_0_5z[16:4] * { celloutsig_0_17z[12:3], celloutsig_0_26z, celloutsig_0_32z, celloutsig_0_32z };
  assign celloutsig_0_49z = { celloutsig_0_25z[8:4], celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_34z, celloutsig_0_33z, celloutsig_0_0z } * { celloutsig_0_25z[9:5], celloutsig_0_40z, celloutsig_0_28z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_0_50z = { celloutsig_0_18z[12:1], celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_38z } * { celloutsig_0_3z[2], celloutsig_0_34z, celloutsig_0_35z };
  assign celloutsig_0_5z = { in_data[11:0], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_3z } * { celloutsig_0_2z[10:7], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_1_1z = { in_data[183:181], celloutsig_1_0z } * { in_data[159:158], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_2z = { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z } * in_data[165:160];
  assign celloutsig_1_3z = { celloutsig_1_2z[5:1], celloutsig_1_1z, celloutsig_1_0z } * { in_data[125:118], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_5z = { celloutsig_1_3z[4], celloutsig_1_3z, celloutsig_1_1z } * { celloutsig_1_2z[4:0], celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_6z = in_data[118:110] * celloutsig_1_5z[14:6];
  assign celloutsig_1_7z = celloutsig_1_2z[3:0] * celloutsig_1_6z[8:5];
  assign celloutsig_1_8z[6:1] = celloutsig_1_5z[13:7] * { celloutsig_1_3z[3:2], celloutsig_1_7z };
  assign celloutsig_1_9z = { celloutsig_1_3z[4:1], celloutsig_1_2z, celloutsig_1_3z } * { celloutsig_1_8z[6:4], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_14z = { in_data[170:153], celloutsig_1_0z } * in_data[157:139];
  assign celloutsig_1_15z = celloutsig_1_3z[9:6] * celloutsig_1_6z[3:0];
  assign celloutsig_1_17z = { celloutsig_1_8z[2], celloutsig_1_6z, celloutsig_1_15z, celloutsig_1_8z[6:1], 1'h0, celloutsig_1_6z, celloutsig_1_2z } * { in_data[121:105], celloutsig_1_14z };
  assign celloutsig_1_18z = celloutsig_1_9z[13:10] * celloutsig_1_3z[3:0];
  assign celloutsig_0_8z = { celloutsig_0_2z[13:4], celloutsig_0_1z } * in_data[65:55];
  assign celloutsig_0_9z = { celloutsig_0_2z[6:3], celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_7z } * { celloutsig_0_2z[19:17], celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_14z = { in_data[79:77], celloutsig_0_9z, celloutsig_0_0z } * celloutsig_0_13z[13:1];
  assign celloutsig_0_16z = { celloutsig_0_8z[8:1], celloutsig_0_12z, celloutsig_0_11z } * in_data[29:20];
  assign celloutsig_0_17z = { celloutsig_0_8z[9:3], celloutsig_0_9z, celloutsig_0_10z } * in_data[41:25];
  assign celloutsig_0_18z = celloutsig_0_17z[14:2] * { celloutsig_0_13z[15:5], celloutsig_0_1z, celloutsig_0_15z };
  assign celloutsig_0_19z = { celloutsig_0_9z[8], celloutsig_0_1z, celloutsig_0_15z } * celloutsig_0_2z[15:13];
  assign celloutsig_0_21z = celloutsig_0_3z * { celloutsig_0_9z[6], celloutsig_0_11z, celloutsig_0_11z };
  assign celloutsig_0_2z = { in_data[45:18], celloutsig_0_1z, celloutsig_0_1z } * { in_data[72:47], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_23z = { celloutsig_0_14z[11:1], celloutsig_0_7z } * { in_data[79:74], celloutsig_0_11z, celloutsig_0_21z, celloutsig_0_1z, celloutsig_0_11z };
  assign celloutsig_0_25z = { in_data[3:0], celloutsig_0_20z, celloutsig_0_11z, celloutsig_0_0z } * { in_data[29:27], celloutsig_0_9z, celloutsig_0_1z };
  assign celloutsig_0_0z = in_data[26:21] != in_data[44:39];
  assign celloutsig_0_33z = { celloutsig_0_23z[7:4], celloutsig_0_8z, celloutsig_0_21z } != { celloutsig_0_20z[6], celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_0z };
  assign celloutsig_0_34z = { celloutsig_0_23z[7:2], celloutsig_0_6z, celloutsig_0_29z } != { celloutsig_0_20z, celloutsig_0_26z };
  assign celloutsig_0_38z = { celloutsig_0_5z[13], celloutsig_0_19z } != { celloutsig_0_3z[1:0], celloutsig_0_0z, celloutsig_0_22z };
  assign celloutsig_0_40z = celloutsig_0_19z != celloutsig_0_20z[6:4];
  assign celloutsig_0_4z = { celloutsig_0_2z[1:0], celloutsig_0_1z } != in_data[67:65];
  assign celloutsig_1_0z = in_data[172:167] != in_data[176:171];
  assign celloutsig_0_6z = { celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_3z } != { celloutsig_0_2z[11:5], celloutsig_0_0z };
  assign celloutsig_1_19z = celloutsig_1_17z[24:19] != { celloutsig_1_2z[5:1], celloutsig_1_0z };
  assign celloutsig_0_7z = celloutsig_0_2z[22:7] != { in_data[85:73], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_10z = { celloutsig_0_8z[6:4], celloutsig_0_0z } != { celloutsig_0_2z[14:13], celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_11z = { celloutsig_0_8z[10:1], celloutsig_0_8z } != { celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_9z };
  assign celloutsig_0_12z = celloutsig_0_3z != { celloutsig_0_2z[23:22], celloutsig_0_11z };
  assign celloutsig_0_1z = in_data[23:21] != in_data[17:15];
  assign celloutsig_0_15z = { celloutsig_0_7z, celloutsig_0_9z } != celloutsig_0_5z[12:3];
  assign celloutsig_0_22z = { celloutsig_0_6z, celloutsig_0_13z } != { celloutsig_0_18z[12:2], celloutsig_0_21z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_26z = { celloutsig_0_13z[9:1], celloutsig_0_4z, celloutsig_0_8z } != { celloutsig_0_2z[19:12], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_20z };
  assign celloutsig_0_28z = in_data[72:68] != celloutsig_0_16z[5:1];
  assign celloutsig_0_29z = celloutsig_0_9z[7:0] != celloutsig_0_14z[8:1];
  assign celloutsig_0_32z = celloutsig_0_8z[9:3] != celloutsig_0_20z;
  always_latch
    if (!celloutsig_1_18z[0]) celloutsig_0_13z = 16'h0000;
    else if (clkin_data[0]) celloutsig_0_13z = in_data[36:21];
  always_latch
    if (celloutsig_1_18z[0]) celloutsig_0_20z = 7'h00;
    else if (clkin_data[0]) celloutsig_0_20z = celloutsig_0_14z[7:1];
  assign celloutsig_1_8z[0] = 1'h0;
  assign { out_data[131:128], out_data[96], out_data[41:32], out_data[14:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_49z, celloutsig_0_50z };
endmodule
