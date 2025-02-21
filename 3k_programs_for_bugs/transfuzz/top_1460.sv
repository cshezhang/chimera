/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [26:0] celloutsig_0_11z;
  wire [4:0] celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire [9:0] celloutsig_0_15z;
  wire [14:0] celloutsig_0_17z;
  wire [30:0] celloutsig_0_18z;
  wire [4:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [7:0] celloutsig_0_21z;
  wire celloutsig_0_23z;
  reg [2:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [11:0] celloutsig_0_27z;
  wire [5:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [9:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  reg [15:0] celloutsig_0_3z;
  wire [2:0] celloutsig_0_4z;
  wire [18:0] celloutsig_0_5z;
  wire [3:0] celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire [9:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire [13:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire [23:0] celloutsig_1_17z;
  wire [7:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  reg [13:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_16z = celloutsig_1_8z ? celloutsig_1_13z[8] : celloutsig_1_11z[0];
  assign celloutsig_0_32z = celloutsig_0_12z[2] ? celloutsig_0_26z : celloutsig_0_18z[22];
  assign celloutsig_1_0z = !(in_data[113] ? in_data[106] : in_data[100]);
  assign celloutsig_1_8z = !(celloutsig_1_6z ? celloutsig_1_4z : celloutsig_1_2z);
  assign celloutsig_1_19z = !(celloutsig_1_1z[4] ? celloutsig_1_5z[0] : in_data[120]);
  assign celloutsig_0_10z = !(celloutsig_0_2z[0] ? celloutsig_0_8z[3] : celloutsig_0_3z[0]);
  assign celloutsig_1_5z = { celloutsig_1_1z[9:8], celloutsig_1_4z } + { celloutsig_1_1z[0], celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_0_7z = in_data[7:4] + celloutsig_0_2z[5:2];
  assign celloutsig_1_11z = { in_data[158:156], celloutsig_1_9z } & celloutsig_1_1z[12:9];
  assign celloutsig_0_4z = celloutsig_0_2z[4:2] & celloutsig_0_2z[2:0];
  assign celloutsig_1_18z = { celloutsig_1_17z[11:7], celloutsig_1_17z[8], celloutsig_1_17z[8], celloutsig_1_17z[4] } & celloutsig_1_17z[15:8];
  assign celloutsig_0_9z = { celloutsig_0_8z[4:1], celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_0z } & celloutsig_0_5z[16:7];
  assign celloutsig_0_21z = in_data[69:62] & celloutsig_0_15z[8:1];
  assign celloutsig_0_0z = in_data[66:48] >= in_data[76:58];
  assign celloutsig_1_6z = { in_data[135], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z } >= celloutsig_1_1z[5:1];
  assign celloutsig_0_1z = { in_data[36:31], celloutsig_0_0z } >= { in_data[87:84], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_13z = celloutsig_1_1z % { 1'h1, celloutsig_1_1z[12], celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_10z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_7z };
  assign celloutsig_0_5z = { celloutsig_0_3z[6:4], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z } % { 1'h1, in_data[44:29], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_19z = { in_data[69:66], celloutsig_0_1z } % { 1'h1, celloutsig_0_7z };
  assign celloutsig_1_2z = celloutsig_1_1z[10:8] !== { in_data[159], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_26z = { celloutsig_0_5z[10:7], celloutsig_0_14z } !== celloutsig_0_3z[11:7];
  assign celloutsig_0_30z = { celloutsig_0_27z[7:3], celloutsig_0_26z, celloutsig_0_14z } !== celloutsig_0_17z[14:8];
  assign celloutsig_0_27z = ~ { celloutsig_0_21z, celloutsig_0_10z, celloutsig_0_25z };
  assign celloutsig_1_7z = celloutsig_1_6z & celloutsig_1_1z[6];
  assign celloutsig_1_10z = celloutsig_1_4z & celloutsig_1_8z;
  assign celloutsig_0_23z = celloutsig_0_2z[4] & celloutsig_0_12z[1];
  assign celloutsig_1_3z = | { celloutsig_1_2z, celloutsig_1_0z, in_data[186:169] };
  assign celloutsig_1_4z = | { celloutsig_1_2z, celloutsig_1_1z[13:6], celloutsig_1_0z };
  assign celloutsig_1_9z = | { celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_5z };
  assign celloutsig_1_14z = | { celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_0_14z = | celloutsig_0_3z[8:2];
  assign celloutsig_0_18z = { celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_17z[14:5], celloutsig_0_17z[9:5], celloutsig_0_0z } << { in_data[57:43], celloutsig_0_8z, celloutsig_0_9z };
  assign celloutsig_0_31z = { celloutsig_0_5z[18:12], celloutsig_0_0z, celloutsig_0_30z, celloutsig_0_30z } << { celloutsig_0_17z[6], celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_23z };
  assign celloutsig_0_8z = celloutsig_0_5z[11:6] - { celloutsig_0_5z[1:0], celloutsig_0_7z };
  assign celloutsig_0_15z = celloutsig_0_11z[11:2] - { celloutsig_0_5z[13:6], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_11z = { celloutsig_0_3z[15:6], celloutsig_0_3z, celloutsig_0_0z } ~^ { in_data[24:8], celloutsig_0_9z };
  assign celloutsig_0_12z = celloutsig_0_2z[4:0] ~^ celloutsig_0_11z[22:18];
  assign celloutsig_0_2z = in_data[69:64] ~^ in_data[23:18];
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_3z = 16'h0000;
    else if (clkin_data[0]) celloutsig_0_3z = { in_data[36:26], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z };
  always_latch
    if (!clkin_data[96]) celloutsig_1_1z = 14'h0000;
    else if (!clkin_data[64]) celloutsig_1_1z = in_data[112:99];
  always_latch
    if (celloutsig_1_19z) celloutsig_0_25z = 3'h0;
    else if (!clkin_data[32]) celloutsig_0_25z = celloutsig_0_11z[4:2];
  assign { celloutsig_0_17z[9:5], celloutsig_0_17z[14:10] } = ~ { celloutsig_0_12z, celloutsig_0_8z[4:0] };
  assign { celloutsig_1_17z[7], celloutsig_1_17z[8], celloutsig_1_17z[12:9], celloutsig_1_17z[4], celloutsig_1_17z[1], celloutsig_1_17z[3], celloutsig_1_17z[23:13] } = ~ { celloutsig_1_16z, celloutsig_1_14z, celloutsig_1_11z, celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_1z[11:2], celloutsig_1_0z };
  assign celloutsig_0_17z[4:0] = celloutsig_0_17z[9:5];
  assign { celloutsig_1_17z[6:5], celloutsig_1_17z[2], celloutsig_1_17z[0] } = { celloutsig_1_17z[8], celloutsig_1_17z[8], celloutsig_1_17z[8], celloutsig_1_17z[8] };
  assign { out_data[135:128], out_data[96], out_data[41:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_31z, celloutsig_0_32z };
endmodule
