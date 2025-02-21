/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [4:0] _02_;
  reg [15:0] _03_;
  reg [4:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [3:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [2:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [18:0] celloutsig_0_8z;
  wire [19:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [4:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire [6:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [19:0] celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = ~(_00_ | _01_);
  assign celloutsig_0_5z = ~(celloutsig_0_4z | celloutsig_0_0z);
  assign celloutsig_0_0z = ~in_data[14];
  assign celloutsig_1_15z = ~celloutsig_1_0z[9];
  assign celloutsig_1_11z = celloutsig_1_3z | celloutsig_1_2z;
  assign celloutsig_0_4z = celloutsig_0_1z[0] | _01_;
  assign celloutsig_0_20z = celloutsig_0_6z | celloutsig_0_14z;
  assign celloutsig_1_1z = in_data[166] | celloutsig_1_0z[0];
  assign celloutsig_1_7z = in_data[112] ^ celloutsig_1_6z;
  assign celloutsig_1_12z = celloutsig_1_8z[7] ^ celloutsig_1_6z;
  assign celloutsig_1_17z = celloutsig_1_12z ^ celloutsig_1_5z;
  assign celloutsig_0_13z = _01_ ^ celloutsig_0_7z;
  assign celloutsig_1_4z = celloutsig_1_3z ^ celloutsig_1_2z;
  assign celloutsig_1_6z = ~(celloutsig_1_1z ^ in_data[158]);
  assign celloutsig_0_23z = ~(celloutsig_0_13z ^ celloutsig_0_8z[15]);
  always_ff @(negedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _03_ <= 16'h0000;
    else _03_ <= celloutsig_1_8z[16:1];
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[64])
    if (!clkin_data[64]) _04_ <= 5'h00;
    else _04_ <= celloutsig_0_8z[16:12];
  reg [4:0] _22_;
  always_ff @(negedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _22_ <= 5'h00;
    else _22_ <= in_data[7:3];
  assign { _02_[4:2], _01_, _00_ } = _22_;
  assign celloutsig_1_5z = in_data[125:117] == { celloutsig_1_0z[7:2], celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_10z = { celloutsig_0_6z, _02_[4:2], _01_, _00_, 1'h0, celloutsig_0_1z, celloutsig_0_6z } == { in_data[70:63], celloutsig_0_1z };
  assign celloutsig_0_14z = ! { celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_1_2z = { in_data[182:180], celloutsig_1_1z } == celloutsig_1_0z[16:13];
  assign celloutsig_0_16z = { celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_10z } || { _02_[4:3], celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_10z };
  assign celloutsig_0_24z = in_data[32:26] || { in_data[34:32], celloutsig_0_11z, in_data[31], celloutsig_0_22z, celloutsig_0_0z };
  assign celloutsig_1_8z = { in_data[117:103], celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_6z } % { 1'h1, celloutsig_1_0z[18:3], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_7z };
  assign celloutsig_1_13z = _03_[11:7] % { 1'h1, celloutsig_1_8z[8:7], celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_1_18z = { celloutsig_1_0z[16:14], celloutsig_1_14z, celloutsig_1_5z, celloutsig_1_15z, celloutsig_1_1z } % { 1'h1, celloutsig_1_8z[8:4], celloutsig_1_2z };
  assign celloutsig_0_8z = { in_data[9:0], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, _02_[4:2], _01_, _00_ } % { 1'h1, in_data[91:77], celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_0_1z = in_data[75:73] % { 1'h1, in_data[73:72] };
  assign celloutsig_1_0z = in_data[173:154] % { 1'h1, in_data[147:129] };
  assign celloutsig_1_19z = { celloutsig_1_0z[19:13], celloutsig_1_17z, celloutsig_1_15z, celloutsig_1_17z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_17z } != { _03_[13:3], celloutsig_1_11z, celloutsig_1_12z };
  assign celloutsig_0_21z = { celloutsig_0_8z[8:5], celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_20z } != { celloutsig_0_12z[3:2], _04_ };
  assign celloutsig_1_14z = ^ { celloutsig_1_13z[2:0], celloutsig_1_6z };
  assign celloutsig_0_7z = ^ { _02_[3:2], _01_ };
  assign celloutsig_0_15z = ^ { in_data[67:44], celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_14z };
  assign celloutsig_0_25z = ^ { celloutsig_0_12z[2:0], _02_[4:2], _01_, _00_, celloutsig_0_3z, celloutsig_0_23z, celloutsig_0_22z, celloutsig_0_21z };
  assign celloutsig_0_12z = { in_data[51:49], celloutsig_0_0z } << { celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_11z };
  assign celloutsig_0_6z = ~((celloutsig_0_3z & in_data[3]) | (celloutsig_0_4z & in_data[45]));
  assign celloutsig_0_11z = ~((celloutsig_0_8z[1] & _02_[3]) | (celloutsig_0_3z & celloutsig_0_4z));
  assign celloutsig_0_22z = ~((celloutsig_0_14z & celloutsig_0_10z) | (celloutsig_0_0z & celloutsig_0_14z));
  assign celloutsig_1_3z = ~((celloutsig_1_1z & celloutsig_1_2z) | (in_data[163] & in_data[132]));
  assign _02_[1:0] = { _01_, _00_ };
  assign { out_data[134:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_24z, celloutsig_0_25z };
endmodule
