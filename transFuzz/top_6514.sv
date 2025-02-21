/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [12:0] _02_;
  wire [30:0] celloutsig_0_0z;
  wire [12:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_1z;
  wire celloutsig_0_22z;
  wire [8:0] celloutsig_0_23z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_6z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_1z = in_data[23] ? in_data[16] : celloutsig_0_0z[1];
  assign celloutsig_0_17z = celloutsig_0_16z ? celloutsig_0_4z : celloutsig_0_13z;
  assign celloutsig_0_22z = celloutsig_0_15z ? celloutsig_0_17z : celloutsig_0_2z;
  assign celloutsig_0_6z = ~(_00_ | celloutsig_0_2z);
  assign celloutsig_0_9z = ~(_01_ | celloutsig_0_0z[14]);
  assign celloutsig_1_17z = ~((celloutsig_1_7z | celloutsig_1_2z[4]) & celloutsig_1_1z[2]);
  assign celloutsig_1_18z = ~((celloutsig_1_1z[1] | celloutsig_1_3z) & celloutsig_1_1z[2]);
  assign celloutsig_0_16z = ~((celloutsig_0_9z | celloutsig_0_6z) & celloutsig_0_9z);
  assign celloutsig_1_0z = ~((in_data[141] | in_data[112]) & in_data[120]);
  assign celloutsig_1_4z = ~((celloutsig_1_3z | celloutsig_1_0z) & celloutsig_1_2z[2]);
  assign celloutsig_0_4z = celloutsig_0_1z ^ celloutsig_0_3z;
  assign celloutsig_1_19z = celloutsig_1_8z[1] ^ celloutsig_1_17z;
  assign celloutsig_0_15z = celloutsig_0_13z ^ celloutsig_0_12z[6];
  assign celloutsig_0_2z = in_data[35] ^ in_data[86];
  reg [12:0] _17_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _17_ <= 13'h0000;
    else _17_ <= celloutsig_0_0z[15:3];
  assign { _02_[12:10], _01_, _02_[8], _00_, _02_[6:0] } = _17_;
  assign celloutsig_0_23z = { celloutsig_0_0z[10:3], celloutsig_0_15z } / { 1'h1, _02_[11:10], _01_, _02_[8], _00_, _02_[6:4] };
  assign celloutsig_0_3z = in_data[65:47] <= celloutsig_0_0z[18:0];
  assign celloutsig_0_13z = { celloutsig_0_12z[11:3], celloutsig_0_4z } <= { _02_[11:10], _01_, _02_[8], _00_, _02_[6:2] };
  assign celloutsig_1_3z = { celloutsig_1_2z[0], celloutsig_1_0z, celloutsig_1_1z } <= { in_data[145:144], celloutsig_1_1z };
  assign celloutsig_1_5z = celloutsig_1_2z[1] & ~(celloutsig_1_0z);
  assign celloutsig_1_7z = celloutsig_1_6z & ~(celloutsig_1_4z);
  assign celloutsig_0_0z = - in_data[85:55];
  assign celloutsig_1_8z = { celloutsig_1_0z, celloutsig_1_1z } | { in_data[114], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_7z };
  assign celloutsig_0_12z = { in_data[15:5], celloutsig_0_1z, celloutsig_0_1z } | { celloutsig_0_0z[11:5], celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_8z = ~^ { in_data[9:1], celloutsig_0_1z };
  assign celloutsig_1_6z = ~^ { celloutsig_1_2z[2:1], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_5z };
  assign celloutsig_1_2z = { celloutsig_1_1z[2:1], celloutsig_1_1z } >> { celloutsig_1_1z[1:0], celloutsig_1_1z };
  assign celloutsig_1_1z = in_data[98:96] <<< in_data[140:138];
  assign { _02_[9], _02_[7] } = { _01_, _00_ };
  assign { out_data[128], out_data[96], out_data[32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_22z, celloutsig_0_23z };
endmodule
