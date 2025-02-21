/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [15:0] _01_;
  wire [7:0] _02_;
  reg [13:0] _03_;
  wire [7:0] celloutsig_0_0z;
  wire [29:0] celloutsig_0_10z;
  wire [5:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [7:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [16:0] celloutsig_0_22z;
  wire [3:0] celloutsig_0_27z;
  wire [2:0] celloutsig_0_2z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire [10:0] celloutsig_0_52z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [18:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [8:0] celloutsig_1_11z;
  wire [2:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [3:0] celloutsig_1_17z;
  wire [16:0] celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire [7:0] celloutsig_1_1z;
  wire [11:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [6:0] celloutsig_1_5z;
  wire [6:0] celloutsig_1_6z;
  wire [11:0] celloutsig_1_7z;
  wire [22:0] celloutsig_1_8z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_51z = ~celloutsig_0_35z;
  assign celloutsig_1_3z = ~celloutsig_1_0z;
  assign celloutsig_0_13z = ~celloutsig_0_0z[0];
  assign celloutsig_0_16z = ~celloutsig_0_2z[0];
  assign celloutsig_1_4z = ~((celloutsig_1_1z[0] | celloutsig_1_1z[3]) & celloutsig_1_0z);
  assign celloutsig_1_10z = ~((celloutsig_1_0z | celloutsig_1_1z[4]) & _00_);
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _01_ <= 16'h0000;
    else _01_ <= { in_data[5:0], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_3z };
  reg [7:0] _11_;
  always_ff @(posedge clkin_data[64], negedge clkin_data[128])
    if (!clkin_data[128]) _11_ <= 8'h00;
    else _11_ <= { celloutsig_1_7z[6:1], celloutsig_1_4z, celloutsig_1_0z };
  assign { _02_[7], _00_, _02_[5:0] } = _11_;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _03_ <= 14'h0000;
    else _03_ <= { _01_[13:11], celloutsig_0_19z, celloutsig_0_3z, celloutsig_0_21z, celloutsig_0_18z };
  assign celloutsig_1_5z = { celloutsig_1_2z[7:2], celloutsig_1_3z } & celloutsig_1_1z[7:1];
  assign celloutsig_1_11z = { celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_4z } & { celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_0_9z = { in_data[38:35], celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z } & { _01_[14:3], celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_0_19z = { celloutsig_0_10z[23:21], celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_16z } & { celloutsig_0_10z[13:12], celloutsig_0_11z };
  assign celloutsig_1_2z = in_data[140:129] / { 1'h1, in_data[143:136], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_6z = in_data[169:163] / { 1'h1, in_data[178:175], celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_11z = celloutsig_0_10z[14:9] / { 1'h1, _01_[9:5] };
  assign celloutsig_0_4z = { in_data[90:82], celloutsig_0_1z, celloutsig_0_0z } || { celloutsig_0_0z[6:5], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_12z = in_data[59:55] || { celloutsig_0_10z[28:25], celloutsig_0_1z };
  assign celloutsig_0_37z = celloutsig_0_22z[14:7] < celloutsig_0_9z[14:7];
  assign celloutsig_1_0z = in_data[109:102] < in_data[105:98];
  assign celloutsig_1_13z = in_data[166:152] < { celloutsig_1_5z[4:2], celloutsig_1_2z };
  assign celloutsig_1_14z = { celloutsig_1_2z[6], celloutsig_1_2z } < { in_data[177:167], celloutsig_1_10z, celloutsig_1_3z };
  assign celloutsig_0_14z = { celloutsig_0_7z, celloutsig_0_1z } < { celloutsig_0_9z[4:2], celloutsig_0_13z };
  assign celloutsig_0_17z = { celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_0z } < { celloutsig_0_10z[19:9], celloutsig_0_1z };
  assign celloutsig_0_18z = { celloutsig_0_7z[1], celloutsig_0_7z } < { celloutsig_0_9z[15:14], celloutsig_0_1z, celloutsig_0_15z };
  assign celloutsig_1_1z = { in_data[132:127], celloutsig_1_0z, celloutsig_1_0z } % { 1'h1, in_data[123:119], celloutsig_1_0z, in_data[96] };
  assign celloutsig_0_27z = _03_[4:1] % { 1'h1, celloutsig_0_22z[5:3] };
  assign celloutsig_0_22z = { in_data[70], celloutsig_0_19z, celloutsig_0_0z } % { 1'h1, celloutsig_0_10z[25:18], celloutsig_0_11z, celloutsig_0_14z, celloutsig_0_14z };
  assign celloutsig_0_2z = in_data[49:47] % { 1'h1, in_data[50:49] };
  assign celloutsig_1_8z = in_data[190:168] * { celloutsig_1_5z[4:2], celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_6z };
  assign celloutsig_1_18z = { celloutsig_1_12z, celloutsig_1_13z, celloutsig_1_17z, celloutsig_1_11z } * { celloutsig_1_7z[11:4], celloutsig_1_15z, celloutsig_1_14z, celloutsig_1_6z };
  assign celloutsig_0_52z = celloutsig_0_37z ? { in_data[10:2], celloutsig_0_1z, celloutsig_0_18z } : { in_data[55:53], celloutsig_0_2z, celloutsig_0_27z, celloutsig_0_3z };
  assign celloutsig_1_12z = celloutsig_1_8z[16] ? celloutsig_1_6z[3:1] : celloutsig_1_7z[11:9];
  assign celloutsig_0_7z = celloutsig_0_4z ? _01_[8:6] : _01_[7:5];
  assign celloutsig_1_19z = celloutsig_1_6z[6:3] << { celloutsig_1_1z[2:0], celloutsig_1_15z };
  assign celloutsig_0_0z = in_data[67:60] >>> in_data[76:69];
  assign celloutsig_1_7z = { in_data[153:149], celloutsig_1_6z } >>> in_data[169:158];
  assign celloutsig_1_17z = in_data[186:183] >>> celloutsig_1_5z[5:2];
  assign celloutsig_0_10z = { celloutsig_0_9z[17:0], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_6z } >>> { celloutsig_0_4z, celloutsig_0_4z, _01_, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_0_3z = ~((celloutsig_0_1z & celloutsig_0_2z[0]) | celloutsig_0_2z[1]);
  assign celloutsig_0_6z = ~((_01_[0] & celloutsig_0_1z) | celloutsig_0_1z);
  assign celloutsig_0_1z = ~((celloutsig_0_0z[5] & celloutsig_0_0z[6]) | celloutsig_0_0z[6]);
  assign celloutsig_0_15z = ~((celloutsig_0_14z & celloutsig_0_9z[13]) | celloutsig_0_7z[2]);
  assign celloutsig_0_35z = ~((celloutsig_0_2z[0] & celloutsig_0_17z) | (celloutsig_0_14z & celloutsig_0_27z[2]));
  assign celloutsig_1_15z = ~((celloutsig_1_12z[0] & celloutsig_1_4z) | (celloutsig_1_8z[13] & celloutsig_1_13z));
  assign celloutsig_0_8z = ~((celloutsig_0_0z[7] & celloutsig_0_1z) | (celloutsig_0_2z[2] & celloutsig_0_3z));
  assign celloutsig_0_21z = ~((celloutsig_0_4z & celloutsig_0_2z[0]) | (celloutsig_0_4z & celloutsig_0_7z[1]));
  assign _02_[6] = _00_;
  assign { out_data[144:128], out_data[99:96], out_data[32], out_data[10:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_51z, celloutsig_0_52z };
endmodule
