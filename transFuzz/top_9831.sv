/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [15:0] _00_;
  wire celloutsig_0_0z;
  wire celloutsig_0_2z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire [4:0] celloutsig_1_18z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [8:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [6:0] celloutsig_1_7z;
  wire [11:0] celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = ~(in_data[151] & in_data[107]);
  assign celloutsig_0_0z = in_data[5] ^ in_data[35];
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _00_ <= 16'h0000;
    else _00_ <= in_data[22:7];
  assign celloutsig_1_18z = { celloutsig_1_10z[4:1], celloutsig_1_0z } / { 1'h1, celloutsig_1_3z[7:6], celloutsig_1_11z, celloutsig_1_14z };
  assign celloutsig_1_12z = { celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_6z } >= celloutsig_1_10z[5:1];
  assign celloutsig_1_2z = in_data[125:117] > { in_data[138:132], celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_1_14z = { celloutsig_1_3z[4:1], celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_12z } && { celloutsig_1_3z[6:1], celloutsig_1_2z };
  assign celloutsig_1_3z[8:1] = celloutsig_1_0z ? in_data[136:129] : in_data[149:142];
  assign celloutsig_1_7z = celloutsig_1_5z ? { celloutsig_1_3z[5:1], celloutsig_1_6z, celloutsig_1_6z } : celloutsig_1_3z[7:1];
  assign celloutsig_1_5z = { celloutsig_1_3z[6:1], celloutsig_1_1z } != in_data[146:140];
  assign celloutsig_1_6z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z } != { celloutsig_1_3z[5:4], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_11z = { celloutsig_1_3z[7:5], celloutsig_1_5z } != celloutsig_1_10z[3:0];
  assign celloutsig_1_8z = - { celloutsig_1_3z[6:5], celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_4z };
  assign celloutsig_0_5z = & { celloutsig_0_2z, _00_, in_data[8:1], celloutsig_0_0z };
  assign celloutsig_1_4z = in_data[111] & celloutsig_1_1z;
  assign celloutsig_0_2z = _00_[5] & celloutsig_0_0z;
  assign celloutsig_1_10z = { celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_4z } ~^ celloutsig_1_8z[8:3];
  assign celloutsig_0_6z = ~((in_data[0] & in_data[4]) | (in_data[16] & _00_[9]));
  assign celloutsig_1_1z = ~((in_data[154] & celloutsig_1_0z) | (in_data[157] & celloutsig_1_0z));
  assign celloutsig_1_3z[0] = celloutsig_1_1z;
  assign { out_data[132:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_11z, celloutsig_0_5z, celloutsig_0_6z };
endmodule
