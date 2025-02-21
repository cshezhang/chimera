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
  wire [7:0] _08_;
  wire [21:0] _09_;
  wire [26:0] _10_;
  reg [10:0] _11_;
  wire [18:0] _12_;
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [18:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [6:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [11:0] celloutsig_0_24z;
  wire [6:0] celloutsig_0_25z;
  wire [14:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [3:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [20:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [9:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [12:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [2:0] celloutsig_0_45z;
  wire [27:0] celloutsig_0_46z;
  wire [12:0] celloutsig_0_47z;
  wire [7:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire [7:0] celloutsig_0_4z;
  wire [7:0] celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire [7:0] celloutsig_0_54z;
  wire [28:0] celloutsig_0_55z;
  wire [14:0] celloutsig_0_56z;
  wire [5:0] celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire celloutsig_0_63z;
  wire celloutsig_0_65z;
  wire [4:0] celloutsig_0_67z;
  wire [8:0] celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire celloutsig_0_72z;
  wire celloutsig_0_73z;
  wire celloutsig_0_75z;
  wire [5:0] celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire celloutsig_0_86z;
  wire [46:0] celloutsig_0_87z;
  wire [10:0] celloutsig_0_8z;
  wire [5:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [2:0] celloutsig_1_10z;
  wire [11:0] celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [8:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [6:0] celloutsig_1_3z;
  wire [7:0] celloutsig_1_7z;
  wire [5:0] celloutsig_1_8z;
  wire [7:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_30z = celloutsig_0_25z[0] ? _00_ : celloutsig_0_25z[5];
  assign celloutsig_0_80z = _01_ ? celloutsig_0_51z : celloutsig_0_42z[12];
  assign celloutsig_1_0z = in_data[97] ? in_data[132] : in_data[160];
  assign celloutsig_0_15z = celloutsig_0_7z[3] ? celloutsig_0_5z : celloutsig_0_9z[1];
  assign celloutsig_0_27z = celloutsig_0_11z ? celloutsig_0_12z : celloutsig_0_20z;
  assign celloutsig_0_29z = ~(_02_ & _03_);
  assign celloutsig_0_53z = !(celloutsig_0_32z ? celloutsig_0_40z : celloutsig_0_52z);
  assign celloutsig_0_18z = !(celloutsig_0_2z ? celloutsig_0_5z : celloutsig_0_6z[4]);
  assign celloutsig_0_5z = ~(in_data[27] | celloutsig_0_4z[2]);
  assign celloutsig_0_11z = ~(celloutsig_0_0z | celloutsig_0_5z);
  assign celloutsig_0_3z = ~((celloutsig_0_0z | celloutsig_0_2z) & celloutsig_0_1z);
  assign celloutsig_0_39z = ~((celloutsig_0_25z[3] | celloutsig_0_19z[2]) & _04_);
  assign celloutsig_1_19z = ~((celloutsig_1_9z[0] | celloutsig_1_8z[4]) & celloutsig_1_9z[1]);
  assign celloutsig_0_12z = ~((celloutsig_0_1z | celloutsig_0_0z) & celloutsig_0_4z[6]);
  assign celloutsig_0_14z = ~((_05_ | celloutsig_0_8z[7]) & celloutsig_0_1z);
  assign celloutsig_0_1z = ~((celloutsig_0_0z | in_data[63]) & celloutsig_0_0z);
  assign celloutsig_0_0z = ~((in_data[10] | in_data[3]) & (in_data[0] | in_data[88]));
  assign celloutsig_0_34z = ~((celloutsig_0_26z[2] | celloutsig_0_28z[2]) & (celloutsig_0_8z[2] | celloutsig_0_3z));
  assign celloutsig_0_58z = ~((celloutsig_0_30z | celloutsig_0_0z) & (celloutsig_0_22z | celloutsig_0_53z));
  assign celloutsig_0_72z = ~((celloutsig_0_36z | celloutsig_0_51z) & (celloutsig_0_57z[3] | celloutsig_0_14z));
  assign celloutsig_0_75z = ~((celloutsig_0_72z | celloutsig_0_65z) & (celloutsig_0_4z[5] | celloutsig_0_19z[1]));
  assign celloutsig_0_63z = celloutsig_0_0z | ~(celloutsig_0_61z);
  assign celloutsig_1_7z = { _08_[7:1], celloutsig_1_2z } + { celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_1_8z = celloutsig_1_3z[5:0] + celloutsig_1_1z[8:3];
  reg [21:0] _37_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[96])
    if (clkin_data[96]) _37_ <= 22'h000000;
    else _37_ <= { in_data[154:141], celloutsig_1_3z, celloutsig_1_0z };
  assign { _09_[21:14], _07_, _09_[12:7], _08_[7:1] } = _37_;
  reg [26:0] _38_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _38_ <= 27'h0000000;
    else _38_ <= { in_data[31:14], celloutsig_0_6z };
  assign { _10_[26], _05_, _10_[24:20], _04_, _10_[18:14], _03_, _10_[12:0] } = _38_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[64])
    if (clkin_data[64]) _11_ <= 11'h000;
    else _11_ <= { _10_[6:2], celloutsig_0_9z };
  reg [18:0] _40_;
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[64])
    if (!clkin_data[64]) _40_ <= 19'h00000;
    else _40_ <= { celloutsig_0_7z[5:1], celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_7z };
  assign { _00_, _12_[17:15], _01_, _12_[13:11], _02_, _06_, _12_[8:0] } = _40_;
  assign celloutsig_0_47z = { celloutsig_0_7z[5:1], celloutsig_0_25z, celloutsig_0_2z } & { _10_[20], celloutsig_0_25z, celloutsig_0_11z, celloutsig_0_36z, celloutsig_0_11z, celloutsig_0_44z, celloutsig_0_1z };
  assign celloutsig_0_57z = celloutsig_0_38z[9:4] & { celloutsig_0_54z[6:2], celloutsig_0_41z };
  assign celloutsig_0_67z = { celloutsig_0_48z[5:3], celloutsig_0_65z, celloutsig_0_5z } & { celloutsig_0_47z[5:2], celloutsig_0_2z };
  assign celloutsig_0_19z = celloutsig_0_6z[7:1] & celloutsig_0_17z[12:6];
  assign celloutsig_0_26z = { celloutsig_0_8z[10:4], celloutsig_0_14z, celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_20z, celloutsig_0_15z, celloutsig_0_20z, celloutsig_0_14z } & { celloutsig_0_8z[3:1], celloutsig_0_16z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_23z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_16z };
  assign celloutsig_0_33z = { celloutsig_0_26z, celloutsig_0_9z } / { 1'h1, _11_[9:0], celloutsig_0_9z, celloutsig_0_31z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_55z = { celloutsig_0_33z[3:2], celloutsig_0_28z, celloutsig_0_27z, celloutsig_0_25z, celloutsig_0_45z, celloutsig_0_52z, celloutsig_0_31z, celloutsig_0_38z } / { 1'h1, _12_[13:11], _02_, _06_, celloutsig_0_47z, celloutsig_0_15z, celloutsig_0_50z, celloutsig_0_5z };
  assign celloutsig_0_48z = { _11_[4:0], celloutsig_0_35z, celloutsig_0_22z, celloutsig_0_11z } / { 1'h1, celloutsig_0_6z[7:2], celloutsig_0_15z };
  assign celloutsig_0_54z = { celloutsig_0_6z[5:2], celloutsig_0_0z, celloutsig_0_41z, celloutsig_0_34z, celloutsig_0_2z } / { 1'h1, _11_[6:1], celloutsig_0_1z };
  assign celloutsig_0_87z = { _04_, _10_[18:14], _03_, celloutsig_0_41z, celloutsig_0_70z, celloutsig_0_29z, celloutsig_0_41z, celloutsig_0_58z, celloutsig_0_73z, celloutsig_0_80z, celloutsig_0_39z, celloutsig_0_67z, _10_[26], _05_, _10_[24:20], _04_, _10_[18:14], _03_, _10_[12:0] } / { 1'h1, celloutsig_0_47z[1], celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_55z, celloutsig_0_53z, celloutsig_0_25z };
  assign celloutsig_0_40z = { _11_[7], celloutsig_0_35z, celloutsig_0_25z, celloutsig_0_37z, celloutsig_0_29z, celloutsig_0_16z, celloutsig_0_2z, celloutsig_0_29z } == { celloutsig_0_24z, celloutsig_0_32z, celloutsig_0_0z };
  assign celloutsig_0_51z = { celloutsig_0_16z, celloutsig_0_43z, celloutsig_0_36z, celloutsig_0_36z, celloutsig_0_37z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_3z } == { celloutsig_0_24z[9:3], celloutsig_0_23z };
  assign celloutsig_0_52z = { celloutsig_0_36z, celloutsig_0_37z, celloutsig_0_1z } == celloutsig_0_25z[3:1];
  assign celloutsig_0_49z = { _12_[15], _01_, _12_[13:11], _02_, _06_, _12_[8:7], celloutsig_0_36z, celloutsig_0_36z, celloutsig_0_31z, celloutsig_0_30z, celloutsig_0_43z } >= { _11_, celloutsig_0_18z, celloutsig_0_23z, celloutsig_0_40z };
  assign celloutsig_0_86z = { celloutsig_0_50z[7:5], celloutsig_0_25z, celloutsig_0_32z } || { celloutsig_0_56z[3:2], celloutsig_0_75z, celloutsig_0_43z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_72z, celloutsig_0_28z };
  assign celloutsig_0_42z = { celloutsig_0_7z[5:2], celloutsig_0_6z } * { celloutsig_0_8z[7:0], celloutsig_0_20z, celloutsig_0_39z, celloutsig_0_39z, celloutsig_0_29z, celloutsig_0_18z };
  assign celloutsig_0_45z = celloutsig_0_28z[2:0] * _11_[7:5];
  assign celloutsig_0_56z = { celloutsig_0_8z[8:0], celloutsig_0_28z, celloutsig_0_43z, celloutsig_0_23z } * { celloutsig_0_53z, celloutsig_0_7z, celloutsig_0_18z, celloutsig_0_31z, celloutsig_0_7z };
  assign celloutsig_0_7z = { celloutsig_0_6z[8:4], celloutsig_0_1z } * { celloutsig_0_4z[7:3], celloutsig_0_2z };
  assign celloutsig_1_9z = celloutsig_1_7z * in_data[187:180];
  assign celloutsig_0_17z = { celloutsig_0_4z[6:0], celloutsig_0_9z, celloutsig_0_9z } * { _10_[3:0], celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_14z };
  assign celloutsig_0_25z = { celloutsig_0_24z[9:4], celloutsig_0_2z } * { celloutsig_0_7z[1], celloutsig_0_9z };
  assign celloutsig_0_4z = { in_data[54:53], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z } | { in_data[4:0], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_2z = | { in_data[44:36], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_32z = | celloutsig_0_4z[6:4];
  assign celloutsig_0_35z = | { _04_, _10_[18:16], celloutsig_0_23z };
  assign celloutsig_0_36z = | _11_[4:1];
  assign celloutsig_0_44z = | { celloutsig_0_42z[11:10], celloutsig_0_7z, celloutsig_0_37z, celloutsig_0_38z, celloutsig_0_3z, celloutsig_0_37z, celloutsig_0_36z };
  assign celloutsig_0_61z = | celloutsig_0_46z[14:5];
  assign celloutsig_0_73z = | { celloutsig_0_55z[19:16], celloutsig_0_5z, celloutsig_0_49z, celloutsig_0_45z, celloutsig_0_16z };
  assign celloutsig_1_18z = | celloutsig_1_13z[6:2];
  assign celloutsig_0_22z = | { _11_, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_16z, celloutsig_0_20z, celloutsig_0_16z, celloutsig_0_9z };
  assign celloutsig_0_23z = | { celloutsig_0_7z[2:0], celloutsig_0_15z };
  assign celloutsig_0_70z = | { celloutsig_0_38z, celloutsig_0_0z };
  assign celloutsig_0_20z = | { celloutsig_0_18z, celloutsig_0_9z, celloutsig_0_8z[10:6] };
  assign celloutsig_0_31z = ^ { _11_[0], celloutsig_0_12z, celloutsig_0_23z, celloutsig_0_14z, celloutsig_0_1z };
  assign celloutsig_0_37z = ^ { celloutsig_0_26z[10:2], celloutsig_0_25z, celloutsig_0_27z };
  assign celloutsig_0_41z = ^ { celloutsig_0_4z[6:4], celloutsig_0_20z };
  assign celloutsig_0_43z = ^ { _10_[5:3], celloutsig_0_39z };
  assign celloutsig_0_65z = ^ { celloutsig_0_24z[11:8], celloutsig_0_30z, celloutsig_0_63z, celloutsig_0_32z };
  assign celloutsig_0_6z = { celloutsig_0_4z, celloutsig_0_1z } >> { in_data[69:64], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_24z = { celloutsig_0_17z[9:0], celloutsig_0_0z, celloutsig_0_16z } >> { celloutsig_0_6z[4:2], celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_20z };
  assign celloutsig_0_46z = { in_data[68:61], celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_38z } <<< { celloutsig_0_27z, celloutsig_0_5z, celloutsig_0_44z, celloutsig_0_36z, celloutsig_0_20z, celloutsig_0_32z, celloutsig_0_2z, celloutsig_0_16z, celloutsig_0_29z, celloutsig_0_6z, celloutsig_0_45z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_28z, celloutsig_0_34z };
  assign celloutsig_1_3z = { in_data[174:169], celloutsig_1_0z } <<< { in_data[111:108], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_10z = celloutsig_1_9z[2:0] <<< celloutsig_1_7z[4:2];
  assign celloutsig_0_9z = in_data[94:89] >>> in_data[55:50];
  assign celloutsig_1_13z = { in_data[125:117], celloutsig_1_10z } >>> in_data[120:109];
  assign celloutsig_0_8z = { celloutsig_0_6z[8], celloutsig_0_6z, celloutsig_0_2z } - { in_data[66:64], celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_2z };
  assign celloutsig_1_1z = in_data[164:156] - in_data[146:138];
  assign celloutsig_0_38z = celloutsig_0_33z[10:1] ~^ { celloutsig_0_4z, celloutsig_0_18z, celloutsig_0_35z };
  assign celloutsig_0_50z = { _04_, _10_[18:14], _03_, celloutsig_0_27z } ~^ { _10_[22:20], _04_, _10_[18:16], celloutsig_0_39z };
  assign celloutsig_0_28z = celloutsig_0_26z[11:8] ~^ { celloutsig_0_19z[6:5], celloutsig_0_11z, celloutsig_0_14z };
  assign celloutsig_1_2z = ~((in_data[125] & celloutsig_1_1z[0]) | celloutsig_1_1z[1]);
  assign celloutsig_0_16z = ~((celloutsig_0_6z[3] & celloutsig_0_14z) | celloutsig_0_9z[0]);
  assign _08_[0] = celloutsig_1_2z;
  assign { _09_[13], _09_[6:0] } = { _07_, _08_[7:1] };
  assign { _10_[25], _10_[19], _10_[13] } = { _05_, _04_, _03_ };
  assign { _12_[18], _12_[14], _12_[10:9] } = { _00_, _01_, _02_, _06_ };
  assign { out_data[128], out_data[96], out_data[32:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_86z, celloutsig_0_87z[31:0] };
endmodule
