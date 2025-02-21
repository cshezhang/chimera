/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [2:0] _01_;
  reg [17:0] _02_;
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire [9:0] celloutsig_0_15z;
  wire [10:0] celloutsig_0_19z;
  wire [12:0] celloutsig_0_1z;
  wire [9:0] celloutsig_0_22z;
  wire [2:0] celloutsig_0_25z;
  wire [3:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire [9:0] celloutsig_0_34z;
  wire [7:0] celloutsig_0_3z;
  wire celloutsig_0_45z;
  reg [20:0] celloutsig_0_48z;
  wire [11:0] celloutsig_0_49z;
  wire [11:0] celloutsig_0_4z;
  wire [3:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [3:0] celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [5:0] celloutsig_1_11z;
  wire [4:0] celloutsig_1_12z;
  wire [7:0] celloutsig_1_13z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire [8:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [10:0] celloutsig_1_3z;
  wire [5:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  reg [2:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_45z = ~(_00_ & celloutsig_0_28z);
  assign celloutsig_1_2z = ~(in_data[143] & in_data[119]);
  assign celloutsig_0_6z = ~(celloutsig_0_0z | in_data[37]);
  assign celloutsig_0_14z = ~(celloutsig_0_4z[7] | celloutsig_0_2z);
  assign celloutsig_0_28z = ~(celloutsig_0_27z[0] | celloutsig_0_22z[4]);
  assign celloutsig_0_0z = ~((in_data[58] | in_data[56]) & in_data[64]);
  assign celloutsig_1_10z = ~((celloutsig_1_7z[2] | celloutsig_1_4z[5]) & celloutsig_1_1z);
  assign celloutsig_1_19z = ~((celloutsig_1_18z | celloutsig_1_17z[5]) & celloutsig_1_12z[4]);
  assign celloutsig_0_11z = ~((celloutsig_0_7z[3] | celloutsig_0_3z[5]) & celloutsig_0_2z);
  reg [2:0] _12_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _12_ <= 3'h0;
    else _12_ <= { celloutsig_0_34z[3:2], celloutsig_0_12z };
  assign { _01_[2:1], _00_ } = _12_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _02_ <= 18'h00000;
    else _02_ <= { in_data[44:35], celloutsig_0_3z };
  assign celloutsig_0_49z = { _02_[17:9], _01_[2:1], _00_ } / { 1'h1, celloutsig_0_3z, _01_[2:1], in_data[0] };
  assign celloutsig_0_22z = { in_data[19:14], celloutsig_0_5z } / { 1'h1, celloutsig_0_15z[8:0] };
  assign celloutsig_1_13z = { in_data[110], celloutsig_1_2z, celloutsig_1_4z } / { 1'h1, celloutsig_1_3z[9:5], celloutsig_1_8z, celloutsig_1_5z };
  assign celloutsig_1_17z = { in_data[118:116], celloutsig_1_12z, celloutsig_1_16z } / { 1'h1, celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_16z, celloutsig_1_12z };
  assign celloutsig_0_8z = { celloutsig_0_5z, celloutsig_0_2z } / { 1'h1, celloutsig_0_5z };
  assign celloutsig_0_25z = celloutsig_0_22z[3:1] / { 1'h1, celloutsig_0_1z[7:6] };
  assign celloutsig_1_0z = in_data[152:148] == in_data[189:185];
  assign celloutsig_1_8z = in_data[116:103] == { celloutsig_1_3z[3:1], celloutsig_1_3z };
  assign celloutsig_1_9z = { celloutsig_1_3z[4], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_1z } == { celloutsig_1_4z[3:0], celloutsig_1_7z };
  assign celloutsig_0_2z = in_data[40:12] == { in_data[68:53], celloutsig_0_1z };
  assign celloutsig_1_1z = in_data[163:136] && { in_data[154:132], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_12z = in_data[71:64] && { celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_11z };
  assign celloutsig_1_12z = { celloutsig_1_3z[3:1], celloutsig_1_9z, celloutsig_1_9z } % { 1'h1, celloutsig_1_3z[7:5], in_data[96] };
  assign celloutsig_1_14z = { celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_0z } % { 1'h1, celloutsig_1_11z[3], in_data[96] };
  assign celloutsig_0_27z = celloutsig_0_3z[5:2] % { 1'h1, celloutsig_0_25z };
  assign celloutsig_0_1z = in_data[53:41] % { 1'h1, in_data[49:39], celloutsig_0_0z };
  assign celloutsig_0_34z = - { celloutsig_0_19z[8:0], celloutsig_0_28z };
  assign celloutsig_1_16z = { celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_14z, celloutsig_1_4z } !== { celloutsig_1_14z[2], celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_14z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_13z };
  assign celloutsig_0_4z = { celloutsig_0_3z[4:2], celloutsig_0_3z, celloutsig_0_2z } | { celloutsig_0_1z[9:0], celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_1_11z = { celloutsig_1_4z[4:1], celloutsig_1_5z, celloutsig_1_8z } | { celloutsig_1_4z[5:2], celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_7z = { celloutsig_0_1z[8:6], celloutsig_0_2z } >> celloutsig_0_3z[3:0];
  assign celloutsig_0_19z = { in_data[43:34], celloutsig_0_14z } >> { celloutsig_0_3z[5:3], celloutsig_0_7z, celloutsig_0_7z };
  assign celloutsig_0_5z = { celloutsig_0_1z[6:4], celloutsig_0_2z } << celloutsig_0_1z[11:8];
  assign celloutsig_0_15z = { celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_14z } << { celloutsig_0_4z[4:0], celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_0_3z = in_data[67:60] >> in_data[85:78];
  assign celloutsig_1_3z = { in_data[119:114], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z } ~^ in_data[156:146];
  assign celloutsig_1_4z = celloutsig_1_3z[9:4] ^ { celloutsig_1_3z[6:4], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_5z = ~((in_data[122] & celloutsig_1_0z) | celloutsig_1_1z);
  assign celloutsig_1_18z = ~((celloutsig_1_7z[0] & celloutsig_1_17z[1]) | celloutsig_1_10z);
  always_latch
    if (!clkin_data[32]) celloutsig_0_48z = 21'h000000;
    else if (clkin_data[96]) celloutsig_0_48z = { _02_[6:5], celloutsig_0_15z, celloutsig_0_45z, celloutsig_0_3z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_7z = 3'h0;
    else if (!clkin_data[128]) celloutsig_1_7z = { celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_5z };
  assign _01_[0] = _00_;
  assign { out_data[128], out_data[96], out_data[52:32], out_data[11:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_48z, celloutsig_0_49z };
endmodule
