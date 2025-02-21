/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [9:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [10:0] celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [16:0] celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [9:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  reg [9:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_36z;
  wire [12:0] celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [4:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [5:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire [3:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [2:0] celloutsig_1_8z;
  wire [11:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = ~(celloutsig_0_1z & celloutsig_0_2z);
  assign celloutsig_0_25z = ~(celloutsig_0_12z[8] & celloutsig_0_18z);
  assign celloutsig_1_11z = !(celloutsig_1_0z ? celloutsig_1_9z[5] : celloutsig_1_3z);
  assign celloutsig_0_14z = !(celloutsig_0_5z ? celloutsig_0_4z : celloutsig_0_7z);
  assign celloutsig_1_0z = ~((in_data[168] | in_data[181]) & in_data[133]);
  assign celloutsig_1_14z = ~((celloutsig_1_0z | celloutsig_1_9z[8]) & celloutsig_1_9z[8]);
  assign celloutsig_0_5z = ~((celloutsig_0_1z | in_data[66]) & celloutsig_0_1z);
  assign celloutsig_1_16z = ~((celloutsig_1_5z[2] | celloutsig_1_2z[2]) & celloutsig_1_5z[2]);
  assign celloutsig_0_8z = ~((celloutsig_0_2z | celloutsig_0_2z) & celloutsig_0_5z);
  assign celloutsig_0_26z = celloutsig_0_1z | celloutsig_0_14z;
  assign celloutsig_0_36z = celloutsig_0_10z ^ celloutsig_0_25z;
  assign celloutsig_1_10z = celloutsig_1_3z ^ celloutsig_1_5z[3];
  assign celloutsig_0_20z = ~(in_data[0] ^ celloutsig_0_12z[10]);
  assign celloutsig_0_2z = ~(in_data[69] ^ celloutsig_0_1z);
  assign celloutsig_1_8z = { celloutsig_1_5z[3:2], celloutsig_1_0z } + celloutsig_1_4z[2:0];
  assign celloutsig_0_9z = { celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_5z } + { celloutsig_0_0z[5:4], celloutsig_0_1z };
  assign celloutsig_0_37z = { celloutsig_0_19z[6:1], celloutsig_0_21z, celloutsig_0_26z, celloutsig_0_4z, celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_14z, celloutsig_0_26z } & { celloutsig_0_24z[3:1], celloutsig_0_27z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_28z, celloutsig_0_9z, celloutsig_0_15z, celloutsig_0_20z, celloutsig_0_5z };
  assign celloutsig_1_6z = celloutsig_1_4z[4:1] & celloutsig_1_4z[3:0];
  assign celloutsig_1_2z = { in_data[118:117], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z } / { 1'h1, in_data[124:122], celloutsig_1_0z, in_data[96] };
  assign celloutsig_1_5z = celloutsig_1_4z[4:1] / { 1'h1, in_data[172:170] };
  assign celloutsig_0_6z = { in_data[51:50], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z } / { 1'h1, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_3z, in_data[0] };
  assign celloutsig_0_19z = { celloutsig_0_17z[3:2], celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_6z } / { 1'h1, celloutsig_0_16z[15:10], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_2z };
  assign celloutsig_1_18z = { celloutsig_1_9z[8:3], celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_16z, celloutsig_1_12z, celloutsig_1_4z } == { celloutsig_1_9z[4:0], celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_14z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_14z, celloutsig_1_17z, celloutsig_1_6z };
  assign celloutsig_0_11z = { celloutsig_0_0z[9:1], celloutsig_0_7z, celloutsig_0_4z } == { celloutsig_0_6z[3:0], celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_0_10z = { celloutsig_0_6z[3:0], celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_2z } === in_data[52:33];
  assign celloutsig_0_1z = in_data[38:20] === in_data[77:59];
  assign celloutsig_0_28z = { in_data[7:3], celloutsig_0_15z, celloutsig_0_3z, celloutsig_0_9z } === celloutsig_0_19z;
  assign celloutsig_1_1z = { in_data[179], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } > { in_data[143:140], celloutsig_1_0z };
  assign celloutsig_1_3z = { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z } < { celloutsig_1_2z[2:1], celloutsig_1_1z };
  assign celloutsig_0_18z = { celloutsig_0_16z[4:0], celloutsig_0_4z } < celloutsig_0_16z[11:6];
  assign celloutsig_0_22z = celloutsig_0_12z[9:6] < celloutsig_0_17z;
  assign celloutsig_1_9z = { in_data[111:110], celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_4z } % { 1'h1, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_0_12z = { in_data[57:49], celloutsig_0_2z, celloutsig_0_2z } % { 1'h1, in_data[32:23] };
  assign celloutsig_0_17z = { celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_2z } % { 1'h1, celloutsig_0_12z[8:6] };
  assign celloutsig_0_7z = { in_data[27:21], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_4z } != { celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_1_4z = - { in_data[186:184], celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_16z = - { celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_0_3z = & { celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_1_12z = & { celloutsig_1_10z, in_data[144:139] };
  assign celloutsig_1_17z = & { celloutsig_1_11z, celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_0z, in_data[144:139] };
  assign celloutsig_0_21z = & { celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_1_19z = | { celloutsig_1_10z, celloutsig_1_7z, celloutsig_1_11z };
  assign celloutsig_0_15z = | { celloutsig_0_12z[10:3], celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_8z };
  assign celloutsig_1_7z = ^ { celloutsig_1_2z[2:0], celloutsig_1_6z };
  assign celloutsig_0_27z = ~((celloutsig_0_21z & celloutsig_0_14z) | celloutsig_0_5z);
  always_latch
    if (!clkin_data[0]) celloutsig_0_0z = 10'h000;
    else if (!celloutsig_1_19z) celloutsig_0_0z = in_data[53:44];
  always_latch
    if (clkin_data[0]) celloutsig_0_24z = 10'h000;
    else if (!celloutsig_1_19z) celloutsig_0_24z = { celloutsig_0_0z[8:3], celloutsig_0_17z };
  assign { out_data[128], out_data[96], out_data[32], out_data[12:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_36z, celloutsig_0_37z };
endmodule
