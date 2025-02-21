/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [14:0] _01_;
  wire [2:0] _02_;
  wire [5:0] _03_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [21:0] celloutsig_0_12z;
  wire [5:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [7:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [5:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [3:0] celloutsig_0_25z;
  wire [2:0] celloutsig_0_26z;
  wire [6:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [10:0] celloutsig_0_2z;
  wire [6:0] celloutsig_0_30z;
  wire [2:0] celloutsig_0_31z;
  wire [32:0] celloutsig_0_32z;
  wire [9:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [3:0] celloutsig_0_35z;
  wire [7:0] celloutsig_0_36z;
  wire [10:0] celloutsig_0_37z;
  wire [2:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [9:0] celloutsig_0_3z;
  wire [12:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [12:0] celloutsig_0_42z;
  wire [2:0] celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [3:0] celloutsig_0_45z;
  wire [2:0] celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire [5:0] celloutsig_0_52z;
  wire [4:0] celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_59z;
  wire [29:0] celloutsig_0_5z;
  wire [5:0] celloutsig_0_60z;
  wire [3:0] celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire [11:0] celloutsig_0_66z;
  wire [20:0] celloutsig_0_67z;
  wire [5:0] celloutsig_0_6z;
  wire celloutsig_0_71z;
  wire [3:0] celloutsig_0_7z;
  wire [20:0] celloutsig_0_80z;
  wire [4:0] celloutsig_0_81z;
  wire [15:0] celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire [8:0] celloutsig_1_11z;
  wire celloutsig_1_16z;
  wire [5:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [2:0] celloutsig_1_2z;
  wire [30:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [16:0] celloutsig_1_5z;
  wire [2:0] celloutsig_1_6z;
  wire [5:0] celloutsig_1_7z;
  wire [15:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_41z = ~(celloutsig_0_12z[0] ^ in_data[15]);
  assign celloutsig_0_59z = ~(celloutsig_0_48z ^ celloutsig_0_51z);
  assign celloutsig_1_19z = ~(celloutsig_1_16z ^ celloutsig_1_4z);
  assign celloutsig_0_15z = ~(celloutsig_0_12z[2] ^ _00_);
  assign celloutsig_0_16z = ~(celloutsig_0_4z ^ in_data[31]);
  assign celloutsig_0_24z = ~(celloutsig_0_0z ^ celloutsig_0_7z[0]);
  assign celloutsig_0_38z = { celloutsig_0_7z[3:2], celloutsig_0_1z } + celloutsig_0_2z[7:5];
  assign celloutsig_0_47z = celloutsig_0_30z[4:2] + { celloutsig_0_26z[0], celloutsig_0_44z, celloutsig_0_1z };
  assign celloutsig_0_6z = celloutsig_0_5z[15:10] + celloutsig_0_5z[9:4];
  assign celloutsig_1_2z = in_data[161:159] + { _02_[2], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_18z = celloutsig_1_11z[6:1] + celloutsig_1_8z[14:9];
  assign celloutsig_0_27z = { celloutsig_0_13z[4:3], _01_[6:5], _00_, _01_[3:2] } + { celloutsig_0_25z[3:2], celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_26z };
  assign celloutsig_0_3z = { celloutsig_0_2z[6:2], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } + celloutsig_0_2z[10:1];
  reg [6:0] _17_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _17_ <= 7'h00;
    else _17_ <= in_data[62:56];
  assign _01_[14:8] = _17_;
  reg [5:0] _18_;
  always_ff @(negedge clkin_data[32], negedge clkin_data[64])
    if (!clkin_data[64]) _18_ <= 6'h00;
    else _18_ <= { in_data[133:129], celloutsig_1_0z };
  assign { _03_[5:3], _02_[2], _03_[1:0] } = _18_;
  reg [4:0] _19_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _19_ <= 5'h00;
    else _19_ <= celloutsig_0_3z[9:5];
  assign { _01_[6:5], _00_, _01_[3:2] } = _19_;
  assign celloutsig_0_4z = { celloutsig_0_2z[2:1], celloutsig_0_0z, celloutsig_0_0z } === celloutsig_0_3z[3:0];
  assign celloutsig_0_57z = celloutsig_0_45z[3:1] === { celloutsig_0_20z[3:2], celloutsig_0_29z };
  assign celloutsig_0_63z = celloutsig_0_36z[5:0] === celloutsig_0_40z[12:7];
  assign celloutsig_0_71z = celloutsig_0_67z[14:10] === celloutsig_0_32z[10:6];
  assign celloutsig_1_0z = in_data[114:104] === in_data[127:117];
  assign celloutsig_0_10z = celloutsig_0_3z[9:1] === celloutsig_0_2z[9:1];
  assign celloutsig_0_11z = { celloutsig_0_6z[5:2], celloutsig_0_4z } === celloutsig_0_8z[11:7];
  assign celloutsig_0_14z = celloutsig_0_3z === { celloutsig_0_2z[9:1], celloutsig_0_4z };
  assign celloutsig_0_43z = { celloutsig_0_7z[3:2], celloutsig_0_21z } % { 1'h1, celloutsig_0_8z[2:1] };
  assign celloutsig_0_5z = { celloutsig_0_3z[9:1], celloutsig_0_2z, celloutsig_0_3z } % { 1'h1, in_data[33:5] };
  assign celloutsig_0_62z = celloutsig_0_45z % { 1'h1, celloutsig_0_2z[0], celloutsig_0_29z, celloutsig_0_15z };
  assign celloutsig_0_8z = { celloutsig_0_3z[6:1], celloutsig_0_7z, celloutsig_0_6z } % { 1'h1, celloutsig_0_6z[2:0], celloutsig_0_4z, celloutsig_0_2z };
  assign celloutsig_1_3z = in_data[137:107] % { 1'h1, in_data[181:168], _03_[5:3], _02_[2], _03_[1:0], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_6z = celloutsig_1_2z % { 1'h1, celloutsig_1_2z[1], in_data[96] };
  assign celloutsig_1_7z = in_data[160:155] % { 1'h1, _03_[4:3], _02_[2], _03_[1:0] };
  assign celloutsig_1_8z = { celloutsig_1_5z[15:3], celloutsig_1_6z } % { 1'h1, in_data[109:102], celloutsig_1_4z, celloutsig_1_7z };
  assign celloutsig_0_25z = { celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_18z } % { 1'h1, celloutsig_0_13z[2:0] };
  assign celloutsig_0_36z = { celloutsig_0_31z, celloutsig_0_18z, celloutsig_0_35z } * { celloutsig_0_30z[6], celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_35z };
  assign celloutsig_0_40z = celloutsig_0_12z[15:3] * { celloutsig_0_33z[6], celloutsig_0_3z, celloutsig_0_17z, celloutsig_0_28z };
  assign celloutsig_0_42z = { celloutsig_0_40z[10:1], celloutsig_0_11z, celloutsig_0_24z, celloutsig_0_28z } * { celloutsig_0_5z[29:23], celloutsig_0_10z, celloutsig_0_35z, celloutsig_0_24z };
  assign celloutsig_0_52z = { _01_[6:5], _00_, _01_[3], celloutsig_0_19z, celloutsig_0_41z } * celloutsig_0_42z[6:1];
  assign celloutsig_0_60z = { celloutsig_0_36z[3:0], celloutsig_0_24z, celloutsig_0_48z } * { celloutsig_0_16z, celloutsig_0_43z, celloutsig_0_17z, celloutsig_0_59z };
  assign celloutsig_0_66z = { celloutsig_0_52z, celloutsig_0_63z, celloutsig_0_34z, celloutsig_0_63z, celloutsig_0_47z } * { celloutsig_0_40z[8:5], celloutsig_0_62z, celloutsig_0_18z, celloutsig_0_41z, celloutsig_0_21z, celloutsig_0_48z };
  assign celloutsig_0_67z = { celloutsig_0_17z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_49z, _01_[14:8] } * { celloutsig_0_66z[7:0], celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_63z, celloutsig_0_63z, celloutsig_0_39z, celloutsig_0_29z, celloutsig_0_60z, celloutsig_0_57z };
  assign celloutsig_0_7z = { in_data[27:25], celloutsig_0_1z } * celloutsig_0_3z[9:6];
  assign celloutsig_0_80z = { celloutsig_0_27z[6:1], celloutsig_0_45z, celloutsig_0_15z, celloutsig_0_47z, _01_[14:8] } * { celloutsig_0_37z[5:0], celloutsig_0_71z, celloutsig_0_55z, celloutsig_0_60z, celloutsig_0_17z, celloutsig_0_57z, celloutsig_0_48z };
  assign celloutsig_1_5z = { in_data[159:149], _03_[5:3], _02_[2], _03_[1:0] } * { in_data[133:123], _03_[5:3], _02_[2], _03_[1:0] };
  assign celloutsig_1_11z = { celloutsig_1_5z[7:3], celloutsig_1_9z, celloutsig_1_6z } * { celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_0z, _03_[5:3], _02_[2], _03_[1:0] };
  assign celloutsig_0_12z = { celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_10z } * { in_data[84:74], celloutsig_0_2z };
  assign celloutsig_0_13z = celloutsig_0_5z[29:24] * { celloutsig_0_10z, _01_[6:5], _00_, _01_[3:2] };
  assign celloutsig_0_2z = { in_data[89:83], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z } * { in_data[44:38], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_20z = { celloutsig_0_0z, celloutsig_0_18z, celloutsig_0_13z } * { celloutsig_0_7z[0], celloutsig_0_13z, celloutsig_0_10z };
  assign celloutsig_0_26z = { celloutsig_0_5z[2:1], celloutsig_0_23z } * celloutsig_0_3z[4:2];
  assign celloutsig_0_31z = { celloutsig_0_26z[2:1], celloutsig_0_18z } * celloutsig_0_8z[14:12];
  assign celloutsig_0_33z = { in_data[18:11], celloutsig_0_29z, celloutsig_0_19z } * { celloutsig_0_2z[9:7], celloutsig_0_13z, celloutsig_0_21z };
  assign celloutsig_0_0z = ^ in_data[40:38];
  assign celloutsig_0_39z = ^ in_data[19:8];
  assign celloutsig_0_44z = ^ { celloutsig_0_22z, celloutsig_0_33z, celloutsig_0_38z };
  assign celloutsig_0_48z = ^ { celloutsig_0_5z[29:19], celloutsig_0_25z };
  assign celloutsig_0_49z = ^ { celloutsig_0_48z, celloutsig_0_26z };
  assign celloutsig_0_51z = ^ celloutsig_0_33z[4:2];
  assign celloutsig_0_56z = ^ { celloutsig_0_23z, celloutsig_0_34z, celloutsig_0_19z, celloutsig_0_25z };
  assign celloutsig_1_4z = ^ { celloutsig_1_3z[23:11], celloutsig_1_2z, _03_[5:3], _02_[2], _03_[1:0], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_9z = ^ celloutsig_1_7z[5:3];
  assign celloutsig_1_16z = ^ { celloutsig_1_3z[26:12], celloutsig_1_4z };
  assign celloutsig_0_1z = ^ { in_data[91:74], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_17z = ^ { celloutsig_0_8z[10:0], celloutsig_0_10z };
  assign celloutsig_0_18z = ^ { celloutsig_0_5z[19], celloutsig_0_1z, celloutsig_0_13z };
  assign celloutsig_0_19z = ^ celloutsig_0_8z[15:13];
  assign celloutsig_0_21z = ^ celloutsig_0_3z[8:5];
  assign celloutsig_0_23z = ^ celloutsig_0_5z[17:12];
  assign celloutsig_0_28z = ^ in_data[63:58];
  assign celloutsig_0_29z = ^ { celloutsig_0_7z, celloutsig_0_23z, celloutsig_0_13z, celloutsig_0_23z, celloutsig_0_11z };
  assign celloutsig_0_34z = ^ celloutsig_0_33z[7:4];
  assign celloutsig_0_37z = { celloutsig_0_12z[17:8], celloutsig_0_24z } >> { celloutsig_0_3z[7:1], celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_17z, celloutsig_0_18z };
  assign celloutsig_0_45z = { celloutsig_0_30z[2:1], celloutsig_0_41z, celloutsig_0_17z } >> { celloutsig_0_32z[24:22], celloutsig_0_24z };
  assign celloutsig_0_55z = celloutsig_0_37z[9:5] >> { celloutsig_0_2z[7:4], celloutsig_0_19z };
  assign celloutsig_0_81z = { celloutsig_0_80z[7:4], celloutsig_0_56z } >> celloutsig_0_60z[5:1];
  assign celloutsig_0_22z = { celloutsig_0_13z[4:1], celloutsig_0_4z, celloutsig_0_18z } >> { _00_, _01_[3], celloutsig_0_7z };
  assign celloutsig_0_30z = celloutsig_0_12z[15:9] >> { celloutsig_0_6z[0], celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_28z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_29z };
  assign celloutsig_0_32z = { celloutsig_0_8z[11:10], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_12z } >> { celloutsig_0_5z[27:8], celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_0_35z = celloutsig_0_22z[3:0] >> celloutsig_0_27z[6:3];
  assign { _01_[7], _01_[4], _01_[1:0] } = { celloutsig_0_39z, _00_, celloutsig_0_28z, celloutsig_0_48z };
  assign _02_[1:0] = { celloutsig_1_0z, celloutsig_1_0z };
  assign _03_[2] = _02_[2];
  assign { out_data[133:128], out_data[96], out_data[52:32], out_data[4:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_80z, celloutsig_0_81z };
endmodule
