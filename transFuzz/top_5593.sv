/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [5:0] _00_;
  reg [35:0] _01_;
  wire [18:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [10:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire [9:0] celloutsig_0_1z;
  wire [6:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_25z;
  wire [2:0] celloutsig_0_26z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [12:0] celloutsig_0_31z;
  wire celloutsig_0_3z;
  wire [2:0] celloutsig_0_4z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [9:0] celloutsig_0_8z;
  wire [10:0] celloutsig_0_9z;
  wire [8:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [10:0] celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [8:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [13:0] celloutsig_1_6z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_2z = ~((celloutsig_1_1z[4] | celloutsig_1_1z[3]) & (celloutsig_1_1z[1] | in_data[185]));
  assign celloutsig_1_10z = ~((celloutsig_1_4z[6] | celloutsig_1_0z[3]) & (in_data[109] | celloutsig_1_5z));
  assign celloutsig_1_5z = celloutsig_1_1z[2] ^ celloutsig_1_2z;
  assign celloutsig_0_7z = celloutsig_0_3z ^ celloutsig_0_6z;
  assign celloutsig_0_16z = celloutsig_0_9z[2] ^ celloutsig_0_8z[7];
  assign celloutsig_0_3z = celloutsig_0_1z[9] ^ celloutsig_0_2z;
  assign celloutsig_1_3z = ~(in_data[99] ^ celloutsig_1_1z[5]);
  always_ff @(negedge clkin_data[32], posedge clkin_data[64])
    if (clkin_data[64]) _00_ <= 6'h00;
    else _00_ <= celloutsig_1_6z[9:4];
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _01_ <= 36'h000000000;
    else _01_ <= { celloutsig_0_9z[10:1], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_18z, celloutsig_0_20z, celloutsig_0_18z };
  assign celloutsig_1_4z = { celloutsig_1_1z[3:2], celloutsig_1_1z, celloutsig_1_3z } & { celloutsig_1_1z[1:0], celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_0_4z = { celloutsig_0_1z[6:5], celloutsig_0_3z } & { in_data[87], celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_0_8z = { celloutsig_0_1z[8:1], celloutsig_0_7z, celloutsig_0_6z } & { in_data[44:38], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_6z };
  assign celloutsig_0_20z = { celloutsig_0_15z[8:7], celloutsig_0_11z, celloutsig_0_6z } & celloutsig_0_0z[13:7];
  assign celloutsig_0_0z = in_data[23:5] / { 1'h1, in_data[26:9] };
  assign celloutsig_0_11z = { celloutsig_0_0z[2:0], celloutsig_0_7z } / { 1'h1, celloutsig_0_7z, celloutsig_0_3z, 1'h1 };
  assign celloutsig_0_15z = celloutsig_0_9z / { 1'h1, celloutsig_0_1z[5:2], celloutsig_0_3z, 1'h1, celloutsig_0_11z };
  assign celloutsig_0_31z = _01_[18:6] / { 2'h3, celloutsig_0_12z, celloutsig_0_8z };
  assign celloutsig_1_6z = { celloutsig_1_4z[5:2], celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z } / { 1'h1, celloutsig_1_4z[2:0], celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_1_18z = { celloutsig_1_0z[7:4], celloutsig_1_10z } > celloutsig_1_6z[13:9];
  assign celloutsig_0_30z = celloutsig_0_8z[7:0] > { celloutsig_0_9z[10], celloutsig_0_25z, celloutsig_0_4z, celloutsig_0_26z };
  assign celloutsig_1_15z = ! { celloutsig_1_0z[4:1], _00_ };
  assign celloutsig_0_18z = ! { celloutsig_0_15z[10:1], celloutsig_0_16z };
  assign celloutsig_0_12z = { celloutsig_0_1z[9:2], celloutsig_0_7z } < { in_data[46:45], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_9z = { celloutsig_0_1z, celloutsig_0_7z } * { celloutsig_0_0z[10], celloutsig_0_1z };
  assign celloutsig_0_21z = { celloutsig_0_4z[1], celloutsig_0_3z, celloutsig_0_12z } * celloutsig_0_9z[8:6];
  assign celloutsig_1_1z = celloutsig_1_0z[7:2] * in_data[177:172];
  assign celloutsig_0_6z = | { celloutsig_0_3z, celloutsig_0_0z[4:0] };
  assign celloutsig_0_2z = | celloutsig_0_1z[9:5];
  assign celloutsig_0_25z = | { celloutsig_0_3z, in_data[91:71] };
  assign celloutsig_1_19z = { celloutsig_1_13z[8:6], celloutsig_1_5z, celloutsig_1_15z } >> celloutsig_1_0z[4:0];
  assign celloutsig_0_26z = celloutsig_0_21z >> celloutsig_0_21z;
  assign celloutsig_1_13z = { celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_4z } ^ { celloutsig_1_3z, _00_, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_0_1z = celloutsig_0_0z[13:4] ^ in_data[40:31];
  assign celloutsig_1_0z = in_data[141:133] ^ in_data[156:148];
  assign { out_data[128], out_data[100:96], out_data[32], out_data[12:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_30z, celloutsig_0_31z };
endmodule
