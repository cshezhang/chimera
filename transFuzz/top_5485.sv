/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [9:0] celloutsig_0_10z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [6:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  reg [4:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [40:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [4:0] celloutsig_0_27z;
  wire [16:0] celloutsig_0_28z;
  wire [5:0] celloutsig_0_29z;
  wire [19:0] celloutsig_0_2z;
  wire [18:0] celloutsig_0_30z;
  wire [7:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [13:0] celloutsig_0_38z;
  wire [8:0] celloutsig_0_3z;
  wire [13:0] celloutsig_0_40z;
  wire [11:0] celloutsig_0_44z;
  wire celloutsig_0_47z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [3:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [15:0] celloutsig_1_11z;
  wire [3:0] celloutsig_1_12z;
  wire [3:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [25:0] celloutsig_1_15z;
  wire [10:0] celloutsig_1_16z;
  reg [4:0] celloutsig_1_18z;
  wire [12:0] celloutsig_1_19z;
  wire [7:0] celloutsig_1_1z;
  reg [5:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [26:0] celloutsig_1_4z;
  wire [11:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  reg [2:0] celloutsig_1_7z;
  wire [8:0] celloutsig_1_8z;
  wire [9:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_6z = celloutsig_1_3z ? celloutsig_1_2z[4] : celloutsig_1_2z[3];
  assign celloutsig_0_8z = celloutsig_0_1z ? celloutsig_0_7z : celloutsig_0_5z[0];
  assign celloutsig_0_47z = !(celloutsig_0_23z ? celloutsig_0_33z : celloutsig_0_29z[1]);
  assign celloutsig_0_49z = !(celloutsig_0_40z[0] ? celloutsig_0_21z[1] : celloutsig_0_47z);
  assign celloutsig_0_16z = !(celloutsig_0_8z ? celloutsig_0_6z : celloutsig_0_3z[7]);
  assign celloutsig_1_14z = ~((celloutsig_1_13z[2] | celloutsig_1_12z[1]) & (celloutsig_1_12z[3] | celloutsig_1_13z[0]));
  assign celloutsig_0_33z = celloutsig_0_32z[6] | ~(celloutsig_0_21z[0]);
  assign celloutsig_0_26z = celloutsig_0_7z | ~(celloutsig_0_1z);
  assign celloutsig_1_3z = celloutsig_1_0z ^ celloutsig_1_1z[5];
  assign celloutsig_1_10z = celloutsig_1_4z[2] ^ celloutsig_1_7z[1];
  assign celloutsig_0_12z = celloutsig_0_5z[1] ^ celloutsig_0_7z;
  assign celloutsig_0_3z = celloutsig_0_2z[9:1] + { celloutsig_0_2z[13:8], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_38z = { celloutsig_0_3z[3:1], celloutsig_0_3z, celloutsig_0_22z, celloutsig_0_7z } + { celloutsig_0_28z[11:0], celloutsig_0_8z, celloutsig_0_0z };
  assign celloutsig_0_40z = celloutsig_0_30z[16:3] + { celloutsig_0_3z[4:2], celloutsig_0_15z, celloutsig_0_21z, celloutsig_0_22z };
  assign celloutsig_1_9z = celloutsig_1_5z[9:0] + { in_data[133:129], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_7z };
  assign celloutsig_1_12z = celloutsig_1_1z[4:1] + celloutsig_1_4z[20:17];
  assign celloutsig_1_13z = { celloutsig_1_12z[1:0], celloutsig_1_3z, celloutsig_1_3z } + { celloutsig_1_9z[8], celloutsig_1_10z, celloutsig_1_3z, celloutsig_1_10z };
  assign celloutsig_1_16z = { celloutsig_1_4z[26:19], celloutsig_1_7z } + { celloutsig_1_13z[0], celloutsig_1_6z, celloutsig_1_8z };
  assign celloutsig_1_1z = { in_data[133:127], celloutsig_1_0z } & in_data[141:134];
  assign celloutsig_0_15z = celloutsig_0_2z[17:11] / { 1'h1, celloutsig_0_2z[18:13] };
  assign celloutsig_0_6z = celloutsig_0_3z[7:1] === { celloutsig_0_3z[5:1], celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_1z = { in_data[55:45], celloutsig_0_0z } === in_data[60:49];
  assign celloutsig_0_20z = { celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_0z } === { celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_6z };
  assign celloutsig_0_19z = { celloutsig_0_17z[2:1], celloutsig_0_17z } > { celloutsig_0_15z[4:0], celloutsig_0_16z };
  assign celloutsig_0_50z = { celloutsig_0_44z[10:3], celloutsig_0_13z } && { celloutsig_0_38z[10:3], celloutsig_0_14z };
  assign celloutsig_0_25z = ! celloutsig_0_3z[7:3];
  assign celloutsig_0_7z = celloutsig_0_5z[2:0] || { celloutsig_0_5z[1:0], celloutsig_0_1z };
  assign celloutsig_0_9z = celloutsig_0_2z[16:10] || { celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_1_0z = in_data[105:101] < in_data[165:161];
  assign celloutsig_0_13z = celloutsig_0_2z[7:2] < celloutsig_0_2z[13:8];
  assign celloutsig_1_19z = { in_data[101], celloutsig_1_10z, celloutsig_1_16z } % { 1'h1, celloutsig_1_15z[23:18], celloutsig_1_18z, celloutsig_1_6z };
  assign celloutsig_0_2z = in_data[57:38] * { in_data[56:42], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_44z = celloutsig_0_1z ? celloutsig_0_2z[19:8] : { celloutsig_0_40z[11:6], celloutsig_0_18z, celloutsig_0_4z };
  assign celloutsig_0_32z = celloutsig_0_22z ? { celloutsig_0_27z[3:2], celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_12z } : celloutsig_0_28z[16:9];
  assign celloutsig_0_0z = in_data[85:76] != in_data[35:26];
  assign celloutsig_0_4z = { celloutsig_0_2z[14:1], celloutsig_0_0z } != { celloutsig_0_3z[7:3], celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_14z = celloutsig_0_5z != celloutsig_0_2z[14:11];
  assign celloutsig_0_23z = { celloutsig_0_2z[10:0], celloutsig_0_13z } != { in_data[22:17], celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_14z, celloutsig_0_7z };
  assign celloutsig_1_4z = - { celloutsig_1_2z[5:2], celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_17z = - { celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_0z, celloutsig_0_7z };
  assign celloutsig_0_28z = - in_data[79:63];
  assign celloutsig_0_5z = in_data[54:51] | { in_data[90:88], celloutsig_0_0z };
  assign celloutsig_1_11z = { celloutsig_1_4z[26:21], celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_2z } | { celloutsig_1_4z[22:10], celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_10z };
  assign celloutsig_0_10z = { celloutsig_0_2z[12:4], celloutsig_0_4z } | { celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_24z = { celloutsig_0_18z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_7z } | { celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_27z = celloutsig_0_15z[5:1] | { celloutsig_0_21z, celloutsig_0_8z, celloutsig_0_19z };
  assign celloutsig_1_8z = { in_data[168:164], celloutsig_1_6z, celloutsig_1_7z } >> celloutsig_1_4z[19:11];
  assign celloutsig_1_15z = { celloutsig_1_8z[8:6], celloutsig_1_9z, celloutsig_1_14z, celloutsig_1_5z } <<< { celloutsig_1_9z[3:0], celloutsig_1_10z, celloutsig_1_6z, celloutsig_1_12z, celloutsig_1_11z };
  assign celloutsig_0_21z = { celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_20z } <<< { celloutsig_0_15z[5], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_29z = { celloutsig_0_26z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_25z, celloutsig_0_7z, celloutsig_0_8z } <<< celloutsig_0_24z[29:24];
  assign celloutsig_0_30z = { celloutsig_0_10z[3:1], celloutsig_0_3z, celloutsig_0_21z, celloutsig_0_23z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_4z } <<< { celloutsig_0_28z[15:2], celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_21z };
  assign celloutsig_1_5z = in_data[107:96] >>> { celloutsig_1_4z[7:5], celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_0_22z = ~((celloutsig_0_13z & celloutsig_0_5z[3]) | celloutsig_0_8z);
  always_latch
    if (!clkin_data[128]) celloutsig_1_2z = 6'h00;
    else if (clkin_data[32]) celloutsig_1_2z = celloutsig_1_1z[6:1];
  always_latch
    if (clkin_data[128]) celloutsig_1_7z = 3'h0;
    else if (!clkin_data[64]) celloutsig_1_7z = celloutsig_1_5z[5:3];
  always_latch
    if (clkin_data[96]) celloutsig_1_18z = 5'h00;
    else if (clkin_data[64]) celloutsig_1_18z = { celloutsig_1_12z, celloutsig_1_6z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_18z = 5'h00;
    else if (!clkin_data[0]) celloutsig_0_18z = { in_data[23:20], celloutsig_0_8z };
  assign { out_data[132:128], out_data[108:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_49z, celloutsig_0_50z };
endmodule
