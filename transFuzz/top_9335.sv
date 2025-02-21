/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire [27:0] _05_;
  wire [2:0] _06_;
  reg [4:0] _07_;
  wire [10:0] _08_;
  wire [10:0] _09_;
  wire [11:0] _10_;
  reg [13:0] _11_;
  wire [34:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [2:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [6:0] celloutsig_0_1z;
  wire [3:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [3:0] celloutsig_0_22z;
  wire [18:0] celloutsig_0_23z;
  wire [18:0] celloutsig_0_24z;
  wire [11:0] celloutsig_0_25z;
  wire [2:0] celloutsig_0_27z;
  wire [9:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [11:0] celloutsig_0_31z;
  wire [11:0] celloutsig_0_34z;
  wire [5:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [3:0] celloutsig_0_58z;
  wire [4:0] celloutsig_0_68z;
  wire celloutsig_0_69z;
  wire [33:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [10:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire [4:0] celloutsig_1_10z;
  wire [7:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [11:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [14:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [11:0] celloutsig_1_6z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_38z = ~(celloutsig_0_23z[17] | celloutsig_0_11z[7]);
  assign celloutsig_1_5z = ~(celloutsig_1_1z[0] | celloutsig_1_4z);
  assign celloutsig_1_19z = ~(celloutsig_1_0z[4] | in_data[109]);
  assign celloutsig_0_7z = ~((in_data[18] | _02_) & celloutsig_0_1z[0]);
  assign celloutsig_0_39z = ~((celloutsig_0_38z | celloutsig_0_37z[2]) & (celloutsig_0_6z[8] | celloutsig_0_29z));
  assign celloutsig_0_9z = ~(_03_ ^ _04_);
  assign celloutsig_1_0z = in_data[146:141] + in_data[183:178];
  assign celloutsig_0_28z = { celloutsig_0_15z[3], celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_13z } + celloutsig_0_6z[16:7];
  reg [11:0] _20_;
  always_ff @(negedge celloutsig_1_18z[0], posedge clkin_data[32])
    if (clkin_data[32]) _20_ <= 12'h000;
    else _20_ <= in_data[23:12];
  assign { _08_[10:7], _04_, _08_[5:2], _02_, _08_[0], _10_[0] } = _20_;
  reg [27:0] _21_;
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _21_ <= 28'h0000000;
    else _21_ <= { in_data[46:20], celloutsig_0_2z };
  assign { _05_[27:8], _03_, _05_[6:0] } = _21_;
  reg [2:0] _22_;
  always_ff @(negedge celloutsig_1_18z[0], posedge clkin_data[32])
    if (clkin_data[32]) _22_ <= 3'h0;
    else _22_ <= { in_data[64:63], celloutsig_0_2z };
  assign { _06_[2], _00_, _06_[0] } = _22_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _07_ <= 5'h00;
    else _07_ <= in_data[168:164];
  reg [10:0] _24_;
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _24_ <= 11'h000;
    else _24_ <= { _08_[10:7], _04_, _08_[5:2], _02_, _08_[0] };
  assign { _09_[10:8], _01_, _09_[6:0] } = _24_;
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _11_ <= 14'h0000;
    else _11_ <= { celloutsig_0_22z[3:2], celloutsig_0_12z, celloutsig_0_8z };
  assign celloutsig_0_69z = celloutsig_0_24z[7:4] === celloutsig_0_58z;
  assign celloutsig_1_2z = in_data[110:108] === celloutsig_1_1z[6:4];
  assign celloutsig_1_9z = { celloutsig_1_6z[11:8], celloutsig_1_5z } === celloutsig_1_3z[8:4];
  assign celloutsig_0_19z = { _00_, _06_[0], celloutsig_0_12z, celloutsig_0_17z, _06_[2], _00_, _06_[0], celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_1z, _09_[10:8], _01_, _09_[6:0], celloutsig_0_7z } === { _08_[9:7], _04_, _08_[5:2], _02_, _08_[0], _10_[0], celloutsig_0_17z, _09_[10:8], _01_, _09_[6:0], celloutsig_0_15z };
  assign celloutsig_0_13z = { _08_[10:8], celloutsig_0_9z, _08_[10:7], _04_, _08_[5:2], _02_, _08_[0], _10_[0] } >= celloutsig_0_6z[21:6];
  assign celloutsig_0_21z = { _05_[27:25], celloutsig_0_20z } >= { celloutsig_0_6z[31], celloutsig_0_12z, celloutsig_0_15z };
  assign celloutsig_0_17z = ! in_data[45:42];
  assign celloutsig_0_3z = { _08_[8:7], _04_, _08_[5:2], _02_ } < { in_data[51], celloutsig_0_1z };
  assign celloutsig_0_12z = { in_data[42:6], celloutsig_0_2z, celloutsig_0_7z } < { in_data[67:58], celloutsig_0_7z, _08_[10:7], _04_, _08_[5:2], _02_, _08_[0], _10_[0], celloutsig_0_3z, _09_[10:8], _01_, _09_[6:0], _06_[2], _00_, _06_[0], celloutsig_0_3z };
  assign celloutsig_0_24z = { celloutsig_0_6z[7:0], _06_[2], _00_, _06_[0], celloutsig_0_20z, celloutsig_0_22z } % { 1'h1, in_data[26:23], celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_14z, celloutsig_0_21z };
  assign celloutsig_0_68z = { celloutsig_0_28z[5:2], celloutsig_0_3z } % { 1'h1, celloutsig_0_34z[3:0] };
  assign celloutsig_0_15z = celloutsig_0_8z[5:1] % { 1'h1, celloutsig_0_11z[27:24] };
  assign celloutsig_0_20z = { celloutsig_0_1z[2:0], celloutsig_0_2z } * celloutsig_0_8z[8:5];
  assign celloutsig_0_34z = _09_[6] ? { celloutsig_0_31z[8:0], _06_[2], _00_, _06_[0] } : { celloutsig_0_23z[12:11], celloutsig_0_3z, celloutsig_0_27z, celloutsig_0_15z, celloutsig_0_29z };
  assign celloutsig_0_58z = celloutsig_0_29z ? { celloutsig_0_37z[2:1], 1'h1, celloutsig_0_39z } : { celloutsig_0_11z[28], _06_[2], _00_, _06_[0] };
  assign celloutsig_1_6z = celloutsig_1_4z ? celloutsig_1_1z : { celloutsig_1_3z[6:2], celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_37z = - _11_[13:8];
  assign celloutsig_1_10z = ~ celloutsig_1_3z[9:5];
  assign celloutsig_0_18z = ~ _09_[6:4];
  assign celloutsig_0_11z = { celloutsig_0_6z[22:6], _09_[10:8], _01_, _09_[6:0], celloutsig_0_1z } | in_data[82:48];
  assign celloutsig_1_4z = ^ { in_data[173:160], celloutsig_1_0z };
  assign celloutsig_0_16z = ^ { celloutsig_0_1z[6:2], celloutsig_0_14z, _06_[2], _00_, _06_[0] };
  assign celloutsig_0_2z = ^ in_data[60:36];
  assign celloutsig_1_1z = { celloutsig_1_0z, celloutsig_1_0z } <<< in_data[155:144];
  assign celloutsig_0_6z = { in_data[33:12], celloutsig_0_1z, celloutsig_0_2z, _06_[2], _00_, _06_[0], celloutsig_0_3z } <<< { in_data[33:14], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_23z = { _05_[10:9], celloutsig_0_1z, celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z } <<< { celloutsig_0_6z[24:8], celloutsig_0_9z, celloutsig_0_17z };
  assign celloutsig_0_25z = in_data[94:83] <<< { celloutsig_0_1z[3], celloutsig_0_8z };
  assign celloutsig_0_27z = { _06_[0], celloutsig_0_16z, celloutsig_0_16z } <<< { celloutsig_0_20z[2], celloutsig_0_17z, celloutsig_0_16z };
  assign celloutsig_0_1z = { _04_, _08_[5:2], _02_, _08_[0] } >>> { _08_[10:7], _04_, _08_[5:4] };
  assign celloutsig_0_22z = { celloutsig_0_1z[4], _06_[2], _00_, _06_[0] } >>> { celloutsig_0_2z, celloutsig_0_18z };
  assign celloutsig_0_31z = { celloutsig_0_24z[1], celloutsig_0_17z, celloutsig_0_3z, celloutsig_0_20z, celloutsig_0_15z } ^ { celloutsig_0_24z[11:6], celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_22z };
  assign celloutsig_1_3z = { in_data[150:137], celloutsig_1_2z } ^ { in_data[144:136], celloutsig_1_0z };
  assign celloutsig_1_18z = { _07_[3:2], celloutsig_1_10z, celloutsig_1_9z } ^ in_data[114:107];
  assign celloutsig_0_8z = celloutsig_0_6z[27:17] ^ { celloutsig_0_6z[31:24], celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_2z };
  assign celloutsig_0_14z = ~((celloutsig_0_2z & celloutsig_0_7z) | celloutsig_0_1z[2]);
  assign celloutsig_0_29z = ~((_09_[10] & celloutsig_0_28z[5]) | celloutsig_0_25z[8]);
  assign _05_[7] = _03_;
  assign _06_[1] = _00_;
  assign { _08_[6], _08_[1] } = { _04_, _02_ };
  assign _09_[7] = _01_;
  assign _10_[11:1] = { _08_[10:7], _04_, _08_[5:2], _02_, _08_[0] };
  assign { out_data[135:128], out_data[96], out_data[36:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_68z, celloutsig_0_69z };
endmodule
