/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire [4:0] _09_;
  wire [15:0] _10_;
  wire [12:0] _11_;
  wire [3:0] _12_;
  wire [4:0] _13_;
  wire [7:0] _14_;
  wire [3:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [16:0] celloutsig_0_12z;
  wire [10:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [12:0] celloutsig_0_16z;
  wire [45:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [13:0] celloutsig_0_1z;
  wire [8:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [17:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [18:0] celloutsig_0_28z;
  wire celloutsig_0_30z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [3:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [14:0] celloutsig_1_0z;
  wire [6:0] celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire [5:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire [2:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [8:0] celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire [3:0] celloutsig_1_7z;
  wire [2:0] celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_49z = celloutsig_0_41z ? celloutsig_0_11z : celloutsig_0_35z;
  assign celloutsig_0_27z = _01_ ? celloutsig_0_18z : _00_;
  assign celloutsig_0_6z = ~(celloutsig_0_5z | celloutsig_0_1z[6]);
  assign celloutsig_0_30z = ~((_02_ | _03_) & in_data[70]);
  assign celloutsig_0_3z = ~((in_data[65] | _04_) & celloutsig_0_0z[1]);
  assign celloutsig_1_12z = ~((celloutsig_1_10z[6] | _05_) & _05_);
  assign celloutsig_0_18z = ~((celloutsig_0_17z[0] | celloutsig_0_6z) & _06_);
  assign celloutsig_1_3z = celloutsig_1_2z[0] | ~(celloutsig_1_0z[11]);
  assign celloutsig_0_34z = celloutsig_0_3z ^ celloutsig_0_9z;
  assign celloutsig_0_5z = ~(in_data[56] ^ in_data[52]);
  assign celloutsig_0_8z = ~(_08_ ^ celloutsig_0_0z[1]);
  reg [12:0] _26_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _26_ <= 13'h0000;
    else _26_ <= in_data[81:69];
  assign { _11_[12:8], _06_, _11_[6:2], _08_, _11_[0] } = _26_;
  reg [15:0] _27_;
  always_ff @(negedge clkin_data[32], posedge clkin_data[64])
    if (clkin_data[64]) _27_ <= 16'h0000;
    else _27_ <= { in_data[135:123], celloutsig_1_2z };
  assign { _10_[15:12], _05_, _10_[10:8], _07_, _10_[6:0] } = _27_;
  reg [3:0] _28_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _28_ <= 4'h0;
    else _28_ <= celloutsig_0_13z[10:7];
  assign { _12_[3:1], _02_ } = _28_;
  reg [4:0] _29_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _29_ <= 5'h00;
    else _29_ <= { celloutsig_0_16z[2:0], celloutsig_0_8z, celloutsig_0_3z };
  assign { _13_[4:2], _01_, _03_ } = _29_;
  reg [4:0] _30_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _30_ <= 5'h00;
    else _30_ <= { in_data[86], celloutsig_0_0z };
  assign { _04_, _09_[3:0] } = _30_;
  reg [7:0] _31_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _31_ <= 8'h00;
    else _31_ <= celloutsig_0_17z[12:5];
  assign { _14_[7:6], _00_, _14_[4:0] } = _31_;
  assign celloutsig_1_5z = celloutsig_1_0z[6:4] & celloutsig_1_2z;
  assign celloutsig_0_17z = { in_data[39:26], celloutsig_0_16z, _11_[12:8], _06_, _11_[6:2], _08_, _11_[0], celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_5z } & { celloutsig_0_12z[12:6], celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_16z, _04_, _09_[3:0] };
  assign celloutsig_0_0z = in_data[58:55] / { 1'h1, in_data[5:3] };
  assign celloutsig_1_2z = in_data[153:151] / { 1'h1, celloutsig_1_0z[8:7] };
  assign celloutsig_0_1z = { in_data[12:3], celloutsig_0_0z } / { 1'h1, in_data[73:69], celloutsig_0_0z, celloutsig_0_0z[3:1], in_data[0] };
  assign celloutsig_0_16z = { _11_[10:8], _06_, _11_[6:2], _08_, _11_[0], celloutsig_0_6z, celloutsig_0_10z } / { 1'h1, celloutsig_0_9z, celloutsig_0_13z };
  assign celloutsig_0_7z = { celloutsig_0_1z[12:6], celloutsig_0_1z } > in_data[63:43];
  assign celloutsig_0_11z = { in_data[52:27], celloutsig_0_10z, celloutsig_0_1z, _04_, _09_[3:0], celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_0z } > { in_data[66:16], celloutsig_0_9z };
  assign celloutsig_0_40z = { celloutsig_0_12z, _14_[7:6], _00_, _14_[4:0] } <= { in_data[39:30], celloutsig_0_16z, celloutsig_0_30z, celloutsig_0_24z };
  assign celloutsig_0_41z = { _11_[12:8], _06_, _11_[6:2], _08_ } <= celloutsig_0_26z[15:4];
  assign celloutsig_1_18z = { celloutsig_1_16z, celloutsig_1_14z } && celloutsig_1_4z[6:0];
  assign celloutsig_0_9z = { _11_[11:8], _06_, _11_[6:2], celloutsig_0_8z, celloutsig_0_5z } < celloutsig_0_1z[11:0];
  assign celloutsig_1_10z = { celloutsig_1_7z, celloutsig_1_1z } % { 1'h1, celloutsig_1_4z[5:1], celloutsig_1_3z };
  assign celloutsig_1_4z = celloutsig_1_1z[1] ? { celloutsig_1_0z[12], celloutsig_1_2z, celloutsig_1_1z[2], 1'h1, celloutsig_1_1z[0], celloutsig_1_3z, celloutsig_1_3z } : in_data[105:97];
  assign celloutsig_1_8z = celloutsig_1_3z ? in_data[163:161] : celloutsig_1_7z[3:1];
  assign celloutsig_1_16z = celloutsig_1_0z[12] ? { celloutsig_1_0z[14:13], 1'h1, celloutsig_1_0z[11:9] } : { celloutsig_1_5z[1:0], celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_0_23z = celloutsig_0_14z ? { 1'h1, celloutsig_0_6z, celloutsig_0_9z, _13_[4:2], _01_, _03_, 1'h1 } : { celloutsig_0_1z[9], _14_[7:6], _00_, _14_[4:0] };
  assign celloutsig_0_26z = celloutsig_0_8z ? { celloutsig_0_17z[38:32], celloutsig_0_13z } : { celloutsig_0_14z, celloutsig_0_12z };
  assign celloutsig_1_14z = celloutsig_1_0z[14:4] !== { celloutsig_1_4z[8:2], celloutsig_1_7z };
  assign celloutsig_0_35z = | { celloutsig_0_23z[8:5], celloutsig_0_34z, celloutsig_0_5z, celloutsig_0_24z };
  assign celloutsig_0_10z = | { celloutsig_0_1z[12:3], celloutsig_0_8z };
  assign celloutsig_0_14z = | { celloutsig_0_9z, celloutsig_0_1z[10:3] };
  assign celloutsig_0_24z = | celloutsig_0_13z[6:2];
  assign celloutsig_0_48z = { celloutsig_0_0z[2:1], celloutsig_0_9z, celloutsig_0_27z } >> { celloutsig_0_28z[9], celloutsig_0_5z, celloutsig_0_40z, celloutsig_0_27z };
  assign celloutsig_0_13z = { celloutsig_0_1z[12:4], celloutsig_0_6z, celloutsig_0_7z } >> { _04_, _09_[3:0], celloutsig_0_6z, _04_, _09_[3:0] };
  assign celloutsig_0_28z = { _12_[3], celloutsig_0_26z } >> { celloutsig_0_0z[3], celloutsig_0_9z, celloutsig_0_12z };
  assign celloutsig_1_1z = celloutsig_1_0z[10:8] << in_data[119:117];
  assign celloutsig_0_12z = { _04_, _09_[3:0], celloutsig_0_7z, _04_, _09_[3:0], celloutsig_0_7z, _04_, _09_[3:0] } << { celloutsig_0_0z[2:0], celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_1_7z = { _10_[14], celloutsig_1_1z } <<< celloutsig_1_0z[7:4];
  assign celloutsig_1_0z = in_data[120:106] - in_data[138:124];
  assign celloutsig_1_19z = celloutsig_1_4z[6:2] ~^ { celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_12z };
  assign _09_[4] = _04_;
  assign { _10_[11], _10_[7] } = { _05_, _07_ };
  assign { _11_[7], _11_[1] } = { _06_, _08_ };
  assign _12_[0] = _02_;
  assign _13_[1:0] = { _01_, _03_ };
  assign _14_[5] = _00_;
  assign { out_data[128], out_data[100:96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_48z, celloutsig_0_49z };
endmodule
