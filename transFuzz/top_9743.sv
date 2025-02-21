/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [3:0] _01_;
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire [37:0] celloutsig_0_1z;
  wire [5:0] celloutsig_0_2z;
  wire [2:0] celloutsig_0_3z;
  wire [13:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [24:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [3:0] celloutsig_0_9z;
  wire [11:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [2:0] celloutsig_1_11z;
  wire [4:0] celloutsig_1_12z;
  wire [9:0] celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [19:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [7:0] celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_9z = celloutsig_1_7z[5] ? _00_ : in_data[156];
  assign celloutsig_1_1z = ~(celloutsig_1_0z[11] & celloutsig_1_0z[6]);
  assign celloutsig_0_7z = !(celloutsig_0_6z[9] ? celloutsig_0_2z[1] : celloutsig_0_1z[11]);
  assign celloutsig_1_10z = !(celloutsig_1_7z[5] ? celloutsig_1_5z : celloutsig_1_7z[1]);
  assign celloutsig_0_0z = in_data[28] | in_data[63];
  reg [19:0] _07_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _07_ <= 20'h00000;
    else _07_ <= { celloutsig_0_1z[21], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_9z };
  assign out_data[51:32] = _07_;
  reg [3:0] _08_;
  always_ff @(negedge clkin_data[32], posedge clkin_data[64])
    if (clkin_data[64]) _08_ <= 4'h0;
    else _08_ <= celloutsig_1_3z[15:12];
  assign { _01_[3:1], _00_ } = _08_;
  assign celloutsig_1_12z = { celloutsig_1_3z[8:5], celloutsig_1_5z } / { 1'h1, celloutsig_1_11z[1], celloutsig_1_11z };
  assign celloutsig_0_3z = { in_data[68], celloutsig_0_0z, celloutsig_0_0z } / { 1'h1, celloutsig_0_1z[1], in_data[0] };
  assign celloutsig_0_6z = { in_data[87:84], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_5z } / { 1'h1, in_data[77:54] };
  assign celloutsig_1_11z = _01_[3:1] / { 1'h1, celloutsig_1_7z[4], celloutsig_1_2z };
  assign celloutsig_1_18z = { celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_12z } / { 1'h1, celloutsig_1_3z[14:8], celloutsig_1_9z, celloutsig_1_10z };
  assign celloutsig_0_5z = in_data[86:77] && celloutsig_0_4z[12:3];
  assign celloutsig_1_2z = in_data[147:127] || { celloutsig_1_0z[6:0], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_5z = { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_4z } || { celloutsig_1_3z[18:9], celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_0_11z = celloutsig_0_4z[10:0] != { out_data[41:37], celloutsig_0_2z };
  assign celloutsig_1_4z = celloutsig_1_0z[9:5] != { celloutsig_1_0z[4:1], celloutsig_1_2z };
  assign celloutsig_0_9z = - celloutsig_0_6z[11:8];
  assign celloutsig_0_4z = { in_data[63:60], celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z } | { celloutsig_0_2z[2:1], celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_1z = in_data[57:20] << in_data[39:2];
  assign celloutsig_1_3z = { in_data[156:138], celloutsig_1_1z } >> { in_data[113:111], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_0_2z = celloutsig_0_1z[8:3] >> celloutsig_0_1z[29:24];
  assign celloutsig_1_19z = celloutsig_1_3z[15:12] >> { _01_[3:1], _00_ };
  assign celloutsig_1_7z = celloutsig_1_3z[17:10] - in_data[177:170];
  assign celloutsig_1_0z = in_data[109:98] ~^ in_data[169:158];
  assign _01_[0] = _00_;
  assign { out_data[137:128], out_data[99:96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_11z };
endmodule
