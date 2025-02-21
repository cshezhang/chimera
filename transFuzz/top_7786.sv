/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [17:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [4:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [3:0] celloutsig_0_13z;
  wire [17:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  reg [2:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [22:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [10:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [26:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [10:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [7:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [18:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [6:0] celloutsig_0_41z;
  wire [5:0] celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  reg [6:0] celloutsig_0_48z;
  wire [3:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [9:0] celloutsig_0_50z;
  wire [18:0] celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire [42:0] celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  reg [4:0] celloutsig_0_6z;
  wire celloutsig_0_73z;
  wire [12:0] celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire celloutsig_0_96z;
  reg [7:0] celloutsig_0_97z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  wire [4:0] celloutsig_1_1z;
  wire [9:0] celloutsig_1_2z;
  wire [6:0] celloutsig_1_3z;
  wire [6:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = in_data[122] ? in_data[158] : in_data[174];
  assign celloutsig_0_35z = ~(celloutsig_0_1z & celloutsig_0_22z);
  assign celloutsig_0_59z = ~(celloutsig_0_52z & celloutsig_0_44z);
  assign celloutsig_1_5z = ~(celloutsig_1_3z[3] & celloutsig_1_1z[3]);
  assign celloutsig_1_6z = ~(celloutsig_1_0z & celloutsig_1_0z);
  assign celloutsig_0_10z = ~(celloutsig_0_8z[0] & celloutsig_0_0z[12]);
  assign celloutsig_0_1z = ~((in_data[42] | in_data[5]) & in_data[33]);
  assign celloutsig_0_29z = ~((celloutsig_0_5z | celloutsig_0_12z) & celloutsig_0_7z[9]);
  assign celloutsig_0_34z = celloutsig_0_20z | celloutsig_0_8z[4];
  assign celloutsig_0_58z = celloutsig_0_0z[0] | celloutsig_0_10z;
  assign celloutsig_0_5z = celloutsig_0_3z[13] | celloutsig_0_2z;
  assign celloutsig_1_7z = celloutsig_1_4z[4] | celloutsig_1_5z;
  assign celloutsig_1_18z = celloutsig_1_3z[4] | celloutsig_1_12z;
  assign celloutsig_0_12z = celloutsig_0_3z[11] | celloutsig_0_8z[1];
  assign celloutsig_0_20z = celloutsig_0_8z[0] | celloutsig_0_9z;
  assign celloutsig_0_31z = celloutsig_0_8z[2] | celloutsig_0_4z;
  assign celloutsig_0_42z = { celloutsig_0_27z[12:10], celloutsig_0_33z, celloutsig_0_17z, celloutsig_0_4z } / { 1'h1, celloutsig_0_23z[15], celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_26z, celloutsig_0_12z };
  assign celloutsig_0_27z = { in_data[74:57], celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_20z, celloutsig_0_2z, celloutsig_0_6z } / { 1'h1, celloutsig_0_14z[15:1], celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_24z, celloutsig_0_26z, celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_20z, celloutsig_0_18z, celloutsig_0_10z };
  assign celloutsig_1_12z = in_data[160:134] >= { in_data[103:100], celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_9z };
  assign celloutsig_0_17z = { celloutsig_0_3z[14:4], celloutsig_0_5z } <= { celloutsig_0_7z[9:0], celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_0_45z = { celloutsig_0_41z[6], celloutsig_0_29z, celloutsig_0_28z, celloutsig_0_9z } < { celloutsig_0_25z[6:5], celloutsig_0_15z, celloutsig_0_28z };
  assign celloutsig_0_2z = celloutsig_0_0z[12:10] < in_data[71:69];
  assign celloutsig_0_36z = { in_data[60:55], celloutsig_0_5z, celloutsig_0_22z } % { 1'h1, celloutsig_0_27z[18:12] };
  assign celloutsig_1_1z = { in_data[115:113], celloutsig_1_0z, celloutsig_1_0z } % { 1'h1, in_data[161:160], celloutsig_1_0z, in_data[96] };
  assign celloutsig_1_19z = celloutsig_1_4z[3:1] % { 1'h1, celloutsig_1_1z[1], celloutsig_1_18z };
  assign celloutsig_0_11z = { celloutsig_0_7z[8:6], celloutsig_0_5z, celloutsig_0_9z } % { 1'h1, celloutsig_0_8z[3:0] };
  assign celloutsig_0_3z = { celloutsig_0_0z[14], celloutsig_0_0z } * in_data[59:41];
  assign celloutsig_0_50z = { celloutsig_0_23z[13:12], celloutsig_0_9z, celloutsig_0_44z, celloutsig_0_18z, celloutsig_0_2z, celloutsig_0_31z, celloutsig_0_31z, celloutsig_0_15z, celloutsig_0_35z } * { celloutsig_0_0z[11:9], celloutsig_0_49z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_10z };
  assign celloutsig_0_7z = celloutsig_0_3z[12:0] * { celloutsig_0_3z[13:3], celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_8z = celloutsig_0_0z[8:4] * celloutsig_0_6z;
  assign celloutsig_1_2z = { in_data[151:147], celloutsig_1_1z } * { celloutsig_1_1z[4:3], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_25z = { in_data[57:52], celloutsig_0_16z, celloutsig_0_4z, celloutsig_0_20z } * { celloutsig_0_7z[11:2], celloutsig_0_17z };
  assign celloutsig_0_41z = celloutsig_0_40z ? celloutsig_0_25z[10:4] : { celloutsig_0_36z[6:1], celloutsig_0_12z };
  assign celloutsig_0_51z = celloutsig_0_16z[1] ? { celloutsig_0_30z[2:1], celloutsig_0_9z, celloutsig_0_26z, celloutsig_0_49z, celloutsig_0_19z, celloutsig_0_50z } : { celloutsig_0_17z, celloutsig_0_16z[2], 1'h0, celloutsig_0_16z[0], celloutsig_0_29z, celloutsig_0_45z, celloutsig_0_10z, celloutsig_0_18z, celloutsig_0_4z, celloutsig_0_42z, celloutsig_0_16z[2], 1'h0, celloutsig_0_16z[0], celloutsig_0_4z };
  assign celloutsig_1_3z = celloutsig_1_1z[3] ? { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z[4], 1'h1, celloutsig_1_1z[2:0] } : { in_data[102:97], celloutsig_1_0z };
  assign celloutsig_0_30z = celloutsig_0_7z[12] ? { celloutsig_0_23z[15:7], celloutsig_0_28z, celloutsig_0_28z } : in_data[91:81];
  assign celloutsig_0_37z = { celloutsig_0_25z[10:2], celloutsig_0_28z, celloutsig_0_19z } != { celloutsig_0_25z[5:1], celloutsig_0_26z, celloutsig_0_21z, celloutsig_0_13z };
  assign celloutsig_0_52z = { celloutsig_0_16z[1:0], celloutsig_0_50z } != { celloutsig_0_27z[16:11], celloutsig_0_45z, celloutsig_0_6z };
  assign celloutsig_0_9z = celloutsig_0_0z[16:3] != { in_data[81:74], celloutsig_0_6z, celloutsig_0_5z };
  assign celloutsig_0_49z = - { celloutsig_0_15z, celloutsig_0_4z, celloutsig_0_31z, celloutsig_0_31z };
  assign celloutsig_0_57z = - { celloutsig_0_51z[16:2], celloutsig_0_51z, celloutsig_0_34z, celloutsig_0_28z, celloutsig_0_32z, celloutsig_0_6z, celloutsig_0_22z };
  assign celloutsig_0_13z = - celloutsig_0_8z[4:1];
  assign celloutsig_0_33z = { celloutsig_0_25z[5:1], celloutsig_0_18z } !== { celloutsig_0_25z[4:1], celloutsig_0_9z, celloutsig_0_29z };
  assign celloutsig_0_40z = celloutsig_0_25z[8:0] !== { celloutsig_0_16z[1:0], celloutsig_0_31z, celloutsig_0_8z, celloutsig_0_22z };
  assign celloutsig_0_44z = celloutsig_0_0z[17:6] !== celloutsig_0_14z[11:0];
  assign celloutsig_0_18z = { celloutsig_0_0z[7:4], celloutsig_0_4z } !== { celloutsig_0_14z[11], celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_1z };
  assign celloutsig_0_19z = { celloutsig_0_6z[1:0], celloutsig_0_18z } !== celloutsig_0_11z[2:0];
  assign celloutsig_0_24z = celloutsig_0_23z[15:13] !== { celloutsig_0_23z[1], celloutsig_0_4z, celloutsig_0_18z };
  assign celloutsig_0_26z = { celloutsig_0_11z[0], celloutsig_0_18z, celloutsig_0_4z } !== in_data[40:38];
  assign celloutsig_1_8z = in_data[159:156] | { celloutsig_1_4z[4:3], celloutsig_1_7z, celloutsig_1_6z };
  assign celloutsig_0_22z = celloutsig_0_0z[2] & celloutsig_0_20z;
  assign celloutsig_0_28z = celloutsig_0_9z & celloutsig_0_14z[5];
  assign celloutsig_0_32z = | { celloutsig_0_29z, celloutsig_0_24z, celloutsig_0_22z, celloutsig_0_19z, celloutsig_0_6z[4:2] };
  assign celloutsig_1_9z = | { celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_0_73z = ~^ { celloutsig_0_48z[5:2], celloutsig_0_28z, celloutsig_0_6z, celloutsig_0_59z, celloutsig_0_48z, celloutsig_0_34z };
  assign celloutsig_1_10z = ~^ celloutsig_1_8z;
  assign celloutsig_0_15z = ~^ { celloutsig_0_8z[2:0], celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_21z = ~^ { celloutsig_0_10z, celloutsig_0_19z, celloutsig_0_17z };
  assign celloutsig_1_4z = { celloutsig_1_3z[4:3], celloutsig_1_1z } >>> { celloutsig_1_3z[5:0], celloutsig_1_0z };
  assign celloutsig_0_14z = { celloutsig_0_6z[2:1], celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_2z } >>> { in_data[92:89], celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_9z };
  assign celloutsig_0_23z = { celloutsig_0_13z[1:0], celloutsig_0_10z, celloutsig_0_20z, celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_15z } >>> { celloutsig_0_3z[13:5], celloutsig_0_9z, celloutsig_0_7z };
  always_latch
    if (clkin_data[32]) celloutsig_0_0z = 18'h00000;
    else if (celloutsig_1_18z) celloutsig_0_0z = in_data[25:8];
  always_latch
    if (!clkin_data[0]) celloutsig_0_48z = 7'h00;
    else if (!celloutsig_1_18z) celloutsig_0_48z = { celloutsig_0_41z[0], celloutsig_0_8z, celloutsig_0_15z };
  always_latch
    if (!clkin_data[0]) celloutsig_0_6z = 5'h00;
    else if (celloutsig_1_18z) celloutsig_0_6z = { celloutsig_0_3z[16:13], celloutsig_0_1z };
  always_latch
    if (!clkin_data[0]) celloutsig_0_97z = 8'h00;
    else if (celloutsig_1_18z) celloutsig_0_97z = { celloutsig_0_57z[4:0], celloutsig_0_58z, celloutsig_0_40z, celloutsig_0_37z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_16z = 3'h0;
    else if (!celloutsig_1_18z) celloutsig_0_16z = { celloutsig_0_13z[1:0], celloutsig_0_12z };
  assign celloutsig_0_4z = ~((celloutsig_0_1z & in_data[32]) | (celloutsig_0_0z[13] & celloutsig_0_0z[17]));
  assign celloutsig_0_96z = ~((celloutsig_0_73z & celloutsig_0_16z[1]) | (in_data[60] & celloutsig_0_24z));
  assign { out_data[128], out_data[98:96], out_data[32], out_data[7:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_96z, celloutsig_0_97z };
endmodule
