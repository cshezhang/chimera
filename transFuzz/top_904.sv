/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [8:0] celloutsig_0_11z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [7:0] celloutsig_0_21z;
  wire [4:0] celloutsig_0_22z;
  wire [4:0] celloutsig_0_23z;
  wire [8:0] celloutsig_0_26z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [5:0] celloutsig_0_6z;
  wire [5:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [8:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [11:0] celloutsig_1_10z;
  wire [4:0] celloutsig_1_12z;
  wire [28:0] celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire [21:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [12:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [10:0] _00_;
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _00_ <= 11'h000;
    else _00_ <= { celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_26z };
  assign out_data[42:32] = _00_;
  assign celloutsig_0_0z = & in_data[34:32];
  assign celloutsig_0_5z = & { in_data[85:82], in_data[64], in_data[59:51], in_data[34:32], in_data[26:19] };
  assign celloutsig_0_8z = & { celloutsig_0_7z[3:0], in_data[85:82], in_data[59:51], in_data[34:32] };
  assign celloutsig_0_1z = & { in_data[59:51], in_data[34:32] };
  assign celloutsig_0_10z = & { celloutsig_0_9z[0], celloutsig_0_7z, in_data[85:82], in_data[64], in_data[59:51], in_data[34:32], in_data[26:19] };
  assign celloutsig_0_19z = & celloutsig_0_9z[8:6];
  assign celloutsig_0_2z = & { in_data[59:51], in_data[34:32], in_data[26:19] };
  assign celloutsig_0_3z = & { in_data[85:82], in_data[59:51], in_data[34:32] };
  assign celloutsig_0_30z = & { celloutsig_0_22z[2], celloutsig_0_21z, celloutsig_0_9z[8:6], celloutsig_0_9z[3:0], celloutsig_0_7z, in_data[85:82], in_data[64], in_data[59:51], in_data[34:32], in_data[26:19] };
  assign celloutsig_1_0z = & in_data[160:158];
  assign celloutsig_1_4z = & in_data[153:133];
  assign celloutsig_0_4z = & { in_data[64], in_data[59:51], in_data[34:32], in_data[26:19] };
  assign celloutsig_1_6z = & celloutsig_1_5z[2:0];
  assign celloutsig_1_7z = & celloutsig_1_2z[12:9];
  assign celloutsig_1_3z = & celloutsig_1_2z[5:1];
  assign celloutsig_1_10z = celloutsig_1_2z[21:10] >>> { in_data[153:145], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_12z = { celloutsig_1_10z[8:5], celloutsig_1_7z } >>> { celloutsig_1_9z[12:10], celloutsig_1_3z, celloutsig_1_6z };
  assign celloutsig_1_18z = in_data[153:125] >>> { celloutsig_1_12z[0], celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_19z = celloutsig_1_9z[3:0] >>> celloutsig_1_5z;
  assign celloutsig_0_6z = { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z } >>> { in_data[20], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_7z = { celloutsig_0_6z[3:0], celloutsig_0_5z, celloutsig_0_3z } >>> in_data[28:23];
  assign celloutsig_0_9z = in_data[32:24] >>> { celloutsig_0_7z[1], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_7z };
  assign celloutsig_0_11z = { celloutsig_0_9z[7:0], celloutsig_0_2z } >>> { celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_0_21z = celloutsig_0_11z[7:0] >>> { celloutsig_0_11z[7:3], celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_0z };
  assign celloutsig_0_22z = celloutsig_0_21z[6:2] >>> celloutsig_0_11z[4:0];
  assign celloutsig_0_23z = { celloutsig_0_6z[4:1], celloutsig_0_5z } >>> celloutsig_0_9z[5:1];
  assign celloutsig_0_26z = { in_data[95], celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_3z } >>> { celloutsig_0_23z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_19z, celloutsig_0_1z };
  assign celloutsig_1_2z = { in_data[129:109], celloutsig_1_0z } >>> { in_data[181:168], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_5z = { in_data[148:146], celloutsig_1_4z } >>> { celloutsig_1_2z[20:18], celloutsig_1_0z };
  assign celloutsig_1_9z = { in_data[128:125], celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_6z } >>> { in_data[104:100], celloutsig_1_5z, celloutsig_1_5z };
  assign { out_data[156:128], out_data[99:96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_30z };
endmodule
