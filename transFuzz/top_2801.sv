/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  reg [10:0] celloutsig_0_16z;
  wire [7:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  reg [12:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [6:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [2:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [5:0] celloutsig_0_41z;
  wire [2:0] celloutsig_0_44z;
  wire [5:0] celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_53z;
  wire [6:0] celloutsig_0_55z;
  wire celloutsig_0_5z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_6z;
  wire [5:0] celloutsig_0_70z;
  wire celloutsig_0_71z;
  wire celloutsig_0_75z;
  wire celloutsig_0_76z;
  wire celloutsig_0_78z;
  wire celloutsig_0_79z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [15:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [9:0] celloutsig_1_12z;
  wire [9:0] celloutsig_1_13z;
  wire celloutsig_1_17z;
  wire [7:0] celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [6:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_6z = celloutsig_0_5z ? celloutsig_0_3z : celloutsig_0_4z;
  assign celloutsig_0_62z = celloutsig_0_15z ? celloutsig_0_4z : celloutsig_0_47z[0];
  assign celloutsig_0_78z = celloutsig_0_27z ? celloutsig_0_51z : celloutsig_0_29z;
  assign celloutsig_1_17z = celloutsig_1_9z ? celloutsig_1_13z[9] : celloutsig_1_13z[4];
  assign celloutsig_0_1z = celloutsig_0_0z ? in_data[9] : celloutsig_0_0z;
  assign celloutsig_0_12z = celloutsig_0_10z ? celloutsig_0_11z : celloutsig_0_1z;
  assign celloutsig_0_28z = celloutsig_0_4z ? celloutsig_0_11z : celloutsig_0_17z[7];
  assign celloutsig_0_29z = celloutsig_0_18z ? celloutsig_0_1z : celloutsig_0_6z;
  assign celloutsig_0_36z = ~(celloutsig_0_5z & celloutsig_0_13z);
  assign celloutsig_0_40z = ~(celloutsig_0_3z & celloutsig_0_29z);
  assign celloutsig_0_63z = ~(celloutsig_0_5z & celloutsig_0_31z[1]);
  assign celloutsig_0_8z = ~(celloutsig_0_2z & celloutsig_0_7z);
  assign celloutsig_1_11z = ~(celloutsig_1_8z & celloutsig_1_9z);
  assign celloutsig_0_14z = ~(celloutsig_0_1z & celloutsig_0_4z);
  assign celloutsig_0_26z = ~(celloutsig_0_25z & celloutsig_0_13z);
  assign celloutsig_0_30z = ~(celloutsig_0_9z[13] & celloutsig_0_9z[5]);
  assign celloutsig_0_39z = ~(celloutsig_0_14z | celloutsig_0_19z);
  assign celloutsig_0_7z = ~(celloutsig_0_5z | celloutsig_0_5z);
  assign celloutsig_1_6z = ~(celloutsig_1_0z | celloutsig_1_4z);
  assign celloutsig_1_9z = ~(celloutsig_1_5z | celloutsig_1_0z);
  assign celloutsig_0_20z = ~(celloutsig_0_1z | celloutsig_0_19z);
  assign celloutsig_0_25z = ~(celloutsig_0_9z[10] | celloutsig_0_23z);
  assign celloutsig_0_55z = { celloutsig_0_9z[3], celloutsig_0_22z, celloutsig_0_12z, celloutsig_0_44z, celloutsig_0_5z } + { celloutsig_0_47z[3:0], celloutsig_0_53z, celloutsig_0_39z, celloutsig_0_51z };
  assign celloutsig_0_70z = { celloutsig_0_31z[2:1], celloutsig_0_26z, celloutsig_0_14z, celloutsig_0_48z, celloutsig_0_63z } + { celloutsig_0_55z[4:1], celloutsig_0_62z, celloutsig_0_40z };
  assign celloutsig_1_7z = in_data[188:182] + { in_data[150:145], celloutsig_1_0z };
  assign celloutsig_0_9z = { in_data[44:30], celloutsig_0_2z } + { in_data[77:72], celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_1_12z = { celloutsig_1_7z[6:2], celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_2z } + { in_data[161:154], celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_0_17z = { in_data[87:85], celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_1z } + celloutsig_0_9z[14:7];
  assign celloutsig_0_4z = { in_data[37:22], celloutsig_0_2z } >= { in_data[43:42], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_0_48z = { celloutsig_0_41z[3:2], celloutsig_0_19z, celloutsig_0_12z } >= in_data[20:17];
  assign celloutsig_0_79z = { celloutsig_0_75z, celloutsig_0_28z, celloutsig_0_70z, celloutsig_0_34z, celloutsig_0_14z } >= { celloutsig_0_39z, celloutsig_0_44z, celloutsig_0_71z, celloutsig_0_22z, celloutsig_0_29z, celloutsig_0_0z, celloutsig_0_22z, celloutsig_0_76z };
  assign celloutsig_1_0z = in_data[118:116] >= in_data[108:106];
  assign celloutsig_1_1z = { in_data[162:161], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } >= in_data[111:104];
  assign celloutsig_1_8z = in_data[126:109] >= { celloutsig_1_7z[6], celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_71z = celloutsig_0_53z & ~(celloutsig_0_30z);
  assign celloutsig_0_75z = celloutsig_0_62z & ~(celloutsig_0_36z);
  assign celloutsig_0_10z = celloutsig_0_3z & ~(celloutsig_0_2z);
  assign celloutsig_0_15z = celloutsig_0_10z & ~(celloutsig_0_3z);
  assign celloutsig_0_18z = celloutsig_0_13z & ~(celloutsig_0_14z);
  assign celloutsig_0_22z = celloutsig_0_3z & ~(celloutsig_0_5z);
  assign celloutsig_0_23z = celloutsig_0_16z[6] & ~(celloutsig_0_2z);
  assign celloutsig_0_41z = { celloutsig_0_28z, celloutsig_0_10z, celloutsig_0_32z, celloutsig_0_22z, celloutsig_0_3z, celloutsig_0_8z } * { celloutsig_0_21z[7:4], celloutsig_0_28z, celloutsig_0_6z };
  assign celloutsig_0_44z = { celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_25z } * { celloutsig_0_14z, celloutsig_0_32z, celloutsig_0_7z };
  assign celloutsig_0_47z = { celloutsig_0_24z[1:0], celloutsig_0_1z, celloutsig_0_39z, celloutsig_0_6z, celloutsig_0_38z } * { celloutsig_0_17z[3], celloutsig_0_18z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_23z, celloutsig_0_5z };
  assign celloutsig_1_13z = { celloutsig_1_7z[5:0], celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_4z } * { celloutsig_1_7z[5:1], celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_1_18z = { celloutsig_1_7z, celloutsig_1_2z } * in_data[159:152];
  assign celloutsig_1_19z = celloutsig_1_12z[9:3] * { celloutsig_1_13z[3:1], celloutsig_1_11z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_17z };
  assign celloutsig_0_24z = { celloutsig_0_21z[8:5], celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_7z } * { celloutsig_0_22z, celloutsig_0_20z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_31z = { celloutsig_0_26z, celloutsig_0_10z, celloutsig_0_26z } * { celloutsig_0_27z, celloutsig_0_23z, celloutsig_0_11z };
  assign celloutsig_0_0z = | in_data[63:50];
  assign celloutsig_0_38z = | { celloutsig_0_21z[3:0], celloutsig_0_7z, celloutsig_0_29z, celloutsig_0_37z };
  assign celloutsig_1_2z = | in_data[175:166];
  assign celloutsig_0_13z = | { celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_5z };
  assign celloutsig_0_19z = | { celloutsig_0_16z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_2z };
  assign celloutsig_0_32z = | { celloutsig_0_23z, celloutsig_0_6z, celloutsig_0_26z, celloutsig_0_18z, celloutsig_0_20z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_18z, celloutsig_0_22z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_26z, celloutsig_0_27z };
  assign celloutsig_0_34z = ~^ { celloutsig_0_17z[5:2], celloutsig_0_18z };
  assign celloutsig_0_37z = ~^ { celloutsig_0_27z, celloutsig_0_28z, celloutsig_0_15z };
  assign celloutsig_0_5z = ~^ { in_data[35], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_53z = ~^ { in_data[77:52], celloutsig_0_29z };
  assign celloutsig_1_4z = ~^ { in_data[128:119], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_5z = ~^ { in_data[184:175], celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_2z };
  assign celloutsig_0_11z = ~^ { in_data[57:39], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_7z };
  assign celloutsig_0_2z = ~^ { in_data[85:74], celloutsig_0_0z };
  assign celloutsig_0_27z = ~^ { in_data[42:22], celloutsig_0_9z, celloutsig_0_18z };
  assign celloutsig_0_3z = ~^ { celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z };
  always_latch
    if (clkin_data[32]) celloutsig_0_16z = 11'h000;
    else if (!celloutsig_1_19z[0]) celloutsig_0_16z = { celloutsig_0_9z[10:2], celloutsig_0_8z, celloutsig_0_3z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_21z = 13'h0000;
    else if (celloutsig_1_19z[0]) celloutsig_0_21z = { celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_13z };
  assign celloutsig_0_51z = ~((celloutsig_0_6z & celloutsig_0_10z) | (celloutsig_0_27z & celloutsig_0_22z));
  assign celloutsig_0_76z = ~((celloutsig_0_1z & celloutsig_0_29z) | (celloutsig_0_39z & celloutsig_0_25z));
  assign celloutsig_1_10z = ~((celloutsig_1_7z[5] & celloutsig_1_8z) | (celloutsig_1_0z & celloutsig_1_6z));
  assign { out_data[135:128], out_data[102:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_78z, celloutsig_0_79z };
endmodule
