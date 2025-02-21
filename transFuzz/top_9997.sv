/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire [5:0] _07_;
  wire [4:0] _08_;
  reg [6:0] _09_;
  wire [8:0] _10_;
  wire [5:0] _11_;
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [11:0] celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [13:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [6:0] celloutsig_0_27z;
  wire [19:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [22:0] celloutsig_0_32z;
  wire [5:0] celloutsig_0_35z;
  wire [10:0] celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [9:0] celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire [4:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire [2:0] celloutsig_0_46z;
  wire [4:0] celloutsig_0_47z;
  wire [4:0] celloutsig_0_48z;
  wire [4:0] celloutsig_0_49z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire [5:0] celloutsig_0_55z;
  wire [8:0] celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_63z;
  wire celloutsig_0_67z;
  wire [3:0] celloutsig_0_68z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_71z;
  wire celloutsig_0_72z;
  wire [4:0] celloutsig_0_75z;
  wire [2:0] celloutsig_0_7z;
  wire celloutsig_0_86z;
  wire celloutsig_0_88z;
  wire celloutsig_0_8z;
  wire celloutsig_0_93z;
  wire celloutsig_0_94z;
  wire celloutsig_0_95z;
  wire [2:0] celloutsig_0_9z;
  wire [8:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [5:0] celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [21:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [23:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [11:0] celloutsig_1_6z;
  wire [14:0] celloutsig_1_7z;
  wire [17:0] celloutsig_1_8z;
  wire [13:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_63z = celloutsig_0_60z ? celloutsig_0_3z[0] : celloutsig_0_51z;
  assign celloutsig_0_8z = celloutsig_0_0z ? celloutsig_0_3z[3] : celloutsig_0_7z[2];
  assign celloutsig_0_13z = celloutsig_0_12z ? _00_ : in_data[59];
  assign celloutsig_0_30z = celloutsig_0_2z ? celloutsig_0_2z : _01_;
  assign celloutsig_0_41z = ~(celloutsig_0_11z & celloutsig_0_7z[2]);
  assign celloutsig_0_6z = ~(celloutsig_0_5z[6] & celloutsig_0_1z);
  assign celloutsig_0_18z = ~(celloutsig_0_6z & celloutsig_0_9z[0]);
  assign celloutsig_0_39z = ~in_data[58];
  assign celloutsig_0_94z = ~_02_;
  assign celloutsig_1_13z = ~celloutsig_1_4z;
  assign celloutsig_1_16z = ~celloutsig_1_15z;
  assign celloutsig_0_29z = ~celloutsig_0_19z;
  assign celloutsig_0_69z = ~((celloutsig_0_68z[3] | celloutsig_0_35z[5]) & _03_);
  assign celloutsig_0_11z = ~((celloutsig_0_5z[2] | celloutsig_0_9z[1]) & _04_);
  assign celloutsig_0_21z = ~((celloutsig_0_2z | celloutsig_0_0z) & (celloutsig_0_3z[3] | celloutsig_0_2z));
  assign celloutsig_0_44z = celloutsig_0_24z[4] | celloutsig_0_36z[10];
  assign celloutsig_0_45z = celloutsig_0_15z | celloutsig_0_44z;
  assign celloutsig_0_67z = celloutsig_0_20z | _05_;
  assign celloutsig_1_5z = celloutsig_1_1z | _06_;
  assign celloutsig_0_0z = in_data[84] ^ in_data[65];
  assign celloutsig_0_60z = celloutsig_0_30z ^ celloutsig_0_50z;
  assign celloutsig_1_4z = celloutsig_1_3z[9] ^ in_data[187];
  assign celloutsig_0_14z = celloutsig_0_8z ^ _00_;
  assign celloutsig_0_20z = celloutsig_0_11z ^ celloutsig_0_18z;
  assign celloutsig_0_25z = celloutsig_0_18z ^ celloutsig_0_1z;
  assign celloutsig_0_46z = { celloutsig_0_14z, celloutsig_0_22z, celloutsig_0_22z } + { celloutsig_0_16z[9:8], celloutsig_0_0z };
  reg [5:0] _38_;
  always_ff @(negedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _38_ <= 6'h00;
    else _38_ <= { in_data[13:11], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z };
  assign { _07_[5:4], _02_, _05_, _07_[1:0] } = _38_;
  reg [4:0] _39_;
  always_ff @(posedge clkin_data[32], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _39_ <= 5'h00;
    else _39_ <= celloutsig_0_5z[8:4];
  assign { _08_[4:1], _03_ } = _39_;
  always_ff @(posedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _09_ <= 7'h00;
    else _09_ <= { celloutsig_0_55z, celloutsig_0_45z };
  reg [15:0] _41_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _41_ <= 16'h0000;
    else _41_ <= { _09_[2:1], celloutsig_0_13z, celloutsig_0_23z, celloutsig_0_75z, celloutsig_0_69z, celloutsig_0_42z, celloutsig_0_12z };
  assign out_data[15:0] = _41_;
  reg [8:0] _42_;
  always_ff @(negedge clkin_data[64], negedge clkin_data[128])
    if (!clkin_data[128]) _42_ <= 9'h000;
    else _42_ <= celloutsig_1_0z;
  assign { _10_[8:4], _06_, _10_[2:0] } = _42_;
  reg [5:0] _43_;
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _43_ <= 6'h00;
    else _43_ <= celloutsig_0_3z[9:4];
  assign { _11_[5], _00_, _11_[3], _01_, _04_, _11_[0] } = _43_;
  assign celloutsig_0_68z = { celloutsig_0_28z[12:10], celloutsig_0_2z } & { celloutsig_0_27z[2:0], celloutsig_0_12z };
  assign celloutsig_0_75z = { celloutsig_0_3z[6:4], celloutsig_0_29z, celloutsig_0_12z } & celloutsig_0_36z[6:2];
  assign celloutsig_0_9z = { _07_[4], _02_, celloutsig_0_1z } & { celloutsig_0_5z[7:6], celloutsig_0_1z };
  assign celloutsig_1_6z = celloutsig_1_3z[20:9] & { in_data[120:118], _10_[8:4], _06_, _10_[2:0] };
  assign celloutsig_1_8z = { in_data[117:109], _10_[8:4], _06_, _10_[2:0] } & { _10_[8:4], _06_, _10_[2:0], _10_[8:4], _06_, _10_[2:0] };
  assign celloutsig_1_18z = { _10_[4], _06_, _10_[2:1], celloutsig_1_0z, _10_[8:4], _06_, _10_[2:0] } & { celloutsig_1_7z[9], celloutsig_1_0z, _10_[8:4], _06_, _10_[2:0], celloutsig_1_5z, celloutsig_1_13z, celloutsig_1_10z };
  assign celloutsig_0_7z = celloutsig_0_3z[9:7] / { 1'h1, celloutsig_0_3z[4], celloutsig_0_6z };
  assign celloutsig_1_9z = celloutsig_1_8z[13:0] / { 1'h1, celloutsig_1_3z[5:2], _10_[8:4], _06_, _10_[2:0] };
  assign celloutsig_1_11z = { _10_[7:4], _06_, celloutsig_1_4z } / { 1'h1, celloutsig_1_0z[5:1] };
  assign celloutsig_1_14z = celloutsig_1_6z[4:2] / { 1'h1, celloutsig_1_9z[6:5] };
  assign celloutsig_0_28z = { celloutsig_0_24z[7:3], celloutsig_0_26z, celloutsig_0_19z, celloutsig_0_1z, celloutsig_0_25z, celloutsig_0_0z, celloutsig_0_23z, celloutsig_0_11z, _11_[5], _00_, _11_[3], _01_, _04_, _11_[0], celloutsig_0_0z, celloutsig_0_6z } / { 1'h1, in_data[50:36], celloutsig_0_17z };
  assign celloutsig_0_86z = { celloutsig_0_32z[17:10], celloutsig_0_45z, celloutsig_0_17z, celloutsig_0_43z, celloutsig_0_75z } == { _04_, _11_[0], celloutsig_0_67z, celloutsig_0_49z, _07_[5:4], _02_, _05_, _07_[1:0], _08_[4:1], _03_ };
  assign celloutsig_0_1z = { in_data[39:38], celloutsig_0_0z } == in_data[14:12];
  assign celloutsig_0_23z = { celloutsig_0_17z[1], celloutsig_0_11z, celloutsig_0_0z } == in_data[34:32];
  assign celloutsig_0_19z = { in_data[18:9], celloutsig_0_8z } === { celloutsig_0_3z[9:1], celloutsig_0_0z, celloutsig_0_13z };
  assign celloutsig_1_15z = { in_data[123:120], celloutsig_1_4z } >= { celloutsig_1_7z[14:13], celloutsig_1_14z };
  assign celloutsig_0_26z = celloutsig_0_17z > { celloutsig_0_3z[8:7], celloutsig_0_14z, celloutsig_0_20z };
  assign celloutsig_0_38z = { celloutsig_0_11z, celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_26z, celloutsig_0_7z } && { celloutsig_0_28z[8:0], celloutsig_0_8z };
  assign celloutsig_0_93z = { _08_[4:1], _03_ } && { celloutsig_0_88z, celloutsig_0_17z };
  assign celloutsig_1_19z = { celloutsig_1_11z[2:1], celloutsig_1_16z, celloutsig_1_16z } && { celloutsig_1_7z[3:1], celloutsig_1_16z };
  assign celloutsig_1_1z = in_data[112:108] || in_data[134:130];
  assign celloutsig_0_12z = in_data[20:15] || { _11_[5], _00_, _11_[3], _01_, _04_, celloutsig_0_2z };
  assign celloutsig_0_35z = { _11_[5], _00_, _11_[3], _01_, _04_, _11_[0] } % { 1'h1, _07_[0], celloutsig_0_31z, celloutsig_0_0z, celloutsig_0_18z, celloutsig_0_1z };
  assign celloutsig_0_16z = { celloutsig_0_9z, celloutsig_0_7z, _11_[5], _00_, _11_[3], _01_, _04_, _11_[0] } % { 1'h1, in_data[24:14] };
  assign celloutsig_0_24z = { celloutsig_0_3z[5:0], celloutsig_0_1z, celloutsig_0_12z, _11_[5], _00_, _11_[3], _01_, _04_, _11_[0] } % { 1'h1, _07_[5:4], _02_, _05_, _07_[1:0], celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_12z };
  assign celloutsig_0_48z = celloutsig_0_47z % { 1'h1, celloutsig_0_7z, celloutsig_0_39z };
  assign celloutsig_0_27z = celloutsig_0_24z[9] ? { celloutsig_0_24z[5:0], celloutsig_0_18z } : { celloutsig_0_24z[12:10], 1'h0, celloutsig_0_24z[8:6] };
  assign celloutsig_0_3z = celloutsig_0_0z ? in_data[88:79] : { in_data[69:63], 1'h0, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_31z = { celloutsig_0_3z[9:2], celloutsig_0_20z } != { celloutsig_0_16z[9:6], celloutsig_0_21z, celloutsig_0_1z, celloutsig_0_7z };
  assign celloutsig_0_32z = - { celloutsig_0_5z[7:4], celloutsig_0_11z, celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_16z };
  assign celloutsig_0_36z = - { celloutsig_0_26z, celloutsig_0_7z, _07_[5:4], _02_, _05_, _07_[1:0], celloutsig_0_29z };
  assign celloutsig_1_3z = - { in_data[163:160], _10_[8:4], _06_, _10_[2:0], celloutsig_1_1z, _10_[8:4], _06_, _10_[2:0], celloutsig_1_1z };
  assign celloutsig_0_50z = | { celloutsig_0_32z[13:5], celloutsig_0_47z, celloutsig_0_22z, celloutsig_0_14z, celloutsig_0_45z, celloutsig_0_32z };
  assign celloutsig_0_51z = | celloutsig_0_32z[9:3];
  assign celloutsig_0_95z = | { celloutsig_0_14z, celloutsig_0_72z, celloutsig_0_86z, celloutsig_0_71z, celloutsig_0_93z, celloutsig_0_43z, celloutsig_0_63z, celloutsig_0_94z, celloutsig_0_0z };
  assign celloutsig_1_10z = | in_data[139:135];
  assign celloutsig_0_2z = | in_data[73:70];
  assign celloutsig_0_22z = | celloutsig_0_16z[11:1];
  assign celloutsig_0_88z = celloutsig_0_48z[3] & celloutsig_0_25z;
  assign celloutsig_0_43z = | celloutsig_0_28z[13:8];
  assign celloutsig_0_72z = | { celloutsig_0_60z, celloutsig_0_49z, celloutsig_0_47z, celloutsig_0_41z, celloutsig_0_9z };
  assign celloutsig_0_15z = | celloutsig_0_3z[3:0];
  assign celloutsig_0_71z = ~^ celloutsig_0_47z[4:2];
  assign celloutsig_0_5z = { in_data[93:86], celloutsig_0_2z } >>> celloutsig_0_3z[8:0];
  assign celloutsig_1_0z = in_data[183:175] >>> in_data[182:174];
  assign celloutsig_0_17z = { in_data[12:10], celloutsig_0_11z } >>> { celloutsig_0_3z[8:6], celloutsig_0_0z };
  assign celloutsig_0_42z = celloutsig_0_3z[9:5] - celloutsig_0_3z[9:5];
  assign celloutsig_0_47z = { _07_[4], _02_, _05_, _07_[1], celloutsig_0_15z } - { celloutsig_0_29z, celloutsig_0_38z, celloutsig_0_29z, celloutsig_0_26z, celloutsig_0_23z };
  assign celloutsig_0_49z = { celloutsig_0_19z, celloutsig_0_46z, celloutsig_0_12z } - { _11_[5], _00_, _11_[3], _01_, _04_ };
  assign celloutsig_0_55z = { celloutsig_0_36z[5:1], celloutsig_0_18z } ^ celloutsig_0_5z[7:2];
  assign celloutsig_1_7z = in_data[141:127] ^ { celloutsig_1_6z[3:1], celloutsig_1_6z };
  assign _07_[3:2] = { _02_, _05_ };
  assign _08_[0] = _03_;
  assign _10_[3] = _06_;
  assign { _11_[4], _11_[2:1] } = { _00_, _01_, _04_ };
  assign { out_data[149:128], out_data[96], out_data[32] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_95z };
endmodule
