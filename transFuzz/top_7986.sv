/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [6:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [2:0] celloutsig_0_12z;
  reg [2:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [8:0] celloutsig_0_15z;
  wire [7:0] celloutsig_0_16z;
  wire [2:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [2:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [9:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [12:0] celloutsig_0_23z;
  wire [4:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [5:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  reg [22:0] celloutsig_0_29z;
  wire [18:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [9:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  reg [15:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [5:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [2:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [15:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [7:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_49z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_53z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_59z;
  wire [4:0] celloutsig_0_5z;
  wire celloutsig_0_62z;
  wire celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire celloutsig_0_6z;
  wire celloutsig_0_73z;
  reg [4:0] celloutsig_0_79z;
  wire [23:0] celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire [31:0] celloutsig_0_83z;
  wire [7:0] celloutsig_0_88z;
  wire celloutsig_0_8z;
  wire [10:0] celloutsig_0_91z;
  wire [6:0] celloutsig_0_92z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  reg [3:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire [5:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [14:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [9:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = in_data[81] ? celloutsig_0_2z[2] : celloutsig_0_2z[3];
  assign celloutsig_0_41z = ~(celloutsig_0_39z[4] & celloutsig_0_36z);
  assign celloutsig_0_62z = ~(celloutsig_0_3z & celloutsig_0_57z);
  assign celloutsig_0_73z = ~(celloutsig_0_7z[19] & celloutsig_0_53z);
  assign celloutsig_1_0z = ~(in_data[98] & in_data[138]);
  assign celloutsig_1_6z = ~(celloutsig_1_5z & celloutsig_1_5z);
  assign celloutsig_0_30z = ~(celloutsig_0_15z[5] & celloutsig_0_24z[3]);
  assign celloutsig_0_56z = !(celloutsig_0_41z ? celloutsig_0_11z : celloutsig_0_29z[2]);
  assign celloutsig_1_5z = !(in_data[103] ? celloutsig_1_3z[5] : celloutsig_1_4z);
  assign celloutsig_0_14z = !(celloutsig_0_0z[2] ? celloutsig_0_4z[0] : celloutsig_0_11z);
  assign celloutsig_1_16z = ~(celloutsig_1_4z | celloutsig_1_3z[2]);
  assign celloutsig_0_31z = ~(celloutsig_0_6z | celloutsig_0_0z[6]);
  assign celloutsig_0_6z = ~celloutsig_0_4z[1];
  assign celloutsig_0_18z = ~celloutsig_0_2z[15];
  assign celloutsig_0_38z = ~((celloutsig_0_12z[0] | celloutsig_0_33z[6]) & celloutsig_0_9z);
  assign celloutsig_0_46z = ~((celloutsig_0_42z[12] | celloutsig_0_1z) & celloutsig_0_5z[0]);
  assign celloutsig_1_1z = in_data[168] | ~(in_data[163]);
  assign celloutsig_0_4z = in_data[88:85] & { in_data[64:62], celloutsig_0_3z };
  assign celloutsig_0_40z = { celloutsig_0_13z[0], celloutsig_0_38z, celloutsig_0_38z } / { 1'h1, celloutsig_0_26z[3], celloutsig_0_18z };
  assign celloutsig_0_7z = { celloutsig_0_2z[16:0], celloutsig_0_0z } / { 1'h1, celloutsig_0_4z[0], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_1_17z = celloutsig_1_3z[9:4] / { 1'h1, celloutsig_1_16z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_0_49z = celloutsig_0_12z == { celloutsig_0_7z[6:5], celloutsig_0_3z };
  assign celloutsig_0_36z = { celloutsig_0_2z[10:2], celloutsig_0_22z, celloutsig_0_21z } === { celloutsig_0_7z[23:12], celloutsig_0_14z };
  assign celloutsig_0_57z = celloutsig_0_35z[12:10] >= celloutsig_0_15z[4:2];
  assign celloutsig_0_65z = { celloutsig_0_16z[6:3], celloutsig_0_26z, celloutsig_0_49z } >= { celloutsig_0_42z[9:1], celloutsig_0_3z, celloutsig_0_34z };
  assign celloutsig_1_8z = { celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_1z } >= { celloutsig_1_3z[3:0], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_5z };
  assign celloutsig_0_10z = { celloutsig_0_4z[2:0], celloutsig_0_0z, celloutsig_0_6z } >= { in_data[31:25], celloutsig_0_4z };
  assign celloutsig_1_12z = { celloutsig_1_3z, celloutsig_1_11z, celloutsig_1_5z } >= { celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_3z };
  assign celloutsig_0_11z = { in_data[55], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_5z } >= { celloutsig_0_7z[21:7], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_9z };
  assign celloutsig_0_34z = { celloutsig_0_13z[0], celloutsig_0_0z } <= { celloutsig_0_2z[15:9], celloutsig_0_25z };
  assign celloutsig_0_64z = celloutsig_0_24z[4:2] <= { in_data[90:89], celloutsig_0_18z };
  assign celloutsig_1_13z = { in_data[145:144], celloutsig_1_7z, celloutsig_1_6z } <= { celloutsig_1_11z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_4z };
  assign celloutsig_0_43z = ! celloutsig_0_13z;
  assign celloutsig_0_22z = ! { celloutsig_0_2z[16:7], celloutsig_0_0z };
  assign celloutsig_1_2z = in_data[174:167] || in_data[153:146];
  assign celloutsig_1_11z = celloutsig_1_10z[3:1] || { celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_8z };
  assign celloutsig_0_27z = celloutsig_0_15z[3:1] || { celloutsig_0_26z[2:1], celloutsig_0_18z };
  assign celloutsig_0_59z = celloutsig_0_2z[15:6] != { celloutsig_0_16z[4:3], celloutsig_0_45z };
  assign celloutsig_0_9z = { in_data[47:44], celloutsig_0_4z } != { celloutsig_0_5z[3], celloutsig_0_0z };
  assign celloutsig_1_14z = { celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_3z } != { in_data[122:96], celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_5z };
  assign celloutsig_0_1z = celloutsig_0_0z[5:0] != in_data[89:84];
  assign celloutsig_0_32z = { celloutsig_0_17z, celloutsig_0_14z } != { celloutsig_0_0z[5:3], celloutsig_0_27z };
  assign celloutsig_0_16z = - { celloutsig_0_15z[2:1], 1'h0, celloutsig_0_4z, celloutsig_0_14z };
  assign celloutsig_0_25z = celloutsig_0_5z[3:0] !== celloutsig_0_16z[5:2];
  assign celloutsig_0_28z = { celloutsig_0_0z[0], celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_5z } !== { celloutsig_0_0z[5:1], celloutsig_0_14z, celloutsig_0_25z, celloutsig_0_6z };
  assign celloutsig_0_21z = ~ celloutsig_0_4z[3:1];
  assign celloutsig_0_37z = | { celloutsig_0_21z, celloutsig_0_32z };
  assign celloutsig_0_44z = | { celloutsig_0_17z[0], celloutsig_0_9z, celloutsig_0_43z, celloutsig_0_13z };
  assign celloutsig_0_53z = | { celloutsig_0_24z, celloutsig_0_44z };
  assign celloutsig_0_8z = | { in_data[56], celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_0_80z = celloutsig_0_62z & celloutsig_0_4z[2];
  assign celloutsig_1_7z = celloutsig_1_5z & in_data[140];
  assign celloutsig_1_4z = ^ { celloutsig_1_3z[4:2], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_1_18z = ^ celloutsig_1_17z[2:0];
  assign celloutsig_0_39z = { celloutsig_0_15z[4:1], 1'h0, celloutsig_0_18z } >> { celloutsig_0_23z[4:3], celloutsig_0_21z, celloutsig_0_37z };
  assign celloutsig_1_19z = { celloutsig_1_3z, celloutsig_1_14z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_13z, celloutsig_1_6z } >> { celloutsig_1_17z, celloutsig_1_5z, celloutsig_1_14z, celloutsig_1_12z, celloutsig_1_5z, celloutsig_1_18z, celloutsig_1_10z };
  assign celloutsig_0_12z = celloutsig_0_5z[4:2] >> { celloutsig_0_2z[7:6], celloutsig_0_1z };
  assign celloutsig_0_33z = { celloutsig_0_7z[20:12], celloutsig_0_10z } >> { celloutsig_0_0z[4:2], celloutsig_0_25z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_1_3z = { in_data[177:171], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z } << { in_data[139:132], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_24z = celloutsig_0_0z[4:0] << celloutsig_0_16z[5:1];
  assign celloutsig_0_83z = { celloutsig_0_35z[12:7], celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_80z, celloutsig_0_30z, celloutsig_0_79z, celloutsig_0_1z, celloutsig_0_64z, celloutsig_0_34z, celloutsig_0_37z, celloutsig_0_39z, celloutsig_0_30z, celloutsig_0_65z, celloutsig_0_46z, celloutsig_0_9z } <<< { celloutsig_0_4z[2:0], celloutsig_0_0z, celloutsig_0_42z, celloutsig_0_39z };
  assign celloutsig_0_23z = { celloutsig_0_2z[10:2], celloutsig_0_4z } <<< { celloutsig_0_7z[16:7], celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_8z };
  assign celloutsig_0_26z = { celloutsig_0_16z[7:3], celloutsig_0_9z } <<< celloutsig_0_2z[6:1];
  assign celloutsig_0_42z = { celloutsig_0_16z[6:2], celloutsig_0_18z, celloutsig_0_16z, celloutsig_0_11z, celloutsig_0_41z } - { celloutsig_0_30z, celloutsig_0_40z, celloutsig_0_31z, celloutsig_0_17z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_5z = { in_data[69:68], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z } - celloutsig_0_0z[5:1];
  assign celloutsig_0_92z = { celloutsig_0_80z, celloutsig_0_73z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_59z } - { celloutsig_0_20z[6:2], celloutsig_0_80z, celloutsig_0_43z };
  assign celloutsig_0_2z = in_data[80:62] - { in_data[25:15], celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_45z = { celloutsig_0_23z[12:7], celloutsig_0_28z, celloutsig_0_27z } ~^ { celloutsig_0_29z[16], celloutsig_0_21z, celloutsig_0_19z, celloutsig_0_14z };
  assign celloutsig_0_88z = { celloutsig_0_5z[3], celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_56z, celloutsig_0_36z, celloutsig_0_10z } ~^ { celloutsig_0_21z[2:1], celloutsig_0_18z, celloutsig_0_41z, celloutsig_0_65z, celloutsig_0_49z, celloutsig_0_11z, celloutsig_0_28z };
  assign celloutsig_0_17z = celloutsig_0_16z[6:4] ~^ { celloutsig_0_4z[3:2], celloutsig_0_1z };
  assign celloutsig_0_19z = { celloutsig_0_15z[7:6], celloutsig_0_10z } ~^ celloutsig_0_2z[7:5];
  assign celloutsig_0_20z = { celloutsig_0_15z[7:1], celloutsig_0_13z } ~^ { celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_8z };
  assign celloutsig_0_91z = { celloutsig_0_83z[21:14], celloutsig_0_21z } ^ { in_data[91:89], celloutsig_0_88z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_0z = 7'h00;
    else if (!celloutsig_1_18z) celloutsig_0_0z = in_data[89:83];
  always_latch
    if (!clkin_data[32]) celloutsig_0_35z = 16'h0000;
    else if (celloutsig_1_18z) celloutsig_0_35z = { celloutsig_0_7z[23:22], celloutsig_0_18z, celloutsig_0_1z, celloutsig_0_20z, celloutsig_0_6z, celloutsig_0_32z };
  always_latch
    if (clkin_data[32]) celloutsig_0_79z = 5'h00;
    else if (!celloutsig_1_18z) celloutsig_0_79z = { celloutsig_0_45z[4], celloutsig_0_10z, celloutsig_0_49z, celloutsig_0_65z, celloutsig_0_31z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_10z = 4'h0;
    else if (clkin_data[0]) celloutsig_1_10z = { celloutsig_1_3z[2:0], celloutsig_1_6z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_13z = 3'h0;
    else if (!celloutsig_1_18z) celloutsig_0_13z = { celloutsig_0_4z[3:2], celloutsig_0_11z };
  always_latch
    if (clkin_data[32]) celloutsig_0_29z = 23'h000000;
    else if (!celloutsig_1_18z) celloutsig_0_29z = { celloutsig_0_13z[2:1], celloutsig_0_26z, celloutsig_0_16z, celloutsig_0_17z, celloutsig_0_4z };
  assign celloutsig_0_15z[8:1] = { celloutsig_0_12z[0], celloutsig_0_0z } ^ { in_data[27], celloutsig_0_13z, celloutsig_0_14z, celloutsig_0_12z };
  assign celloutsig_0_15z[0] = 1'h0;
  assign { out_data[128], out_data[110:96], out_data[42:32], out_data[6:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_91z, celloutsig_0_92z };
endmodule
