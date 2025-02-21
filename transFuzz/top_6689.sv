/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [5:0] celloutsig_0_0z;
  wire [17:0] celloutsig_0_10z;
  wire [5:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  reg [6:0] celloutsig_0_14z;
  wire [15:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [10:0] celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [30:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [8:0] celloutsig_0_24z;
  wire [3:0] celloutsig_0_25z;
  reg [13:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [15:0] celloutsig_0_29z;
  wire [6:0] celloutsig_0_2z;
  wire [7:0] celloutsig_0_30z;
  reg [5:0] celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire [13:0] celloutsig_0_34z;
  wire [15:0] celloutsig_0_35z;
  wire [4:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  reg [3:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [3:0] celloutsig_0_44z;
  reg [2:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire [5:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [10:0] celloutsig_0_52z;
  reg [7:0] celloutsig_0_54z;
  wire [13:0] celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_58z;
  reg [7:0] celloutsig_0_59z;
  wire [8:0] celloutsig_0_5z;
  wire [3:0] celloutsig_0_60z;
  wire [17:0] celloutsig_0_63z;
  wire [7:0] celloutsig_0_65z;
  wire [39:0] celloutsig_0_67z;
  wire [3:0] celloutsig_0_69z;
  wire [8:0] celloutsig_0_6z;
  wire celloutsig_0_75z;
  wire [7:0] celloutsig_0_7z;
  wire [6:0] celloutsig_0_86z;
  wire celloutsig_0_88z;
  wire celloutsig_0_89z;
  reg [5:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [7:0] celloutsig_1_0z;
  wire [13:0] celloutsig_1_10z;
  reg [2:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [7:0] celloutsig_1_14z;
  wire [6:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [16:0] celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [2:0] celloutsig_1_6z;
  wire [8:0] celloutsig_1_7z;
  wire [5:0] celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = celloutsig_0_2z[5] ? in_data[37] : celloutsig_0_2z[0];
  assign celloutsig_0_47z = celloutsig_0_23z ? celloutsig_0_27z : celloutsig_0_16z;
  assign celloutsig_0_58z = celloutsig_0_46z[0] ? celloutsig_0_47z : celloutsig_0_44z[1];
  assign celloutsig_0_88z = celloutsig_0_59z[7] ? celloutsig_0_58z : celloutsig_0_13z;
  assign celloutsig_0_89z = celloutsig_0_30z[4] ? celloutsig_0_86z[5] : celloutsig_0_75z;
  assign celloutsig_1_2z = celloutsig_1_1z[0] ? celloutsig_1_0z[2] : in_data[143];
  assign celloutsig_0_9z = celloutsig_0_7z[4] ? celloutsig_0_6z[6] : in_data[50];
  assign celloutsig_1_5z = in_data[162] ? celloutsig_1_2z : celloutsig_1_0z[5];
  assign celloutsig_1_13z = celloutsig_1_12z ? celloutsig_1_10z[10] : celloutsig_1_11z[1];
  assign celloutsig_0_1z = in_data[29] ? in_data[29] : celloutsig_0_0z[3];
  assign celloutsig_0_16z = celloutsig_0_7z[3] ? celloutsig_0_7z[2] : celloutsig_0_12z;
  assign celloutsig_0_21z = celloutsig_0_10z[16] ? celloutsig_0_8z[4] : celloutsig_0_10z[1];
  assign celloutsig_0_23z = celloutsig_0_21z ? celloutsig_0_16z : celloutsig_0_4z;
  assign celloutsig_0_27z = celloutsig_0_12z ? celloutsig_0_13z : celloutsig_0_17z[9];
  assign celloutsig_0_28z = celloutsig_0_1z ? celloutsig_0_23z : celloutsig_0_4z;
  assign celloutsig_0_29z = { celloutsig_0_10z[8:4], celloutsig_0_28z, celloutsig_0_19z, celloutsig_0_5z } % { 1'h1, celloutsig_0_24z[4:3], celloutsig_0_14z, celloutsig_0_0z };
  assign celloutsig_0_34z = { celloutsig_0_15z[13:1], celloutsig_0_13z } % { 1'h1, celloutsig_0_8z, celloutsig_0_2z };
  assign celloutsig_0_35z = { celloutsig_0_17z[5:2], celloutsig_0_11z, celloutsig_0_11z } % { 1'h1, celloutsig_0_14z[2], celloutsig_0_26z };
  assign celloutsig_0_55z = { celloutsig_0_1z, celloutsig_0_47z, celloutsig_0_25z, celloutsig_0_7z } % { 1'h1, celloutsig_0_29z[8:4], celloutsig_0_49z, celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_60z = { celloutsig_0_31z[2:0], celloutsig_0_3z } % { 1'h1, celloutsig_0_54z[4:3], celloutsig_0_56z };
  assign celloutsig_0_65z = celloutsig_0_5z[7:0] % { 1'h1, celloutsig_0_26z[3:0], celloutsig_0_28z, celloutsig_0_33z, celloutsig_0_19z };
  assign celloutsig_0_7z = { celloutsig_0_2z, celloutsig_0_1z } % { 1'h1, celloutsig_0_2z[5:0], in_data[0] };
  assign celloutsig_1_0z = in_data[166:159] % { 1'h1, in_data[104:98] };
  assign celloutsig_1_6z = { celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_3z } % { 1'h1, celloutsig_1_0z[2:1] };
  assign celloutsig_1_8z = { celloutsig_1_1z[5:1], celloutsig_1_3z } % { 1'h1, celloutsig_1_7z[7:4], celloutsig_1_5z };
  assign celloutsig_1_10z = { celloutsig_1_0z[6:4], celloutsig_1_9z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_8z } % { 1'h1, in_data[180:168] };
  assign celloutsig_0_10z = { in_data[81:76], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_3z } % { 1'h1, celloutsig_0_7z[3:1], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_8z };
  assign celloutsig_1_19z = { celloutsig_1_14z[6:0], celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_18z, celloutsig_1_3z, celloutsig_1_5z } % { 1'h1, celloutsig_1_14z, celloutsig_1_16z, celloutsig_1_1z, in_data[96] };
  assign celloutsig_0_11z = { celloutsig_0_6z[4:0], celloutsig_0_1z } % { 1'h1, celloutsig_0_6z[5:1] };
  assign celloutsig_0_24z = { celloutsig_0_15z[10:3], celloutsig_0_13z } % { 1'h1, celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_19z };
  assign celloutsig_0_25z = { celloutsig_0_14z[2:1], celloutsig_0_23z, celloutsig_0_19z } % { 1'h1, celloutsig_0_8z[3:1] };
  assign celloutsig_0_3z = celloutsig_0_2z[4:0] != celloutsig_0_2z[6:2];
  assign celloutsig_0_33z = celloutsig_0_10z[17:9] != celloutsig_0_15z[10:2];
  assign celloutsig_0_41z = { in_data[74:69], celloutsig_0_26z, celloutsig_0_31z } != { celloutsig_0_35z[9:0], celloutsig_0_3z, celloutsig_0_26z, celloutsig_0_23z };
  assign celloutsig_0_56z = { celloutsig_0_14z[5:1], celloutsig_0_14z } != { celloutsig_0_26z[13:9], celloutsig_0_2z };
  assign celloutsig_0_75z = celloutsig_0_59z[7:1] != celloutsig_0_14z;
  assign celloutsig_1_3z = in_data[160:150] != { celloutsig_1_0z[4:2], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_4z = { in_data[176], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_2z } != in_data[147:143];
  assign celloutsig_1_12z = { celloutsig_1_11z[1:0], celloutsig_1_8z } != in_data[115:108];
  assign celloutsig_1_16z = { celloutsig_1_0z[6:5], celloutsig_1_11z } != { celloutsig_1_6z[2:1], celloutsig_1_6z };
  assign celloutsig_1_18z = { celloutsig_1_15z[2], celloutsig_1_0z } != { celloutsig_1_12z, celloutsig_1_14z };
  assign celloutsig_0_12z = celloutsig_0_2z != celloutsig_0_6z[8:2];
  assign celloutsig_0_13z = { celloutsig_0_0z[3:0], celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_9z } != { celloutsig_0_10z[14:9], celloutsig_0_3z };
  assign celloutsig_0_19z = { celloutsig_0_11z[1], celloutsig_0_11z } != celloutsig_0_7z[7:1];
  assign celloutsig_0_0z = in_data[50:45] - in_data[85:80];
  assign celloutsig_0_30z = { celloutsig_0_14z, celloutsig_0_1z } - { celloutsig_0_0z[4], celloutsig_0_8z, celloutsig_0_28z };
  assign celloutsig_0_39z = { celloutsig_0_17z[4:1], celloutsig_0_27z } - celloutsig_0_30z[7:3];
  assign celloutsig_0_44z = celloutsig_0_14z[3:0] - celloutsig_0_31z[4:1];
  assign celloutsig_0_49z = celloutsig_0_29z[12:7] - celloutsig_0_17z[7:2];
  assign celloutsig_0_52z = { celloutsig_0_0z[3:0], celloutsig_0_41z, celloutsig_0_0z } - { celloutsig_0_28z, celloutsig_0_39z, celloutsig_0_41z, celloutsig_0_23z, celloutsig_0_33z, celloutsig_0_33z, celloutsig_0_13z };
  assign celloutsig_0_5z = { in_data[51], celloutsig_0_1z, celloutsig_0_2z } - { in_data[11:10], celloutsig_0_2z };
  assign celloutsig_0_6z = { celloutsig_0_5z[4:3], celloutsig_0_0z, celloutsig_0_4z } - { celloutsig_0_0z[2], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_63z = { celloutsig_0_24z[6:2], celloutsig_0_3z, celloutsig_0_47z, celloutsig_0_52z } - in_data[25:8];
  assign celloutsig_0_67z = { celloutsig_0_22z[30:7], celloutsig_0_23z, celloutsig_0_40z, celloutsig_0_52z } - { celloutsig_0_60z[3:1], celloutsig_0_54z, celloutsig_0_1z, celloutsig_0_55z, celloutsig_0_40z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_65z };
  assign celloutsig_0_69z = celloutsig_0_15z[15:12] - celloutsig_0_67z[15:12];
  assign celloutsig_0_86z = celloutsig_0_5z[7:1] - { celloutsig_0_63z[17:15], celloutsig_0_69z };
  assign celloutsig_1_1z = in_data[189:184] - celloutsig_1_0z[6:1];
  assign celloutsig_1_7z = { celloutsig_1_0z[6:0], celloutsig_1_2z, celloutsig_1_4z } - { celloutsig_1_0z[0], celloutsig_1_0z };
  assign celloutsig_1_9z = celloutsig_1_0z[5:3] - in_data[153:151];
  assign celloutsig_1_14z = { celloutsig_1_7z[6:0], celloutsig_1_13z } - { celloutsig_1_10z[8:2], celloutsig_1_12z };
  assign celloutsig_1_15z = { celloutsig_1_6z[1], celloutsig_1_8z } - { in_data[180:175], celloutsig_1_2z };
  assign celloutsig_0_15z = { in_data[19:5], celloutsig_0_3z } - { celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_14z };
  assign celloutsig_0_17z = { celloutsig_0_14z[4], celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_14z } - { celloutsig_0_2z[0], celloutsig_0_6z, celloutsig_0_13z };
  assign celloutsig_0_22z = { in_data[43:24], celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_6z } - { celloutsig_0_2z[3:0], celloutsig_0_7z, celloutsig_0_21z, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_21z };
  assign celloutsig_0_2z = { celloutsig_0_0z[2:0], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z } - in_data[92:86];
  always_latch
    if (!clkin_data[32]) celloutsig_0_31z = 6'h00;
    else if (!celloutsig_1_18z) celloutsig_0_31z = celloutsig_0_17z[9:4];
  always_latch
    if (clkin_data[32]) celloutsig_0_40z = 4'h0;
    else if (!celloutsig_1_18z) celloutsig_0_40z = celloutsig_0_15z[11:8];
  always_latch
    if (!clkin_data[32]) celloutsig_0_46z = 3'h0;
    else if (!celloutsig_1_18z) celloutsig_0_46z = { celloutsig_0_8z[5:4], celloutsig_0_19z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_54z = 8'h00;
    else if (celloutsig_1_18z) celloutsig_0_54z = { celloutsig_0_33z, celloutsig_0_0z, celloutsig_0_41z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_59z = 8'h00;
    else if (celloutsig_1_18z) celloutsig_0_59z = celloutsig_0_34z[11:4];
  always_latch
    if (!clkin_data[32]) celloutsig_0_8z = 6'h00;
    else if (!celloutsig_1_18z) celloutsig_0_8z = { in_data[46:43], celloutsig_0_1z, celloutsig_0_3z };
  always_latch
    if (clkin_data[64]) celloutsig_1_11z = 3'h0;
    else if (clkin_data[0]) celloutsig_1_11z = celloutsig_1_9z;
  always_latch
    if (clkin_data[32]) celloutsig_0_14z = 7'h00;
    else if (celloutsig_1_18z) celloutsig_0_14z = { celloutsig_0_3z, celloutsig_0_11z };
  always_latch
    if (clkin_data[32]) celloutsig_0_26z = 14'h0000;
    else if (celloutsig_1_18z) celloutsig_0_26z = { celloutsig_0_14z[6:1], celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_3z };
  assign { out_data[128], out_data[112:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_88z, celloutsig_0_89z };
endmodule
