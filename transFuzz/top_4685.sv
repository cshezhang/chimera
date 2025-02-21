/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [9:0] _03_;
  wire [9:0] _04_;
  wire [14:0] _05_;
  wire [12:0] _06_;
  wire celloutsig_0_0z;
  reg [7:0] celloutsig_0_10z;
  wire [13:0] celloutsig_0_11z;
  wire [19:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [3:0] celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [3:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_45z;
  wire [12:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [14:0] celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_9z = ~(celloutsig_1_8z & celloutsig_1_2z);
  assign celloutsig_0_47z = ~celloutsig_0_36z[3];
  assign celloutsig_0_0z = in_data[57] | ~(in_data[31]);
  assign celloutsig_0_37z = celloutsig_0_4z | _00_;
  assign celloutsig_0_3z = celloutsig_0_0z | _01_;
  assign celloutsig_1_4z = celloutsig_1_2z | celloutsig_1_1z;
  assign celloutsig_1_7z = celloutsig_1_0z[1] | celloutsig_1_3z;
  assign celloutsig_1_19z = _02_ | celloutsig_1_7z;
  assign celloutsig_0_29z = celloutsig_0_8z ^ celloutsig_0_28z;
  assign celloutsig_1_5z = ~(celloutsig_1_0z[0] ^ celloutsig_1_1z);
  assign celloutsig_0_5z = ~(in_data[33] ^ celloutsig_0_0z);
  assign celloutsig_0_7z = ~(celloutsig_0_3z ^ in_data[51]);
  reg [14:0] _19_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _19_ <= 15'h0000;
    else _19_ <= { celloutsig_1_13z[10:2], celloutsig_1_15z, celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_10z };
  assign { _05_[14:12], _02_, _05_[10:0] } = _19_;
  reg [12:0] _20_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _20_ <= 13'h0000;
    else _20_ <= { in_data[35:24], celloutsig_0_0z };
  assign { _06_[12:10], _03_[9:7], _01_, _03_[5:0] } = _20_;
  reg [9:0] _21_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[64])
    if (!clkin_data[64]) _21_ <= 10'h000;
    else _21_ <= { _03_[9:7], _01_, _03_[5:0] };
  assign { _00_, _04_[8:0] } = _21_;
  assign celloutsig_0_46z = { celloutsig_0_28z, celloutsig_0_45z, celloutsig_0_18z, celloutsig_0_36z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_29z, celloutsig_0_0z, celloutsig_0_19z, celloutsig_0_34z } / { 1'h1, _04_[8:0], celloutsig_0_41z, celloutsig_0_35z, celloutsig_0_0z };
  assign celloutsig_1_1z = in_data[123:120] == in_data[181:178];
  assign celloutsig_1_8z = { celloutsig_1_7z, celloutsig_1_5z } === { celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_14z = in_data[51:43] === { celloutsig_0_11z[10:3], celloutsig_0_7z };
  assign celloutsig_0_21z = { _03_[8:7], _01_, _03_[5:0], celloutsig_0_9z } === in_data[90:81];
  assign celloutsig_0_18z = { celloutsig_0_16z[1], celloutsig_0_9z, celloutsig_0_13z } >= { celloutsig_0_16z[2], celloutsig_0_15z, celloutsig_0_14z };
  assign celloutsig_1_3z = { in_data[138:124], celloutsig_1_0z } <= { in_data[119:114], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_9z = { in_data[51:47], celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z } <= { in_data[78:72], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_0_15z = celloutsig_0_11z[7:0] <= { celloutsig_0_12z[15:14], celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_0_4z = ! { _03_[9:7], _01_, _03_[5] };
  assign celloutsig_0_19z = ! { _06_[10], _03_[9], celloutsig_0_2z };
  assign celloutsig_0_34z = { celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_8z } < { celloutsig_0_11z[4:2], celloutsig_0_9z, celloutsig_0_19z, celloutsig_0_15z };
  assign celloutsig_0_45z = { in_data[11:10], celloutsig_0_15z, celloutsig_0_37z } < { celloutsig_0_18z, celloutsig_0_31z, celloutsig_0_15z, celloutsig_0_3z };
  assign celloutsig_1_11z = { celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_7z } < { in_data[191:186], celloutsig_1_10z, celloutsig_1_10z };
  assign celloutsig_1_18z = { celloutsig_1_0z[5:1], celloutsig_1_7z } < { in_data[100], celloutsig_1_11z, celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_3z };
  assign celloutsig_0_22z = { celloutsig_0_12z[19:12], celloutsig_0_9z } < { celloutsig_0_11z[3:2], celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_14z };
  assign celloutsig_0_23z = { celloutsig_0_11z[5:1], celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_0z, celloutsig_0_18z, celloutsig_0_22z, celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_9z } < { in_data[81:49], celloutsig_0_5z };
  assign celloutsig_0_2z = { _06_[12:10], _03_[9], celloutsig_0_0z } < _03_[4:0];
  assign celloutsig_1_13z = { in_data[123:121], celloutsig_1_12z, celloutsig_1_11z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_10z, celloutsig_1_6z } % { 1'h1, in_data[157:145], celloutsig_1_1z };
  assign celloutsig_0_11z = { in_data[3], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z } % { 1'h1, _06_[11:10], _03_[9:7], _01_, _03_[5:0], celloutsig_0_9z };
  assign celloutsig_0_12z = in_data[65:46] % { 1'h1, in_data[54:36] };
  assign celloutsig_1_0z = - in_data[156:151];
  assign celloutsig_0_16z = - { celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_13z };
  assign celloutsig_0_35z = | { celloutsig_0_15z, celloutsig_0_16z };
  assign celloutsig_0_41z = | { _06_[12:10], _03_[9:7], _01_, _03_[5:1], celloutsig_0_20z, celloutsig_0_35z, celloutsig_0_23z, celloutsig_0_9z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_13z };
  assign celloutsig_1_2z = | { in_data[109:101], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_10z = | { celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_1z };
  assign celloutsig_0_6z = in_data[59] & celloutsig_0_4z;
  assign celloutsig_0_13z = celloutsig_0_5z & celloutsig_0_6z;
  assign celloutsig_0_28z = celloutsig_0_10z[3] & celloutsig_0_10z[6];
  assign celloutsig_0_8z = | { _03_[9:7], _03_[5], _01_, _06_[10] };
  assign celloutsig_0_31z = | { _03_[9:8], _06_[11:10] };
  assign celloutsig_1_6z = ^ in_data[190:183];
  assign celloutsig_1_12z = ^ { celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_10z };
  assign celloutsig_0_20z = ^ celloutsig_0_10z[7:2];
  assign celloutsig_0_36z = { _04_[3:1], celloutsig_0_4z } - { celloutsig_0_9z, celloutsig_0_35z, celloutsig_0_35z, celloutsig_0_21z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_10z = 8'h00;
    else if (clkin_data[128]) celloutsig_0_10z = { in_data[87:81], celloutsig_0_3z };
  assign celloutsig_1_15z = ~((celloutsig_1_1z & celloutsig_1_6z) | (celloutsig_1_7z & celloutsig_1_5z));
  assign _03_[6] = _01_;
  assign _04_[9] = _00_;
  assign _05_[11] = _02_;
  assign _06_[9:0] = { _03_[9:7], _01_, _03_[5:0] };
  assign { out_data[128], out_data[96], out_data[44:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_46z, celloutsig_0_47z };
endmodule
