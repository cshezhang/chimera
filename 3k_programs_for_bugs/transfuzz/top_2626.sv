/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  reg [2:0] _02_;
  reg [4:0] _03_;
  wire [5:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [14:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [3:0] celloutsig_0_23z;
  wire [4:0] celloutsig_0_24z;
  wire [14:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire [5:0] celloutsig_0_30z;
  wire [6:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_40z;
  wire celloutsig_0_44z;
  wire celloutsig_0_46z;
  wire celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_5z;
  wire [11:0] celloutsig_0_61z;
  wire celloutsig_0_68z;
  wire [8:0] celloutsig_0_6z;
  wire [10:0] celloutsig_0_75z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_13z;
  wire [7:0] celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [8:0] celloutsig_1_8z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_36z = ~((celloutsig_0_6z[4] | celloutsig_0_25z[9]) & (celloutsig_0_14z[2] | celloutsig_0_1z));
  assign celloutsig_0_28z = celloutsig_0_19z | ~(celloutsig_0_25z[5]);
  assign celloutsig_0_32z = celloutsig_0_10z | celloutsig_0_16z[6];
  assign celloutsig_0_34z = celloutsig_0_2z | celloutsig_0_12z;
  assign celloutsig_0_48z = celloutsig_0_44z | celloutsig_0_36z;
  assign celloutsig_0_8z = ~(celloutsig_0_5z ^ celloutsig_0_2z);
  assign celloutsig_1_4z = ~(celloutsig_1_3z ^ celloutsig_1_13z);
  always_ff @(posedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _02_ <= 3'h0;
    else _02_ <= { in_data[58:57], celloutsig_0_2z };
  reg [4:0] _13_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _13_ <= 5'h00;
    else _13_ <= celloutsig_0_61z[10:6];
  assign out_data[36:32] = _13_;
  always_ff @(negedge clkin_data[32], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _03_ <= 5'h00;
    else _03_ <= { celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_0z };
  reg [5:0] _15_;
  always_ff @(negedge clkin_data[32], posedge clkin_data[96])
    if (clkin_data[96]) _15_ <= 6'h00;
    else _15_ <= { celloutsig_0_13z[1:0], celloutsig_0_15z, celloutsig_0_13z };
  assign { _04_[5], _01_, _04_[3:2], _00_, _04_[0] } = _15_;
  assign celloutsig_0_14z = { celloutsig_0_6z[6:5], celloutsig_0_2z } & { celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_1z };
  assign celloutsig_1_13z = { in_data[184], celloutsig_1_1z } == { celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_1z = { in_data[57:10], celloutsig_0_0z } == in_data[77:29];
  assign celloutsig_0_18z = { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_11z } == { celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_12z };
  assign celloutsig_1_19z = in_data[113:111] % { 1'h1, celloutsig_1_18z[1:0] };
  assign celloutsig_0_25z = { celloutsig_0_16z[14:1], celloutsig_0_10z } % { 1'h1, celloutsig_0_23z[2:0], celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_24z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_31z = { _03_, celloutsig_0_26z, celloutsig_0_9z } % { 1'h1, celloutsig_0_6z[6:2], celloutsig_0_7z };
  assign celloutsig_0_6z = { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_5z } % { 1'h1, _02_, _02_, celloutsig_0_1z, in_data[0] };
  assign celloutsig_0_24z = { celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_5z } % { 1'h1, celloutsig_0_23z[1:0], celloutsig_0_17z, celloutsig_0_17z };
  assign celloutsig_0_35z = { celloutsig_0_2z, _02_, celloutsig_0_34z, celloutsig_0_25z } !== { celloutsig_0_6z[8:2], _04_[5], _01_, _04_[3:2], _00_, _04_[0], celloutsig_0_0z, celloutsig_0_26z, celloutsig_0_28z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_26z, celloutsig_0_1z };
  assign celloutsig_0_46z = { celloutsig_0_6z[8:1], celloutsig_0_12z } !== { celloutsig_0_6z[7:2], celloutsig_0_21z, celloutsig_0_44z, celloutsig_0_38z };
  assign celloutsig_0_5z = { in_data[78:74], celloutsig_0_4z, celloutsig_0_0z } !== { in_data[94:91], _02_ };
  assign celloutsig_0_11z = { in_data[32:31], celloutsig_0_8z } !== { celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_9z };
  assign celloutsig_0_21z = { in_data[85:80], celloutsig_0_1z, celloutsig_0_13z } !== { celloutsig_0_8z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_7z };
  assign celloutsig_0_2z = in_data[85:55] !== { in_data[50:25], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_26z = { celloutsig_0_25z[13:1], celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_9z } !== { in_data[47:41], celloutsig_0_6z };
  assign celloutsig_1_18z = ~ { celloutsig_1_8z[8:2], celloutsig_1_0z };
  assign celloutsig_0_4z = & { _02_, in_data[74:68], celloutsig_0_0z };
  assign celloutsig_1_1z = & in_data[120:109];
  assign celloutsig_1_3z = & { celloutsig_1_13z, celloutsig_1_0z, in_data[149:140], in_data[120:109] };
  assign celloutsig_1_6z = & { celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_0z, in_data[149:140], in_data[120:109] };
  assign celloutsig_0_19z = & { celloutsig_0_18z, celloutsig_0_17z, celloutsig_0_14z[1:0] };
  assign celloutsig_0_7z = | { in_data[9:5], celloutsig_0_0z, celloutsig_0_4z, _02_, celloutsig_0_4z };
  assign celloutsig_0_0z = in_data[4] & in_data[58];
  assign celloutsig_0_40z = celloutsig_0_5z & celloutsig_0_35z;
  assign celloutsig_0_44z = celloutsig_0_21z & celloutsig_0_31z[6];
  assign celloutsig_0_50z = celloutsig_0_48z & _02_[1];
  assign celloutsig_0_68z = celloutsig_0_48z & celloutsig_0_2z;
  assign celloutsig_1_7z = celloutsig_1_3z & celloutsig_1_0z;
  assign celloutsig_0_15z = celloutsig_0_1z & celloutsig_0_10z;
  assign celloutsig_0_17z = in_data[0] & celloutsig_0_4z;
  assign celloutsig_1_0z = ~^ in_data[164:153];
  assign celloutsig_0_9z = ~^ in_data[23:20];
  assign celloutsig_0_10z = ~^ { celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_1_8z = { in_data[186:180], celloutsig_1_6z, celloutsig_1_7z } >> { in_data[170:165], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_4z };
  assign celloutsig_0_13z = { celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_0z } >> in_data[19:17];
  assign celloutsig_0_61z = { celloutsig_0_30z[3:0], _04_[5], _01_, _04_[3:2], _00_, _04_[0], celloutsig_0_32z, celloutsig_0_40z } - { celloutsig_0_31z, celloutsig_0_5z, celloutsig_0_32z, celloutsig_0_50z, celloutsig_0_11z, celloutsig_0_15z };
  assign celloutsig_0_30z = { celloutsig_0_24z, celloutsig_0_2z } - celloutsig_0_16z[5:0];
  assign celloutsig_0_75z = { celloutsig_0_61z[10:1], celloutsig_0_12z } ~^ { celloutsig_0_6z[3:1], celloutsig_0_68z, celloutsig_0_50z, celloutsig_0_50z, _02_, celloutsig_0_46z, celloutsig_0_50z };
  assign celloutsig_0_16z = { celloutsig_0_14z[1:0], celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_9z } ~^ { in_data[26:13], celloutsig_0_12z };
  assign celloutsig_0_23z = { in_data[27], _02_ } ~^ { celloutsig_0_6z[6:4], celloutsig_0_9z };
  assign celloutsig_0_38z = ~((celloutsig_0_11z & celloutsig_0_10z) | (celloutsig_0_14z[1] & in_data[3]));
  assign celloutsig_0_12z = ~((celloutsig_0_5z & celloutsig_0_7z) | (in_data[59] & celloutsig_0_2z));
  assign { _04_[4], _04_[1] } = { _01_, _00_ };
  assign { out_data[135:128], out_data[98:96], out_data[10:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_75z };
endmodule
