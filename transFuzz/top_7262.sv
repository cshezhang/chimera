/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] celloutsig_0_0z;
  wire celloutsig_0_1z;
  wire [5:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [6:0] celloutsig_1_12z;
  wire [3:0] celloutsig_1_14z;
  wire [9:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [17:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire [16:0] celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire [12:0] celloutsig_1_6z;
  wire [6:0] celloutsig_1_7z;
  wire [10:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_1z = ! in_data[139:123];
  assign celloutsig_1_18z = celloutsig_1_8z[3:1] < { celloutsig_1_5z[3], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_9z = celloutsig_1_8z[2] & ~(celloutsig_1_2z);
  assign celloutsig_1_3z = in_data[132:130] % { 1'h1, in_data[151:150] };
  assign celloutsig_1_17z = { celloutsig_1_12z[2:1], celloutsig_1_5z, celloutsig_1_5z } % { 1'h1, in_data[185:177] };
  assign celloutsig_1_12z = { celloutsig_1_1z, celloutsig_1_0z } % { 1'h1, celloutsig_1_5z[2:0], celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_6z = { celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_5z } * { in_data[177:175], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_1_7z = { celloutsig_1_5z[3], celloutsig_1_0z } * celloutsig_1_6z[8:2];
  assign celloutsig_1_14z = celloutsig_1_10z ? { celloutsig_1_4z[10:8], 1'h1 } : celloutsig_1_12z[6:3];
  assign celloutsig_1_19z = celloutsig_1_7z[4] ? { celloutsig_1_5z, celloutsig_1_14z, celloutsig_1_17z } : { celloutsig_1_4z, celloutsig_1_9z };
  assign celloutsig_1_2z = ~^ { in_data[154:136], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_10z = ~^ celloutsig_1_5z;
  assign celloutsig_0_1z = ~^ { in_data[89:79], celloutsig_0_0z };
  assign celloutsig_1_5z = celloutsig_1_4z[4:1] >> celloutsig_1_0z[3:0];
  assign celloutsig_1_4z = { celloutsig_1_3z[1], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z } - { in_data[126:114], celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_1_8z = celloutsig_1_6z[11:1] - { celloutsig_1_7z[5:2], celloutsig_1_3z, celloutsig_1_5z };
  assign celloutsig_1_0z = in_data[105:100] - in_data[185:180];
  always_latch
    if (!clkin_data[32]) celloutsig_0_0z = 3'h0;
    else if (!celloutsig_1_18z) celloutsig_0_0z = in_data[72:70];
  assign { out_data[128], out_data[113:96], out_data[34:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_0z, celloutsig_0_1z };
endmodule
