/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [10:0] _00_;
  reg [10:0] _01_;
  reg [10:0] _02_;
  reg [42:0] _03_;
  wire celloutsig_0_0z;
  wire [49:0] celloutsig_0_11z;
  wire [2:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [15:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [14:0] celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire [6:0] celloutsig_0_19z;
  wire [8:0] celloutsig_0_1z;
  wire [15:0] celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [7:0] celloutsig_0_25z;
  wire [8:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [26:0] celloutsig_0_37z;
  wire [2:0] celloutsig_0_38z;
  wire [28:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire [5:0] celloutsig_0_45z;
  wire [2:0] celloutsig_0_48z;
  wire [5:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_52z;
  wire [5:0] celloutsig_0_54z;
  wire [26:0] celloutsig_0_57z;
  wire [8:0] celloutsig_0_5z;
  wire [8:0] celloutsig_0_67z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_91z;
  wire [6:0] celloutsig_0_92z;
  wire celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire [14:0] celloutsig_1_11z;
  wire [9:0] celloutsig_1_12z;
  wire [9:0] celloutsig_1_13z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_17z;
  wire [13:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_7z;
  wire [24:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_23z = celloutsig_0_0z ? celloutsig_0_6z : celloutsig_0_16z;
  assign celloutsig_1_3z = !(celloutsig_1_2z ? celloutsig_1_1z : celloutsig_1_1z);
  assign celloutsig_0_2z = ~(celloutsig_0_1z[6] | celloutsig_0_0z);
  assign celloutsig_0_44z = ~((celloutsig_0_31z | celloutsig_0_38z[0]) & celloutsig_0_40z);
  assign celloutsig_0_28z = ~((celloutsig_0_11z[48] | celloutsig_0_19z[6]) & celloutsig_0_27z);
  assign celloutsig_0_91z = celloutsig_0_40z | celloutsig_0_67z[4];
  assign celloutsig_0_40z = ~(celloutsig_0_6z ^ celloutsig_0_1z[7]);
  assign celloutsig_1_17z = ~(celloutsig_1_5z ^ in_data[159]);
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _00_ <= 11'h000;
    else _00_ <= { celloutsig_0_20z[9:6], celloutsig_0_4z, celloutsig_0_22z };
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[96])
    if (clkin_data[96]) _02_ <= 11'h000;
    else _02_ <= { celloutsig_0_1z[6:5], celloutsig_0_1z };
  always_ff @(negedge clkin_data[32], posedge clkin_data[128])
    if (clkin_data[128]) _01_ <= 11'h000;
    else _01_ <= { in_data[148:139], celloutsig_1_3z };
  always_ff @(negedge clkin_data[0], posedge clkin_data[96])
    if (clkin_data[96]) _03_ <= 43'h00000000000;
    else _03_ <= { celloutsig_0_15z[10:0], celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_16z, celloutsig_0_20z, celloutsig_0_13z };
  assign celloutsig_0_5z = { celloutsig_0_1z[8:1], celloutsig_0_2z } & { in_data[84:83], celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_0_54z = { celloutsig_0_48z, celloutsig_0_48z } & _03_[9:4];
  assign celloutsig_1_4z = in_data[169:166] & { in_data[115:114], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_18z = { celloutsig_0_5z[1:0], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_7z } & celloutsig_0_3z[9:4];
  assign celloutsig_0_19z = _02_[6:0] / { 1'h1, celloutsig_0_15z[14:9] };
  assign celloutsig_0_25z = { celloutsig_0_1z[7:1], celloutsig_0_8z } / { 1'h1, celloutsig_0_20z[13:11], celloutsig_0_12z, celloutsig_0_9z };
  assign celloutsig_1_7z = { _01_[7:3], celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_3z, _01_, celloutsig_1_5z } === { in_data[157:154], celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_0_32z = { celloutsig_0_4z[5:4], celloutsig_0_27z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_6z } > { celloutsig_0_20z[13:4], celloutsig_0_16z, celloutsig_0_28z, celloutsig_0_14z, celloutsig_0_27z, celloutsig_0_0z, celloutsig_0_23z };
  assign celloutsig_0_7z = { celloutsig_0_1z[8:2], celloutsig_0_2z } > { in_data[73:67], celloutsig_0_6z };
  assign celloutsig_1_1z = celloutsig_1_0z[5:1] > in_data[181:177];
  assign celloutsig_0_16z = { in_data[53:44], celloutsig_0_0z } && in_data[30:20];
  assign celloutsig_0_48z = _00_[2:0] % { 1'h1, celloutsig_0_12z[1:0] };
  assign celloutsig_1_12z = celloutsig_1_9z[15:6] % { 1'h1, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_0_11z = { in_data[82:70], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_6z } % { 1'h1, celloutsig_0_3z[24:6], celloutsig_0_3z, celloutsig_0_7z };
  assign celloutsig_0_20z = { in_data[27:15], celloutsig_0_12z } % { 1'h1, in_data[44:40], celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_1_0z = in_data[138:133] * in_data[177:172];
  assign celloutsig_0_38z = in_data[68] ? celloutsig_0_18z[3:1] : celloutsig_0_26z[2:0];
  assign celloutsig_1_9z = celloutsig_1_3z ? { in_data[175:153], celloutsig_1_2z, celloutsig_1_5z } : in_data[183:159];
  assign celloutsig_0_26z = celloutsig_0_2z ? { celloutsig_0_4z[2], celloutsig_0_25z } : _02_[10:2];
  assign celloutsig_0_31z = { celloutsig_0_1z[6:1], celloutsig_0_19z, celloutsig_0_28z, celloutsig_0_1z } != { in_data[37:22], celloutsig_0_18z, celloutsig_0_0z };
  assign celloutsig_0_50z = celloutsig_0_4z[5:3] != { _03_[35:34], celloutsig_0_7z };
  assign celloutsig_0_6z = celloutsig_0_3z[15:13] != celloutsig_0_3z[9:7];
  assign celloutsig_0_9z = in_data[84:77] != { celloutsig_0_1z[7:1], celloutsig_0_0z };
  assign celloutsig_1_5z = celloutsig_1_4z[2:0] != { celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_13z = { celloutsig_0_1z[6:3], celloutsig_0_0z } != { celloutsig_0_5z[1:0], celloutsig_0_12z };
  assign celloutsig_0_22z = { celloutsig_0_20z[13:1], celloutsig_0_7z, celloutsig_0_2z } != { celloutsig_0_20z[8:1], celloutsig_0_19z };
  assign celloutsig_0_37z = - { _03_[29:4], celloutsig_0_28z };
  assign celloutsig_0_92z = - { celloutsig_0_57z[15:10], celloutsig_0_42z };
  assign celloutsig_0_45z = celloutsig_0_37z[13:8] | { celloutsig_0_42z, celloutsig_0_28z, celloutsig_0_38z, celloutsig_0_44z };
  assign celloutsig_1_18z = { celloutsig_1_13z[6:1], celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_17z } | { celloutsig_1_17z, celloutsig_1_4z, celloutsig_1_14z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_0_0z = & in_data[7:5];
  assign celloutsig_0_8z = | { celloutsig_0_5z[8:1], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_0_14z = | { celloutsig_0_1z[8:6], celloutsig_0_12z, celloutsig_0_6z };
  assign celloutsig_0_42z = celloutsig_0_40z & celloutsig_0_32z;
  assign celloutsig_0_52z = ~^ celloutsig_0_3z[21:19];
  assign celloutsig_1_2z = ~^ in_data[163:155];
  assign celloutsig_1_19z = ~^ { celloutsig_1_13z, celloutsig_1_7z };
  assign celloutsig_0_17z = { in_data[73:62], celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_2z } >> { celloutsig_0_3z[16:15], celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_8z };
  assign celloutsig_1_14z = celloutsig_1_12z[2:0] >>> celloutsig_1_12z[3:1];
  assign celloutsig_0_57z = { celloutsig_0_20z[12:7], celloutsig_0_0z, celloutsig_0_1z, _02_ } - { celloutsig_0_54z, celloutsig_0_8z, celloutsig_0_54z, celloutsig_0_25z, celloutsig_0_45z };
  assign celloutsig_0_67z = _02_[9:1] - { celloutsig_0_26z[7:2], celloutsig_0_50z, celloutsig_0_52z, celloutsig_0_0z };
  assign celloutsig_0_12z = celloutsig_0_4z[2:0] - _02_[7:5];
  assign celloutsig_0_3z = { in_data[60:41], celloutsig_0_1z } - { in_data[80:53], celloutsig_0_0z };
  assign celloutsig_0_4z = celloutsig_0_3z[15:10] ~^ in_data[66:61];
  assign celloutsig_0_1z = in_data[69:61] ~^ in_data[93:85];
  assign celloutsig_1_11z = { in_data[176:168], celloutsig_1_0z } ~^ celloutsig_1_9z[24:10];
  assign celloutsig_0_15z = { _02_[3:0], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_9z } ~^ celloutsig_0_3z[17:2];
  assign celloutsig_1_13z = { celloutsig_1_0z[1:0], celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_7z } ^ celloutsig_1_11z[13:4];
  assign celloutsig_0_27z = ~((celloutsig_0_17z[6] & celloutsig_0_6z) | celloutsig_0_16z);
  assign { out_data[141:128], out_data[96], out_data[32], out_data[6:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_91z, celloutsig_0_92z };
endmodule
