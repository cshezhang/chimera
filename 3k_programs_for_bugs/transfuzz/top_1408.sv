/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire [21:0] _05_;
  reg [3:0] _06_;
  wire [3:0] _07_;
  wire [4:0] _08_;
  wire [3:0] celloutsig_0_10z;
  wire [7:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [11:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [26:0] celloutsig_0_22z;
  wire [6:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [7:0] celloutsig_0_30z;
  wire [6:0] celloutsig_0_31z;
  wire [8:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [4:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [4:0] celloutsig_0_45z;
  wire celloutsig_0_47z;
  wire [12:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_52z;
  wire [10:0] celloutsig_0_54z;
  wire [5:0] celloutsig_0_5z;
  wire [2:0] celloutsig_0_61z;
  wire [6:0] celloutsig_0_63z;
  wire [3:0] celloutsig_0_65z;
  wire celloutsig_0_68z;
  wire celloutsig_0_6z;
  wire celloutsig_0_73z;
  wire [21:0] celloutsig_0_78z;
  wire celloutsig_0_7z;
  wire [6:0] celloutsig_0_8z;
  wire celloutsig_0_93z;
  wire celloutsig_0_94z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [17:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [11:0] celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire [18:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [3:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = ~(_00_ & celloutsig_0_1z);
  assign celloutsig_0_4z = ~(in_data[3] & celloutsig_0_3z);
  assign celloutsig_1_16z = ~(celloutsig_1_12z & celloutsig_1_14z);
  assign celloutsig_0_68z = ~(celloutsig_0_32z[0] | celloutsig_0_65z[2]);
  assign celloutsig_0_6z = ~(celloutsig_0_2z | celloutsig_0_4z);
  assign celloutsig_0_73z = ~(celloutsig_0_14z | celloutsig_0_19z);
  assign celloutsig_0_93z = ~(celloutsig_0_40z | celloutsig_0_30z[5]);
  assign celloutsig_1_2z = ~(celloutsig_1_0z | celloutsig_1_0z);
  assign celloutsig_0_24z = ~(celloutsig_0_10z[2] | celloutsig_0_17z);
  assign celloutsig_0_2z = ~(_02_ | celloutsig_0_1z);
  assign celloutsig_0_41z = celloutsig_0_2z ^ celloutsig_0_12z;
  assign celloutsig_0_42z = celloutsig_0_19z ^ celloutsig_0_2z;
  assign celloutsig_0_52z = celloutsig_0_48z[6] ^ celloutsig_0_10z[3];
  assign celloutsig_0_94z = celloutsig_0_29z ^ celloutsig_0_78z[15];
  assign celloutsig_1_6z = in_data[157] ^ celloutsig_1_3z;
  assign celloutsig_1_10z = celloutsig_1_6z ^ celloutsig_1_8z;
  assign celloutsig_0_37z = ~(celloutsig_0_6z ^ celloutsig_0_36z);
  assign celloutsig_0_1z = ~(_03_ ^ in_data[37]);
  assign celloutsig_0_21z = ~(celloutsig_0_6z ^ celloutsig_0_18z);
  assign celloutsig_0_29z = ~(_04_ ^ celloutsig_0_14z);
  reg [3:0] _29_;
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _29_ <= 4'h0;
    else _29_ <= in_data[82:79];
  assign { _02_, _03_, _00_, _07_[0] } = _29_;
  reg [21:0] _30_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _30_ <= 22'h000000;
    else _30_ <= { celloutsig_0_22z[9:0], celloutsig_0_6z, celloutsig_0_30z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_27z };
  assign { _05_[21:9], _01_, _05_[7:0] } = _30_;
  always_ff @(negedge clkin_data[64], posedge clkin_data[96])
    if (clkin_data[96]) _06_ <= 4'h0;
    else _06_ <= { celloutsig_1_7z[15:14], celloutsig_1_0z, celloutsig_1_0z };
  reg [4:0] _32_;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _32_ <= 5'h00;
    else _32_ <= { celloutsig_0_5z[5:2], celloutsig_0_12z };
  assign { _08_[4:2], _04_, _08_[0] } = _32_;
  assign celloutsig_0_39z = { _05_[6:4], celloutsig_0_21z, celloutsig_0_13z } >= { celloutsig_0_11z[7:5], celloutsig_0_12z, celloutsig_0_13z };
  assign celloutsig_0_47z = { celloutsig_0_8z[6:2], celloutsig_0_28z, celloutsig_0_19z } >= { celloutsig_0_10z[3], celloutsig_0_12z, celloutsig_0_12z, 1'h1, celloutsig_0_39z, celloutsig_0_6z, celloutsig_0_27z };
  assign celloutsig_0_9z = { celloutsig_0_8z[2], celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_7z, _02_, _03_, _00_, _07_[0], celloutsig_0_8z, celloutsig_0_5z } >= { in_data[38:18], celloutsig_0_6z };
  assign celloutsig_1_18z = { celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_12z, celloutsig_1_16z, celloutsig_1_3z } >= celloutsig_1_13z[4:0];
  assign celloutsig_0_14z = { celloutsig_0_8z[6:1], celloutsig_0_11z } >= { celloutsig_0_11z, celloutsig_0_6z, _02_, _03_, _00_, _07_[0], celloutsig_0_3z };
  assign celloutsig_0_17z = { celloutsig_0_11z[6:5], celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_4z } >= { in_data[82:79], celloutsig_0_9z };
  assign celloutsig_0_25z = { in_data[67:52], celloutsig_0_17z } >= { in_data[38:26], celloutsig_0_19z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_12z };
  assign celloutsig_0_28z = { celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_4z } >= { celloutsig_0_17z, celloutsig_0_4z, _02_, _03_, _00_, _07_[0], celloutsig_0_7z, celloutsig_0_17z, celloutsig_0_9z };
  assign celloutsig_0_49z = in_data[33:14] <= in_data[41:22];
  assign celloutsig_1_12z = { celloutsig_1_15z, celloutsig_1_2z, celloutsig_1_9z[3:2], celloutsig_1_9z[2], celloutsig_1_8z, celloutsig_1_10z } <= { in_data[180:176], celloutsig_1_15z, celloutsig_1_3z };
  assign celloutsig_0_27z = { celloutsig_0_5z[4:3], _08_[4:2], _04_, _08_[0], celloutsig_0_24z, celloutsig_0_2z } <= { celloutsig_0_12z, celloutsig_0_11z };
  assign celloutsig_0_36z = { celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_25z, celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_33z, celloutsig_0_6z, celloutsig_0_21z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_11z } && celloutsig_0_22z[26:8];
  assign celloutsig_0_44z = { celloutsig_0_43z, celloutsig_0_29z, celloutsig_0_39z, celloutsig_0_12z, celloutsig_0_33z, celloutsig_0_21z, celloutsig_0_2z } && { celloutsig_0_5z[5:1], celloutsig_0_40z, celloutsig_0_18z };
  assign celloutsig_0_50z = { celloutsig_0_32z[7:1], celloutsig_0_36z, celloutsig_0_49z } && { celloutsig_0_32z[2], _08_[4:2], _04_, _08_[0], celloutsig_0_36z, celloutsig_0_35z, celloutsig_0_15z };
  assign celloutsig_0_7z = { _03_, _00_, _07_[0], celloutsig_0_5z, _02_, _03_, _00_, _07_[0], celloutsig_0_6z, celloutsig_0_6z } && { in_data[15:13], celloutsig_0_5z, celloutsig_0_3z, _02_, _03_, _00_, _07_[0], celloutsig_0_6z };
  assign celloutsig_1_15z = { in_data[145], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_0z } && { in_data[189:182], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_1_8z = { celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_15z } && { celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_1_14z = { celloutsig_1_13z[7:5], celloutsig_1_0z } && { celloutsig_1_9z[3:2], celloutsig_1_9z[2], celloutsig_1_8z };
  assign celloutsig_0_12z = in_data[14:4] && { celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_0_19z = in_data[37:10] && { in_data[64:59], celloutsig_0_9z, celloutsig_0_16z, celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_15z, _02_, _03_, _00_, _07_[0], celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_16z, celloutsig_0_14z };
  assign celloutsig_0_38z = { celloutsig_0_37z, celloutsig_0_14z, celloutsig_0_35z, celloutsig_0_1z, celloutsig_0_24z } % { 1'h1, _05_[10], celloutsig_0_33z, celloutsig_0_24z, celloutsig_0_28z };
  assign celloutsig_0_54z = { _08_[4:2], celloutsig_0_18z, celloutsig_0_25z, celloutsig_0_1z, celloutsig_0_16z, celloutsig_0_35z, celloutsig_0_16z, celloutsig_0_16z, celloutsig_0_43z } % { 1'h1, celloutsig_0_30z[5:2], celloutsig_0_13z, 1'h1, celloutsig_0_18z, celloutsig_0_50z, celloutsig_0_13z, celloutsig_0_16z };
  assign celloutsig_0_63z = { celloutsig_0_16z, celloutsig_0_45z, celloutsig_0_13z } % { 1'h1, celloutsig_0_8z[2:1], celloutsig_0_61z, celloutsig_0_42z };
  assign celloutsig_0_65z = { celloutsig_0_8z[3:1], 1'h1 } % { 1'h1, celloutsig_0_23z[4:3], celloutsig_0_27z };
  assign celloutsig_1_13z = { in_data[134:124], celloutsig_1_11z, celloutsig_1_11z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_10z, 1'h0, celloutsig_1_3z } % { 1'h1, in_data[152:139], celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_40z = { celloutsig_0_29z, celloutsig_0_38z, celloutsig_0_24z } !== { celloutsig_0_20z[10:5], celloutsig_0_18z };
  assign celloutsig_0_18z = { celloutsig_0_8z[4:1], celloutsig_0_13z } !== { in_data[80:78], celloutsig_0_14z, celloutsig_0_2z };
  assign celloutsig_0_45z = { in_data[19:16], celloutsig_0_39z } | celloutsig_0_20z[6:2];
  assign celloutsig_0_48z = { _02_, _03_, _00_, _07_[0], celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_44z, celloutsig_0_37z } | { in_data[29:18], celloutsig_0_41z };
  assign celloutsig_0_61z = { _03_, _00_, _07_[0] } | { celloutsig_0_50z, celloutsig_0_1z, celloutsig_0_12z };
  assign celloutsig_0_10z = { celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_6z } | { _03_, _00_, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_23z = { celloutsig_0_12z, celloutsig_0_5z } | celloutsig_0_20z[7:1];
  assign celloutsig_0_33z = | { celloutsig_0_8z[4], _08_[4:2], _04_, _08_[0], celloutsig_0_24z };
  assign celloutsig_0_43z = | in_data[33:27];
  assign celloutsig_0_13z = | celloutsig_0_8z[3:1];
  assign celloutsig_1_0z = in_data[148] & in_data[176];
  assign celloutsig_0_15z = celloutsig_0_8z[1] & celloutsig_0_3z;
  assign celloutsig_0_16z = celloutsig_0_8z[5] & celloutsig_0_6z;
  assign celloutsig_0_35z = ~^ { celloutsig_0_22z[17:11], celloutsig_0_29z, celloutsig_0_10z, celloutsig_0_29z, celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_25z, celloutsig_0_10z, _05_[21:9], _01_, _05_[7:0], celloutsig_0_23z, celloutsig_0_9z };
  assign celloutsig_1_4z = ~^ in_data[129:125];
  assign celloutsig_1_11z = ~^ { celloutsig_1_0z, celloutsig_1_15z, celloutsig_1_3z };
  assign celloutsig_0_5z = { celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_1z } >> in_data[60:55];
  assign celloutsig_1_7z = { in_data[183:175], celloutsig_1_4z, 1'h0, celloutsig_1_3z, celloutsig_1_0z, 1'h0, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_15z, celloutsig_1_3z, celloutsig_1_0z } >> { in_data[159:142], celloutsig_1_0z };
  assign celloutsig_1_19z = { celloutsig_1_13z[2:1], celloutsig_1_10z, _06_, celloutsig_1_11z, _06_ } >> { celloutsig_1_7z[15:13], celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_16z, celloutsig_1_15z, _06_ };
  assign celloutsig_0_22z = { celloutsig_0_8z[6:4], celloutsig_0_7z, celloutsig_0_8z, _02_, _03_, _00_, _07_[0], celloutsig_0_20z } >> { _02_, _03_, _00_, _07_[0], celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_18z };
  assign celloutsig_0_31z = { in_data[62:61], celloutsig_0_18z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_21z } >> celloutsig_0_20z[6:0];
  assign celloutsig_0_32z = { celloutsig_0_19z, celloutsig_0_1z, _08_[4:2], _04_, _08_[0], celloutsig_0_7z, celloutsig_0_29z } ~^ { celloutsig_0_20z[8:1], celloutsig_0_25z };
  assign celloutsig_0_8z = { in_data[8:6], _02_, _03_, _00_, _07_[0] } ~^ { celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_0_11z = { celloutsig_0_8z[5:1], celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_7z } ~^ { celloutsig_0_5z[4:2], celloutsig_0_1z, _02_, _03_, _00_, _07_[0] };
  assign celloutsig_0_20z = { celloutsig_0_11z[7:1], celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_13z } ~^ { in_data[67], celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_15z, celloutsig_0_17z, _02_, _03_, _00_, _07_[0], celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_30z = { in_data[70:66], celloutsig_0_27z, celloutsig_0_9z, celloutsig_0_2z } ~^ { celloutsig_0_20z[7:2], celloutsig_0_18z, celloutsig_0_29z };
  assign { celloutsig_0_78z[18], celloutsig_0_78z[4], celloutsig_0_78z[17:7], celloutsig_0_78z[1], celloutsig_0_78z[3], celloutsig_0_78z[6], celloutsig_0_78z[0], celloutsig_0_78z[19], celloutsig_0_78z[5], celloutsig_0_78z[21:20] } = { celloutsig_0_73z, celloutsig_0_68z, celloutsig_0_54z, celloutsig_0_52z, celloutsig_0_47z, celloutsig_0_37z, celloutsig_0_21z, celloutsig_0_13z, celloutsig_0_3z, _00_, _07_[0] } | { celloutsig_0_63z[1], celloutsig_0_30z[4], celloutsig_0_63z[0], celloutsig_0_19z, celloutsig_0_36z, celloutsig_0_31z, celloutsig_0_30z[7], celloutsig_0_30z[1], celloutsig_0_30z[3], celloutsig_0_30z[6], celloutsig_0_30z[0], celloutsig_0_63z[2], celloutsig_0_30z[5], celloutsig_0_63z[4:3] };
  assign { celloutsig_1_9z[2], celloutsig_1_9z[3] } = { celloutsig_1_0z, celloutsig_1_3z } | { celloutsig_1_8z, in_data[181] };
  assign celloutsig_1_3z = ~celloutsig_1_2z;
  assign _05_[8] = _01_;
  assign _07_[3:1] = { _02_, _03_, _00_ };
  assign _08_[1] = _04_;
  assign celloutsig_0_78z[2] = 1'h1;
  assign celloutsig_1_9z[1:0] = { celloutsig_1_9z[2], celloutsig_1_8z };
  assign { out_data[128], out_data[107:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_93z, celloutsig_0_94z };
endmodule
