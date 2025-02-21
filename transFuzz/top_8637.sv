/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire [5:0] _09_;
  wire [5:0] _10_;
  wire [2:0] _11_;
  wire [12:0] _12_;
  wire [4:0] _13_;
  wire [7:0] _14_;
  wire [4:0] _15_;
  wire [8:0] _16_;
  wire [4:0] _17_;
  wire [2:0] _18_;
  wire [21:0] _19_;
  wire celloutsig_0_10z;
  wire [2:0] celloutsig_0_11z;
  wire [21:0] celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [10:0] celloutsig_0_18z;
  wire [6:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [11:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [5:0] celloutsig_0_25z;
  wire [8:0] celloutsig_0_26z;
  wire [6:0] celloutsig_0_27z;
  wire [12:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [26:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [2:0] celloutsig_0_35z;
  wire [3:0] celloutsig_0_36z;
  wire [13:0] celloutsig_0_37z;
  wire [7:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [4:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [23:0] celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire [5:0] celloutsig_0_55z;
  wire celloutsig_0_57z;
  wire [2:0] celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire celloutsig_0_69z;
  wire [5:0] celloutsig_0_6z;
  wire celloutsig_0_71z;
  wire celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire celloutsig_0_81z;
  wire [2:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [11:0] celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire [13:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [20:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [6:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [4:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_48z = _00_ ? celloutsig_0_47z : celloutsig_0_15z;
  assign celloutsig_0_62z = celloutsig_0_60z ? celloutsig_0_45z : celloutsig_0_13z[0];
  assign celloutsig_0_47z = ~((celloutsig_0_22z | celloutsig_0_13z[12]) & celloutsig_0_7z);
  assign celloutsig_0_64z = ~((_02_ | celloutsig_0_61z) & _03_);
  assign celloutsig_0_69z = ~((celloutsig_0_65z | celloutsig_0_39z) & celloutsig_0_33z);
  assign celloutsig_1_1z = ~((celloutsig_1_0z | celloutsig_1_0z) & (celloutsig_1_0z | celloutsig_1_0z));
  assign celloutsig_0_17z = ~((_04_ | in_data[11]) & (_05_ | celloutsig_0_10z));
  assign celloutsig_0_3z = celloutsig_0_1z | ~(_06_);
  assign celloutsig_0_50z = celloutsig_0_46z | ~(celloutsig_0_28z[6]);
  assign celloutsig_0_10z = in_data[6] | ~(celloutsig_0_3z);
  assign celloutsig_0_52z = celloutsig_0_46z ^ celloutsig_0_33z;
  assign celloutsig_0_31z = _06_ ^ _08_;
  assign celloutsig_0_55z = _09_ + { _10_[5:4], celloutsig_0_8z, celloutsig_0_3z };
  assign celloutsig_0_8z = { _10_[5:4], _11_[0] } + { celloutsig_0_5z[2:1], celloutsig_0_1z };
  assign celloutsig_1_12z = { celloutsig_1_2z[7:0], celloutsig_1_10z, celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_10z } + celloutsig_1_2z[12:1];
  assign celloutsig_0_28z = { _12_[12], _02_, celloutsig_0_27z, celloutsig_0_24z, celloutsig_0_11z } + { celloutsig_0_27z[0], celloutsig_0_3z, celloutsig_0_26z, celloutsig_0_15z, celloutsig_0_3z };
  reg [3:0] _36_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _36_ <= 4'h0;
    else _36_ <= in_data[22:19];
  assign { _06_, _13_[3], _00_, _13_[1] } = _36_;
  reg [8:0] _37_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _37_ <= 9'h000;
    else _37_ <= { celloutsig_0_29z, celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_42z, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_31z };
  assign { _16_[8:6], _09_ } = _37_;
  reg [4:0] _38_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _38_ <= 5'h00;
    else _38_ <= { celloutsig_0_39z, celloutsig_0_29z, celloutsig_0_5z };
  assign { _17_[4:1], _03_ } = _38_;
  reg [2:0] _39_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _39_ <= 3'h0;
    else _39_ <= celloutsig_0_5z;
  assign { _14_[7], _05_, _18_[0] } = _39_;
  reg [21:0] _40_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _40_ <= 22'h000000;
    else _40_ <= { celloutsig_0_6z[4:1], celloutsig_0_7z, celloutsig_0_5z, _06_, _13_[3], _00_, _13_[1], _14_[7], _05_, _18_[0], celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_11z };
  assign { _01_, _19_[20:18], _12_[12], _02_, _19_[15:14], _04_, _19_[12:9], _08_, _19_[7:5], _07_, _19_[3:0] } = _40_;
  reg [4:0] _41_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _41_ <= 5'h00;
    else _41_ <= { _06_, _13_[3], _00_, _13_[1], celloutsig_0_1z };
  assign { _15_[4], _10_[5:4], _11_[0], _15_[0] } = _41_;
  assign celloutsig_0_51z = { celloutsig_0_47z, celloutsig_0_45z, celloutsig_0_37z, celloutsig_0_22z, celloutsig_0_50z, celloutsig_0_25z[5:2], celloutsig_0_25z[2], celloutsig_0_25z[0] } & { celloutsig_0_30z[23:5], celloutsig_0_35z[2:1], celloutsig_0_35z[1], celloutsig_0_16z, celloutsig_0_10z };
  assign celloutsig_1_8z = in_data[188:184] & in_data[129:125];
  assign celloutsig_0_46z = { celloutsig_0_18z[1], celloutsig_0_35z[2:1], celloutsig_0_35z[1], _06_, _13_[3], _00_, _13_[1], celloutsig_0_26z, celloutsig_0_22z, celloutsig_0_15z, celloutsig_0_22z, celloutsig_0_16z } == { celloutsig_0_38z[5:2], celloutsig_0_41z, celloutsig_0_31z, celloutsig_0_18z };
  assign celloutsig_0_61z = celloutsig_0_30z[7:5] == celloutsig_0_51z[11:9];
  assign celloutsig_0_80z = { celloutsig_0_20z[11:5], celloutsig_0_69z, celloutsig_0_57z, celloutsig_0_71z, celloutsig_0_39z } == { _19_[1], celloutsig_0_41z, celloutsig_0_45z, celloutsig_0_16z, celloutsig_0_8z };
  assign celloutsig_1_6z = { celloutsig_1_5z[5:1], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z } == { in_data[152:125], celloutsig_1_3z, celloutsig_1_4z };
  assign celloutsig_1_9z = { celloutsig_1_8z[4:2], celloutsig_1_6z, celloutsig_1_0z } == { celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_6z };
  assign celloutsig_0_24z = { celloutsig_0_6z[4], celloutsig_0_8z } == { _15_[4], _10_[5:4], celloutsig_0_23z };
  assign celloutsig_0_81z = { _07_, _19_[3:1], celloutsig_0_24z, celloutsig_0_22z, celloutsig_0_7z, celloutsig_0_53z } >= celloutsig_0_26z[7:0];
  assign celloutsig_1_14z = { in_data[99:97], celloutsig_1_9z, celloutsig_1_0z } >= { celloutsig_1_2z[16:13], celloutsig_1_3z };
  assign celloutsig_0_9z = in_data[15:11] >= { _15_[4], _10_[5:4], _11_[0], _15_[0] };
  assign celloutsig_0_16z = { _00_, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_13z, celloutsig_0_3z } >= { celloutsig_0_13z, _15_[4], _10_[5:4], _11_[0], _15_[0] };
  assign celloutsig_0_33z = celloutsig_0_20z[6:0] <= celloutsig_0_18z[7:1];
  assign celloutsig_0_34z = celloutsig_0_28z[11:4] <= { celloutsig_0_19z[4:0], celloutsig_0_11z };
  assign celloutsig_0_57z = { celloutsig_0_30z[25:6], celloutsig_0_9z, celloutsig_0_35z[2:1], celloutsig_0_35z[1], celloutsig_0_23z, celloutsig_0_24z } <= { celloutsig_0_37z[11:1], celloutsig_0_5z, celloutsig_0_10z, _16_[8:6], _09_, celloutsig_0_23z, celloutsig_0_53z };
  assign celloutsig_0_7z = { in_data[14:12], celloutsig_0_4z } <= { celloutsig_0_6z[2:1], celloutsig_0_6z[1], celloutsig_0_1z };
  assign celloutsig_0_23z = { _06_, _14_[7], _05_, _18_[0], celloutsig_0_11z, celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_20z, celloutsig_0_15z, _06_, _13_[3], _00_, _13_[1] } <= { celloutsig_0_13z[14:1], celloutsig_0_8z, _14_[7], _05_, _18_[0], celloutsig_0_20z };
  assign celloutsig_0_29z = { celloutsig_0_11z[1:0], celloutsig_0_24z, celloutsig_0_10z } <= celloutsig_0_28z[7:4];
  assign celloutsig_0_42z = ! { celloutsig_0_27z[4:0], celloutsig_0_8z, celloutsig_0_29z, celloutsig_0_36z };
  assign celloutsig_0_45z = ! celloutsig_0_20z[11:1];
  assign celloutsig_0_53z = ! { celloutsig_0_27z[6:2], celloutsig_0_8z, celloutsig_0_52z, _14_[7], _05_, _18_[0], celloutsig_0_48z, celloutsig_0_41z, celloutsig_0_15z };
  assign celloutsig_0_65z = ! { celloutsig_0_39z, celloutsig_0_23z, celloutsig_0_24z, celloutsig_0_64z, celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_5z, celloutsig_0_15z, _01_, _19_[20:18], _12_[12], _02_, _19_[15:14], _04_, _19_[12:9], _08_, _19_[7:5], _07_, _19_[3:0], celloutsig_0_26z, celloutsig_0_47z, celloutsig_0_60z, celloutsig_0_36z, celloutsig_0_62z, celloutsig_0_31z, celloutsig_0_47z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_11z };
  assign celloutsig_1_11z = ! in_data[152:140];
  assign celloutsig_0_22z = { in_data[52:31], _15_[4], _10_[5:4], _11_[0], _15_[0] } || { celloutsig_0_13z[11:2], celloutsig_0_6z[5:1], celloutsig_0_6z[1], celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_9z, _14_[7], _05_, _18_[0] };
  assign celloutsig_0_4z = { in_data[90], _06_, _13_[3], _00_, _13_[1] } < { in_data[83:80], celloutsig_0_1z };
  assign celloutsig_0_60z = { _16_[8:6], _09_ } < { celloutsig_0_37z[8:2], celloutsig_0_15z, celloutsig_0_53z };
  assign celloutsig_0_71z = { _01_, _19_[20:18], _12_[12], _02_, _19_[15:14], _04_, _19_[12:9], _08_, _19_[7:5], _07_, _19_[3:0] } < { celloutsig_0_20z[9:1], celloutsig_0_19z, celloutsig_0_55z };
  assign celloutsig_1_0z = in_data[115:111] < in_data[116:112];
  assign celloutsig_0_1z = in_data[7:5] < in_data[8:6];
  assign celloutsig_0_37z = { _14_[7], _05_, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_5z, celloutsig_0_29z } % { 1'h1, celloutsig_0_30z[11:0], celloutsig_0_15z };
  assign celloutsig_1_18z = { celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_11z } != { celloutsig_1_12z[7], celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_5z = ~ in_data[85:83];
  assign celloutsig_0_18z = ~ celloutsig_0_13z[13:3];
  assign celloutsig_0_19z = ~ celloutsig_0_18z[9:3];
  assign celloutsig_1_3z = | celloutsig_1_2z[11:0];
  assign celloutsig_1_4z = | { in_data[160:158], celloutsig_1_1z };
  assign celloutsig_1_10z = | { in_data[127:124], celloutsig_1_9z };
  assign celloutsig_0_15z = | in_data[30:21];
  assign celloutsig_0_21z = | { _19_[12:9], _08_, _19_[7:5], _07_, _19_[3:0], celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_15z };
  assign celloutsig_0_36z = { celloutsig_0_30z[17:16], celloutsig_0_17z, celloutsig_0_3z } >> celloutsig_0_27z[5:2];
  assign celloutsig_0_13z = { in_data[59:44], _15_[4], _10_[5:4], _11_[0], _15_[0], celloutsig_0_9z } >> { _06_, _13_[3], _00_, celloutsig_0_9z, _06_, _13_[3], _00_, _13_[1], celloutsig_0_4z, celloutsig_0_5z, _06_, _13_[3], _00_, _13_[1], _06_, _13_[3], _00_, _13_[1], celloutsig_0_9z, celloutsig_0_9z };
  assign celloutsig_0_27z = { celloutsig_0_6z[4:1], celloutsig_0_6z[1], celloutsig_0_21z, celloutsig_0_7z } >> { celloutsig_0_7z, celloutsig_0_9z, _15_[4], _10_[5:4], _11_[0], _15_[0] };
  assign celloutsig_0_41z = in_data[16:12] - celloutsig_0_28z[8:4];
  assign celloutsig_0_30z = { celloutsig_0_18z[1], _06_, _13_[3], _00_, _13_[1], celloutsig_0_21z, celloutsig_0_19z, celloutsig_0_28z, celloutsig_0_16z } - { _10_[4], _11_[0], celloutsig_0_20z, celloutsig_0_16z, celloutsig_0_24z, celloutsig_0_23z, celloutsig_0_26z, celloutsig_0_17z };
  assign celloutsig_0_38z = in_data[46:39] ~^ celloutsig_0_26z[8:1];
  assign celloutsig_1_2z = in_data[147:127] ~^ in_data[188:168];
  assign celloutsig_1_19z = { celloutsig_1_2z[14:13], celloutsig_1_11z, celloutsig_1_5z[6:1], celloutsig_1_5z[2], celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_18z, celloutsig_1_14z } ~^ in_data[118:105];
  assign celloutsig_0_11z = { _15_[4], _10_[5:4] } ~^ { _10_[5:4], celloutsig_0_3z };
  assign celloutsig_0_20z = { celloutsig_0_18z[9:0], celloutsig_0_16z, celloutsig_0_15z } ~^ { in_data[33], celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_15z, _06_, _13_[3], _00_, _13_[1] };
  assign celloutsig_0_26z = { celloutsig_0_8z, celloutsig_0_15z, _15_[4], _10_[5:4], _11_[0], _15_[0] } ~^ { _19_[18], _12_[12], _02_, _19_[15:14], _04_, _19_[12:10] };
  assign celloutsig_0_39z = ~((celloutsig_0_34z & celloutsig_0_15z) | celloutsig_0_7z);
  assign { celloutsig_0_6z[4:1], celloutsig_0_6z[5] } = ~ { celloutsig_0_5z, celloutsig_0_4z, _06_ };
  assign { celloutsig_0_25z[2], celloutsig_0_25z[0], celloutsig_0_25z[3], celloutsig_0_25z[5:4] } = ~ { celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_1z, _00_, _13_[1] };
  assign { celloutsig_0_35z[1], celloutsig_0_35z[2] } = ~ { celloutsig_0_33z, celloutsig_0_7z };
  assign { celloutsig_1_5z[1], celloutsig_1_5z[2], celloutsig_1_5z[6:3] } = ~ { celloutsig_1_4z, celloutsig_1_0z, in_data[153:150] };
  assign _10_[3:0] = { celloutsig_0_8z, celloutsig_0_3z };
  assign _11_[2:1] = _10_[5:4];
  assign _12_[11:0] = { _02_, celloutsig_0_27z, celloutsig_0_24z, celloutsig_0_11z };
  assign { _13_[4], _13_[2], _13_[0] } = { _06_, _00_, celloutsig_0_1z };
  assign _14_[6:0] = { _05_, celloutsig_0_25z[5:2], celloutsig_0_25z[2], celloutsig_0_25z[0] };
  assign _15_[3:1] = { _10_[5:4], _11_[0] };
  assign _16_[5:0] = _09_;
  assign _17_[0] = _03_;
  assign _18_[2:1] = { _14_[7], _05_ };
  assign { _19_[21], _19_[17:16], _19_[13], _19_[8], _19_[4] } = { _01_, _12_[12], _02_, _04_, _08_, _07_ };
  assign celloutsig_0_25z[1] = celloutsig_0_25z[2];
  assign celloutsig_0_35z[0] = celloutsig_0_35z[1];
  assign celloutsig_0_6z[0] = celloutsig_0_6z[1];
  assign celloutsig_1_5z[0] = celloutsig_1_5z[2];
  assign { out_data[128], out_data[109:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_80z, celloutsig_0_81z };
endmodule
