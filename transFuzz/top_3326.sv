/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [49:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_11z;
  wire [7:0] celloutsig_0_12z;
  reg [2:0] celloutsig_0_14z;
  wire [5:0] celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [3:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [5:0] celloutsig_0_22z;
  wire [14:0] celloutsig_0_25z;
  wire [28:0] celloutsig_0_27z;
  wire [17:0] celloutsig_0_29z;
  wire [22:0] celloutsig_0_2z;
  wire [3:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [9:0] celloutsig_0_50z;
  wire [9:0] celloutsig_0_51z;
  wire celloutsig_0_5z;
  wire [20:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [8:0] celloutsig_0_8z;
  wire [15:0] celloutsig_0_9z;
  wire [6:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire [7:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [19:0] celloutsig_1_2z;
  reg [3:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [6:0] celloutsig_1_6z;
  wire [7:0] celloutsig_1_7z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = ~((celloutsig_0_2z[19] | celloutsig_0_3z[0]) & in_data[92]);
  assign celloutsig_0_5z = ~((celloutsig_0_2z[2] | celloutsig_0_0z[15]) & celloutsig_0_1z);
  assign celloutsig_1_1z = ~((celloutsig_1_0z[3] | in_data[149]) & celloutsig_1_0z[4]);
  assign celloutsig_1_4z = ~((in_data[133] | celloutsig_1_3z[2]) & celloutsig_1_0z[5]);
  assign celloutsig_1_5z = ~((in_data[103] | in_data[112]) & in_data[154]);
  assign celloutsig_1_10z = ~((celloutsig_1_7z[3] | celloutsig_1_4z) & in_data[105]);
  assign celloutsig_1_11z = ~((celloutsig_1_2z[17] | celloutsig_1_1z) & celloutsig_1_7z[5]);
  assign celloutsig_1_12z = ~((celloutsig_1_10z | celloutsig_1_6z[6]) & celloutsig_1_10z);
  assign celloutsig_1_13z = ~((celloutsig_1_7z[5] | celloutsig_1_6z[1]) & celloutsig_1_10z);
  assign celloutsig_1_15z = ~((celloutsig_1_12z | celloutsig_1_0z[1]) & celloutsig_1_10z);
  assign celloutsig_1_18z = ~((celloutsig_1_1z | celloutsig_1_13z) & celloutsig_1_4z);
  assign celloutsig_1_19z = ~((celloutsig_1_16z[4] | celloutsig_1_15z) & celloutsig_1_11z);
  assign celloutsig_0_7z = ~((celloutsig_0_1z | in_data[13]) & celloutsig_0_3z[1]);
  assign celloutsig_0_1z = ~((celloutsig_0_0z[24] | in_data[41]) & celloutsig_0_0z[11]);
  assign celloutsig_0_19z = ~((celloutsig_0_9z[3] | celloutsig_0_6z[11]) & celloutsig_0_5z);
  assign celloutsig_0_21z = ~((celloutsig_0_7z | celloutsig_0_6z[15]) & in_data[45]);
  assign celloutsig_0_0z = in_data[64:15] / { 1'h1, in_data[90:42] };
  assign celloutsig_0_3z = celloutsig_0_0z[6:3] / { 1'h1, in_data[28:26] };
  assign celloutsig_0_50z = celloutsig_0_0z[38:29] / { 1'h1, celloutsig_0_27z[12:5], celloutsig_0_7z };
  assign celloutsig_0_51z = in_data[29:20] / { 1'h1, celloutsig_0_29z[14:6] };
  assign celloutsig_1_2z = { in_data[151:141], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z } / { 1'h1, in_data[116:99], celloutsig_1_1z };
  assign celloutsig_0_6z = { celloutsig_0_0z[23:4], celloutsig_0_1z } / { 1'h1, celloutsig_0_0z[41:22] };
  assign celloutsig_1_16z = celloutsig_1_2z[15:8] / { 1'h1, celloutsig_1_2z[7:1] };
  assign celloutsig_0_8z = celloutsig_0_0z[38:30] / { 1'h1, celloutsig_0_0z[16:11], celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_0_9z = celloutsig_0_0z[47:32] / { 1'h1, celloutsig_0_3z[1:0], celloutsig_0_3z, celloutsig_0_8z };
  assign celloutsig_0_12z = in_data[53:46] / { 1'h1, celloutsig_0_9z[7:1] };
  assign celloutsig_0_20z = celloutsig_0_9z[5:2] / { 1'h1, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_7z };
  assign celloutsig_0_25z = { celloutsig_0_9z[15:7], celloutsig_0_22z } / { 1'h1, celloutsig_0_22z[4:1], celloutsig_0_8z, celloutsig_0_1z };
  assign celloutsig_0_29z = { celloutsig_0_25z[6:2], celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_14z } >> { celloutsig_0_0z[22:9], celloutsig_0_21z, celloutsig_0_14z };
  assign celloutsig_1_0z = in_data[169:163] >> in_data[157:151];
  assign celloutsig_1_6z = celloutsig_1_2z[9:3] >> { celloutsig_1_0z[5:1], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_7z = { in_data[143:137], celloutsig_1_5z } >> { celloutsig_1_3z[3:2], celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_4z };
  assign celloutsig_0_11z = celloutsig_0_3z >> celloutsig_0_3z;
  assign celloutsig_0_17z = { celloutsig_0_12z[5:3], celloutsig_0_14z } >> celloutsig_0_12z[6:1];
  assign celloutsig_0_22z = celloutsig_0_2z[16:11] >> { celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_7z };
  assign celloutsig_0_2z = celloutsig_0_0z[40:18] >> { in_data[56:35], celloutsig_0_1z };
  assign celloutsig_0_27z = { celloutsig_0_0z[25:3], celloutsig_0_7z, celloutsig_0_20z, celloutsig_0_1z } >> { celloutsig_0_11z[3:1], celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_17z };
  always_latch
    if (!clkin_data[128]) celloutsig_1_3z = 4'h0;
    else if (!clkin_data[64]) celloutsig_1_3z = celloutsig_1_0z[4:1];
  always_latch
    if (celloutsig_1_19z) celloutsig_0_14z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_14z = { in_data[9:8], celloutsig_0_5z };
  assign { out_data[128], out_data[96], out_data[41:32], out_data[9:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_50z, celloutsig_0_51z };
endmodule
