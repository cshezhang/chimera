/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [13:0] celloutsig_0_10z;
  wire [3:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [6:0] celloutsig_0_14z;
  wire [8:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire [2:0] celloutsig_0_2z;
  wire [2:0] celloutsig_0_3z;
  reg [5:0] celloutsig_0_4z;
  wire [18:0] celloutsig_0_5z;
  wire [5:0] celloutsig_0_7z;
  wire [3:0] celloutsig_0_8z;
  wire [11:0] celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [15:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire [20:0] celloutsig_1_18z;
  wire [14:0] celloutsig_1_19z;
  wire [7:0] celloutsig_1_1z;
  wire [2:0] celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [11:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_19z = { in_data[183:181], celloutsig_1_6z } + { in_data[156:144], celloutsig_1_17z, celloutsig_1_15z };
  assign celloutsig_0_10z = { celloutsig_0_5z[15:5], celloutsig_0_3z } + celloutsig_0_5z[15:2];
  assign celloutsig_0_2z = in_data[42:40] + { in_data[94:93], celloutsig_0_0z };
  assign celloutsig_1_0z = in_data[180:177] + in_data[176:173];
  assign celloutsig_0_11z = celloutsig_0_4z[5:2] & celloutsig_0_8z;
  assign celloutsig_1_9z = { celloutsig_1_0z[2], celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_3z } == { in_data[112:111], celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_1_12z = celloutsig_1_1z[7:4] === { celloutsig_1_2z[1:0], celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_1_15z = { celloutsig_1_13z, celloutsig_1_1z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_13z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_5z } < { celloutsig_1_14z[11:2], celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_14z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_8z };
  assign celloutsig_0_13z = celloutsig_0_2z < celloutsig_0_4z[3:1];
  assign celloutsig_1_8z = celloutsig_1_6z[10:0] < { celloutsig_1_6z[6:1], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_5z };
  assign celloutsig_1_10z = { celloutsig_1_6z[9:8], celloutsig_1_8z } < celloutsig_1_6z[5:3];
  assign celloutsig_1_11z = { in_data[125:124], celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_8z } < { celloutsig_1_0z[3], celloutsig_1_0z };
  assign celloutsig_1_13z = celloutsig_1_9z & ~(celloutsig_1_3z[1]);
  assign celloutsig_0_5z = in_data[45:27] % { 1'h1, in_data[94:87], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_16z = { celloutsig_0_4z[4:3], celloutsig_0_12z, celloutsig_0_4z } % { 1'h1, celloutsig_0_9z[7:1], celloutsig_0_13z };
  assign celloutsig_0_7z = { in_data[60:59], celloutsig_0_1z, celloutsig_0_2z } * { celloutsig_0_5z[17:15], celloutsig_0_3z };
  assign celloutsig_1_3z = - celloutsig_1_0z[3:1];
  assign celloutsig_0_14z = { celloutsig_0_5z[15:10], celloutsig_0_1z } | { celloutsig_0_3z, celloutsig_0_11z };
  assign celloutsig_1_14z = { celloutsig_1_6z[11:1], celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_13z } | { in_data[134], celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_5z };
  assign celloutsig_0_0z = ~^ in_data[37:8];
  assign celloutsig_1_17z = ~^ { celloutsig_1_14z[13:6], celloutsig_1_0z, celloutsig_1_8z };
  assign celloutsig_0_12z = ~^ { celloutsig_0_7z[5:1], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_10z };
  assign celloutsig_0_17z = ~^ { celloutsig_0_11z[2:0], celloutsig_0_12z, celloutsig_0_12z };
  assign celloutsig_0_1z = ^ in_data[80:68];
  assign celloutsig_1_5z = ^ { celloutsig_1_2z[1:0], celloutsig_1_4z };
  assign celloutsig_0_3z = celloutsig_0_2z >>> { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_8z = celloutsig_0_4z[3:0] - { celloutsig_0_4z[4], celloutsig_0_2z };
  assign celloutsig_1_1z = in_data[142:135] - in_data[186:179];
  assign celloutsig_1_2z = in_data[185:183] ~^ celloutsig_1_1z[6:4];
  assign celloutsig_1_18z = { in_data[189:179], celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_0z } ^ { celloutsig_1_3z[2:1], celloutsig_1_13z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_9z };
  assign celloutsig_0_9z = { in_data[25:15], celloutsig_0_0z } ^ in_data[42:31];
  assign celloutsig_0_18z = { celloutsig_0_14z[3], celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_3z } ^ celloutsig_0_16z[7:2];
  assign celloutsig_1_6z = in_data[114:103] ^ { celloutsig_1_2z[0], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z };
  always_latch
    if (clkin_data[0]) celloutsig_0_4z = 6'h00;
    else if (!celloutsig_1_19z[0]) celloutsig_0_4z = { celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_1_4z = ~((celloutsig_1_0z[3] & celloutsig_1_2z[0]) | (celloutsig_1_3z[0] & in_data[138]));
  assign celloutsig_1_7z = ~((celloutsig_1_4z & celloutsig_1_2z[1]) | (celloutsig_1_0z[3] & celloutsig_1_1z[7]));
  assign { out_data[148:128], out_data[110:96], out_data[32], out_data[5:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_17z, celloutsig_0_18z };
endmodule
