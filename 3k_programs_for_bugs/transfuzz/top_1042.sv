/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [2:0] _01_;
  reg [2:0] _02_;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [5:0] celloutsig_0_13z;
  wire [4:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [17:0] celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [3:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [3:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [3:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [4:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [4:0] celloutsig_0_41z;
  wire celloutsig_0_44z;
  wire celloutsig_0_46z;
  wire [2:0] celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [3:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [5:0] celloutsig_1_5z;
  wire [2:0] celloutsig_1_6z;
  wire [5:0] celloutsig_1_7z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_11z = celloutsig_0_5z ? celloutsig_0_5z : celloutsig_0_8z;
  assign celloutsig_0_4z = ~(celloutsig_0_3z & _00_);
  assign celloutsig_0_20z = ~(celloutsig_0_9z & celloutsig_0_9z);
  assign celloutsig_1_0z = ~(in_data[102] | in_data[112]);
  assign celloutsig_0_26z = ~(celloutsig_0_16z | celloutsig_0_24z);
  assign celloutsig_0_8z = _00_ | celloutsig_0_7z;
  assign celloutsig_0_19z = celloutsig_0_13z[4] | celloutsig_0_9z;
  assign celloutsig_0_23z = in_data[22] | celloutsig_0_22z;
  assign celloutsig_0_3z = celloutsig_0_2z ^ celloutsig_0_1z;
  assign celloutsig_0_15z = celloutsig_0_4z ^ celloutsig_0_10z;
  reg [2:0] _13_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _13_ <= 3'h0;
    else _13_ <= in_data[17:15];
  assign { _01_[2:1], _00_ } = _13_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _02_ <= 3'h0;
    else _02_ <= in_data[72:70];
  assign celloutsig_0_13z = { celloutsig_0_9z, celloutsig_0_9z, _01_[2:1], _00_, celloutsig_0_4z } / { 1'h1, celloutsig_0_6z[2:0], celloutsig_0_10z, celloutsig_0_11z };
  assign celloutsig_0_36z = { celloutsig_0_12z, celloutsig_0_28z, celloutsig_0_32z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_27z, celloutsig_0_11z, celloutsig_0_29z } === { celloutsig_0_35z[2:1], celloutsig_0_4z, celloutsig_0_24z, celloutsig_0_9z, celloutsig_0_34z, celloutsig_0_31z, celloutsig_0_33z[3], celloutsig_0_10z, celloutsig_0_33z[1:0] };
  assign celloutsig_0_32z = { celloutsig_0_27z[3], celloutsig_0_26z, celloutsig_0_10z } > in_data[93:91];
  assign celloutsig_0_46z = { celloutsig_0_26z, celloutsig_0_16z, _02_, celloutsig_0_13z } > { celloutsig_0_44z, celloutsig_0_2z, celloutsig_0_31z, celloutsig_0_28z, celloutsig_0_15z, celloutsig_0_41z, celloutsig_0_36z };
  assign celloutsig_1_2z = { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, 2'h0, celloutsig_1_0z } > { in_data[139:135], celloutsig_1_0z, 1'h0, celloutsig_1_0z };
  assign celloutsig_0_5z = { _01_[1], _00_, celloutsig_0_4z, celloutsig_0_3z } > { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_9z = { in_data[54:51], celloutsig_0_8z, celloutsig_0_3z } > { in_data[26:23], celloutsig_0_8z, celloutsig_0_8z };
  assign celloutsig_0_10z = { in_data[88:83], celloutsig_0_2z, celloutsig_0_3z, _01_[2:1], _00_, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_7z } > { celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_6z, _01_[2:1], _00_, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_0_44z = { celloutsig_0_1z, celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_15z, celloutsig_0_38z } <= { celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_25z, celloutsig_0_6z, celloutsig_0_4z };
  assign celloutsig_0_28z = { _02_[1:0], celloutsig_0_19z } <= { _01_[2:1], _00_ };
  assign celloutsig_1_5z = in_data[112:107] % { 1'h1, in_data[105:101] };
  assign { celloutsig_0_33z[3], celloutsig_0_33z[1:0] } = celloutsig_0_26z ? { celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_7z } : { celloutsig_0_16z, celloutsig_0_28z, celloutsig_0_19z };
  assign celloutsig_0_6z = celloutsig_0_2z ? { in_data[95:93], celloutsig_0_1z } : { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_1_3z = { in_data[127:122], 1'h0, celloutsig_1_0z, celloutsig_1_0z } != { in_data[175:168], 1'h0 };
  assign celloutsig_1_19z = - { 3'h0, celloutsig_1_10z };
  assign celloutsig_0_17z = - { in_data[44:35], celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_14z };
  assign celloutsig_0_1z = { in_data[88:86], _01_[2:1], _00_ } !== in_data[7:2];
  assign celloutsig_0_24z = { _02_, celloutsig_0_1z, celloutsig_0_13z } !== { celloutsig_0_17z[15:11], celloutsig_0_23z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_11z };
  assign celloutsig_0_41z = ~ { celloutsig_0_24z, celloutsig_0_5z, celloutsig_0_31z, celloutsig_0_19z, celloutsig_0_22z };
  assign celloutsig_1_10z = | { celloutsig_1_6z[2:1], celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_12z = | { _01_[2:1], _00_ };
  assign celloutsig_0_29z = | { in_data[43:41], celloutsig_0_24z, celloutsig_0_26z };
  assign celloutsig_0_31z = ~^ { celloutsig_0_28z, celloutsig_0_8z, celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_27z, celloutsig_0_1z, celloutsig_0_22z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_20z, celloutsig_0_5z, celloutsig_0_29z, celloutsig_0_20z };
  assign celloutsig_0_25z = ~^ celloutsig_0_6z[2:0];
  assign celloutsig_0_35z = celloutsig_0_6z << { celloutsig_0_1z, _01_[2:1], _00_ };
  assign celloutsig_1_7z = { celloutsig_1_3z, celloutsig_1_0z, 1'h0, celloutsig_1_6z } << { celloutsig_1_0z, celloutsig_1_6z, 1'h0, celloutsig_1_3z };
  assign celloutsig_0_14z = { celloutsig_0_6z[2:0], celloutsig_0_3z, celloutsig_0_12z } << in_data[75:71];
  assign celloutsig_0_27z = { celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_24z, celloutsig_0_16z } << { celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_23z };
  assign celloutsig_0_47z = { celloutsig_0_25z, celloutsig_0_12z, celloutsig_0_10z } ~^ celloutsig_0_27z[2:0];
  assign celloutsig_0_38z = { _01_[1], celloutsig_0_15z, celloutsig_0_28z, celloutsig_0_4z, celloutsig_0_7z } ^ { celloutsig_0_27z, celloutsig_0_31z };
  assign celloutsig_1_6z = { 2'h0, celloutsig_1_2z } ^ { celloutsig_1_5z[3:2], 1'h0 };
  assign celloutsig_0_34z = ~((celloutsig_0_9z & celloutsig_0_22z) | celloutsig_0_26z);
  assign celloutsig_0_7z = ~((celloutsig_0_5z & _01_[1]) | celloutsig_0_3z);
  assign celloutsig_0_2z = ~((celloutsig_0_1z & in_data[64]) | in_data[38]);
  assign celloutsig_1_18z = ~((celloutsig_1_7z[1] & celloutsig_1_7z[5]) | (celloutsig_1_7z[3] & celloutsig_1_6z[1]));
  assign celloutsig_0_16z = ~((celloutsig_0_9z & celloutsig_0_2z) | (celloutsig_0_14z[0] & celloutsig_0_13z[3]));
  assign celloutsig_0_22z = ~((celloutsig_0_4z & celloutsig_0_16z) | (_00_ & in_data[48]));
  assign _01_[0] = _00_;
  assign celloutsig_0_33z[2] = celloutsig_0_10z;
  assign { out_data[128], out_data[99:96], out_data[32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_46z, celloutsig_0_47z };
endmodule
