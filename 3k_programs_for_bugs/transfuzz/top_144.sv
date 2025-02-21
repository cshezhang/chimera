/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [8:0] _00_;
  wire celloutsig_0_0z;
  wire [15:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [5:0] celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [17:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [33:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire [8:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [3:0] celloutsig_0_27z;
  wire [5:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [22:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [4:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [7:0] celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_49z;
  wire [5:0] celloutsig_0_4z;
  wire celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire [16:0] celloutsig_0_6z;
  wire [4:0] celloutsig_0_75z;
  wire [3:0] celloutsig_0_76z;
  wire [4:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire [32:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [34:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_44z = celloutsig_0_35z ? celloutsig_0_0z : celloutsig_0_43z[7];
  assign celloutsig_1_7z = celloutsig_1_0z ? celloutsig_1_4z : celloutsig_1_3z;
  assign celloutsig_1_11z = !(celloutsig_1_9z ? celloutsig_1_10z : celloutsig_1_0z);
  assign celloutsig_1_4z = ~celloutsig_1_3z;
  assign celloutsig_0_23z = ~celloutsig_0_20z[32];
  assign celloutsig_0_32z = ~celloutsig_0_20z[20];
  assign celloutsig_0_37z = ~((celloutsig_0_23z | celloutsig_0_5z) & celloutsig_0_30z);
  assign celloutsig_1_2z = ~((celloutsig_1_1z | in_data[190]) & in_data[170]);
  assign celloutsig_0_57z = ~((celloutsig_0_44z | celloutsig_0_45z) & (celloutsig_0_35z | celloutsig_0_3z));
  assign celloutsig_1_3z = celloutsig_1_0z ^ celloutsig_1_2z;
  assign celloutsig_1_9z = ~(celloutsig_1_1z ^ celloutsig_1_5z);
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z[1])
    if (celloutsig_1_19z[1]) _00_ <= 9'h000;
    else _00_ <= { celloutsig_0_28z[5:2], celloutsig_0_7z };
  assign celloutsig_0_75z = { celloutsig_0_30z, celloutsig_0_8z, celloutsig_0_14z, celloutsig_0_8z, celloutsig_0_49z } / { 1'h1, celloutsig_0_18z[10], celloutsig_0_57z, celloutsig_0_32z, celloutsig_0_35z };
  assign celloutsig_0_45z = celloutsig_0_10z[6:0] == celloutsig_0_31z[22:16];
  assign celloutsig_1_6z = { celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_2z } == { celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_0_15z = { celloutsig_0_7z[2:1], celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_12z } == in_data[95:68];
  assign celloutsig_0_26z = { celloutsig_0_10z[1:0], celloutsig_0_18z, celloutsig_0_23z } == { celloutsig_0_9z, celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_23z, celloutsig_0_11z, celloutsig_0_17z, celloutsig_0_25z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_16z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_16z };
  assign celloutsig_0_0z = in_data[15:12] >= in_data[20:17];
  assign celloutsig_0_3z = { in_data[88:82], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z } > { in_data[20:11], celloutsig_0_2z };
  assign celloutsig_1_12z = { in_data[156:155], celloutsig_1_2z, celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_10z } > { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_1_13z = in_data[177:163] > { celloutsig_1_8z[32:25], celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_11z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_1_17z = celloutsig_1_8z[19:9] > { celloutsig_1_15z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_15z, celloutsig_1_14z, celloutsig_1_13z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_10z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_0_14z = celloutsig_0_10z[15:3] || { celloutsig_0_6z[6:1], celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_8z };
  assign celloutsig_0_30z = { celloutsig_0_4z[5], celloutsig_0_19z, celloutsig_0_23z, celloutsig_0_24z } || celloutsig_0_6z[15:4];
  assign celloutsig_0_9z = { celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_6z } < { celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_0_19z = { celloutsig_0_6z[16:2], celloutsig_0_8z } < { celloutsig_0_10z[14:3], celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_8z };
  assign celloutsig_0_2z = { in_data[16:13], celloutsig_0_0z } < { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_33z = { celloutsig_0_10z[6:1], celloutsig_0_1z } < { celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_3z };
  assign celloutsig_1_0z = in_data[149] & ~(in_data[129]);
  assign celloutsig_0_8z = celloutsig_0_7z[0] & ~(celloutsig_0_7z[4]);
  assign celloutsig_0_6z = { celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_2z } % { 1'h1, in_data[39:31], celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_0_13z = celloutsig_0_7z[3:1] % { 1'h1, celloutsig_0_9z, celloutsig_0_9z };
  assign celloutsig_1_18z = { celloutsig_1_9z, celloutsig_1_13z, celloutsig_1_10z } * { celloutsig_1_8z[7:6], celloutsig_1_12z };
  assign celloutsig_0_18z = { celloutsig_0_0z, celloutsig_0_6z } * { celloutsig_0_10z[6:1], celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_17z };
  assign celloutsig_0_20z = { in_data[75:43], celloutsig_0_11z } * { in_data[72:53], celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_1z };
  assign celloutsig_0_12z = - { celloutsig_0_8z, celloutsig_0_7z };
  assign celloutsig_0_36z = { in_data[92:90], celloutsig_0_12z, celloutsig_0_27z, celloutsig_0_5z, celloutsig_0_16z } !== { celloutsig_0_6z[11:2], celloutsig_0_0z, celloutsig_0_23z, celloutsig_0_33z, celloutsig_0_26z, celloutsig_0_17z };
  assign celloutsig_0_5z = { celloutsig_0_4z[4:3], celloutsig_0_2z, celloutsig_0_2z } !== in_data[38:35];
  assign celloutsig_1_5z = in_data[134:112] !== { in_data[160:144], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_1_14z = celloutsig_1_8z[24:10] !== { in_data[103:97], celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_13z, celloutsig_1_5z };
  assign celloutsig_0_11z = in_data[46:23] !== { celloutsig_0_6z[8:3], celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_1z };
  assign celloutsig_0_16z = { celloutsig_0_6z[1], celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_1z } !== { celloutsig_0_10z[10:8], celloutsig_0_0z };
  assign celloutsig_0_17z = { celloutsig_0_10z[7:2], celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_9z } !== { celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_13z, celloutsig_0_5z };
  assign celloutsig_0_38z = ~ { celloutsig_0_4z[5:3], celloutsig_0_16z, celloutsig_0_35z };
  assign celloutsig_0_43z = ~ { celloutsig_0_18z[15:10], celloutsig_0_15z, celloutsig_0_37z };
  assign celloutsig_0_21z = ~ in_data[40:38];
  assign celloutsig_0_27z = ~ celloutsig_0_24z[5:2];
  assign celloutsig_1_15z = celloutsig_1_3z & celloutsig_1_1z;
  assign celloutsig_0_1z = celloutsig_0_0z & in_data[32];
  assign celloutsig_0_25z = celloutsig_0_8z & celloutsig_0_6z[4];
  assign celloutsig_0_49z = | { celloutsig_0_38z, celloutsig_0_31z[4:3] };
  assign celloutsig_1_1z = | { celloutsig_1_0z, in_data[191] };
  assign celloutsig_1_10z = ^ { celloutsig_1_8z[8:5], celloutsig_1_6z };
  assign celloutsig_0_76z = { celloutsig_0_75z[4:2], celloutsig_0_36z } << _00_[7:4];
  assign celloutsig_1_8z = { in_data[169:140], celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z } << { in_data[185:153], celloutsig_1_0z, celloutsig_1_7z };
  assign celloutsig_0_10z = { in_data[78:73], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_0z } << { celloutsig_0_6z[14:1], celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_0_24z = { celloutsig_0_4z[2:1], celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_3z, celloutsig_0_15z } << celloutsig_0_20z[9:1];
  assign celloutsig_0_28z = { celloutsig_0_10z[9:5], celloutsig_0_0z } << celloutsig_0_4z;
  assign celloutsig_0_4z = { in_data[28:27], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z } >>> in_data[18:13];
  assign celloutsig_0_31z = { celloutsig_0_20z[30:9], celloutsig_0_26z } >>> { celloutsig_0_20z[32:13], celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_1z };
  assign celloutsig_0_7z = celloutsig_0_6z[10:6] - { in_data[66:65], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_19z = { in_data[148:140], celloutsig_1_13z, celloutsig_1_15z, celloutsig_1_14z, celloutsig_1_4z, celloutsig_1_15z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_18z, celloutsig_1_6z, celloutsig_1_15z, celloutsig_1_11z, celloutsig_1_2z, celloutsig_1_18z, celloutsig_1_4z, celloutsig_1_18z } - { celloutsig_1_8z[27:13], celloutsig_1_9z, celloutsig_1_15z, celloutsig_1_5z, celloutsig_1_11z, celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_14z, celloutsig_1_5z, celloutsig_1_18z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_18z, celloutsig_1_7z, celloutsig_1_17z };
  assign celloutsig_0_35z = ~((celloutsig_0_26z & celloutsig_0_3z) | (celloutsig_0_0z & celloutsig_0_27z[2]));
  assign { out_data[130:96], out_data[36:32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z[32:1], celloutsig_0_75z, celloutsig_0_76z };
endmodule
