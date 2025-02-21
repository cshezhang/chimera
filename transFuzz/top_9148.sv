/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [20:0] _03_;
  wire [22:0] celloutsig_0_0z;
  wire [16:0] celloutsig_0_10z;
  wire [4:0] celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [4:0] celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire [6:0] celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [6:0] celloutsig_0_2z;
  reg [9:0] celloutsig_0_30z;
  wire celloutsig_0_33z;
  wire [5:0] celloutsig_0_35z;
  wire [8:0] celloutsig_0_36z;
  wire [2:0] celloutsig_0_38z;
  wire [6:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire [34:0] celloutsig_0_46z;
  wire [6:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [8:0] celloutsig_0_50z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  reg [3:0] celloutsig_0_9z;
  wire [16:0] celloutsig_1_0z;
  wire [2:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [4:0] celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = celloutsig_0_1z ? celloutsig_0_0z[14] : celloutsig_0_3z;
  assign celloutsig_1_19z = celloutsig_1_3z ? celloutsig_1_2z : celloutsig_1_4z;
  assign celloutsig_1_1z = ~(in_data[109] | in_data[135]);
  assign celloutsig_0_14z = ~(in_data[12] | _01_);
  assign celloutsig_0_15z = ~(celloutsig_0_14z | celloutsig_0_5z);
  assign celloutsig_0_25z = ~(_02_ | celloutsig_0_2z[1]);
  assign celloutsig_0_3z = ~(celloutsig_0_1z | celloutsig_0_1z);
  assign celloutsig_0_33z = ~(celloutsig_0_0z[8] | celloutsig_0_30z[6]);
  assign celloutsig_1_4z = celloutsig_1_1z | celloutsig_1_3z;
  assign celloutsig_0_5z = celloutsig_0_0z[12] ^ celloutsig_0_3z;
  assign celloutsig_1_5z = ~(celloutsig_1_4z ^ celloutsig_1_0z[8]);
  reg [20:0] _15_;
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[64])
    if (!clkin_data[64]) _15_ <= 21'h000000;
    else _15_ <= in_data[94:74];
  assign { _03_[20:19], _02_, _03_[17:7], _01_, _03_[5:2], _00_, _03_[0] } = _15_;
  assign celloutsig_0_36z = celloutsig_0_0z[14:6] / { 1'h1, celloutsig_0_25z, celloutsig_0_20z };
  assign celloutsig_0_38z = { celloutsig_0_20z[1:0], celloutsig_0_33z } / { 1'h1, celloutsig_0_11z[0], celloutsig_0_23z };
  assign celloutsig_1_0z = in_data[140:124] / { 1'h1, in_data[139:125], in_data[96] };
  assign celloutsig_0_2z = celloutsig_0_0z[17:11] / { 1'h1, celloutsig_0_0z[5:0] };
  assign celloutsig_0_7z = in_data[54:49] === { celloutsig_0_2z[1], celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_8z = { celloutsig_0_2z[2], celloutsig_0_1z, celloutsig_0_4z } === celloutsig_0_2z[5:3];
  assign celloutsig_0_6z = { celloutsig_0_0z[19:1], celloutsig_0_3z } >= { in_data[25:9], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_0_1z = celloutsig_0_0z[22:12] >= celloutsig_0_0z[10:0];
  assign celloutsig_0_28z = { celloutsig_0_9z[2:1], celloutsig_0_22z, celloutsig_0_13z, celloutsig_0_17z } <= { celloutsig_0_13z, celloutsig_0_22z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_27z };
  assign celloutsig_0_27z = { celloutsig_0_10z[4], celloutsig_0_3z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_14z, celloutsig_0_9z } < { in_data[78:75], celloutsig_0_3z, celloutsig_0_22z, celloutsig_0_2z };
  assign celloutsig_1_2z = in_data[110] & ~(in_data[160]);
  assign celloutsig_0_13z = celloutsig_0_3z & ~(celloutsig_0_4z);
  assign celloutsig_0_22z = celloutsig_0_18z[4] & ~(celloutsig_0_7z);
  assign celloutsig_0_39z = celloutsig_0_0z[19:13] % { 1'h1, celloutsig_0_0z[11:8], celloutsig_0_22z, celloutsig_0_8z };
  assign celloutsig_0_11z = { celloutsig_0_2z[3:0], celloutsig_0_8z } % { 1'h1, in_data[15:12] };
  assign celloutsig_0_18z = { _03_[19], _02_, celloutsig_0_6z, celloutsig_0_17z, celloutsig_0_3z } % { 1'h1, celloutsig_0_9z };
  assign celloutsig_0_35z = { celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_28z, celloutsig_0_26z } * { celloutsig_0_0z[22:18], celloutsig_0_23z };
  assign celloutsig_0_50z = celloutsig_0_36z * { celloutsig_0_46z[0], celloutsig_0_2z, celloutsig_0_25z };
  assign celloutsig_0_10z = in_data[73:57] * { celloutsig_0_0z[19:4], celloutsig_0_6z };
  assign celloutsig_0_16z = celloutsig_0_2z[5:0] != celloutsig_0_0z[22:17];
  assign celloutsig_0_0z = - in_data[63:41];
  assign celloutsig_0_46z = - { in_data[91:65], celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_42z, celloutsig_0_16z };
  assign celloutsig_0_49z = { celloutsig_0_27z, celloutsig_0_35z } | { celloutsig_0_18z[3:0], celloutsig_0_38z };
  assign celloutsig_0_23z = & celloutsig_0_10z[14:7];
  assign celloutsig_0_17z = ~^ { celloutsig_0_2z[3:2], celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_5z };
  assign celloutsig_0_42z = ^ { _03_[13:7], celloutsig_0_1z, celloutsig_0_39z };
  assign celloutsig_1_3z = ^ in_data[179:165];
  assign celloutsig_0_26z = ^ { celloutsig_0_20z[3], celloutsig_0_18z, celloutsig_0_17z };
  assign celloutsig_1_8z = { in_data[176:173], celloutsig_1_5z } << { celloutsig_1_0z[16:13], celloutsig_1_5z };
  assign celloutsig_1_18z = { celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_5z } << celloutsig_1_8z[4:2];
  assign celloutsig_0_20z = { celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_3z } - _03_[16:10];
  always_latch
    if (!clkin_data[64]) celloutsig_0_9z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_9z = { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_7z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_30z = 10'h000;
    else if (!clkin_data[32]) celloutsig_0_30z = { _03_[10:7], _01_, _03_[5:2], celloutsig_0_13z };
  assign { _03_[18], _03_[6], _03_[1] } = { _02_, _01_, _00_ };
  assign { out_data[130:128], out_data[96], out_data[38:32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_49z, celloutsig_0_50z };
endmodule
