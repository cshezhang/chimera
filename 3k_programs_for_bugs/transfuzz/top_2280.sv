/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [3:0] _03_;
  wire celloutsig_0_0z;
  reg [13:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [9:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [26:0] celloutsig_0_15z;
  wire [18:0] celloutsig_0_17z;
  wire [15:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [2:0] celloutsig_0_1z;
  wire [2:0] celloutsig_0_20z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_28z;
  wire [3:0] celloutsig_0_29z;
  wire [2:0] celloutsig_0_2z;
  wire [2:0] celloutsig_0_31z;
  wire [3:0] celloutsig_0_32z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [4:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire [22:0] celloutsig_0_5z;
  wire celloutsig_0_64z;
  wire [3:0] celloutsig_0_65z;
  reg [8:0] celloutsig_0_6z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [5:0] celloutsig_1_15z;
  wire [12:0] celloutsig_1_16z;
  wire [6:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [8:0] celloutsig_1_1z;
  wire [3:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [15:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_12z = ~(in_data[98] | celloutsig_1_2z[1]);
  assign celloutsig_0_14z = ~(celloutsig_0_9z | _00_);
  assign celloutsig_0_51z = ~((celloutsig_0_48z[3] | _01_) & (celloutsig_0_38z | celloutsig_0_23z));
  assign celloutsig_1_3z = ~((in_data[169] | celloutsig_1_0z[2]) & (celloutsig_1_0z[5] | celloutsig_1_1z[6]));
  assign celloutsig_1_7z = ~((celloutsig_1_1z[1] | in_data[113]) & (celloutsig_1_4z | celloutsig_1_3z));
  assign celloutsig_1_11z = ~((celloutsig_1_7z | celloutsig_1_10z) & (celloutsig_1_0z[5] | celloutsig_1_10z));
  assign celloutsig_0_9z = ~((_00_ | _02_) & (celloutsig_0_0z | celloutsig_0_0z));
  assign celloutsig_0_19z = ~((celloutsig_0_6z[7] | celloutsig_0_8z) & (celloutsig_0_9z | celloutsig_0_11z));
  assign celloutsig_0_23z = ~((celloutsig_0_17z[6] | celloutsig_0_11z) & (celloutsig_0_14z | celloutsig_0_5z[15]));
  assign celloutsig_0_28z = ~((celloutsig_0_19z | celloutsig_0_11z) & (celloutsig_0_15z[2] | celloutsig_0_5z[4]));
  reg [3:0] _14_;
  always_ff @(posedge clkin_data[64], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _14_ <= 4'h0;
    else _14_ <= { in_data[77:75], celloutsig_0_0z };
  assign { _01_, _02_, _03_[1], _00_ } = _14_;
  assign celloutsig_0_48z = { celloutsig_0_10z[1:0], celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_9z } / { 1'h1, celloutsig_0_18z[8], celloutsig_0_19z, celloutsig_0_24z, celloutsig_0_25z };
  assign celloutsig_0_5z = { in_data[34:16], celloutsig_0_2z, celloutsig_0_4z } / { 1'h1, in_data[43:25], celloutsig_0_2z };
  assign celloutsig_0_1z = in_data[20:18] / { 1'h1, in_data[80], celloutsig_0_0z };
  assign celloutsig_0_12z = celloutsig_0_5z[18:9] / { 1'h1, celloutsig_0_10z[12:7], celloutsig_0_1z };
  assign celloutsig_0_4z = { celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_3z } == { in_data[55:54], celloutsig_0_1z };
  assign celloutsig_1_5z = { celloutsig_1_1z[5], celloutsig_1_0z } == celloutsig_1_1z[8:2];
  assign celloutsig_1_13z = in_data[182:177] == { celloutsig_1_1z[7:3], celloutsig_1_4z };
  assign celloutsig_1_4z = in_data[155:140] === { celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_9z = { celloutsig_1_0z[2:1], celloutsig_1_5z } === celloutsig_1_1z[3:1];
  assign celloutsig_1_10z = { in_data[118:111], celloutsig_1_5z, celloutsig_1_3z } === celloutsig_1_6z[11:2];
  assign celloutsig_1_19z = { celloutsig_1_18z[5:0], celloutsig_1_12z, celloutsig_1_7z } === { celloutsig_1_1z[6:1], celloutsig_1_9z, celloutsig_1_11z };
  assign celloutsig_1_14z = { celloutsig_1_2z, celloutsig_1_11z } && { celloutsig_1_0z[5], celloutsig_1_13z, celloutsig_1_7z, celloutsig_1_9z, celloutsig_1_7z };
  assign celloutsig_0_8z = ! celloutsig_0_6z[5:0];
  assign celloutsig_0_24z = ! celloutsig_0_18z[15:8];
  assign celloutsig_0_31z = { celloutsig_0_13z, celloutsig_0_28z, celloutsig_0_25z } * { _02_, _03_[1], celloutsig_0_28z };
  assign celloutsig_1_6z = in_data[134:119] * { celloutsig_1_1z[5:3], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_0_2z = celloutsig_0_1z[1] ? in_data[62:60] : in_data[42:40];
  assign celloutsig_0_65z = - { celloutsig_0_32z[1:0], celloutsig_0_13z, celloutsig_0_51z };
  assign celloutsig_0_15z = - { celloutsig_0_12z[8:5], celloutsig_0_5z };
  assign celloutsig_1_18z = ~ { celloutsig_1_16z[9:5], celloutsig_1_12z, celloutsig_1_4z };
  assign celloutsig_0_0z = in_data[89] & in_data[12];
  assign celloutsig_0_25z = in_data[22] & celloutsig_0_4z;
  assign celloutsig_0_3z = ^ { celloutsig_0_2z[1:0], celloutsig_0_0z };
  assign celloutsig_0_38z = ^ { in_data[22:18], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_11z, _01_, _02_, _03_[1], _00_, celloutsig_0_8z, celloutsig_0_29z, celloutsig_0_4z };
  assign celloutsig_0_64z = ^ { celloutsig_0_5z[2], celloutsig_0_31z };
  assign celloutsig_0_13z = ^ { celloutsig_0_12z[9:3], celloutsig_0_3z };
  assign celloutsig_0_29z = celloutsig_0_17z[10:7] >> { celloutsig_0_6z[4], celloutsig_0_20z };
  assign celloutsig_1_1z = { celloutsig_1_0z[3:1], celloutsig_1_0z } >> in_data[179:171];
  assign celloutsig_1_16z = { celloutsig_1_1z[8:4], celloutsig_1_15z, celloutsig_1_4z, celloutsig_1_14z } >> { in_data[183:177], celloutsig_1_10z, celloutsig_1_7z, celloutsig_1_13z, celloutsig_1_14z, celloutsig_1_13z, celloutsig_1_4z };
  assign celloutsig_1_2z = celloutsig_1_0z[3:0] <<< celloutsig_1_0z[3:0];
  assign celloutsig_0_32z = celloutsig_0_6z[3:0] ~^ celloutsig_0_10z[7:4];
  assign celloutsig_1_0z = in_data[190:185] ^ in_data[133:128];
  assign celloutsig_1_15z = { in_data[141], celloutsig_1_14z, celloutsig_1_2z } ^ { celloutsig_1_0z[4:1], celloutsig_1_10z, celloutsig_1_9z };
  assign celloutsig_0_17z = celloutsig_0_5z[19:1] ^ { in_data[76:67], celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_1z };
  assign celloutsig_0_18z = { in_data[60], celloutsig_0_10z, celloutsig_0_8z } ^ { celloutsig_0_5z[17:6], celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_20z = { celloutsig_0_5z[20:19], celloutsig_0_14z } ^ { celloutsig_0_6z[7:6], celloutsig_0_13z };
  assign celloutsig_0_11z = ~((celloutsig_0_5z[15] & celloutsig_0_6z[3]) | celloutsig_0_0z);
  always_latch
    if (!clkin_data[32]) celloutsig_0_6z = 9'h000;
    else if (clkin_data[0]) celloutsig_0_6z = celloutsig_0_5z[10:2];
  always_latch
    if (celloutsig_1_19z) celloutsig_0_10z = 14'h0000;
    else if (!clkin_data[0]) celloutsig_0_10z = { celloutsig_0_6z[0], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_6z };
  assign { _03_[3:2], _03_[0] } = { _01_, _02_, _00_ };
  assign { out_data[134:128], out_data[96], out_data[32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_64z, celloutsig_0_65z };
endmodule
