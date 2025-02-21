/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  reg [14:0] celloutsig_0_1z;
  wire [2:0] celloutsig_0_2z;
  wire [17:0] celloutsig_0_4z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire [17:0] celloutsig_1_19z;
  wire [3:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [5:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [7:0] celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_4z = ~celloutsig_1_2z;
  assign celloutsig_1_13z = ~((celloutsig_1_8z[0] | celloutsig_1_7z[6]) & celloutsig_1_2z);
  assign celloutsig_0_8z = { celloutsig_0_1z[13:1], celloutsig_0_0z } == celloutsig_0_4z[16:3];
  assign celloutsig_1_18z = { in_data[118:115], celloutsig_1_6z, celloutsig_1_5z } == { celloutsig_1_1z, celloutsig_1_13z, celloutsig_1_6z };
  assign celloutsig_1_6z = ! { celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_1_14z = ! celloutsig_1_1z;
  assign celloutsig_1_0z = in_data[137:121] || in_data[151:135];
  assign celloutsig_0_0z = in_data[7:5] < in_data[85:83];
  assign celloutsig_0_7z = in_data[57] & ~(celloutsig_0_2z[0]);
  assign celloutsig_1_2z = celloutsig_1_1z[3] & ~(celloutsig_1_1z[0]);
  assign celloutsig_1_19z = celloutsig_1_8z[1] ? in_data[137:120] : { in_data[160:146], celloutsig_1_13z, celloutsig_1_14z, celloutsig_1_0z };
  assign celloutsig_1_5z = ~^ celloutsig_1_3z[5:1];
  assign celloutsig_0_4z = in_data[78:61] >> { celloutsig_0_1z[14:3], celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_1_8z = celloutsig_1_3z[5:2] >> celloutsig_1_1z;
  assign celloutsig_1_1z = { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } << { in_data[162], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_2z = celloutsig_0_1z[10:8] << in_data[3:1];
  assign celloutsig_1_7z = { celloutsig_1_3z[5:1], celloutsig_1_3z[1], celloutsig_1_6z, celloutsig_1_2z } >>> { in_data[161:160], celloutsig_1_3z[5:1], celloutsig_1_3z[1] };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_1z = 15'h0000;
    else if (clkin_data[0]) celloutsig_0_1z = in_data[65:51];
  assign { celloutsig_1_3z[1], celloutsig_1_3z[5:2] } = ~ { celloutsig_1_2z, in_data[187:184] };
  assign celloutsig_1_3z[0] = celloutsig_1_3z[1];
  assign { out_data[128], out_data[113:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_7z, celloutsig_0_8z };
endmodule
