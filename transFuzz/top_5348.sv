/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [7:0] celloutsig_0_0z;
  wire [9:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire [3:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [51:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_32z;
  wire [15:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  reg [8:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [15:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [5:0] _00_;
  always_latch
    if (!celloutsig_1_18z) _00_ = 6'h00;
    else if (clkin_data[0]) _00_ = celloutsig_0_3z[8:3];
  assign out_data[38:33] = _00_;
  assign celloutsig_1_8z = celloutsig_1_7z ^ in_data[99];
  assign celloutsig_1_19z = celloutsig_1_10z ^ celloutsig_1_9z;
  assign celloutsig_0_11z = celloutsig_0_0z[3] ^ celloutsig_0_4z;
  assign celloutsig_0_2z = celloutsig_0_1z ^ in_data[39];
  assign celloutsig_1_5z = ~(celloutsig_1_4z ^ in_data[176]);
  assign celloutsig_1_9z = ~(celloutsig_1_5z ^ celloutsig_1_8z);
  assign celloutsig_1_12z = ~(celloutsig_1_10z ^ celloutsig_1_6z);
  assign celloutsig_1_15z = ~(celloutsig_1_14z ^ celloutsig_1_0z);
  assign celloutsig_0_9z = ~(celloutsig_0_3z[15] ^ celloutsig_0_4z);
  assign celloutsig_0_21z = ~(in_data[6] ^ celloutsig_0_17z);
  assign celloutsig_1_1z = ~(in_data[137] ^ in_data[116]);
  assign celloutsig_1_11z = { in_data[179:151], celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_7z } <= { in_data[154:121], celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_0_5z = { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_2z } <= { in_data[16:13], celloutsig_0_3z };
  assign celloutsig_0_12z = { celloutsig_0_3z[5], celloutsig_0_1z, celloutsig_0_1z } <= { celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_14z = { celloutsig_0_0z[4], celloutsig_0_11z, celloutsig_0_7z } <= { celloutsig_0_3z[9], celloutsig_0_12z, celloutsig_0_7z };
  assign celloutsig_0_16z = { in_data[73:62], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_8z, celloutsig_0_8z } <= { celloutsig_0_3z[12:4], 1'h0, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_15z, celloutsig_0_4z, celloutsig_0_9z };
  assign celloutsig_0_17z = { celloutsig_0_10z[5:0], celloutsig_0_15z } <= { celloutsig_0_0z[3:2], celloutsig_0_0z };
  assign celloutsig_0_19z = { celloutsig_0_10z[5:2], celloutsig_0_4z, celloutsig_0_5z } <= in_data[92:87];
  assign celloutsig_0_20z = { in_data[86:85], celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_16z } <= in_data[83:71];
  assign celloutsig_0_30z = { in_data[52:45], celloutsig_0_6z } <= { celloutsig_0_22z[6:3], celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_23z };
  assign celloutsig_0_32z = { celloutsig_0_10z[9:8], 1'h0, celloutsig_0_14z, celloutsig_0_24z, celloutsig_0_24z, celloutsig_0_30z } <= { celloutsig_0_0z[4:3], celloutsig_0_30z, celloutsig_0_16z, celloutsig_0_27z, celloutsig_0_25z, celloutsig_0_19z };
  assign celloutsig_1_2z = in_data[156:154] && { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_4z = { in_data[17:13], celloutsig_0_2z } && in_data[78:73];
  assign celloutsig_1_18z = { celloutsig_1_13z, celloutsig_1_8z } && { celloutsig_1_16z[13:11], celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_6z };
  assign celloutsig_0_8z = { celloutsig_0_0z[4:2], celloutsig_0_1z } && in_data[10:7];
  assign celloutsig_0_27z = { celloutsig_0_22z[30:25], celloutsig_0_7z, celloutsig_0_6z } && { celloutsig_0_0z[2:1], celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_8z, celloutsig_0_20z, celloutsig_0_8z };
  assign celloutsig_1_0z = in_data[183:174] && in_data[181:172];
  assign celloutsig_1_3z = ! { in_data[136:132], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_4z = ! { celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_1_6z = ! { in_data[140:116], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_5z };
  assign celloutsig_1_7z = ! { celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_1_10z = ! in_data[190:187];
  assign celloutsig_1_14z = ! in_data[106:99];
  assign celloutsig_0_6z = ! in_data[83:66];
  assign celloutsig_0_7z = ! { celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_1z = ! in_data[71:69];
  assign celloutsig_0_23z = ! { celloutsig_0_22z[51:47], celloutsig_0_11z, celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_5z };
  assign celloutsig_0_24z = ! { in_data[26:24], celloutsig_0_21z, celloutsig_0_9z, celloutsig_0_11z };
  assign celloutsig_0_25z = ! { celloutsig_0_10z[7:1], celloutsig_0_16z };
  assign celloutsig_0_0z = in_data[51:44] | in_data[31:24];
  assign celloutsig_1_16z = { celloutsig_1_15z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_14z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_12z, celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_8z } | { celloutsig_1_15z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_13z, celloutsig_1_1z };
  assign celloutsig_0_10z = { celloutsig_0_0z[7:2], celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_2z } | { celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_9z };
  assign celloutsig_0_15z = { celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_5z } | { celloutsig_0_3z[9], celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_0_3z = { in_data[32:28], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z } | in_data[61:46];
  always_latch
    if (clkin_data[64]) celloutsig_1_13z = 9'h000;
    else if (!clkin_data[32]) celloutsig_1_13z = { celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_11z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_12z, celloutsig_1_8z };
  assign { celloutsig_0_22z[22], celloutsig_0_22z[30], celloutsig_0_22z[28], celloutsig_0_22z[26:23], celloutsig_0_22z[16], celloutsig_0_22z[27], celloutsig_0_22z[21], celloutsig_0_22z[29], celloutsig_0_22z[40:35], celloutsig_0_22z[32:31], celloutsig_0_22z[43], celloutsig_0_22z[19], celloutsig_0_22z[42], celloutsig_0_22z[20], celloutsig_0_22z[17], celloutsig_0_22z[18], celloutsig_0_22z[15:10], celloutsig_0_22z[51], celloutsig_0_22z[9], celloutsig_0_22z[50], celloutsig_0_22z[8], celloutsig_0_22z[49], celloutsig_0_22z[7], celloutsig_0_22z[48], celloutsig_0_22z[6], celloutsig_0_22z[47], celloutsig_0_22z[5], celloutsig_0_22z[46], celloutsig_0_22z[4], celloutsig_0_22z[45], celloutsig_0_22z[3:0], celloutsig_0_22z[41] } = { celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_16z, celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_10z[9:4], celloutsig_0_10z[1:0], celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_3z[15:9], celloutsig_0_3z[9:8], celloutsig_0_3z[8:7], celloutsig_0_3z[7:6], celloutsig_0_3z[6:5], celloutsig_0_3z[5:4], celloutsig_0_3z[4:3], celloutsig_0_3z[3:0], celloutsig_0_1z } | { celloutsig_0_1z, celloutsig_0_0z[6], celloutsig_0_0z[4], celloutsig_0_0z[2:0], celloutsig_0_6z, celloutsig_0_3z[15], celloutsig_0_0z[3], celloutsig_0_4z, celloutsig_0_0z[5], celloutsig_0_15z, celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_16z, celloutsig_0_0z[7], celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_3z[14:9], celloutsig_0_12z, celloutsig_0_3z[8], celloutsig_0_21z, celloutsig_0_3z[7], celloutsig_0_9z, celloutsig_0_3z[6], celloutsig_0_20z, celloutsig_0_3z[5], celloutsig_0_16z, celloutsig_0_3z[4], celloutsig_0_11z, celloutsig_0_3z[3], celloutsig_0_21z, celloutsig_0_3z[2:0], celloutsig_0_17z, celloutsig_0_19z };
  assign { celloutsig_0_22z[44], celloutsig_0_22z[34:33] } = { celloutsig_0_3z[2], celloutsig_0_10z[3:2] };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, 1'h0, celloutsig_0_32z };
endmodule
