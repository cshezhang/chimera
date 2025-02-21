/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [15:0] celloutsig_0_11z;
  wire [8:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [4:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [10:0] celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [3:0] celloutsig_0_26z;
  wire [19:0] celloutsig_0_27z;
  reg [16:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire [5:0] celloutsig_0_31z;
  wire [6:0] celloutsig_0_32z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [4:0] celloutsig_0_41z;
  wire [7:0] celloutsig_0_46z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [7:0] celloutsig_0_54z;
  wire [6:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_75z;
  wire [5:0] celloutsig_0_8z;
  wire celloutsig_0_97z;
  wire [6:0] celloutsig_0_98z;
  wire [6:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [2:0] celloutsig_1_11z;
  wire [2:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [9:0] celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire [4:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [8:0] celloutsig_1_2z;
  reg [19:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [23:0] celloutsig_1_6z;
  reg [13:0] celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_75z = ~(celloutsig_0_15z & celloutsig_0_0z);
  assign celloutsig_1_4z = ~(celloutsig_1_0z & celloutsig_1_3z[11]);
  assign celloutsig_0_15z = ~(celloutsig_0_11z[10] & celloutsig_0_11z[14]);
  assign celloutsig_0_17z = ~(celloutsig_0_2z & celloutsig_0_10z);
  assign celloutsig_0_22z = ~(celloutsig_0_16z & celloutsig_0_11z[9]);
  assign celloutsig_0_23z = ~(celloutsig_0_8z[3] & celloutsig_0_4z);
  assign celloutsig_0_2z = ~(celloutsig_0_1z & celloutsig_0_0z);
  assign celloutsig_0_39z = !(celloutsig_0_8z[1] ? celloutsig_0_17z : celloutsig_0_31z[4]);
  assign celloutsig_0_4z = !(celloutsig_0_3z ? celloutsig_0_1z : celloutsig_0_3z);
  assign celloutsig_0_50z = !(celloutsig_0_12z[6] ? celloutsig_0_41z[0] : celloutsig_0_25z);
  assign celloutsig_0_97z = !(in_data[1] ? in_data[1] : celloutsig_0_26z[0]);
  assign celloutsig_0_10z = !(celloutsig_0_2z ? celloutsig_0_2z : celloutsig_0_9z[6]);
  assign celloutsig_0_1z = !(celloutsig_0_0z ? in_data[65] : celloutsig_0_0z);
  assign celloutsig_1_5z = !(celloutsig_1_3z[1] ? in_data[165] : celloutsig_1_0z);
  assign celloutsig_1_10z = !(celloutsig_1_5z ? in_data[119] : celloutsig_1_5z);
  assign celloutsig_1_13z = !(celloutsig_1_3z[8] ? celloutsig_1_8z[1] : celloutsig_1_2z[0]);
  assign celloutsig_0_13z = !(celloutsig_0_3z ? celloutsig_0_11z[6] : celloutsig_0_4z);
  assign celloutsig_0_25z = !(celloutsig_0_6z ? celloutsig_0_2z : celloutsig_0_9z[6]);
  assign celloutsig_0_3z = ~celloutsig_0_2z;
  assign celloutsig_0_0z = ~in_data[1];
  assign celloutsig_0_6z = ~celloutsig_0_1z;
  assign celloutsig_1_0z = ~in_data[165];
  assign celloutsig_1_16z = ~celloutsig_1_10z;
  assign celloutsig_1_19z = ~celloutsig_1_11z[1];
  assign celloutsig_0_16z = ~in_data[39];
  assign celloutsig_0_19z = ~celloutsig_0_15z;
  assign celloutsig_0_24z = ~celloutsig_0_13z;
  assign celloutsig_0_41z = { celloutsig_0_14z[4:3], celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_4z } ~^ in_data[8:4];
  assign celloutsig_0_54z = { in_data[68:63], celloutsig_0_3z, celloutsig_0_24z } ~^ { celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_22z, celloutsig_0_50z };
  assign celloutsig_0_8z = { in_data[79:76], celloutsig_0_2z, in_data[1] } ~^ in_data[60:55];
  assign celloutsig_0_9z = { celloutsig_0_8z[3], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_4z, in_data[1], celloutsig_0_6z, celloutsig_0_0z } ~^ { in_data[58:53], celloutsig_0_2z };
  assign celloutsig_0_98z = { celloutsig_0_46z[3:1], celloutsig_0_23z, celloutsig_0_39z, celloutsig_0_75z, celloutsig_0_4z } ~^ celloutsig_0_54z[6:0];
  assign celloutsig_1_11z = in_data[175:173] ~^ { celloutsig_1_6z[13:12], in_data[165] };
  assign celloutsig_0_11z = { in_data[67:60], celloutsig_0_6z, celloutsig_0_9z } ~^ { celloutsig_0_8z[3:1], celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_4z };
  assign celloutsig_1_12z = { in_data[165], celloutsig_1_5z, celloutsig_1_0z } ~^ celloutsig_1_11z;
  assign celloutsig_1_14z = { celloutsig_1_8z[13:5], in_data[165] } ~^ celloutsig_1_8z[10:1];
  assign celloutsig_1_18z = { celloutsig_1_14z[7:4], celloutsig_1_16z } ~^ { celloutsig_1_3z[5], celloutsig_1_13z, celloutsig_1_12z };
  assign celloutsig_0_14z = { celloutsig_0_11z[10:9], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_2z } ~^ celloutsig_0_8z[5:1];
  assign celloutsig_0_26z = { celloutsig_0_5z[5:4], celloutsig_0_17z, celloutsig_0_24z } ~^ { celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_24z, celloutsig_0_25z };
  assign celloutsig_0_31z = { celloutsig_0_28z[3:0], celloutsig_0_13z, celloutsig_0_1z } ~^ celloutsig_0_11z[12:7];
  assign celloutsig_0_32z = { celloutsig_0_20z[8:3], in_data[1] } ~^ { celloutsig_0_27z[12:8], celloutsig_0_24z, celloutsig_0_0z };
  always_latch
    if (!clkin_data[96]) celloutsig_1_3z = 20'h00000;
    else if (clkin_data[0]) celloutsig_1_3z = { in_data[173:155], celloutsig_1_0z };
  always_latch
    if (clkin_data[96]) celloutsig_1_8z = 14'h0000;
    else if (clkin_data[0]) celloutsig_1_8z = in_data[166:153];
  always_latch
    if (clkin_data[32]) celloutsig_0_28z = 17'h00000;
    else if (celloutsig_1_11z[1]) celloutsig_0_28z = { celloutsig_0_11z[8:1], celloutsig_0_6z, celloutsig_0_22z, celloutsig_0_9z };
  assign { celloutsig_0_5z[0], celloutsig_0_5z[2], celloutsig_0_5z[6:3] } = { celloutsig_0_4z, celloutsig_0_2z, in_data[92:89] } ~^ { celloutsig_0_2z, celloutsig_0_3z, in_data[93:90] };
  assign { celloutsig_0_20z[2], celloutsig_0_20z[10:3], celloutsig_0_20z[0] } = { celloutsig_0_13z, celloutsig_0_12z[7:2], in_data[1], celloutsig_0_6z, celloutsig_0_0z } ~^ { celloutsig_0_16z, celloutsig_0_12z[8:2], in_data[1], in_data[1] };
  assign { celloutsig_0_46z[7:3], celloutsig_0_46z[1], celloutsig_0_46z[2] } = { celloutsig_0_20z[10:6], celloutsig_0_15z, celloutsig_0_2z } ~^ { celloutsig_0_32z[6:2], celloutsig_0_32z[0], celloutsig_0_32z[1] };
  assign { celloutsig_1_2z[0], celloutsig_1_2z[8:6], celloutsig_1_2z[4:2], celloutsig_1_2z[5] } = { celloutsig_1_0z, in_data[167:165], in_data[165], in_data[165], in_data[165:164] } ~^ { in_data[164], in_data[172:170], in_data[168:166], in_data[169] };
  assign { celloutsig_0_12z[0], celloutsig_0_12z[2], celloutsig_0_12z[6:3], celloutsig_0_12z[7], celloutsig_0_12z[8] } = { celloutsig_0_5z[0], celloutsig_0_5z[2], celloutsig_0_5z[6:3], celloutsig_0_2z, in_data[88] } ~^ { celloutsig_0_6z, in_data[2], in_data[6:3], in_data[7], in_data[8] };
  assign { celloutsig_0_27z[15:12], celloutsig_0_27z[16], celloutsig_0_27z[3], celloutsig_0_27z[11:9], celloutsig_0_27z[19], celloutsig_0_27z[8], celloutsig_0_27z[18], celloutsig_0_27z[7], celloutsig_0_27z[17], celloutsig_0_27z[6:4], celloutsig_0_27z[1:0] } = { celloutsig_0_26z, celloutsig_0_23z, celloutsig_0_20z[2], celloutsig_0_20z[10:7], celloutsig_0_20z[7:6], celloutsig_0_20z[6:5], celloutsig_0_20z[5:3], celloutsig_0_20z[0], in_data[1] } ~^ { celloutsig_0_11z[14:11], celloutsig_0_11z[15], celloutsig_0_11z[2], celloutsig_0_11z[10:8], celloutsig_0_12z[8], celloutsig_0_11z[7], celloutsig_0_12z[7], celloutsig_0_11z[6], celloutsig_0_12z[6], celloutsig_0_11z[5:3], celloutsig_0_11z[0], celloutsig_0_16z };
  assign { celloutsig_1_6z[0], celloutsig_1_6z[21:17], celloutsig_1_6z[15:7], celloutsig_1_6z[5:2], celloutsig_1_6z[22], celloutsig_1_6z[23] } = { celloutsig_1_5z, celloutsig_1_3z[19:15], celloutsig_1_3z[13:5], celloutsig_1_3z[3:0], celloutsig_1_0z, in_data[175] } ~^ { in_data[165], celloutsig_1_2z[6:2], celloutsig_1_2z[0], celloutsig_1_4z, celloutsig_1_2z[8:2], celloutsig_1_2z[0], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_2z[7], celloutsig_1_2z[8] };
  assign celloutsig_0_12z[1] = in_data[1];
  assign celloutsig_0_20z[1] = 1'h1;
  assign celloutsig_0_27z[2] = celloutsig_0_11z[1];
  assign celloutsig_0_46z[0] = 1'h1;
  assign celloutsig_0_5z[1] = 1'h1;
  assign celloutsig_1_2z[1] = 1'h1;
  assign { celloutsig_1_6z[16], celloutsig_1_6z[6], celloutsig_1_6z[1] } = { celloutsig_1_3z[14], celloutsig_1_3z[4], 1'h1 };
  assign { out_data[132:128], out_data[96], out_data[32], out_data[6:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_97z, celloutsig_0_98z };
endmodule
