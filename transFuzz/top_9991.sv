/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [4:0] celloutsig_0_12z;
  wire [6:0] celloutsig_0_13z;
  wire [9:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [2:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire [3:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [6:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  reg [15:0] celloutsig_0_25z;
  wire [11:0] celloutsig_0_26z;
  wire [4:0] celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire [24:0] celloutsig_0_2z;
  wire [6:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [2:0] celloutsig_0_32z;
  wire [7:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [3:0] celloutsig_0_37z;
  wire [5:0] celloutsig_0_3z;
  wire [7:0] celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire [10:0] celloutsig_0_4z;
  wire [5:0] celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  reg [2:0] celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire [11:0] celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire [18:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  reg [4:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [4:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_24z = !(celloutsig_0_4z[5] ? celloutsig_0_13z[5] : celloutsig_0_11z);
  assign celloutsig_0_36z = ~(celloutsig_0_14z[3] | celloutsig_0_20z[1]);
  assign celloutsig_0_45z = ~(celloutsig_0_16z[2] | celloutsig_0_1z[3]);
  assign celloutsig_1_14z = ~celloutsig_1_6z;
  assign celloutsig_0_8z = ~celloutsig_0_5z[1];
  assign celloutsig_0_10z = ~celloutsig_0_6z;
  assign celloutsig_1_8z = celloutsig_1_5z[1] ^ in_data[144];
  assign celloutsig_0_15z = celloutsig_0_0z ^ celloutsig_0_11z;
  assign celloutsig_0_19z = celloutsig_0_11z ^ celloutsig_0_4z[3];
  assign celloutsig_0_37z = { celloutsig_0_25z[14:12], celloutsig_0_6z } + { celloutsig_0_13z[3:2], celloutsig_0_21z, celloutsig_0_11z };
  assign celloutsig_0_4z = { celloutsig_0_3z[1:0], celloutsig_0_0z, celloutsig_0_1z } + { in_data[11:9], celloutsig_0_1z };
  assign celloutsig_0_2z = in_data[75:51] + { celloutsig_0_1z[4], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_23z = { celloutsig_0_2z[7:2], celloutsig_0_17z } + { celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_1_11z = { celloutsig_1_0z[2:1], celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_7z } <= celloutsig_1_1z[12:4];
  assign celloutsig_0_21z = { celloutsig_0_2z[10:7], celloutsig_0_8z, celloutsig_0_9z } && celloutsig_0_1z;
  assign celloutsig_0_0z = ! in_data[29:27];
  assign celloutsig_0_35z = ! { celloutsig_0_3z[3:0], celloutsig_0_31z, celloutsig_0_19z, celloutsig_0_30z, celloutsig_0_32z, celloutsig_0_6z };
  assign celloutsig_0_7z = ! celloutsig_0_5z;
  assign celloutsig_1_12z = ! { celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_9z };
  assign celloutsig_1_1z = { in_data[180:168], celloutsig_1_0z } % { 1'h1, in_data[126:109] };
  assign celloutsig_1_18z = { celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_14z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_12z, celloutsig_1_0z[3], celloutsig_1_8z } % { 1'h1, in_data[137:127] };
  assign celloutsig_0_12z = { celloutsig_0_3z[1:0], celloutsig_0_9z } % { 1'h1, in_data[59:57], celloutsig_0_7z };
  assign celloutsig_0_16z = celloutsig_0_2z[24:22] % { 1'h1, celloutsig_0_4z[8:7] };
  assign celloutsig_0_3z = { celloutsig_0_1z[5:1], celloutsig_0_0z } % { 1'h1, celloutsig_0_2z[21:17] };
  assign celloutsig_1_6z = celloutsig_1_1z[17:11] !== in_data[181:175];
  assign celloutsig_1_9z = { celloutsig_1_7z[3:2], celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_6z } | celloutsig_1_1z[4:0];
  assign celloutsig_0_13z = { celloutsig_0_3z[3:2], celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_8z } | { celloutsig_0_4z[5:0], celloutsig_0_8z };
  assign celloutsig_0_30z = { celloutsig_0_25z[9:6], celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_29z } | { celloutsig_0_20z[1], celloutsig_0_16z, celloutsig_0_29z, celloutsig_0_10z, celloutsig_0_15z };
  assign celloutsig_0_62z = celloutsig_0_45z & celloutsig_0_35z;
  assign celloutsig_0_61z = ^ { celloutsig_0_32z[1], celloutsig_0_44z, celloutsig_0_37z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_34z, celloutsig_0_19z };
  assign celloutsig_0_29z = ^ { celloutsig_0_27z, celloutsig_0_6z, celloutsig_0_6z };
  assign celloutsig_0_31z = ^ { celloutsig_0_9z, celloutsig_0_16z };
  assign celloutsig_1_19z = { celloutsig_1_9z[4:2], celloutsig_1_0z[3] } << celloutsig_1_0z[5:2];
  assign celloutsig_0_1z = in_data[67:60] << { in_data[29:23], celloutsig_0_0z };
  assign celloutsig_0_18z = { celloutsig_0_3z[2:1], celloutsig_0_10z } << { celloutsig_0_9z[1:0], celloutsig_0_17z };
  assign celloutsig_0_20z = celloutsig_0_12z[4:1] <<< celloutsig_0_4z[7:4];
  assign celloutsig_0_32z = celloutsig_0_18z >>> celloutsig_0_26z[11:9];
  assign celloutsig_0_34z = { celloutsig_0_25z[0], celloutsig_0_24z, celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_0z } >>> { celloutsig_0_4z[7], celloutsig_0_8z, celloutsig_0_27z, celloutsig_0_8z };
  assign celloutsig_0_44z = { celloutsig_0_2z[17:12], celloutsig_0_24z, celloutsig_0_36z } >>> { celloutsig_0_13z, celloutsig_0_36z };
  assign celloutsig_1_0z = in_data[101:96] >>> in_data[139:134];
  assign celloutsig_0_14z = { celloutsig_0_1z[2:1], celloutsig_0_1z } >>> { celloutsig_0_1z[6:5], celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_7z };
  assign celloutsig_0_26z = { celloutsig_0_2z[23:13], celloutsig_0_8z } >>> celloutsig_0_2z[13:2];
  assign celloutsig_0_27z = { celloutsig_0_25z[14:13], celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_24z } >>> { in_data[33:30], celloutsig_0_15z };
  assign celloutsig_0_5z = in_data[78:73] ~^ celloutsig_0_4z[5:0];
  assign celloutsig_1_5z = { celloutsig_1_1z[11:10], celloutsig_1_2z, celloutsig_1_2z } ~^ celloutsig_1_0z[4:1];
  always_latch
    if (clkin_data[64]) celloutsig_1_7z = 5'h00;
    else if (!clkin_data[0]) celloutsig_1_7z = { celloutsig_1_5z[2:0], celloutsig_1_6z, celloutsig_1_6z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_9z = 3'h0;
    else if (celloutsig_1_18z[0]) celloutsig_0_9z = celloutsig_0_2z[13:11];
  always_latch
    if (clkin_data[32]) celloutsig_0_25z = 16'h0000;
    else if (!celloutsig_1_18z[0]) celloutsig_0_25z = { celloutsig_0_23z[3:1], celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_24z, celloutsig_0_24z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_15z };
  assign celloutsig_0_6z = ~((celloutsig_0_1z[6] & celloutsig_0_3z[4]) | (celloutsig_0_0z & celloutsig_0_0z));
  assign celloutsig_1_2z = ~((celloutsig_1_1z[4] & in_data[163]) | (celloutsig_1_0z[1] & celloutsig_1_0z[5]));
  assign celloutsig_1_4z = ~((celloutsig_1_2z & celloutsig_1_2z) | (in_data[157] & celloutsig_1_0z[5]));
  assign celloutsig_0_11z = ~((celloutsig_0_10z & celloutsig_0_0z) | (celloutsig_0_9z[1] & celloutsig_0_9z[0]));
  assign celloutsig_0_17z = ~((celloutsig_0_16z[0] & celloutsig_0_7z) | (celloutsig_0_6z & celloutsig_0_1z[0]));
  assign { out_data[139:128], out_data[99:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_61z, celloutsig_0_62z };
endmodule
