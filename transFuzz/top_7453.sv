/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [23:0] _00_;
  reg [3:0] _01_;
  wire [7:0] celloutsig_0_0z;
  wire [16:0] celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [6:0] celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [8:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [3:0] celloutsig_1_12z;
  wire [17:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [14:0] celloutsig_1_15z;
  wire [9:0] celloutsig_1_16z;
  wire [20:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [13:0] celloutsig_1_1z;
  wire celloutsig_1_3z;
  wire [6:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_6z = ~((in_data[69] | in_data[51]) & (celloutsig_0_2z[5] | in_data[80]));
  assign celloutsig_0_9z = ~((celloutsig_0_4z | celloutsig_0_3z) & (celloutsig_0_7z | celloutsig_0_4z));
  assign celloutsig_1_12z = { celloutsig_1_1z[8:6], celloutsig_1_5z } + celloutsig_1_4z[3:0];
  assign celloutsig_0_5z = { celloutsig_0_0z[6:0], celloutsig_0_1z, celloutsig_0_3z } + { celloutsig_0_2z[5], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_1_9z = celloutsig_1_1z[8:6] + { in_data[111], celloutsig_1_6z, celloutsig_1_8z };
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _00_ <= 24'h000000;
    else _00_ <= { celloutsig_0_5z[7], celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_6z };
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _01_ <= 4'h0;
    else _01_ <= { celloutsig_1_0z[0], celloutsig_1_0z };
  assign celloutsig_1_13z = { celloutsig_1_4z[3:2], celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_11z } / { 1'h1, in_data[144:142], celloutsig_1_1z };
  assign celloutsig_0_11z = { in_data[67:52], celloutsig_0_6z } / { 1'h1, celloutsig_0_2z[2:1], celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_4z };
  assign celloutsig_0_2z = celloutsig_0_0z[6:0] / { 1'h1, in_data[76:71] };
  assign celloutsig_1_10z = { celloutsig_1_3z, celloutsig_1_9z } >= _01_;
  assign celloutsig_1_18z = { celloutsig_1_17z[12:11], celloutsig_1_5z } > celloutsig_1_0z;
  assign celloutsig_0_17z = celloutsig_0_0z[5:3] > _00_[15:13];
  assign celloutsig_0_4z = ! { in_data[83:78], celloutsig_0_0z };
  assign celloutsig_0_1z = ! celloutsig_0_0z;
  assign celloutsig_1_3z = ! { in_data[186:178], celloutsig_1_1z, _01_, _01_, celloutsig_1_0z };
  assign celloutsig_1_6z = ! celloutsig_1_4z;
  assign celloutsig_0_3z = ! celloutsig_0_2z;
  assign celloutsig_1_14z = celloutsig_1_6z & ~(celloutsig_1_12z[3]);
  assign celloutsig_0_7z = in_data[89] & ~(celloutsig_0_2z[4]);
  assign celloutsig_0_0z = in_data[43:36] % { 1'h1, in_data[45:39] };
  assign celloutsig_1_16z = { celloutsig_1_1z[11:5], celloutsig_1_7z, celloutsig_1_14z, celloutsig_1_11z } % { 1'h1, celloutsig_1_1z[10:2] };
  assign celloutsig_1_15z = celloutsig_1_3z ? { celloutsig_1_10z, celloutsig_1_1z } : { celloutsig_1_13z[14:3], celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_8z };
  assign celloutsig_1_17z = celloutsig_1_12z[0] ? { celloutsig_1_1z[4:3], celloutsig_1_0z, celloutsig_1_15z, celloutsig_1_11z } : { in_data[107:102], celloutsig_1_7z, celloutsig_1_16z, celloutsig_1_9z, celloutsig_1_7z };
  assign celloutsig_1_0z = in_data[184] ? in_data[179:177] : in_data[137:135];
  assign celloutsig_0_13z = celloutsig_0_5z[5:3] !== celloutsig_0_5z[4:2];
  assign celloutsig_0_21z = { celloutsig_0_11z[13:10], celloutsig_0_7z, celloutsig_0_19z } !== { _00_[8:5], celloutsig_0_6z, celloutsig_0_17z };
  assign celloutsig_1_5z = celloutsig_1_4z[4:1] !== celloutsig_1_4z[3:0];
  assign celloutsig_1_8z = { celloutsig_1_1z[6:5], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_5z, _01_ } !== celloutsig_1_1z[13:3];
  assign celloutsig_1_19z = & { celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_4z[5], celloutsig_1_3z, _01_ };
  assign celloutsig_0_20z = & { celloutsig_0_11z[11:2], celloutsig_0_6z };
  assign celloutsig_1_7z = & { celloutsig_1_4z[5], celloutsig_1_3z, _01_ };
  assign celloutsig_0_19z = celloutsig_0_7z & celloutsig_0_13z;
  assign celloutsig_1_1z = in_data[138:125] <<< in_data[160:147];
  assign celloutsig_1_4z = { celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z } <<< { celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_1_11z = ~((celloutsig_1_5z & celloutsig_1_8z) | (celloutsig_1_1z[12] & celloutsig_1_8z));
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_20z, celloutsig_0_21z };
endmodule
