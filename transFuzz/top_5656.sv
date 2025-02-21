/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [3:0] _02_;
  reg [3:0] _03_;
  reg [9:0] _04_;
  wire [8:0] _05_;
  wire celloutsig_0_10z;
  wire celloutsig_0_13z;
  wire [10:0] celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [12:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_2z;
  wire [4:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [2:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [11:0] celloutsig_0_8z;
  wire [10:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [3:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [4:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [4:0] celloutsig_1_15z;
  wire [6:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [23:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [3:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [20:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [2:0] celloutsig_1_8z;
  wire [13:0] celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_18z = !(celloutsig_1_15z[2] ? celloutsig_1_11z : celloutsig_1_9z[5]);
  assign celloutsig_0_4z = !(celloutsig_0_1z ? _00_ : celloutsig_0_1z);
  assign celloutsig_0_6z = !(in_data[29] ? in_data[52] : celloutsig_0_4z);
  assign celloutsig_0_10z = !(celloutsig_0_1z ? celloutsig_0_4z : _01_);
  assign celloutsig_0_13z = !(celloutsig_0_2z ? celloutsig_0_10z : celloutsig_0_8z[11]);
  assign celloutsig_1_0z = !(in_data[163] ? in_data[176] : in_data[128]);
  assign celloutsig_1_4z = !(celloutsig_1_3z[0] ? in_data[102] : celloutsig_1_0z);
  assign celloutsig_1_7z = !(celloutsig_1_4z ? celloutsig_1_6z[10] : celloutsig_1_4z);
  reg [8:0] _14_;
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[0])
    if (clkin_data[0]) _14_ <= 9'h000;
    else _14_ <= in_data[76:68];
  assign { _01_, _05_[7], _00_, _05_[5:4], _02_ } = _14_;
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[0])
    if (!clkin_data[0]) _03_ <= 4'h0;
    else _03_ <= _02_;
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _04_ <= 10'h000;
    else _04_ <= { celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_1_12z = celloutsig_1_9z[11:4] <= { celloutsig_1_9z[9], celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_5z };
  assign celloutsig_1_2z = in_data[143:139] <= in_data[117:113];
  assign celloutsig_0_2z = in_data[88:81] <= in_data[22:15];
  assign celloutsig_1_5z = in_data[161:150] <= { celloutsig_1_3z[3:1], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_1_14z = | { celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_0z };
  assign celloutsig_0_21z = | { celloutsig_0_16z, celloutsig_0_15z, celloutsig_0_14z[6:0], _03_, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_1_1z = | { celloutsig_1_0z, in_data[152:129] };
  assign celloutsig_1_11z = ^ { in_data[146:145], celloutsig_1_1z };
  assign celloutsig_0_16z = ^ _04_[8:5];
  assign celloutsig_0_1z = ^ in_data[63:40];
  assign celloutsig_0_20z = ^ { celloutsig_0_19z[10:1], celloutsig_0_16z };
  assign celloutsig_1_10z = { celloutsig_1_8z, celloutsig_1_4z } >> celloutsig_1_3z;
  assign celloutsig_0_3z = in_data[67:63] >> in_data[95:91];
  assign celloutsig_1_13z = celloutsig_1_9z[10:6] >> celloutsig_1_6z[4:0];
  assign celloutsig_1_15z = { in_data[180:179], celloutsig_1_2z, celloutsig_1_14z, celloutsig_1_4z } >> { celloutsig_1_13z[2:0], celloutsig_1_14z, celloutsig_1_4z };
  assign celloutsig_1_17z = { celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_13z } >> { celloutsig_1_9z[12:8], celloutsig_1_7z, celloutsig_1_5z };
  assign celloutsig_0_5z = in_data[3:1] >> celloutsig_0_3z[4:2];
  assign celloutsig_0_8z = in_data[62:51] >> { celloutsig_0_5z[0], celloutsig_0_1z, celloutsig_0_2z, _01_, _05_[7], _00_, _05_[5:4], _02_ };
  assign celloutsig_0_9z = { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_6z } >> { _03_[1], celloutsig_0_4z, _01_, _05_[7], _00_, _05_[5:4], _02_ };
  assign celloutsig_0_14z = celloutsig_0_9z >> { in_data[34:28], _03_ };
  assign celloutsig_0_15z = { celloutsig_0_9z[10:7], celloutsig_0_13z } >> in_data[59:55];
  assign celloutsig_0_19z = { celloutsig_0_14z[10:3], _03_, celloutsig_0_10z } >> in_data[13:1];
  assign celloutsig_1_3z = { in_data[128:126], celloutsig_1_0z } >> in_data[156:153];
  assign celloutsig_1_6z = { celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_5z } >> { in_data[189:170], celloutsig_1_2z };
  assign celloutsig_1_9z = { celloutsig_1_6z[16:11], celloutsig_1_3z, celloutsig_1_3z } ^ celloutsig_1_6z[18:5];
  assign celloutsig_1_19z = { in_data[153:152], celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_14z, celloutsig_1_0z, celloutsig_1_17z, celloutsig_1_14z, celloutsig_1_15z, celloutsig_1_1z, celloutsig_1_7z } ^ { celloutsig_1_6z[18:8], celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_12z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_15z };
  assign celloutsig_1_8z = celloutsig_1_3z[3:1] ^ { celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_7z };
  assign { _05_[8], _05_[6], _05_[3:0] } = { _01_, _00_, _02_ };
  assign { out_data[128], out_data[119:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_20z, celloutsig_0_21z };
endmodule
