/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [5:0] _00_;
  reg [16:0] _01_;
  wire celloutsig_0_0z;
  wire [13:0] celloutsig_0_10z;
  wire [6:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire [21:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [4:0] celloutsig_0_17z;
  wire [4:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [2:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [5:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [26:0] celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [3:0] celloutsig_0_36z;
  wire celloutsig_0_39z;
  wire [13:0] celloutsig_0_3z;
  wire celloutsig_0_45z;
  wire celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [12:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [2:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire [11:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [13:0] celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [20:0] celloutsig_1_5z;
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
  assign celloutsig_0_9z = ~(in_data[50] & celloutsig_0_5z);
  assign celloutsig_0_25z = ~celloutsig_0_24z[5];
  assign celloutsig_0_45z = ~((celloutsig_0_7z | celloutsig_0_16z) & (celloutsig_0_36z[3] | celloutsig_0_39z));
  assign celloutsig_0_5z = ~((celloutsig_0_2z | in_data[89]) & (celloutsig_0_3z[11] | celloutsig_0_0z));
  assign celloutsig_1_12z = ~((celloutsig_1_5z[15] | celloutsig_1_10z[9]) & (celloutsig_1_5z[18] | celloutsig_1_3z));
  assign celloutsig_0_19z = ~((celloutsig_0_12z | celloutsig_0_18z[1]) & (celloutsig_0_4z[1] | celloutsig_0_8z[1]));
  assign celloutsig_0_21z = ~((celloutsig_0_10z[9] | celloutsig_0_14z) & (celloutsig_0_4z[3] | in_data[92]));
  assign celloutsig_0_26z = ~((celloutsig_0_23z | celloutsig_0_24z[5]) & (celloutsig_0_2z | celloutsig_0_5z));
  assign celloutsig_0_3z = in_data[54:41] + { in_data[10:3], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_1_18z = { celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_10z } + { celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_10z };
  assign celloutsig_0_24z = { _00_[5:1], celloutsig_0_7z } + { celloutsig_0_1z, celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_19z, celloutsig_0_23z, celloutsig_0_2z };
  always_ff @(posedge celloutsig_1_19z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _01_ <= 17'h00000;
    else _01_ <= celloutsig_0_15z[16:0];
  reg [4:0] _14_;
  always_ff @(posedge celloutsig_1_19z[0], posedge clkin_data[0])
    if (clkin_data[0]) _14_ <= 5'h00;
    else _14_ <= { celloutsig_0_6z[6:4], celloutsig_0_7z, celloutsig_0_0z };
  assign _00_[5:1] = _14_;
  assign celloutsig_1_19z = { celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_1z } & { celloutsig_1_9z, celloutsig_1_2z };
  assign celloutsig_0_17z = { celloutsig_0_4z, celloutsig_0_9z } & { celloutsig_0_4z[2:0], celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_0_4z = celloutsig_0_3z[11:8] / { 1'h1, celloutsig_0_3z[1:0], celloutsig_0_1z };
  assign celloutsig_0_1z = { in_data[36:25], celloutsig_0_0z } == in_data[53:41];
  assign celloutsig_0_2z = { in_data[11:9], celloutsig_0_0z } == in_data[44:41];
  assign celloutsig_0_29z = { celloutsig_0_17z[3:0], celloutsig_0_26z } == { celloutsig_0_11z[6:5], celloutsig_0_22z };
  assign celloutsig_0_34z = { celloutsig_0_11z[4], celloutsig_0_22z } || { in_data[64:63], celloutsig_0_33z, celloutsig_0_21z };
  assign celloutsig_0_49z = { celloutsig_0_11z[6], celloutsig_0_45z, celloutsig_0_7z } || { celloutsig_0_15z[16:15], celloutsig_0_25z };
  assign celloutsig_1_4z = { in_data[125:120], celloutsig_1_3z } || { celloutsig_1_0z[2], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_0z = in_data[47:45] < in_data[13:11];
  assign celloutsig_1_2z = { in_data[105:102], celloutsig_1_0z } < { in_data[104:99], celloutsig_1_1z };
  assign celloutsig_1_5z = { in_data[134:116], celloutsig_1_2z, celloutsig_1_2z } % { 1'h1, in_data[172:157], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_0_6z = - in_data[73:61];
  assign celloutsig_1_8z = { in_data[148:120], celloutsig_1_2z } !== in_data[184:155];
  assign celloutsig_0_14z = { celloutsig_0_11z[4:2], _00_[5:1], _00_[5:1], celloutsig_0_5z, celloutsig_0_7z } !== in_data[79:65];
  assign celloutsig_0_11z = ~ { celloutsig_0_10z[11:8], celloutsig_0_8z };
  assign celloutsig_1_0z = in_data[166:164] | in_data[186:184];
  assign celloutsig_0_48z = | { celloutsig_0_4z[2:0], celloutsig_0_26z, celloutsig_0_25z };
  assign celloutsig_1_6z = | { celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_1_7z = | in_data[155:152];
  assign celloutsig_1_11z = | { celloutsig_1_10z[10:2], celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_0z };
  assign celloutsig_0_7z = | { celloutsig_0_3z[8:5], celloutsig_0_1z };
  assign celloutsig_1_3z = ^ { in_data[158:138], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_36z = { _01_[13:12], celloutsig_0_12z, celloutsig_0_34z } >> { celloutsig_0_24z[3:2], celloutsig_0_29z, celloutsig_0_23z };
  assign celloutsig_0_10z = in_data[27:14] >> { celloutsig_0_8z[1:0], celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_8z };
  assign celloutsig_0_22z = celloutsig_0_6z[8:6] << celloutsig_0_15z[15:13];
  assign celloutsig_1_9z = { in_data[113], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_3z } >>> in_data[188:183];
  assign celloutsig_1_10z = { in_data[145:140], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_8z } >>> { in_data[189:179], celloutsig_1_3z };
  assign celloutsig_0_18z = celloutsig_0_11z[6:2] >>> _00_[5:1];
  assign celloutsig_0_31z = { celloutsig_0_15z[15:2], celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_18z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_12z } - { in_data[47:30], celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_11z };
  assign celloutsig_0_8z = celloutsig_0_4z[2:0] - in_data[65:63];
  assign celloutsig_0_15z = { celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_6z } - { _00_[5], celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_12z };
  assign celloutsig_1_1z = ~((in_data[172] & in_data[117]) | in_data[187]);
  assign celloutsig_0_16z = ~((celloutsig_0_12z & celloutsig_0_1z) | celloutsig_0_9z);
  assign celloutsig_0_33z = ~((celloutsig_0_18z[2] & celloutsig_0_12z) | (celloutsig_0_14z & celloutsig_0_4z[2]));
  assign celloutsig_0_39z = ~((celloutsig_0_10z[6] & celloutsig_0_17z[0]) | (celloutsig_0_31z[3] & in_data[15]));
  assign celloutsig_0_12z = ~((celloutsig_0_9z & celloutsig_0_7z) | (celloutsig_0_3z[10] & celloutsig_0_10z[3]));
  assign celloutsig_0_23z = ~((_00_[5] & celloutsig_0_21z) | (celloutsig_0_0z & celloutsig_0_8z[0]));
  assign _00_[0] = celloutsig_0_7z;
  assign { out_data[141:128], out_data[102:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_48z, celloutsig_0_49z };
endmodule
