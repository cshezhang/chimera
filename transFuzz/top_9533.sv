/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [11:0] celloutsig_0_10z;
  wire [3:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [57:0] celloutsig_0_15z;
  wire [8:0] celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [6:0] celloutsig_0_23z;
  wire [8:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [2:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [27:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [41:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [11:0] celloutsig_0_38z;
  reg [2:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [6:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [10:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [2:0] celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire [5:0] celloutsig_0_55z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire [4:0] celloutsig_0_65z;
  wire celloutsig_0_67z;
  wire celloutsig_0_6z;
  wire celloutsig_0_71z;
  wire celloutsig_0_72z;
  wire [9:0] celloutsig_0_73z;
  wire celloutsig_0_7z;
  reg [3:0] celloutsig_0_82z;
  wire [3:0] celloutsig_0_85z;
  reg [21:0] celloutsig_0_8z;
  wire celloutsig_0_92z;
  wire celloutsig_0_93z;
  wire [23:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [8:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [5:0] _00_;
  always_latch
    if (!clkin_data[128]) _00_ = 6'h00;
    else if (clkin_data[64]) _00_ = { celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_7z, celloutsig_1_9z };
  assign { celloutsig_1_11z[7:6], celloutsig_1_11z[4:2], celloutsig_1_11z[0] } = _00_;
  assign celloutsig_1_4z = ~(celloutsig_1_1z & celloutsig_1_3z);
  assign celloutsig_0_71z = !(celloutsig_0_31z ? celloutsig_0_35z : celloutsig_0_38z[5]);
  assign celloutsig_0_14z = !(celloutsig_0_6z ? celloutsig_0_2z[20] : in_data[64]);
  assign celloutsig_0_20z = !(celloutsig_0_6z ? celloutsig_0_19z[1] : celloutsig_0_18z[0]);
  assign celloutsig_0_63z = ~celloutsig_0_37z;
  assign celloutsig_0_67z = ~celloutsig_0_30z;
  assign celloutsig_0_72z = ~celloutsig_0_52z[0];
  assign celloutsig_0_35z = ~((celloutsig_0_10z[8] | celloutsig_0_4z) & (celloutsig_0_25z | celloutsig_0_29z));
  assign celloutsig_1_6z = ~((celloutsig_1_1z | celloutsig_1_1z) & (celloutsig_1_1z | celloutsig_1_1z));
  assign celloutsig_0_41z = celloutsig_0_21z | ~(celloutsig_0_1z);
  assign celloutsig_0_54z = celloutsig_0_42z | ~(celloutsig_0_29z);
  assign celloutsig_0_92z = celloutsig_0_55z[4] | ~(celloutsig_0_85z[0]);
  assign celloutsig_1_9z = in_data[152] | ~(celloutsig_1_7z);
  assign celloutsig_0_12z = celloutsig_0_2z[2] | ~(celloutsig_0_10z[1]);
  assign celloutsig_0_36z = { celloutsig_0_10z[10:0], celloutsig_0_18z, celloutsig_0_5z, celloutsig_0_9z } + { celloutsig_0_8z[19:6], celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_6z };
  assign celloutsig_0_40z = in_data[66:60] + { celloutsig_0_39z[2:1], celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_34z, celloutsig_0_28z };
  assign celloutsig_0_38z = { celloutsig_0_24z[7:0], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_21z, celloutsig_0_5z } / { 1'h1, celloutsig_0_10z[10:0] };
  assign celloutsig_0_55z = in_data[9:4] / { 1'h1, celloutsig_0_15z[18], celloutsig_0_25z, celloutsig_0_52z };
  assign celloutsig_0_11z = { celloutsig_0_9z[13:12], celloutsig_0_3z, celloutsig_0_7z } / { 1'h1, in_data[62:60] };
  assign celloutsig_0_23z = celloutsig_0_8z[16:10] / { 1'h1, celloutsig_0_17z[5:1], celloutsig_0_7z };
  assign celloutsig_0_2z = { in_data[89:63], celloutsig_0_0z } / { 1'h1, in_data[33:10], celloutsig_0_1z, celloutsig_0_1z, in_data[0] };
  assign celloutsig_0_27z = celloutsig_0_11z[2:0] / { 1'h1, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_6z = in_data[95:89] == { celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_1_5z = { in_data[121:109], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_4z } == { in_data[162:150], celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_1_7z = in_data[163:147] == { in_data[123:111], celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_1_10z = { in_data[143], celloutsig_1_6z, celloutsig_1_1z } == { celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_5z };
  assign celloutsig_0_1z = in_data[87:81] == { in_data[21:16], celloutsig_0_0z };
  assign celloutsig_0_34z = { celloutsig_0_24z[7:0], celloutsig_0_12z } == { in_data[53:49], celloutsig_0_28z, celloutsig_0_31z, celloutsig_0_21z, celloutsig_0_13z };
  assign celloutsig_0_62z = { celloutsig_0_38z[1:0], celloutsig_0_33z, celloutsig_0_13z, celloutsig_0_33z, celloutsig_0_6z, celloutsig_0_18z, celloutsig_0_27z, celloutsig_0_54z, celloutsig_0_42z } === in_data[18:2];
  assign celloutsig_1_12z = { celloutsig_1_11z[6], 1'h0, celloutsig_1_11z[4:2], celloutsig_1_11z[0] } === { 1'h0, celloutsig_1_11z[7:6], 1'h0, celloutsig_1_11z[4], celloutsig_1_0z };
  assign celloutsig_0_3z = { celloutsig_0_2z[16:6], celloutsig_0_0z, celloutsig_0_0z } && { celloutsig_0_2z[12:6], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_37z = { celloutsig_0_11z[3:1], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_30z, celloutsig_0_3z, celloutsig_0_19z } && { celloutsig_0_8z[13:4], celloutsig_0_7z };
  assign celloutsig_1_2z = { in_data[127:121], celloutsig_1_1z, celloutsig_1_1z } && { in_data[109:103], celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_0_64z = celloutsig_0_49z[7] & ~(celloutsig_0_42z);
  assign celloutsig_1_3z = celloutsig_1_0z & ~(in_data[117]);
  assign celloutsig_1_19z = celloutsig_1_3z & ~(celloutsig_1_2z);
  assign celloutsig_0_21z = celloutsig_0_18z[3] & ~(celloutsig_0_1z);
  assign celloutsig_0_73z = { celloutsig_0_49z[10], celloutsig_0_26z, celloutsig_0_5z, celloutsig_0_65z, celloutsig_0_29z, celloutsig_0_62z } % { 1'h1, celloutsig_0_23z[5:4], celloutsig_0_33z, celloutsig_0_60z, celloutsig_0_0z, celloutsig_0_28z, celloutsig_0_72z, celloutsig_0_13z, celloutsig_0_3z };
  assign celloutsig_0_85z = { celloutsig_0_36z[8:7], celloutsig_0_67z, celloutsig_0_71z } % { 1'h1, celloutsig_0_28z, celloutsig_0_28z, celloutsig_0_64z };
  assign celloutsig_0_9z = { celloutsig_0_8z[18:5], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_7z } % { 1'h1, in_data[71:49] };
  assign celloutsig_0_65z = { celloutsig_0_63z, celloutsig_0_27z, celloutsig_0_7z } * celloutsig_0_8z[7:3];
  assign celloutsig_0_42z = { celloutsig_0_18z[5:2], celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_26z } != { celloutsig_0_9z[1:0], 1'h0, celloutsig_0_41z, celloutsig_0_40z, celloutsig_0_37z, celloutsig_0_26z, celloutsig_0_13z, celloutsig_0_30z };
  assign celloutsig_0_7z = { celloutsig_0_2z[24:23], celloutsig_0_4z } != { celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_0_28z = { celloutsig_0_2z[18], celloutsig_0_13z, celloutsig_0_27z, celloutsig_0_14z, celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_25z } !== { in_data[87:51], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_20z };
  assign celloutsig_0_29z = celloutsig_0_17z !== { celloutsig_0_9z[17:10], celloutsig_0_14z };
  assign celloutsig_0_30z = celloutsig_0_15z[10:3] !== { celloutsig_0_9z[12:9], celloutsig_0_6z, celloutsig_0_25z, celloutsig_0_28z, celloutsig_0_29z };
  assign celloutsig_0_5z = & { celloutsig_0_1z, in_data[48:44] };
  assign celloutsig_0_13z = & celloutsig_0_2z[14:11];
  assign celloutsig_0_4z = | in_data[51:37];
  assign celloutsig_0_26z = | celloutsig_0_24z[8:1];
  assign celloutsig_0_0z = in_data[77] & in_data[8];
  assign celloutsig_1_18z = celloutsig_1_10z & celloutsig_1_12z;
  assign celloutsig_1_1z = ~^ in_data[150:145];
  assign celloutsig_0_33z = ~^ celloutsig_0_17z[4:0];
  assign celloutsig_0_60z = ^ celloutsig_0_10z[7:0];
  assign celloutsig_0_93z = ^ { celloutsig_0_73z[8:2], celloutsig_0_82z };
  assign celloutsig_0_25z = ^ { celloutsig_0_9z[12:9], celloutsig_0_20z, celloutsig_0_7z };
  assign celloutsig_0_31z = ^ { celloutsig_0_24z, celloutsig_0_25z, celloutsig_0_29z, celloutsig_0_19z, celloutsig_0_30z, celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_17z, celloutsig_0_24z, celloutsig_0_20z, celloutsig_0_27z, celloutsig_0_6z, celloutsig_0_27z, celloutsig_0_20z, celloutsig_0_28z };
  assign celloutsig_0_52z = celloutsig_0_24z[6:4] - celloutsig_0_40z[5:3];
  assign celloutsig_0_10z = { celloutsig_0_8z[17:8], celloutsig_0_3z, celloutsig_0_7z } - { celloutsig_0_8z[15:5], celloutsig_0_0z };
  assign celloutsig_0_15z = { in_data[72:19], celloutsig_0_11z } - { in_data[65:11], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_12z };
  assign celloutsig_0_17z = { celloutsig_0_10z[11:4], celloutsig_0_7z } - celloutsig_0_8z[20:12];
  assign celloutsig_0_24z = celloutsig_0_9z[11:3] - { celloutsig_0_9z[14:10], celloutsig_0_11z };
  assign celloutsig_0_49z = in_data[23:13] ~^ { in_data[35:26], celloutsig_0_14z };
  assign celloutsig_0_18z = { celloutsig_0_9z[13:9], celloutsig_0_13z } ~^ { celloutsig_0_15z[50:46], celloutsig_0_1z };
  assign celloutsig_0_19z = { celloutsig_0_8z[5:3], celloutsig_0_14z } ~^ celloutsig_0_15z[49:46];
  always_latch
    if (!clkin_data[96]) celloutsig_0_39z = 3'h0;
    else if (clkin_data[32]) celloutsig_0_39z = celloutsig_0_36z[21:19];
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_8z = 22'h000000;
    else if (!clkin_data[32]) celloutsig_0_8z = { in_data[70:53], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_3z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_82z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_82z = celloutsig_0_19z;
  assign celloutsig_1_0z = ~((in_data[180] & in_data[147]) | (in_data[143] & in_data[168]));
  assign { celloutsig_1_11z[8], celloutsig_1_11z[5], celloutsig_1_11z[1] } = 3'h0;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_92z, celloutsig_0_93z };
endmodule
