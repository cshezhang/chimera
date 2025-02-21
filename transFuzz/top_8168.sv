/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [7:0] _00_;
  reg [7:0] _01_;
  wire [2:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [13:0] celloutsig_0_16z;
  wire [21:0] celloutsig_0_17z;
  wire [4:0] celloutsig_0_18z;
  wire [12:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [21:0] celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [33:0] celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire celloutsig_0_33z;
  wire celloutsig_0_36z;
  wire [13:0] celloutsig_0_3z;
  wire [13:0] celloutsig_0_40z;
  wire celloutsig_0_45z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_14z;
  wire [5:0] celloutsig_1_18z;
  wire [7:0] celloutsig_1_19z;
  wire [6:0] celloutsig_1_1z;
  wire [15:0] celloutsig_1_2z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_8z = celloutsig_0_2z ? celloutsig_0_0z[1] : celloutsig_0_4z;
  assign celloutsig_0_5z = ~celloutsig_0_2z;
  assign celloutsig_1_4z = in_data[188] | celloutsig_1_2z[8];
  assign celloutsig_0_0z = in_data[51:49] + in_data[32:30];
  assign celloutsig_1_0z = in_data[136:133] + in_data[136:133];
  assign celloutsig_1_18z = { celloutsig_1_2z[15:12], celloutsig_1_8z, celloutsig_1_14z } + { in_data[110:107], celloutsig_1_14z, celloutsig_1_5z };
  assign celloutsig_0_16z = { celloutsig_0_3z[12:3], celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_5z } + { celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_4z, 1'h1, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_15z };
  assign celloutsig_0_18z = celloutsig_0_16z[5:1] + { celloutsig_0_7z[2:1], 1'h1, celloutsig_0_13z, celloutsig_0_14z };
  assign celloutsig_0_27z = { celloutsig_0_20z[15:4], celloutsig_0_19z, celloutsig_0_11z, celloutsig_0_22z, celloutsig_0_0z, celloutsig_0_22z, celloutsig_0_24z, celloutsig_0_25z, celloutsig_0_11z } + in_data[89:56];
  reg [12:0] _11_;
  always_ff @(posedge celloutsig_1_19z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _11_ <= 13'h0000;
    else _11_ <= { celloutsig_0_40z[13:2], celloutsig_0_4z };
  assign out_data[44:32] = _11_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _00_ <= 8'h00;
    else _00_ <= { celloutsig_1_1z[4], celloutsig_1_1z[6:4], celloutsig_1_0z };
  always_ff @(posedge celloutsig_1_19z[0], posedge clkin_data[32])
    if (clkin_data[32]) _01_ <= 8'h00;
    else _01_ <= celloutsig_0_19z[9:2];
  assign celloutsig_0_17z = { celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_8z } / { 1'h1, in_data[59:44], celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_1z };
  assign celloutsig_1_5z = celloutsig_1_2z[4:0] == { celloutsig_1_1z[6:4], celloutsig_1_1z[6], celloutsig_1_4z };
  assign celloutsig_0_15z = { celloutsig_0_3z[4:3], celloutsig_0_13z } === { celloutsig_0_7z[2:1], celloutsig_0_8z };
  assign celloutsig_1_8z = { celloutsig_1_1z[4], celloutsig_1_1z[6:4] } && _00_[3:0];
  assign celloutsig_0_6z = { in_data[30], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_2z } && { in_data[17:12], celloutsig_0_4z };
  assign celloutsig_0_11z = { celloutsig_0_3z[0], celloutsig_0_5z, celloutsig_0_8z } && { celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_1z = in_data[93:79] && in_data[93:79];
  assign celloutsig_0_25z = 1'h1 && { celloutsig_0_17z[15:4], celloutsig_0_18z, celloutsig_0_18z };
  assign celloutsig_0_33z = { celloutsig_0_27z[5:0], celloutsig_0_5z } < { celloutsig_0_17z[11:8], celloutsig_0_7z[2:1], 1'h1 };
  assign celloutsig_0_36z = { celloutsig_0_10z, celloutsig_0_33z, celloutsig_0_14z, celloutsig_0_33z, celloutsig_0_13z, celloutsig_0_24z, celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_9z } < celloutsig_0_19z[11:2];
  assign celloutsig_0_13z = celloutsig_0_3z[7:4] < { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_10z };
  assign celloutsig_1_2z = in_data[114:99] % { 1'h1, in_data[158:155], celloutsig_1_1z[6:4], celloutsig_1_1z[6:4], celloutsig_1_1z[0], celloutsig_1_0z };
  assign celloutsig_1_19z = in_data[177:170] % { 1'h1, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_14z, celloutsig_1_6z };
  assign celloutsig_0_10z = { in_data[80:79], celloutsig_0_8z, celloutsig_0_4z } != { in_data[58], celloutsig_0_0z };
  assign celloutsig_0_22z = { celloutsig_0_19z[9:2], celloutsig_0_7z[2:1], 1'h1, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_18z, celloutsig_0_17z } != { _01_[7:1], celloutsig_0_6z, 1'h1, celloutsig_0_16z, celloutsig_0_15z, _01_, celloutsig_0_1z, celloutsig_0_7z[2:1], 1'h1, celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_10z };
  assign celloutsig_0_19z = - { celloutsig_0_17z[12:2], celloutsig_0_5z, celloutsig_0_8z };
  assign celloutsig_0_40z = { celloutsig_0_16z[12:0], celloutsig_0_25z } | { celloutsig_0_19z[12:2], celloutsig_0_6z, celloutsig_0_36z, celloutsig_0_36z };
  assign celloutsig_1_7z = in_data[122:120] | { celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_4z };
  assign celloutsig_0_2z = & { in_data[34:30], celloutsig_0_0z };
  assign celloutsig_1_6z = | { celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_2z[11:9] };
  assign celloutsig_1_14z = | in_data[133:123];
  assign celloutsig_0_24z = ~^ { in_data[46:39], celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_15z };
  assign celloutsig_0_45z = ^ { celloutsig_0_24z, celloutsig_0_6z, celloutsig_0_24z, celloutsig_0_22z, celloutsig_0_25z, celloutsig_0_6z };
  assign celloutsig_0_14z = ^ celloutsig_0_3z[12:10];
  assign celloutsig_0_3z = { in_data[40:35], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z } << { in_data[41:29], celloutsig_0_2z };
  assign celloutsig_0_20z = in_data[78:57] <<< { celloutsig_0_17z[12:11], celloutsig_0_14z, celloutsig_0_5z, 1'h1, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_2z };
  assign celloutsig_0_4z = ~((celloutsig_0_1z & celloutsig_0_1z) | (celloutsig_0_1z & celloutsig_0_1z));
  assign celloutsig_0_9z = ~((celloutsig_0_2z & celloutsig_0_1z) | (celloutsig_0_1z & celloutsig_0_2z));
  assign celloutsig_0_7z[2:1] = in_data[12:11] ~^ { celloutsig_0_4z, celloutsig_0_4z };
  assign { celloutsig_1_1z[6:4], celloutsig_1_1z[0] } = ~ celloutsig_1_0z;
  assign celloutsig_0_7z[0] = 1'h1;
  assign celloutsig_1_1z[3:1] = celloutsig_1_1z[6:4];
  assign { out_data[133:128], out_data[103:96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_45z };
endmodule
