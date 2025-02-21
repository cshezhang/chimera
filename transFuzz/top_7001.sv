/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire [3:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [11:0] celloutsig_0_19z;
  wire [6:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [15:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [18:0] celloutsig_0_29z;
  wire [7:0] celloutsig_0_2z;
  wire celloutsig_0_33z;
  wire [15:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [3:0] celloutsig_0_37z;
  wire [20:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [8:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_43z;
  wire [19:0] celloutsig_0_44z;
  wire celloutsig_0_4z;
  reg [2:0] celloutsig_0_53z;
  wire [2:0] celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire [3:0] celloutsig_0_5z;
  wire celloutsig_0_62z;
  wire celloutsig_0_69z;
  wire celloutsig_0_70z;
  wire celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [6:0] celloutsig_1_0z;
  wire [3:0] celloutsig_1_10z;
  wire [2:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [8:0] celloutsig_1_13z;
  wire [9:0] celloutsig_1_14z;
  wire [11:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [34:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [5:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [19:0] _00_;
  always_latch
    if (clkin_data[0]) _00_ = 20'h00000;
    else if (celloutsig_1_18z) _00_ = { in_data[4:0], celloutsig_0_28z, celloutsig_0_2z[7:1], celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_35z };
  assign { celloutsig_0_39z[20:8], celloutsig_0_39z[6:0] } = _00_;
  assign celloutsig_0_41z = celloutsig_0_40z[0] ? celloutsig_0_2z[6] : celloutsig_0_29z[8];
  assign celloutsig_0_13z = celloutsig_0_9z ? celloutsig_0_5z[1] : celloutsig_0_8z[2];
  assign celloutsig_0_16z = celloutsig_0_13z ? celloutsig_0_9z : celloutsig_0_5z[3];
  assign celloutsig_0_43z = ~celloutsig_0_34z[3];
  assign celloutsig_0_57z = ~celloutsig_0_4z;
  assign celloutsig_1_6z = ~celloutsig_1_0z[0];
  assign celloutsig_0_3z = ~celloutsig_0_0z;
  assign celloutsig_0_4z = celloutsig_0_0z | in_data[81];
  assign celloutsig_0_33z = celloutsig_0_11z[2] | celloutsig_0_3z;
  assign celloutsig_0_5z = in_data[68:65] & { in_data[10], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_1_16z = { celloutsig_1_14z[8:7], celloutsig_1_10z, celloutsig_1_11z, celloutsig_1_2z, celloutsig_1_12z, celloutsig_1_2z } & { celloutsig_1_4z, celloutsig_1_14z, celloutsig_1_4z };
  assign celloutsig_0_34z = { celloutsig_0_29z[13:7], celloutsig_0_13z, celloutsig_0_2z[7:1], 1'h0 } / { 1'h1, celloutsig_0_20z, celloutsig_0_33z, celloutsig_0_15z, celloutsig_0_8z };
  assign celloutsig_0_10z = { celloutsig_0_8z[2:0], celloutsig_0_0z } / { 1'h1, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_27z = { in_data[13:4], celloutsig_0_11z, celloutsig_0_14z, celloutsig_0_18z } / { 1'h1, in_data[14:0] };
  assign celloutsig_1_1z = in_data[190:185] >= celloutsig_1_0z[5:0];
  assign celloutsig_1_2z = celloutsig_1_0z[5:1] >= { in_data[104:101], celloutsig_1_1z };
  assign celloutsig_0_9z = { in_data[75:69], celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_3z } >= { celloutsig_0_2z[7:5], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_1_12z = { in_data[112], celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_2z } >= { celloutsig_1_10z, celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_1_18z = celloutsig_1_0z >= celloutsig_1_16z[6:0];
  assign celloutsig_0_70z = celloutsig_0_44z[15:13] <= { celloutsig_0_11z[1], celloutsig_0_62z, celloutsig_0_62z };
  assign celloutsig_1_3z = in_data[162:154] <= in_data[190:182];
  assign celloutsig_1_8z = { in_data[97:96], celloutsig_1_2z, celloutsig_1_4z } <= { celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_3z };
  assign celloutsig_0_12z = { celloutsig_0_2z[6:2], celloutsig_0_7z } <= { celloutsig_0_2z[4:1], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_21z = { celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_3z } <= { celloutsig_0_19z[8:6], celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_7z };
  assign celloutsig_0_28z = { celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_23z, celloutsig_0_3z, celloutsig_0_16z } <= { celloutsig_0_8z[5:2], celloutsig_0_23z, celloutsig_0_24z, celloutsig_0_3z };
  assign celloutsig_0_15z = { celloutsig_0_11z[3:1], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_0z } && { celloutsig_0_2z[5:1], celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_1_4z = { celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z } < { in_data[163:159], celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_56z = celloutsig_0_37z[3] ? { celloutsig_0_44z[14], celloutsig_0_43z, celloutsig_0_21z } : { celloutsig_0_2z[3:2], celloutsig_0_12z };
  assign celloutsig_0_29z = celloutsig_0_5z[2] ? { celloutsig_0_27z[15:3], celloutsig_0_25z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_18z } : { celloutsig_0_25z, celloutsig_0_24z, celloutsig_0_27z, celloutsig_0_21z };
  assign celloutsig_0_40z = - celloutsig_0_29z[17:9];
  assign celloutsig_1_11z = - celloutsig_1_0z[3:1];
  assign celloutsig_1_5z = { in_data[125:114], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z } | in_data[187:153];
  assign celloutsig_1_10z = celloutsig_1_5z[6:3] | celloutsig_1_5z[31:28];
  assign celloutsig_1_19z = celloutsig_1_16z[6:2] | { celloutsig_1_13z[7:6], celloutsig_1_7z, celloutsig_1_12z, celloutsig_1_2z };
  assign celloutsig_0_19z = { celloutsig_0_8z[5:2], celloutsig_0_17z, celloutsig_0_18z, celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_0z } | { in_data[46:37], celloutsig_0_3z, celloutsig_0_14z };
  assign celloutsig_0_7z = & in_data[53:47];
  assign celloutsig_0_23z = & { celloutsig_0_21z, celloutsig_0_2z[4:2] };
  assign celloutsig_0_0z = | in_data[80:74];
  assign celloutsig_0_35z = | { celloutsig_0_28z, celloutsig_0_33z, celloutsig_0_4z };
  assign celloutsig_0_14z = | { celloutsig_0_11z[3:2], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_12z };
  assign celloutsig_0_22z = | { celloutsig_0_9z, celloutsig_0_10z };
  assign celloutsig_0_25z = | { celloutsig_0_8z[4:0], celloutsig_0_14z, celloutsig_0_15z };
  assign celloutsig_0_24z = celloutsig_0_22z & in_data[61];
  assign celloutsig_0_37z = { celloutsig_0_13z, celloutsig_0_28z, celloutsig_0_16z, celloutsig_0_16z } >> in_data[57:54];
  assign celloutsig_1_9z = celloutsig_1_0z[5:0] >> { in_data[155:151], celloutsig_1_8z };
  assign celloutsig_0_44z = { celloutsig_0_39z[8], 1'h0, celloutsig_0_39z[6:1], celloutsig_0_23z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_40z } - { celloutsig_0_27z[14:1], celloutsig_0_7z, celloutsig_0_41z, celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_24z, celloutsig_0_3z };
  assign celloutsig_1_0z = in_data[121:115] - in_data[145:139];
  assign celloutsig_0_8z = { 1'h0, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z } - { celloutsig_0_2z[5], celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_0_20z = in_data[80:74] - { celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_12z };
  assign celloutsig_1_14z = celloutsig_1_5z[21:12] ~^ { celloutsig_1_10z[3:1], celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_12z, celloutsig_1_8z, celloutsig_1_2z };
  assign celloutsig_1_13z = { celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_0z } ^ { celloutsig_1_5z[7:5], celloutsig_1_7z, celloutsig_1_10z, celloutsig_1_4z };
  assign celloutsig_0_11z = celloutsig_0_10z ^ in_data[83:80];
  assign celloutsig_0_62z = ~((celloutsig_0_53z[1] & celloutsig_0_22z) | celloutsig_0_56z[0]);
  assign celloutsig_1_7z = ~((celloutsig_1_6z & celloutsig_1_3z) | celloutsig_1_0z[0]);
  always_latch
    if (!clkin_data[0]) celloutsig_0_53z = 3'h0;
    else if (!celloutsig_1_18z) celloutsig_0_53z = celloutsig_0_8z[5:3];
  assign celloutsig_0_69z = ~((celloutsig_0_57z & celloutsig_0_10z[1]) | (celloutsig_0_22z & celloutsig_0_0z));
  assign celloutsig_0_17z = ~((celloutsig_0_10z[0] & celloutsig_0_10z[1]) | (celloutsig_0_7z & celloutsig_0_5z[0]));
  assign celloutsig_0_18z = ~((celloutsig_0_4z & celloutsig_0_7z) | (celloutsig_0_12z & celloutsig_0_8z[1]));
  assign celloutsig_0_2z[7:1] = in_data[42:36] ^ { in_data[24:19], celloutsig_0_0z };
  assign celloutsig_0_2z[0] = 1'h0;
  assign celloutsig_0_39z[7] = 1'h0;
  assign { out_data[128], out_data[100:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule
