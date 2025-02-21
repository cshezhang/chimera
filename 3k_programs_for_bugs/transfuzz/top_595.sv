/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [22:0] _00_;
  wire [28:0] _01_;
  reg [12:0] _02_;
  reg [15:0] _03_;
  wire celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [6:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [4:0] celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [5:0] celloutsig_0_23z;
  reg [12:0] celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire [3:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire [3:0] celloutsig_0_36z;
  wire [5:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [3:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire [18:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_54z;
  wire [2:0] celloutsig_0_56z;
  wire celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_78z;
  wire [9:0] celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire [4:0] celloutsig_0_86z;
  wire [11:0] celloutsig_0_87z;
  wire celloutsig_0_8z;
  wire [10:0] celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [5:0] celloutsig_1_3z;
  wire [16:0] celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_42z = ~((celloutsig_0_10z[1] | celloutsig_0_10z[1]) & (celloutsig_0_5z | celloutsig_0_21z));
  assign celloutsig_0_5z = ~((celloutsig_0_4z | celloutsig_0_0z) & (celloutsig_0_0z | celloutsig_0_0z));
  assign celloutsig_0_28z = celloutsig_0_14z | ~(celloutsig_0_26z[10]);
  assign celloutsig_0_44z = celloutsig_0_8z | celloutsig_0_10z[1];
  assign celloutsig_1_9z = celloutsig_1_6z | celloutsig_1_3z[1];
  assign celloutsig_1_19z = celloutsig_1_4z[14] | celloutsig_1_0z[2];
  assign celloutsig_0_22z = in_data[35] | celloutsig_0_1z;
  assign celloutsig_0_51z = ~(celloutsig_0_36z[3] ^ celloutsig_0_11z);
  assign celloutsig_0_10z = { celloutsig_0_2z[0], celloutsig_0_0z, celloutsig_0_0z } + celloutsig_0_2z[2:0];
  reg [2:0] _13_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _13_ <= 3'h0;
    else _13_ <= { celloutsig_0_30z, celloutsig_0_1z, celloutsig_0_22z };
  assign _00_[22:20] = _13_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _02_ <= 13'h0000;
    else _02_ <= { celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_42z, celloutsig_0_35z, celloutsig_0_39z, celloutsig_0_33z, celloutsig_0_16z, celloutsig_0_10z };
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _03_ <= 16'h0000;
    else _03_ <= { in_data[35], celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_13z };
  reg [4:0] _16_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _16_ <= 5'h00;
    else _16_ <= { celloutsig_0_7z[9:6], celloutsig_0_22z };
  assign _01_[16:12] = _16_;
  assign celloutsig_0_39z = { _01_[16], celloutsig_0_32z, celloutsig_0_5z, celloutsig_0_15z } & { celloutsig_0_19z, celloutsig_0_20z, celloutsig_0_6z, celloutsig_0_13z };
  assign celloutsig_0_48z = { celloutsig_0_32z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_42z, _00_[22:20], celloutsig_0_36z, _00_[22:20], celloutsig_0_42z, celloutsig_0_35z } & { _02_, celloutsig_0_37z };
  assign celloutsig_1_4z = in_data[124:108] & { in_data[122:112], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_23z = { in_data[78:74], celloutsig_0_19z } & { celloutsig_0_7z[8:6], celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_1_6z = { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_3z } === { in_data[140:134], celloutsig_1_0z };
  assign celloutsig_0_58z = celloutsig_0_56z >= { celloutsig_0_2z[1:0], celloutsig_0_47z };
  assign celloutsig_0_78z = { celloutsig_0_28z, celloutsig_0_13z, celloutsig_0_59z } >= celloutsig_0_9z[9:7];
  assign celloutsig_0_59z = { celloutsig_0_47z, celloutsig_0_22z, celloutsig_0_2z } > { celloutsig_0_35z, celloutsig_0_51z, celloutsig_0_30z, _00_[22:20] };
  assign celloutsig_0_32z = { _03_[15:13], celloutsig_0_19z, celloutsig_0_30z } && { celloutsig_0_7z[6:5], celloutsig_0_15z, celloutsig_0_30z, celloutsig_0_1z };
  assign celloutsig_0_4z = { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z } && { in_data[83:78], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_1_18z = { celloutsig_1_4z[11:8], celloutsig_1_13z, celloutsig_1_9z, celloutsig_1_2z } && { celloutsig_1_15z, celloutsig_1_3z };
  assign celloutsig_0_38z = ! { celloutsig_0_35z, celloutsig_0_28z, celloutsig_0_14z, celloutsig_0_11z };
  assign celloutsig_0_80z = celloutsig_0_26z[12:3] || celloutsig_0_48z[16:7];
  assign celloutsig_0_13z = { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_1z } || { in_data[68:65], celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_0_47z = { celloutsig_0_2z[3:2], celloutsig_0_12z } < { in_data[86:83], celloutsig_0_35z, celloutsig_0_36z };
  assign celloutsig_0_6z = { in_data[94:92], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_5z } < { in_data[89:85], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_1_2z = { celloutsig_1_0z, celloutsig_1_1z } < in_data[170:167];
  assign celloutsig_0_1z = { in_data[42:40], celloutsig_0_0z, celloutsig_0_0z } < { in_data[19:16], celloutsig_0_0z };
  assign celloutsig_0_11z = { celloutsig_0_9z[9:2], celloutsig_0_5z } < { celloutsig_0_2z[2:0], celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_30z = celloutsig_0_9z[9:4] < { celloutsig_0_23z[5:2], celloutsig_0_28z, celloutsig_0_16z };
  assign celloutsig_0_46z = celloutsig_0_20z & ~(celloutsig_0_26z[8]);
  assign celloutsig_1_15z = celloutsig_1_3z[1] & ~(celloutsig_1_13z);
  assign celloutsig_0_86z = { celloutsig_0_26z[8:7], celloutsig_0_46z, celloutsig_0_54z, celloutsig_0_80z } % { 1'h1, celloutsig_0_36z };
  assign celloutsig_1_0z = in_data[126:124] % { 1'h1, in_data[159:158] };
  assign celloutsig_0_12z = { celloutsig_0_10z[1:0], celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_11z } % { 1'h1, in_data[12:9], celloutsig_0_1z, celloutsig_0_5z };
  assign celloutsig_0_7z = celloutsig_0_6z ? { in_data[91], celloutsig_0_3z, 1'h1, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z, 1'h1 } : { 2'h0, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_4z, 2'h0, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_15z = { celloutsig_0_10z[1], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_6z } !== celloutsig_0_9z[6:1];
  assign celloutsig_0_3z = { in_data[92:91], celloutsig_0_1z, celloutsig_0_1z } !== in_data[65:62];
  assign celloutsig_0_9z = { celloutsig_0_7z[9:5], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_1z } | { celloutsig_0_7z[5:0], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_17z = { celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_4z } | celloutsig_0_12z[6:2];
  assign celloutsig_0_2z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z } | in_data[83:80];
  assign celloutsig_0_14z = & { celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_19z = | { celloutsig_0_17z[3:2], celloutsig_0_11z, celloutsig_0_2z };
  assign celloutsig_0_20z = | { celloutsig_0_9z[7:2], celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_15z };
  assign celloutsig_0_33z = celloutsig_0_1z & celloutsig_0_23z[4];
  assign celloutsig_0_35z = celloutsig_0_3z & celloutsig_0_28z;
  assign celloutsig_0_16z = celloutsig_0_12z[1] & celloutsig_0_3z;
  assign celloutsig_0_21z = celloutsig_0_5z & _03_[4];
  assign celloutsig_0_0z = | in_data[85:75];
  assign celloutsig_0_54z = | celloutsig_0_12z;
  assign celloutsig_0_8z = | { celloutsig_0_2z, in_data[85:75], in_data[9:6] };
  assign celloutsig_1_1z = | in_data[123:112];
  assign celloutsig_1_13z = ~^ celloutsig_1_0z;
  assign celloutsig_0_36z = _01_[16:13] >> celloutsig_0_7z[9:6];
  assign celloutsig_1_3z = { in_data[190:187], celloutsig_1_2z, celloutsig_1_1z } >> { in_data[136:132], celloutsig_1_1z };
  assign celloutsig_0_37z = { celloutsig_0_26z[8:4], celloutsig_0_13z } << celloutsig_0_12z[6:1];
  assign celloutsig_0_87z = { celloutsig_0_26z[10:6], celloutsig_0_32z, celloutsig_0_44z, celloutsig_0_30z, celloutsig_0_78z, celloutsig_0_58z, celloutsig_0_33z, celloutsig_0_51z } << { celloutsig_0_48z[15:5], celloutsig_0_47z };
  assign celloutsig_0_56z = { _00_[22:21], celloutsig_0_38z } >> celloutsig_0_10z;
  always_latch
    if (!clkin_data[64]) celloutsig_0_26z = 13'h0000;
    else if (celloutsig_1_19z) celloutsig_0_26z = { celloutsig_0_10z[1:0], celloutsig_0_2z, celloutsig_0_23z, celloutsig_0_11z };
  assign _00_[7:1] = { celloutsig_0_78z, celloutsig_0_19z, _00_[22:20], celloutsig_0_44z, celloutsig_0_32z };
  assign { _01_[27:17], _01_[11:0] } = { celloutsig_0_15z, celloutsig_0_30z, celloutsig_0_21z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_20z };
  assign { out_data[128], out_data[96], out_data[36:32], out_data[11:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_86z, celloutsig_0_87z };
endmodule
