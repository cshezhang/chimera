/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [9:0] _00_;
  wire celloutsig_0_0z;
  wire [4:0] celloutsig_0_1z;
  wire [3:0] celloutsig_0_2z;
  wire celloutsig_0_4z;
  wire [23:0] celloutsig_0_5z;
  wire [5:0] celloutsig_0_6z;
  wire [13:0] celloutsig_0_9z;
  wire [8:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire [13:0] celloutsig_1_12z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [5:0] celloutsig_1_4z;
  wire [8:0] celloutsig_1_5z;
  wire [14:0] celloutsig_1_7z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_7z = { celloutsig_1_4z[5:2], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z } + { in_data[191:183], celloutsig_1_1z };
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _00_ <= 10'h000;
    else _00_ <= { in_data[36:32], celloutsig_0_1z };
  reg [9:0] _03_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _03_ <= 10'h000;
    else _03_ <= { _00_[9:1], celloutsig_0_0z };
  assign out_data[41:32] = _03_;
  assign celloutsig_0_1z = { in_data[87:84], celloutsig_0_0z } & in_data[36:32];
  assign celloutsig_1_12z = celloutsig_1_7z[13:0] & { celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_11z };
  assign celloutsig_1_1z = in_data[116:111] / { 1'h1, in_data[185:181] };
  assign celloutsig_0_0z = in_data[79:74] == in_data[85:80];
  assign celloutsig_1_11z = in_data[126:118] == celloutsig_1_5z;
  assign celloutsig_1_16z = celloutsig_1_0z[5:1] == celloutsig_1_4z[5:1];
  assign celloutsig_0_4z = celloutsig_0_1z[4:1] > { celloutsig_0_1z[3:1], celloutsig_0_0z };
  assign celloutsig_1_2z = celloutsig_1_0z[0] & ~(celloutsig_1_1z[5]);
  assign celloutsig_1_4z = celloutsig_1_0z[8:3] % { 1'h1, celloutsig_1_1z[3:1], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_0z = in_data[111:103] * in_data[132:124];
  assign celloutsig_1_5z = { celloutsig_1_4z[3:2], celloutsig_1_1z, celloutsig_1_2z } * { celloutsig_1_1z[3:1], celloutsig_1_1z };
  assign celloutsig_0_2z = celloutsig_0_1z[4:1] * celloutsig_0_1z[4:1];
  assign celloutsig_1_19z = celloutsig_1_0z[3:1] | { celloutsig_1_0z[3:2], celloutsig_1_16z };
  assign celloutsig_1_18z = celloutsig_1_12z[11] & celloutsig_1_2z;
  assign celloutsig_0_5z = in_data[23:0] >> in_data[87:64];
  assign celloutsig_0_6z = _00_[6:1] <<< { celloutsig_0_1z[2], celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_9z = { _00_[8:5], out_data[41:32] } <<< { celloutsig_0_5z[23], celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_1z };
  assign { out_data[128], out_data[98:96], out_data[13:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_9z };
endmodule
