/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [19:0] _00_;
  reg [2:0] _01_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [4:0] celloutsig_0_1z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [12:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [11:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire [17:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [7:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _00_ <= 20'h00000;
    else _00_ <= { in_data[28:17], celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_4z };
  always_ff @(negedge clkin_data[64], negedge clkin_data[96])
    if (!clkin_data[96]) _01_ <= 3'h0;
    else _01_ <= { celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z };
  reg [13:0] _04_;
  always_ff @(negedge clkin_data[32], negedge clkin_data[128])
    if (!clkin_data[128]) _04_ <= 14'h0000;
    else _04_ <= celloutsig_1_1z[16:3];
  assign out_data[109:96] = _04_;
  assign celloutsig_0_7z = { celloutsig_0_6z[12:1], celloutsig_0_4z } <= { _00_[6:3], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_1_5z = { celloutsig_1_1z[5:3], celloutsig_1_3z } <= { celloutsig_1_1z[11], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_8z = { celloutsig_1_7z[7:2], celloutsig_1_0z } <= { in_data[125:124], _01_, celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_1_11z = { celloutsig_1_10z[2:0], celloutsig_1_10z, celloutsig_1_9z } <= { celloutsig_1_8z, celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_3z = { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z } <= { in_data[62:60], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_1_18z = { celloutsig_1_7z[4:3], celloutsig_1_8z, celloutsig_1_13z } <= celloutsig_1_7z[3:0];
  assign celloutsig_0_4z = { in_data[91:74], celloutsig_0_0z, celloutsig_0_2z } < { celloutsig_0_1z[4:2], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_0_9z = { celloutsig_0_1z[1], celloutsig_0_1z, celloutsig_0_1z } < { _00_[17:8], celloutsig_0_2z };
  assign celloutsig_0_10z = { in_data[30:25], celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_2z } < in_data[49:35];
  assign celloutsig_0_11z = _00_[12:9] < celloutsig_0_1z[3:0];
  assign celloutsig_0_12z = { in_data[95:94], celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_2z } < { celloutsig_0_1z[1:0], celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_9z };
  assign celloutsig_1_0z = in_data[153:139] < in_data[180:166];
  assign celloutsig_1_3z = in_data[161:152] < celloutsig_1_1z[10:1];
  assign celloutsig_0_6z = - { in_data[80:70], celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_0_1z = - in_data[21:17];
  assign celloutsig_1_1z = - in_data[154:137];
  assign celloutsig_1_7z = - { in_data[150:144], celloutsig_1_5z };
  assign celloutsig_1_10z = - { celloutsig_1_7z[7:1], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_0z };
  assign celloutsig_0_0z = | in_data[61:59];
  assign celloutsig_0_13z = | { celloutsig_0_10z, celloutsig_0_6z[9], in_data[76:67], in_data[61:59] };
  assign celloutsig_1_2z = | in_data[137:133];
  assign celloutsig_0_2z = | { in_data[76:67], in_data[61:59] };
  assign celloutsig_1_6z = | { celloutsig_1_3z, celloutsig_1_1z[7:1] };
  assign celloutsig_1_9z = | celloutsig_1_1z[13:3];
  assign celloutsig_1_13z = | { celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_1z[13:3], in_data[166:154] };
  assign { out_data[128], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_0_12z, celloutsig_0_13z };
endmodule
