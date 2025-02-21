/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [13:0] _01_;
  wire [25:0] _02_;
  reg [14:0] _03_;
  wire [10:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [8:0] celloutsig_0_1z;
  wire [6:0] celloutsig_0_20z;
  wire [7:0] celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [8:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [4:0] celloutsig_0_2z;
  wire [4:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [14:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [46:0] celloutsig_0_4z;
  wire [24:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [11:0] celloutsig_0_7z;
  wire [6:0] celloutsig_0_8z;
  wire [5:0] celloutsig_0_9z;
  wire [7:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [3:0] celloutsig_1_15z;
  wire [4:0] celloutsig_1_17z;
  wire [9:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [11:0] celloutsig_1_2z;
  wire [10:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [16:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_38z = celloutsig_0_19z | ~(celloutsig_0_3z);
  assign celloutsig_1_1z = in_data[159] | ~(in_data[140]);
  assign celloutsig_0_11z = celloutsig_0_6z | ~(celloutsig_0_10z[2]);
  assign celloutsig_1_6z = celloutsig_1_4z[1] | celloutsig_1_2z[3];
  assign celloutsig_0_31z = celloutsig_0_26z | celloutsig_0_3z;
  assign celloutsig_0_36z = celloutsig_0_26z ^ celloutsig_0_35z[8];
  assign celloutsig_0_37z = celloutsig_0_15z ^ celloutsig_0_36z;
  reg [25:0] _11_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _11_ <= 26'h0000000;
    else _11_ <= in_data[47:22];
  assign { _02_[25:20], _00_, _02_[18:0] } = _11_;
  always_ff @(negedge clkin_data[32], negedge clkin_data[64])
    if (!clkin_data[64]) _01_ <= 14'h0000;
    else _01_ <= { celloutsig_1_2z[5:2], celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_5z };
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _03_ <= 15'h0000;
    else _03_ <= { celloutsig_0_7z[6:0], celloutsig_0_16z, celloutsig_0_8z };
  assign celloutsig_0_7z = _02_[15:4] & { _02_[15:6], celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_10z = celloutsig_0_7z[11:1] & { celloutsig_0_5z[17:13], celloutsig_0_9z };
  assign celloutsig_0_3z = { _02_[20], _00_, _02_[18:17], celloutsig_0_2z, celloutsig_0_2z } == _02_[17:4];
  assign celloutsig_0_6z = celloutsig_0_1z[3:1] == celloutsig_0_2z[3:1];
  assign celloutsig_0_15z = celloutsig_0_1z[5:3] == celloutsig_0_2z[2:0];
  assign celloutsig_0_18z = { celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_11z, celloutsig_0_8z } === _02_[18:9];
  assign celloutsig_0_23z = { in_data[69:52], celloutsig_0_8z } === { celloutsig_0_21z, celloutsig_0_20z, celloutsig_0_12z, celloutsig_0_1z };
  assign celloutsig_0_26z = { celloutsig_0_20z[4:2], celloutsig_0_19z, celloutsig_0_20z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_10z } === { celloutsig_0_4z[26:3], celloutsig_0_24z, celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_21z };
  assign celloutsig_1_5z = celloutsig_1_2z[10:8] <= celloutsig_1_2z[10:8];
  assign celloutsig_1_11z = celloutsig_1_7z[12:6] <= { celloutsig_1_0z[6:2], celloutsig_1_1z, celloutsig_1_6z };
  assign celloutsig_1_12z = { celloutsig_1_2z[10:6], celloutsig_1_11z, celloutsig_1_6z } <= celloutsig_1_2z[10:4];
  assign celloutsig_0_24z = { celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_11z } <= _03_[4:1];
  assign celloutsig_0_13z = celloutsig_0_5z[8:4] || celloutsig_0_5z[24:20];
  assign celloutsig_1_18z = { _01_[12:4], celloutsig_1_11z } * { celloutsig_1_17z[3:0], celloutsig_1_17z, celloutsig_1_13z };
  assign celloutsig_0_17z = in_data[66:63] * celloutsig_0_7z[8:5];
  assign celloutsig_1_7z = in_data[140] ? { celloutsig_1_0z[4:0], celloutsig_1_0z, celloutsig_1_4z } : { celloutsig_1_4z[3:1], celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_6z };
  assign celloutsig_0_20z = celloutsig_0_3z ? { celloutsig_0_1z[4:2], celloutsig_0_17z } : { celloutsig_0_5z[20:15], celloutsig_0_18z };
  assign celloutsig_0_30z = celloutsig_0_5z[5] ? { 3'h7, celloutsig_0_25z[2:1] } : celloutsig_0_21z[7:3];
  assign celloutsig_1_8z = { celloutsig_1_7z[2], celloutsig_1_1z, celloutsig_1_6z } != celloutsig_1_2z[10:8];
  assign celloutsig_1_13z = { celloutsig_1_4z[2:1], celloutsig_1_3z } != { in_data[149:140], celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_1z };
  assign celloutsig_1_19z = _01_[5:0] != { celloutsig_1_3z[3], celloutsig_1_15z, celloutsig_1_13z };
  assign celloutsig_0_12z = { celloutsig_0_7z[10:3], celloutsig_0_3z } != celloutsig_0_1z;
  assign celloutsig_0_16z = _02_[9:6] != celloutsig_0_4z[46:43];
  assign celloutsig_0_19z = celloutsig_0_2z[4:2] != { celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_6z };
  assign celloutsig_1_4z = - celloutsig_1_0z[6:3];
  assign celloutsig_1_15z = - in_data[131:128];
  assign celloutsig_0_21z = - { celloutsig_0_4z[45:44], celloutsig_0_9z };
  assign celloutsig_0_2z = - in_data[67:63];
  assign celloutsig_0_14z = celloutsig_0_10z[9:0] !== celloutsig_0_10z[10:1];
  assign celloutsig_0_4z = { in_data[30:19], _02_[25:20], _00_, _02_[18:0], celloutsig_0_1z } | { _02_[15:1], _02_[25:20], _00_, _02_[18:0], celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_5z = { in_data[23:0], celloutsig_0_3z } | { in_data[31:16], celloutsig_0_1z };
  assign celloutsig_1_17z = { celloutsig_1_15z, celloutsig_1_12z } | { celloutsig_1_7z[10], celloutsig_1_15z };
  assign celloutsig_0_1z = in_data[66:58] << in_data[21:13];
  assign celloutsig_1_0z = in_data[142:135] >> in_data[178:171];
  assign celloutsig_0_9z = celloutsig_0_1z[5:0] >> celloutsig_0_5z[16:11];
  assign celloutsig_0_35z = { celloutsig_0_20z[6:1], celloutsig_0_14z, celloutsig_0_30z, celloutsig_0_13z, celloutsig_0_31z, celloutsig_0_15z } ~^ { celloutsig_0_10z[10:1], celloutsig_0_30z };
  assign celloutsig_1_2z = { in_data[163:160], celloutsig_1_0z } ~^ { in_data[137:127], celloutsig_1_1z };
  assign celloutsig_1_3z = { in_data[175:167], celloutsig_1_1z, celloutsig_1_1z } ~^ celloutsig_1_2z[10:0];
  assign celloutsig_0_8z = celloutsig_0_7z[7:1] ~^ { celloutsig_0_2z[1:0], celloutsig_0_2z };
  assign celloutsig_0_25z[2:0] = _02_[9:7] ~^ { celloutsig_0_23z, celloutsig_0_12z, celloutsig_0_14z };
  assign _02_[19] = _00_;
  assign celloutsig_0_25z[8:3] = 6'h3f;
  assign { out_data[137:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_37z, celloutsig_0_38z };
endmodule
