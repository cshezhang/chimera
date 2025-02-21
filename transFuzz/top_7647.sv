/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [13:0] _00_;
  reg [3:0] _01_;
  wire [11:0] _02_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [3:0] celloutsig_0_13z;
  wire [44:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [14:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [8:0] celloutsig_0_18z;
  wire [11:0] celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [7:0] celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire [9:0] celloutsig_0_27z;
  wire [13:0] celloutsig_0_2z;
  wire [13:0] celloutsig_0_30z;
  wire celloutsig_0_33z;
  wire [3:0] celloutsig_0_36z;
  wire [11:0] celloutsig_0_3z;
  wire celloutsig_0_43z;
  wire celloutsig_0_4z;
  wire celloutsig_0_52z;
  wire [5:0] celloutsig_0_53z;
  wire [13:0] celloutsig_0_5z;
  wire [38:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire [29:0] celloutsig_1_10z;
  wire [7:0] celloutsig_1_12z;
  wire [2:0] celloutsig_1_17z;
  wire [10:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire [8:0] celloutsig_1_3z;
  wire [19:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [2:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [15:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_5z = celloutsig_1_0z[2] ? celloutsig_1_4z[13] : celloutsig_1_0z[1];
  assign celloutsig_0_7z = ~(celloutsig_0_6z[8] | celloutsig_0_6z[1]);
  assign celloutsig_0_4z = ~((celloutsig_0_0z | in_data[1]) & celloutsig_0_0z);
  assign celloutsig_0_12z = ~((in_data[44] | celloutsig_0_6z[2]) & (celloutsig_0_2z[6] | celloutsig_0_8z[2]));
  assign celloutsig_0_11z = celloutsig_0_1z[4] | celloutsig_0_4z;
  assign celloutsig_0_15z = in_data[11] | celloutsig_0_1z[2];
  assign celloutsig_0_1z = { in_data[23:20], celloutsig_0_0z } + { in_data[11:8], celloutsig_0_0z };
  assign celloutsig_0_30z = { _00_[13:8], celloutsig_0_8z, celloutsig_0_17z, celloutsig_0_17z } + { celloutsig_0_16z[14:2], celloutsig_0_17z };
  always_ff @(posedge clkin_data[32], posedge clkin_data[128])
    if (clkin_data[128]) _01_ <= 4'h0;
    else _01_ <= in_data[128:125];
  reg [11:0] _12_;
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[64])
    if (!clkin_data[64]) _12_ <= 12'h000;
    else _12_ <= { celloutsig_0_8z[3], celloutsig_0_0z, celloutsig_0_18z, celloutsig_0_0z };
  assign { _02_[11], _00_[13:8], _02_[4:0] } = _12_;
  assign celloutsig_0_53z = celloutsig_0_27z[5:0] & celloutsig_0_3z[5:0];
  assign celloutsig_1_10z = { in_data[131:103], celloutsig_1_2z } & { celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_2z };
  assign celloutsig_0_2z = in_data[49:36] & { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_1_4z = { in_data[129:117], celloutsig_1_0z, _01_ } / { 1'h1, celloutsig_1_3z[6:2], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_2z };
  assign celloutsig_1_6z = _01_[3:1] / { 1'h1, celloutsig_1_0z[0], celloutsig_1_2z };
  assign celloutsig_1_9z = { celloutsig_1_4z[14:0], celloutsig_1_8z } / { 1'h1, celloutsig_1_4z[15:1] };
  assign celloutsig_0_13z = celloutsig_0_8z[5:2] / { 1'h1, in_data[90:89], celloutsig_0_11z };
  assign celloutsig_0_9z = celloutsig_0_5z[13:10] === celloutsig_0_6z[4:1];
  assign celloutsig_0_43z = { _00_[9:8], _02_[4], _02_[11], _00_[13:8], _02_[4:0], celloutsig_0_4z } >= { celloutsig_0_12z, celloutsig_0_15z, celloutsig_0_30z };
  assign celloutsig_1_2z = in_data[180:175] >= in_data[123:118];
  assign celloutsig_0_0z = in_data[93:91] <= in_data[5:3];
  assign celloutsig_0_52z = celloutsig_0_22z <= { celloutsig_0_5z[3], celloutsig_0_24z, celloutsig_0_33z, celloutsig_0_36z, celloutsig_0_43z };
  assign celloutsig_1_8z = _01_[2:0] <= { celloutsig_1_0z[2], celloutsig_1_7z, celloutsig_1_2z };
  assign celloutsig_0_24z = { _02_[11], _00_[13:11], celloutsig_0_19z } < { 2'h3, celloutsig_0_18z, celloutsig_0_10z, celloutsig_0_13z };
  assign celloutsig_0_33z = celloutsig_0_11z & ~(celloutsig_0_27z[2]);
  assign celloutsig_1_19z = celloutsig_1_12z[4] & ~(celloutsig_1_18z[10]);
  assign celloutsig_0_36z = { celloutsig_0_27z[7:5], celloutsig_0_7z } % { 1'h1, celloutsig_0_10z, celloutsig_0_24z, celloutsig_0_0z };
  assign celloutsig_0_14z = celloutsig_0_12z ? { celloutsig_0_3z[4:1], celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_9z } : { in_data[87:62], celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_7z, 1'h0, celloutsig_0_9z, 1'h0, celloutsig_0_8z };
  assign celloutsig_0_19z = celloutsig_0_3z[1] ? { in_data[41:31], celloutsig_0_15z } : { celloutsig_0_1z[1:0], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_7z = celloutsig_1_4z[2] & celloutsig_1_5z;
  assign celloutsig_0_10z = celloutsig_0_4z & celloutsig_0_1z[3];
  assign celloutsig_0_17z = ~^ { celloutsig_0_3z[11:7], celloutsig_0_4z };
  assign celloutsig_0_20z = ~^ { celloutsig_0_18z[6:2], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_8z };
  assign celloutsig_0_5z = { celloutsig_0_2z[13:12], celloutsig_0_3z } - in_data[52:39];
  assign celloutsig_1_3z = { in_data[111:107], _01_ } - in_data[133:125];
  assign celloutsig_1_12z = { _01_, celloutsig_1_0z, celloutsig_1_7z } - celloutsig_1_10z[24:17];
  assign celloutsig_1_18z = { celloutsig_1_17z[1:0], celloutsig_1_7z, celloutsig_1_12z } - { celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_3z };
  assign celloutsig_0_8z = celloutsig_0_5z[13:8] - { celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_16z = { celloutsig_0_5z[6:4], celloutsig_0_3z } - celloutsig_0_14z[36:22];
  assign celloutsig_0_27z = { celloutsig_0_14z[44], celloutsig_0_22z, celloutsig_0_10z } - celloutsig_0_3z[9:0];
  assign celloutsig_0_3z = celloutsig_0_2z[11:0] ~^ in_data[46:35];
  assign celloutsig_1_17z = celloutsig_1_12z[6:4] ~^ celloutsig_1_12z[5:3];
  assign celloutsig_0_18z = { celloutsig_0_13z[3:1], celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_7z } ~^ { celloutsig_0_1z, celloutsig_0_13z };
  assign celloutsig_1_0z = in_data[146:144] ^ in_data[120:118];
  assign celloutsig_0_22z = { celloutsig_0_14z[6], celloutsig_0_20z, celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_10z } ^ celloutsig_0_2z[13:6];
  assign celloutsig_0_6z[14:0] = { celloutsig_0_4z, celloutsig_0_2z } ~^ in_data[55:41];
  assign _00_[7:0] = { celloutsig_0_8z, celloutsig_0_17z, celloutsig_0_17z };
  assign _02_[10:5] = _00_[13:8];
  assign celloutsig_0_6z[38:15] = 24'hffffff;
  assign { out_data[138:128], out_data[96], out_data[32], out_data[5:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_52z, celloutsig_0_53z };
endmodule
