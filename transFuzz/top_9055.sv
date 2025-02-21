/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [63:0] _01_;
  wire [12:0] _02_;
  wire celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  wire [3:0] celloutsig_0_11z;
  wire [17:0] celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [6:0] celloutsig_0_18z;
  wire [10:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [13:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [51:0] celloutsig_0_25z;
  wire [14:0] celloutsig_0_26z;
  wire [4:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [5:0] celloutsig_0_2z;
  wire [11:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [19:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [5:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [3:0] celloutsig_0_37z;
  wire [7:0] celloutsig_0_38z;
  wire [11:0] celloutsig_0_39z;
  wire [11:0] celloutsig_0_3z;
  wire [10:0] celloutsig_0_40z;
  wire [21:0] celloutsig_0_41z;
  wire [26:0] celloutsig_0_42z;
  wire [11:0] celloutsig_0_44z;
  wire [11:0] celloutsig_0_45z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_55z;
  wire [9:0] celloutsig_0_5z;
  wire [12:0] celloutsig_0_64z;
  wire celloutsig_0_6z;
  wire celloutsig_0_71z;
  wire celloutsig_0_76z;
  wire [29:0] celloutsig_0_77z;
  wire celloutsig_0_78z;
  wire [19:0] celloutsig_0_7z;
  wire [3:0] celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [3:0] celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [10:0] celloutsig_1_2z;
  wire [11:0] celloutsig_1_3z;
  wire [18:0] celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [3:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_76z = celloutsig_0_71z | ~(celloutsig_0_18z[4]);
  assign celloutsig_0_15z = celloutsig_0_1z | ~(celloutsig_0_10z[2]);
  assign celloutsig_0_34z = celloutsig_0_15z ^ _00_;
  assign celloutsig_0_36z = celloutsig_0_23z[12] ^ celloutsig_0_30z[7];
  assign celloutsig_0_1z = in_data[3] ^ celloutsig_0_0z;
  assign celloutsig_0_3z = { celloutsig_0_2z[4:1], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z } + { celloutsig_0_2z[1:0], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_40z = celloutsig_0_26z[12:2] + { celloutsig_0_13z[5:4], celloutsig_0_32z, celloutsig_0_14z, celloutsig_0_8z };
  always_ff @(posedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _01_ <= 64'h0000000000000000;
    else _01_ <= { celloutsig_1_3z[5:1], celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_9z };
  reg [12:0] _11_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[64])
    if (!clkin_data[64]) _11_ <= 13'h0000;
    else _11_ <= { in_data[60:55], celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_17z };
  assign { _02_[12], _00_, _02_[10:0] } = _11_;
  assign celloutsig_0_39z = { celloutsig_0_4z, celloutsig_0_38z, celloutsig_0_36z, celloutsig_0_0z, celloutsig_0_21z } & { celloutsig_0_2z[4:0], celloutsig_0_15z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_14z };
  assign celloutsig_0_77z = { celloutsig_0_39z[8:3], celloutsig_0_55z, celloutsig_0_76z, celloutsig_0_41z } & { celloutsig_0_41z[16:0], celloutsig_0_49z, celloutsig_0_44z };
  assign celloutsig_1_2z = { in_data[104:96], celloutsig_1_1z, celloutsig_1_0z } & { in_data[167:161], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_18z = { celloutsig_0_5z[6:3], celloutsig_0_10z } & { celloutsig_0_9z[4:3], celloutsig_0_9z };
  assign celloutsig_0_26z = { celloutsig_0_18z[6:1], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_14z, celloutsig_0_17z, celloutsig_0_0z } & { _02_[9:0], celloutsig_0_21z, celloutsig_0_8z };
  assign celloutsig_0_9z = { celloutsig_0_2z[1:0], celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_6z } / { 1'h1, celloutsig_0_7z[11:9], in_data[0] };
  assign celloutsig_0_25z = { celloutsig_0_19z[7:2], celloutsig_0_6z, celloutsig_0_9z[2], celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_6z } / { 1'h1, celloutsig_0_23z[12:2], celloutsig_0_3z, celloutsig_0_21z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_15z, celloutsig_0_9z[2], celloutsig_0_21z };
  assign celloutsig_1_0z = in_data[171:166] == in_data[112:107];
  assign celloutsig_1_19z = { celloutsig_1_10z, celloutsig_1_11z, celloutsig_1_1z, celloutsig_1_16z, celloutsig_1_7z } == { celloutsig_1_4z[15:5], celloutsig_1_6z };
  assign celloutsig_0_78z = { celloutsig_0_45z[4:0], celloutsig_0_76z } >= celloutsig_0_13z[16:11];
  assign celloutsig_1_16z = celloutsig_1_2z[9:3] >= { celloutsig_1_14z[1], celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_6z };
  assign celloutsig_0_49z = celloutsig_0_19z[8:2] <= { celloutsig_0_42z[15:10], celloutsig_0_15z };
  assign celloutsig_0_55z = ! { celloutsig_0_34z, celloutsig_0_28z, celloutsig_0_14z, celloutsig_0_31z };
  assign celloutsig_0_17z = ! { celloutsig_0_7z[16:12], celloutsig_0_1z, celloutsig_0_7z };
  assign celloutsig_0_32z = celloutsig_0_18z[4:0] || celloutsig_0_2z[5:1];
  assign celloutsig_1_1z = in_data[162:148] || in_data[114:100];
  assign celloutsig_0_6z = { celloutsig_0_3z[10:3], celloutsig_0_4z } < { celloutsig_0_3z[11:4], celloutsig_0_0z };
  assign celloutsig_0_0z = in_data[90] & ~(in_data[81]);
  assign celloutsig_0_71z = celloutsig_0_4z & ~(celloutsig_0_64z[5]);
  assign celloutsig_1_18z = celloutsig_1_2z[1] & ~(celloutsig_1_5z[3]);
  assign celloutsig_0_21z = celloutsig_0_19z[0] & ~(celloutsig_0_9z[2]);
  assign celloutsig_1_4z = { in_data[143:137], celloutsig_1_3z } % { 1'h1, in_data[113:107], celloutsig_1_2z };
  assign celloutsig_0_41z = celloutsig_0_19z[2] ? { celloutsig_0_38z[6:3], celloutsig_0_14z, celloutsig_0_37z, celloutsig_0_5z } : { celloutsig_0_19z[6:3], 1'h0, celloutsig_0_19z[1:0], celloutsig_0_0z, celloutsig_0_40z, celloutsig_0_24z, celloutsig_0_17z, celloutsig_0_32z };
  assign celloutsig_0_44z = celloutsig_0_36z ? { celloutsig_0_42z[18:12], celloutsig_0_14z, celloutsig_0_0z } : { celloutsig_0_42z[25:17], celloutsig_0_9z[2], celloutsig_0_24z, celloutsig_0_4z };
  assign celloutsig_0_8z = celloutsig_0_0z ? in_data[25:22] : celloutsig_0_3z[6:3];
  assign celloutsig_1_3z = in_data[137] ? { celloutsig_1_0z, celloutsig_1_2z } : { celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_5z = in_data[128] ? { celloutsig_1_3z[11:9], celloutsig_1_0z } : in_data[132:129];
  assign celloutsig_1_9z = in_data[149] ? in_data[177:174] : { celloutsig_1_3z[5], celloutsig_1_7z };
  assign celloutsig_0_20z = in_data[22] ? { celloutsig_0_9z[3:0], celloutsig_0_17z } : { celloutsig_0_14z[3], celloutsig_0_8z };
  assign celloutsig_0_28z = celloutsig_0_9z[2] ? celloutsig_0_25z[47:43] : celloutsig_0_3z[7:3];
  assign celloutsig_1_11z = { in_data[136:125], celloutsig_1_7z, celloutsig_1_7z } != in_data[166:149];
  assign celloutsig_0_31z = { celloutsig_0_26z[6:5], celloutsig_0_16z } != { celloutsig_0_15z, celloutsig_0_9z[2], celloutsig_0_10z };
  assign celloutsig_0_37z = ~ celloutsig_0_18z[4:1];
  assign celloutsig_0_5z = ~ celloutsig_0_3z[9:0];
  assign celloutsig_1_10z = ~ celloutsig_1_3z[9:4];
  assign celloutsig_0_30z = ~ in_data[87:76];
  assign celloutsig_0_10z = { celloutsig_0_7z[8:7], celloutsig_0_0z } | { celloutsig_0_9z[4:3], celloutsig_0_1z };
  assign celloutsig_0_13z = { celloutsig_0_8z[3:2], celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_6z } | { celloutsig_0_3z[11:10], celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_9z };
  assign celloutsig_0_4z = & { celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_1_8z = | in_data[141:119];
  assign celloutsig_1_6z = celloutsig_1_4z[18] & celloutsig_1_2z[9];
  assign celloutsig_0_24z = in_data[85] & celloutsig_0_6z;
  assign celloutsig_0_29z = celloutsig_0_9z[2] & celloutsig_0_23z[5];
  assign celloutsig_0_42z = { celloutsig_0_18z[1], celloutsig_0_35z, celloutsig_0_33z } >> { celloutsig_0_41z[13:2], celloutsig_0_20z, celloutsig_0_8z, celloutsig_0_29z, celloutsig_0_14z, celloutsig_0_32z };
  assign celloutsig_0_19z = { celloutsig_0_18z[4:0], celloutsig_0_2z } >> { celloutsig_0_3z[11:7], celloutsig_0_2z };
  assign celloutsig_0_33z = { celloutsig_0_19z[8:3], celloutsig_0_32z, _02_[12], _00_, _02_[10:0] } << { _02_[10:1], celloutsig_0_2z, celloutsig_0_11z };
  assign celloutsig_0_14z = celloutsig_0_9z[4:1] << { celloutsig_0_6z, celloutsig_0_10z };
  assign celloutsig_0_23z = { _00_, _02_[10:4], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_11z } << celloutsig_0_13z[15:2];
  assign celloutsig_0_38z = { celloutsig_0_2z[4:2], celloutsig_0_9z } - { celloutsig_0_23z[5], celloutsig_0_18z };
  assign celloutsig_0_11z = in_data[49:46] - celloutsig_0_8z;
  assign celloutsig_0_2z = { in_data[55], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z } - in_data[29:24];
  assign celloutsig_0_16z = celloutsig_0_3z[7:5] ~^ celloutsig_0_11z[2:0];
  assign celloutsig_0_35z = { in_data[23:19], celloutsig_0_17z } ^ { celloutsig_0_5z[9:5], celloutsig_0_21z };
  assign celloutsig_0_45z = { celloutsig_0_40z[8:1], celloutsig_0_17z, celloutsig_0_31z, celloutsig_0_1z, celloutsig_0_17z } ^ celloutsig_0_3z;
  assign celloutsig_0_7z = { in_data[43:39], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z } ^ in_data[45:26];
  assign celloutsig_0_64z = { celloutsig_0_41z[18:17], celloutsig_0_5z, celloutsig_0_32z } ^ celloutsig_0_26z[14:2];
  assign celloutsig_1_7z = { celloutsig_1_3z[10:9], celloutsig_1_6z } ^ { celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_14z = _01_[15:12] ^ { celloutsig_1_7z[2:1], celloutsig_1_6z, celloutsig_1_11z };
  assign _02_[11] = _00_;
  assign { out_data[128], out_data[96], out_data[61:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_77z, celloutsig_0_78z };
endmodule
