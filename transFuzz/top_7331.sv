/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  reg [11:0] _02_;
  wire [5:0] _03_;
  wire celloutsig_0_10z;
  wire celloutsig_0_13z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_2z;
  wire [18:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [12:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [14:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [11:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_14z = !(celloutsig_1_8z ? celloutsig_1_3z : celloutsig_1_1z[14]);
  assign celloutsig_1_0z = !(in_data[179] ? in_data[185] : in_data[115]);
  assign celloutsig_1_2z = !(celloutsig_1_0z ? in_data[164] : in_data[133]);
  assign celloutsig_0_2z = ~((in_data[73] | in_data[45]) & _00_);
  assign celloutsig_0_13z = ~((celloutsig_0_7z[2] | celloutsig_0_9z[2]) & _01_);
  assign celloutsig_0_18z = ~((celloutsig_0_6z | celloutsig_0_10z) & celloutsig_0_17z);
  assign celloutsig_1_4z = ~((celloutsig_1_3z | celloutsig_1_2z) & in_data[121]);
  assign celloutsig_1_10z = ~((celloutsig_1_2z | celloutsig_1_5z[4]) & celloutsig_1_8z);
  assign celloutsig_1_16z = celloutsig_1_2z | ~(celloutsig_1_9z);
  reg [5:0] _13_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _13_ <= 6'h00;
    else _13_ <= in_data[33:28];
  assign { _01_, _03_[4:2], _00_, _03_[0] } = _13_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _02_ <= 12'h000;
    else _02_ <= in_data[26:15];
  assign celloutsig_1_1z = { in_data[190:177], celloutsig_1_0z } & in_data[115:101];
  assign celloutsig_1_3z = { celloutsig_1_1z[5:1], celloutsig_1_0z } > in_data[129:124];
  assign celloutsig_1_6z = celloutsig_1_5z[8:3] && { in_data[167:164], celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_0_5z = ! _02_[10:2];
  assign celloutsig_1_17z = celloutsig_1_5z[8:1] || { celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_14z, celloutsig_1_4z, celloutsig_1_10z };
  assign celloutsig_0_6z = { in_data[84:82], celloutsig_0_5z } < _02_[7:4];
  assign celloutsig_0_17z = { celloutsig_0_7z[9:6], celloutsig_0_6z } < { in_data[4:2], celloutsig_0_2z, celloutsig_0_13z };
  assign celloutsig_1_5z = { in_data[115:105], celloutsig_1_3z } % { 1'h1, celloutsig_1_1z[11:3], celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_9z = in_data[189:184] != { celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_8z };
  assign celloutsig_0_4z = - in_data[36:18];
  assign celloutsig_0_7z = - { _03_[4:2], celloutsig_0_6z, _01_, _03_[4:2], _00_, _03_[0], celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_1_18z = & { celloutsig_1_17z, celloutsig_1_16z, celloutsig_1_3z, in_data[135:131] };
  assign celloutsig_1_19z = & { celloutsig_1_14z, celloutsig_1_12z, celloutsig_1_10z, celloutsig_1_5z[9:0], celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_1_7z = & { celloutsig_1_5z[6:0], celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_0_8z = | in_data[58:43];
  assign celloutsig_0_10z = ^ celloutsig_0_4z[3:0];
  assign celloutsig_1_8z = ^ { celloutsig_1_1z[11:1], celloutsig_1_2z };
  assign celloutsig_0_9z = { celloutsig_0_7z[10:7], celloutsig_0_5z } - { _03_[3:2], _00_, celloutsig_0_2z, celloutsig_0_8z };
  assign celloutsig_1_12z = ~((celloutsig_1_5z[0] & celloutsig_1_10z) | (celloutsig_1_0z & celloutsig_1_8z));
  assign { _03_[5], _03_[1] } = { _01_, _00_ };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_17z, celloutsig_0_18z };
endmodule
