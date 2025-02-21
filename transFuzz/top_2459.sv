/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [12:0] _00_;
  reg [4:0] _01_;
  wire celloutsig_0_10z;
  wire celloutsig_0_12z;
  wire [11:0] celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire [4:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_3z;
  wire [18:0] celloutsig_0_4z;
  wire [12:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [6:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [2:0] celloutsig_1_12z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [2:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [7:0] celloutsig_1_19z;
  wire [15:0] celloutsig_1_1z;
  wire [11:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
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
  assign celloutsig_1_10z = ~(celloutsig_1_5z | celloutsig_1_7z);
  assign celloutsig_1_7z = ~((celloutsig_1_3z | in_data[121]) & (celloutsig_1_3z | celloutsig_1_4z));
  assign celloutsig_1_1z = in_data[137:122] + in_data[117:102];
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _01_ <= 5'h00;
    else _01_ <= in_data[34:30];
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _00_ <= 13'h0000;
    else _00_ <= in_data[15:3];
  assign celloutsig_0_18z = { celloutsig_0_7z[3:1], celloutsig_0_12z, celloutsig_0_9z } == in_data[15:11];
  assign celloutsig_1_9z = { celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_8z } === { celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_6z };
  assign celloutsig_1_18z = { in_data[129:126], celloutsig_1_0z } <= { celloutsig_1_17z[1:0], celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_16z };
  assign celloutsig_0_3z = { _01_[1:0], celloutsig_0_1z } && in_data[14:12];
  assign celloutsig_1_5z = { in_data[98], celloutsig_1_4z, celloutsig_1_4z } && { celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_1_16z = in_data[130:124] || { celloutsig_1_1z[11:6], celloutsig_1_15z };
  assign celloutsig_0_10z = { _00_[6:2], celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_1z } || { celloutsig_0_4z[4:3], celloutsig_0_8z, celloutsig_0_8z, _01_ };
  assign celloutsig_0_12z = { celloutsig_0_7z[1], _01_, celloutsig_0_10z } || _00_[8:2];
  assign celloutsig_0_1z = in_data[17:13] || _01_;
  assign celloutsig_1_15z = celloutsig_1_2z[8] & ~(celloutsig_1_10z);
  assign celloutsig_1_6z = celloutsig_1_1z[14] & ~(celloutsig_1_3z);
  assign celloutsig_0_7z = { celloutsig_0_3z, celloutsig_0_1z, _01_ } % { 1'h1, celloutsig_0_4z[17:13], celloutsig_0_6z };
  assign celloutsig_0_4z = - { in_data[23:12], celloutsig_0_1z, celloutsig_0_1z, _01_ };
  assign celloutsig_0_16z = - { celloutsig_0_5z[8:4], celloutsig_0_3z, _01_, celloutsig_0_8z };
  assign celloutsig_1_17z = celloutsig_1_2z[5:3] | { celloutsig_1_12z[1], celloutsig_1_6z, celloutsig_1_5z };
  assign celloutsig_1_3z = & { celloutsig_1_2z[7:0], celloutsig_1_0z };
  assign celloutsig_1_4z = & { celloutsig_1_2z[7:0], celloutsig_1_0z, in_data[153:152] };
  assign celloutsig_0_9z = | { _00_[12:8], _01_ };
  assign celloutsig_0_6z = ^ { celloutsig_0_4z[15:5], celloutsig_0_3z };
  assign celloutsig_0_8z = ^ { celloutsig_0_7z[2:0], celloutsig_0_6z };
  assign celloutsig_1_19z = { in_data[136:132], celloutsig_1_9z, celloutsig_1_5z, celloutsig_1_6z } << { celloutsig_1_2z[5:0], celloutsig_1_0z, celloutsig_1_18z };
  assign celloutsig_0_19z = celloutsig_0_16z[5:1] << celloutsig_0_5z[9:5];
  assign celloutsig_1_2z = { in_data[110:101], celloutsig_1_0z, celloutsig_1_0z } - in_data[124:113];
  assign celloutsig_0_5z = _00_ ^ { in_data[32:31], _01_, _01_, celloutsig_0_1z };
  assign celloutsig_1_12z = { celloutsig_1_2z[7], celloutsig_1_7z, celloutsig_1_10z } ^ { celloutsig_1_1z[9:8], celloutsig_1_0z };
  assign celloutsig_1_0z = ~((in_data[158] & in_data[132]) | (in_data[190] & in_data[188]));
  assign celloutsig_1_8z = ~((celloutsig_1_6z & celloutsig_1_3z) | (celloutsig_1_5z & celloutsig_1_2z[9]));
  assign { out_data[128], out_data[103:96], out_data[32], out_data[4:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_18z, celloutsig_0_19z };
endmodule
