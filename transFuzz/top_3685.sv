/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  reg [25:0] _04_;
  wire [23:0] _05_;
  wire [16:0] _06_;
  wire [4:0] _07_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [2:0] celloutsig_0_11z;
  wire [2:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [27:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [5:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [29:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [20:0] celloutsig_0_22z;
  wire [6:0] celloutsig_0_23z;
  wire [6:0] celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [6:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [6:0] celloutsig_0_2z;
  wire [2:0] celloutsig_0_30z;
  wire [4:0] celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire [26:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [11:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [16:0] celloutsig_0_45z;
  wire [10:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire [12:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire [5:0] celloutsig_0_55z;
  wire [10:0] celloutsig_0_57z;
  wire celloutsig_0_59z;
  wire [2:0] celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire [3:0] celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire [19:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire [4:0] celloutsig_0_73z;
  wire [9:0] celloutsig_0_74z;
  wire [3:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire [10:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [9:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [2:0] celloutsig_1_14z;
  wire [2:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [5:0] celloutsig_1_18z;
  wire [5:0] celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [5:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_40z = celloutsig_0_2z[5] ? celloutsig_0_27z : celloutsig_0_5z[0];
  assign celloutsig_0_65z = celloutsig_0_33z ? celloutsig_0_51z : celloutsig_0_59z;
  assign celloutsig_0_27z = celloutsig_0_8z ? celloutsig_0_26z : celloutsig_0_5z[0];
  assign celloutsig_0_44z = ~celloutsig_0_13z;
  assign celloutsig_0_29z = ~celloutsig_0_26z;
  assign celloutsig_1_6z = ~((celloutsig_1_5z | in_data[171]) & celloutsig_1_4z);
  assign celloutsig_0_21z = ~((in_data[56] | celloutsig_0_9z) & celloutsig_0_3z);
  assign celloutsig_0_38z = ~((celloutsig_0_11z[0] | celloutsig_0_23z[6]) & (1'h1 | celloutsig_0_26z));
  assign celloutsig_0_42z = ~((_00_ | celloutsig_0_28z[6]) & (celloutsig_0_30z[0] | celloutsig_0_3z));
  assign celloutsig_0_47z = ~((celloutsig_0_43z | celloutsig_0_31z[3]) & (celloutsig_0_18z | celloutsig_0_46z[2]));
  assign celloutsig_0_52z = ~((celloutsig_0_35z | celloutsig_0_11z[0]) & (celloutsig_0_47z | celloutsig_0_3z));
  assign celloutsig_0_54z = ~((celloutsig_0_30z[2] | celloutsig_0_33z) & (celloutsig_0_2z[0] | _01_));
  assign celloutsig_0_62z = ~((celloutsig_0_19z | celloutsig_0_18z) & (celloutsig_0_34z[4] | celloutsig_0_55z[4]));
  assign celloutsig_1_3z = ~((celloutsig_1_2z | celloutsig_1_0z[1]) & (in_data[165] | celloutsig_1_0z[2]));
  assign celloutsig_1_4z = ~((celloutsig_1_0z[1] | in_data[115]) & (celloutsig_1_2z | celloutsig_1_0z[2]));
  assign celloutsig_0_8z = ~((celloutsig_0_2z[1] | celloutsig_0_3z) & (in_data[67] | celloutsig_0_3z));
  assign celloutsig_1_7z = ~((celloutsig_1_2z | celloutsig_1_0z[0]) & (celloutsig_1_2z | _02_));
  assign celloutsig_1_11z = ~((celloutsig_1_10z[2] | celloutsig_1_0z[1]) & (celloutsig_1_3z | _03_));
  assign celloutsig_0_1z = ~((celloutsig_0_0z | celloutsig_0_0z) & (in_data[23] | celloutsig_0_0z));
  assign celloutsig_0_26z = ~((celloutsig_0_24z[5] | celloutsig_0_6z) & (celloutsig_0_6z | celloutsig_0_23z[6]));
  assign celloutsig_0_37z = celloutsig_0_31z[4] ^ celloutsig_0_17z[1];
  assign celloutsig_0_45z = { in_data[20:5], celloutsig_0_9z } + { celloutsig_0_21z, celloutsig_0_1z, celloutsig_0_27z, celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_38z, celloutsig_0_37z, celloutsig_0_1z, celloutsig_0_44z, celloutsig_0_23z, celloutsig_0_18z };
  assign celloutsig_0_69z = { celloutsig_0_34z[21:12], celloutsig_0_43z, celloutsig_0_61z, celloutsig_0_38z, celloutsig_0_60z, celloutsig_0_39z, celloutsig_0_33z, celloutsig_0_50z } + { celloutsig_0_45z[14:1], celloutsig_0_15z, celloutsig_0_39z, celloutsig_0_8z, celloutsig_0_66z, celloutsig_0_41z, celloutsig_0_19z };
  assign celloutsig_0_7z = 4'hf + { celloutsig_0_1z, in_data[39], celloutsig_0_5z[1:0] };
  assign celloutsig_1_0z = in_data[178:176] + in_data[179:177];
  assign celloutsig_1_12z = { celloutsig_1_10z[8:0], celloutsig_1_7z } + { celloutsig_1_10z[7:2], celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_11z, celloutsig_1_2z };
  assign celloutsig_0_14z = { in_data[61:50], celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_4z[12:9], 7'h7f, celloutsig_0_4z[1], celloutsig_0_4z[9], celloutsig_0_0z } + { celloutsig_0_12z[2:1], celloutsig_0_2z, celloutsig_0_1z, in_data[39], celloutsig_0_5z[1:0], celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_2z };
  reg [23:0] _35_;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _35_ <= 24'h000000;
    else _35_ <= { celloutsig_0_20z[9:3], celloutsig_0_13z, celloutsig_0_48z, celloutsig_0_36z[11:8], celloutsig_0_14z[9:3], celloutsig_0_36z[0], celloutsig_0_30z };
  assign { _05_[23:12], _01_, _05_[10:0] } = _35_;
  reg [16:0] _36_;
  always_ff @(posedge clkin_data[64], posedge clkin_data[96])
    if (clkin_data[96]) _36_ <= 17'h00000;
    else _36_ <= in_data[174:158];
  assign { _06_[16:10], _03_, _02_, _06_[7:0] } = _36_;
  reg [4:0] _37_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _37_ <= 5'h00;
    else _37_ <= { celloutsig_0_4z[12:9], 1'h1 };
  assign { _07_[4:2], _00_, _07_[0] } = _37_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _04_ <= 26'h0000000;
    else _04_ <= { celloutsig_0_14z[19:1], celloutsig_0_24z };
  assign celloutsig_0_57z = { celloutsig_0_46z[10:1], celloutsig_0_52z } & { celloutsig_0_20z[26], celloutsig_0_27z, celloutsig_0_19z, celloutsig_0_23z, celloutsig_0_41z };
  assign celloutsig_0_74z = { celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_62z, celloutsig_0_39z, celloutsig_0_40z, celloutsig_0_10z } & celloutsig_0_69z[15:6];
  assign celloutsig_0_61z = { _07_[3:2], _00_, _07_[0] } / { 1'h1, celloutsig_0_28z[4], celloutsig_0_52z, celloutsig_0_50z };
  assign celloutsig_0_34z = celloutsig_0_14z[27:1] / { 1'h1, celloutsig_0_20z[12:0], celloutsig_0_2z, celloutsig_0_17z };
  assign celloutsig_0_24z = celloutsig_0_20z[9:3] / { 1'h1, in_data[20:15] };
  assign celloutsig_0_0z = in_data[29:19] == in_data[76:66];
  assign celloutsig_0_6z = { in_data[66:46], celloutsig_0_3z, celloutsig_0_1z } == { celloutsig_0_2z[3:0], celloutsig_0_0z, celloutsig_0_0z, in_data[39], celloutsig_0_5z[1:0], celloutsig_0_1z, celloutsig_0_4z[12:9], 7'h7f, celloutsig_0_4z[1], celloutsig_0_4z[9] };
  assign celloutsig_0_66z = { celloutsig_0_23z[6:1], celloutsig_0_31z, celloutsig_0_51z } == { celloutsig_0_20z[23:21], celloutsig_0_65z, celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_35z, celloutsig_0_61z, celloutsig_0_0z };
  assign celloutsig_0_33z = { in_data[65:64], celloutsig_0_18z, celloutsig_0_9z, celloutsig_0_30z } === { celloutsig_0_2z[6:2], celloutsig_0_27z, celloutsig_0_18z };
  assign celloutsig_0_15z = { celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_9z } === celloutsig_0_14z[18:16];
  assign celloutsig_0_41z = { _07_[4:2], _00_ } >= { celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_21z, celloutsig_0_13z };
  assign celloutsig_1_5z = in_data[120:113] >= { in_data[140:138], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_48z = { in_data[20:15], celloutsig_0_38z } > { celloutsig_0_14z[12:8], celloutsig_0_44z, celloutsig_0_10z };
  assign celloutsig_0_60z = { celloutsig_0_2z[2], celloutsig_0_15z, celloutsig_0_47z, celloutsig_0_29z, celloutsig_0_38z, celloutsig_0_2z } > { celloutsig_0_45z[4], celloutsig_0_57z };
  assign celloutsig_1_16z = { celloutsig_1_0z[0], celloutsig_1_5z, _06_[16:10], _03_, _02_, _06_[7:0], _06_[16:10], _03_, _02_, _06_[7:0], celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_8z } > { _06_[13:10], _03_, _02_, _06_[7:2], celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_14z, celloutsig_1_12z, celloutsig_1_14z, celloutsig_1_13z, celloutsig_1_9z };
  assign celloutsig_0_18z = celloutsig_0_14z[18:5] > { celloutsig_0_11z[1], celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_13z, celloutsig_0_3z };
  assign celloutsig_0_3z = { in_data[34:25], celloutsig_0_0z, celloutsig_0_1z } <= { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_1_13z = { in_data[158:152], celloutsig_1_9z, celloutsig_1_4z, celloutsig_1_5z } <= { celloutsig_1_12z[8:5], celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_11z };
  assign celloutsig_0_51z = ! { _04_[14:12], in_data[39], celloutsig_0_5z[1:0], celloutsig_0_21z, celloutsig_0_27z };
  assign celloutsig_1_9z = ! in_data[181:177];
  assign celloutsig_0_35z = { _04_[10:0], celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_18z, celloutsig_0_12z } < { celloutsig_0_22z[12:2], celloutsig_0_15z, celloutsig_0_31z };
  assign celloutsig_0_39z = { _07_[4:2], _00_, celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_30z } < { _04_[13:6], celloutsig_0_6z, celloutsig_0_31z };
  assign celloutsig_0_46z = { celloutsig_0_36z[11:8], celloutsig_0_14z[9:3] } % { 1'h1, _07_[2], _00_, _07_[0], celloutsig_0_41z, celloutsig_0_17z };
  assign celloutsig_0_73z = { celloutsig_0_36z[10:8], celloutsig_0_14z[9], celloutsig_0_13z } % { 1'h1, celloutsig_0_14z[24:23], celloutsig_0_65z, celloutsig_0_9z };
  assign celloutsig_0_23z = { celloutsig_0_21z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_8z } % { 2'h3, celloutsig_0_19z, celloutsig_0_9z, in_data[39], celloutsig_0_5z[1:0] };
  assign celloutsig_0_2z = { in_data[68:66], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z } % { 1'h1, in_data[29:24] };
  assign celloutsig_0_50z = _04_[24:10] != { celloutsig_0_27z, celloutsig_0_8z, celloutsig_0_36z[11:8], celloutsig_0_14z[9:3], celloutsig_0_36z[0], celloutsig_0_38z };
  assign celloutsig_0_11z = - in_data[25:23];
  assign celloutsig_0_12z = - celloutsig_0_11z;
  assign celloutsig_0_20z = - { in_data[60:44], celloutsig_0_8z, celloutsig_0_11z, in_data[39], celloutsig_0_5z[1:0], in_data[39], celloutsig_0_5z[1:0], celloutsig_0_11z };
  assign celloutsig_0_13z = & { celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_5z[1:0], in_data[39], in_data[36], celloutsig_0_0z };
  assign celloutsig_0_16z = & { celloutsig_0_11z, celloutsig_0_5z[1:0], in_data[39] };
  assign celloutsig_0_59z = | { celloutsig_0_57z[10:5], celloutsig_0_50z };
  assign celloutsig_0_43z = ~^ { celloutsig_0_4z[11:9], 4'hf };
  assign celloutsig_1_2z = ~^ in_data[165:151];
  assign celloutsig_0_19z = ~^ { celloutsig_0_14z[25:24], celloutsig_0_18z };
  assign celloutsig_0_9z = ^ { celloutsig_0_5z[1:0], celloutsig_0_8z };
  assign celloutsig_0_10z = ^ { in_data[39], celloutsig_0_5z[1:0], celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_55z = { celloutsig_0_44z, celloutsig_0_54z, celloutsig_0_50z, celloutsig_0_42z, celloutsig_0_38z, celloutsig_0_16z } <<< celloutsig_0_45z[11:6];
  assign celloutsig_1_18z = { celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_15z, celloutsig_1_13z } <<< { celloutsig_1_16z, celloutsig_1_15z, celloutsig_1_9z, celloutsig_1_2z };
  assign celloutsig_0_17z = { in_data[65:62], celloutsig_0_0z, celloutsig_0_1z } <<< { in_data[7], celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_12z };
  assign celloutsig_0_31z = celloutsig_0_14z[27:23] <<< celloutsig_0_14z[23:19];
  assign celloutsig_1_8z = { _06_[13:10], celloutsig_1_4z, celloutsig_1_4z } - { _06_[11:10], _03_, _02_, _06_[7:6] };
  assign celloutsig_1_10z = { _06_[10], _03_, _02_, _06_[7:1], celloutsig_1_5z } - { _06_[13:10], _03_, _02_, _06_[7:4], celloutsig_1_9z };
  assign celloutsig_1_15z = celloutsig_1_14z - celloutsig_1_12z[4:2];
  assign celloutsig_0_22z = { celloutsig_0_14z[22:9], celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_15z, in_data[39], celloutsig_0_5z[1:0], celloutsig_0_21z } - { celloutsig_0_20z[25:9], celloutsig_0_1z, in_data[39], celloutsig_0_5z[1:0] };
  assign celloutsig_0_30z = in_data[63:61] - celloutsig_0_17z[5:3];
  assign celloutsig_1_19z = { in_data[114:113], celloutsig_1_5z, celloutsig_1_14z } ~^ { celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_16z, celloutsig_1_4z };
  assign celloutsig_1_14z = { celloutsig_1_12z[2:1], celloutsig_1_13z } ^ celloutsig_1_10z[2:0];
  assign celloutsig_0_28z = { _07_[4:2], _00_, _07_[0], celloutsig_0_10z, celloutsig_0_18z } ^ { celloutsig_0_2z[3:0], in_data[39], celloutsig_0_5z[1:0] };
  assign { celloutsig_0_4z[12:10], celloutsig_0_4z[1], celloutsig_0_4z[9] } = { celloutsig_0_2z[4:2], celloutsig_0_1z, celloutsig_0_0z } ~^ { in_data[81:79], celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_5z[1:0] = { celloutsig_0_4z[1], celloutsig_0_4z[9] } ~^ { celloutsig_0_0z, celloutsig_0_1z };
  assign { celloutsig_0_36z[11:9], celloutsig_0_36z[0], celloutsig_0_36z[8] } = { celloutsig_0_4z[12:10], celloutsig_0_4z[1], celloutsig_0_4z[9] } ~^ { celloutsig_0_14z[13:11], celloutsig_0_14z[2], celloutsig_0_14z[10] };
  assign _05_[11] = _01_;
  assign _06_[9:8] = { _03_, _02_ };
  assign _07_[1] = _00_;
  assign celloutsig_0_36z[7:1] = celloutsig_0_14z[9:3];
  assign { celloutsig_0_4z[8:2], celloutsig_0_4z[0] } = { 7'h7f, celloutsig_0_4z[9] };
  assign celloutsig_0_5z[2] = in_data[39];
  assign { out_data[133:128], out_data[101:96], out_data[36:32], out_data[9:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_73z, celloutsig_0_74z };
endmodule
