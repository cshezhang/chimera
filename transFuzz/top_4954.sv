/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [25:0] celloutsig_0_10z;
  wire [33:0] celloutsig_0_11z;
  wire [4:0] celloutsig_0_12z;
  wire [3:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [2:0] celloutsig_0_15z;
  reg [2:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [9:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire [7:0] celloutsig_0_21z;
  wire [11:0] celloutsig_0_22z;
  wire [4:0] celloutsig_0_23z;
  wire [7:0] celloutsig_0_25z;
  wire [4:0] celloutsig_0_26z;
  wire [5:0] celloutsig_0_27z;
  wire [7:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [6:0] celloutsig_0_30z;
  wire [12:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [5:0] celloutsig_0_35z;
  reg [7:0] celloutsig_0_36z;
  wire [4:0] celloutsig_0_37z;
  wire [16:0] celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  reg [4:0] celloutsig_0_44z;
  reg [4:0] celloutsig_0_45z;
  wire [3:0] celloutsig_0_46z;
  wire [5:0] celloutsig_0_47z;
  wire [14:0] celloutsig_0_48z;
  wire [3:0] celloutsig_0_49z;
  reg [11:0] celloutsig_0_4z;
  reg [10:0] celloutsig_0_51z;
  wire [3:0] celloutsig_0_52z;
  wire [14:0] celloutsig_0_53z;
  wire [4:0] celloutsig_0_54z;
  wire [10:0] celloutsig_0_55z;
  wire celloutsig_0_58z;
  wire [4:0] celloutsig_0_5z;
  wire [7:0] celloutsig_0_60z;
  wire [16:0] celloutsig_0_61z;
  wire [5:0] celloutsig_0_63z;
  wire [3:0] celloutsig_0_64z;
  wire [7:0] celloutsig_0_65z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire [4:0] celloutsig_0_72z;
  wire [10:0] celloutsig_0_77z;
  wire [8:0] celloutsig_0_7z;
  wire [11:0] celloutsig_0_81z;
  wire celloutsig_0_82z;
  wire celloutsig_0_83z;
  wire celloutsig_0_86z;
  wire [4:0] celloutsig_0_8z;
  wire [21:0] celloutsig_0_97z;
  wire celloutsig_0_98z;
  wire [22:0] celloutsig_0_9z;
  wire [11:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [24:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [4:0] celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire [12:0] celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire [7:0] celloutsig_1_1z;
  wire [6:0] celloutsig_1_2z;
  reg [5:0] celloutsig_1_3z;
  wire [5:0] celloutsig_1_4z;
  wire [12:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [24:0] celloutsig_1_7z;
  reg [5:0] celloutsig_1_8z;
  wire [8:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = in_data[31] ? in_data[47] : in_data[14];
  assign celloutsig_0_32z = celloutsig_0_9z[12] ? celloutsig_0_4z[3] : celloutsig_0_27z[1];
  assign celloutsig_0_33z = celloutsig_0_32z ? celloutsig_0_26z[4] : celloutsig_0_6z;
  assign celloutsig_0_42z = celloutsig_0_3z[1] ? celloutsig_0_35z[1] : celloutsig_0_0z;
  assign celloutsig_0_43z = celloutsig_0_27z[2] ? celloutsig_0_17z : celloutsig_0_31z[7];
  assign celloutsig_0_58z = celloutsig_0_55z[9] ? celloutsig_0_52z[2] : celloutsig_0_53z[5];
  assign celloutsig_0_6z = celloutsig_0_4z[5] ? celloutsig_0_4z[11] : celloutsig_0_2z;
  assign celloutsig_0_69z = celloutsig_0_49z[2] ? in_data[59] : celloutsig_0_55z[4];
  assign celloutsig_0_82z = celloutsig_0_10z[24] ? celloutsig_0_47z[2] : celloutsig_0_3z[9];
  assign celloutsig_0_83z = celloutsig_0_81z[2] ? celloutsig_0_77z[10] : celloutsig_0_31z[12];
  assign celloutsig_0_86z = celloutsig_0_27z[4] ? celloutsig_0_9z[17] : celloutsig_0_72z[1];
  assign celloutsig_0_98z = celloutsig_0_86z ? celloutsig_0_97z[8] : celloutsig_0_69z;
  assign celloutsig_1_6z = celloutsig_1_3z[2] ? celloutsig_1_5z[6] : celloutsig_1_0z[0];
  assign celloutsig_1_11z = celloutsig_1_4z[1] ? celloutsig_1_9z[0] : in_data[184];
  assign celloutsig_1_12z = celloutsig_1_7z[4] ? celloutsig_1_6z : celloutsig_1_11z;
  assign celloutsig_1_15z = celloutsig_1_8z[0] ? celloutsig_1_4z[5] : celloutsig_1_12z;
  assign celloutsig_1_17z = celloutsig_1_11z ? celloutsig_1_16z[2] : celloutsig_1_1z[6];
  assign celloutsig_0_14z = celloutsig_0_10z[21] ? celloutsig_0_8z[2] : celloutsig_0_10z[11];
  assign celloutsig_0_17z = celloutsig_0_2z ? celloutsig_0_0z : celloutsig_0_9z[9];
  assign celloutsig_0_19z = celloutsig_0_5z[3] ? celloutsig_0_15z[1] : celloutsig_0_3z[16];
  assign celloutsig_0_2z = in_data[77] ? celloutsig_0_1z[2] : celloutsig_0_0z;
  assign celloutsig_0_30z = { in_data[60:57], celloutsig_0_16z } ~^ { celloutsig_0_14z, celloutsig_0_27z };
  assign celloutsig_0_31z = { celloutsig_0_18z[5:0], celloutsig_0_30z } ~^ { celloutsig_0_21z[3:0], celloutsig_0_6z, celloutsig_0_25z };
  assign celloutsig_0_37z = { celloutsig_0_10z[14:11], celloutsig_0_2z } ~^ { celloutsig_0_23z[3:0], celloutsig_0_17z };
  assign celloutsig_0_46z = celloutsig_0_12z[3:0] ~^ celloutsig_0_35z[3:0];
  assign celloutsig_0_47z = { celloutsig_0_32z, celloutsig_0_23z } ~^ in_data[83:78];
  assign celloutsig_0_53z = { celloutsig_0_21z, celloutsig_0_52z, celloutsig_0_16z } ~^ { celloutsig_0_52z[1:0], celloutsig_0_25z, celloutsig_0_45z };
  assign celloutsig_0_54z = { in_data[30:27], celloutsig_0_17z } ~^ celloutsig_0_4z[7:3];
  assign celloutsig_0_55z = { celloutsig_0_3z[9:8], celloutsig_0_13z[0], celloutsig_0_26z, celloutsig_0_16z } ~^ { celloutsig_0_42z, celloutsig_0_5z, celloutsig_0_46z, celloutsig_0_19z };
  assign celloutsig_0_60z = celloutsig_0_55z[9:2] ~^ celloutsig_0_55z[7:0];
  assign celloutsig_0_61z = { celloutsig_0_22z[5], celloutsig_0_30z, in_data[31], celloutsig_0_36z } ~^ { celloutsig_0_49z[2:0], in_data[31], celloutsig_0_44z, celloutsig_0_15z, celloutsig_0_46z, celloutsig_0_17z };
  assign celloutsig_0_63z = { celloutsig_0_30z[1], celloutsig_0_23z } ~^ { celloutsig_0_44z[0], celloutsig_0_54z };
  assign celloutsig_0_77z = { celloutsig_0_22z[9], celloutsig_0_46z, celloutsig_0_69z, celloutsig_0_26z } ~^ { in_data[31:27], celloutsig_0_63z };
  assign celloutsig_0_97z = { celloutsig_0_61z[14:0], celloutsig_0_19z, celloutsig_0_82z, celloutsig_0_54z } ~^ { celloutsig_0_11z[33:25], celloutsig_0_12z, celloutsig_0_30z, celloutsig_0_83z };
  assign celloutsig_1_0z = in_data[184:173] ~^ in_data[163:152];
  assign celloutsig_1_1z = celloutsig_1_0z[10:3] ~^ celloutsig_1_0z[7:0];
  assign celloutsig_1_4z = celloutsig_1_2z[6:1] ~^ celloutsig_1_3z;
  assign celloutsig_1_7z = { celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_4z } ~^ { in_data[145:122], celloutsig_1_6z };
  assign celloutsig_1_16z = { in_data[191:188], celloutsig_1_15z } ~^ celloutsig_1_9z[4:0];
  assign celloutsig_1_19z = { celloutsig_1_14z[22:17], celloutsig_1_15z } ~^ { celloutsig_1_18z[12:7], celloutsig_1_17z };
  assign celloutsig_0_1z = in_data[14:7] ~^ in_data[94:87];
  assign celloutsig_0_15z = celloutsig_0_1z[6:4] ~^ celloutsig_0_9z[5:3];
  assign celloutsig_0_18z = celloutsig_0_9z[20:11] ~^ { celloutsig_0_1z[3], celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_15z };
  assign celloutsig_0_25z = { celloutsig_0_3z[15], celloutsig_0_8z[2], celloutsig_0_5z, celloutsig_0_14z } ~^ { celloutsig_0_20z[3:1], celloutsig_0_12z };
  assign celloutsig_0_26z = { celloutsig_0_21z[2:0], celloutsig_0_19z, celloutsig_0_2z } ~^ in_data[35:31];
  assign celloutsig_0_27z = celloutsig_0_4z[7:2] ~^ { celloutsig_0_3z[16:15], celloutsig_0_8z[2:0], celloutsig_0_2z };
  assign celloutsig_0_29z = { celloutsig_0_16z, celloutsig_0_3z[16:15], celloutsig_0_8z[2:0] } ~^ celloutsig_0_25z;
  assign celloutsig_0_35z = { celloutsig_0_20z[3], celloutsig_0_5z } ^ { celloutsig_0_18z[4:0], celloutsig_0_17z };
  assign celloutsig_0_3z = { in_data[90:83], celloutsig_0_1z, celloutsig_0_0z } ^ { in_data[67:63], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_49z = celloutsig_0_23z[3:0] ^ { celloutsig_0_5z[4:3], celloutsig_0_42z, celloutsig_0_17z };
  assign celloutsig_0_52z = celloutsig_0_35z[4:1] ^ celloutsig_0_23z[3:0];
  assign celloutsig_0_5z = { in_data[47:44], celloutsig_0_0z } ^ celloutsig_0_3z[4:0];
  assign celloutsig_0_64z = celloutsig_0_47z[4:1] ^ { celloutsig_0_48z[8:6], in_data[31] };
  assign celloutsig_0_72z = celloutsig_0_51z[9:5] ^ celloutsig_0_10z[22:18];
  assign celloutsig_0_81z = { celloutsig_0_9z[10:3], celloutsig_0_64z } ^ { celloutsig_0_60z[2:0], celloutsig_0_58z, celloutsig_0_65z };
  assign celloutsig_0_9z = { in_data[71:50], celloutsig_0_0z } ^ { celloutsig_0_3z[16:12], celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z };
  assign celloutsig_1_2z = celloutsig_1_0z[10:4] ^ in_data[188:182];
  assign celloutsig_1_5z = { in_data[115], celloutsig_1_0z } ^ in_data[175:163];
  assign celloutsig_1_9z = celloutsig_1_5z[10:2] ^ celloutsig_1_7z[24:16];
  assign celloutsig_1_14z = { in_data[180:165], celloutsig_1_9z } ^ { celloutsig_1_0z[10:0], celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_8z };
  assign celloutsig_1_18z = { celloutsig_1_8z[4:2], celloutsig_1_6z, celloutsig_1_15z, celloutsig_1_12z, celloutsig_1_2z } ^ { celloutsig_1_4z[4:0], celloutsig_1_3z, celloutsig_1_17z, celloutsig_1_15z };
  assign celloutsig_0_12z = { celloutsig_0_3z[16:15], celloutsig_0_8z[2:0] } ^ celloutsig_0_11z[28:24];
  assign celloutsig_0_20z = { celloutsig_0_15z[2], celloutsig_0_3z[10:8], celloutsig_0_13z[0] } ^ celloutsig_0_18z[7:3];
  assign celloutsig_0_21z = celloutsig_0_10z[21:14] ^ celloutsig_0_1z;
  assign celloutsig_0_23z = celloutsig_0_4z[9:5] ^ { celloutsig_0_5z[2], celloutsig_0_16z, celloutsig_0_6z };
  always_latch
    if (clkin_data[64]) celloutsig_0_36z = 8'h00;
    else if (celloutsig_1_19z[0]) celloutsig_0_36z = celloutsig_0_9z[19:12];
  always_latch
    if (clkin_data[96]) celloutsig_0_4z = 12'h000;
    else if (clkin_data[0]) celloutsig_0_4z = { celloutsig_0_3z[13:10], celloutsig_0_1z };
  always_latch
    if (clkin_data[96]) celloutsig_0_44z = 5'h00;
    else if (!celloutsig_1_19z[0]) celloutsig_0_44z = { celloutsig_0_9z[8:6], celloutsig_0_43z, celloutsig_0_33z };
  always_latch
    if (!clkin_data[96]) celloutsig_0_45z = 5'h00;
    else if (clkin_data[0]) celloutsig_0_45z = celloutsig_0_3z[7:3];
  always_latch
    if (clkin_data[64]) celloutsig_0_51z = 11'h000;
    else if (!clkin_data[0]) celloutsig_0_51z = { celloutsig_0_5z[3:1], celloutsig_0_25z };
  always_latch
    if (!clkin_data[128]) celloutsig_1_3z = 6'h00;
    else if (clkin_data[32]) celloutsig_1_3z = celloutsig_1_1z[5:0];
  always_latch
    if (clkin_data[128]) celloutsig_1_8z = 6'h00;
    else if (!clkin_data[32]) celloutsig_1_8z = celloutsig_1_7z[8:3];
  always_latch
    if (!clkin_data[64]) celloutsig_0_16z = 3'h0;
    else if (celloutsig_1_19z[0]) celloutsig_0_16z = celloutsig_0_9z[22:20];
  assign celloutsig_0_22z[5] = ~ celloutsig_0_1z[0];
  assign celloutsig_0_22z[6] = ~ celloutsig_0_1z[1];
  assign celloutsig_0_22z[7] = ~ celloutsig_0_1z[2];
  assign celloutsig_0_22z[8] = ~ celloutsig_0_1z[3];
  assign celloutsig_0_22z[1] = ~ celloutsig_0_20z[1];
  assign celloutsig_0_22z[2] = ~ celloutsig_0_20z[2];
  assign celloutsig_0_22z[3] = ~ celloutsig_0_20z[3];
  assign celloutsig_0_22z[4] = ~ celloutsig_0_20z[4];
  assign celloutsig_0_65z[5] = ~ celloutsig_0_3z[9];
  assign celloutsig_0_65z[6] = ~ celloutsig_0_3z[10];
  assign celloutsig_0_65z[7] = ~ celloutsig_0_3z[11];
  assign celloutsig_0_65z[1] = ~ celloutsig_0_37z[1];
  assign celloutsig_0_65z[2] = ~ celloutsig_0_37z[2];
  assign celloutsig_0_65z[3] = ~ celloutsig_0_37z[3];
  assign celloutsig_0_65z[4] = ~ celloutsig_0_37z[4];
  assign celloutsig_0_7z[0] = celloutsig_0_2z ~^ celloutsig_0_4z[2];
  assign celloutsig_0_8z[2:0] = celloutsig_0_3z[14:12] ~^ { celloutsig_0_7z[0], celloutsig_0_6z, celloutsig_0_0z };
  assign { celloutsig_0_10z[1], celloutsig_0_10z[24], celloutsig_0_10z[19], celloutsig_0_10z[14], celloutsig_0_10z[23], celloutsig_0_10z[18], celloutsig_0_10z[13], celloutsig_0_10z[22], celloutsig_0_10z[17], celloutsig_0_10z[12], celloutsig_0_10z[21], celloutsig_0_10z[16], celloutsig_0_10z[11], celloutsig_0_10z[20], celloutsig_0_10z[15], celloutsig_0_10z[10], celloutsig_0_10z[25], celloutsig_0_10z[0] } = { celloutsig_0_7z[0], celloutsig_0_5z[4], celloutsig_0_5z[4], celloutsig_0_5z[4:3], celloutsig_0_5z[3], celloutsig_0_5z[3:2], celloutsig_0_5z[2], celloutsig_0_5z[2:1], celloutsig_0_5z[1], celloutsig_0_5z[1:0], celloutsig_0_5z[0], celloutsig_0_5z[0], celloutsig_0_2z, celloutsig_0_2z } ~^ { celloutsig_0_9z[1], celloutsig_0_9z[20:19], celloutsig_0_9z[14], celloutsig_0_9z[19:18], celloutsig_0_9z[13], celloutsig_0_9z[22], celloutsig_0_9z[17], celloutsig_0_9z[12], celloutsig_0_9z[21], celloutsig_0_9z[16], celloutsig_0_9z[11], celloutsig_0_9z[20], celloutsig_0_9z[15], celloutsig_0_9z[10], celloutsig_0_9z[21], celloutsig_0_9z[0] };
  assign { celloutsig_0_11z[1], celloutsig_0_11z[22:10], celloutsig_0_11z[23], celloutsig_0_11z[33:24] } = { celloutsig_0_7z[0], celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_2z, in_data[51:42] } ~^ { in_data[24], in_data[45:33], in_data[46], in_data[56:47] };
  assign celloutsig_0_13z[0] = celloutsig_0_3z[7] ~^ celloutsig_0_2z;
  assign { celloutsig_0_22z[0], celloutsig_0_22z[11:9] } = { celloutsig_0_20z[0], celloutsig_0_1z[6:4] } ^ { celloutsig_0_7z[0], celloutsig_0_21z[7:5] };
  assign { celloutsig_0_48z[9:6], celloutsig_0_48z[4:1], celloutsig_0_48z[14:10], celloutsig_0_48z[0] } = { celloutsig_0_33z, celloutsig_0_29z[7:5], celloutsig_0_29z[3:0], celloutsig_0_3z[11:7], celloutsig_0_2z } ~^ { celloutsig_0_22z[4:1], celloutsig_0_32z, in_data[31], celloutsig_0_16z[2:1], celloutsig_0_22z[9:5], celloutsig_0_16z[0] };
  assign celloutsig_0_65z[0] = celloutsig_0_37z[0] ^ celloutsig_0_7z[0];
  assign celloutsig_0_10z[9:2] = celloutsig_0_9z[9:2];
  assign { celloutsig_0_11z[9:2], celloutsig_0_11z[0] } = { in_data[32:25], 1'h1 };
  assign celloutsig_0_13z[3:1] = celloutsig_0_3z[10:8];
  assign celloutsig_0_48z[5] = celloutsig_0_29z[4];
  assign celloutsig_0_7z[8:1] = 8'hff;
  assign celloutsig_0_8z[4:3] = celloutsig_0_3z[16:15];
  assign { out_data[140:128], out_data[102:96], out_data[53:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_97z, celloutsig_0_98z };
endmodule
