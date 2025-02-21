/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  reg [4:0] _02_;
  reg [2:0] _03_;
  wire [7:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [4:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [7:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [20:0] celloutsig_0_1z;
  wire [27:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_25z;
  wire [9:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [15:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [5:0] celloutsig_0_35z;
  wire celloutsig_0_38z;
  wire celloutsig_0_46z;
  wire [2:0] celloutsig_0_47z;
  wire [4:0] celloutsig_0_4z;
  wire celloutsig_0_52z;
  wire celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire celloutsig_0_81z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_16z;
  wire [2:0] celloutsig_1_17z;
  wire [19:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [10:0] celloutsig_1_2z;
  wire [10:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [6:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [2:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_52z = celloutsig_0_33z ? _01_ : celloutsig_0_14z;
  assign celloutsig_0_9z = in_data[35] ? celloutsig_0_2z : celloutsig_0_8z;
  assign celloutsig_0_57z = celloutsig_0_46z ^ celloutsig_0_11z;
  assign celloutsig_0_8z = celloutsig_0_4z[3] ^ celloutsig_0_5z;
  assign celloutsig_0_15z = celloutsig_0_13z ^ celloutsig_0_14z;
  assign celloutsig_0_19z = celloutsig_0_10z ^ celloutsig_0_1z[5];
  always_ff @(posedge clkin_data[32], posedge clkin_data[64])
    if (clkin_data[64]) _03_ <= 3'h0;
    else _03_ <= { in_data[142:141], celloutsig_1_0z };
  reg [7:0] _12_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _12_ <= 8'h00;
    else _12_ <= celloutsig_0_20z[16:9];
  assign { _01_, _04_[6:1], _00_ } = _12_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _02_ <= 5'h00;
    else _02_ <= in_data[69:65];
  assign celloutsig_0_32z = { celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_13z } <= { celloutsig_0_18z, celloutsig_0_9z, celloutsig_0_13z };
  assign celloutsig_0_33z = in_data[21:12] <= { celloutsig_0_28z[11:9], celloutsig_0_21z, celloutsig_0_25z, celloutsig_0_4z };
  assign celloutsig_0_38z = { celloutsig_0_33z, celloutsig_0_11z, celloutsig_0_8z } <= _02_[3:1];
  assign celloutsig_0_6z = { _02_[1:0], celloutsig_0_5z, celloutsig_0_5z } <= celloutsig_0_4z[3:0];
  assign celloutsig_0_11z = { in_data[33:26], celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_8z } <= { in_data[63:56], celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_2z };
  assign celloutsig_0_21z = celloutsig_0_16z[6:3] <= { celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_15z };
  assign celloutsig_0_0z = ! in_data[56:21];
  assign celloutsig_0_7z = ! { celloutsig_0_1z[20:1], _02_, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_5z, _02_, celloutsig_0_0z };
  assign celloutsig_0_81z = ! celloutsig_0_35z;
  assign celloutsig_1_1z = ! { in_data[127:121], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_12z = ! { celloutsig_1_2z[4:2], celloutsig_1_5z };
  assign celloutsig_0_14z = ! { celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_0_22z = ! in_data[22:9];
  assign celloutsig_0_25z = ! { in_data[62:52], celloutsig_0_6z, celloutsig_0_15z };
  assign celloutsig_1_3z = { celloutsig_1_2z[9:0], celloutsig_1_0z } | in_data[176:166];
  assign celloutsig_1_4z = celloutsig_1_3z[7:4] | { celloutsig_1_2z[5:3], celloutsig_1_0z };
  assign celloutsig_1_6z = { in_data[189], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_4z } | celloutsig_1_3z[6:0];
  assign celloutsig_0_1z = in_data[64:44] | in_data[53:33];
  assign celloutsig_1_18z = { in_data[171:155], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_7z } | { celloutsig_1_3z[9:7], celloutsig_1_5z, celloutsig_1_12z, celloutsig_1_17z, celloutsig_1_2z, celloutsig_1_5z };
  assign celloutsig_0_12z = celloutsig_0_4z | { celloutsig_0_4z[3:0], celloutsig_0_2z };
  assign celloutsig_1_10z = & celloutsig_1_9z;
  assign celloutsig_0_27z = & { _01_, _00_, _04_[6:1], celloutsig_0_7z, celloutsig_0_2z };
  assign celloutsig_0_46z = ~^ { celloutsig_0_1z[17:14], celloutsig_0_29z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_5z = ~^ { in_data[69:68], _02_ };
  assign celloutsig_1_0z = ~^ in_data[171:155];
  assign celloutsig_1_7z = ~^ { celloutsig_1_6z[3], celloutsig_1_3z, celloutsig_1_4z };
  assign celloutsig_1_19z = ~^ { celloutsig_1_17z[2:1], celloutsig_1_17z, celloutsig_1_16z };
  assign celloutsig_0_13z = ~^ in_data[22:12];
  assign celloutsig_0_17z = ~^ { celloutsig_0_1z[3:1], celloutsig_0_16z };
  assign celloutsig_0_2z = ~^ { in_data[45:42], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_4z = { in_data[89:86], celloutsig_0_2z } << in_data[37:33];
  assign celloutsig_0_47z = { celloutsig_0_14z, celloutsig_0_25z, celloutsig_0_29z } << celloutsig_0_26z[7:5];
  assign celloutsig_1_2z = { in_data[128:119], celloutsig_1_1z } << { in_data[190:181], celloutsig_1_0z };
  assign celloutsig_1_17z = { in_data[111:110], celloutsig_1_10z } << celloutsig_1_4z[2:0];
  assign celloutsig_0_16z = { celloutsig_0_11z, celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_11z } << { celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_4z };
  assign celloutsig_0_26z = { celloutsig_0_16z[6:3], celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_19z, celloutsig_0_8z } << { celloutsig_0_12z[2:1], celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_21z, celloutsig_0_2z };
  assign celloutsig_0_28z = { celloutsig_0_20z[15:5], celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_22z } << { celloutsig_0_16z, celloutsig_0_16z };
  assign celloutsig_0_35z = { celloutsig_0_13z, _02_ } <<< { celloutsig_0_12z[3:1], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_32z };
  assign celloutsig_1_9z = { celloutsig_1_2z[2:1], celloutsig_1_7z } <<< _03_;
  assign celloutsig_0_20z = { in_data[51:27], celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_17z } <<< { in_data[29:3], celloutsig_0_8z };
  assign celloutsig_0_80z = ~((celloutsig_0_47z[2] & celloutsig_0_52z) | (celloutsig_0_57z & celloutsig_0_38z));
  assign celloutsig_1_5z = ~((celloutsig_1_2z[1] & celloutsig_1_1z) | (celloutsig_1_4z[1] & celloutsig_1_0z));
  assign celloutsig_1_16z = ~((celloutsig_1_10z & celloutsig_1_7z) | (_03_[0] & celloutsig_1_12z));
  assign celloutsig_0_10z = ~((celloutsig_0_9z & celloutsig_0_7z) | (celloutsig_0_9z & celloutsig_0_6z));
  assign celloutsig_0_18z = ~((celloutsig_0_4z[4] & celloutsig_0_0z) | (celloutsig_0_0z & celloutsig_0_14z));
  assign celloutsig_0_29z = ~((celloutsig_0_15z & celloutsig_0_4z[2]) | (celloutsig_0_27z & celloutsig_0_17z));
  assign { _04_[7], _04_[0] } = { _01_, _00_ };
  assign { out_data[147:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_80z, celloutsig_0_81z };
endmodule
