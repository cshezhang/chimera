/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_11z;
  wire [8:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [9:0] celloutsig_0_14z;
  reg [9:0] celloutsig_0_15z;
  reg [2:0] celloutsig_0_16z;
  wire [6:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [16:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire [3:0] celloutsig_0_22z;
  wire [2:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [11:0] celloutsig_0_27z;
  wire [2:0] celloutsig_0_28z;
  wire [4:0] celloutsig_0_29z;
  wire [27:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [16:0] celloutsig_0_31z;
  wire celloutsig_0_34z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire [27:0] celloutsig_0_48z;
  wire [24:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [10:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [5:0] celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [4:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [25:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [4:0] celloutsig_1_14z;
  wire celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [7:0] celloutsig_1_3z;
  reg [9:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [10:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_37z = celloutsig_0_23z[1] ? celloutsig_0_24z : celloutsig_0_36z;
  assign celloutsig_0_9z = celloutsig_0_8z[0] ? celloutsig_0_6z : celloutsig_0_7z[5];
  assign celloutsig_1_5z = !(celloutsig_1_4z[1] ? celloutsig_1_2z : in_data[163]);
  assign celloutsig_0_6z = !(celloutsig_0_4z ? celloutsig_0_1z[15] : celloutsig_0_0z[2]);
  assign celloutsig_0_34z = ~(celloutsig_0_13z | celloutsig_0_22z[2]);
  assign celloutsig_1_9z = ~(celloutsig_1_2z | celloutsig_1_8z[5]);
  assign celloutsig_1_11z = ~(celloutsig_1_1z | celloutsig_1_1z);
  assign celloutsig_0_13z = ~(celloutsig_0_5z[5] | celloutsig_0_7z[5]);
  assign celloutsig_1_7z = celloutsig_1_6z | ~(celloutsig_1_0z[1]);
  assign celloutsig_0_26z = celloutsig_0_7z[4] | ~(celloutsig_0_21z[1]);
  assign celloutsig_0_4z = celloutsig_0_3z ^ celloutsig_0_0z[0];
  assign celloutsig_0_22z = celloutsig_0_17z[3:0] + { celloutsig_0_15z[6:4], celloutsig_0_20z };
  assign celloutsig_0_12z = { celloutsig_0_1z[14:7], celloutsig_0_3z } & in_data[15:7];
  assign celloutsig_0_5z = celloutsig_0_2z[25:15] / { 1'h1, in_data[25:16] };
  assign celloutsig_0_36z = { celloutsig_0_17z[5:1], celloutsig_0_13z } === { celloutsig_0_21z[0], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_23z };
  assign celloutsig_1_10z = { celloutsig_1_8z[7:1], celloutsig_1_3z, celloutsig_1_1z } === { celloutsig_1_3z[3:0], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_0_25z = celloutsig_0_15z[8:1] === { celloutsig_0_1z[11:5], celloutsig_0_9z };
  assign celloutsig_0_18z = celloutsig_0_14z[8:4] >= celloutsig_0_7z[4:0];
  assign celloutsig_0_48z = { celloutsig_0_15z[5:0], celloutsig_0_11z, celloutsig_0_31z, celloutsig_0_37z } % { 1'h1, celloutsig_0_31z[15:0], celloutsig_0_21z, celloutsig_0_9z, celloutsig_0_36z, celloutsig_0_13z, celloutsig_0_29z };
  assign celloutsig_0_17z = { celloutsig_0_3z, celloutsig_0_8z } * celloutsig_0_2z[15:9];
  assign celloutsig_0_21z = { celloutsig_0_1z[6:5], celloutsig_0_6z } * { celloutsig_0_16z[0], celloutsig_0_13z, celloutsig_0_3z };
  assign celloutsig_0_0z = in_data[80] ? in_data[63:61] : in_data[46:44];
  assign celloutsig_0_8z = celloutsig_0_3z ? { celloutsig_0_5z[9:5], 1'h1 } : { in_data[30:26], celloutsig_0_6z };
  assign celloutsig_1_1z = celloutsig_1_0z[4:1] != in_data[147:144];
  assign celloutsig_0_31z = { celloutsig_0_1z[16:1], celloutsig_0_3z } | { celloutsig_0_0z[1:0], celloutsig_0_23z, celloutsig_0_26z, celloutsig_0_16z, celloutsig_0_17z, celloutsig_0_24z };
  assign celloutsig_0_27z = { celloutsig_0_15z[6:5], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_18z, celloutsig_0_22z, celloutsig_0_13z, celloutsig_0_18z } | { celloutsig_0_2z[11:1], celloutsig_0_19z };
  assign celloutsig_0_29z = celloutsig_0_14z[7:3] | { celloutsig_0_16z[2:1], celloutsig_0_0z };
  assign celloutsig_0_20z = celloutsig_0_17z[3] & celloutsig_0_3z;
  assign celloutsig_1_6z = | celloutsig_1_3z[7:2];
  assign celloutsig_0_30z = | celloutsig_0_8z[3:0];
  assign celloutsig_0_3z = ^ { in_data[95:91], celloutsig_0_0z };
  assign celloutsig_1_2z = ^ { in_data[118:110], celloutsig_1_0z };
  assign celloutsig_1_13z = ^ celloutsig_1_4z[7:1];
  assign celloutsig_1_18z = celloutsig_1_4z[9:7] >> { celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_13z };
  assign celloutsig_0_7z = { in_data[42:38], celloutsig_0_6z } >> { in_data[46:44], celloutsig_0_0z };
  assign celloutsig_0_1z = { in_data[78:71], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } >> in_data[93:77];
  assign celloutsig_1_8z = { in_data[168:160], celloutsig_1_2z, celloutsig_1_1z } <<< { celloutsig_1_4z[9:6], celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_14z = in_data[151:147] <<< { celloutsig_1_12z[3:1], celloutsig_1_7z, celloutsig_1_5z };
  assign celloutsig_1_19z = { in_data[114], celloutsig_1_9z, celloutsig_1_7z } <<< { celloutsig_1_14z[2:1], celloutsig_1_17z };
  assign celloutsig_0_23z = celloutsig_0_5z[8:6] <<< { celloutsig_0_1z[2:1], celloutsig_0_9z };
  assign celloutsig_0_49z = { in_data[64:56], celloutsig_0_3z, celloutsig_0_30z, celloutsig_0_25z, celloutsig_0_28z, celloutsig_0_8z, celloutsig_0_34z, celloutsig_0_3z, celloutsig_0_25z, celloutsig_0_19z } ^ { celloutsig_0_16z, celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_27z, celloutsig_0_4z, celloutsig_0_34z };
  assign celloutsig_1_0z = in_data[121:117] ^ in_data[171:167];
  assign celloutsig_1_3z = in_data[103:96] ^ { in_data[116:110], celloutsig_1_2z };
  assign celloutsig_1_12z = { celloutsig_1_3z[7:4], celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_11z } ^ in_data[169:144];
  assign celloutsig_0_11z = celloutsig_0_8z[4:1] ^ in_data[24:21];
  assign celloutsig_0_14z = { celloutsig_0_2z[15:7], celloutsig_0_4z } ^ { celloutsig_0_12z[8:1], celloutsig_0_13z, celloutsig_0_6z };
  assign celloutsig_0_2z = { celloutsig_0_1z[9:5], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z } ^ in_data[53:26];
  assign celloutsig_0_28z = { celloutsig_0_19z, celloutsig_0_20z, celloutsig_0_9z } ^ { celloutsig_0_8z[4], celloutsig_0_25z, celloutsig_0_20z };
  assign celloutsig_1_17z = ~((celloutsig_1_5z & celloutsig_1_1z) | celloutsig_1_14z[4]);
  assign celloutsig_0_19z = ~((celloutsig_0_1z[15] & celloutsig_0_9z) | celloutsig_0_18z);
  assign celloutsig_0_24z = ~((celloutsig_0_7z[4] & celloutsig_0_20z) | celloutsig_0_21z[2]);
  always_latch
    if (!clkin_data[64]) celloutsig_1_4z = 10'h000;
    else if (clkin_data[32]) celloutsig_1_4z = { celloutsig_1_0z[0], celloutsig_1_2z, celloutsig_1_3z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_15z = 10'h000;
    else if (!clkin_data[0]) celloutsig_0_15z = { celloutsig_0_2z[22:17], celloutsig_0_11z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_16z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_16z = { celloutsig_0_12z[4:3], celloutsig_0_9z };
  assign { out_data[130:128], out_data[98:96], out_data[59:32], out_data[24:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_48z, celloutsig_0_49z };
endmodule
