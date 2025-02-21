/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire [7:0] _05_;
  wire [7:0] _06_;
  wire [8:0] _07_;
  wire celloutsig_0_10z;
  wire [8:0] celloutsig_0_11z;
  wire [8:0] celloutsig_0_12z;
  wire [15:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [8:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_29z;
  wire [3:0] celloutsig_0_2z;
  wire [15:0] celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire [8:0] celloutsig_0_34z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [7:0] celloutsig_1_0z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_6z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_57z = celloutsig_0_5z ? _00_ : celloutsig_0_19z;
  assign celloutsig_0_5z = !(celloutsig_0_1z ? _02_ : celloutsig_0_2z[3]);
  assign celloutsig_1_19z = !(celloutsig_1_1z ? celloutsig_1_6z : celloutsig_1_0z[5]);
  assign celloutsig_0_9z = !(celloutsig_0_4z ? celloutsig_0_5z : celloutsig_0_8z);
  assign celloutsig_0_25z = !(celloutsig_0_15z ? celloutsig_0_13z[15] : _03_);
  assign celloutsig_0_19z = ~celloutsig_0_5z;
  assign celloutsig_0_17z = ~((celloutsig_0_16z | celloutsig_0_4z) & (celloutsig_0_7z | celloutsig_0_7z));
  assign celloutsig_0_3z = celloutsig_0_1z | ~(celloutsig_0_2z[2]);
  reg [8:0] _16_;
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _16_ <= 9'h000;
    else _16_ <= in_data[64:56];
  assign { _07_[8], _05_[7:3], _02_, _04_, _03_ } = _16_;
  reg [7:0] _17_;
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _17_ <= 8'h00;
    else _17_ <= { _05_[7:3], _02_, _04_, _03_ };
  assign { _00_, _01_, _06_[5:0] } = _17_;
  assign celloutsig_0_31z = { celloutsig_0_13z[14], celloutsig_0_11z[5:4], celloutsig_0_13z[11:8], celloutsig_0_11z[3:2], celloutsig_0_13z[5:1], celloutsig_0_22z, celloutsig_0_29z } / { 1'h1, celloutsig_0_11z[5:4], celloutsig_0_13z[11:8], celloutsig_0_11z[3:2], celloutsig_0_13z[5:2], celloutsig_0_23z, celloutsig_0_26z, celloutsig_0_21z };
  assign celloutsig_0_15z = { celloutsig_0_11z[2], celloutsig_0_13z[5:2], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_6z } == { celloutsig_0_13z[15:14], celloutsig_0_11z[5:4], celloutsig_0_13z[11:8] };
  assign celloutsig_0_16z = celloutsig_0_11z[7:4] === { 2'h0, celloutsig_0_9z, celloutsig_0_10z };
  assign celloutsig_0_21z = in_data[74:72] === { celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_1z };
  assign celloutsig_0_29z = { _02_, _04_, _03_, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_23z, celloutsig_0_17z } && { _05_[6:3], _02_, _04_, _03_ };
  assign celloutsig_1_2z = in_data[103:99] || in_data[142:138];
  assign celloutsig_0_6z = { celloutsig_0_2z[3:2], celloutsig_0_5z } || { _02_, _04_, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_4z = { in_data[39:38], celloutsig_0_3z } < { celloutsig_0_2z[3:2], 1'h0 };
  assign celloutsig_0_10z = { _05_[4:3], _02_, _04_, _03_ } < _05_[7:3];
  assign celloutsig_0_18z = in_data[41:29] < { celloutsig_0_13z[15:14], celloutsig_0_11z[5:4], celloutsig_0_13z[11:8], celloutsig_0_11z[3:2], celloutsig_0_13z[5], celloutsig_0_7z, celloutsig_0_16z };
  assign celloutsig_0_1z = in_data[67:58] < { _03_, _07_[8], _05_[7:3], _02_, _04_, _03_ };
  assign celloutsig_0_26z = { _05_[4:3], celloutsig_0_23z, celloutsig_0_19z } < { celloutsig_0_12z[6], celloutsig_0_11z[3:2], celloutsig_0_15z };
  assign celloutsig_1_1z = in_data[122] & ~(celloutsig_1_0z[5]);
  assign celloutsig_0_33z = & celloutsig_0_20z[7:4];
  assign celloutsig_0_51z = & { _04_, _05_[7:3], _03_, _02_, celloutsig_0_2z[2], _07_[8] };
  assign celloutsig_0_8z = & { celloutsig_0_3z, celloutsig_0_2z[3:2] };
  assign celloutsig_0_14z = & { celloutsig_0_13z[5:4], celloutsig_0_11z[3:2], celloutsig_0_10z, celloutsig_0_5z };
  assign celloutsig_1_18z = | { in_data[129:123], celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_0_23z = | { celloutsig_0_12z[8:6], celloutsig_0_11z[3:2], celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_14z };
  assign celloutsig_1_6z = celloutsig_1_2z & celloutsig_1_1z;
  assign celloutsig_0_7z = celloutsig_0_1z & celloutsig_0_5z;
  assign celloutsig_0_22z = ~^ { in_data[44:36], celloutsig_0_11z };
  assign celloutsig_0_11z = { celloutsig_0_2z[2], 1'h0, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_8z } << { celloutsig_0_2z[2], 2'h0, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_7z };
  assign celloutsig_1_0z = in_data[158:151] >> in_data[132:125];
  assign celloutsig_0_20z = { _05_[7:3], _02_, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_8z } ~^ { celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_17z, celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_18z, celloutsig_0_3z };
  assign celloutsig_0_34z = celloutsig_0_11z ^ { celloutsig_0_15z, celloutsig_0_22z, celloutsig_0_25z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_33z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_5z };
  assign celloutsig_0_2z[3:2] = _05_[5:4] ^ in_data[24:23];
  assign { celloutsig_0_12z[7:6], celloutsig_0_12z[0], celloutsig_0_12z[1], celloutsig_0_12z[3:2], celloutsig_0_12z[8] } = { celloutsig_0_2z[3:2], celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_4z, in_data[95] } ^ { celloutsig_0_11z[5:4], celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_11z[1], celloutsig_0_6z, celloutsig_0_11z[6] };
  assign { celloutsig_0_13z[9], celloutsig_0_13z[15], celloutsig_0_13z[8], celloutsig_0_13z[14], celloutsig_0_13z[3], celloutsig_0_13z[11], celloutsig_0_13z[1], celloutsig_0_13z[2], celloutsig_0_13z[5], celloutsig_0_13z[10], celloutsig_0_13z[4], celloutsig_0_13z[0] } = { celloutsig_0_2z[3], celloutsig_0_2z[3:2], celloutsig_0_2z[2], celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_3z } | { celloutsig_0_12z[7], celloutsig_0_11z[7], celloutsig_0_12z[6], celloutsig_0_11z[6], celloutsig_0_12z[1], celloutsig_0_11z[3], celloutsig_0_5z, celloutsig_0_12z[0], celloutsig_0_12z[3], celloutsig_0_12z[8], celloutsig_0_12z[2], celloutsig_0_7z };
  assign { out_data[33], out_data[41:37], out_data[32], out_data[35:34] } = { celloutsig_0_51z, celloutsig_0_31z[6:2], celloutsig_0_29z, celloutsig_0_18z, celloutsig_0_8z } ~^ { celloutsig_0_34z[0], celloutsig_0_34z[8:4], celloutsig_0_33z, celloutsig_0_34z[2:1] };
  assign _05_[2:0] = { _02_, _04_, _03_ };
  assign _06_[7:6] = { _00_, _01_ };
  assign _07_[7:0] = { _05_[7:3], _02_, _04_, _03_ };
  assign celloutsig_0_12z[5:4] = celloutsig_0_11z[3:2];
  assign { celloutsig_0_13z[13:12], celloutsig_0_13z[7:6] } = celloutsig_0_11z[5:2];
  assign celloutsig_0_2z[1:0] = 2'h0;
  assign { out_data[128], out_data[96], out_data[36], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_34z[3], celloutsig_0_57z };
endmodule
