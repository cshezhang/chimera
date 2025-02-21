/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [4:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [10:0] celloutsig_0_11z;
  wire [33:0] celloutsig_0_12z;
  wire [4:0] celloutsig_0_13z;
  wire [7:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [2:0] celloutsig_0_19z;
  reg [16:0] celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire [15:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [7:0] celloutsig_0_25z;
  wire [9:0] celloutsig_0_26z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [2:0] celloutsig_0_31z;
  wire [11:0] celloutsig_0_32z;
  wire [2:0] celloutsig_0_34z;
  wire [10:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [6:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire [10:0] celloutsig_0_53z;
  wire celloutsig_0_54z;
  wire [4:0] celloutsig_0_55z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [6:0] celloutsig_0_7z;
  wire [8:0] celloutsig_0_8z;
  wire [5:0] celloutsig_0_9z;
  wire [8:0] celloutsig_1_0z;
  wire [15:0] celloutsig_1_11z;
  wire celloutsig_1_15z;
  wire [3:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [6:0] celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire [21:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [13:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [10:0] celloutsig_1_7z;
  wire [6:0] celloutsig_1_8z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = in_data[46] | ~(in_data[5]);
  assign celloutsig_0_40z = celloutsig_0_30z | ~(celloutsig_0_34z[0]);
  assign celloutsig_0_5z = celloutsig_0_3z | ~(celloutsig_0_3z);
  assign celloutsig_1_4z = in_data[140] | ~(celloutsig_1_1z[1]);
  assign celloutsig_0_6z = celloutsig_0_3z | ~(celloutsig_0_4z);
  assign celloutsig_0_18z = celloutsig_0_2z | ~(celloutsig_0_12z[19]);
  assign celloutsig_0_30z = celloutsig_0_13z[0] | ~(celloutsig_0_12z[23]);
  assign celloutsig_0_0z = in_data[36:32] & in_data[7:3];
  assign celloutsig_0_55z = celloutsig_0_38z[7:3] & { celloutsig_0_53z[9:6], celloutsig_0_18z };
  assign celloutsig_1_0z = in_data[126:118] & in_data[183:175];
  assign celloutsig_1_1z = celloutsig_1_0z[7:1] & celloutsig_1_0z[7:1];
  assign celloutsig_1_8z = celloutsig_1_3z[8:2] & celloutsig_1_7z[9:3];
  assign celloutsig_1_16z = { celloutsig_1_11z[12], celloutsig_1_6z, celloutsig_1_15z, celloutsig_1_6z } & celloutsig_1_0z[6:3];
  assign celloutsig_0_13z = { celloutsig_0_7z[6:3], celloutsig_0_5z } & celloutsig_0_9z[5:1];
  assign celloutsig_0_19z = celloutsig_0_9z[2:0] & { celloutsig_0_11z[4:3], celloutsig_0_15z };
  assign celloutsig_0_22z = { celloutsig_0_1z[11:10], celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_16z } & { in_data[32:23], celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_18z, celloutsig_0_18z };
  assign celloutsig_0_26z = { celloutsig_0_18z, celloutsig_0_23z, celloutsig_0_25z } & celloutsig_0_1z[11:2];
  assign celloutsig_0_31z = { celloutsig_0_26z[4:3], celloutsig_0_17z } & celloutsig_0_14z[5:3];
  assign celloutsig_0_53z = { celloutsig_0_48z[0], celloutsig_0_26z } * celloutsig_0_12z[11:1];
  assign celloutsig_1_7z = celloutsig_1_3z[20:10] * { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_1_11z = { celloutsig_1_8z[1:0], celloutsig_1_5z[13:5], celloutsig_1_5z[13:10], celloutsig_1_5z[0] } * in_data[129:114];
  assign celloutsig_0_8z = { celloutsig_0_7z[4:2], celloutsig_0_3z, celloutsig_0_0z } * { in_data[17:11], celloutsig_0_6z, celloutsig_0_4z };
  assign celloutsig_0_9z = { celloutsig_0_8z[4:0], celloutsig_0_3z } * { celloutsig_0_8z[5:1], celloutsig_0_3z };
  assign celloutsig_0_25z = { celloutsig_0_22z[8:2], celloutsig_0_23z } * { celloutsig_0_19z[2:1], celloutsig_0_24z, celloutsig_0_13z };
  assign celloutsig_0_34z = { celloutsig_0_1z[16], celloutsig_0_5z, celloutsig_0_4z } * celloutsig_0_14z[4:2];
  assign celloutsig_0_38z = ~ celloutsig_0_32z[11:1];
  assign celloutsig_0_48z = ~ celloutsig_0_25z[7:1];
  assign celloutsig_1_2z = ~ celloutsig_1_0z[4:0];
  assign celloutsig_1_3z = ~ { in_data[185:171], celloutsig_1_1z };
  assign celloutsig_0_7z = ~ { celloutsig_0_1z[12], celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_0_11z = ~ { celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_0_14z = ~ { in_data[45:39], celloutsig_0_2z };
  assign celloutsig_0_20z = ~ celloutsig_0_12z[22:18];
  assign celloutsig_0_32z = ~ { celloutsig_0_12z[33:27], celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_31z };
  assign celloutsig_0_4z = ~^ in_data[17:15];
  assign celloutsig_0_54z = ~^ { celloutsig_0_8z[5:0], celloutsig_0_17z, celloutsig_0_40z };
  assign celloutsig_1_6z = ~^ celloutsig_1_3z[14:8];
  assign celloutsig_1_19z = ~^ in_data[172:163];
  assign celloutsig_0_10z = ~^ { celloutsig_0_9z[0], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_0_16z = ~^ { celloutsig_0_1z[4:3], celloutsig_0_10z };
  assign celloutsig_0_17z = ~^ { celloutsig_0_9z[3:0], celloutsig_0_10z };
  assign celloutsig_0_24z = ~^ { celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_13z };
  assign celloutsig_0_2z = ~^ celloutsig_0_1z[13:8];
  assign celloutsig_1_15z = ^ celloutsig_1_7z[10:6];
  assign celloutsig_1_18z = ^ { celloutsig_1_16z[1:0], celloutsig_1_8z };
  assign celloutsig_0_15z = ^ { celloutsig_0_8z[6:4], celloutsig_0_6z };
  assign celloutsig_0_23z = ^ { celloutsig_0_18z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_22z, celloutsig_0_4z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_1z = 17'h00000;
    else if (clkin_data[0]) celloutsig_0_1z = { in_data[58:47], celloutsig_0_0z };
  assign { celloutsig_0_12z[8:0], celloutsig_0_12z[31], celloutsig_0_12z[24], celloutsig_0_12z[30], celloutsig_0_12z[23], celloutsig_0_12z[29], celloutsig_0_12z[22], celloutsig_0_12z[28], celloutsig_0_12z[21:20], celloutsig_0_12z[11], celloutsig_0_12z[27], celloutsig_0_12z[10], celloutsig_0_12z[19], celloutsig_0_12z[26], celloutsig_0_12z[9], celloutsig_0_12z[18], celloutsig_0_12z[25], celloutsig_0_12z[16], celloutsig_0_12z[17], celloutsig_0_12z[32], celloutsig_0_12z[33] } = { celloutsig_0_8z, celloutsig_0_7z[6], celloutsig_0_7z[6:5], celloutsig_0_7z[5:4], celloutsig_0_7z[4:3], celloutsig_0_7z[3:2], celloutsig_0_7z[2], celloutsig_0_7z[2:1], celloutsig_0_7z[1], celloutsig_0_7z[1:0], celloutsig_0_7z[0], celloutsig_0_7z[0], celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_2z, in_data[14] } & { celloutsig_0_8z[5:0], celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_9z[3], celloutsig_0_7z[2], celloutsig_0_9z[2], celloutsig_0_7z[1], celloutsig_0_9z[1], celloutsig_0_7z[0], celloutsig_0_7z[6], celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_8z[8], celloutsig_0_7z[5], celloutsig_0_8z[7], celloutsig_0_7z[6], celloutsig_0_7z[4], celloutsig_0_8z[6], celloutsig_0_7z[5], celloutsig_0_7z[3], celloutsig_0_7z[3], celloutsig_0_7z[4], celloutsig_0_9z[4], celloutsig_0_9z[5] };
  assign { celloutsig_1_5z[9:5], celloutsig_1_5z[13:10], celloutsig_1_5z[0] } = ~ { celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_0_12z[15:12] = celloutsig_0_12z[24:21];
  assign celloutsig_1_5z[4:1] = celloutsig_1_5z[13:10];
  assign { out_data[128], out_data[96], out_data[32], out_data[4:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_54z, celloutsig_0_55z };
endmodule
