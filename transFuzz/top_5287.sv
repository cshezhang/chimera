/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [2:0] _01_;
  reg [2:0] _02_;
  wire [5:0] _03_;
  wire [4:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [19:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  reg [13:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [11:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [4:0] celloutsig_0_26z;
  wire [3:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [3:0] celloutsig_0_41z;
  wire [12:0] celloutsig_0_42z;
  wire celloutsig_0_4z;
  wire [10:0] celloutsig_0_52z;
  wire celloutsig_0_57z;
  wire [8:0] celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_13z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [3:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  wire [5:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_16z = ~(celloutsig_1_2z & celloutsig_1_7z[1]);
  assign celloutsig_0_1z = ~(in_data[47] & in_data[69]);
  assign celloutsig_0_28z = ~(celloutsig_0_18z & celloutsig_0_2z);
  assign celloutsig_0_11z = ~(in_data[72] | celloutsig_0_2z);
  assign celloutsig_0_30z = ~celloutsig_0_16z;
  assign celloutsig_1_2z = in_data[111] | ~(celloutsig_1_0z);
  assign celloutsig_1_4z = in_data[114] | ~(in_data[111]);
  assign celloutsig_0_8z = in_data[38] | ~(_00_);
  assign celloutsig_0_25z = celloutsig_0_6z | ~(celloutsig_0_19z[2]);
  assign celloutsig_0_57z = celloutsig_0_52z[0] ^ celloutsig_0_41z[2];
  reg [5:0] _14_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _14_ <= 6'h00;
    else _14_ <= in_data[80:75];
  assign { _03_[5], _00_, _03_[3:0] } = _14_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[32])
    if (clkin_data[32]) _01_ <= 3'h0;
    else _01_ <= { celloutsig_0_12z[12:11], celloutsig_0_5z };
  always_ff @(negedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _02_ <= 3'h0;
    else _02_ <= { celloutsig_0_12z[16:15], celloutsig_0_17z };
  assign celloutsig_0_4z = { _03_[5], _00_, _03_[3] } == { _03_[0], celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_0z = in_data[151:147] == in_data[106:102];
  assign celloutsig_1_1z = { celloutsig_1_0z, celloutsig_1_0z } == in_data[140:139];
  assign celloutsig_1_5z = { celloutsig_1_3z[2], celloutsig_1_4z, celloutsig_1_0z } == { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_1_18z = { celloutsig_1_3z[2:0], celloutsig_1_13z } == { in_data[177:175], celloutsig_1_1z };
  assign celloutsig_0_16z = { in_data[46:41], celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_3z, _03_[5], _00_, _03_[3:0] } == { in_data[57:44], celloutsig_0_13z, celloutsig_0_5z };
  assign celloutsig_0_14z = { _00_, _03_[3:2], celloutsig_0_9z } >= celloutsig_0_12z[14:11];
  assign celloutsig_0_3z = { in_data[27:23], celloutsig_0_1z, _03_[5], _00_, _03_[3:0], celloutsig_0_2z, celloutsig_0_1z } > { in_data[48:38], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_5z = { _03_[2], celloutsig_0_2z, celloutsig_0_4z } > { in_data[5], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_13z = { _03_[3], _03_[5], _00_, _03_[3:0] } > { in_data[76:74], celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_5z };
  assign celloutsig_0_38z = ! { celloutsig_0_12z[16:13], celloutsig_0_29z, celloutsig_0_20z, celloutsig_0_32z, celloutsig_0_25z, celloutsig_0_14z, celloutsig_0_8z, celloutsig_0_25z };
  assign celloutsig_1_6z = ! { in_data[167:163], celloutsig_1_1z };
  assign celloutsig_0_15z = ! { in_data[44:33], celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_13z };
  assign celloutsig_0_20z = ! { in_data[39:29], celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z, _03_[5], _00_, _03_[3:0], celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_36z = celloutsig_0_23z & ~(celloutsig_0_19z[6]);
  assign celloutsig_0_7z = celloutsig_0_5z & ~(celloutsig_0_6z);
  assign celloutsig_0_12z = { _03_[2:0], celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_2z } % { 1'h1, in_data[33:19], celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_8z };
  assign celloutsig_0_6z = { celloutsig_0_5z, celloutsig_0_3z, _03_[5], _00_, _03_[3:0] } != { in_data[60:55], celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_0_18z = { in_data[45:10], celloutsig_0_13z, celloutsig_0_7z } != in_data[87:50];
  assign celloutsig_0_10z = { _03_[3:2], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z } | { _03_[2], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_26z = { _03_[3:0], celloutsig_0_9z } | { _03_[1], celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_17z };
  assign celloutsig_0_9z = | { in_data[2:1], celloutsig_0_7z };
  assign celloutsig_0_17z = _03_[2] & celloutsig_0_6z;
  assign celloutsig_0_23z = celloutsig_0_9z & celloutsig_0_15z;
  assign celloutsig_0_32z = celloutsig_0_20z & celloutsig_0_26z[3];
  assign celloutsig_0_31z = | { celloutsig_0_24z, celloutsig_0_10z, celloutsig_0_4z };
  assign celloutsig_1_19z = ^ { celloutsig_1_9z[3:1], celloutsig_1_16z, celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_0_24z = ^ celloutsig_0_12z[6:1];
  assign celloutsig_0_29z = ^ { celloutsig_0_27z[2:0], celloutsig_0_17z, celloutsig_0_27z, celloutsig_0_15z };
  assign celloutsig_1_3z = { celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z } >> { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_42z = { in_data[66:55], celloutsig_0_36z } << { celloutsig_0_41z, celloutsig_0_32z, celloutsig_0_38z, celloutsig_0_1z, celloutsig_0_30z, _01_, celloutsig_0_17z, celloutsig_0_17z };
  assign celloutsig_1_7z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z } << { celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_6z };
  assign celloutsig_0_41z = { celloutsig_0_27z[1:0], celloutsig_0_31z, celloutsig_0_15z } <<< celloutsig_0_22z[9:6];
  assign celloutsig_1_9z = { celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_0z } <<< { celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_4z };
  assign celloutsig_0_22z = { celloutsig_0_12z[11:2], celloutsig_0_15z, celloutsig_0_5z } <<< { _00_, _03_[3:0], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_8z };
  assign celloutsig_0_27z = { celloutsig_0_25z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_17z } <<< { celloutsig_0_8z, celloutsig_0_24z, celloutsig_0_18z, celloutsig_0_17z };
  assign celloutsig_0_52z = { celloutsig_0_12z[18:15], _02_, _02_, celloutsig_0_8z } - celloutsig_0_42z[10:0];
  assign celloutsig_0_58z = { celloutsig_0_19z[6:1], _01_ } ~^ { celloutsig_0_52z[8:2], celloutsig_0_28z, celloutsig_0_32z };
  assign celloutsig_1_13z = ~((celloutsig_1_4z & celloutsig_1_6z) | celloutsig_1_4z);
  assign celloutsig_0_2z = ~((_03_[1] & celloutsig_0_1z) | in_data[83]);
  always_latch
    if (!clkin_data[64]) celloutsig_0_19z = 14'h0000;
    else if (!celloutsig_1_18z) celloutsig_0_19z = { in_data[90], celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_17z };
  assign _03_[4] = _00_;
  assign { out_data[128], out_data[96], out_data[32], out_data[8:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_57z, celloutsig_0_58z };
endmodule
