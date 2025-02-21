/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [4:0] _03_;
  wire celloutsig_0_0z;
  wire [18:0] celloutsig_0_10z;
  wire [9:0] celloutsig_0_12z;
  wire [17:0] celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire [9:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [2:0] celloutsig_0_17z;
  wire [8:0] celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [11:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [11:0] celloutsig_0_24z;
  wire [2:0] celloutsig_0_25z;
  wire [2:0] celloutsig_0_26z;
  wire [12:0] celloutsig_0_27z;
  wire [27:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [6:0] celloutsig_0_2z;
  wire [13:0] celloutsig_0_31z;
  wire [3:0] celloutsig_0_34z;
  wire [2:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  reg [22:0] celloutsig_0_45z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [5:0] celloutsig_0_60z;
  wire [3:0] celloutsig_0_6z;
  wire [5:0] celloutsig_0_71z;
  wire [3:0] celloutsig_0_72z;
  wire celloutsig_0_7z;
  wire [10:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [24:0] celloutsig_1_10z;
  wire [36:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [2:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [9:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [7:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [15:0] celloutsig_1_4z;
  wire [10:0] celloutsig_1_5z;
  wire [5:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [24:0] celloutsig_1_8z;
  wire [3:0] celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_20z = _00_ ? celloutsig_0_0z : celloutsig_0_10z[17];
  assign celloutsig_0_21z = celloutsig_0_7z ? celloutsig_0_10z[16] : celloutsig_0_5z;
  assign celloutsig_0_9z = !(_01_ ? in_data[63] : celloutsig_0_5z);
  assign celloutsig_1_2z = ~((in_data[180] | celloutsig_1_1z) & celloutsig_1_1z);
  assign celloutsig_1_7z = ~((celloutsig_1_2z | celloutsig_1_6z[5]) & celloutsig_1_6z[5]);
  assign celloutsig_1_12z = ~((celloutsig_1_11z[36] | celloutsig_1_8z[17]) & celloutsig_1_11z[36]);
  assign celloutsig_0_16z = ~((celloutsig_0_13z[15] | celloutsig_0_6z[1]) & celloutsig_0_7z);
  assign celloutsig_0_7z = celloutsig_0_0z | ~(_02_);
  assign celloutsig_1_14z = celloutsig_1_12z | ~(celloutsig_1_6z[3]);
  reg [4:0] _13_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[0])
    if (clkin_data[0]) _13_ <= 5'h00;
    else _13_ <= in_data[38:34];
  assign { _01_, _03_[3], _02_, _03_[1], _00_ } = _13_;
  assign celloutsig_0_6z = { in_data[36:34], celloutsig_0_4z } & { _00_, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_71z = celloutsig_0_45z[6:1] & { celloutsig_0_19z[6:4], celloutsig_0_38z };
  assign celloutsig_0_8z = { celloutsig_0_6z[2:0], celloutsig_0_4z, celloutsig_0_2z } & { celloutsig_0_2z[3:0], _01_, _03_[3], _02_, _03_[1], _00_, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_1_4z = { in_data[141:132], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_2z } / { 1'h1, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_26z = { celloutsig_0_2z[2:1], celloutsig_0_16z } / { 1'h1, in_data[79:78] };
  assign celloutsig_1_9z = celloutsig_1_4z[10:7] % { 1'h1, celloutsig_1_5z[7:5] };
  assign celloutsig_1_13z = celloutsig_1_6z[5:3] % { 1'h1, celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_1_16z = celloutsig_1_10z[24:15] % { 1'h1, in_data[153:145] };
  assign celloutsig_1_19z = celloutsig_1_16z[9:2] % { 1'h1, celloutsig_1_1z, celloutsig_1_15z, celloutsig_1_15z, celloutsig_1_7z, celloutsig_1_13z };
  assign celloutsig_0_14z = { celloutsig_0_6z[3], celloutsig_0_9z, celloutsig_0_7z } % { 1'h1, celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_0_17z = celloutsig_0_6z[2:0] % { 1'h1, celloutsig_0_8z[3:2] };
  assign celloutsig_0_19z = { celloutsig_0_12z[9:3], celloutsig_0_12z[9:8] } % { 1'h1, celloutsig_0_10z[10:3] };
  assign celloutsig_0_28z = { celloutsig_0_24z[11:3], celloutsig_0_27z, celloutsig_0_9z, _01_, _03_[3], _02_, _03_[1], _00_ } % { 1'h1, celloutsig_0_6z[2], celloutsig_0_16z, celloutsig_0_26z, celloutsig_0_8z, celloutsig_0_20z, celloutsig_0_23z, celloutsig_0_19z };
  assign celloutsig_0_2z = { celloutsig_0_0z, celloutsig_0_0z, _01_, _03_[3], _02_, _03_[1], _00_ } % { 1'h1, in_data[91:87], celloutsig_0_0z };
  assign celloutsig_0_31z = { celloutsig_0_22z[10:0], celloutsig_0_14z } % { 1'h1, celloutsig_0_14z, celloutsig_0_15z };
  assign celloutsig_0_38z = celloutsig_0_31z[10:8] % { 1'h1, celloutsig_0_27z[5:4] };
  assign celloutsig_0_10z = { in_data[77:65], celloutsig_0_7z, _01_, _03_[3], _02_, _03_[1], _00_ } % { 1'h1, celloutsig_0_2z[4:0], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_8z };
  assign celloutsig_0_60z = - { celloutsig_0_28z[21:20], celloutsig_0_34z };
  assign celloutsig_0_22z = - { celloutsig_0_8z[3:2], celloutsig_0_15z };
  assign celloutsig_0_27z = - { celloutsig_0_24z[8:0], celloutsig_0_7z, celloutsig_0_26z };
  assign celloutsig_0_0z = in_data[6:1] !== in_data[38:33];
  assign celloutsig_1_6z = ~ { celloutsig_1_5z[10:6], celloutsig_1_0z };
  assign celloutsig_0_5z = & { celloutsig_0_2z[5:3], celloutsig_0_0z };
  assign celloutsig_0_3z = _03_[1] & celloutsig_0_0z;
  assign celloutsig_1_15z = celloutsig_1_11z[17] & celloutsig_1_6z[5];
  assign celloutsig_1_18z = celloutsig_1_5z[1] & celloutsig_1_14z;
  assign celloutsig_0_29z = celloutsig_0_28z[15] & celloutsig_0_9z;
  assign celloutsig_0_4z = | { _01_, celloutsig_0_3z, celloutsig_0_2z, _03_[3], celloutsig_0_0z };
  assign celloutsig_1_0z = | in_data[106:101];
  assign celloutsig_1_1z = | { in_data[118:111], in_data[106:101] };
  assign celloutsig_0_23z = | celloutsig_0_8z[8:2];
  assign celloutsig_1_3z = ~^ in_data[100:98];
  assign celloutsig_0_34z = celloutsig_0_22z[7:4] >> { celloutsig_0_25z, celloutsig_0_29z };
  assign celloutsig_1_5z = { celloutsig_1_4z[12:4], celloutsig_1_1z, celloutsig_1_3z } << { celloutsig_1_4z[7:2], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_8z = in_data[122:98] << { celloutsig_1_4z[13:2], celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_1z };
  assign celloutsig_0_25z = celloutsig_0_8z[6:4] <<< { celloutsig_0_19z[2:1], celloutsig_0_21z };
  assign celloutsig_1_10z = { celloutsig_1_9z[1:0], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_9z } - in_data[146:122];
  assign celloutsig_0_15z = { celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_5z, _01_, _03_[3], _02_, _03_[1], _00_ } - celloutsig_0_13z[14:5];
  assign celloutsig_0_72z = celloutsig_0_60z[3:0] ~^ celloutsig_0_45z[9:6];
  assign celloutsig_1_11z = { in_data[164:129], celloutsig_1_3z } ~^ { celloutsig_1_5z[9:6], celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_2z };
  assign celloutsig_0_13z = { celloutsig_0_10z[15:0], celloutsig_0_0z, celloutsig_0_7z } ~^ in_data[62:45];
  assign celloutsig_0_24z = { celloutsig_0_12z[9:3], celloutsig_0_12z[9:8], celloutsig_0_14z } ~^ celloutsig_0_22z;
  always_latch
    if (!clkin_data[0]) celloutsig_0_45z = 23'h000000;
    else if (!clkin_data[32]) celloutsig_0_45z = { celloutsig_0_26z, celloutsig_0_24z, celloutsig_0_26z, celloutsig_0_17z, celloutsig_0_29z, celloutsig_0_23z };
  assign { celloutsig_0_12z[6:3], celloutsig_0_12z[9:7] } = ~ celloutsig_0_2z;
  assign { _03_[4], _03_[2], _03_[0] } = { _01_, _02_, _00_ };
  assign celloutsig_0_12z[2:0] = celloutsig_0_12z[9:7];
  assign { out_data[128], out_data[103:96], out_data[37:32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_71z, celloutsig_0_72z };
endmodule
