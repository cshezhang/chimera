/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [11:0] celloutsig_0_14z;
  wire [3:0] celloutsig_0_15z;
  reg [3:0] celloutsig_0_17z;
  wire [11:0] celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  reg [8:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [3:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  reg [5:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  wire [6:0] celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~(in_data[36] ^ in_data[52]);
  assign celloutsig_1_11z = ~(celloutsig_1_1z ^ celloutsig_1_0z[3]);
  assign celloutsig_0_24z = { celloutsig_0_15z[2:0], celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_21z, celloutsig_0_21z } == { celloutsig_0_14z[10:6], celloutsig_0_11z, celloutsig_0_9z };
  assign celloutsig_1_6z = { celloutsig_1_5z[2], celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_1z } == { celloutsig_1_5z[4:3], celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_19z = { in_data[154:152], celloutsig_1_15z } == { celloutsig_1_5z[2:0], celloutsig_1_14z };
  assign celloutsig_0_12z = { celloutsig_0_8z[3:1], celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_1z } == { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_0z };
  assign celloutsig_1_2z = { in_data[161], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z } <= in_data[154:141];
  assign celloutsig_1_18z = { celloutsig_1_5z[3:1], celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_11z, celloutsig_1_3z } <= { in_data[155:147], celloutsig_1_14z };
  assign celloutsig_0_4z = { in_data[43:19], celloutsig_0_3z } <= { in_data[56:36], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_7z = in_data[51:47] <= { celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_5z };
  assign celloutsig_0_8z = { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_3z } % { 1'h1, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_1_8z = { celloutsig_1_2z, celloutsig_1_7z[1:0], celloutsig_1_0z } * in_data[153:147];
  assign celloutsig_0_18z = { celloutsig_0_17z[2], celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_15z } * { celloutsig_0_7z, celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_13z };
  assign celloutsig_1_0z = in_data[167] ? in_data[128:125] : in_data[175:172];
  assign celloutsig_1_7z[1:0] = celloutsig_1_3z ? { celloutsig_1_1z, celloutsig_1_2z } : { 1'h0, celloutsig_1_6z };
  assign { celloutsig_0_14z[10:7], celloutsig_0_14z[5:4], celloutsig_0_14z[6], celloutsig_0_14z[2], celloutsig_0_14z[0] } = celloutsig_0_2z ? { celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_9z } : { celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_5z, 1'h0, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_0_15z = celloutsig_0_1z ? { celloutsig_0_8z[2:0], celloutsig_0_7z } : { celloutsig_0_10z, celloutsig_0_2z, 1'h0, celloutsig_0_3z };
  assign celloutsig_0_19z = celloutsig_0_4z ? { celloutsig_0_15z[3:1], celloutsig_0_12z } : celloutsig_0_18z[11:8];
  always_latch
    if (clkin_data[64]) celloutsig_1_5z = 6'h00;
    else if (!clkin_data[32]) celloutsig_1_5z = { in_data[111:108], celloutsig_1_4z, celloutsig_1_3z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_17z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_17z = { celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_11z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_20z = 9'h000;
    else if (clkin_data[0]) celloutsig_0_20z = { celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_25z = ~((celloutsig_0_18z[5] & celloutsig_0_17z[2]) | (celloutsig_0_7z & celloutsig_0_12z));
  assign celloutsig_1_1z = ~((celloutsig_1_0z[1] & celloutsig_1_0z[3]) | (in_data[112] & in_data[178]));
  assign celloutsig_1_3z = ~((celloutsig_1_1z & celloutsig_1_1z) | (celloutsig_1_1z & celloutsig_1_1z));
  assign celloutsig_1_4z = ~((celloutsig_1_2z & in_data[126]) | (celloutsig_1_1z & celloutsig_1_3z));
  assign celloutsig_0_3z = ~((celloutsig_0_0z & in_data[7]) | (celloutsig_0_1z & in_data[63]));
  assign celloutsig_1_14z = ~((celloutsig_1_3z & celloutsig_1_3z) | (celloutsig_1_1z & celloutsig_1_8z[2]));
  assign celloutsig_1_15z = ~((celloutsig_1_6z & celloutsig_1_1z) | (celloutsig_1_2z & in_data[106]));
  assign celloutsig_0_5z = ~((in_data[82] & celloutsig_0_0z) | (celloutsig_0_0z & celloutsig_0_0z));
  assign celloutsig_0_6z = ~((celloutsig_0_0z & celloutsig_0_3z) | (celloutsig_0_0z & celloutsig_0_3z));
  assign celloutsig_0_9z = ~((celloutsig_0_4z & celloutsig_0_2z) | (celloutsig_0_1z & celloutsig_0_2z));
  assign celloutsig_0_1z = ~((in_data[59] & in_data[91]) | (in_data[0] & in_data[26]));
  assign celloutsig_0_10z = ~((celloutsig_0_6z & in_data[49]) | (celloutsig_0_8z[3] & celloutsig_0_7z));
  assign celloutsig_0_11z = ~((celloutsig_0_5z & celloutsig_0_4z) | (celloutsig_0_0z & celloutsig_0_5z));
  assign celloutsig_0_13z = ~((celloutsig_0_1z & celloutsig_0_10z) | (celloutsig_0_7z & celloutsig_0_4z));
  assign celloutsig_0_21z = ~((celloutsig_0_19z[0] & celloutsig_0_20z[4]) | (celloutsig_0_20z[4] & celloutsig_0_9z));
  assign celloutsig_0_2z = ~((in_data[42] & in_data[36]) | (in_data[47] & in_data[61]));
  assign { celloutsig_0_14z[11], celloutsig_0_14z[3], celloutsig_0_14z[1] } = { celloutsig_0_9z, celloutsig_0_14z[6], celloutsig_0_5z };
  assign celloutsig_1_7z[2] = celloutsig_1_2z;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_24z, celloutsig_0_25z };
endmodule
