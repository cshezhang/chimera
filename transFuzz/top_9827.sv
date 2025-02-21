/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [25:0] _00_;
  reg [25:0] _01_;
  wire [10:0] _02_;
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_23z;
  wire celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = in_data[52] | in_data[35];
  assign celloutsig_1_2z = in_data[150] | celloutsig_1_0z;
  assign celloutsig_1_5z = celloutsig_1_4z | celloutsig_1_10z;
  assign celloutsig_1_9z = celloutsig_1_4z | celloutsig_1_7z;
  assign celloutsig_0_5z = in_data[77] | celloutsig_0_4z;
  assign celloutsig_0_7z = celloutsig_0_0z | celloutsig_0_5z;
  assign celloutsig_0_30z = celloutsig_0_23z | celloutsig_0_0z;
  assign celloutsig_0_31z = celloutsig_0_27z | celloutsig_0_8z;
  reg [10:0] _11_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _11_ <= 11'h000;
    else _11_ <= { celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_12z, celloutsig_1_16z, celloutsig_1_8z, celloutsig_1_18z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_4z };
  assign out_data[106:96] = _11_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _01_ <= 26'h0000000;
    else _01_ <= { _00_[25:19], celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_19z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_5z };
  reg [10:0] _13_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _13_ <= 11'h000;
    else _13_ <= { in_data[44:35], celloutsig_0_0z };
  assign { _02_[10:7], _00_[25:19] } = _13_;
  assign celloutsig_1_8z = { celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_5z } > in_data[157:154];
  assign celloutsig_1_12z = { in_data[139:106], celloutsig_1_10z } > { in_data[165:137], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_10z };
  assign celloutsig_0_6z = { _00_[24:23], celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_5z } > { in_data[94:92], celloutsig_0_5z, celloutsig_0_19z, celloutsig_0_4z };
  assign celloutsig_0_9z = { _02_[10:7], _00_[25:20], _02_[10:7], _00_[25:19], celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_19z } > { in_data[74:57], celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_11z = { in_data[59:55], celloutsig_0_19z } > in_data[88:83];
  assign celloutsig_0_13z = { _01_[24:20], celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_11z } > _01_[11:1];
  assign celloutsig_1_0z = in_data[154] & ~(in_data[169]);
  assign celloutsig_1_1z = celloutsig_1_0z & ~(in_data[105]);
  assign celloutsig_1_10z = celloutsig_1_0z & ~(in_data[144]);
  assign celloutsig_1_4z = celloutsig_1_2z & ~(celloutsig_1_10z);
  assign celloutsig_1_6z = celloutsig_1_2z & ~(in_data[99]);
  assign celloutsig_0_19z = _00_[21] & ~(celloutsig_0_2z);
  assign celloutsig_1_7z = celloutsig_1_4z & ~(in_data[172]);
  assign celloutsig_0_4z = celloutsig_0_19z & ~(_00_[19]);
  assign celloutsig_1_16z = celloutsig_1_8z & ~(celloutsig_1_7z);
  assign celloutsig_1_18z = celloutsig_1_5z & ~(celloutsig_1_12z);
  assign celloutsig_0_8z = in_data[91] & ~(celloutsig_0_7z);
  assign celloutsig_0_12z = celloutsig_0_11z & ~(celloutsig_0_19z);
  assign celloutsig_0_18z = celloutsig_0_5z & ~(celloutsig_0_11z);
  assign celloutsig_0_23z = celloutsig_0_6z & ~(celloutsig_0_13z);
  assign celloutsig_0_27z = celloutsig_0_13z & ~(celloutsig_0_18z);
  assign celloutsig_0_2z = in_data[37] & ~(_00_[19]);
  assign _00_[18:0] = { celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_19z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_5z };
  assign _02_[6:0] = _00_[25:19];
  assign { out_data[128], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_0_30z, celloutsig_0_31z };
endmodule
