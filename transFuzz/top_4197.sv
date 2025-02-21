/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] _00_;
  reg [10:0] _01_;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_1z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _00_ <= 3'h0;
    else _00_ <= in_data[16:14];
  always_ff @(negedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _01_ <= 11'h000;
    else _01_ <= { in_data[172:166], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_3z = ~^ { _00_[2:1], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_15z = ~^ { _01_[10:9], celloutsig_1_14z };
  assign celloutsig_1_16z = ~^ { _01_[5], celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_14z, celloutsig_1_4z, celloutsig_1_15z };
  assign celloutsig_1_17z = ~^ { in_data[168:153], celloutsig_1_10z, celloutsig_1_9z };
  assign celloutsig_1_18z = ~^ { in_data[147:145], celloutsig_1_17z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_17z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_1z, _01_, celloutsig_1_17z, celloutsig_1_1z, celloutsig_1_13z };
  assign celloutsig_1_19z = ~^ { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_16z };
  assign celloutsig_0_4z = ~^ in_data[52:32];
  assign celloutsig_0_5z = ~^ { in_data[83], _00_ };
  assign celloutsig_0_6z = ~^ { in_data[44:42], celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_5z };
  assign celloutsig_0_7z = ~^ { in_data[82:80], celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_8z = ~^ { in_data[27:26], celloutsig_0_4z };
  assign celloutsig_0_9z = ~^ { in_data[90:79], celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_6z, _00_ };
  assign celloutsig_0_10z = ~^ { celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_6z };
  assign celloutsig_0_11z = ~^ { in_data[44:36], celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_1z };
  assign celloutsig_0_12z = ~^ { in_data[95:76], _00_ };
  assign celloutsig_0_14z = ~^ { celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_16z = ~^ { in_data[16:15], celloutsig_0_1z, celloutsig_0_7z };
  assign celloutsig_0_17z = ~^ { _00_[1], celloutsig_0_14z, celloutsig_0_10z };
  assign celloutsig_0_1z = ~^ in_data[59:40];
  assign celloutsig_0_28z = ~^ { in_data[18:14], celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_0_29z = ~^ { celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_17z };
  assign celloutsig_1_0z = ~^ in_data[158:154];
  assign celloutsig_1_1z = ~^ { in_data[143:139], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_2z = ~^ { in_data[164:162], celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_4z = ~^ { _01_[10:2], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_2z = ~^ { in_data[54:52], celloutsig_0_1z };
  assign celloutsig_1_5z = ~^ in_data[189:187];
  assign celloutsig_1_6z = ~^ in_data[161:151];
  assign celloutsig_1_7z = ~^ { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_5z };
  assign celloutsig_1_8z = ~^ in_data[154:152];
  assign celloutsig_1_9z = ~^ { celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_7z };
  assign celloutsig_1_10z = ~^ { in_data[152:142], celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_11z = ~^ _01_[6:3];
  assign celloutsig_1_12z = ~^ { in_data[166:155], celloutsig_1_8z };
  assign celloutsig_1_13z = ~^ { in_data[185:178], celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_12z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_1_14z = ~^ { celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_9z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_28z, celloutsig_0_29z };
endmodule
