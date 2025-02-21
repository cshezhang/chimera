/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [14:0] _01_;
  reg [9:0] _02_;
  wire celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [5:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [14:0] celloutsig_0_17z;
  wire [12:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [8:0] celloutsig_0_24z;
  wire [6:0] celloutsig_0_26z;
  wire [6:0] celloutsig_0_29z;
  wire [7:0] celloutsig_0_2z;
  wire [2:0] celloutsig_0_30z;
  wire celloutsig_0_32z;
  wire [16:0] celloutsig_0_33z;
  wire [2:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [2:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [34:0] celloutsig_1_11z;
  wire [12:0] celloutsig_1_14z;
  wire [14:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [10:0] celloutsig_1_3z;
  wire [6:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [4:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~((in_data[38] | in_data[46]) & (in_data[70] | in_data[18]));
  assign celloutsig_0_32z = ~((celloutsig_0_21z | celloutsig_0_20z[4]) & (celloutsig_0_19z[0] | celloutsig_0_10z[1]));
  assign celloutsig_1_5z = ~((in_data[100] | celloutsig_1_3z[6]) & (celloutsig_1_2z | celloutsig_1_4z[5]));
  assign celloutsig_0_1z = ~((celloutsig_0_0z | celloutsig_0_0z) & (celloutsig_0_0z | in_data[75]));
  assign celloutsig_0_21z = ~((celloutsig_0_11z | celloutsig_0_2z[7]) & (celloutsig_0_15z | celloutsig_0_13z));
  reg [14:0] _08_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _08_ <= 15'h0000;
    else _08_ <= { in_data[92:79], celloutsig_0_6z };
  assign { _01_[14:11], _00_, _01_[9:0] } = _08_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _02_ <= 10'h000;
    else _02_ <= { celloutsig_0_19z[8:6], celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_22z, celloutsig_0_23z };
  assign celloutsig_1_4z = in_data[118:112] / { 1'h1, celloutsig_1_3z[5:1], celloutsig_1_2z };
  assign celloutsig_1_6z = { celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_0z } / { 1'h1, celloutsig_1_3z[8:5] };
  assign celloutsig_0_3z = { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z } / { 1'h1, in_data[41:40] };
  assign celloutsig_1_11z = { in_data[151:139], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_9z, celloutsig_1_5z } / { 1'h1, in_data[136:131], celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_1_19z = { celloutsig_1_11z[8:6], celloutsig_1_16z } / { 1'h1, celloutsig_1_15z[13:12], celloutsig_1_7z };
  assign celloutsig_0_30z = { celloutsig_0_26z[5:4], celloutsig_0_22z } / { 1'h1, _02_[5], celloutsig_0_16z };
  assign celloutsig_1_2z = in_data[140:127] >= { in_data[177], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_8z = { celloutsig_1_3z[10:1], celloutsig_1_6z, celloutsig_1_1z } >= { celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_16z = celloutsig_1_14z[5:3] >= { in_data[118:117], celloutsig_1_10z };
  assign celloutsig_0_13z = { celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_10z } >= { celloutsig_0_2z[6:1], celloutsig_0_11z, celloutsig_0_8z };
  assign celloutsig_1_10z = { celloutsig_1_3z[10:4], celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_5z } > { in_data[185:163], celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_0_9z = { celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_7z } > { in_data[69:68], celloutsig_0_7z };
  assign celloutsig_0_15z = { celloutsig_0_2z[7:4], celloutsig_0_4z } > { celloutsig_0_5z[1], celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_0z };
  assign celloutsig_0_16z = _01_[9:3] > { celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_1_0z = in_data[190:178] <= in_data[144:132];
  assign celloutsig_0_4z = { in_data[72:65], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z } <= { in_data[61:40], celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_1_18z = celloutsig_1_1z <= { celloutsig_1_6z[3:2], celloutsig_1_2z };
  assign celloutsig_0_11z = { celloutsig_0_10z[1:0], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_4z } <= { in_data[16:13], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_1_3z = in_data[177:167] % { 1'h1, in_data[181:172] };
  assign celloutsig_0_12z = { celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_7z } % { 1'h1, celloutsig_0_2z[3:0], celloutsig_0_11z };
  assign celloutsig_0_20z = { celloutsig_0_17z[10:9], celloutsig_0_3z } % { 1'h1, celloutsig_0_17z[8], celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_0_33z = { celloutsig_0_19z, celloutsig_0_1z, celloutsig_0_30z } | { celloutsig_0_29z[5:3], celloutsig_0_32z, celloutsig_0_19z };
  assign celloutsig_0_19z = { celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_12z } | { celloutsig_0_12z[3:0], celloutsig_0_12z, celloutsig_0_3z };
  assign celloutsig_0_26z = celloutsig_0_19z[10:4] | { celloutsig_0_24z[0], celloutsig_0_16z, celloutsig_0_20z };
  assign celloutsig_1_7z = | { celloutsig_1_3z[9:6], celloutsig_1_1z, celloutsig_1_5z };
  assign celloutsig_0_6z = | { celloutsig_0_5z[2], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_7z = | { in_data[32:30], celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_0_22z = | { celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_3z };
  assign celloutsig_1_9z = ~^ { celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_4z };
  assign celloutsig_0_23z = ~^ { celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_0_2z = { in_data[81:77], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z } >> { in_data[40:37], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_1z = in_data[115:113] >> in_data[131:129];
  assign celloutsig_0_5z = { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_4z } >> { celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_14z = { celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_7z } >> { celloutsig_1_1z[2], celloutsig_1_3z, celloutsig_1_9z };
  assign celloutsig_0_8z = { celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_0z } >> { celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_29z = celloutsig_0_24z[8:2] >> { celloutsig_0_19z[11:10], celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_1_15z = celloutsig_1_11z[15:1] <<< { celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_10z = { celloutsig_0_5z[1], celloutsig_0_1z, celloutsig_0_9z } <<< celloutsig_0_2z[3:1];
  assign celloutsig_0_17z = { celloutsig_0_12z[3], celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_2z } <<< { celloutsig_0_12z[5:2], celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_1z };
  assign celloutsig_0_24z = { celloutsig_0_12z[5:1], celloutsig_0_3z, celloutsig_0_16z } <<< { celloutsig_0_17z[13:6], celloutsig_0_22z };
  assign _01_[10] = _00_;
  assign { out_data[128], out_data[99:96], out_data[32], out_data[16:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_32z, celloutsig_0_33z };
endmodule
