/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  reg [10:0] _04_;
  wire [3:0] _05_;
  wire [9:0] _06_;
  reg [14:0] _07_;
  wire [34:0] _08_;
  wire celloutsig_0_0z;
  wire [6:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [12:0] celloutsig_0_12z;
  wire [7:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [2:0] celloutsig_0_15z;
  wire celloutsig_0_17z;
  wire [3:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [7:0] celloutsig_0_22z;
  wire [33:0] celloutsig_0_23z;
  wire [25:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [15:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [2:0] celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [11:0] celloutsig_0_40z;
  wire [3:0] celloutsig_0_45z;
  wire celloutsig_0_47z;
  wire [11:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [7:0] celloutsig_0_51z;
  wire [3:0] celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_63z;
  wire [5:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire celloutsig_0_7z;
  wire [22:0] celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire [9:0] celloutsig_1_10z;
  wire [9:0] celloutsig_1_11z;
  wire [6:0] celloutsig_1_13z;
  wire [17:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [14:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [11:0] celloutsig_1_5z;
  wire [4:0] celloutsig_1_6z;
  wire [5:0] celloutsig_1_8z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_4z = !(in_data[179] ? in_data[131] : in_data[167]);
  assign celloutsig_0_36z = ~celloutsig_0_19z;
  assign celloutsig_0_5z = ~in_data[90];
  assign celloutsig_0_34z = ~((in_data[30] | celloutsig_0_21z) & (celloutsig_0_28z | celloutsig_0_32z[2]));
  assign celloutsig_0_35z = ~((celloutsig_0_4z[10] | celloutsig_0_10z[1]) & (celloutsig_0_30z | celloutsig_0_14z));
  assign celloutsig_0_57z = ~((celloutsig_0_45z[2] | celloutsig_0_8z[15]) & (celloutsig_0_51z[1] | celloutsig_0_0z));
  assign celloutsig_0_63z = ~((celloutsig_0_39z | celloutsig_0_32z[0]) & (celloutsig_0_38z | celloutsig_0_58z));
  assign celloutsig_0_70z = ~((celloutsig_0_63z | celloutsig_0_59z) & (celloutsig_0_8z[0] | _00_));
  assign celloutsig_1_15z = celloutsig_1_0z | ~(celloutsig_1_14z[13]);
  assign celloutsig_0_14z = _01_ | ~(celloutsig_0_0z);
  assign celloutsig_0_0z = in_data[2] | in_data[84];
  assign celloutsig_0_3z = celloutsig_0_2z | celloutsig_0_0z;
  assign celloutsig_0_60z = celloutsig_0_25z[7] | celloutsig_0_56z[2];
  assign celloutsig_0_7z = celloutsig_0_6z | celloutsig_0_5z;
  assign celloutsig_1_19z = _03_ ^ celloutsig_1_15z;
  assign celloutsig_0_21z = celloutsig_0_18z[2] ^ celloutsig_0_18z[0];
  assign celloutsig_0_2z = in_data[62] ^ in_data[38];
  assign celloutsig_1_2z = ~(in_data[181] ^ celloutsig_1_0z);
  assign celloutsig_0_19z = ~(celloutsig_0_17z ^ celloutsig_0_10z[5]);
  assign celloutsig_0_28z = ~(celloutsig_0_0z ^ celloutsig_0_26z);
  always_ff @(negedge clkin_data[64], posedge clkin_data[128])
    if (clkin_data[128]) _04_ <= 11'h000;
    else _04_ <= { celloutsig_1_5z[6:1], celloutsig_1_6z };
  reg [9:0] _30_;
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[96])
    if (!clkin_data[96]) _30_ <= 10'h000;
    else _30_ <= { celloutsig_0_8z[15], celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_5z };
  assign { _06_[9:6], _02_, _06_[4], _01_, _06_[2:0] } = _30_;
  reg [3:0] _31_;
  always_ff @(posedge clkin_data[32], posedge clkin_data[160])
    if (clkin_data[160]) _31_ <= 4'h0;
    else _31_ <= celloutsig_1_6z[4:1];
  assign { _05_[3:1], _03_ } = _31_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[96])
    if (clkin_data[96]) _07_ <= 15'h0000;
    else _07_ <= { celloutsig_0_4z[8:2], celloutsig_0_13z };
  reg [34:0] _33_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _33_ <= 35'h000000000;
    else _33_ <= { celloutsig_0_13z[2], celloutsig_0_22z, _06_[9:6], _02_, _06_[4], _01_, _06_[2:0], celloutsig_0_21z, celloutsig_0_20z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_2z };
  assign { _08_[34:13], _00_, _08_[11:0] } = _33_;
  assign celloutsig_0_47z = { _06_[4], _01_, _06_[2] } == { _06_[7:6], _02_ };
  assign celloutsig_0_17z = { celloutsig_0_15z[1], celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_11z } == celloutsig_0_4z[5:0];
  assign celloutsig_0_20z = celloutsig_0_12z[12:7] == { celloutsig_0_13z[7:3], celloutsig_0_0z };
  assign celloutsig_0_26z = { _06_[8:6], _02_, _06_[4], _01_, _06_[2:0] } == celloutsig_0_23z[33:25];
  assign celloutsig_0_50z = ! { _08_[24:14], celloutsig_0_38z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_1_3z = ! in_data[148:146];
  assign celloutsig_0_58z = celloutsig_0_50z & ~(celloutsig_0_45z[1]);
  assign celloutsig_0_59z = celloutsig_0_25z[7] & ~(celloutsig_0_19z);
  assign celloutsig_0_45z = { _07_[12], celloutsig_0_6z, celloutsig_0_34z, celloutsig_0_38z } * { celloutsig_0_27z[8], celloutsig_0_6z, celloutsig_0_30z, celloutsig_0_35z };
  assign celloutsig_0_37z = celloutsig_0_8z[17:12] != { celloutsig_0_22z[4:1], celloutsig_0_14z, celloutsig_0_11z };
  assign celloutsig_0_6z = { in_data[82:79], celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_3z } != { celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_1z = in_data[65:63] != { in_data[11:10], celloutsig_0_0z };
  assign celloutsig_0_51z = { celloutsig_0_10z[5:0], celloutsig_0_38z, celloutsig_0_21z } | celloutsig_0_12z[12:5];
  assign celloutsig_0_8z = { celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_2z } | { in_data[85:81], celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_1_18z = { celloutsig_1_11z[5:0], celloutsig_1_4z, celloutsig_1_13z, celloutsig_1_1z } | { celloutsig_1_14z[17:7], _05_[3:1], _03_ };
  assign celloutsig_0_15z = { celloutsig_0_10z[1:0], celloutsig_0_2z } | { in_data[20], celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_0_38z = | { celloutsig_0_32z, celloutsig_0_7z };
  assign celloutsig_0_39z = | celloutsig_0_23z[31:9];
  assign celloutsig_1_1z = | in_data[127:122];
  assign celloutsig_0_11z = | { celloutsig_0_4z[11:8], celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_56z = { celloutsig_0_51z[1], celloutsig_0_47z, celloutsig_0_50z, celloutsig_0_21z } >> celloutsig_0_40z[8:5];
  assign celloutsig_1_5z = { in_data[124:114], celloutsig_1_1z } >> { in_data[189:179], celloutsig_1_0z };
  assign celloutsig_1_13z = in_data[148:142] >> celloutsig_1_11z[6:0];
  assign celloutsig_0_12z = { celloutsig_0_4z[10:0], celloutsig_0_1z, celloutsig_0_2z } >> { celloutsig_0_10z[6:5], celloutsig_0_11z, _06_[9:6], _02_, _06_[4], _01_, _06_[2:0] };
  assign celloutsig_0_25z = { _08_[32:13], _00_, _08_[11], celloutsig_0_14z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z } >> { _08_[33:30], celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_13z };
  assign celloutsig_0_69z = { celloutsig_0_4z[10], celloutsig_0_63z, celloutsig_0_60z, celloutsig_0_37z, celloutsig_0_57z, celloutsig_0_39z } << { celloutsig_0_25z[17:13], celloutsig_0_36z };
  assign celloutsig_1_8z = _04_[9:4] << { celloutsig_1_6z[2:0], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_10z = { celloutsig_1_8z[4:0], celloutsig_1_6z } << { in_data[151:149], celloutsig_1_8z, celloutsig_1_2z };
  assign celloutsig_1_14z = { celloutsig_1_11z[6:2], celloutsig_1_13z, celloutsig_1_6z, celloutsig_1_3z } << { celloutsig_1_8z, celloutsig_1_5z };
  assign celloutsig_0_32z = celloutsig_0_10z[6:4] >> celloutsig_0_12z[3:1];
  assign celloutsig_0_10z = { celloutsig_0_8z[7:4], celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_2z } >> { celloutsig_0_4z[10:7], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_27z = { _07_[13:0], celloutsig_0_14z, celloutsig_0_0z } >> celloutsig_0_8z[18:3];
  assign celloutsig_0_40z = { celloutsig_0_10z[6:1], celloutsig_0_28z, celloutsig_0_28z, celloutsig_0_6z, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_36z } <<< celloutsig_0_12z[12:1];
  assign celloutsig_0_18z = { celloutsig_0_8z[22:20], celloutsig_0_11z } <<< { celloutsig_0_15z[1:0], celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_1_6z = { celloutsig_1_5z[10:8], celloutsig_1_0z, celloutsig_1_1z } - in_data[141:137];
  assign celloutsig_1_11z = { celloutsig_1_10z[5:1], celloutsig_1_6z } - in_data[162:153];
  assign celloutsig_0_22z = { celloutsig_0_8z[20:15], celloutsig_0_11z, celloutsig_0_21z } - { celloutsig_0_13z[6:0], celloutsig_0_21z };
  assign celloutsig_0_23z = { celloutsig_0_8z[18:2], celloutsig_0_12z, celloutsig_0_18z } - { celloutsig_0_12z[6:2], celloutsig_0_18z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_4z = { in_data[13:5], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_3z } ^ in_data[40:29];
  assign celloutsig_0_13z = in_data[50:43] ^ { _06_[7:6], _02_, _06_[4], _01_, _06_[2:0] };
  assign celloutsig_1_0z = ~((in_data[125] & in_data[151]) | in_data[128]);
  assign celloutsig_0_30z = ~((celloutsig_0_6z & celloutsig_0_13z[6]) | celloutsig_0_15z[0]);
  assign _05_[0] = _03_;
  assign { _06_[5], _06_[3] } = { _02_, _01_ };
  assign _08_[12] = _00_;
  assign { out_data[142:128], out_data[96], out_data[37:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule
