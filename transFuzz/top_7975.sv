/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] _00_;
  reg [12:0] _01_;
  wire celloutsig_0_0z;
  wire [15:0] celloutsig_0_10z;
  wire [22:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [9:0] celloutsig_0_17z;
  wire [29:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [32:0] celloutsig_0_21z;
  wire [7:0] celloutsig_0_23z;
  wire [24:0] celloutsig_0_24z;
  wire celloutsig_0_29z;
  wire [25:0] celloutsig_0_2z;
  wire [3:0] celloutsig_0_30z;
  wire [4:0] celloutsig_0_31z;
  wire [5:0] celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [2:0] celloutsig_0_3z;
  wire [10:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [43:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [3:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [9:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [17:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [9:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_29z = ~celloutsig_0_0z;
  assign celloutsig_0_20z = ~((celloutsig_0_12z | celloutsig_0_2z[21]) & celloutsig_0_9z[3]);
  assign celloutsig_1_18z = celloutsig_1_8z[7] | celloutsig_1_3z;
  assign celloutsig_0_7z = ~(in_data[43] ^ celloutsig_0_1z);
  always_ff @(negedge celloutsig_1_19z, posedge clkin_data[0])
    if (clkin_data[0]) _00_ <= 3'h0;
    else _00_ <= { celloutsig_0_2z[9:8], celloutsig_0_0z };
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _01_ <= 13'h0000;
    else _01_ <= { in_data[52:41], celloutsig_0_13z };
  assign celloutsig_1_4z = in_data[189:186] & celloutsig_1_2z[4:1];
  assign celloutsig_0_32z = celloutsig_0_23z[5:0] & { celloutsig_0_2z[17:16], celloutsig_0_30z };
  assign celloutsig_1_19z = ! { celloutsig_1_6z[8], celloutsig_1_9z, celloutsig_1_17z, celloutsig_1_3z, celloutsig_1_7z };
  assign celloutsig_1_1z = in_data[155:151] || in_data[179:175];
  assign celloutsig_0_0z = in_data[33:28] < in_data[15:10];
  assign celloutsig_0_38z = { celloutsig_0_17z[8:2], celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_13z } < { celloutsig_0_21z[13], celloutsig_0_14z, celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_20z, celloutsig_0_4z, celloutsig_0_37z, celloutsig_0_7z, celloutsig_0_12z };
  assign celloutsig_0_39z = celloutsig_0_21z[13:1] < { _01_[9:3], celloutsig_0_32z };
  assign celloutsig_1_3z = { celloutsig_1_2z[9:8], celloutsig_1_1z, celloutsig_1_1z } < { celloutsig_1_2z[8:7], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_9z = celloutsig_1_4z[2:0] < celloutsig_1_4z[2:0];
  assign celloutsig_0_5z = celloutsig_0_4z[3:1] < celloutsig_0_2z[16:14];
  assign celloutsig_0_12z = { celloutsig_0_6z[35:30], celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_5z } < { _00_[1:0], celloutsig_0_9z, _00_ };
  assign celloutsig_0_34z = | { celloutsig_0_24z[23:16], celloutsig_0_23z };
  assign celloutsig_0_13z = | celloutsig_0_2z[23:1];
  assign celloutsig_0_14z = | { celloutsig_0_6z[43:32], celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_5z };
  assign celloutsig_0_16z = | in_data[82:77];
  assign celloutsig_1_5z = | celloutsig_1_2z[9:1];
  assign celloutsig_1_10z = | celloutsig_1_2z[9:6];
  assign celloutsig_0_37z = ~^ { _00_, celloutsig_0_34z, celloutsig_0_31z, celloutsig_0_7z };
  assign celloutsig_1_0z = ~^ in_data[110:98];
  assign celloutsig_1_7z = ~^ { celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_1_17z = ~^ { in_data[114:113], celloutsig_1_0z, celloutsig_1_10z, celloutsig_1_10z };
  assign celloutsig_0_1z = ~^ { in_data[18], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_2z = { in_data[79:56], celloutsig_0_1z, celloutsig_0_0z } >> in_data[73:48];
  assign celloutsig_1_2z = { in_data[120:115], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z } << in_data[187:178];
  assign celloutsig_0_19z = { in_data[24:11], celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_3z } << { celloutsig_0_2z[24:1], celloutsig_0_1z, celloutsig_0_15z };
  assign celloutsig_0_21z = { celloutsig_0_19z[13:6], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_4z } << { celloutsig_0_19z[29:3], celloutsig_0_15z, celloutsig_0_16z };
  assign celloutsig_0_23z = { celloutsig_0_10z[9:6], celloutsig_0_9z } << { celloutsig_0_10z[15:12], celloutsig_0_20z, celloutsig_0_0z, celloutsig_0_16z, celloutsig_0_7z };
  assign celloutsig_0_24z = { celloutsig_0_19z[19:0], celloutsig_0_15z } << { celloutsig_0_19z[27:4], celloutsig_0_14z };
  assign celloutsig_0_31z = { celloutsig_0_11z[7:4], 1'h1 } << celloutsig_0_2z[13:9];
  assign celloutsig_1_6z = { in_data[140:139], celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z } >> { in_data[189:175], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_0_6z = { celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_4z } >> { in_data[30:28], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_3z = { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z } - in_data[17:15];
  assign celloutsig_1_8z = celloutsig_1_6z[9:0] ~^ { in_data[178:170], celloutsig_1_0z };
  assign celloutsig_0_9z = { celloutsig_0_3z[2:1], celloutsig_0_1z, celloutsig_0_7z } ~^ { celloutsig_0_4z[8:6], celloutsig_0_5z };
  assign celloutsig_0_10z = { in_data[56:42], celloutsig_0_1z } ~^ { in_data[48:40], celloutsig_0_1z, _00_, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_0_15z = celloutsig_0_2z[7:3] ~^ { celloutsig_0_11z[20], celloutsig_0_12z, _00_ };
  assign celloutsig_0_17z = { _00_, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_16z } ~^ celloutsig_0_6z[34:25];
  assign celloutsig_0_30z = celloutsig_0_23z[7:4] ~^ { celloutsig_0_10z[11:9], celloutsig_0_29z };
  assign celloutsig_0_4z = celloutsig_0_2z[18:8] ^ { celloutsig_0_2z[12:5], celloutsig_0_3z };
  assign { celloutsig_0_11z[0], celloutsig_0_11z[22:4] } = { celloutsig_0_7z, celloutsig_0_2z[21:3] } ~^ { celloutsig_0_1z, celloutsig_0_6z[40:38], celloutsig_0_10z };
  assign celloutsig_0_11z[3:1] = 3'h7;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_38z, celloutsig_0_39z };
endmodule
