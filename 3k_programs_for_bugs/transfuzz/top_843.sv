/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [22:0] _00_;
  wire [6:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [11:0] celloutsig_0_12z;
  wire [19:0] celloutsig_0_13z;
  reg [23:0] celloutsig_0_15z;
  wire [9:0] celloutsig_0_17z;
  wire celloutsig_0_1z;
  wire [3:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [2:0] celloutsig_0_25z;
  wire celloutsig_0_3z;
  wire [3:0] celloutsig_0_5z;
  wire [6:0] celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire [7:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_19z;
  wire [12:0] celloutsig_1_1z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [21:0] _01_;
  always_ff @(negedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _01_ <= 22'h000000;
    else _01_ <= { in_data[70:53], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z };
  assign { _00_[22:2], _00_[0] } = _01_;
  assign celloutsig_0_0z = in_data[50:44] + in_data[39:33];
  reg [8:0] _03_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _03_ <= 9'h000;
    else _03_ <= celloutsig_1_1z[10:2];
  assign out_data[136:128] = _03_;
  assign celloutsig_0_10z = celloutsig_0_6z[4:0] == { celloutsig_0_9z[2], celloutsig_0_5z };
  assign celloutsig_0_24z = celloutsig_0_13z[11:4] == { _00_[2], 1'h0, _00_[0], celloutsig_0_22z, celloutsig_0_23z };
  assign celloutsig_1_0z = in_data[133:124] >= in_data[162:153];
  assign celloutsig_0_1z = { in_data[88], celloutsig_0_0z } && in_data[53:46];
  assign celloutsig_0_3z = { in_data[50:42], celloutsig_0_1z } < { in_data[63:62], celloutsig_0_0z, 1'h0 };
  assign celloutsig_0_23z = { celloutsig_0_17z[6:3], celloutsig_0_3z, celloutsig_0_0z[5] } < celloutsig_0_13z[6:1];
  assign celloutsig_0_6z = _00_[18:12] % { 1'h1, _00_[19:15], celloutsig_0_1z };
  assign celloutsig_0_13z = { celloutsig_0_7z[1], celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_9z } % { 1'h1, in_data[67:51], 1'h0, celloutsig_0_11z };
  assign celloutsig_0_17z = ~ celloutsig_0_15z[23:14];
  assign celloutsig_0_25z = ~ { _00_[15:14], celloutsig_0_24z };
  assign celloutsig_0_9z = { _00_[6:3], celloutsig_0_5z } | { in_data[43], celloutsig_0_6z };
  assign celloutsig_1_1z = in_data[123:111] | { in_data[137:130], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_19z = & celloutsig_1_1z[9:6];
  assign celloutsig_0_11z = & { celloutsig_0_10z, celloutsig_0_5z };
  assign celloutsig_0_22z = celloutsig_0_13z[5:2] >> celloutsig_0_12z[8:5];
  assign celloutsig_0_12z = { in_data[85:82], celloutsig_0_1z, celloutsig_0_6z } >> { celloutsig_0_0z[5:1], celloutsig_0_0z };
  assign celloutsig_0_5z = celloutsig_0_0z[4:1] >>> celloutsig_0_0z[6:3];
  assign celloutsig_0_7z = { _00_[6], celloutsig_0_1z, celloutsig_0_3z } ~^ { celloutsig_0_5z[1:0], celloutsig_0_1z };
  always_latch
    if (clkin_data[32]) celloutsig_0_15z = 24'h000000;
    else if (!clkin_data[96]) celloutsig_0_15z = { in_data[46:43], celloutsig_0_13z };
  assign _00_[1] = 1'h0;
  assign { out_data[96], out_data[32], out_data[2:0] } = { celloutsig_1_19z, celloutsig_0_24z, celloutsig_0_25z };
endmodule
