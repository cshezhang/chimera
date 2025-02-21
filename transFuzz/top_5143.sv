/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [2:0] _01_;
  wire [9:0] _02_;
  reg [12:0] _03_;
  wire [6:0] _04_;
  reg [3:0] _05_;
  reg [3:0] _06_;
  reg [2:0] _07_;
  wire [2:0] _08_;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire [12:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [18:0] celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [6:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [5:0] celloutsig_0_26z;
  wire [11:0] celloutsig_0_27z;
  wire [9:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [7:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [2:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [14:0] celloutsig_0_43z;
  wire [9:0] celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire [6:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_50z;
  wire [2:0] celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire [8:0] celloutsig_0_54z;
  wire celloutsig_0_56z;
  wire [10:0] celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire [6:0] celloutsig_0_61z;
  wire celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire [5:0] celloutsig_0_67z;
  wire [4:0] celloutsig_0_68z;
  wire [10:0] celloutsig_0_69z;
  wire [10:0] celloutsig_0_70z;
  wire celloutsig_0_73z;
  wire [11:0] celloutsig_0_85z;
  wire [5:0] celloutsig_0_86z;
  wire celloutsig_0_87z;
  wire [9:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [12:0] celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
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
  assign celloutsig_0_35z = ~(celloutsig_0_30z & celloutsig_0_24z);
  assign celloutsig_0_49z = ~(celloutsig_0_30z & celloutsig_0_27z[4]);
  assign celloutsig_1_7z = ~(celloutsig_1_0z & celloutsig_1_1z);
  assign celloutsig_1_9z = ~(in_data[186] & celloutsig_1_5z[1]);
  assign celloutsig_0_10z = ~(celloutsig_0_1z[2] & celloutsig_0_3z[1]);
  assign celloutsig_0_11z = ~(celloutsig_0_10z & celloutsig_0_9z);
  assign celloutsig_0_12z = ~(in_data[3] & celloutsig_0_8z[5]);
  assign celloutsig_0_19z = ~(celloutsig_0_8z[8] & celloutsig_0_12z);
  assign celloutsig_0_45z = celloutsig_0_26z[5] | ~(celloutsig_0_5z[5]);
  assign celloutsig_0_60z = celloutsig_0_23z[4] | ~(celloutsig_0_5z[8]);
  assign celloutsig_0_87z = celloutsig_0_73z | ~(celloutsig_0_48z);
  assign celloutsig_1_0z = in_data[96] | ~(in_data[142]);
  assign celloutsig_0_52z = celloutsig_0_30z | celloutsig_0_28z[8];
  assign celloutsig_1_12z = celloutsig_1_10z[4] | celloutsig_1_9z;
  assign celloutsig_1_1z = ~(in_data[167] ^ celloutsig_1_0z);
  assign celloutsig_0_51z = { celloutsig_0_46z[6:5], celloutsig_0_15z } + { _01_[2:1], celloutsig_0_22z };
  assign celloutsig_0_5z = celloutsig_0_1z[15:5] + { in_data[45:41], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_8z = celloutsig_0_5z[9:0] + { 1'h1, celloutsig_0_3z, celloutsig_0_3z, _01_[2:1], _02_[0] };
  reg [2:0] _27_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _27_ <= 3'h0;
    else _27_ <= in_data[47:45];
  assign { _08_[2:1], _00_ } = _27_;
  reg [6:0] _28_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _28_ <= 7'h00;
    else _28_ <= { celloutsig_0_3z[2:1], celloutsig_0_37z, celloutsig_0_30z, _01_[2:1], _02_[0] };
  assign { _04_[6:4], celloutsig_0_85z[4], _04_[2:0] } = _28_;
  always_ff @(posedge clkin_data[32], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _05_ <= 4'h0;
    else _05_ <= { _03_[11], celloutsig_0_14z };
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _06_ <= 4'h0;
    else _06_ <= { celloutsig_0_1z[14], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z };
  reg [2:0] _31_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _31_ <= 3'h0;
    else _31_ <= { celloutsig_0_3z[1:0], celloutsig_0_2z };
  assign { _01_[2:1], _02_[0] } = _31_;
  always_ff @(negedge clkin_data[64], posedge clkin_data[96])
    if (clkin_data[96]) _07_ <= 3'h0;
    else _07_ <= { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_12z };
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _03_ <= 13'h0000;
    else _03_ <= celloutsig_0_18z;
  assign celloutsig_0_56z = { celloutsig_0_45z, celloutsig_0_2z, _08_[2:1], _00_, celloutsig_0_11z } == { celloutsig_0_14z[1:0], celloutsig_0_51z, celloutsig_0_53z };
  assign celloutsig_1_6z = { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_3z } == { celloutsig_1_5z[2:0], celloutsig_1_4z };
  assign celloutsig_0_2z = in_data[28:18] == in_data[17:7];
  assign celloutsig_0_29z = celloutsig_0_5z[4:2] == { celloutsig_0_22z, celloutsig_0_2z, celloutsig_0_21z };
  assign celloutsig_1_17z = { in_data[129:125], celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_7z } >= { in_data[112:108], celloutsig_1_14z };
  assign celloutsig_0_21z = { celloutsig_0_5z[8:1], 1'h1, celloutsig_0_11z, celloutsig_0_12z } >= { _08_[2:1], _00_, _06_, celloutsig_0_17z };
  assign celloutsig_0_33z = { _01_[1], _02_[0], celloutsig_0_2z } > { celloutsig_0_18z[7:6], celloutsig_0_13z };
  assign celloutsig_0_38z = { celloutsig_0_1z[17:10], celloutsig_0_29z } > { celloutsig_0_23z[2:0], _01_[2:1], _02_[0], celloutsig_0_30z, celloutsig_0_9z, celloutsig_0_29z };
  assign celloutsig_0_40z = { celloutsig_0_5z[10:2], _08_[2:1], _00_, celloutsig_0_11z, celloutsig_0_33z } > { in_data[79], celloutsig_0_14z, celloutsig_0_28z };
  assign celloutsig_0_47z = { celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_14z } > { celloutsig_0_44z[4:2], celloutsig_0_43z };
  assign celloutsig_0_73z = { 1'h1, celloutsig_0_1z, celloutsig_0_69z } > { celloutsig_0_43z[8:7], celloutsig_0_70z, celloutsig_0_25z, celloutsig_0_25z, celloutsig_0_61z, celloutsig_0_64z, celloutsig_0_29z, celloutsig_0_30z, celloutsig_0_26z };
  assign celloutsig_1_4z = in_data[166:158] > { in_data[145], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_3z = { celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z } <= in_data[180:173];
  assign celloutsig_0_13z = { celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_12z, 1'h1 } <= { celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_10z };
  assign celloutsig_0_16z = { in_data[47:46], _01_[2:1], _02_[0], celloutsig_0_13z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_12z } <= { _08_[2:1], _00_, _08_[2:1], _00_, 1'h1, _01_[2:1], _02_[0], 1'h1, celloutsig_0_2z, _01_[2:1], _02_[0] };
  assign celloutsig_0_22z = { in_data[72:65], celloutsig_0_2z, celloutsig_0_21z, celloutsig_0_11z } <= in_data[15:5];
  assign celloutsig_0_9z = ! celloutsig_0_8z[8:0];
  assign celloutsig_0_15z = { celloutsig_0_8z[2], celloutsig_0_12z, celloutsig_0_13z } < celloutsig_0_3z;
  assign celloutsig_0_25z = { celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_21z } < { celloutsig_0_1z[18:13], celloutsig_0_13z, celloutsig_0_3z, 1'h1, celloutsig_0_24z, _06_, 1'h1 };
  assign celloutsig_0_34z = _06_[2] & ~(celloutsig_0_29z);
  assign celloutsig_0_32z = { celloutsig_0_14z[2], celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_24z, celloutsig_0_30z, celloutsig_0_19z, celloutsig_0_29z, celloutsig_0_9z } % { 1'h1, celloutsig_0_5z[6:1], celloutsig_0_10z };
  assign celloutsig_0_67z = celloutsig_0_27z[9:4] % { 1'h1, _04_[4], celloutsig_0_12z, celloutsig_0_34z, celloutsig_0_65z, celloutsig_0_49z };
  assign celloutsig_0_18z = { celloutsig_0_8z[8:5], celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_17z } % { 1'h1, celloutsig_0_5z[6:1], _01_[2:1], _02_[0], celloutsig_0_10z, celloutsig_0_13z, celloutsig_0_15z };
  assign celloutsig_0_27z = { celloutsig_0_18z[11], celloutsig_0_21z, celloutsig_0_16z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_25z, celloutsig_0_19z, celloutsig_0_21z, _06_ } % { 1'h1, in_data[81:80], celloutsig_0_10z, celloutsig_0_21z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_17z };
  assign celloutsig_0_26z = { celloutsig_0_23z[5:3], celloutsig_0_13z, celloutsig_0_25z, celloutsig_0_11z } % { 1'h1, celloutsig_0_8z[6:4], celloutsig_0_13z, celloutsig_0_25z };
  assign celloutsig_0_70z = { celloutsig_0_54z[8:7], celloutsig_0_35z, celloutsig_0_22z, 1'h1, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_49z } * { celloutsig_0_51z[2:1], celloutsig_0_3z, celloutsig_0_38z, celloutsig_0_34z, celloutsig_0_35z, celloutsig_0_19z, celloutsig_0_33z, celloutsig_0_65z };
  assign celloutsig_1_19z = { celloutsig_1_3z, _07_ } * { celloutsig_1_5z[2:1], celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_0_14z = celloutsig_0_1z[10:8] * { _01_[2:1], _02_[0] };
  assign celloutsig_0_69z = celloutsig_0_63z ? { _05_[3:2], celloutsig_0_64z, _06_, _01_[2:1], _02_[0], celloutsig_0_60z } : { celloutsig_0_68z, _06_, celloutsig_0_65z, celloutsig_0_50z };
  assign celloutsig_0_86z = celloutsig_0_19z ? celloutsig_0_43z[5:0] : { celloutsig_0_67z[4:2], celloutsig_0_40z, celloutsig_0_48z, celloutsig_0_47z };
  assign celloutsig_0_48z = { _08_[2:1], celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_22z } != { celloutsig_0_27z[2:1], celloutsig_0_46z, celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_40z };
  assign celloutsig_0_50z = { celloutsig_0_17z[2:0], celloutsig_0_11z } != { celloutsig_0_22z, celloutsig_0_34z, celloutsig_0_24z, celloutsig_0_25z };
  assign celloutsig_0_65z = { celloutsig_0_51z, celloutsig_0_63z } != celloutsig_0_54z[4:1];
  assign celloutsig_1_2z = in_data[146:144] != { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_24z = { celloutsig_0_5z[7:3], celloutsig_0_19z, celloutsig_0_16z } != celloutsig_0_8z[7:1];
  assign celloutsig_0_68z = - { _03_[4:2], celloutsig_0_52z, celloutsig_0_10z };
  assign celloutsig_0_30z = in_data[68:55] !== { celloutsig_0_23z, _06_, _01_[2:1], _02_[0] };
  assign celloutsig_0_46z = ~ celloutsig_0_44z[8:2];
  assign celloutsig_0_37z = | { celloutsig_0_27z[9:7], celloutsig_0_24z };
  assign celloutsig_1_8z = in_data[167] & celloutsig_1_5z[3];
  assign celloutsig_0_63z = ^ celloutsig_0_27z[10:8];
  assign celloutsig_0_23z = { celloutsig_0_8z[4:1], celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_21z } >> { in_data[79:75], celloutsig_0_19z, celloutsig_0_2z };
  assign celloutsig_0_3z = { in_data[95:94], celloutsig_0_2z } << { _00_, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_54z = { celloutsig_0_18z[6:4], celloutsig_0_37z, celloutsig_0_37z, _08_[2:1], _00_, celloutsig_0_34z } >> { celloutsig_0_17z, celloutsig_0_29z, _06_ };
  assign celloutsig_1_10z = { in_data[174:170], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_2z } >> { celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_28z = { celloutsig_0_17z[1:0], celloutsig_0_21z, celloutsig_0_24z, _06_, celloutsig_0_19z, celloutsig_0_15z } >> celloutsig_0_27z[9:0];
  assign celloutsig_1_5z = { in_data[177], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_2z } - { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_1_18z = { celloutsig_1_10z[9], celloutsig_1_17z, celloutsig_1_0z } - { in_data[172], celloutsig_1_6z, celloutsig_1_8z };
  assign celloutsig_0_17z = { _06_[1:0], 1'h1, celloutsig_0_10z } - celloutsig_0_8z[6:3];
  assign celloutsig_0_43z = { celloutsig_0_18z[11:0], celloutsig_0_37z, celloutsig_0_11z, celloutsig_0_35z } ~^ { celloutsig_0_32z[5:4], celloutsig_0_18z };
  assign celloutsig_0_61z = { celloutsig_0_28z[4:1], celloutsig_0_47z, celloutsig_0_22z, celloutsig_0_37z } ~^ celloutsig_0_44z[7:1];
  assign celloutsig_1_14z = { celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_8z } ~^ { celloutsig_1_10z[10:9], celloutsig_1_6z };
  assign celloutsig_0_1z = in_data[48:30] ~^ { in_data[86:83], _08_[2:1], _00_, _08_[2:1], _00_, _08_[2:1], _00_, _08_[2:1], _00_, _08_[2:1], _00_ };
  assign celloutsig_0_53z = ~((celloutsig_0_15z & celloutsig_0_44z[1]) | celloutsig_0_49z);
  assign celloutsig_0_64z = ~((celloutsig_0_27z[2] & celloutsig_0_56z) | (_01_[1] & _06_[0]));
  assign { celloutsig_0_44z[9:3], celloutsig_0_44z[1], celloutsig_0_44z[2] } = ~ { celloutsig_0_27z[8:2], celloutsig_0_12z, celloutsig_0_2z };
  assign _01_[0] = celloutsig_0_22z;
  assign _02_[9:1] = { 1'h1, celloutsig_0_3z, celloutsig_0_3z, _01_[2:1] };
  assign _04_[3] = celloutsig_0_85z[4];
  assign _08_[0] = _00_;
  assign celloutsig_0_44z[0] = celloutsig_0_44z[2];
  assign celloutsig_0_85z[0] = celloutsig_0_30z;
  assign { out_data[130:128], out_data[99:96], out_data[37:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_86z, celloutsig_0_87z };
endmodule
