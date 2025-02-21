/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [11:0] _01_;
  wire [6:0] _02_;
  reg [18:0] _03_;
  reg [7:0] _04_;
  reg [20:0] _05_;
  wire [3:0] _06_;
  wire celloutsig_0_10z;
  wire [5:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire [2:0] celloutsig_0_17z;
  wire [17:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [2:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [7:0] celloutsig_0_26z;
  wire [12:0] celloutsig_0_27z;
  wire [6:0] celloutsig_0_29z;
  wire celloutsig_0_30z;
  wire [48:0] celloutsig_0_32z;
  wire [11:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [9:0] celloutsig_0_36z;
  wire [20:0] celloutsig_0_37z;
  wire [8:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [21:0] celloutsig_0_45z;
  wire [4:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire [19:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [5:0] celloutsig_0_51z;
  wire [21:0] celloutsig_0_52z;
  wire celloutsig_0_58z;
  wire [16:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_62z;
  wire [13:0] celloutsig_0_64z;
  wire [6:0] celloutsig_0_65z;
  wire celloutsig_0_68z;
  wire celloutsig_0_6z;
  wire celloutsig_0_74z;
  wire celloutsig_0_7z;
  wire celloutsig_0_85z;
  wire celloutsig_0_8z;
  wire [2:0] celloutsig_0_94z;
  wire celloutsig_0_95z;
  wire [3:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [2:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire [2:0] celloutsig_1_15z;
  wire [4:0] celloutsig_1_16z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [15:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [10:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_74z = celloutsig_0_68z ? celloutsig_0_1z : in_data[19];
  assign celloutsig_1_12z = celloutsig_1_9z ? celloutsig_1_11z[2] : celloutsig_1_8z;
  assign celloutsig_0_6z = ~_00_;
  assign celloutsig_0_58z = celloutsig_0_4z | celloutsig_0_29z[0];
  assign celloutsig_0_10z = celloutsig_0_9z[1] | celloutsig_0_5z;
  assign celloutsig_0_33z = { _01_[11], celloutsig_0_4z, _01_[9:7], celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_25z, celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_24z } + { in_data[66:65], celloutsig_0_21z, celloutsig_0_26z, celloutsig_0_21z };
  assign celloutsig_0_94z = celloutsig_0_38z[5:3] + { celloutsig_0_11z[2], celloutsig_0_48z, celloutsig_0_19z };
  reg [3:0] _14_;
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _14_ <= 4'h0;
    else _14_ <= in_data[36:33];
  assign { _00_, _06_[2:0] } = _14_;
  always_ff @(negedge celloutsig_1_18z[0], posedge clkin_data[64])
    if (clkin_data[64]) _03_ <= 19'h00000;
    else _03_ <= { celloutsig_0_17z[0], celloutsig_0_23z, celloutsig_0_23z, celloutsig_0_19z, celloutsig_0_15z, celloutsig_0_38z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_23z, celloutsig_0_20z, celloutsig_0_7z };
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[64])
    if (!clkin_data[64]) _04_ <= 8'h00;
    else _04_ <= { _02_[6:3], _01_[11], _02_[1:0], celloutsig_0_21z };
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[64])
    if (!clkin_data[64]) _05_ <= 21'h000000;
    else _05_ <= { celloutsig_0_49z[12:11], celloutsig_0_47z, celloutsig_0_60z, celloutsig_0_59z };
  reg [6:0] _18_;
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[64])
    if (!clkin_data[64]) _18_ <= 7'h00;
    else _18_ <= { in_data[7:2], celloutsig_0_1z };
  assign { _02_[6:3], _01_[11], _02_[1:0] } = _18_;
  reg [2:0] _19_;
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[64])
    if (!clkin_data[64]) _19_ <= 3'h0;
    else _19_ <= celloutsig_0_27z[9:7];
  assign _01_[9:7] = _19_;
  assign celloutsig_1_9z = { celloutsig_1_5z, celloutsig_1_7z } === { celloutsig_1_6z, celloutsig_1_4z };
  assign celloutsig_0_14z = { in_data[87:76], celloutsig_0_6z } === { celloutsig_0_11z[1:0], celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_13z };
  assign celloutsig_0_30z = { in_data[80:63], celloutsig_0_12z } > { celloutsig_0_18z[13:0], celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_0_3z = { _02_[6:3], _01_[11], _02_[1:0] } > { _00_, _06_[2:1], _00_, _06_[2:0] };
  assign celloutsig_0_85z = celloutsig_0_52z[7:2] > { in_data[67:63], celloutsig_0_74z };
  assign celloutsig_1_5z = { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_4z } > celloutsig_1_1z[3:1];
  assign celloutsig_1_14z = { celloutsig_1_11z, celloutsig_1_0z } > celloutsig_1_3z[8:5];
  assign celloutsig_0_25z = { celloutsig_0_16z[2:1], celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_9z } > { celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_22z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_22z, celloutsig_0_23z, celloutsig_0_1z };
  assign celloutsig_0_60z = { celloutsig_0_36z[1:0], celloutsig_0_46z } <= { _04_[7:5], celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_58z, celloutsig_0_19z };
  assign celloutsig_0_68z = { celloutsig_0_65z[6:5], celloutsig_0_7z } <= { celloutsig_0_23z, celloutsig_0_3z, celloutsig_0_40z };
  assign celloutsig_0_34z = { celloutsig_0_11z[2:1], celloutsig_0_8z } || celloutsig_0_22z;
  assign celloutsig_0_8z = { in_data[54:33], celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_7z, _02_[6:3], _01_[11], _02_[1:0] } || { in_data[95:91], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_3z, _00_, _06_[2:0], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_3z, _00_, _06_[2:0], celloutsig_0_4z, _02_[6:3], _01_[11], _02_[1:0], celloutsig_0_7z, celloutsig_0_1z };
  assign celloutsig_0_1z = { _00_, _06_[2:1], _00_, _06_[2:0] } || in_data[37:31];
  assign celloutsig_0_36z = { celloutsig_0_33z[7:3], celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_10z } % { 1'h1, celloutsig_0_18z[8:2], celloutsig_0_6z, celloutsig_0_24z };
  assign celloutsig_0_64z = { celloutsig_0_18z[11:0], celloutsig_0_19z, celloutsig_0_39z } % { 1'h1, in_data[77:67], celloutsig_0_48z, celloutsig_0_14z };
  assign celloutsig_1_16z = { celloutsig_1_3z[3], celloutsig_1_14z, celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_12z } % { 1'h1, celloutsig_1_3z[4:3], celloutsig_1_4z, celloutsig_1_7z };
  assign celloutsig_1_1z[15:1] = in_data[150] ? in_data[189:175] : { in_data[190:177], celloutsig_1_0z };
  assign celloutsig_0_27z = celloutsig_0_18z[2] ? { celloutsig_0_26z[7:6], celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_17z } : { celloutsig_0_9z[2:0], celloutsig_0_16z, _02_[6:3], _01_[11], _02_[1:0] };
  assign celloutsig_1_0z = in_data[160:151] != in_data[158:149];
  assign celloutsig_1_8z = { celloutsig_1_3z[7:2], celloutsig_1_4z } != in_data[132:126];
  assign celloutsig_0_15z = { celloutsig_0_12z, celloutsig_0_3z, _02_[6:3], _01_[11], _02_[1:0], celloutsig_0_4z, celloutsig_0_8z } != { celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_9z };
  assign celloutsig_0_46z = - { celloutsig_0_38z[4:2], celloutsig_0_15z, celloutsig_0_4z };
  assign celloutsig_0_51z = - { celloutsig_0_29z[6:3], celloutsig_0_5z, celloutsig_0_47z };
  assign celloutsig_0_37z = { celloutsig_0_27z[10:1], celloutsig_0_30z, celloutsig_0_12z, celloutsig_0_29z, celloutsig_0_8z, celloutsig_0_7z } | { in_data[12:5], celloutsig_0_27z };
  assign celloutsig_0_9z = { _06_[2:0], celloutsig_0_6z } | { _02_[5:4], celloutsig_0_7z, celloutsig_0_7z };
  assign celloutsig_1_3z = { celloutsig_1_1z[10:1], celloutsig_1_0z } | celloutsig_1_1z[12:2];
  assign celloutsig_1_15z = { celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_14z } | celloutsig_1_3z[10:8];
  assign celloutsig_0_17z = { celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_4z } | { celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_1_2z = in_data[142] & celloutsig_1_0z;
  assign celloutsig_0_20z = celloutsig_0_11z[0] & celloutsig_0_10z;
  assign celloutsig_0_5z = ~^ { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_62z = ~^ { celloutsig_0_49z[16:10], celloutsig_0_23z, celloutsig_0_8z, celloutsig_0_34z };
  assign celloutsig_0_23z = ~^ { celloutsig_0_16z[0], celloutsig_0_9z, _00_, _06_[2:0], celloutsig_0_19z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_17z };
  assign celloutsig_0_4z = ^ { _02_[6:3], _01_[11], _02_[1], _02_[6:3], _01_[11], _02_[1:0], celloutsig_0_1z, _00_, _06_[2:0], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_10z = ^ { celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_5z };
  assign celloutsig_0_21z = ^ { _02_[1:0], celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_17z, celloutsig_0_1z, celloutsig_0_16z, celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_0_32z = { celloutsig_0_26z[7:2], celloutsig_0_21z, celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_3z, celloutsig_0_26z, celloutsig_0_22z, celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_8z, celloutsig_0_29z, celloutsig_0_26z, celloutsig_0_14z, celloutsig_0_5z } >> { celloutsig_0_19z, celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_30z, celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_25z, celloutsig_0_15z, celloutsig_0_21z, celloutsig_0_20z, celloutsig_0_20z, celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_16z, _00_, _06_[2:0], celloutsig_0_29z, celloutsig_0_21z, celloutsig_0_11z };
  assign celloutsig_0_38z = { celloutsig_0_37z[2:1], celloutsig_0_22z, celloutsig_0_34z, _01_[9:7] } >> celloutsig_0_32z[14:6];
  assign celloutsig_0_52z = { celloutsig_0_45z[21:1], celloutsig_0_5z } >> { celloutsig_0_49z[19:5], celloutsig_0_29z };
  assign celloutsig_0_65z = celloutsig_0_29z >> { celloutsig_0_64z[3:1], celloutsig_0_22z, celloutsig_0_5z };
  assign celloutsig_1_11z = celloutsig_1_1z[4:2] >> { celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_16z = celloutsig_0_11z[2:0] >> { celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_15z };
  assign celloutsig_0_18z = { _02_[5:3], _01_[11], _02_[1], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_8z } >> { _00_, _06_[2:1], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_16z, celloutsig_0_8z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_14z };
  assign celloutsig_0_22z = { celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_6z } >> _02_[5:3];
  assign celloutsig_0_45z = { _00_, _06_[2:0], celloutsig_0_22z, celloutsig_0_6z, celloutsig_0_33z, celloutsig_0_3z, celloutsig_0_6z } - { _01_[9:7], celloutsig_0_21z, celloutsig_0_26z, celloutsig_0_22z, celloutsig_0_9z, _01_[9:7] };
  assign celloutsig_0_49z = { celloutsig_0_27z[1], _03_ } - { in_data[68:51], celloutsig_0_41z, celloutsig_0_15z };
  assign celloutsig_1_18z = { celloutsig_1_8z, celloutsig_1_15z } - { celloutsig_1_15z, celloutsig_1_9z };
  assign celloutsig_0_29z = { celloutsig_0_26z[6], celloutsig_0_3z, celloutsig_0_24z, celloutsig_0_12z, celloutsig_0_22z } - { _02_[3], _01_[11], _02_[1:0], celloutsig_0_22z };
  assign celloutsig_0_59z = { celloutsig_0_18z[11:8], celloutsig_0_41z, _02_[6:3], _01_[11], _02_[1:0], celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_21z } ^ { in_data[80:70], celloutsig_0_51z };
  assign celloutsig_0_11z = { celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_6z } ^ in_data[68:63];
  assign celloutsig_0_26z = { celloutsig_0_18z[14:10], celloutsig_0_25z, celloutsig_0_1z, celloutsig_0_23z } ^ { _02_[6:3], _01_[11], _02_[1:0], celloutsig_0_24z };
  assign celloutsig_0_41z = ~((celloutsig_0_4z & celloutsig_0_37z[0]) | celloutsig_0_20z);
  assign celloutsig_0_47z = ~((celloutsig_0_7z & celloutsig_0_20z) | celloutsig_0_24z);
  assign celloutsig_0_24z = ~((celloutsig_0_17z[0] & celloutsig_0_3z) | celloutsig_0_18z[1]);
  assign celloutsig_0_39z = ~((celloutsig_0_21z & celloutsig_0_19z) | (celloutsig_0_10z & celloutsig_0_21z));
  assign celloutsig_0_40z = ~((celloutsig_0_22z[2] & celloutsig_0_22z[2]) | (celloutsig_0_15z & celloutsig_0_20z));
  assign celloutsig_0_48z = ~((celloutsig_0_34z & celloutsig_0_27z[4]) | (celloutsig_0_4z & celloutsig_0_14z));
  assign celloutsig_0_7z = ~((in_data[35] & in_data[91]) | (in_data[39] & celloutsig_0_5z));
  assign celloutsig_0_95z = ~((celloutsig_0_62z & _05_[10]) | (celloutsig_0_21z & celloutsig_0_85z));
  assign celloutsig_1_4z = ~((celloutsig_1_2z & celloutsig_1_0z) | (celloutsig_1_0z & celloutsig_1_3z[9]));
  assign celloutsig_1_6z = ~((celloutsig_1_0z & celloutsig_1_1z[13]) | (celloutsig_1_3z[0] & celloutsig_1_0z));
  assign celloutsig_1_7z = ~((celloutsig_1_0z & in_data[113]) | (celloutsig_1_6z & celloutsig_1_0z));
  assign celloutsig_1_19z = ~((celloutsig_1_2z & celloutsig_1_10z) | (celloutsig_1_16z[4] & celloutsig_1_18z[1]));
  assign celloutsig_0_12z = ~((celloutsig_0_10z & _06_[0]) | (celloutsig_0_5z & celloutsig_0_9z[0]));
  assign celloutsig_0_13z = ~((celloutsig_0_11z[5] & celloutsig_0_11z[4]) | (celloutsig_0_3z & celloutsig_0_12z));
  assign celloutsig_0_19z = ~((celloutsig_0_10z & celloutsig_0_17z[1]) | (celloutsig_0_12z & celloutsig_0_3z));
  assign { _01_[10], _01_[6:0] } = { celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_25z, celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_24z };
  assign _02_[2] = _01_[11];
  assign _06_[3] = _00_;
  assign celloutsig_1_1z[0] = celloutsig_1_0z;
  assign { out_data[131:128], out_data[96], out_data[34:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_94z, celloutsig_0_95z };
endmodule
