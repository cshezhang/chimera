/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [5:0] _00_;
  wire celloutsig_0_0z;
  wire [4:0] celloutsig_0_10z;
  wire [15:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [12:0] celloutsig_0_16z;
  wire [10:0] celloutsig_0_17z;
  wire celloutsig_0_1z;
  wire [9:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [21:0] celloutsig_0_25z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [21:0] celloutsig_0_2z;
  wire [40:0] celloutsig_0_30z;
  wire [2:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [7:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire [3:0] celloutsig_0_5z;
  reg [3:0] celloutsig_0_6z;
  wire [3:0] celloutsig_0_7z;
  wire [8:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [7:0] celloutsig_1_2z;
  wire [11:0] celloutsig_1_4z;
  wire [26:0] celloutsig_1_5z;
  wire [35:0] celloutsig_1_7z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_18z = celloutsig_1_11z ? celloutsig_1_1z : celloutsig_1_11z;
  assign celloutsig_0_12z = celloutsig_0_10z[0] ? celloutsig_0_11z[12] : celloutsig_0_2z[7];
  assign celloutsig_1_11z = ~(celloutsig_1_5z[7] | celloutsig_1_7z[20]);
  assign celloutsig_0_51z = celloutsig_0_28z | ~(celloutsig_0_38z[0]);
  assign celloutsig_0_27z = in_data[36] | ~(celloutsig_0_1z);
  assign celloutsig_0_20z = { celloutsig_0_8z[8:2], celloutsig_0_12z, celloutsig_0_14z, celloutsig_0_1z } + { celloutsig_0_2z[20:15], celloutsig_0_7z };
  always_ff @(negedge clkin_data[64], negedge clkin_data[32])
    if (!clkin_data[32]) _00_ <= 6'h00;
    else _00_ <= { in_data[131:127], celloutsig_1_1z };
  assign celloutsig_0_38z = { celloutsig_0_2z[19:18], celloutsig_0_3z } & { in_data[62], celloutsig_0_28z, celloutsig_0_3z };
  assign celloutsig_0_5z = { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z } & celloutsig_0_4z[4:1];
  assign celloutsig_1_5z = { celloutsig_1_4z[10:5], celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_1z } & { in_data[107:98], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_0_8z = celloutsig_0_2z[14:6] & { celloutsig_0_4z[7:3], celloutsig_0_5z };
  assign celloutsig_0_11z = { celloutsig_0_6z[3:2], celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_6z } & { celloutsig_0_5z[0], celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_0_13z = celloutsig_0_10z[3:1] / { 1'h1, celloutsig_0_2z[5:4] };
  assign celloutsig_0_0z = in_data[58:40] >= in_data[75:57];
  assign celloutsig_0_21z = { celloutsig_0_11z[0], celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_10z } >= { celloutsig_0_4z[6:0], celloutsig_0_4z };
  assign celloutsig_0_15z = celloutsig_0_2z[20:7] > { celloutsig_0_2z[6:5], celloutsig_0_13z, celloutsig_0_14z, celloutsig_0_4z };
  assign celloutsig_0_14z = { celloutsig_0_13z[2:1], celloutsig_0_10z, celloutsig_0_6z } <= { celloutsig_0_13z, celloutsig_0_4z };
  assign celloutsig_0_39z = { celloutsig_0_25z[19:17], celloutsig_0_22z, celloutsig_0_21z } && celloutsig_0_30z[13:9];
  assign celloutsig_1_1z = celloutsig_1_0z && in_data[101:96];
  assign celloutsig_1_19z = { celloutsig_1_7z[31:30], celloutsig_1_18z, celloutsig_1_11z } && celloutsig_1_2z[6:3];
  assign celloutsig_0_22z = { celloutsig_0_5z[3], celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_21z } && { celloutsig_0_16z[3:0], celloutsig_0_15z, celloutsig_0_14z };
  assign celloutsig_0_9z = { celloutsig_0_7z[1:0], celloutsig_0_1z, celloutsig_0_3z } < { in_data[2:0], celloutsig_0_1z };
  assign celloutsig_0_1z = { in_data[55:54], celloutsig_0_0z, celloutsig_0_0z } < in_data[17:14];
  assign celloutsig_0_23z = { celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_22z, celloutsig_0_14z } < in_data[65:59];
  assign celloutsig_0_3z = { celloutsig_0_2z[18:3], celloutsig_0_1z } < { celloutsig_0_2z[18:5], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_4z = { celloutsig_0_2z[8:3], celloutsig_0_1z, celloutsig_0_0z } % { 1'h1, celloutsig_0_2z[7:2], in_data[0] };
  assign celloutsig_0_17z = { in_data[28:23], celloutsig_0_9z, celloutsig_0_7z } % { 1'h1, in_data[88:79] };
  assign celloutsig_1_4z = - in_data[148:137];
  assign celloutsig_0_10z = - in_data[23:19];
  assign celloutsig_0_2z = - { in_data[57:44], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_30z = ~ { in_data[30:5], celloutsig_0_3z, celloutsig_0_22z, celloutsig_0_27z, celloutsig_0_21z, celloutsig_0_17z };
  assign celloutsig_1_0z = in_data[102:97] >> in_data[146:141];
  assign celloutsig_1_7z = { in_data[151:122], _00_ } >> { celloutsig_1_5z[25:2], _00_, celloutsig_1_0z };
  assign celloutsig_0_25z = { celloutsig_0_23z, celloutsig_0_4z, celloutsig_0_20z, celloutsig_0_13z } >> in_data[94:73];
  assign celloutsig_1_2z = { in_data[147:141], celloutsig_1_1z } <<< in_data[168:161];
  assign celloutsig_0_16z = { celloutsig_0_11z[13:9], celloutsig_0_5z, celloutsig_0_6z } >>> { celloutsig_0_11z[9:1], celloutsig_0_13z, celloutsig_0_15z };
  assign celloutsig_0_7z = celloutsig_0_4z[4:1] ^ in_data[23:20];
  assign celloutsig_0_50z = ~((celloutsig_0_8z[7] & celloutsig_0_21z) | celloutsig_0_39z);
  assign celloutsig_0_28z = ~((celloutsig_0_0z & celloutsig_0_2z[14]) | celloutsig_0_17z[5]);
  always_latch
    if (celloutsig_1_19z) celloutsig_0_6z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_6z = celloutsig_0_4z[3:0];
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_50z, celloutsig_0_51z };
endmodule
