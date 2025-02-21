/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [6:0] _01_;
  reg [12:0] _02_;
  reg [9:0] _03_;
  reg [2:0] _04_;
  wire [2:0] celloutsig_0_10z;
  wire [28:0] celloutsig_0_11z;
  wire [17:0] celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire [2:0] celloutsig_0_17z;
  wire celloutsig_0_21z;
  wire [17:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_3z;
  wire celloutsig_0_5z;
  wire [10:0] celloutsig_0_6z;
  wire [4:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [8:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [8:0] celloutsig_1_5z;
  wire [4:0] celloutsig_1_6z;
  wire [5:0] celloutsig_1_7z;
  wire [4:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_16z = ~(celloutsig_1_6z[2] ^ in_data[172]);
  assign celloutsig_1_19z = ~(celloutsig_1_11z ^ celloutsig_1_12z);
  assign celloutsig_0_5z = ~(in_data[67] ^ _00_);
  assign celloutsig_0_21z = ~(celloutsig_0_6z[7] ^ celloutsig_0_12z[8]);
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _04_ <= 3'h0;
    else _04_ <= in_data[41:39];
  always_ff @(posedge celloutsig_1_18z[0], posedge clkin_data[0])
    if (clkin_data[0]) _02_ <= 13'h0000;
    else _02_ <= in_data[46:34];
  always_ff @(posedge celloutsig_1_18z[0], posedge clkin_data[0])
    if (clkin_data[0]) _03_ <= 10'h000;
    else _03_ <= { _01_[4:3], _00_, _01_[6:3], _00_, _01_[1:0] };
  reg [6:0] _12_;
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _12_ <= 7'h00;
    else _12_ <= { in_data[40:37], _04_ };
  assign { _01_[6:3], _00_, _01_[1:0] } = _12_;
  assign celloutsig_0_13z = { in_data[69:68], celloutsig_0_5z } % { 1'h1, _04_[1:0] };
  assign celloutsig_0_17z = celloutsig_0_13z % { 1'h1, celloutsig_0_12z[13:12] };
  assign celloutsig_0_22z = celloutsig_0_11z[19:2] % { 1'h1, in_data[79], celloutsig_0_8z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_7z, _04_, celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_9z };
  assign celloutsig_1_6z = { celloutsig_1_5z[5], celloutsig_1_3z, celloutsig_1_4z } % { 1'h1, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_1_7z = { celloutsig_1_0z[3:1], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z } % { 1'h1, in_data[106:104], celloutsig_1_1z, celloutsig_1_4z };
  assign { celloutsig_0_12z[17:4], celloutsig_0_12z[2:0] } = celloutsig_0_7z[4] ? { in_data[38:25], celloutsig_0_10z } : { celloutsig_0_11z[26:19], celloutsig_0_8z, 1'h0, celloutsig_0_7z[3:0], _04_ };
  assign celloutsig_1_15z = | { celloutsig_1_9z, in_data[118:116] };
  assign celloutsig_0_8z = | { _02_[3], _04_ };
  assign celloutsig_0_23z = | { celloutsig_0_21z, celloutsig_0_17z[2:1], celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_9z, _01_[5:4] };
  assign celloutsig_1_2z = | celloutsig_1_0z[3:1];
  assign celloutsig_1_11z = ~^ in_data[129:121];
  assign celloutsig_1_12z = ~^ { celloutsig_1_6z[4:2], celloutsig_1_2z, celloutsig_1_11z };
  assign celloutsig_0_3z = ~^ in_data[41:32];
  assign celloutsig_0_9z = ~^ _03_[6:1];
  assign celloutsig_1_1z = ~^ in_data[171:166];
  assign celloutsig_1_4z = ~^ in_data[179:166];
  assign celloutsig_1_9z = { celloutsig_1_5z[2:0], celloutsig_1_2z, celloutsig_1_4z } >> in_data[155:151];
  assign celloutsig_0_10z = { _01_[3], _00_, celloutsig_0_3z } >> celloutsig_0_6z[5:3];
  assign celloutsig_1_0z = in_data[181:178] >> in_data[141:138];
  assign celloutsig_0_6z = { _01_[5], _01_[6:3], _00_, _01_[1:0], _04_ } >>> { _03_, celloutsig_0_5z };
  assign celloutsig_0_11z = { _02_, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_9z, _01_[6:3], _00_, _01_[1:0], celloutsig_0_3z, celloutsig_0_9z } >>> { in_data[4:0], celloutsig_0_8z, celloutsig_0_6z, _04_, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_1_18z = { celloutsig_1_7z[2:0], celloutsig_1_6z, celloutsig_1_15z } - { celloutsig_1_16z, celloutsig_1_16z, celloutsig_1_9z, celloutsig_1_11z, celloutsig_1_16z };
  assign celloutsig_0_7z = { _04_[0], celloutsig_0_5z, _04_ } ~^ _03_[9:5];
  assign celloutsig_1_3z = celloutsig_1_0z[2:0] ~^ in_data[106:104];
  assign celloutsig_1_5z = { in_data[160:155], celloutsig_1_3z } ~^ { celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z };
  assign _01_[2] = _00_;
  assign celloutsig_0_12z[3] = celloutsig_0_8z;
  assign { out_data[136:128], out_data[96], out_data[49:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_22z, celloutsig_0_23z };
endmodule
