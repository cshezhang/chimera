/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [5:0] _01_;
  reg [10:0] _02_;
  reg [2:0] _03_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [15:0] celloutsig_0_11z;
  wire [6:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [3:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire [3:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [2:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [8:0] celloutsig_0_28z;
  wire [5:0] celloutsig_0_29z;
  wire [10:0] celloutsig_0_2z;
  wire [8:0] celloutsig_0_31z;
  wire [3:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [8:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [19:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire [3:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire [10:0] celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_54z;
  wire [5:0] celloutsig_0_55z;
  wire [3:0] celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire [12:0] celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire [2:0] celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire celloutsig_0_68z;
  wire [6:0] celloutsig_0_70z;
  wire [2:0] celloutsig_0_71z;
  wire celloutsig_0_72z;
  wire celloutsig_0_75z;
  wire [2:0] celloutsig_0_76z;
  wire [5:0] celloutsig_0_77z;
  wire celloutsig_0_79z;
  wire celloutsig_0_7z;
  wire [10:0] celloutsig_0_84z;
  wire celloutsig_0_8z;
  wire celloutsig_0_91z;
  wire [4:0] celloutsig_0_92z;
  wire celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [14:0] celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [8:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_34z = ~(celloutsig_0_20z[3] & celloutsig_0_21z[2]);
  assign celloutsig_0_36z = ~(celloutsig_0_32z[2] & celloutsig_0_12z[4]);
  assign celloutsig_0_38z = ~(celloutsig_0_24z & celloutsig_0_9z);
  assign celloutsig_0_43z = ~(celloutsig_0_4z & celloutsig_0_14z[1]);
  assign celloutsig_0_10z = ~(_00_ & in_data[42]);
  assign celloutsig_1_10z = ~in_data[133];
  assign celloutsig_0_26z = ~celloutsig_0_4z;
  assign celloutsig_0_44z = ~((celloutsig_0_4z | celloutsig_0_11z[8]) & celloutsig_0_24z);
  assign celloutsig_0_9z = ~((celloutsig_0_1z | in_data[29]) & celloutsig_0_1z);
  assign celloutsig_1_19z = ~((celloutsig_1_7z | celloutsig_1_1z) & celloutsig_1_10z);
  assign celloutsig_0_50z = ~((celloutsig_0_35z[0] | celloutsig_0_14z[1]) & (celloutsig_0_40z | celloutsig_0_25z[2]));
  assign celloutsig_0_19z = ~((celloutsig_0_2z[7] | celloutsig_0_12z[2]) & (celloutsig_0_17z | celloutsig_0_8z));
  assign celloutsig_0_37z = celloutsig_0_25z[0] | celloutsig_0_28z[7];
  assign celloutsig_0_53z = celloutsig_0_26z | celloutsig_0_13z;
  assign celloutsig_0_66z = celloutsig_0_13z | celloutsig_0_38z;
  assign celloutsig_0_7z = celloutsig_0_1z ^ celloutsig_0_3z;
  assign celloutsig_1_12z = celloutsig_1_2z[3] ^ celloutsig_1_6z[3];
  assign celloutsig_0_49z = ~(celloutsig_0_1z ^ celloutsig_0_26z);
  assign celloutsig_0_33z = ~(celloutsig_0_19z ^ celloutsig_0_28z[6]);
  assign celloutsig_0_65z = { celloutsig_0_46z[3:2], celloutsig_0_49z } + { celloutsig_0_22z[2:1], celloutsig_0_3z };
  reg [5:0] _24_;
  always_ff @(posedge clkin_data[32], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _24_ <= 6'h00;
    else _24_ <= { in_data[53:51], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z };
  assign { _01_[5:4], _00_, _01_[2:0] } = _24_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _02_ <= 11'h000;
    else _02_ <= { _01_[0], celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_16z, _01_[5:4], _00_, _01_[2:0] };
  always_ff @(posedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _03_ <= 3'h0;
    else _03_ <= { celloutsig_0_12z[1:0], celloutsig_0_17z };
  assign celloutsig_1_6z = { celloutsig_1_3z[3:0], celloutsig_1_3z } & in_data[166:158];
  assign celloutsig_0_12z = in_data[17:11] & { in_data[15], _01_[5:4], _00_, _01_[2:0] };
  assign celloutsig_0_29z = { celloutsig_0_11z[12:11], celloutsig_0_14z } & { in_data[90:86], celloutsig_0_9z };
  assign celloutsig_0_40z = { _03_, celloutsig_0_1z } == { celloutsig_0_29z[3:1], celloutsig_0_38z };
  assign celloutsig_0_47z = { celloutsig_0_29z[5:4], celloutsig_0_43z, celloutsig_0_1z } == { celloutsig_0_46z[3:1], celloutsig_0_3z };
  assign celloutsig_0_27z = { celloutsig_0_12z[6:4], _01_[5:4], _00_, _01_[2:0], celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_22z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_26z, celloutsig_0_8z } == { celloutsig_0_22z[2:0], celloutsig_0_7z, celloutsig_0_20z, _02_, _01_[5:4], _00_, _01_[2:0] };
  assign celloutsig_0_5z = { in_data[12:8], celloutsig_0_1z } > in_data[38:33];
  assign celloutsig_0_51z = { celloutsig_0_28z[5:2], celloutsig_0_0z, celloutsig_0_37z, celloutsig_0_49z, celloutsig_0_47z, celloutsig_0_16z, celloutsig_0_33z, celloutsig_0_23z, celloutsig_0_8z, celloutsig_0_21z, _02_, celloutsig_0_42z, celloutsig_0_37z, _01_[5:4], _00_, _01_[2:0] } > { _03_, celloutsig_0_38z, celloutsig_0_39z, celloutsig_0_47z, celloutsig_0_20z, celloutsig_0_42z, _01_[5:4], _00_, _01_[2:0], celloutsig_0_20z, celloutsig_0_40z, celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_28z, celloutsig_0_50z };
  assign celloutsig_0_91z = { celloutsig_0_84z[6:5], celloutsig_0_68z, celloutsig_0_79z, celloutsig_0_50z, celloutsig_0_14z, celloutsig_0_20z, celloutsig_0_72z, celloutsig_0_31z } > { _02_[5:3], celloutsig_0_70z, celloutsig_0_57z, celloutsig_0_51z, celloutsig_0_61z, celloutsig_0_76z, celloutsig_0_68z, celloutsig_0_71z };
  assign celloutsig_0_39z = { celloutsig_0_32z[1:0], celloutsig_0_35z, celloutsig_0_22z, _02_ } && { celloutsig_0_22z[2:0], celloutsig_0_14z, celloutsig_0_16z, _01_[5:4], _00_, _01_[2:0], celloutsig_0_5z, celloutsig_0_12z, _03_, celloutsig_0_7z };
  assign celloutsig_0_4z = { in_data[8:5], celloutsig_0_3z } && celloutsig_0_2z[5:1];
  assign celloutsig_0_58z = { _01_[4], _00_, _01_[2:1], celloutsig_0_33z } && { celloutsig_0_52z[8:6], celloutsig_0_34z, celloutsig_0_23z };
  assign celloutsig_0_63z = { celloutsig_0_42z[6:4], celloutsig_0_34z } && celloutsig_0_55z[3:0];
  assign celloutsig_0_72z = { celloutsig_0_31z[6:5], celloutsig_0_62z } && { celloutsig_0_35z[6:2], celloutsig_0_71z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_63z, celloutsig_0_27z, celloutsig_0_54z, celloutsig_0_39z };
  assign celloutsig_1_1z = in_data[119:115] && { in_data[104], celloutsig_1_0z };
  assign celloutsig_1_5z = celloutsig_1_2z[10:0] && { in_data[189:187], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_4z };
  assign celloutsig_0_75z = { celloutsig_0_12z[5:4], celloutsig_0_1z, celloutsig_0_39z } < celloutsig_0_42z[5:2];
  assign celloutsig_0_48z = { _01_[2:0], celloutsig_0_7z } != { _01_[4], celloutsig_0_0z, celloutsig_0_24z, celloutsig_0_15z };
  assign celloutsig_0_68z = celloutsig_0_42z[7:4] != celloutsig_0_29z[4:1];
  assign celloutsig_1_18z = { celloutsig_1_3z[3:0], celloutsig_1_5z } != { in_data[132], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_12z };
  assign celloutsig_0_1z = { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } != in_data[69:67];
  assign celloutsig_0_13z = celloutsig_0_11z[12:5] != { celloutsig_0_4z, _01_[5:4], _00_, _01_[2:0], celloutsig_0_5z };
  assign celloutsig_0_42z = - { celloutsig_0_29z[4:1], celloutsig_0_3z, celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_33z };
  assign celloutsig_0_46z = - { _01_[4], _00_, _01_[2:1] };
  assign celloutsig_0_62z = - { _03_[2], celloutsig_0_2z, celloutsig_0_49z };
  assign celloutsig_0_84z = - { celloutsig_0_29z[5], celloutsig_0_25z, celloutsig_0_77z, celloutsig_0_54z };
  assign celloutsig_1_0z = - in_data[118:115];
  assign celloutsig_1_3z = - celloutsig_1_2z[9:5];
  assign celloutsig_0_14z = - { in_data[58:56], celloutsig_0_5z };
  assign celloutsig_0_28z = - { celloutsig_0_14z[3:2], celloutsig_0_24z, celloutsig_0_16z, celloutsig_0_17z, celloutsig_0_27z, celloutsig_0_25z };
  assign celloutsig_0_31z = - { in_data[82:77], celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_8z };
  assign celloutsig_0_0z = in_data[37:35] !== in_data[7:5];
  assign celloutsig_0_61z = { _01_[1:0], celloutsig_0_32z, celloutsig_0_17z, celloutsig_0_1z } !== { celloutsig_0_31z[3:2], celloutsig_0_29z };
  assign celloutsig_0_79z = { in_data[47:46], celloutsig_0_25z, celloutsig_0_57z, celloutsig_0_53z, celloutsig_0_66z, celloutsig_0_39z } !== { celloutsig_0_62z[8:5], celloutsig_0_27z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_43z, celloutsig_0_32z };
  assign celloutsig_1_4z = { in_data[187:186], celloutsig_1_0z } !== { celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_0_23z = { celloutsig_0_22z[3:1], celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_1z } !== { _00_, _01_[2:1], celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_19z };
  assign celloutsig_0_35z = ~ { celloutsig_0_11z[13:7], celloutsig_0_24z, celloutsig_0_26z };
  assign celloutsig_0_21z = ~ { celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_0_57z = { celloutsig_0_3z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_33z } | celloutsig_0_42z[12:9];
  assign celloutsig_0_77z = { celloutsig_0_46z[2:0], celloutsig_0_37z, celloutsig_0_17z, celloutsig_0_17z } | { celloutsig_0_70z[5:3], celloutsig_0_75z, celloutsig_0_13z, celloutsig_0_15z };
  assign celloutsig_1_2z = { in_data[119:111], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z } | { in_data[121:109], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_32z = { celloutsig_0_25z[2], celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_10z } | { _03_, celloutsig_0_3z };
  assign celloutsig_0_3z = | celloutsig_0_2z[5:2];
  assign celloutsig_0_45z = | { _01_[5:4], _00_, celloutsig_0_23z, celloutsig_0_40z, celloutsig_0_35z, celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_40z };
  assign celloutsig_0_8z = | { _01_[5:4], _00_, _01_[2:0], celloutsig_0_0z };
  assign celloutsig_0_17z = | { in_data[20:19], celloutsig_0_10z, celloutsig_0_1z };
  assign celloutsig_0_24z = | { celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_20z };
  assign celloutsig_1_7z = | { celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z, in_data[99] };
  assign celloutsig_0_15z = | { celloutsig_0_13z, celloutsig_0_12z[5:3], celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_16z = ^ { celloutsig_0_12z[6:2], celloutsig_0_5z };
  assign celloutsig_0_52z = { celloutsig_0_12z[5:3], celloutsig_0_47z, celloutsig_0_25z, celloutsig_0_20z } >> celloutsig_0_42z[16:6];
  assign celloutsig_0_55z = celloutsig_0_31z[7:2] >> { celloutsig_0_16z, celloutsig_0_9z, celloutsig_0_44z, celloutsig_0_0z, celloutsig_0_36z, celloutsig_0_10z };
  assign celloutsig_0_71z = { celloutsig_0_70z[4], celloutsig_0_44z, celloutsig_0_58z } >> celloutsig_0_35z[5:3];
  assign celloutsig_0_76z = { celloutsig_0_22z[3:2], celloutsig_0_36z } >> celloutsig_0_42z[19:17];
  assign celloutsig_0_92z = { celloutsig_0_57z[2:1], celloutsig_0_33z, celloutsig_0_79z, celloutsig_0_44z } >> { celloutsig_0_55z[3:0], celloutsig_0_43z };
  assign celloutsig_0_20z = { celloutsig_0_14z[1:0], celloutsig_0_1z, celloutsig_0_7z } >> _02_[8:5];
  assign celloutsig_0_2z = { in_data[25:16], celloutsig_0_1z } >> { in_data[37:30], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_11z = { _00_, _01_[2:0], celloutsig_0_2z, celloutsig_0_5z } >>> { _00_, _01_[2:0], celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_70z = { _02_[10:8], celloutsig_0_65z, celloutsig_0_61z } ^ { celloutsig_0_47z, celloutsig_0_45z, celloutsig_0_57z, celloutsig_0_43z };
  assign celloutsig_0_22z = { _01_[5:4], celloutsig_0_17z, celloutsig_0_7z } ^ { in_data[58:57], celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_0_25z = { in_data[8:7], celloutsig_0_7z } ^ celloutsig_0_12z[6:4];
  assign celloutsig_0_54z = ~((celloutsig_0_10z & celloutsig_0_48z) | (celloutsig_0_21z[0] & celloutsig_0_1z));
  assign _01_[3] = _00_;
  assign { out_data[128], out_data[96], out_data[32], out_data[4:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_91z, celloutsig_0_92z };
endmodule
