/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [4:0] _03_;
  wire [3:0] _04_;
  wire [15:0] _05_;
  wire [10:0] celloutsig_0_0z;
  wire [6:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [3:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [13:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [10:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [9:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [17:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [6:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_43z;
  wire [12:0] celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_55z;
  wire [4:0] celloutsig_0_5z;
  wire [15:0] celloutsig_0_65z;
  wire celloutsig_0_6z;
  wire [9:0] celloutsig_0_71z;
  wire celloutsig_0_74z;
  wire [2:0] celloutsig_0_78z;
  wire celloutsig_0_7z;
  wire [20:0] celloutsig_0_85z;
  wire [4:0] celloutsig_0_86z;
  wire celloutsig_0_8z;
  wire [8:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [23:0] celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [17:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
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
  assign celloutsig_0_21z = !(celloutsig_0_6z ? celloutsig_0_10z[6] : celloutsig_0_9z[7]);
  assign celloutsig_0_34z = !(celloutsig_0_7z ? celloutsig_0_2z[7] : celloutsig_0_30z);
  assign celloutsig_0_45z = ~(celloutsig_0_22z | celloutsig_0_32z);
  assign celloutsig_0_49z = ~(celloutsig_0_6z | celloutsig_0_40z);
  assign celloutsig_0_74z = ~(celloutsig_0_44z[10] | _01_);
  assign celloutsig_1_1z = ~(in_data[178] | celloutsig_1_0z);
  assign celloutsig_1_10z = ~(celloutsig_1_9z | celloutsig_1_7z);
  assign celloutsig_0_12z = ~(celloutsig_0_3z[3] | celloutsig_0_1z[0]);
  assign celloutsig_0_17z = ~(celloutsig_0_12z | celloutsig_0_3z[1]);
  assign celloutsig_0_18z = ~(celloutsig_0_0z[8] | celloutsig_0_14z);
  assign celloutsig_0_22z = ~(celloutsig_0_11z | celloutsig_0_12z);
  assign celloutsig_0_23z = ~(celloutsig_0_7z | celloutsig_0_19z);
  assign celloutsig_0_24z = ~(celloutsig_0_17z | celloutsig_0_23z);
  assign celloutsig_0_51z = ~celloutsig_0_14z;
  assign celloutsig_0_7z = ~in_data[17];
  assign celloutsig_0_8z = ~celloutsig_0_4z;
  assign celloutsig_1_0z = ~in_data[158];
  assign celloutsig_1_15z = ~celloutsig_1_4z;
  assign celloutsig_0_43z = celloutsig_0_7z | celloutsig_0_31z[13];
  assign celloutsig_0_4z = celloutsig_0_0z[0] | celloutsig_0_0z[7];
  assign celloutsig_0_29z = celloutsig_0_7z | celloutsig_0_9z[1];
  assign celloutsig_0_32z = celloutsig_0_27z | celloutsig_0_26z;
  assign celloutsig_0_36z = celloutsig_0_4z ^ celloutsig_0_1z[1];
  assign celloutsig_0_38z = celloutsig_0_7z ^ celloutsig_0_16z[2];
  assign celloutsig_1_11z = celloutsig_1_2z ^ celloutsig_1_3z[2];
  reg [4:0] _31_;
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _31_ <= 5'h00;
    else _31_ <= { in_data[71:70], celloutsig_0_19z, celloutsig_0_40z, celloutsig_0_14z };
  assign { _03_[4:2], _00_, _03_[0] } = _31_;
  reg [3:0] _32_;
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[64])
    if (!clkin_data[64]) _32_ <= 4'h0;
    else _32_ <= { celloutsig_0_35z, celloutsig_0_11z, celloutsig_0_45z, celloutsig_0_51z };
  assign { _04_[3:2], _02_, _04_[0] } = _32_;
  reg [15:0] _33_;
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _33_ <= 16'h0000;
    else _33_ <= { celloutsig_0_1z[5:1], celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_6z };
  assign { _05_[15:4], _01_, _05_[2:0] } = _33_;
  assign celloutsig_0_35z = { celloutsig_0_28z[9:6], celloutsig_0_23z } && celloutsig_0_25z[11:7];
  assign celloutsig_0_52z = { celloutsig_0_16z[3:1], celloutsig_0_51z, celloutsig_0_17z, celloutsig_0_45z, celloutsig_0_17z, celloutsig_0_45z } && { celloutsig_0_44z[7:1], celloutsig_0_34z };
  assign celloutsig_0_55z = { celloutsig_0_0z[10:8], celloutsig_0_49z, celloutsig_0_14z, celloutsig_0_51z, celloutsig_0_26z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_38z, celloutsig_0_27z } && celloutsig_0_0z;
  assign celloutsig_1_9z = { celloutsig_1_3z[7:2], celloutsig_1_1z, celloutsig_1_1z } && { celloutsig_1_3z[12:8], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_26z = ! { _05_[4], _01_, _05_[2] };
  assign celloutsig_0_6z = { celloutsig_0_2z[4:2], celloutsig_0_0z, celloutsig_0_2z } < { celloutsig_0_0z[9:1], celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_14z = { in_data[59:55], celloutsig_0_6z } < celloutsig_0_0z[8:3];
  assign celloutsig_0_20z = celloutsig_0_9z[5:2] < celloutsig_0_1z[6:3];
  assign celloutsig_0_5z = - celloutsig_0_2z[8:4];
  assign celloutsig_0_85z = - { celloutsig_0_65z[15:6], celloutsig_0_52z, celloutsig_0_71z };
  assign celloutsig_1_3z = - { in_data[165:150], celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_31z = - { celloutsig_0_3z[4], _05_[15:4], _01_, _05_[2:0], celloutsig_0_20z };
  assign celloutsig_0_39z = { celloutsig_0_0z[6:3], celloutsig_0_7z, celloutsig_0_4z } !== celloutsig_0_2z[6:1];
  assign celloutsig_1_2z = { in_data[157:148], celloutsig_1_1z } !== in_data[187:177];
  assign celloutsig_1_4z = in_data[151:142] !== in_data[175:166];
  assign celloutsig_1_6z = { celloutsig_1_3z[17], celloutsig_1_4z, celloutsig_1_4z } !== in_data[106:104];
  assign celloutsig_1_8z = in_data[128:112] !== in_data[156:140];
  assign celloutsig_1_19z = { in_data[180:179], celloutsig_1_0z } !== { celloutsig_1_13z[7:6], celloutsig_1_15z };
  assign celloutsig_0_27z = { celloutsig_0_1z[4:3], celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_21z, celloutsig_0_19z } !== { celloutsig_0_24z, celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_8z };
  assign celloutsig_0_37z = | { _05_[6:5], celloutsig_0_32z, celloutsig_0_18z, celloutsig_0_32z };
  assign celloutsig_0_11z = | celloutsig_0_10z[5:3];
  assign celloutsig_0_19z = | celloutsig_0_3z[3:0];
  assign celloutsig_0_40z = | { celloutsig_0_37z, celloutsig_0_35z, celloutsig_0_29z, celloutsig_0_11z, celloutsig_0_2z[8:2] };
  assign celloutsig_1_7z = | { celloutsig_1_6z, celloutsig_1_3z[10] };
  assign celloutsig_1_12z = | { celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_3z[10], celloutsig_1_1z };
  assign celloutsig_0_15z = | celloutsig_0_2z[8:2];
  assign celloutsig_0_30z = | { celloutsig_0_16z, _05_[2:1] };
  assign celloutsig_0_44z = { _03_[0], celloutsig_0_39z, _03_[4:2], _00_, _03_[0], celloutsig_0_4z, celloutsig_0_35z, celloutsig_0_38z, celloutsig_0_32z, celloutsig_0_20z, celloutsig_0_43z } >> { celloutsig_0_31z[15:4], celloutsig_0_32z };
  assign celloutsig_0_78z = { celloutsig_0_0z[2:1], celloutsig_0_7z } >> celloutsig_0_71z[8:6];
  assign celloutsig_0_1z = celloutsig_0_0z[10:3] >> in_data[46:39];
  assign celloutsig_0_16z = celloutsig_0_3z[4:1] >> { celloutsig_0_2z[3:2], celloutsig_0_12z, celloutsig_0_6z };
  assign celloutsig_0_2z = in_data[15:6] >> { in_data[6:5], celloutsig_0_1z };
  assign celloutsig_0_3z = celloutsig_0_2z[6:0] >> celloutsig_0_2z[6:0];
  assign celloutsig_0_65z = { celloutsig_0_28z[6:0], celloutsig_0_43z, celloutsig_0_32z, celloutsig_0_27z, _04_[3:2], _02_, _04_[0], celloutsig_0_14z, celloutsig_0_4z } >> { celloutsig_0_31z[15:1], celloutsig_0_7z };
  assign celloutsig_0_9z = { celloutsig_0_1z[2:1], celloutsig_0_3z } >> { celloutsig_0_1z[6:0], celloutsig_0_7z, celloutsig_0_4z };
  assign celloutsig_0_25z = { _05_[13:7], celloutsig_0_3z } >> { celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_14z };
  assign celloutsig_0_71z = { celloutsig_0_65z[7:2], celloutsig_0_51z, celloutsig_0_36z, celloutsig_0_8z, celloutsig_0_37z } <<< { in_data[64:60], celloutsig_0_55z, celloutsig_0_16z };
  assign celloutsig_0_10z = celloutsig_0_1z[6:0] <<< celloutsig_0_2z[8:2];
  assign celloutsig_0_86z = { celloutsig_0_34z, _04_[3:2], _02_, _04_[0] } ~^ { celloutsig_0_0z[0], celloutsig_0_74z, celloutsig_0_78z };
  assign celloutsig_1_5z = { celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_0z } ~^ in_data[119:117];
  assign celloutsig_0_0z = in_data[85:75] ^ in_data[42:32];
  assign celloutsig_1_13z = { in_data[113:102], celloutsig_1_8z, celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_2z } ^ { in_data[162:149], celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_11z };
  assign celloutsig_0_28z = { celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_26z } ^ { celloutsig_0_4z, celloutsig_0_2z };
  assign _03_[1] = _00_;
  assign _04_[1] = _02_;
  assign _05_[3] = _01_;
  assign { out_data[128], out_data[96], out_data[52:32], out_data[4:0] } = { 1'h1, celloutsig_1_19z, celloutsig_0_85z, celloutsig_0_86z };
endmodule
