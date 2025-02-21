/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire [5:0] _04_;
  wire [5:0] _05_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_17z;
  wire [3:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [8:0] celloutsig_0_20z;
  reg [31:0] celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire celloutsig_0_2z;
  wire [11:0] celloutsig_0_30z;
  wire [6:0] celloutsig_0_3z;
  wire celloutsig_0_47z;
  wire [8:0] celloutsig_0_48z;
  wire [20:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  reg [34:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [14:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_12z;
  reg [14:0] celloutsig_1_13z;
  wire [30:0] celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [24:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [10:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [223:0] clkin_data;
  wire [223:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_5z = ~(celloutsig_0_4z[15] | celloutsig_0_3z[2]);
  assign celloutsig_1_12z = ~(_01_ | celloutsig_1_7z);
  assign celloutsig_1_18z = ~(celloutsig_1_0z | celloutsig_1_15z[25]);
  assign celloutsig_0_12z = ~(celloutsig_0_8z | celloutsig_0_7z[14]);
  assign celloutsig_0_17z = ~(celloutsig_0_5z | celloutsig_0_2z);
  assign celloutsig_0_19z = ~(celloutsig_0_4z[12] | celloutsig_0_3z[4]);
  assign celloutsig_0_47z = ~in_data[43];
  assign celloutsig_1_4z = ~celloutsig_1_1z;
  assign celloutsig_0_26z = ~celloutsig_0_20z[0];
  assign celloutsig_0_1z = ~((in_data[26] | in_data[6]) & in_data[19]);
  assign celloutsig_1_6z = ~((celloutsig_1_3z | in_data[143]) & (celloutsig_1_3z | celloutsig_1_2z[3]));
  assign celloutsig_0_0z = in_data[41] | ~(in_data[87]);
  assign celloutsig_1_7z = celloutsig_1_5z | ~(celloutsig_1_2z[19]);
  assign celloutsig_0_10z = celloutsig_0_3z[4] | ~(_03_);
  assign celloutsig_0_14z = celloutsig_0_13z | ~(celloutsig_0_4z[17]);
  reg [5:0] _21_;
  always_ff @(posedge clkin_data[64], posedge clkin_data[96])
    if (clkin_data[96]) _21_ <= 6'h00;
    else _21_ <= { celloutsig_1_8z[6:2], celloutsig_1_4z };
  assign { _04_[5:4], _01_, _04_[2], _02_, _04_[0] } = _21_;
  reg [5:0] _22_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _22_ <= 6'h00;
    else _22_ <= { in_data[33:31], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z };
  assign { _05_[5:4], _00_, _05_[2:1], _03_ } = _22_;
  assign celloutsig_1_19z = { celloutsig_1_8z[5:0], celloutsig_1_3z } / { 1'h1, celloutsig_1_2z[19:14] };
  assign celloutsig_0_9z = { celloutsig_0_7z[31:25], celloutsig_0_0z, celloutsig_0_3z } / { 1'h1, celloutsig_0_4z[14:1] };
  assign celloutsig_1_3z = celloutsig_1_2z[24:3] == in_data[154:133];
  assign celloutsig_0_13z = { _03_, celloutsig_0_2z, _05_[5:4], _00_, _05_[2:1], _03_, celloutsig_0_9z, celloutsig_0_12z } && { celloutsig_0_7z[23:1], celloutsig_0_12z };
  assign celloutsig_1_9z = celloutsig_1_2z[12:9] || { in_data[187:186], celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_0_48z = celloutsig_0_7z[27:19] % { 1'h1, celloutsig_0_30z[8:2], celloutsig_0_26z };
  assign celloutsig_1_8z = in_data[191:181] % { 1'h1, celloutsig_1_2z[4:2], celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_6z };
  assign celloutsig_1_15z = { in_data[132:117], celloutsig_1_13z } % { 1'h1, celloutsig_1_2z[15:2], celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_5z };
  assign celloutsig_0_18z = celloutsig_0_7z[10:7] * { celloutsig_0_4z[7:5], celloutsig_0_11z };
  assign celloutsig_0_20z = { in_data[20:14], celloutsig_0_5z, celloutsig_0_11z } * { in_data[50:44], celloutsig_0_0z, celloutsig_0_19z };
  assign celloutsig_0_30z = celloutsig_0_24z[28:17] * celloutsig_0_24z[24:13];
  assign celloutsig_1_1z = ~^ in_data[125:120];
  assign celloutsig_1_5z = ~^ { in_data[154:143], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_11z = ~^ { celloutsig_0_4z[12:3], celloutsig_0_10z, celloutsig_0_9z, _05_[5:4], _00_, _05_[2:1], _03_, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_1_0z = ^ in_data[131:128];
  assign celloutsig_0_8z = ^ { celloutsig_0_3z[6:4], _05_[5:4], _00_, _05_[2:1], _03_ };
  assign celloutsig_0_2z = ^ { in_data[17:13], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_4z = { in_data[55:45], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_3z } - { celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_2z = in_data[122:98] - { in_data[143:120], celloutsig_1_1z };
  assign celloutsig_0_3z = { in_data[38:37], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z } ~^ { in_data[12:8], celloutsig_0_1z, celloutsig_0_1z };
  always_latch
    if (clkin_data[96]) celloutsig_1_13z = 15'h0000;
    else if (!clkin_data[192]) celloutsig_1_13z = { _04_[4], _01_, _04_[2], celloutsig_1_3z, _04_[5:4], _01_, _04_[2], _02_, _04_[0], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_6z };
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_7z = 35'h000000000;
    else if (!clkin_data[128]) celloutsig_0_7z = { celloutsig_0_4z[13:10], _05_[5:4], _00_, _05_[2:1], _03_, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_1z };
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_24z = 32'd0;
    else if (!clkin_data[160]) celloutsig_0_24z = { in_data[42:41], celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_18z, celloutsig_0_9z };
  assign { _04_[3], _04_[1] } = { _01_, _02_ };
  assign { _05_[3], _05_[0] } = { _00_, _03_ };
  assign { out_data[128], out_data[102:96], out_data[32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_47z, celloutsig_0_48z };
endmodule
