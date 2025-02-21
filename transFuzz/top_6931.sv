/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_16z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  reg [6:0] celloutsig_0_31z;
  wire celloutsig_0_3z;
  wire [5:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [13:0] celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [4:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [4:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  reg [9:0] celloutsig_1_3z;
  wire [8:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [6:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_17z = celloutsig_1_3z[7] ? celloutsig_1_4z[4] : celloutsig_1_9z[0];
  assign celloutsig_0_0z = !(in_data[60] ? in_data[70] : in_data[37]);
  assign celloutsig_1_10z = !(celloutsig_1_0z ? celloutsig_1_9z[2] : celloutsig_1_2z);
  assign celloutsig_1_6z = ~(celloutsig_1_3z[0] | celloutsig_1_5z);
  assign celloutsig_1_12z = ~(celloutsig_1_9z[4] | celloutsig_1_4z[5]);
  assign celloutsig_0_16z = ~(celloutsig_0_4z[1] | celloutsig_0_1z);
  assign celloutsig_0_1z = ~(in_data[67] | in_data[31]);
  assign celloutsig_0_19z = ~(celloutsig_0_1z | celloutsig_0_7z[10]);
  assign celloutsig_1_16z = ~celloutsig_1_1z[2];
  assign celloutsig_0_9z = ~celloutsig_0_3z;
  assign celloutsig_0_30z = celloutsig_0_1z | celloutsig_0_16z;
  assign celloutsig_1_9z = { celloutsig_1_3z[5:0], celloutsig_1_6z } / { 1'h1, celloutsig_1_4z[6:2], in_data[96] };
  assign celloutsig_1_4z = { celloutsig_1_1z[3:1], celloutsig_1_2z, celloutsig_1_1z } / { 1'h1, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_19z = celloutsig_1_9z[3:0] && { celloutsig_1_3z[8:6], celloutsig_1_16z };
  assign celloutsig_0_6z = { celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_0z } || { celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_1_5z = celloutsig_1_1z[2] & ~(celloutsig_1_1z[4]);
  assign celloutsig_0_4z = in_data[44:39] * { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_1_15z = { celloutsig_1_1z[4:1], celloutsig_1_5z } * celloutsig_1_1z;
  assign celloutsig_1_1z = celloutsig_1_0z ? in_data[160:156] : in_data[187:183];
  assign celloutsig_0_3z = { in_data[83:66], celloutsig_0_1z } !== in_data[41:23];
  assign celloutsig_1_18z = { celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_15z, celloutsig_1_13z, celloutsig_1_14z, celloutsig_1_13z, celloutsig_1_10z } !== { celloutsig_1_7z, celloutsig_1_17z, celloutsig_1_11z, celloutsig_1_13z, celloutsig_1_9z };
  assign celloutsig_0_5z = in_data[64:60] !== { celloutsig_0_4z[5:3], celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_1_13z = | { in_data[112], celloutsig_1_2z, celloutsig_1_11z, celloutsig_1_3z };
  assign celloutsig_0_2z = | { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_14z = celloutsig_1_12z & celloutsig_1_7z;
  assign celloutsig_1_2z = | { celloutsig_1_1z, in_data[98] };
  assign celloutsig_1_7z = | { celloutsig_1_6z, celloutsig_1_3z[2:1], celloutsig_1_0z };
  assign celloutsig_0_7z = { celloutsig_0_4z[5:1], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_6z } <<< { in_data[44:33], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_0z = ~((in_data[116] & in_data[123]) | in_data[117]);
  always_latch
    if (!clkin_data[64]) celloutsig_1_3z = 10'h000;
    else if (clkin_data[0]) celloutsig_1_3z = { celloutsig_1_1z, celloutsig_1_1z };
  always_latch
    if (clkin_data[32]) celloutsig_0_31z = 7'h00;
    else if (celloutsig_1_19z) celloutsig_0_31z = { celloutsig_0_4z[5:2], celloutsig_0_9z, celloutsig_0_19z, celloutsig_0_19z };
  assign celloutsig_1_11z = ~((celloutsig_1_6z & celloutsig_1_9z[3]) | (celloutsig_1_2z & celloutsig_1_5z));
  assign { out_data[128], out_data[96], out_data[32], out_data[6:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_30z, celloutsig_0_31z };
endmodule
