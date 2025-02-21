/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [20:0] _00_;
  wire celloutsig_0_0z;
  wire [4:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire [4:0] celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire [7:0] celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [12:0] celloutsig_0_8z;
  wire [2:0] celloutsig_1_0z;
  wire [8:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [7:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [2:0] celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [14:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [7:0] celloutsig_1_6z;
  wire [20:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [3:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _00_ <= 21'h000000;
    else _00_ <= { in_data[58:39], celloutsig_0_3z };
  assign celloutsig_0_0z = in_data[15:13] == in_data[24:22];
  assign celloutsig_1_15z = { celloutsig_1_11z, celloutsig_1_2z, celloutsig_1_5z } == celloutsig_1_14z[7:5];
  assign celloutsig_0_15z = { celloutsig_0_2z[2:0], celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_13z } == { celloutsig_0_10z[4:1], celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_1_2z = in_data[114:98] == { in_data[143:134], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_5z = { in_data[119:117], celloutsig_1_2z } == celloutsig_1_3z[8:5];
  assign celloutsig_0_3z = celloutsig_0_2z[6:0] == { celloutsig_0_2z[5:1], celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_13z = { celloutsig_0_2z[6:5], celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_6z } > { in_data[15:2], celloutsig_0_2z };
  assign celloutsig_1_11z = { celloutsig_1_6z[4], celloutsig_1_2z, celloutsig_1_0z } > celloutsig_1_10z[7:3];
  assign celloutsig_1_12z = celloutsig_1_7z[13:4] > { celloutsig_1_2z, celloutsig_1_10z };
  assign celloutsig_0_7z = ! in_data[80:70];
  assign celloutsig_0_11z = ! celloutsig_0_8z[7:5];
  assign celloutsig_0_1z = ! { in_data[12:5], celloutsig_0_0z };
  assign celloutsig_0_5z = { celloutsig_0_2z[7:3], celloutsig_0_1z } < { celloutsig_0_2z[6:2], celloutsig_0_3z };
  assign celloutsig_0_6z = celloutsig_0_2z[5:1] < _00_[7:3];
  assign celloutsig_1_1z = in_data[186:184] < in_data[183:181];
  assign celloutsig_1_4z = { celloutsig_1_3z[13], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z } < in_data[190:169];
  assign celloutsig_1_8z = { celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_0z } < { celloutsig_1_7z[16:4], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_0_8z = { celloutsig_0_2z[5:2], celloutsig_0_2z, celloutsig_0_7z } % { 1'h1, in_data[54:44], celloutsig_0_5z };
  assign celloutsig_0_17z = { celloutsig_0_2z[6:4], celloutsig_0_0z, celloutsig_0_6z } % { 1'h1, in_data[94], celloutsig_0_7z, celloutsig_0_15z, celloutsig_0_1z };
  assign celloutsig_1_7z = { celloutsig_1_3z[5:0], celloutsig_1_3z } % { 1'h1, in_data[109:105], celloutsig_1_3z[14:1], in_data[96] };
  assign celloutsig_1_9z = { celloutsig_1_6z[3:1], celloutsig_1_2z } % { 1'h1, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_4z };
  assign celloutsig_1_14z = celloutsig_1_7z[9:2] % { 1'h1, celloutsig_1_7z[10:4] };
  assign celloutsig_1_18z = { celloutsig_1_7z[18:17], celloutsig_1_2z } <<< { celloutsig_1_7z[7], celloutsig_1_15z, celloutsig_1_12z };
  assign celloutsig_0_10z = _00_[13:9] <<< celloutsig_0_8z[5:1];
  assign celloutsig_0_18z = { _00_[20:17], celloutsig_0_5z, celloutsig_0_13z } <<< { celloutsig_0_2z[4:1], celloutsig_0_0z, celloutsig_0_15z };
  assign celloutsig_1_19z = celloutsig_1_9z ^ celloutsig_1_3z[7:4];
  assign celloutsig_1_0z = in_data[180:178] ^ in_data[174:172];
  assign celloutsig_0_2z = { in_data[20:18], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z } ^ in_data[9:2];
  assign celloutsig_1_3z = { celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z } ^ in_data[160:146];
  assign celloutsig_1_6z = { in_data[178], celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_2z } ^ in_data[147:140];
  assign celloutsig_1_10z = { in_data[150:144], celloutsig_1_1z, celloutsig_1_1z } ^ celloutsig_1_3z[13:5];
  assign { out_data[130:128], out_data[99:96], out_data[36:32], out_data[5:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_17z, celloutsig_0_18z };
endmodule
