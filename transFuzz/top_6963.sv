/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [3:0] celloutsig_0_0z;
  wire celloutsig_0_1z;
  wire celloutsig_1_0z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [13:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [14:0] celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [7:0] celloutsig_1_4z;
  reg [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_6z = in_data[98] ? celloutsig_1_3z : celloutsig_1_5z[1];
  assign celloutsig_1_14z = ~(celloutsig_1_7z[1] | celloutsig_1_2z[0]);
  assign celloutsig_0_1z = ~((in_data[60] | in_data[34]) & celloutsig_0_0z[0]);
  assign celloutsig_1_1z = { in_data[108:96], celloutsig_1_0z, celloutsig_1_0z } + in_data[111:97];
  assign celloutsig_1_2z = celloutsig_1_1z[10:6] + { celloutsig_1_1z[10:8], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_18z = in_data[185:172] + { in_data[137:128], celloutsig_1_9z, celloutsig_1_7z };
  assign celloutsig_1_13z = celloutsig_1_7z >= { celloutsig_1_4z[7], celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_1_0z = in_data[172:164] >= in_data[108:100];
  assign celloutsig_1_9z = { in_data[104:97], celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_6z } || { celloutsig_1_1z[14:1], celloutsig_1_5z, celloutsig_1_3z };
  assign celloutsig_1_4z = { in_data[180:174], celloutsig_1_0z } * { celloutsig_1_1z[4:1], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_19z = { in_data[170:158], celloutsig_1_14z, celloutsig_1_18z, celloutsig_1_3z, celloutsig_1_13z, celloutsig_1_9z, celloutsig_1_7z } !== in_data[151:118];
  assign celloutsig_1_3z = & celloutsig_1_1z[14:11];
  assign celloutsig_1_7z = { celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z } - celloutsig_1_2z[4:2];
  always_latch
    if (celloutsig_1_18z[0]) celloutsig_0_0z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_0z = in_data[63:60];
  always_latch
    if (!clkin_data[64]) celloutsig_1_5z = 3'h0;
    else if (!clkin_data[32]) celloutsig_1_5z = celloutsig_1_2z[2:0];
  assign { out_data[141:128], out_data[96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_0z, celloutsig_0_1z };
endmodule
