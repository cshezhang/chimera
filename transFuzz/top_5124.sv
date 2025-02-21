/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [2:0] _03_;
  wire [4:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [5:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [6:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [16:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [4:0] celloutsig_0_24z;
  wire [6:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [2:0] celloutsig_0_27z;
  wire [13:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [8:0] celloutsig_0_31z;
  wire [28:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [3:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [2:0] celloutsig_0_42z;
  wire [5:0] celloutsig_0_43z;
  wire [14:0] celloutsig_0_46z;
  wire [8:0] celloutsig_0_47z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_62z;
  wire celloutsig_0_64z;
  wire celloutsig_0_66z;
  wire [4:0] celloutsig_0_6z;
  wire celloutsig_0_74z;
  wire celloutsig_0_78z;
  wire celloutsig_0_79z;
  wire celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire [19:0] celloutsig_0_81z;
  wire celloutsig_0_84z;
  wire [2:0] celloutsig_0_88z;
  wire celloutsig_0_91z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [7:0] celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [9:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [4:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_35z = !(_00_ ? celloutsig_0_0z : celloutsig_0_18z);
  assign celloutsig_0_64z = !(celloutsig_0_5z ? celloutsig_0_33z[13] : celloutsig_0_36z);
  assign celloutsig_1_18z = !(celloutsig_1_9z[4] ? celloutsig_1_12z[6] : celloutsig_1_2z);
  assign celloutsig_0_34z = ~(celloutsig_0_25z[0] | celloutsig_0_12z);
  assign celloutsig_0_5z = ~(celloutsig_0_4z | in_data[80]);
  assign celloutsig_0_7z = ~(celloutsig_0_0z | celloutsig_0_6z[2]);
  assign celloutsig_1_0z = ~(in_data[189] | in_data[127]);
  assign celloutsig_0_0z = ~((in_data[43] | in_data[28]) & in_data[36]);
  assign celloutsig_0_80z = ~((celloutsig_0_59z | celloutsig_0_13z) & celloutsig_0_42z[1]);
  assign celloutsig_1_4z = ~((celloutsig_1_3z | celloutsig_1_3z) & celloutsig_1_0z);
  assign celloutsig_0_11z = ~((celloutsig_0_7z | celloutsig_0_9z) & celloutsig_0_4z);
  assign celloutsig_0_15z = ~((celloutsig_0_3z | celloutsig_0_6z[3]) & celloutsig_0_7z);
  assign celloutsig_1_7z = ~((celloutsig_1_0z | celloutsig_1_5z) & (celloutsig_1_0z | celloutsig_1_4z));
  assign celloutsig_1_14z = ~((celloutsig_1_12z[5] | celloutsig_1_9z[0]) & (celloutsig_1_0z | celloutsig_1_4z));
  assign celloutsig_0_13z = ~((_01_ | celloutsig_0_10z) & (celloutsig_0_1z | celloutsig_0_2z));
  assign celloutsig_0_36z = in_data[15] | ~(_00_);
  assign celloutsig_0_49z = celloutsig_0_15z | ~(celloutsig_0_1z);
  assign celloutsig_0_74z = celloutsig_0_64z | ~(celloutsig_0_10z);
  assign celloutsig_1_3z = celloutsig_1_2z | ~(celloutsig_1_2z);
  assign celloutsig_0_12z = celloutsig_0_4z | ~(celloutsig_0_7z);
  assign celloutsig_0_37z = celloutsig_0_28z[8] | celloutsig_0_26z;
  assign celloutsig_0_62z = celloutsig_0_50z | celloutsig_0_43z[0];
  assign celloutsig_0_23z = in_data[84] | celloutsig_0_18z;
  assign celloutsig_0_50z = celloutsig_0_37z ^ celloutsig_0_49z;
  assign celloutsig_0_84z = celloutsig_0_42z[2] ^ celloutsig_0_74z;
  assign celloutsig_0_18z = celloutsig_0_9z ^ celloutsig_0_12z;
  assign celloutsig_0_3z = ~(in_data[4] ^ celloutsig_0_0z);
  assign celloutsig_0_59z = ~(celloutsig_0_5z ^ celloutsig_0_46z[5]);
  assign celloutsig_1_19z = ~(celloutsig_1_14z ^ celloutsig_1_10z);
  assign celloutsig_0_17z = ~(celloutsig_0_13z ^ celloutsig_0_2z);
  assign celloutsig_0_2z = ~(celloutsig_0_1z ^ celloutsig_0_0z);
  reg [2:0] _36_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _36_ <= 3'h0;
    else _36_ <= celloutsig_0_22z[3:1];
  assign { _03_[2], _02_, _03_[0] } = _36_;
  reg [4:0] _37_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _37_ <= 5'h00;
    else _37_ <= { celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_3z };
  assign { _04_[4:3], _01_, _00_, _04_[0] } = _37_;
  reg [18:0] _38_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _38_ <= 19'h00000;
    else _38_ <= { celloutsig_0_28z[12:11], celloutsig_0_19z, celloutsig_0_84z, celloutsig_0_62z, _03_[2], _02_, _03_[0], celloutsig_0_50z, celloutsig_0_30z, celloutsig_0_62z, celloutsig_0_21z, celloutsig_0_78z, celloutsig_0_19z, celloutsig_0_21z, celloutsig_0_66z, celloutsig_0_88z };
  assign out_data[18:0] = _38_;
  assign celloutsig_0_88z = { celloutsig_0_47z[3:2], celloutsig_0_80z } & { celloutsig_0_27z[1:0], celloutsig_0_79z };
  assign celloutsig_1_9z = { celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_7z } & celloutsig_1_1z[4:0];
  assign celloutsig_0_27z = celloutsig_0_25z[5:3] & { _04_[0], celloutsig_0_14z, celloutsig_0_9z };
  assign celloutsig_0_39z = { celloutsig_0_11z, celloutsig_0_36z, celloutsig_0_21z, celloutsig_0_14z } / { 1'h1, celloutsig_0_22z[9], celloutsig_0_36z, celloutsig_0_34z };
  assign celloutsig_0_43z = celloutsig_0_31z[7:2] / { 1'h1, celloutsig_0_33z[18], celloutsig_0_18z, celloutsig_0_42z };
  assign celloutsig_1_12z = { celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z } / { 1'h1, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_4z };
  assign celloutsig_0_16z = in_data[64:59] / { 1'h1, in_data[30:27], celloutsig_0_1z };
  assign celloutsig_0_1z = in_data[26:24] < { in_data[5:4], celloutsig_0_0z };
  assign celloutsig_0_79z = celloutsig_0_74z & ~(celloutsig_0_20z[6]);
  assign celloutsig_0_22z = { in_data[80:69], celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_10z } % { 1'h1, celloutsig_0_20z[5:0], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_20z, celloutsig_0_14z };
  assign celloutsig_0_33z = { celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_21z, celloutsig_0_24z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_28z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_12z } * in_data[45:17];
  assign celloutsig_0_25z = { celloutsig_0_16z[4], celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_21z, celloutsig_0_9z } * celloutsig_0_22z[7:1];
  assign celloutsig_0_42z = { _04_[3], celloutsig_0_10z, celloutsig_0_7z } | { celloutsig_0_0z, celloutsig_0_40z, celloutsig_0_0z };
  assign celloutsig_0_47z = { celloutsig_0_27z[0], celloutsig_0_36z, celloutsig_0_36z, celloutsig_0_36z, celloutsig_0_34z, _03_[2], _02_, _03_[0], celloutsig_0_17z } | { celloutsig_0_31z[7:0], celloutsig_0_15z };
  assign celloutsig_1_1z = in_data[120:111] | { in_data[132:124], celloutsig_1_0z };
  assign celloutsig_0_28z = { _04_[4:3], _01_, _00_, _04_[0], celloutsig_0_25z, celloutsig_0_21z, celloutsig_0_12z } | { celloutsig_0_20z[0], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_1z };
  assign celloutsig_0_31z = { celloutsig_0_20z[3], celloutsig_0_21z, celloutsig_0_6z, celloutsig_0_21z, celloutsig_0_1z } | { celloutsig_0_22z[14:13], celloutsig_0_5z, celloutsig_0_24z, celloutsig_0_21z };
  assign celloutsig_0_91z = celloutsig_0_40z & celloutsig_0_81z[0];
  assign celloutsig_0_9z = celloutsig_0_7z & celloutsig_0_6z[0];
  assign celloutsig_0_26z = celloutsig_0_10z & celloutsig_0_3z;
  assign celloutsig_0_78z = | { celloutsig_0_47z[6:0], celloutsig_0_3z };
  assign celloutsig_0_10z = | { _04_[3], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_1_10z = | { celloutsig_1_4z, celloutsig_1_1z[5:1], celloutsig_1_0z };
  assign celloutsig_0_19z = | { celloutsig_0_18z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_21z = | { celloutsig_0_12z, _04_[3], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_1z, in_data[17:3], celloutsig_0_0z };
  assign celloutsig_0_30z = | { celloutsig_0_27z, celloutsig_0_26z, celloutsig_0_23z, celloutsig_0_22z[9:8], celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_7z };
  assign celloutsig_0_40z = ~^ { _04_[3], celloutsig_0_17z, celloutsig_0_23z, celloutsig_0_36z };
  assign celloutsig_0_4z = ^ { in_data[64:56], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_66z = ^ { celloutsig_0_20z[3:0], celloutsig_0_12z };
  assign celloutsig_1_2z = ^ in_data[156:150];
  assign celloutsig_1_8z = ^ { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_0_14z = ^ { celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_7z, _04_[4:3], _01_, _00_, _04_[0], celloutsig_0_4z, celloutsig_0_13z };
  assign celloutsig_0_6z = { in_data[14:11], celloutsig_0_1z } <<< in_data[45:41];
  assign celloutsig_0_20z = { _04_[4:3], _01_, _00_, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_14z } <<< { celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_9z };
  assign celloutsig_0_24z = { in_data[66:64], celloutsig_0_14z, celloutsig_0_18z } <<< celloutsig_0_22z[14:10];
  assign celloutsig_0_81z = { celloutsig_0_22z[16:1], celloutsig_0_39z } >>> { celloutsig_0_35z, celloutsig_0_62z, celloutsig_0_49z, celloutsig_0_25z, _03_[2], _02_, _03_[0], celloutsig_0_43z, celloutsig_0_17z };
  assign celloutsig_0_46z = in_data[30:16] ~^ { celloutsig_0_13z, celloutsig_0_28z };
  assign celloutsig_1_5z = ~((celloutsig_1_3z & celloutsig_1_2z) | (celloutsig_1_2z & celloutsig_1_0z));
  assign _03_[1] = _02_;
  assign _04_[2:1] = { _01_, _00_ };
  assign { out_data[128], out_data[96], out_data[32] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_91z };
endmodule
