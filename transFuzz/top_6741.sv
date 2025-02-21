/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [11:0] _00_;
  wire [12:0] celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [10:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [7:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [5:0] celloutsig_0_1z;
  wire [14:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [4:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [12:0] celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [3:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [3:0] celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire [2:0] celloutsig_0_4z;
  wire celloutsig_0_55z;
  wire [3:0] celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire [2:0] celloutsig_1_12z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [23:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [18:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_3z = celloutsig_1_1z | in_data[106];
  assign celloutsig_1_6z = celloutsig_1_0z | celloutsig_1_5z;
  assign celloutsig_0_6z = in_data[22] | celloutsig_0_3z;
  assign celloutsig_0_8z = celloutsig_0_6z | celloutsig_0_3z;
  always_ff @(negedge celloutsig_1_18z[0], posedge clkin_data[0])
    if (clkin_data[0]) _00_ <= 12'h000;
    else _00_ <= { in_data[55], celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_35z = { celloutsig_0_25z[1:0], celloutsig_0_24z, celloutsig_0_34z } / { 1'h1, celloutsig_0_33z, celloutsig_0_16z, celloutsig_0_30z };
  assign celloutsig_0_3z = celloutsig_0_0z[9:2] == celloutsig_0_0z[8:1];
  assign celloutsig_1_5z = celloutsig_1_4z[11:2] == { in_data[179:171], celloutsig_1_3z };
  assign celloutsig_1_9z = { in_data[184:181], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_7z } == celloutsig_1_8z[8:2];
  assign celloutsig_1_10z = { celloutsig_1_4z[5:0], celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z } == { celloutsig_1_8z[17:9], celloutsig_1_6z };
  assign celloutsig_0_18z = { celloutsig_0_1z[4:1], celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_11z } == { in_data[46:42], celloutsig_0_5z, celloutsig_0_16z };
  assign celloutsig_0_21z = in_data[57:49] == { celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_5z };
  assign celloutsig_0_22z = { celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_19z } == { celloutsig_0_20z[7], celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_11z };
  assign celloutsig_0_23z = { in_data[57:47], celloutsig_0_12z, celloutsig_0_12z } == celloutsig_0_0z;
  assign celloutsig_0_34z = { celloutsig_0_9z[4:2], celloutsig_0_5z, celloutsig_0_19z, celloutsig_0_3z, celloutsig_0_26z, celloutsig_0_32z, celloutsig_0_32z, celloutsig_0_26z } == { in_data[10], celloutsig_0_27z, celloutsig_0_30z, celloutsig_0_11z };
  assign celloutsig_1_0z = in_data[164:156] === in_data[113:105];
  assign celloutsig_0_11z = { _00_[8:4], celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_2z } === { in_data[93], celloutsig_0_1z, celloutsig_0_8z };
  assign celloutsig_0_14z = in_data[93:89] === celloutsig_0_9z;
  assign celloutsig_0_29z = { celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_24z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_23z, celloutsig_0_21z, celloutsig_0_16z } === { celloutsig_0_1z, celloutsig_0_26z, celloutsig_0_23z };
  assign celloutsig_0_55z = { celloutsig_0_15z[4:3], celloutsig_0_22z } >= { celloutsig_0_35z[1:0], celloutsig_0_37z };
  assign celloutsig_0_33z = celloutsig_0_15z[7:2] >= { celloutsig_0_13z[7:3], celloutsig_0_7z };
  assign celloutsig_0_5z = { in_data[38:37], celloutsig_0_3z } > { celloutsig_0_0z[7:6], celloutsig_0_2z };
  assign celloutsig_1_7z = celloutsig_1_4z[18:13] > in_data[154:149];
  assign celloutsig_0_16z = { _00_[8:3], celloutsig_0_4z } > { in_data[36:35], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_2z = { celloutsig_0_1z[5], celloutsig_0_0z } > in_data[64:51];
  assign celloutsig_0_26z = { celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_5z } > { celloutsig_0_16z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_21z, celloutsig_0_7z, celloutsig_0_16z };
  assign celloutsig_0_30z = { celloutsig_0_25z[3:0], celloutsig_0_2z } > { celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_29z, celloutsig_0_7z, celloutsig_0_19z };
  assign celloutsig_0_37z = _00_[9] & ~(celloutsig_0_34z);
  assign celloutsig_1_1z = in_data[108] & ~(in_data[146]);
  assign celloutsig_0_7z = celloutsig_0_4z[0] & ~(celloutsig_0_2z);
  assign celloutsig_0_19z = celloutsig_0_16z & ~(celloutsig_0_15z[4]);
  assign celloutsig_0_0z = in_data[41:29] % { 1'h1, in_data[89:78] };
  assign celloutsig_1_8z = { in_data[159:147], celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_5z } % { 1'h1, in_data[150:137], celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_2z };
  assign celloutsig_0_9z = { celloutsig_0_0z[7:6], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_5z } % { 1'h1, celloutsig_0_0z[5:4], celloutsig_0_8z, celloutsig_0_8z };
  assign celloutsig_0_27z = { _00_, celloutsig_0_24z } % { 1'h1, _00_[9:1], celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_6z };
  assign celloutsig_0_58z = - { celloutsig_0_55z, celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_19z };
  assign celloutsig_0_13z = - celloutsig_0_0z[11:1];
  assign celloutsig_0_15z = - { in_data[51:45], celloutsig_0_2z };
  assign celloutsig_0_20z = - { celloutsig_0_1z[3], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_14z };
  assign celloutsig_0_32z = - celloutsig_0_15z[5:2];
  assign celloutsig_0_59z = ^ in_data[44:33];
  assign celloutsig_1_2z = ^ { in_data[145:142], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_1_19z = ^ { celloutsig_1_11z[3:1], celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_12z = ^ in_data[74:70];
  assign celloutsig_0_24z = ^ { celloutsig_0_20z[9:0], celloutsig_0_3z, celloutsig_0_19z, celloutsig_0_3z };
  assign celloutsig_1_4z = { in_data[179:159], celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_2z } >> { in_data[128:110], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_4z = celloutsig_0_1z[2:0] ^ { celloutsig_0_0z[11], celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_1_11z = { celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_10z, celloutsig_1_9z } ^ { celloutsig_1_4z[10:8], celloutsig_1_0z };
  assign celloutsig_1_12z = celloutsig_1_11z[2:0] ^ { celloutsig_1_1z, celloutsig_1_9z, celloutsig_1_2z };
  assign celloutsig_1_18z = { celloutsig_1_11z[2], celloutsig_1_12z } ^ celloutsig_1_4z[19:16];
  assign celloutsig_0_1z = in_data[33:28] ^ celloutsig_0_0z[12:7];
  assign celloutsig_0_25z = celloutsig_0_9z ^ { celloutsig_0_1z[4:1], celloutsig_0_6z };
  assign { out_data[131:128], out_data[96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_58z, celloutsig_0_59z };
endmodule
