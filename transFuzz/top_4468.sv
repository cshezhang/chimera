/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _000_;
  wire [3:0] _001_;
  wire [12:0] _002_;
  reg [7:0] _003_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [23:0] celloutsig_0_12z;
  wire [13:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [3:0] celloutsig_0_15z;
  wire [17:0] celloutsig_0_16z;
  wire [7:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [9:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [21:0] celloutsig_0_22z;
  wire [4:0] celloutsig_0_23z;
  wire [13:0] celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire [9:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [3:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [7:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [12:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [8:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [6:0] celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_55z;
  wire [14:0] celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire [2:0] celloutsig_0_61z;
  wire [2:0] celloutsig_0_63z;
  wire celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire celloutsig_0_68z;
  wire [3:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_73z;
  wire [7:0] celloutsig_0_74z;
  wire celloutsig_0_75z;
  wire [2:0] celloutsig_0_79z;
  wire celloutsig_0_84z;
  wire celloutsig_0_85z;
  reg [28:0] celloutsig_0_87z;
  wire celloutsig_0_88z;
  wire [9:0] celloutsig_0_8z;
  wire celloutsig_0_90z;
  wire celloutsig_0_91z;
  wire celloutsig_0_92z;
  wire celloutsig_0_93z;
  wire celloutsig_0_94z;
  wire celloutsig_0_95z;
  wire [5:0] celloutsig_0_96z;
  wire [8:0] celloutsig_0_97z;
  wire celloutsig_0_98z;
  wire celloutsig_0_9z;
  wire [8:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [4:0] celloutsig_1_11z;
  wire [5:0] celloutsig_1_12z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [7:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = in_data[89] ? in_data[0] : in_data[92];
  assign celloutsig_0_57z = celloutsig_0_32z ? celloutsig_0_11z : celloutsig_0_22z[12];
  assign celloutsig_0_3z = !(in_data[0] ? celloutsig_0_2z : celloutsig_0_0z);
  assign celloutsig_0_53z = !(celloutsig_0_24z[12] ? celloutsig_0_27z[1] : celloutsig_0_12z[10]);
  assign celloutsig_0_68z = !(celloutsig_0_60z ? celloutsig_0_43z : celloutsig_0_5z);
  assign celloutsig_0_91z = !(celloutsig_0_48z ? celloutsig_0_31z[0] : celloutsig_0_27z[9]);
  assign celloutsig_0_9z = !(celloutsig_0_2z ? celloutsig_0_0z : celloutsig_0_3z);
  assign celloutsig_0_18z = !(celloutsig_0_10z ? celloutsig_0_4z : celloutsig_0_5z);
  assign celloutsig_0_30z = !(celloutsig_0_5z ? celloutsig_0_26z : celloutsig_0_17z[3]);
  assign celloutsig_0_36z = ~((celloutsig_0_30z | celloutsig_0_16z[5]) & celloutsig_0_19z[4]);
  assign celloutsig_0_47z = ~((celloutsig_0_2z | celloutsig_0_41z) & celloutsig_0_26z);
  assign celloutsig_0_48z = ~((celloutsig_0_10z | celloutsig_0_43z) & in_data[41]);
  assign celloutsig_0_60z = ~((celloutsig_0_32z | celloutsig_0_47z) & celloutsig_0_1z);
  assign celloutsig_0_66z = ~((celloutsig_0_30z | celloutsig_0_10z) & celloutsig_0_14z);
  assign celloutsig_0_5z = ~((in_data[9] | celloutsig_0_0z) & (celloutsig_0_4z | in_data[5]));
  assign celloutsig_0_95z = ~((celloutsig_0_50z[3] | celloutsig_0_22z[9]) & (celloutsig_0_34z | celloutsig_0_45z[5]));
  assign celloutsig_0_26z = ~((celloutsig_0_18z | celloutsig_0_9z) & (celloutsig_0_8z[2] | celloutsig_0_22z[19]));
  assign celloutsig_0_37z = celloutsig_0_13z[11] | celloutsig_0_15z[2];
  assign celloutsig_0_46z = celloutsig_0_35z | celloutsig_0_31z[0];
  assign celloutsig_0_52z = celloutsig_0_12z[11] | celloutsig_0_36z;
  assign celloutsig_0_88z = celloutsig_0_47z | _000_;
  assign celloutsig_0_92z = celloutsig_0_37z | celloutsig_0_20z;
  assign celloutsig_0_98z = celloutsig_0_97z[1] | celloutsig_0_93z;
  assign celloutsig_0_61z = { celloutsig_0_28z, celloutsig_0_46z, celloutsig_0_57z } + celloutsig_0_22z[17:15];
  assign celloutsig_0_29z = _001_ + { celloutsig_0_8z[1:0], celloutsig_0_5z, celloutsig_0_11z };
  reg [12:0] _029_;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _029_ <= 13'h0000;
    else _029_ <= { celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_3z };
  assign { _002_[12:9], _001_, _002_[4:3], _000_, _002_[1:0] } = _029_;
  always_ff @(posedge clkin_data[64], negedge clkin_data[96])
    if (!clkin_data[96]) _003_ <= 8'h00;
    else _003_ <= { celloutsig_1_0z[7:1], celloutsig_1_3z };
  assign celloutsig_0_32z = { celloutsig_0_13z[8:5], celloutsig_0_18z } == celloutsig_0_31z[5:1];
  assign celloutsig_0_34z = { celloutsig_0_24z[13:2], celloutsig_0_28z, celloutsig_0_1z } == { in_data[86:85], celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_14z };
  assign celloutsig_0_41z = celloutsig_0_16z[14:5] == { celloutsig_0_16z[8:0], celloutsig_0_0z };
  assign celloutsig_0_44z = celloutsig_0_16z[15:0] == { celloutsig_0_22z[21:10], celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_43z, celloutsig_0_32z };
  assign celloutsig_0_94z = { celloutsig_0_46z, celloutsig_0_85z, celloutsig_0_73z } == { celloutsig_0_87z[25:24], celloutsig_0_84z };
  assign celloutsig_1_6z = { in_data[126:114], celloutsig_1_3z, celloutsig_1_4z } == { celloutsig_1_0z[4:0], celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_1_16z = { celloutsig_1_12z[5:2], celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_11z, celloutsig_1_12z } == { celloutsig_1_0z[4:1], celloutsig_1_9z, _003_, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z };
  assign celloutsig_0_10z = { in_data[61:49], celloutsig_0_4z, celloutsig_0_5z } == { _002_[3], celloutsig_0_5z, _002_[12:9], _001_, _002_[4:3], _000_, _002_[1:0] };
  assign celloutsig_0_11z = { celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_0z } == { in_data[84:77], celloutsig_0_4z };
  assign celloutsig_0_14z = { in_data[68:64], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_11z } == { celloutsig_0_8z[8:2], celloutsig_0_10z };
  assign celloutsig_0_4z = in_data[82:69] >= { in_data[82:77], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_58z = { celloutsig_0_39z[10:0], celloutsig_0_53z } >= { celloutsig_0_24z[11:5], celloutsig_0_5z, celloutsig_0_35z, celloutsig_0_14z, celloutsig_0_46z, celloutsig_0_52z };
  assign celloutsig_0_93z = celloutsig_0_16z[9:4] >= { celloutsig_0_42z, celloutsig_0_9z, celloutsig_0_57z, celloutsig_0_92z, celloutsig_0_18z, celloutsig_0_91z };
  assign celloutsig_1_2z = { in_data[121:100], celloutsig_1_1z } >= in_data[133:111];
  assign celloutsig_1_5z = { in_data[114:101], celloutsig_1_2z } >= { in_data[134:131], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_10z = { celloutsig_1_7z[7:3], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_5z } >= { in_data[108:103], celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_1_19z = { celloutsig_1_14z[2:1], celloutsig_1_3z, celloutsig_1_16z, celloutsig_1_16z } >= { celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_16z, celloutsig_1_3z, celloutsig_1_6z };
  assign celloutsig_0_49z = celloutsig_0_9z & ~(celloutsig_0_39z[5]);
  assign celloutsig_0_90z = celloutsig_0_0z & ~(celloutsig_0_11z);
  assign celloutsig_1_4z = celloutsig_1_0z[3] & ~(in_data[189]);
  assign celloutsig_1_9z = in_data[190] & ~(celloutsig_1_2z);
  assign celloutsig_0_69z = { celloutsig_0_17z[4:3], celloutsig_0_65z, celloutsig_0_41z } * { celloutsig_0_20z, celloutsig_0_0z, celloutsig_0_66z, celloutsig_0_51z };
  assign celloutsig_0_17z = { celloutsig_0_8z[7:1], celloutsig_0_0z } * { celloutsig_0_13z[8:3], celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_63z = celloutsig_0_1z ? celloutsig_0_23z[2:0] : { celloutsig_0_50z[0], celloutsig_0_52z, celloutsig_0_48z };
  assign celloutsig_0_74z = celloutsig_0_41z ? { celloutsig_0_24z[9:5], celloutsig_0_61z } : { _001_[2:0], _002_[4:3], celloutsig_0_55z, celloutsig_0_37z, celloutsig_0_21z };
  assign celloutsig_0_97z = celloutsig_0_21z ? { 1'h1, celloutsig_0_95z, celloutsig_0_88z, celloutsig_0_96z } : { celloutsig_0_56z[14:12], celloutsig_0_36z, celloutsig_0_85z, celloutsig_0_75z, celloutsig_0_32z, celloutsig_0_66z, celloutsig_0_49z };
  assign celloutsig_0_12z = in_data[15] ? { _002_[12:9], _001_, _002_[4:3], _002_[12:9], _001_, _002_[4:3], _000_, _002_[1:0], celloutsig_0_9z } : { in_data[63:43], celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_11z };
  assign celloutsig_0_13z = celloutsig_0_3z ? { celloutsig_0_9z, _002_[12:9], _001_, _002_[4:3], _000_, _002_[1:0] } : { celloutsig_0_12z[13:5], celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_10z, 1'h0, celloutsig_0_4z };
  assign celloutsig_0_35z = celloutsig_0_24z[4:1] != celloutsig_0_17z[4:1];
  assign celloutsig_0_42z = celloutsig_0_22z[13:4] != { celloutsig_0_13z[8:2], celloutsig_0_9z, celloutsig_0_36z, celloutsig_0_0z };
  assign celloutsig_0_51z = celloutsig_0_15z[3:1] != { celloutsig_0_49z, celloutsig_0_21z, celloutsig_0_49z };
  assign celloutsig_0_6z = { in_data[1], celloutsig_0_3z } != { celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_73z = { celloutsig_0_24z[4:1], celloutsig_0_41z, celloutsig_0_69z, celloutsig_0_44z } != { celloutsig_0_31z[3:1], celloutsig_0_38z, celloutsig_0_23z, celloutsig_0_6z };
  assign celloutsig_0_84z = { celloutsig_0_74z[4:1], celloutsig_0_11z } != celloutsig_0_17z[5:1];
  assign celloutsig_1_3z = { in_data[105:99], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z } != { celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_1z = { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } != in_data[23:21];
  assign celloutsig_0_45z = - { in_data[74:67], celloutsig_0_10z };
  assign celloutsig_0_79z = - celloutsig_0_63z;
  assign celloutsig_0_96z = - { celloutsig_0_13z[9], celloutsig_0_79z, celloutsig_0_94z, celloutsig_0_90z };
  assign celloutsig_0_22z = - { celloutsig_0_12z[19], celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_0z, celloutsig_0_15z, celloutsig_0_21z };
  assign celloutsig_0_24z = - { celloutsig_0_22z[17:10], celloutsig_0_18z, celloutsig_0_0z, celloutsig_0_15z };
  assign celloutsig_0_38z = & { celloutsig_0_12z[6:4], celloutsig_0_3z };
  assign celloutsig_0_75z = & { celloutsig_0_63z, celloutsig_0_58z, celloutsig_0_55z, celloutsig_0_46z, celloutsig_0_43z, celloutsig_0_41z, celloutsig_0_30z, celloutsig_0_10z, celloutsig_0_9z };
  assign celloutsig_1_1z = & celloutsig_1_0z[8:1];
  assign celloutsig_0_28z = & { celloutsig_0_17z, celloutsig_0_8z[9:6], celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_40z = | { celloutsig_0_24z[9:1], celloutsig_0_6z, celloutsig_0_29z, celloutsig_0_26z };
  assign celloutsig_0_59z = | celloutsig_0_12z;
  assign celloutsig_0_85z = | { celloutsig_0_56z[8:0], celloutsig_0_6z, celloutsig_0_68z, celloutsig_0_5z, celloutsig_0_47z };
  assign celloutsig_1_8z = | celloutsig_1_0z[2:0];
  assign celloutsig_1_18z = | { celloutsig_1_7z[4:3], celloutsig_1_14z };
  assign celloutsig_0_20z = | { celloutsig_0_8z[9:1], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_18z };
  assign celloutsig_0_21z = | { celloutsig_0_12z[6:1], celloutsig_0_5z };
  assign celloutsig_0_43z = ~^ { celloutsig_0_15z[1:0], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_40z, celloutsig_0_3z, celloutsig_0_35z };
  assign celloutsig_0_65z = ~^ { _002_[11], celloutsig_0_11z, celloutsig_0_36z };
  assign celloutsig_0_2z = ~^ { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_39z = { celloutsig_0_31z[7:3], celloutsig_0_5z, celloutsig_0_34z, celloutsig_0_30z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_37z } >> { celloutsig_0_22z[15:12], celloutsig_0_17z, celloutsig_0_37z };
  assign celloutsig_0_56z = { celloutsig_0_12z[22:13], celloutsig_0_28z, celloutsig_0_2z, celloutsig_0_46z, celloutsig_0_49z, celloutsig_0_55z } >> celloutsig_0_12z[21:7];
  assign celloutsig_0_8z = { in_data[68:60], celloutsig_0_0z } >> { in_data[64:57], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_7z = { in_data[184:180], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_6z } >> { in_data[151:148], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_1_11z = { in_data[158:156], celloutsig_1_8z, celloutsig_1_8z } >> { celloutsig_1_7z[3], celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_2z };
  assign celloutsig_1_14z = celloutsig_1_11z[2:0] >> { celloutsig_1_0z[7:6], celloutsig_1_5z };
  assign celloutsig_0_16z = { _002_[12:9], _001_[3:1], celloutsig_0_8z, celloutsig_0_6z } >> { celloutsig_0_12z[23:7], celloutsig_0_10z };
  assign celloutsig_0_23z = { celloutsig_0_12z[23:20], celloutsig_0_3z } >> celloutsig_0_13z[6:2];
  assign celloutsig_0_31z = celloutsig_0_19z[9:2] <<< celloutsig_0_13z[13:6];
  assign celloutsig_1_0z = in_data[107:99] <<< in_data[169:161];
  assign celloutsig_0_27z = { celloutsig_0_19z[8:0], celloutsig_0_3z } <<< { celloutsig_0_12z[15], celloutsig_0_17z, celloutsig_0_4z };
  assign celloutsig_0_50z = celloutsig_0_45z[8:2] ^ { _002_[12:9], _001_[3:2], celloutsig_0_36z };
  assign celloutsig_1_12z = celloutsig_1_7z[5:0] ^ { celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_6z };
  assign celloutsig_0_15z = { celloutsig_0_12z[22:21], celloutsig_0_10z, celloutsig_0_14z } ^ { _002_[4:3], _000_, _002_[1] };
  assign celloutsig_0_19z = { celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_17z } ^ celloutsig_0_13z[12:3];
  assign celloutsig_0_55z = ~((celloutsig_0_3z & celloutsig_0_32z) | celloutsig_0_48z);
  always_latch
    if (celloutsig_1_18z) celloutsig_0_87z = 29'h00000000;
    else if (!clkin_data[128]) celloutsig_0_87z = { celloutsig_0_12z[13:11], celloutsig_0_51z, celloutsig_0_59z, celloutsig_0_15z, celloutsig_0_49z, celloutsig_0_55z, celloutsig_0_20z, celloutsig_0_63z, celloutsig_0_39z, celloutsig_0_37z };
  assign { _002_[8:5], _002_[2] } = { _001_, _000_ };
  assign { out_data[128], out_data[96], out_data[40:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_97z, celloutsig_0_98z };
endmodule
