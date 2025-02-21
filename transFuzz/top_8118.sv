/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [23:0] _02_;
  wire [3:0] _03_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_13z;
  reg [5:0] celloutsig_0_14z;
  wire [8:0] celloutsig_0_15z;
  wire [7:0] celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [6:0] celloutsig_0_1z;
  wire [16:0] celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire [3:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_2z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [2:0] celloutsig_0_4z;
  wire [16:0] celloutsig_0_5z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [21:0] celloutsig_0_9z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [4:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [13:0] celloutsig_1_17z;
  wire [19:0] celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [11:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_7z = celloutsig_1_3z ? celloutsig_1_5z : in_data[113];
  assign celloutsig_1_13z = celloutsig_1_1z ? celloutsig_1_4z : _00_;
  assign celloutsig_0_19z = ~celloutsig_0_14z[2];
  assign celloutsig_1_11z = ~((celloutsig_1_6z | in_data[134]) & celloutsig_1_8z);
  assign celloutsig_1_16z = ~((celloutsig_1_3z | celloutsig_1_7z) & celloutsig_1_1z);
  assign celloutsig_0_7z = celloutsig_0_4z[1] | ~(celloutsig_0_2z);
  assign celloutsig_1_9z = celloutsig_1_8z | ~(celloutsig_1_2z[2]);
  assign celloutsig_0_13z = celloutsig_0_8z | ~(_01_);
  assign celloutsig_0_2z = in_data[91] | ~(celloutsig_0_0z);
  assign celloutsig_0_0z = in_data[77] ^ in_data[78];
  assign celloutsig_0_39z = celloutsig_0_1z[5] ^ celloutsig_0_8z;
  assign celloutsig_1_8z = ~(celloutsig_1_2z[6] ^ celloutsig_1_3z);
  reg [3:0] _16_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _16_ <= 4'h0;
    else _16_ <= in_data[67:64];
  assign { _03_[3:1], _01_ } = _16_;
  reg [23:0] _17_;
  always_ff @(posedge clkin_data[32], posedge clkin_data[128])
    if (clkin_data[128]) _17_ <= 24'h000000;
    else _17_ <= in_data[166:143];
  assign { _02_[23:12], _00_, _02_[10:0] } = _17_;
  assign celloutsig_0_11z = in_data[83:76] === in_data[79:72];
  assign celloutsig_0_22z = { celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_0z } === celloutsig_0_20z[6:4];
  assign celloutsig_1_1z = _02_[6:4] <= { _00_, _02_[10:9] };
  assign celloutsig_1_15z = { celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_3z } && celloutsig_1_12z[4:2];
  assign celloutsig_1_4z = _02_[8:2] != { in_data[165:160], celloutsig_1_1z };
  assign celloutsig_0_18z = { in_data[82:81], celloutsig_0_0z, celloutsig_0_5z[16:1], celloutsig_0_2z } != { celloutsig_0_9z[21:4], celloutsig_0_8z, celloutsig_0_13z };
  assign celloutsig_0_4z = - { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_9z = - { in_data[51:38], celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_8z };
  assign celloutsig_0_15z = - { celloutsig_0_5z[10:7], celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_10z };
  assign celloutsig_1_17z = { in_data[191:180], celloutsig_1_9z, celloutsig_1_5z } | { celloutsig_1_2z[7:1], celloutsig_1_13z, celloutsig_1_7z, celloutsig_1_12z };
  assign celloutsig_1_18z = { in_data[166:155], celloutsig_1_14z, celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_16z, celloutsig_1_1z, celloutsig_1_8z } | { celloutsig_1_2z[10:8], celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_15z, celloutsig_1_10z, celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_15z, celloutsig_1_8z, celloutsig_1_11z, celloutsig_1_14z, celloutsig_1_12z, celloutsig_1_8z };
  assign celloutsig_0_24z = & celloutsig_0_15z[4:0];
  assign celloutsig_0_3z = | { in_data[12:2], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_38z = | { celloutsig_0_16z[6:0], celloutsig_0_8z, celloutsig_0_25z };
  assign celloutsig_1_3z = | { _02_[12], _00_, _02_[10], celloutsig_1_1z };
  assign celloutsig_0_10z = | { celloutsig_0_5z[16:15], celloutsig_0_7z, _03_[3:1], _01_, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_3z };
  assign celloutsig_1_10z = celloutsig_1_1z & celloutsig_1_3z;
  assign celloutsig_1_14z = | celloutsig_1_12z[4:2];
  assign celloutsig_0_25z = | { celloutsig_0_24z, celloutsig_0_23z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_6z = ~^ { celloutsig_1_2z[10:3], celloutsig_1_3z, celloutsig_1_5z };
  assign celloutsig_1_19z = { celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_16z, celloutsig_1_10z } - { celloutsig_1_17z[7:5], celloutsig_1_8z, celloutsig_1_9z };
  assign celloutsig_1_2z = { in_data[118:109], celloutsig_1_1z, celloutsig_1_1z } ^ { _02_[18:12], _00_, _02_[10:7] };
  assign celloutsig_1_12z = { celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_3z, celloutsig_1_1z } ^ _02_[20:16];
  assign celloutsig_0_16z = { celloutsig_0_4z[1:0], celloutsig_0_14z } ^ { celloutsig_0_5z[7:5], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_0_20z = { celloutsig_0_15z[8:6], celloutsig_0_2z, _03_[3:1], _01_, celloutsig_0_8z, celloutsig_0_16z } ^ { in_data[11:0], celloutsig_0_19z, _03_[3:1], _01_ };
  assign celloutsig_0_23z = { in_data[73:72], celloutsig_0_19z, celloutsig_0_7z } ^ { _03_[2:1], _01_, celloutsig_0_13z };
  always_latch
    if (clkin_data[64]) celloutsig_0_14z = 6'h00;
    else if (!celloutsig_1_19z[0]) celloutsig_0_14z = in_data[40:35];
  assign celloutsig_1_5z = ~((celloutsig_1_4z & celloutsig_1_3z) | (in_data[191] & _02_[10]));
  assign celloutsig_0_8z = ~((celloutsig_0_7z & 1'h0) | (celloutsig_0_3z & _03_[1]));
  assign out_data[32] = ~ celloutsig_0_38z;
  assign celloutsig_0_1z[6:1] = in_data[31:26] ^ { in_data[7:3], celloutsig_0_0z };
  assign { out_data[41], out_data[42], out_data[40:33] } = { celloutsig_0_39z, celloutsig_0_22z, celloutsig_0_16z } ^ { celloutsig_0_9z[12], celloutsig_0_9z[13], celloutsig_0_9z[11:5], celloutsig_0_8z };
  assign { celloutsig_0_5z[6:1], celloutsig_0_5z[12:8], celloutsig_0_5z[13], celloutsig_0_5z[16:14], celloutsig_0_5z[7] } = { celloutsig_0_1z[6:1], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z, in_data[37:35], celloutsig_0_0z } | { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_3z, in_data[20:16], in_data[21], in_data[24:22], in_data[15] };
  assign _02_[11] = _00_;
  assign _03_[0] = _01_;
  assign celloutsig_0_1z[0] = 1'h0;
  assign celloutsig_0_5z[0] = celloutsig_0_2z;
  assign { out_data[147:128], out_data[100:96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, 1'h1 };
endmodule
