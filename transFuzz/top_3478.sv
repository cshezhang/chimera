/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire [3:0] _05_;
  wire [7:0] _06_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [17:0] celloutsig_0_14z;
  wire [10:0] celloutsig_0_15z;
  wire [3:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [26:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [6:0] celloutsig_0_23z;
  wire [2:0] celloutsig_0_24z;
  wire [8:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [17:0] celloutsig_0_28z;
  wire [11:0] celloutsig_0_29z;
  wire [5:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [3:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [12:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [3:0] celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [17:0] celloutsig_0_45z;
  wire [7:0] celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_50z;
  wire [5:0] celloutsig_0_51z;
  wire [2:0] celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire [11:0] celloutsig_0_56z;
  wire celloutsig_0_58z;
  wire [10:0] celloutsig_0_59z;
  wire [27:0] celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire celloutsig_0_67z;
  wire celloutsig_0_68z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_71z;
  wire celloutsig_0_73z;
  wire celloutsig_0_77z;
  wire [3:0] celloutsig_0_80z;
  wire celloutsig_0_81z;
  wire celloutsig_0_82z;
  wire [12:0] celloutsig_0_86z;
  wire [11:0] celloutsig_0_87z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [23:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [17:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [24:0] celloutsig_1_15z;
  wire [5:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [2:0] celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [10:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [7:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_34z = ~((celloutsig_0_31z | celloutsig_0_8z) & celloutsig_0_19z);
  assign celloutsig_0_40z = ~((celloutsig_0_0z | celloutsig_0_9z) & celloutsig_0_28z[4]);
  assign celloutsig_0_41z = ~((celloutsig_0_30z | celloutsig_0_36z) & celloutsig_0_20z);
  assign celloutsig_0_62z = ~((celloutsig_0_58z | celloutsig_0_32z[0]) & celloutsig_0_36z);
  assign celloutsig_0_6z = ~((celloutsig_0_0z | celloutsig_0_2z[1]) & celloutsig_0_2z[1]);
  assign celloutsig_0_68z = ~((celloutsig_0_59z[9] | celloutsig_0_64z) & celloutsig_0_3z);
  assign celloutsig_0_73z = ~((celloutsig_0_39z | _02_) & celloutsig_0_30z);
  assign celloutsig_0_81z = ~((celloutsig_0_67z | celloutsig_0_3z) & celloutsig_0_43z[2]);
  assign celloutsig_1_10z = ~((in_data[117] | celloutsig_1_3z[1]) & in_data[112]);
  assign celloutsig_1_14z = ~((celloutsig_1_9z | celloutsig_1_11z[16]) & celloutsig_1_13z);
  assign celloutsig_0_1z = ~((celloutsig_0_0z | celloutsig_0_0z) & celloutsig_0_0z);
  assign celloutsig_0_11z = ~((celloutsig_0_0z | in_data[16]) & celloutsig_0_3z);
  assign celloutsig_0_12z = ~((celloutsig_0_10z | celloutsig_0_3z) & celloutsig_0_0z);
  assign celloutsig_0_17z = ~((celloutsig_0_9z | celloutsig_0_1z) & _01_);
  assign celloutsig_0_26z = ~((_04_ | celloutsig_0_8z) & celloutsig_0_14z[4]);
  assign celloutsig_0_27z = ~((celloutsig_0_13z | celloutsig_0_10z) & celloutsig_0_23z[4]);
  reg [3:0] _23_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[32])
    if (clkin_data[32]) _23_ <= 4'h0;
    else _23_ <= celloutsig_0_2z[5:2];
  assign { _03_, _02_, _05_[1:0] } = _23_;
  reg [7:0] _24_;
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _24_ <= 8'h00;
    else _24_ <= { celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z };
  assign { _06_[7], _00_, _06_[5:3], _04_, _01_, _06_[0] } = _24_;
  assign celloutsig_0_30z = celloutsig_0_23z === { celloutsig_0_17z, celloutsig_0_24z, celloutsig_0_8z, celloutsig_0_26z, celloutsig_0_3z };
  assign celloutsig_0_3z = { celloutsig_0_1z, celloutsig_0_2z } === in_data[11:5];
  assign celloutsig_0_33z = { _06_[5:3], _04_ } === celloutsig_0_2z[5:2];
  assign celloutsig_0_36z = celloutsig_0_23z[4:1] === { in_data[95:94], celloutsig_0_3z, celloutsig_0_12z };
  assign celloutsig_0_42z = { celloutsig_0_5z[23:14], celloutsig_0_1z, celloutsig_0_26z, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_27z } === { celloutsig_0_24z[2:1], celloutsig_0_38z };
  assign celloutsig_0_44z = { celloutsig_0_31z, celloutsig_0_3z, celloutsig_0_39z, celloutsig_0_34z, celloutsig_0_25z, celloutsig_0_20z, celloutsig_0_12z } === { celloutsig_0_5z[20:16], celloutsig_0_41z, celloutsig_0_31z, celloutsig_0_40z, celloutsig_0_8z, celloutsig_0_40z, celloutsig_0_41z, celloutsig_0_31z, celloutsig_0_30z, celloutsig_0_30z, celloutsig_0_6z };
  assign celloutsig_0_48z = { celloutsig_0_38z[12:1], celloutsig_0_41z, celloutsig_0_17z, celloutsig_0_44z } === { celloutsig_0_30z, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_23z, celloutsig_0_19z, celloutsig_0_33z, celloutsig_0_24z };
  assign celloutsig_0_53z = { _03_, celloutsig_0_26z, celloutsig_0_27z } === { celloutsig_0_38z[3], celloutsig_0_20z, celloutsig_0_22z };
  assign celloutsig_0_58z = { in_data[15:9], celloutsig_0_33z, celloutsig_0_12z, celloutsig_0_39z } === { celloutsig_0_25z[6:2], celloutsig_0_33z, celloutsig_0_16z };
  assign celloutsig_0_61z = { celloutsig_0_59z[10:2], celloutsig_0_48z, celloutsig_0_54z, celloutsig_0_24z, celloutsig_0_52z } === { celloutsig_0_21z[11:3], celloutsig_0_10z, celloutsig_0_26z, celloutsig_0_26z, celloutsig_0_58z, celloutsig_0_3z, celloutsig_0_58z, celloutsig_0_41z, celloutsig_0_12z };
  assign celloutsig_0_63z = { celloutsig_0_45z[8:0], celloutsig_0_43z, celloutsig_0_60z, celloutsig_0_31z, celloutsig_0_10z } === { celloutsig_0_51z[4:0], celloutsig_0_59z };
  assign celloutsig_0_64z = { celloutsig_0_45z[13:11], celloutsig_0_17z } === celloutsig_0_14z[10:7];
  assign celloutsig_0_65z = celloutsig_0_29z[7:5] === { celloutsig_0_14z[16], celloutsig_0_50z, celloutsig_0_55z };
  assign celloutsig_0_67z = { celloutsig_0_55z, celloutsig_0_33z, celloutsig_0_42z, celloutsig_0_26z, celloutsig_0_48z, celloutsig_0_65z, celloutsig_0_6z, celloutsig_0_37z, celloutsig_0_65z, celloutsig_0_12z, celloutsig_0_47z, celloutsig_0_35z, celloutsig_0_35z, celloutsig_0_28z, celloutsig_0_64z, celloutsig_0_50z, celloutsig_0_18z, celloutsig_0_52z, celloutsig_0_16z, celloutsig_0_50z } === { celloutsig_0_21z[25:0], celloutsig_0_10z, celloutsig_0_28z, celloutsig_0_22z, celloutsig_0_51z, celloutsig_0_13z, celloutsig_0_60z };
  assign celloutsig_0_69z = { celloutsig_0_47z[1:0], celloutsig_0_8z, celloutsig_0_62z, celloutsig_0_58z } === { celloutsig_0_2z[5:2], celloutsig_0_44z };
  assign celloutsig_0_71z = { celloutsig_0_45z[14:13], celloutsig_0_26z } === { celloutsig_0_32z[2:1], celloutsig_0_68z };
  assign celloutsig_0_82z = celloutsig_0_47z[7:3] === { _06_[7], _00_, _06_[5:3] };
  assign celloutsig_1_1z = celloutsig_1_0z[22:3] === in_data[128:109];
  assign celloutsig_1_4z = celloutsig_1_0z[6:2] === in_data[119:115];
  assign celloutsig_0_8z = { celloutsig_0_2z[2:0], celloutsig_0_1z, _03_, _02_, _05_[1:0], celloutsig_0_6z } === in_data[30:22];
  assign celloutsig_1_12z = { in_data[156:155], celloutsig_1_1z, celloutsig_1_10z } === { celloutsig_1_11z[5:3], celloutsig_1_8z };
  assign celloutsig_1_13z = { celloutsig_1_11z[16:4], celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_9z } === { celloutsig_1_0z[15:5], celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_8z };
  assign celloutsig_0_9z = { _03_, _02_, _03_, _02_, _05_[1:0], _06_[7], _00_, _06_[5:3], _04_, _01_, _06_[0], celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_8z, _06_[7], _00_, _06_[5:3], _04_, _01_, _06_[0], celloutsig_0_6z, celloutsig_0_8z } === celloutsig_0_5z;
  assign celloutsig_0_10z = { in_data[80:76], celloutsig_0_8z } === { _06_[7], _00_, _06_[5:3], celloutsig_0_3z };
  assign celloutsig_0_13z = { in_data[32:29], celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_1z } === { _02_, _05_[1:0], celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_9z };
  assign celloutsig_0_19z = { _02_, _05_[1], _03_, _02_, _05_[1:0], celloutsig_0_10z, celloutsig_0_13z } === { in_data[45:43], celloutsig_0_16z, celloutsig_0_10z };
  assign celloutsig_0_22z = { celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_17z } === { celloutsig_0_15z[9:1], celloutsig_0_20z };
  assign celloutsig_0_0z = in_data[4] & ~(in_data[34]);
  assign celloutsig_0_31z = _06_[0] & ~(celloutsig_0_1z);
  assign celloutsig_0_35z = celloutsig_0_25z[3] & ~(celloutsig_0_28z[14]);
  assign celloutsig_0_37z = celloutsig_0_22z & ~(celloutsig_0_13z);
  assign celloutsig_0_39z = celloutsig_0_19z & ~(celloutsig_0_13z);
  assign celloutsig_0_50z = celloutsig_0_11z & ~(celloutsig_0_36z);
  assign celloutsig_0_54z = celloutsig_0_3z & ~(celloutsig_0_2z[1]);
  assign celloutsig_0_55z = celloutsig_0_26z & ~(celloutsig_0_21z[6]);
  assign celloutsig_0_60z = celloutsig_0_31z & ~(celloutsig_0_45z[4]);
  assign celloutsig_0_77z = celloutsig_0_67z & ~(celloutsig_0_6z);
  assign celloutsig_1_6z = celloutsig_1_0z[16] & ~(in_data[161]);
  assign celloutsig_1_8z = celloutsig_1_0z[21] & ~(celloutsig_1_4z);
  assign celloutsig_1_9z = celloutsig_1_0z[7] & ~(in_data[177]);
  assign celloutsig_1_19z = celloutsig_1_6z & ~(celloutsig_1_8z);
  assign celloutsig_0_20z = celloutsig_0_12z & ~(celloutsig_0_5z[6]);
  assign celloutsig_0_32z = celloutsig_0_15z[8:5] % { 1'h1, celloutsig_0_26z, celloutsig_0_27z, celloutsig_0_12z };
  assign celloutsig_0_38z = { in_data[53:45], celloutsig_0_11z, celloutsig_0_36z, celloutsig_0_8z, celloutsig_0_1z } % { 1'h1, celloutsig_0_29z };
  assign celloutsig_0_43z = celloutsig_0_14z[5:2] % { 1'h1, celloutsig_0_2z[0], celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_0_45z = { celloutsig_0_22z, _06_[7], _00_, _06_[5:3], _04_, _01_, _06_[0], celloutsig_0_9z, celloutsig_0_19z, celloutsig_0_23z } % { 1'h1, in_data[85:70], celloutsig_0_33z };
  assign celloutsig_0_47z = celloutsig_0_29z[8:1] % { 1'h1, celloutsig_0_35z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_19z };
  assign celloutsig_0_51z = celloutsig_0_25z[5:0] % { 1'h1, celloutsig_0_24z[0], celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_27z };
  assign celloutsig_0_52z = { celloutsig_0_29z[5:4], celloutsig_0_26z } % { 1'h1, celloutsig_0_43z[2:1] };
  assign celloutsig_0_56z = { celloutsig_0_52z[2:1], celloutsig_0_20z, celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_44z, celloutsig_0_39z, _03_, _02_, _05_[1:0] } % { 1'h1, celloutsig_0_18z, celloutsig_0_55z, celloutsig_0_13z, celloutsig_0_33z, celloutsig_0_6z, celloutsig_0_44z };
  assign celloutsig_0_5z = in_data[85:58] % { 1'h1, in_data[35:19], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_59z = { celloutsig_0_45z[12:3], celloutsig_0_9z } % { 1'h1, celloutsig_0_14z[12:7], celloutsig_0_16z };
  assign celloutsig_0_80z = celloutsig_0_56z[4:1] % { 1'h1, celloutsig_0_24z[1:0], celloutsig_0_54z };
  assign celloutsig_0_86z = { celloutsig_0_80z[3:1], celloutsig_0_69z, celloutsig_0_82z, celloutsig_0_19z, celloutsig_0_6z, celloutsig_0_37z, celloutsig_0_1z, celloutsig_0_71z, celloutsig_0_6z, celloutsig_0_35z, celloutsig_0_22z } % { 1'h1, celloutsig_0_14z[10:3], celloutsig_0_9z, celloutsig_0_63z, celloutsig_0_65z, celloutsig_0_81z };
  assign celloutsig_0_87z = { celloutsig_0_37z, celloutsig_0_22z, celloutsig_0_63z, celloutsig_0_42z, celloutsig_0_68z, celloutsig_0_42z, celloutsig_0_54z, celloutsig_0_9z, celloutsig_0_77z, celloutsig_0_24z } % { 1'h1, celloutsig_0_51z[3:0], celloutsig_0_61z, celloutsig_0_48z, celloutsig_0_67z, celloutsig_0_73z, celloutsig_0_53z, celloutsig_0_48z, celloutsig_0_63z };
  assign celloutsig_1_0z = in_data[127:104] % { 1'h1, in_data[140:118] };
  assign celloutsig_1_2z = celloutsig_1_0z[19:17] % { 1'h1, in_data[138:137] };
  assign celloutsig_1_3z = { in_data[184:181], celloutsig_1_1z } % { 1'h1, celloutsig_1_0z[16:13] };
  assign celloutsig_1_5z = in_data[139:129] % { 1'h1, in_data[105:97], celloutsig_1_4z };
  assign celloutsig_1_7z = { celloutsig_1_5z[3:0], celloutsig_1_1z, celloutsig_1_2z } % { 1'h1, celloutsig_1_0z[10:4] };
  assign celloutsig_1_11z = celloutsig_1_0z[20:3] % { 1'h1, in_data[124:122], celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_1_15z = { celloutsig_1_11z[14:2], celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_13z } % { 1'h1, in_data[145:130], celloutsig_1_8z, celloutsig_1_14z, celloutsig_1_3z, in_data[96] };
  assign celloutsig_1_18z = { celloutsig_1_15z[17:14], celloutsig_1_8z, celloutsig_1_12z } % { 1'h1, celloutsig_1_11z[3:2], celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_9z };
  assign celloutsig_0_14z = { celloutsig_0_5z[20:19], celloutsig_0_0z, _06_[7], _00_, _06_[5:3], _04_, _01_, _06_[0], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_3z, _03_, _02_, _05_[1:0] } % { 1'h1, in_data[47:44], celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_10z, _03_, _02_, _05_[1:0], celloutsig_0_13z, _03_, _02_, _05_[1], in_data[0] };
  assign celloutsig_0_15z = { _06_[0], celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_2z } % { 1'h1, celloutsig_0_14z[4:1], celloutsig_0_2z[5:1], in_data[0] };
  assign celloutsig_0_16z = { celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_0z } % { 1'h1, celloutsig_0_2z[4], celloutsig_0_11z, in_data[0] };
  assign celloutsig_0_18z = celloutsig_0_15z[8:3] % { 1'h1, in_data[10:6] };
  assign celloutsig_0_21z = { celloutsig_0_5z[25:15], celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_9z } % { 1'h1, celloutsig_0_5z[24:5], celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_19z };
  assign celloutsig_0_23z = { _00_, _06_[5:3], _04_, _01_, celloutsig_0_1z } % { 1'h1, _00_, _06_[5:3], _04_, _01_ };
  assign celloutsig_0_2z = { in_data[82:78], celloutsig_0_0z } % { 1'h1, in_data[34:33], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_24z = { celloutsig_0_1z, celloutsig_0_20z, celloutsig_0_6z } % { 1'h1, celloutsig_0_5z[11:10] };
  assign celloutsig_0_25z = { celloutsig_0_5z[26:25], celloutsig_0_8z, celloutsig_0_2z } % { 1'h1, celloutsig_0_5z[17:10] };
  assign celloutsig_0_28z = in_data[45:28] % { 1'h1, celloutsig_0_15z[7:6], celloutsig_0_9z, celloutsig_0_18z, celloutsig_0_2z, celloutsig_0_26z, celloutsig_0_1z };
  assign celloutsig_0_29z = celloutsig_0_14z[16:5] % { 1'h1, celloutsig_0_15z[9:0], celloutsig_0_9z };
  assign _05_[3:2] = { _03_, _02_ };
  assign { _06_[6], _06_[2:1] } = { _00_, _04_, _01_ };
  assign { out_data[133:128], out_data[96], out_data[44:32], out_data[11:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_86z, celloutsig_0_87z };
endmodule
