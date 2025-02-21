/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [11:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [13:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  reg [4:0] celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [16:0] celloutsig_0_24z;
  wire [11:0] celloutsig_0_26z;
  wire [51:0] celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire [10:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [5:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [5:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [9:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [4:0] celloutsig_1_11z;
  wire [3:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  reg [10:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [24:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [17:0] celloutsig_1_7z;
  wire [12:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_1z = ~(celloutsig_1_0z & in_data[98]);
  assign celloutsig_1_16z = ~(celloutsig_1_15z[2] | celloutsig_1_11z[0]);
  assign celloutsig_0_15z = ~(celloutsig_0_10z | celloutsig_0_12z);
  assign celloutsig_0_21z = ~(celloutsig_0_5z[1] | celloutsig_0_10z);
  assign celloutsig_0_8z = { celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_7z } > { celloutsig_0_7z[4:0], celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_1_18z = { celloutsig_1_7z[10:8], celloutsig_1_9z } < { celloutsig_1_3z, celloutsig_1_16z, celloutsig_1_16z, celloutsig_1_3z };
  assign celloutsig_0_18z = celloutsig_0_3z[10:6] < celloutsig_0_17z[13:9];
  assign celloutsig_1_2z = { in_data[166:146], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z } % { 1'h1, in_data[136:114], celloutsig_1_0z };
  assign celloutsig_0_10z = in_data[82:64] != { celloutsig_0_9z[9:8], celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_5z };
  assign celloutsig_0_16z = in_data[49:46] != in_data[9:6];
  assign celloutsig_0_2z = celloutsig_0_0z != celloutsig_0_1z[4:2];
  assign celloutsig_1_5z = { celloutsig_1_2z[18:17], celloutsig_1_4z, celloutsig_1_4z } != { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_1_9z = { in_data[115:114], celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_5z } != { in_data[177:162], celloutsig_1_1z };
  assign celloutsig_0_7z = ~ in_data[52:47];
  assign celloutsig_0_24z = ~ { celloutsig_0_1z[3:1], celloutsig_0_18z, celloutsig_0_21z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_2z };
  assign celloutsig_1_8z = ~ { in_data[124:114], celloutsig_1_6z, celloutsig_1_1z };
  assign celloutsig_1_11z = { celloutsig_1_7z[4], celloutsig_1_7z[8], celloutsig_1_7z[9], celloutsig_1_7z[0], celloutsig_1_3z } | in_data[169:165];
  assign celloutsig_0_11z = { celloutsig_0_7z[5:4], celloutsig_0_9z } | { celloutsig_0_7z[3:2], celloutsig_0_9z };
  assign celloutsig_0_26z = { in_data[92:82], celloutsig_0_22z } | { celloutsig_0_24z[11], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_16z };
  assign celloutsig_0_12z = & { celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_19z = & { celloutsig_0_17z[11:10], celloutsig_0_0z };
  assign celloutsig_1_4z = & { celloutsig_1_3z, in_data[171:168] };
  assign celloutsig_0_4z = celloutsig_0_3z[5] & celloutsig_0_0z[2];
  assign celloutsig_1_0z = in_data[141] & in_data[117];
  assign celloutsig_1_3z = celloutsig_1_1z & in_data[116];
  assign celloutsig_0_6z = ^ { in_data[68:52], celloutsig_0_5z, celloutsig_0_1z };
  assign celloutsig_0_22z = ^ celloutsig_0_3z[5:0];
  assign celloutsig_1_6z = ^ in_data[183:175];
  assign celloutsig_1_15z = { celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_0z } >>> in_data[142:139];
  assign celloutsig_0_0z = in_data[2:0] - in_data[39:37];
  assign celloutsig_0_3z = { celloutsig_0_0z[2:1], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_2z } - in_data[68:58];
  assign celloutsig_0_5z = { celloutsig_0_3z[5], celloutsig_0_1z } - { celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_9z = { celloutsig_0_3z[4:0], celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_6z } - { celloutsig_0_5z[5:1], celloutsig_0_1z };
  always_latch
    if (clkin_data[64]) celloutsig_1_19z = 11'h000;
    else if (clkin_data[32]) celloutsig_1_19z = { celloutsig_1_8z[12:3], celloutsig_1_1z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_1z = 5'h00;
    else if (clkin_data[0]) celloutsig_0_1z = in_data[51:47];
  assign { celloutsig_0_17z[7], celloutsig_0_17z[8], celloutsig_0_17z[6], celloutsig_0_17z[13:9], celloutsig_0_17z[4:0] } = ~ { celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_7z[4:0], celloutsig_0_1z };
  assign { out_data[9], celloutsig_0_27z[1], out_data[21:10], celloutsig_0_27z[0], out_data[7:1], out_data[22], out_data[0], celloutsig_0_27z[51:35], out_data[31:23] } = ~ { celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_2z, in_data[86:61] };
  assign { celloutsig_1_7z[4], celloutsig_1_7z[0], celloutsig_1_7z[8], celloutsig_1_7z[17:9], celloutsig_1_7z[7] } = ~ { celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_2z[24:17], celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_0_17z[5] = celloutsig_0_17z[7];
  assign celloutsig_0_27z[34:2] = { out_data[31:9], out_data[22], out_data[7:0], out_data[0] };
  assign { celloutsig_1_7z[6:5], celloutsig_1_7z[3:1] } = { celloutsig_1_7z[7], celloutsig_1_7z[7], celloutsig_1_7z[4], celloutsig_1_7z[8], celloutsig_1_7z[9] };
  assign { out_data[128], out_data[106:96], out_data[43:32], out_data[8] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_26z, out_data[22] };
endmodule
