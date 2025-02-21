/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [13:0] _01_;
  wire [12:0] _02_;
  reg [18:0] _03_;
  reg [5:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [2:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [12:0] celloutsig_0_18z;
  wire [5:0] celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire [3:0] celloutsig_0_21z;
  wire celloutsig_0_24z;
  wire [12:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [7:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [6:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire celloutsig_0_40z;
  wire celloutsig_0_42z;
  wire [11:0] celloutsig_0_43z;
  wire celloutsig_0_4z;
  wire [3:0] celloutsig_0_55z;
  wire [12:0] celloutsig_0_5z;
  wire celloutsig_0_65z;
  wire [5:0] celloutsig_0_66z;
  wire celloutsig_0_6z;
  wire [19:0] celloutsig_0_7z;
  wire [32:0] celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [18:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [5:0] celloutsig_1_17z;
  wire [7:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [2:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [19:0] celloutsig_1_5z;
  wire celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_11z = celloutsig_0_2z ? celloutsig_0_0z : celloutsig_0_8z[17];
  assign celloutsig_0_24z = ~(_00_ & celloutsig_0_17z);
  assign celloutsig_0_65z = !(celloutsig_0_40z ? celloutsig_0_19z[4] : celloutsig_0_55z[0]);
  assign celloutsig_0_14z = !(in_data[16] ? celloutsig_0_0z : celloutsig_0_4z);
  assign celloutsig_0_16z = !(celloutsig_0_8z[20] ? celloutsig_0_15z[0] : in_data[62]);
  assign celloutsig_0_2z = !(in_data[70] ? in_data[33] : celloutsig_0_0z);
  assign celloutsig_0_4z = ~_00_;
  assign celloutsig_1_3z = ~celloutsig_1_2z[1];
  assign celloutsig_1_15z = ~in_data[115];
  assign celloutsig_0_30z = ~celloutsig_0_19z[5];
  reg [12:0] _15_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _15_ <= 13'h0000;
    else _15_ <= { in_data[59:50], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z };
  assign { _02_[12:3], _00_, _02_[1:0] } = _15_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _01_ <= 14'h0000;
    else _01_ <= { celloutsig_0_5z, celloutsig_0_17z };
  always_ff @(posedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _03_ <= 19'h00000;
    else _03_ <= { celloutsig_1_5z[11:2], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z };
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _04_ <= 6'h00;
    else _04_ <= _02_[10:5];
  assign celloutsig_0_37z = { in_data[91:82], celloutsig_0_24z, celloutsig_0_24z, celloutsig_0_35z, celloutsig_0_27z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_20z } > { _01_[11:5], celloutsig_0_27z, celloutsig_0_14z, celloutsig_0_28z };
  assign celloutsig_0_6z = { in_data[56:49], celloutsig_0_4z, celloutsig_0_0z } > celloutsig_0_5z[12:3];
  assign celloutsig_1_12z = { celloutsig_1_2z[1:0], celloutsig_1_2z[1], in_data[115], celloutsig_1_11z, celloutsig_1_0z, celloutsig_1_15z, celloutsig_1_11z, celloutsig_1_2z[1] } > celloutsig_1_5z[18:10];
  assign celloutsig_0_10z = { _02_[8], celloutsig_0_0z, _02_[12:3], _00_, _02_[1:0], celloutsig_0_0z, celloutsig_0_4z } > { celloutsig_0_8z[1:0], _02_[12:3], _00_, _02_[1:0], celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_0_12z = celloutsig_0_8z[9:7] <= celloutsig_0_8z[10:8];
  assign celloutsig_0_55z = celloutsig_0_26z[7:4] % { 1'h1, celloutsig_0_15z };
  assign celloutsig_1_5z = { celloutsig_1_2z[1], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_15z, celloutsig_1_2z, celloutsig_1_2z, in_data[115] } % { 1'h1, in_data[113:98], celloutsig_1_15z, celloutsig_1_3z, in_data[96] };
  assign celloutsig_0_43z = { celloutsig_0_31z, celloutsig_0_42z, celloutsig_0_16z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_24z } % { 1'h1, _01_[11:2], celloutsig_0_30z };
  assign celloutsig_0_7z = { in_data[56:38], celloutsig_0_6z } % { 1'h1, in_data[83:69], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_0_5z = { _02_[11:3], _00_, _02_[1], celloutsig_0_0z, celloutsig_0_0z } * in_data[36:24];
  assign celloutsig_1_14z = { in_data[186:169], celloutsig_1_13z } * { in_data[177:161], celloutsig_1_0z, celloutsig_1_12z };
  assign celloutsig_0_18z = celloutsig_0_8z[27:15] * { celloutsig_0_8z[16:9], celloutsig_0_12z, celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_10z };
  assign celloutsig_0_0z = & in_data[30:27];
  assign celloutsig_0_42z = & { celloutsig_0_12z, celloutsig_0_7z[7:0] };
  assign celloutsig_0_13z = & { celloutsig_0_11z, celloutsig_0_7z[16:9], celloutsig_0_2z };
  assign celloutsig_0_17z = & { celloutsig_0_15z, in_data[36:20] };
  assign celloutsig_0_20z = & { celloutsig_0_4z, celloutsig_0_2z, in_data[42:35] };
  assign celloutsig_0_35z = celloutsig_0_32z & celloutsig_0_20z;
  assign celloutsig_1_0z = in_data[96] & in_data[117];
  assign celloutsig_1_8z = celloutsig_1_3z & celloutsig_1_0z;
  assign celloutsig_1_11z = in_data[115] & celloutsig_1_2z[1];
  assign celloutsig_1_19z = in_data[154] & celloutsig_1_17z[0];
  assign celloutsig_1_2z = { celloutsig_1_15z, celloutsig_1_0z, celloutsig_1_0z } >> in_data[189:187];
  assign celloutsig_0_8z = { in_data[18:9], celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_2z } >> { celloutsig_0_5z[12:1], celloutsig_0_7z, celloutsig_0_2z };
  assign celloutsig_0_15z = celloutsig_0_5z[5:3] >> { celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_4z };
  assign celloutsig_0_19z = { _02_[8:4], celloutsig_0_4z } >> celloutsig_0_8z[7:2];
  assign celloutsig_0_21z = { celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_17z, celloutsig_0_2z } >> celloutsig_0_19z[5:2];
  assign celloutsig_0_28z = { celloutsig_0_18z[9:4], celloutsig_0_27z, celloutsig_0_14z } >> celloutsig_0_26z[11:4];
  assign celloutsig_1_17z = celloutsig_1_14z[11:6] <<< { celloutsig_1_15z, celloutsig_1_16z, celloutsig_1_2z, celloutsig_1_11z };
  assign celloutsig_1_18z = celloutsig_1_14z[17:10] <<< { _03_[9:6], celloutsig_1_13z, celloutsig_1_8z, celloutsig_1_13z, celloutsig_1_2z[1] };
  assign celloutsig_0_26z = { celloutsig_0_8z[11:0], celloutsig_0_4z } <<< in_data[22:10];
  assign celloutsig_0_31z = { celloutsig_0_7z[19:18], celloutsig_0_14z, celloutsig_0_21z } <<< { _04_[4:0], celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_66z = celloutsig_0_43z[9:4] ^ { celloutsig_0_43z[10:7], celloutsig_0_37z, celloutsig_0_0z };
  assign celloutsig_1_13z = ~((celloutsig_1_11z & celloutsig_1_8z) | celloutsig_1_5z[15]);
  assign celloutsig_0_27z = ~((celloutsig_0_5z[11] & celloutsig_0_0z) | celloutsig_0_26z[6]);
  assign celloutsig_0_32z = ~((celloutsig_0_8z[26] & celloutsig_0_18z[11]) | (celloutsig_0_0z & celloutsig_0_24z));
  assign celloutsig_0_40z = ~((celloutsig_0_13z & celloutsig_0_2z) | (celloutsig_0_30z & _04_[5]));
  assign celloutsig_1_16z = ~((_03_[2] & celloutsig_1_13z) | (celloutsig_1_12z & celloutsig_1_0z));
  assign _02_[2] = _00_;
  assign { out_data[135:128], out_data[96], out_data[32], out_data[5:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_65z, celloutsig_0_66z };
endmodule
