/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  reg [2:0] _04_;
  wire [6:0] _05_;
  wire [18:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire [4:0] celloutsig_0_17z;
  wire [11:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [13:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [5:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [3:0] celloutsig_0_28z;
  wire [14:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [3:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_43z;
  wire [8:0] celloutsig_0_45z;
  wire celloutsig_0_47z;
  wire [2:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire [12:0] celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire [4:0] celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire [7:0] celloutsig_0_61z;
  wire celloutsig_0_64z;
  wire [10:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [23:0] celloutsig_1_15z;
  wire [2:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [21:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [16:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [3:0] celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_19z = celloutsig_1_12z ? celloutsig_1_1z : celloutsig_1_15z[9];
  assign celloutsig_0_32z = !(celloutsig_0_25z ? celloutsig_0_30z : celloutsig_0_15z);
  assign celloutsig_0_39z = !(in_data[56] ? celloutsig_0_22z : celloutsig_0_32z);
  assign celloutsig_1_5z = !(celloutsig_1_0z ? in_data[96] : celloutsig_1_1z);
  assign celloutsig_0_14z = !(celloutsig_0_12z ? celloutsig_0_11z : celloutsig_0_8z);
  assign celloutsig_0_41z = ~((celloutsig_0_17z[4] | celloutsig_0_8z) & (celloutsig_0_26z[0] | celloutsig_0_36z));
  assign celloutsig_0_54z = ~((celloutsig_0_30z | celloutsig_0_10z) & (celloutsig_0_43z | celloutsig_0_41z));
  assign celloutsig_1_10z = ~((celloutsig_1_8z | celloutsig_1_7z) & (celloutsig_1_1z | in_data[142]));
  assign celloutsig_0_24z = ~((celloutsig_0_19z | celloutsig_0_7z[8]) & (celloutsig_0_5z | celloutsig_0_18z[11]));
  assign celloutsig_0_3z = celloutsig_0_1z | in_data[40];
  assign celloutsig_1_8z = celloutsig_1_5z | celloutsig_1_6z[6];
  assign celloutsig_1_12z = celloutsig_1_4z[6] | celloutsig_1_6z[4];
  assign celloutsig_1_13z = celloutsig_1_2z | celloutsig_1_4z[2];
  assign celloutsig_0_10z = celloutsig_0_3z | celloutsig_0_9z;
  assign celloutsig_0_11z = celloutsig_0_4z[2] | celloutsig_0_2z;
  assign celloutsig_0_13z = celloutsig_0_12z | celloutsig_0_7z[7];
  assign celloutsig_0_20z = celloutsig_0_15z | in_data[88];
  assign celloutsig_0_1z = ~(celloutsig_0_0z[9] ^ celloutsig_0_0z[17]);
  assign celloutsig_0_12z = ~(_03_ ^ celloutsig_0_8z);
  assign celloutsig_0_22z = ~(celloutsig_0_9z ^ celloutsig_0_16z[0]);
  assign celloutsig_0_27z = ~(celloutsig_0_11z ^ celloutsig_0_7z[4]);
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _04_ <= 3'h0;
    else _04_ <= { celloutsig_0_43z, celloutsig_0_15z, celloutsig_0_54z };
  reg [6:0] _28_;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _28_ <= 7'h00;
    else _28_ <= celloutsig_0_0z[15:9];
  assign { _02_, _05_[5], _03_, _01_, _05_[2], _00_, _05_[0] } = _28_;
  reg [13:0] _29_;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _29_ <= 14'h0000;
    else _29_ <= { celloutsig_0_0z[10:2], celloutsig_0_30z, celloutsig_0_51z, _04_ };
  assign out_data[45:32] = _29_;
  assign celloutsig_0_31z = { celloutsig_0_0z[14:13], celloutsig_0_23z, celloutsig_0_2z } & { in_data[52:51], celloutsig_0_9z, celloutsig_0_9z };
  assign celloutsig_0_61z = { celloutsig_0_18z[8:6], celloutsig_0_57z } / { 1'h1, _05_[5], _03_, _01_, _05_[2], _00_, _05_[0], celloutsig_0_50z };
  assign celloutsig_0_7z = { in_data[87:82], celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_4z } / { 1'h1, _02_, _05_[5], _03_, _01_, _05_[2], _00_, _05_[0], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_26z = { in_data[4:0], celloutsig_0_2z } / { 1'h1, in_data[16:14], celloutsig_0_5z, celloutsig_0_14z };
  assign celloutsig_0_29z = { _02_, _05_[5], _03_, _01_, _05_[2], celloutsig_0_22z, celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_27z, celloutsig_0_20z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_19z } / { 1'h1, celloutsig_0_7z[8], celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_20z, celloutsig_0_23z, celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_27z, celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_2z, celloutsig_0_16z };
  assign celloutsig_0_64z = celloutsig_0_61z == { celloutsig_0_52z[12:7], celloutsig_0_36z, celloutsig_0_12z };
  assign celloutsig_1_1z = in_data[126:110] == in_data[144:128];
  assign celloutsig_0_25z = { celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_2z } == { celloutsig_0_0z[10], celloutsig_0_19z, celloutsig_0_12z };
  assign celloutsig_0_35z = { celloutsig_0_18z[8:2], celloutsig_0_32z, celloutsig_0_9z, celloutsig_0_22z, celloutsig_0_24z, celloutsig_0_14z, celloutsig_0_23z, celloutsig_0_12z, celloutsig_0_17z, celloutsig_0_30z, celloutsig_0_19z, celloutsig_0_1z } >= { celloutsig_0_29z[14:1], celloutsig_0_2z, _02_, _05_[5], _03_, _01_, _05_[2], _00_, _05_[0] };
  assign celloutsig_0_47z = { celloutsig_0_31z, celloutsig_0_25z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_23z, celloutsig_0_19z } >= { celloutsig_0_45z[7:4], celloutsig_0_17z, celloutsig_0_35z, celloutsig_0_14z };
  assign celloutsig_0_43z = { celloutsig_0_21z[12:5], celloutsig_0_15z } <= { _02_, _05_[5], _03_, _01_, _05_[2], _00_, celloutsig_0_16z };
  assign celloutsig_0_5z = { in_data[47:36], celloutsig_0_1z } <= in_data[19:7];
  assign celloutsig_0_9z = in_data[90:85] <= { in_data[34:30], celloutsig_0_1z };
  assign celloutsig_0_36z = celloutsig_0_28z[1] & ~(celloutsig_0_18z[2]);
  assign celloutsig_0_51z = celloutsig_0_9z & ~(_00_);
  assign celloutsig_0_57z = { _04_, celloutsig_0_5z, celloutsig_0_12z } % { 1'h1, _04_[1:0], celloutsig_0_10z, celloutsig_0_41z };
  assign celloutsig_0_28z = celloutsig_0_17z[3:0] % { 1'h1, celloutsig_0_17z[1], celloutsig_0_22z, celloutsig_0_5z };
  assign celloutsig_0_18z = { celloutsig_0_0z[4:2], celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_17z } * { celloutsig_0_0z[14:4], celloutsig_0_13z };
  assign celloutsig_1_4z = celloutsig_1_2z ? in_data[129:108] : in_data[138:117];
  assign celloutsig_1_6z = celloutsig_1_5z ? { in_data[114:99], celloutsig_1_3z } : in_data[135:119];
  assign celloutsig_1_15z = celloutsig_1_0z ? in_data[170:147] : { celloutsig_1_3z, celloutsig_1_10z, celloutsig_1_14z, celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_12z, celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_13z, celloutsig_1_14z, celloutsig_1_9z, celloutsig_1_14z };
  assign celloutsig_0_50z = { celloutsig_0_21z[7], celloutsig_0_28z } != { celloutsig_0_18z[6:5], celloutsig_0_39z, celloutsig_0_47z, celloutsig_0_3z };
  assign celloutsig_1_0z = in_data[117:105] != in_data[134:122];
  assign celloutsig_1_2z = in_data[154:150] != { in_data[143:142], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_8z = in_data[76:65] != { celloutsig_0_3z, celloutsig_0_7z };
  assign celloutsig_0_19z = { in_data[76:71], celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_13z } != celloutsig_0_18z[10:1];
  assign celloutsig_0_30z = { _01_, _05_[2], _00_, celloutsig_0_16z } != { celloutsig_0_17z[3], celloutsig_0_12z, celloutsig_0_23z, celloutsig_0_20z, celloutsig_0_27z, celloutsig_0_1z };
  assign celloutsig_1_14z = { in_data[155:150], celloutsig_1_12z, celloutsig_1_8z } !== in_data[184:177];
  assign celloutsig_0_15z = { celloutsig_0_4z[1:0], celloutsig_0_3z } !== { celloutsig_0_7z[6:5], celloutsig_0_8z };
  assign celloutsig_1_3z = | { in_data[144:130], celloutsig_1_2z };
  assign celloutsig_0_23z = | { in_data[13:8], celloutsig_0_8z };
  assign celloutsig_1_7z = ^ { celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_45z = { celloutsig_0_7z[7:3], celloutsig_0_24z, celloutsig_0_19z, celloutsig_0_32z, celloutsig_0_8z } >> { celloutsig_0_26z[3:2], celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_41z, celloutsig_0_19z, celloutsig_0_20z };
  assign celloutsig_0_4z = { in_data[45], celloutsig_0_1z, celloutsig_0_2z } << in_data[40:38];
  assign celloutsig_0_16z = { celloutsig_0_9z, celloutsig_0_15z, celloutsig_0_5z } << { celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_10z };
  assign celloutsig_0_0z = in_data[92:74] <<< in_data[41:23];
  assign celloutsig_0_52z = { celloutsig_0_50z, celloutsig_0_47z, celloutsig_0_26z, celloutsig_0_41z, celloutsig_0_36z, celloutsig_0_35z, celloutsig_0_36z, celloutsig_0_27z } <<< { celloutsig_0_7z[10:1], celloutsig_0_51z, celloutsig_0_14z, celloutsig_0_5z };
  assign celloutsig_1_18z = { celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_8z } >>> { celloutsig_1_13z, celloutsig_1_8z, celloutsig_1_12z };
  assign celloutsig_0_21z = { celloutsig_0_0z[8:5], celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_19z, _02_, _05_[5], _03_, _01_, _05_[2], _00_, _05_[0] } >>> { celloutsig_0_3z, celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_20z, celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_20z };
  assign celloutsig_1_9z = in_data[169:166] - celloutsig_1_6z[3:0];
  assign celloutsig_0_17z = in_data[35:31] - { celloutsig_0_4z[1], celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_1z };
  assign celloutsig_1_11z = ~((celloutsig_1_0z & in_data[124]) | (celloutsig_1_9z[1] & celloutsig_1_8z));
  assign celloutsig_0_2z = ~((celloutsig_0_0z[15] & celloutsig_0_0z[1]) | (celloutsig_0_1z & celloutsig_0_0z[8]));
  assign { _05_[6], _05_[4:3], _05_[1] } = { _02_, _03_, _01_, _00_ };
  assign { out_data[130:128], out_data[96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_64z };
endmodule
