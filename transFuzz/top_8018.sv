/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [8:0] _01_;
  reg [6:0] _02_;
  reg [6:0] _03_;
  reg [8:0] _04_;
  wire celloutsig_0_0z;
  wire [6:0] celloutsig_0_10z;
  wire [8:0] celloutsig_0_11z;
  wire [6:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [3:0] celloutsig_0_15z;
  wire [17:0] celloutsig_0_16z;
  wire [2:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [34:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [7:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [8:0] celloutsig_0_31z;
  wire [3:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_3z;
  wire [6:0] celloutsig_0_42z;
  wire celloutsig_0_4z;
  wire celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire [10:0] celloutsig_0_5z;
  wire celloutsig_0_63z;
  wire [8:0] celloutsig_0_64z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [2:0] celloutsig_1_11z;
  wire [5:0] celloutsig_1_13z;
  wire [11:0] celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire [20:0] celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire [9:0] celloutsig_1_1z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_54z = ~(celloutsig_0_29z | celloutsig_0_25z);
  assign celloutsig_0_13z = ~(celloutsig_0_11z[4] | celloutsig_0_5z[3]);
  assign celloutsig_0_23z = ~((_00_ | celloutsig_0_22z[12]) & (celloutsig_0_12z[6] | celloutsig_0_16z[17]));
  assign celloutsig_0_30z = celloutsig_0_7z | ~(celloutsig_0_27z);
  assign celloutsig_1_0z = in_data[104] | ~(in_data[97]);
  assign celloutsig_1_16z = celloutsig_1_1z[7] | ~(celloutsig_1_6z);
  assign celloutsig_1_6z = celloutsig_1_4z | celloutsig_1_0z;
  assign celloutsig_0_31z = { _01_[8], _00_, _01_[6], celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_7z, _01_[8], _00_, _01_[6] } + { celloutsig_0_1z, celloutsig_0_7z };
  assign celloutsig_0_42z = celloutsig_0_1z[6:0] + { celloutsig_0_0z, celloutsig_0_35z, celloutsig_0_15z, celloutsig_0_34z };
  assign celloutsig_0_15z = { celloutsig_0_10z[6:4], celloutsig_0_0z } + celloutsig_0_5z[9:6];
  reg [2:0] _15_;
  always_ff @(negedge celloutsig_1_19z[0], posedge clkin_data[32])
    if (clkin_data[32]) _15_ <= 3'h0;
    else _15_ <= { celloutsig_0_1z[4:3], celloutsig_0_4z };
  assign { _01_[8], _00_, _01_[6] } = _15_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _02_ <= 7'h00;
    else _02_ <= celloutsig_1_1z[6:0];
  always_ff @(negedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _03_ <= 7'h00;
    else _03_ <= in_data[109:103];
  always_ff @(negedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _04_ <= 9'h000;
    else _04_ <= { celloutsig_1_14z[8:1], celloutsig_1_10z };
  assign celloutsig_1_14z = { _03_[2:0], celloutsig_1_6z, _03_, celloutsig_1_8z } / { 1'h1, in_data[138:131], celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_1_18z = { celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_16z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_13z, celloutsig_1_8z } / { 1'h1, celloutsig_1_14z[9:2], _04_, celloutsig_1_3z, celloutsig_1_10z, celloutsig_1_10z };
  assign celloutsig_0_29z = celloutsig_0_11z[4:0] == { celloutsig_0_25z, celloutsig_0_18z, celloutsig_0_20z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_34z = { celloutsig_0_12z, celloutsig_0_14z } || { celloutsig_0_21z, celloutsig_0_12z };
  assign celloutsig_0_8z = { in_data[60:53], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z } || { in_data[80:72], celloutsig_0_3z, _01_[8], _00_, _01_[6] };
  assign celloutsig_0_14z = { celloutsig_0_5z[2:1], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_9z } || { celloutsig_0_10z[5:4], celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_12z };
  assign celloutsig_0_0z = in_data[23] & ~(in_data[15]);
  assign celloutsig_0_4z = celloutsig_0_1z[0] & ~(celloutsig_0_3z);
  assign celloutsig_1_3z = celloutsig_1_0z & ~(celloutsig_1_0z);
  assign celloutsig_0_21z = celloutsig_0_10z[4] & ~(celloutsig_0_9z);
  assign celloutsig_0_25z = celloutsig_0_15z[1] & ~(celloutsig_0_16z[6]);
  assign celloutsig_0_10z = celloutsig_0_5z[9:3] % { 1'h1, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_1z = { in_data[44:40], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } % { 1'h1, in_data[79:73] };
  assign celloutsig_0_16z = { _01_[6], celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_10z } % { 1'h1, in_data[16:8], celloutsig_0_14z, celloutsig_0_12z };
  assign celloutsig_0_22z = { in_data[44:11], celloutsig_0_20z } % { 1'h1, celloutsig_0_1z[6:0], celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_16z };
  assign celloutsig_0_28z = { celloutsig_0_1z[5:3], celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_21z, celloutsig_0_26z } % { 1'h1, celloutsig_0_16z[11:6], celloutsig_0_18z };
  assign celloutsig_0_64z = { celloutsig_0_31z[7:0], celloutsig_0_7z } * { celloutsig_0_52z, celloutsig_0_35z, celloutsig_0_23z, celloutsig_0_13z, celloutsig_0_17z, celloutsig_0_21z, celloutsig_0_63z };
  assign celloutsig_1_13z = celloutsig_1_11z[2] ? { _02_[5:2], celloutsig_1_5z, celloutsig_1_0z } : in_data[143:138];
  assign celloutsig_0_11z = celloutsig_0_10z[5] ? { celloutsig_0_4z, celloutsig_0_10z[6], 1'h1, celloutsig_0_10z[4:0], celloutsig_0_8z } : { celloutsig_0_1z[6:5], celloutsig_0_10z[6], 1'h0, celloutsig_0_10z[4:0] };
  assign celloutsig_0_17z = celloutsig_0_15z[1] ? { celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_3z } : celloutsig_0_10z[4:2];
  assign celloutsig_0_35z = { celloutsig_0_33z[3:2], celloutsig_0_29z, celloutsig_0_1z, celloutsig_0_34z } != { celloutsig_0_28z[5], celloutsig_0_29z, celloutsig_0_12z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_30z };
  assign celloutsig_0_26z = { celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_19z } != celloutsig_0_10z[4:1];
  assign celloutsig_0_5z = { in_data[11:3], celloutsig_0_4z, celloutsig_0_3z } | { in_data[21:15], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_2z };
  assign celloutsig_0_12z = celloutsig_0_10z | { celloutsig_0_10z[4:0], celloutsig_0_3z, celloutsig_0_9z };
  assign celloutsig_0_52z = & { celloutsig_0_18z, celloutsig_0_12z[6:5], celloutsig_0_7z };
  assign celloutsig_0_63z = | { celloutsig_0_8z, celloutsig_0_54z, celloutsig_0_17z, celloutsig_0_42z };
  assign celloutsig_0_9z = celloutsig_0_7z & celloutsig_0_4z;
  assign celloutsig_0_19z = celloutsig_0_1z[4] & celloutsig_0_16z[11];
  assign celloutsig_0_27z = celloutsig_0_17z[1] & celloutsig_0_12z[3];
  assign celloutsig_1_4z = | _02_[4:0];
  assign celloutsig_1_5z = | { _02_[6:1], celloutsig_1_1z };
  assign celloutsig_1_10z = | { celloutsig_1_9z, _02_[6:1], celloutsig_1_1z, in_data[108:101] };
  assign celloutsig_0_2z = | { celloutsig_0_1z, in_data[51:41] };
  assign celloutsig_1_7z = ~^ { celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_0_3z = ~^ { in_data[50:45], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_33z = { celloutsig_0_1z[5:4], celloutsig_0_3z, celloutsig_0_7z } <<< { in_data[20:18], celloutsig_0_9z };
  assign celloutsig_1_1z = { in_data[176:168], celloutsig_1_0z } - { in_data[146:139], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_11z = { celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_7z } - { celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_10z };
  assign celloutsig_1_19z = { celloutsig_1_11z[2:1], celloutsig_1_11z, celloutsig_1_0z, celloutsig_1_16z } - { celloutsig_1_13z[4], celloutsig_1_6z, celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_8z };
  assign celloutsig_0_7z = ~((in_data[5] & in_data[75]) | (celloutsig_0_0z & celloutsig_0_1z[2]));
  assign celloutsig_1_8z = ~((in_data[141] & celloutsig_1_6z) | (celloutsig_1_7z & celloutsig_1_5z));
  assign celloutsig_1_9z = ~((celloutsig_1_6z & celloutsig_1_6z) | (celloutsig_1_1z[6] & in_data[175]));
  assign celloutsig_0_18z = ~((celloutsig_0_5z[4] & celloutsig_0_13z) | (celloutsig_0_8z & celloutsig_0_3z));
  assign celloutsig_0_20z = ~((celloutsig_0_15z[1] & celloutsig_0_9z) | (celloutsig_0_11z[7] & celloutsig_0_1z[6]));
  assign { _01_[7], _01_[5:0] } = { _00_, celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_7z, _01_[8], _00_, _01_[6] };
  assign { out_data[148:128], out_data[102:96], out_data[32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_63z, celloutsig_0_64z };
endmodule
