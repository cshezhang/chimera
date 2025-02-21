/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [13:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [10:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [11:0] celloutsig_0_16z;
  wire [10:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  reg [8:0] celloutsig_0_19z;
  wire [2:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [8:0] celloutsig_0_21z;
  wire [7:0] celloutsig_0_22z;
  wire [2:0] celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire [4:0] celloutsig_0_36z;
  wire celloutsig_0_39z;
  wire [2:0] celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire [8:0] celloutsig_0_45z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [18:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [2:0] celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [11:0] celloutsig_1_1z;
  wire [2:0] celloutsig_1_2z;
  reg [18:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  reg [6:0] celloutsig_1_5z;
  wire [9:0] celloutsig_1_6z;
  wire celloutsig_1_8z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_32z = celloutsig_0_17z[3] ? celloutsig_0_21z[4] : celloutsig_0_23z[2];
  assign celloutsig_0_5z = celloutsig_0_3z[0] ? celloutsig_0_0z[1] : celloutsig_0_3z[0];
  assign celloutsig_0_7z = in_data[78] ? in_data[50] : celloutsig_0_5z;
  assign celloutsig_0_8z = celloutsig_0_7z ? celloutsig_0_5z : celloutsig_0_0z[11];
  assign celloutsig_0_18z = celloutsig_0_8z ? celloutsig_0_16z[11] : celloutsig_0_9z;
  assign celloutsig_0_20z = celloutsig_0_6z[9] ? celloutsig_0_5z : celloutsig_0_13z;
  assign celloutsig_0_25z = celloutsig_0_20z ? celloutsig_0_21z[6] : celloutsig_0_19z[1];
  assign celloutsig_0_30z = celloutsig_0_19z[0] ? celloutsig_0_8z : celloutsig_0_22z[0];
  assign celloutsig_1_17z = ~(celloutsig_1_8z | celloutsig_1_0z);
  assign celloutsig_0_9z = ~(celloutsig_0_1z[1] | celloutsig_0_1z[2]);
  assign celloutsig_0_14z = ~(celloutsig_0_5z | celloutsig_0_3z[1]);
  assign celloutsig_0_2z = ~(celloutsig_0_1z[2] | celloutsig_0_0z[7]);
  assign celloutsig_0_28z = ~(celloutsig_0_2z | in_data[39]);
  assign celloutsig_0_33z = celloutsig_0_7z ^ celloutsig_0_19z[6];
  assign celloutsig_0_10z = celloutsig_0_7z ^ celloutsig_0_4z;
  assign celloutsig_0_15z = celloutsig_0_1z[1] ^ celloutsig_0_11z;
  reg [5:0] _16_;
  always_ff @(posedge celloutsig_1_18z[0], posedge clkin_data[64])
    if (clkin_data[64]) _16_ <= 6'h00;
    else _16_ <= { celloutsig_0_35z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_26z, celloutsig_0_18z, celloutsig_0_2z };
  assign out_data[37:32] = _16_;
  assign celloutsig_1_1z = in_data[142:131] & { in_data[162:158], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_6z = { celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z } & { in_data[68:56], celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_12z = celloutsig_0_0z[13:3] & in_data[28:18];
  assign celloutsig_0_17z = in_data[69:59] & celloutsig_0_0z[10:0];
  assign celloutsig_0_22z = celloutsig_0_19z[7:0] & { celloutsig_0_0z[2], celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_14z };
  assign celloutsig_1_8z = { celloutsig_1_1z[8:0], celloutsig_1_6z } == celloutsig_1_3z;
  assign celloutsig_1_13z = { celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_11z } == in_data[179:173];
  assign celloutsig_0_41z = celloutsig_0_16z[8:0] >= { in_data[37:30], celloutsig_0_15z };
  assign celloutsig_0_39z = { celloutsig_0_36z[3:0], celloutsig_0_5z, celloutsig_0_10z } <= in_data[56:51];
  assign celloutsig_1_0z = in_data[172:164] || in_data[160:152];
  assign celloutsig_0_26z = celloutsig_0_19z[6:0] || { celloutsig_0_6z[18], celloutsig_0_23z, celloutsig_0_25z, celloutsig_0_7z, celloutsig_0_11z };
  assign celloutsig_1_2z = { celloutsig_1_1z[5:4], celloutsig_1_0z } % { 1'h1, celloutsig_1_1z[3], in_data[96] };
  assign celloutsig_1_6z = { celloutsig_1_4z[2:0], celloutsig_1_5z } % { 1'h1, celloutsig_1_1z[9:1] };
  assign celloutsig_1_11z = { celloutsig_1_3z[7:6], celloutsig_1_8z } % { 1'h1, celloutsig_1_2z[1:0] };
  assign celloutsig_0_23z = celloutsig_0_22z[5:3] * in_data[70:68];
  assign celloutsig_0_35z = celloutsig_0_6z[9:5] != { celloutsig_0_10z, celloutsig_0_30z, celloutsig_0_11z, celloutsig_0_28z, celloutsig_0_7z };
  assign celloutsig_0_13z = in_data[40:38] != celloutsig_0_0z[2:0];
  assign celloutsig_0_3z = ~ in_data[48:46];
  assign celloutsig_0_16z = ~ { in_data[17:11], celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_11z };
  assign celloutsig_0_4z = ^ in_data[92:85];
  assign celloutsig_1_19z = ^ celloutsig_1_1z[5:1];
  assign celloutsig_0_11z = ^ { in_data[53:52], celloutsig_0_7z };
  assign celloutsig_0_0z = in_data[77:64] << in_data[27:14];
  assign celloutsig_0_36z = { celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_13z } << { celloutsig_0_12z[5:2], celloutsig_0_28z };
  assign celloutsig_1_4z = in_data[168:165] <<< { celloutsig_1_3z[8], celloutsig_1_2z };
  assign celloutsig_1_18z = { celloutsig_1_4z[1], celloutsig_1_13z, celloutsig_1_17z } <<< celloutsig_1_3z[17:15];
  assign celloutsig_0_1z = in_data[32:30] <<< in_data[75:73];
  assign celloutsig_0_21z = { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_20z, celloutsig_0_20z, celloutsig_0_11z } <<< in_data[86:78];
  assign celloutsig_0_45z = { celloutsig_0_21z[7], celloutsig_0_23z, celloutsig_0_32z, celloutsig_0_4z, celloutsig_0_33z, celloutsig_0_32z, celloutsig_0_41z } >>> { celloutsig_0_0z[6:4], celloutsig_0_25z, celloutsig_0_4z, celloutsig_0_39z, celloutsig_0_1z };
  always_latch
    if (clkin_data[128]) celloutsig_1_3z = 19'h00000;
    else if (clkin_data[32]) celloutsig_1_3z = { in_data[141:124], celloutsig_1_0z };
  always_latch
    if (clkin_data[128]) celloutsig_1_5z = 7'h00;
    else if (clkin_data[32]) celloutsig_1_5z = { celloutsig_1_1z[11:6], celloutsig_1_0z };
  always_latch
    if (!clkin_data[96]) celloutsig_0_19z = 9'h000;
    else if (clkin_data[0]) celloutsig_0_19z = { celloutsig_0_17z[10:9], celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_7z };
  assign { out_data[130:128], out_data[96], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_45z };
endmodule
