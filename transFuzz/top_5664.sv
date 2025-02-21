/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  reg [12:0] _04_;
  wire [3:0] _05_;
  wire [8:0] _06_;
  reg [17:0] _07_;
  wire celloutsig_0_0z;
  reg [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [12:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [19:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [12:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [16:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [3:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_36z;
  wire [3:0] celloutsig_0_37z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [7:0] celloutsig_0_43z;
  wire celloutsig_0_45z;
  wire [14:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [4:0] celloutsig_0_51z;
  wire [3:0] celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire [11:0] celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [6:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  reg [2:0] celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [34:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [14:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [11:0] celloutsig_1_8z;
  wire [8:0] celloutsig_1_9z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_11z = celloutsig_0_2z ? celloutsig_0_9z : celloutsig_0_10z[1];
  assign celloutsig_0_17z = celloutsig_0_0z ? celloutsig_0_16z[18] : celloutsig_0_12z;
  assign celloutsig_0_19z = celloutsig_0_14z[9] ? celloutsig_0_9z : celloutsig_0_10z[2];
  assign celloutsig_0_3z = ~celloutsig_0_0z;
  assign celloutsig_0_57z = ~celloutsig_0_30z;
  assign celloutsig_0_26z = ~celloutsig_0_11z;
  assign celloutsig_0_28z = ~((celloutsig_0_21z | celloutsig_0_16z[4]) & celloutsig_0_27z);
  assign celloutsig_0_36z = ~((celloutsig_0_16z[10] | celloutsig_0_30z) & (celloutsig_0_19z | celloutsig_0_2z));
  assign celloutsig_0_4z = ~((_00_ | _01_) & (celloutsig_0_2z | in_data[20]));
  assign celloutsig_0_42z = ~((celloutsig_0_0z | celloutsig_0_34z) & (celloutsig_0_25z | celloutsig_0_12z));
  assign celloutsig_1_0z = ~((in_data[105] | in_data[115]) & (in_data[134] | in_data[187]));
  assign celloutsig_0_7z = ~((_02_ | celloutsig_0_6z) & (_00_ | _00_));
  assign celloutsig_1_19z = ~((celloutsig_1_6z[8] | celloutsig_1_5z) & (in_data[106] | celloutsig_1_10z));
  assign celloutsig_0_9z = ~((celloutsig_0_7z | celloutsig_0_2z) & (_00_ | celloutsig_0_0z));
  assign celloutsig_0_15z = ~((_00_ | celloutsig_0_7z) & (celloutsig_0_10z[0] | celloutsig_0_6z));
  assign celloutsig_0_0z = ~(in_data[17] ^ in_data[76]);
  assign celloutsig_0_39z = ~(celloutsig_0_18z[5] ^ celloutsig_0_10z[2]);
  assign celloutsig_0_40z = ~(celloutsig_0_9z ^ celloutsig_0_27z);
  assign celloutsig_0_47z = ~(celloutsig_0_13z ^ celloutsig_0_36z);
  assign celloutsig_0_50z = ~(celloutsig_0_49z ^ celloutsig_0_19z);
  assign celloutsig_0_59z = ~(_03_ ^ celloutsig_0_58z[9]);
  assign celloutsig_1_1z = ~(in_data[172] ^ in_data[117]);
  assign celloutsig_0_2z = ~(_01_ ^ in_data[45]);
  always_ff @(negedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _04_ <= 13'h0000;
    else _04_ <= celloutsig_0_18z;
  reg [3:0] _32_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _32_ <= 4'h0;
    else _32_ <= { in_data[30:28], celloutsig_0_0z };
  assign { _00_, _02_, _05_[1], _01_ } = _32_;
  reg [8:0] _33_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _33_ <= 9'h000;
    else _33_ <= celloutsig_0_18z[9:1];
  assign { _06_[8:2], _03_, _06_[0] } = _33_;
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _07_ <= 18'h00000;
    else _07_ <= { celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_20z };
  assign celloutsig_0_31z = { _06_[7:6], celloutsig_0_6z, celloutsig_0_19z } & { celloutsig_0_8z[3], celloutsig_0_27z, celloutsig_0_17z, celloutsig_0_20z };
  assign celloutsig_1_6z = { celloutsig_1_3z[31:20], celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_2z } & { celloutsig_1_3z[23:11], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_29z = _07_[17:1] / { 1'h1, in_data[81:73], celloutsig_0_17z, celloutsig_0_13z, celloutsig_0_28z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_20z, celloutsig_0_19z };
  assign celloutsig_0_52z = celloutsig_0_31z / { 1'h1, celloutsig_0_16z[7:6], celloutsig_0_32z };
  assign celloutsig_0_33z = in_data[20:13] == _07_[11:4];
  assign celloutsig_0_34z = { in_data[19], celloutsig_0_23z, _07_, celloutsig_0_28z, celloutsig_0_5z } == { celloutsig_0_16z[18:7], _06_[8:2], _03_, _06_[0], celloutsig_0_0z };
  assign celloutsig_0_55z = { celloutsig_0_16z[19:16], celloutsig_0_45z } == { celloutsig_0_5z, celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_50z, celloutsig_0_28z };
  assign celloutsig_0_21z = { celloutsig_0_16z[19:5], celloutsig_0_18z } == { celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_3z };
  assign celloutsig_1_2z = { in_data[165:137], celloutsig_1_1z, celloutsig_1_1z } >= in_data[177:147];
  assign celloutsig_0_12z = { celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_6z } >= { celloutsig_0_8z[6:5], celloutsig_0_10z };
  assign celloutsig_0_23z = { celloutsig_0_2z, celloutsig_0_18z, celloutsig_0_0z, _00_, _02_, _05_[1], _01_, _00_, _02_, _05_[1], _01_, celloutsig_0_3z, celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_6z } >= { in_data[42:19], celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_12z };
  assign celloutsig_0_45z = { celloutsig_0_32z, celloutsig_0_31z } || { celloutsig_0_29z[9:6], celloutsig_0_36z };
  assign celloutsig_0_5z = { in_data[46:44], celloutsig_0_2z } || { _00_, _02_, _05_[1], _01_ };
  assign celloutsig_0_62z = { celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_28z, celloutsig_0_47z, celloutsig_0_6z } || { celloutsig_0_57z, celloutsig_0_10z, celloutsig_0_61z };
  assign celloutsig_0_49z = { _04_[12:3], celloutsig_0_46z, celloutsig_0_26z } < { celloutsig_0_18z[10:1], celloutsig_0_19z, celloutsig_0_46z };
  assign celloutsig_0_61z = { in_data[75:58], celloutsig_0_55z, celloutsig_0_47z } < { celloutsig_0_29z[9:7], celloutsig_0_19z, celloutsig_0_59z, _06_[8:2], _03_, _06_[0], celloutsig_0_31z, celloutsig_0_56z, celloutsig_0_54z };
  assign celloutsig_1_10z = { in_data[142:133], celloutsig_1_8z, celloutsig_1_1z } < { celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_7z };
  assign celloutsig_0_20z = celloutsig_0_16z[19:2] < { celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_0_58z = { celloutsig_0_19z, celloutsig_0_43z, celloutsig_0_47z, celloutsig_0_26z, celloutsig_0_40z } % { 1'h1, celloutsig_0_15z, celloutsig_0_20z, celloutsig_0_52z, _00_, _02_, _05_[1], _01_, celloutsig_0_2z };
  assign celloutsig_0_16z = { in_data[29:22], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_11z } % { 1'h1, _05_[1], _01_, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_18z = { celloutsig_0_8z[5:3], celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_9z } % { 1'h1, celloutsig_0_8z[4:1], celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_15z, in_data[0] };
  assign celloutsig_0_54z = { _07_[9:8], celloutsig_0_4z } != { celloutsig_0_51z[1:0], celloutsig_0_19z };
  assign celloutsig_0_13z = { celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_7z, _00_, _02_, _05_[1], _01_, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_5z } != { in_data[34:26], celloutsig_0_7z, _00_, _02_, _05_[1], _01_, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_11z };
  assign celloutsig_0_30z = celloutsig_0_29z[15:0] !== { celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_19z, _06_[8:2], _03_, _06_[0], celloutsig_0_10z };
  assign celloutsig_0_56z = { celloutsig_0_8z[0], celloutsig_0_2z, celloutsig_0_45z, celloutsig_0_55z, celloutsig_0_21z } !== { celloutsig_0_8z[6:4], celloutsig_0_54z, celloutsig_0_30z };
  assign celloutsig_1_4z = { in_data[129:128], celloutsig_1_2z } !== in_data[126:124];
  assign celloutsig_0_37z = { celloutsig_0_17z, celloutsig_0_33z, celloutsig_0_12z, celloutsig_0_6z } | { celloutsig_0_29z[10:9], celloutsig_0_36z, celloutsig_0_20z };
  assign celloutsig_0_43z = { celloutsig_0_15z, celloutsig_0_42z, celloutsig_0_28z, celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_32z, celloutsig_0_34z, celloutsig_0_0z } | { celloutsig_0_16z[7:1], celloutsig_0_3z };
  assign celloutsig_0_46z = { celloutsig_0_32z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_31z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_9z } | { celloutsig_0_16z[8:2], celloutsig_0_8z, celloutsig_0_42z };
  assign celloutsig_0_51z = { celloutsig_0_18z[11], celloutsig_0_39z, celloutsig_0_19z, celloutsig_0_50z, celloutsig_0_41z } | { celloutsig_0_37z[3:1], celloutsig_0_28z, celloutsig_0_39z };
  assign celloutsig_0_8z = { celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z, _00_, _02_, _05_[1], _01_ } | in_data[78:72];
  assign celloutsig_0_14z = { in_data[5:0], celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_4z } | { in_data[20:18], celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_7z };
  assign celloutsig_0_41z = | { celloutsig_0_8z[2:1], celloutsig_0_34z };
  assign celloutsig_0_63z = | _07_[13:3];
  assign celloutsig_0_6z = | { in_data[10:6], celloutsig_0_4z };
  assign celloutsig_1_7z = | { celloutsig_1_6z[14:12], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_1_18z = | { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_13z };
  assign celloutsig_0_27z = | { celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_7z };
  assign celloutsig_0_32z = | { _06_[6:5], celloutsig_0_11z };
  assign celloutsig_1_5z = | { celloutsig_1_3z[16:12], celloutsig_1_2z };
  assign celloutsig_0_25z = | { celloutsig_0_20z, celloutsig_0_19z, celloutsig_0_0z };
  assign celloutsig_1_3z = { in_data[134:105], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z } << { in_data[146:119], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_8z = { celloutsig_1_3z[24:14], celloutsig_1_2z } << celloutsig_1_3z[20:9];
  assign celloutsig_1_9z = { in_data[177:173], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z } << { in_data[158:156], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_2z };
  always_latch
    if (!clkin_data[96]) celloutsig_1_13z = 3'h0;
    else if (!clkin_data[160]) celloutsig_1_13z = celloutsig_1_9z[3:1];
  always_latch
    if (!clkin_data[32]) celloutsig_0_10z = 3'h0;
    else if (clkin_data[128]) celloutsig_0_10z = in_data[52:50];
  assign { _05_[3:2], _05_[0] } = { _00_, _02_, _01_ };
  assign _06_[1] = _03_;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_62z, celloutsig_0_63z };
endmodule
