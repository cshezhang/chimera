/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [10:0] _02_;
  wire [3:0] _03_;
  wire [7:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [2:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [3:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [8:0] celloutsig_0_18z;
  wire [8:0] celloutsig_0_19z;
  wire [6:0] celloutsig_0_1z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [3:0] celloutsig_0_24z;
  wire celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [19:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [2:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [19:0] celloutsig_1_0z;
  wire [11:0] celloutsig_1_17z;
  wire [3:0] celloutsig_1_18z;
  wire [7:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [11:0] celloutsig_1_3z;
  reg [2:0] celloutsig_1_4z;
  wire [2:0] celloutsig_1_6z;
  wire [18:0] celloutsig_1_7z;
  wire [16:0] celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_38z = !(celloutsig_0_23z ? celloutsig_0_31z : _00_);
  assign celloutsig_0_22z = !(celloutsig_0_19z[7] ? celloutsig_0_19z[8] : celloutsig_0_15z);
  assign celloutsig_0_10z = ~celloutsig_0_1z[0];
  assign celloutsig_1_1z = celloutsig_1_0z[15] ^ in_data[175];
  assign celloutsig_0_2z = celloutsig_0_1z[0] ^ celloutsig_0_0z[5];
  assign celloutsig_0_11z = celloutsig_0_6z + celloutsig_0_8z[3:1];
  reg [10:0] _10_;
  always_ff @(posedge celloutsig_1_19z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _10_ <= 11'h000;
    else _10_ <= { celloutsig_0_6z, celloutsig_0_0z };
  assign { _02_[10:6], _01_, _02_[4:0] } = _10_;
  reg [3:0] _11_;
  always_ff @(negedge celloutsig_1_19z[0], posedge clkin_data[0])
    if (clkin_data[0]) _11_ <= 4'h0;
    else _11_ <= { celloutsig_0_11z[2], celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_9z };
  assign { _03_[3:1], _00_ } = _11_;
  assign celloutsig_0_3z = { in_data[14:13], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z } & { in_data[42:31], celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_1_0z = in_data[153:134] & in_data[172:153];
  assign celloutsig_1_7z = { in_data[119:112], celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_6z } & in_data[184:166];
  assign celloutsig_0_19z = { celloutsig_0_6z[2:1], celloutsig_0_1z } & { celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_14z };
  assign celloutsig_0_37z = { celloutsig_0_24z[2], celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_31z, celloutsig_0_22z } >= { celloutsig_0_3z[14:3], celloutsig_0_24z, celloutsig_0_18z };
  assign celloutsig_0_4z = { in_data[77:70], celloutsig_0_1z } <= in_data[67:53];
  assign celloutsig_1_8z = celloutsig_1_7z[17:1] % { 1'h1, in_data[118:103] };
  assign celloutsig_0_6z = in_data[26:24] % { 1'h1, celloutsig_0_0z[1:0] };
  assign celloutsig_1_3z = { in_data[126:116], celloutsig_1_1z } * { celloutsig_1_0z[11:1], celloutsig_1_1z };
  assign celloutsig_0_1z = in_data[63:57] * in_data[68:62];
  assign celloutsig_0_24z = { _02_[0], celloutsig_0_22z, celloutsig_0_7z, celloutsig_0_12z } * { celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_22z, celloutsig_0_23z };
  assign celloutsig_0_0z = in_data[83] ? in_data[18:11] : in_data[9:2];
  assign celloutsig_0_8z = celloutsig_0_4z ? celloutsig_0_0z[7:3] : { in_data[66:64], celloutsig_0_15z, 1'h0 };
  assign celloutsig_0_18z = - { celloutsig_0_0z[4:1], celloutsig_0_8z };
  assign celloutsig_1_17z = celloutsig_1_3z | celloutsig_1_7z[18:7];
  assign celloutsig_0_31z = celloutsig_0_11z[1] & celloutsig_0_1z[3];
  assign celloutsig_0_15z = celloutsig_0_0z[6] & celloutsig_0_1z[5];
  assign celloutsig_0_7z = celloutsig_0_2z & celloutsig_0_6z[0];
  assign celloutsig_0_12z = celloutsig_0_3z[9] & celloutsig_0_3z[5];
  assign celloutsig_0_9z = ^ { in_data[67:59], celloutsig_0_7z };
  assign celloutsig_1_6z = in_data[127:125] >> { celloutsig_1_0z[11:10], celloutsig_1_1z };
  assign celloutsig_1_18z = celloutsig_1_8z[8:5] - { celloutsig_1_3z[7:6], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_19z = celloutsig_1_7z[7:0] - celloutsig_1_17z[11:4];
  assign celloutsig_0_14z = in_data[77:74] ^ { celloutsig_0_8z[4:3], celloutsig_0_2z, celloutsig_0_7z };
  always_latch
    if (!clkin_data[32]) celloutsig_1_4z = 3'h0;
    else if (!clkin_data[96]) celloutsig_1_4z = { celloutsig_1_3z[10:9], celloutsig_1_1z };
  assign celloutsig_0_23z = ~((celloutsig_0_8z[4] & celloutsig_0_22z) | (celloutsig_0_15z & celloutsig_0_12z));
  assign _02_[5] = _01_;
  assign _03_[0] = _00_;
  assign { out_data[131:128], out_data[103:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_37z, celloutsig_0_38z };
endmodule
