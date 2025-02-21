/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [9:0] _02_;
  reg [9:0] _03_;
  wire [9:0] _04_;
  wire [31:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [6:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [6:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [13:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [14:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [9:0] celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [7:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [5:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [6:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [5:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire [5:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [9:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [5:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_16z = celloutsig_0_13z[3] ? celloutsig_0_6z[4] : celloutsig_0_9z;
  assign celloutsig_0_25z = celloutsig_0_22z ? celloutsig_0_11z : celloutsig_0_16z;
  assign celloutsig_0_41z = ~(celloutsig_0_13z[3] & celloutsig_0_26z);
  assign celloutsig_0_8z = ~(in_data[66] & celloutsig_0_5z);
  assign celloutsig_0_12z = ~(celloutsig_0_6z[1] & celloutsig_0_9z);
  assign celloutsig_0_7z = !(celloutsig_0_4z[3] ? celloutsig_0_3z : celloutsig_0_5z);
  assign celloutsig_0_3z = ~(celloutsig_0_2z[8] | _00_);
  assign celloutsig_1_14z = ~(celloutsig_1_6z[4] | celloutsig_1_4z[5]);
  assign celloutsig_0_14z = ~(celloutsig_0_10z | celloutsig_0_2z[10]);
  assign celloutsig_0_23z = ~(celloutsig_0_2z[13] | celloutsig_0_14z);
  assign celloutsig_0_17z = ~celloutsig_0_0z[27];
  assign celloutsig_1_0z = ~((in_data[171] | in_data[124]) & in_data[140]);
  assign celloutsig_0_36z = celloutsig_0_30z | celloutsig_0_25z;
  assign celloutsig_0_44z = celloutsig_0_38z | celloutsig_0_5z;
  assign celloutsig_1_1z = in_data[174] | in_data[170];
  assign celloutsig_0_5z = in_data[72] ^ _01_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _03_ <= 10'h000;
    else _03_ <= { celloutsig_0_30z, _02_[8:1], celloutsig_0_11z };
  reg [9:0] _22_;
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _22_ <= 10'h000;
    else _22_ <= in_data[19:10];
  assign { _04_[9:3], _00_, _01_, _04_[0] } = _22_;
  reg [7:0] _23_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _23_ <= 8'h00;
    else _23_ <= in_data[33:26];
  assign _02_[8:1] = _23_;
  assign celloutsig_1_4z = { in_data[102:98], celloutsig_1_0z } / { 1'h1, celloutsig_1_2z[3:2], celloutsig_1_3z };
  assign celloutsig_0_6z = celloutsig_0_2z[13:8] / { 1'h1, celloutsig_0_0z[2:1], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_20z = { celloutsig_0_2z[9:6], celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_19z, celloutsig_0_15z } / { 1'h1, celloutsig_0_2z[12:1], celloutsig_0_12z };
  assign celloutsig_1_12z = { celloutsig_1_4z[5:2], celloutsig_1_4z, celloutsig_1_9z } >= { celloutsig_1_8z[3], celloutsig_1_6z };
  assign celloutsig_1_13z = { in_data[138:118], celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_10z, celloutsig_1_10z, celloutsig_1_12z, celloutsig_1_7z } >= { celloutsig_1_6z[9:6], celloutsig_1_7z, celloutsig_1_11z, celloutsig_1_2z, celloutsig_1_11z, celloutsig_1_12z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_12z };
  assign celloutsig_1_19z = { celloutsig_1_8z[5:1], celloutsig_1_12z, celloutsig_1_15z, celloutsig_1_0z } >= { celloutsig_1_5z, celloutsig_1_13z, celloutsig_1_11z, celloutsig_1_14z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_0_10z = { in_data[27:21], celloutsig_0_7z, celloutsig_0_9z } >= { celloutsig_0_6z[5], celloutsig_0_4z };
  assign celloutsig_1_7z = ! { celloutsig_1_6z[4:3], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_19z = ! { celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_17z, celloutsig_0_5z, celloutsig_0_2z };
  assign celloutsig_0_37z = { celloutsig_0_0z[12:2], celloutsig_0_6z, celloutsig_0_12z } < { celloutsig_0_13z, _03_, celloutsig_0_36z };
  assign celloutsig_0_38z = { celloutsig_0_4z, celloutsig_0_35z, celloutsig_0_35z, celloutsig_0_4z } < { _04_[3], _00_, _01_, celloutsig_0_4z, celloutsig_0_13z };
  assign celloutsig_1_11z = celloutsig_1_6z[7:1] < { in_data[163:162], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_7z };
  assign celloutsig_0_11z = in_data[33:29] < _04_[8:4];
  assign celloutsig_0_27z = { celloutsig_0_20z[13:10], celloutsig_0_17z, celloutsig_0_26z, celloutsig_0_17z } < { celloutsig_0_2z[7], celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_22z, celloutsig_0_17z, celloutsig_0_9z };
  assign celloutsig_0_28z = { in_data[62:60], celloutsig_0_23z } < in_data[60:57];
  assign celloutsig_0_13z = { in_data[70:65], celloutsig_0_8z } % { 1'h1, celloutsig_0_2z[8:3] };
  assign celloutsig_1_9z = celloutsig_1_4z[4:0] != celloutsig_1_6z[8:4];
  assign celloutsig_1_6z = - { celloutsig_1_4z[5], celloutsig_1_3z, celloutsig_1_4z };
  assign celloutsig_1_15z = - { celloutsig_1_6z[9:6], celloutsig_1_3z };
  assign celloutsig_0_2z = - celloutsig_0_0z[30:16];
  assign celloutsig_0_43z = ~ { _02_[6:5], celloutsig_0_36z, celloutsig_0_28z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_41z, celloutsig_0_37z, celloutsig_0_3z, celloutsig_0_40z };
  assign celloutsig_1_8z = { celloutsig_1_2z[0], celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_3z } | in_data[143:138];
  assign celloutsig_0_40z = & { celloutsig_0_38z, celloutsig_0_35z, celloutsig_0_27z, celloutsig_0_20z[6:2], celloutsig_0_15z };
  assign celloutsig_1_16z = | { celloutsig_1_15z[4:2], celloutsig_1_0z };
  assign celloutsig_0_9z = | celloutsig_0_0z[23:21];
  assign celloutsig_0_21z = | { celloutsig_0_13z[4:2], celloutsig_0_10z, celloutsig_0_5z };
  assign celloutsig_0_35z = ~^ celloutsig_0_4z[6:2];
  assign celloutsig_0_15z = ^ { celloutsig_0_13z[2], celloutsig_0_11z, celloutsig_0_13z };
  assign celloutsig_0_30z = ^ { celloutsig_0_0z[26], celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_21z, celloutsig_0_25z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_23z, celloutsig_0_5z, celloutsig_0_23z, _04_[9:3], _00_, _01_, _04_[0], celloutsig_0_22z, celloutsig_0_8z, celloutsig_0_21z };
  assign celloutsig_1_2z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z } >>> in_data[164:160];
  assign celloutsig_1_18z = { in_data[169:167], celloutsig_1_16z, celloutsig_1_5z, celloutsig_1_10z } >>> { celloutsig_1_6z[9:7], celloutsig_1_3z };
  assign celloutsig_0_4z = in_data[21:14] - in_data[77:70];
  assign celloutsig_1_3z = celloutsig_1_2z[2:0] - { in_data[148:147], celloutsig_1_1z };
  assign celloutsig_0_0z = in_data[58:27] ~^ in_data[56:25];
  assign celloutsig_0_18z = { celloutsig_0_6z, celloutsig_0_14z } ~^ celloutsig_0_2z[6:0];
  assign celloutsig_1_10z = ~((celloutsig_1_4z[1] & celloutsig_1_4z[5]) | celloutsig_1_3z[0]);
  assign celloutsig_0_26z = ~((celloutsig_0_22z & celloutsig_0_15z) | celloutsig_0_20z[7]);
  assign celloutsig_1_5z = ~((celloutsig_1_1z & in_data[111]) | (celloutsig_1_4z[0] & celloutsig_1_0z));
  assign celloutsig_0_22z = ~((celloutsig_0_3z & celloutsig_0_10z) | (celloutsig_0_17z & celloutsig_0_18z[1]));
  assign { _02_[9], _02_[0] } = { celloutsig_0_30z, celloutsig_0_11z };
  assign _04_[2:1] = { _00_, _01_ };
  assign { out_data[133:128], out_data[96], out_data[41:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_43z, celloutsig_0_44z };
endmodule
