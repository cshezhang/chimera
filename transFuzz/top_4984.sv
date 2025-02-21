/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [11:0] _02_;
  wire [6:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [2:0] celloutsig_0_11z;
  wire [7:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [11:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [21:0] celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [5:0] celloutsig_0_22z;
  wire [2:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [10:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [7:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire [10:0] celloutsig_0_30z;
  wire [7:0] celloutsig_0_31z;
  wire [5:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [2:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_42z;
  wire celloutsig_0_49z;
  wire [4:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_54z;
  wire celloutsig_0_56z;
  wire [5:0] celloutsig_0_58z;
  wire celloutsig_0_60z;
  wire celloutsig_0_66z;
  wire celloutsig_0_67z;
  wire [3:0] celloutsig_0_68z;
  wire [6:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [4:0] celloutsig_1_0z;
  wire [4:0] celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire [5:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [3:0] celloutsig_1_14z;
  wire [12:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [18:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [29:0] celloutsig_1_5z;
  wire [8:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [19:0] celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_15z = celloutsig_0_6z[2] ? celloutsig_0_2z : celloutsig_0_0z[5];
  assign celloutsig_0_24z = ~(celloutsig_0_2z & celloutsig_0_10z);
  assign celloutsig_0_27z = ~(celloutsig_0_21z & celloutsig_0_6z[2]);
  assign celloutsig_0_38z = !(celloutsig_0_26z ? celloutsig_0_10z : celloutsig_0_2z);
  assign celloutsig_0_50z = !(celloutsig_0_16z ? celloutsig_0_38z : celloutsig_0_20z);
  assign celloutsig_0_26z = !(_00_ ? celloutsig_0_20z : celloutsig_0_23z[1]);
  assign celloutsig_0_54z = ~celloutsig_0_35z[1];
  assign celloutsig_0_8z = ~celloutsig_0_6z[6];
  assign celloutsig_0_13z = ~celloutsig_0_4z[3];
  assign celloutsig_0_42z = ~((celloutsig_0_31z[1] | celloutsig_0_31z[1]) & celloutsig_0_8z);
  assign celloutsig_0_67z = ~((celloutsig_0_66z | celloutsig_0_60z) & celloutsig_0_40z);
  assign celloutsig_1_13z = ~((celloutsig_1_7z | in_data[100]) & in_data[128]);
  assign celloutsig_0_3z = celloutsig_0_1z ^ celloutsig_0_2z;
  assign celloutsig_0_49z = _01_ ^ celloutsig_0_20z;
  reg [11:0] _17_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _17_ <= 12'h000;
    else _17_ <= { celloutsig_0_4z[3:0], celloutsig_0_3z, celloutsig_0_0z };
  assign { _02_[11:8], _00_, _02_[6], _01_, _02_[4:0] } = _17_;
  assign celloutsig_0_4z = in_data[52:48] / { 1'h1, in_data[92:90], celloutsig_0_1z };
  assign celloutsig_0_58z = celloutsig_0_30z[7:2] / { 1'h1, in_data[93:91], celloutsig_0_20z, celloutsig_0_40z };
  assign celloutsig_1_3z = { celloutsig_1_0z[3:2], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } / { 1'h1, in_data[118:113], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z[4:1], in_data[96] };
  assign celloutsig_1_5z = { in_data[177:172], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_1z } / { 1'h1, in_data[171:144], celloutsig_1_4z };
  assign celloutsig_1_10z = celloutsig_1_0z / { 1'h1, celloutsig_1_3z[2:0], celloutsig_1_7z };
  assign celloutsig_1_12z = { celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_4z } / { 1'h1, celloutsig_1_10z[1], celloutsig_1_9z, celloutsig_1_7z };
  assign celloutsig_0_17z = { in_data[54:42], celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_10z } / { 1'h1, celloutsig_0_14z[8:1], celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_15z };
  assign celloutsig_0_66z = { celloutsig_0_18z[5:2], celloutsig_0_56z, celloutsig_0_20z, celloutsig_0_28z, celloutsig_0_54z } === { celloutsig_0_32z[4:0], celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_22z, celloutsig_0_7z, celloutsig_0_2z };
  assign celloutsig_1_4z = { celloutsig_1_0z[4:3], celloutsig_1_0z, celloutsig_1_1z } === { celloutsig_1_3z[16:11], celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_21z = in_data[52:50] === celloutsig_0_14z[5:3];
  assign celloutsig_0_10z = { in_data[47:36], _02_[11:8], _00_, _02_[6], _01_, _02_[4:0], celloutsig_0_3z, celloutsig_0_1z } >= { _02_[10], celloutsig_0_0z, celloutsig_0_4z, _02_[11:8], _00_, _02_[6], _01_, _02_[4:0], celloutsig_0_3z };
  assign celloutsig_0_56z = { celloutsig_0_23z[2], celloutsig_0_50z, celloutsig_0_3z, celloutsig_0_49z } <= celloutsig_0_14z[3:0];
  assign celloutsig_0_9z = { in_data[66], _02_[11:8], _00_, _02_[6], _01_, _02_[4:0], celloutsig_0_1z } <= in_data[58:45];
  assign celloutsig_0_1z = { in_data[35], celloutsig_0_0z, celloutsig_0_0z } <= { in_data[76], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_40z = { celloutsig_0_30z[9:5], celloutsig_0_38z, celloutsig_0_14z, celloutsig_0_33z } || { celloutsig_0_6z[6:3], celloutsig_0_36z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_14z };
  assign celloutsig_0_36z = { celloutsig_0_15z, celloutsig_0_23z } < { celloutsig_0_6z[2:1], celloutsig_0_26z, celloutsig_0_8z };
  assign celloutsig_0_2z = { celloutsig_0_0z[6], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z } < { in_data[19:7], celloutsig_0_0z };
  assign celloutsig_0_7z = celloutsig_0_6z[4] & ~(in_data[28]);
  assign celloutsig_0_20z = celloutsig_0_1z & ~(celloutsig_0_2z);
  assign celloutsig_0_11z = in_data[70:68] % { 1'h1, celloutsig_0_10z, celloutsig_0_3z };
  assign celloutsig_0_12z = { celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_8z } % { 1'h1, celloutsig_0_6z };
  assign celloutsig_0_14z = { celloutsig_0_2z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_3z } % { 1'h1, celloutsig_0_6z[2:0], celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_0_23z = celloutsig_0_19z[2:0] % { 1'h1, celloutsig_0_17z[9:8] };
  assign celloutsig_0_25z = { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_11z } % { 1'h1, celloutsig_0_4z[2:0], celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_4z };
  assign celloutsig_0_31z = celloutsig_0_25z[10:3] % { 1'h1, celloutsig_0_13z, celloutsig_0_18z };
  assign celloutsig_1_9z = celloutsig_1_8z[8:6] * { celloutsig_1_6z[4:3], celloutsig_1_7z };
  assign celloutsig_1_14z = { celloutsig_1_12z[2:0], celloutsig_1_1z } * { celloutsig_1_3z[5:3], celloutsig_1_7z };
  assign celloutsig_0_28z = { celloutsig_0_15z, celloutsig_0_22z, celloutsig_0_24z } * { in_data[30:24], celloutsig_0_9z };
  assign celloutsig_0_0z = in_data[84] ? in_data[37:31] : in_data[77:71];
  assign celloutsig_1_18z = celloutsig_1_7z ? { celloutsig_1_12z[1], celloutsig_1_12z, celloutsig_1_14z, celloutsig_1_4z, celloutsig_1_13z } : { celloutsig_1_8z[16:7], celloutsig_1_9z };
  assign celloutsig_1_2z = { in_data[108:104], celloutsig_1_0z } != { in_data[130:122], celloutsig_1_1z };
  assign celloutsig_0_68z = ~ { in_data[85:84], celloutsig_0_9z, celloutsig_0_60z };
  assign celloutsig_1_7z = in_data[160] & celloutsig_1_0z[0];
  assign celloutsig_1_1z = ~^ { in_data[148:134], celloutsig_1_0z };
  assign celloutsig_1_19z = ~^ { celloutsig_1_5z[9:2], celloutsig_1_2z };
  assign celloutsig_0_32z = celloutsig_0_17z[6:1] >> { celloutsig_0_17z[11:7], celloutsig_0_20z };
  assign celloutsig_0_19z = { celloutsig_0_15z, celloutsig_0_11z } >> celloutsig_0_0z[6:3];
  assign celloutsig_0_30z = { celloutsig_0_12z[2:1], celloutsig_0_13z, celloutsig_0_27z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_2z } >> { celloutsig_0_12z[4:3], celloutsig_0_18z, celloutsig_0_20z, celloutsig_0_13z, celloutsig_0_10z };
  assign celloutsig_0_35z = celloutsig_0_25z[4:2] <<< celloutsig_0_22z[3:1];
  assign celloutsig_0_18z = { celloutsig_0_4z[3:0], celloutsig_0_16z, celloutsig_0_7z } <<< celloutsig_0_12z[5:0];
  assign celloutsig_1_0z = in_data[180:176] >>> in_data[106:102];
  assign celloutsig_1_8z = in_data[124:105] >>> { in_data[140:131], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_0_6z = in_data[92:86] ^ in_data[21:15];
  assign celloutsig_1_6z = { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_1z } ^ { in_data[152:149], celloutsig_1_0z };
  assign celloutsig_1_11z = celloutsig_1_6z[3:0] ^ { celloutsig_1_3z[4:2], celloutsig_1_4z };
  assign celloutsig_0_22z = celloutsig_0_14z[5:0] ^ { in_data[74:73], celloutsig_0_19z };
  assign celloutsig_0_33z = ~((celloutsig_0_19z[1] & celloutsig_0_21z) | (celloutsig_0_20z & celloutsig_0_13z));
  assign celloutsig_0_60z = ~((celloutsig_0_58z[0] & celloutsig_0_1z) | (celloutsig_0_42z & celloutsig_0_9z));
  assign celloutsig_0_16z = ~((_02_[4] & _02_[1]) | (celloutsig_0_13z & in_data[39]));
  assign { _02_[7], _02_[5] } = { _00_, _01_ };
  assign { out_data[140:128], out_data[96], out_data[32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_67z, celloutsig_0_68z };
endmodule
