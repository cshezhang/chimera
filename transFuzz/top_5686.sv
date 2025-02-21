/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [10:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [2:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_23z;
  reg [10:0] celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_36z;
  wire celloutsig_0_39z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [17:0] celloutsig_0_4z;
  wire [13:0] celloutsig_0_6z;
  wire [19:0] celloutsig_0_7z;
  wire [2:0] celloutsig_0_8z;
  wire [6:0] celloutsig_0_9z;
  wire [13:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [5:0] celloutsig_1_11z;
  wire [6:0] celloutsig_1_12z;
  wire [9:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_17z;
  wire [5:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [5:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [11:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [8:0] _00_;
  always_latch
    if (!clkin_data[64]) _00_ = 9'h000;
    else if (clkin_data[32]) _00_ = { celloutsig_1_7z[1], celloutsig_1_5z, celloutsig_1_10z, celloutsig_1_10z, celloutsig_1_3z[5:1] };
  assign celloutsig_1_13z[9:1] = _00_;
  assign celloutsig_0_1z = ~(celloutsig_0_0z[4] | celloutsig_0_0z[6]);
  assign celloutsig_0_17z = ~(celloutsig_0_2z | celloutsig_0_14z);
  assign celloutsig_0_40z = ~((celloutsig_0_1z | in_data[28]) & (celloutsig_0_24z[2] | celloutsig_0_0z[7]));
  assign celloutsig_1_17z = ~((celloutsig_1_3z[2] | celloutsig_1_0z[8]) & (celloutsig_1_14z | celloutsig_1_7z[9]));
  assign celloutsig_0_28z = ~((celloutsig_0_13z | celloutsig_0_15z) & (celloutsig_0_2z | celloutsig_0_2z));
  assign celloutsig_0_30z = ~((celloutsig_0_13z | celloutsig_0_13z) & (celloutsig_0_28z | celloutsig_0_12z));
  assign celloutsig_1_1z = celloutsig_1_0z[7] | in_data[155];
  assign celloutsig_0_18z = celloutsig_0_2z | in_data[82];
  assign celloutsig_0_27z = celloutsig_0_10z | celloutsig_0_1z;
  assign celloutsig_0_11z = celloutsig_0_7z[17] ^ celloutsig_0_0z[10];
  assign celloutsig_1_18z = { celloutsig_1_0z[3:0], celloutsig_1_10z, celloutsig_1_8z } & { celloutsig_1_13z[9:5], celloutsig_1_14z };
  assign celloutsig_1_7z = { in_data[164:160], celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_5z } / { 1'h1, celloutsig_1_0z[12:4], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_29z = { in_data[47:37], celloutsig_0_26z, celloutsig_0_16z } >= { celloutsig_0_21z, celloutsig_0_27z, celloutsig_0_0z };
  assign celloutsig_0_10z = celloutsig_0_7z[18:0] > { celloutsig_0_4z[11:1], celloutsig_0_9z, celloutsig_0_2z };
  assign celloutsig_0_20z = { celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_18z } > { celloutsig_0_12z, celloutsig_0_0z };
  assign celloutsig_1_8z = { celloutsig_1_6z, celloutsig_1_0z } <= { in_data[116:111], celloutsig_1_3z[5:1], 1'h0, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_6z };
  assign celloutsig_1_14z = { celloutsig_1_3z[3:2], celloutsig_1_8z, celloutsig_1_10z } <= celloutsig_1_11z[5:2];
  assign celloutsig_1_2z = { celloutsig_1_0z[6:4], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z } || { in_data[156:139], celloutsig_1_1z };
  assign celloutsig_1_6z = { in_data[110:101], celloutsig_1_3z[5:1], celloutsig_1_2z } || { celloutsig_1_0z[13:8], celloutsig_1_4z, celloutsig_1_3z[5:1], celloutsig_1_5z };
  assign celloutsig_0_12z = celloutsig_0_9z || { celloutsig_0_7z[7:3], celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_13z = { celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z } || { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_10z };
  assign celloutsig_0_14z = { in_data[57:47], celloutsig_0_2z } || celloutsig_0_6z[12:1];
  assign celloutsig_0_21z = celloutsig_0_19z || in_data[22:20];
  assign celloutsig_0_4z = { in_data[31:30], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_2z } * { celloutsig_0_0z[10:6], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_1_11z = { celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_10z } * { celloutsig_1_7z[10:8], celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_19z = celloutsig_0_4z[7:5] * { 1'h1, celloutsig_0_18z, celloutsig_0_13z };
  assign celloutsig_0_7z = - { celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_6z[13:1], 1'h1, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_8z = - { celloutsig_0_0z[4:3], celloutsig_0_2z };
  assign celloutsig_0_41z = { celloutsig_0_26z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_28z, celloutsig_0_29z, celloutsig_0_39z, celloutsig_0_23z, celloutsig_0_30z } !== celloutsig_0_7z[19:2];
  assign celloutsig_0_15z = { celloutsig_0_6z[8:1], 1'h1, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_13z } !== celloutsig_0_4z;
  assign celloutsig_0_16z = { celloutsig_0_0z[5:4], celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_8z } !== { celloutsig_0_4z[9:6], celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_11z };
  assign celloutsig_0_23z = celloutsig_0_7z[18:3] !== { celloutsig_0_7z[16:10], celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_2z };
  assign celloutsig_0_26z = in_data[92:81] !== { celloutsig_0_6z[10:4], celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_11z };
  assign celloutsig_1_10z = | celloutsig_1_3z[4:2];
  assign celloutsig_0_2z = | { celloutsig_0_1z, celloutsig_0_0z[6:2] };
  assign celloutsig_0_39z = ~^ { celloutsig_0_36z, celloutsig_0_29z, celloutsig_0_36z, celloutsig_0_21z, celloutsig_0_28z, celloutsig_0_27z, celloutsig_0_21z, celloutsig_0_20z, celloutsig_0_27z };
  assign celloutsig_1_5z = ~^ celloutsig_1_4z;
  assign celloutsig_1_19z = ~^ { celloutsig_1_12z[4:2], celloutsig_1_17z, celloutsig_1_4z, celloutsig_1_6z };
  assign celloutsig_1_0z = in_data[137:124] <<< in_data[120:107];
  assign celloutsig_0_0z = in_data[67:57] ~^ in_data[81:71];
  assign celloutsig_1_12z = celloutsig_1_7z[7:1] ~^ { celloutsig_1_1z, celloutsig_1_11z };
  assign celloutsig_0_9z = in_data[27:21] ~^ celloutsig_0_7z[19:13];
  always_latch
    if (celloutsig_1_19z) celloutsig_0_24z = 11'h000;
    else if (clkin_data[0]) celloutsig_0_24z = { celloutsig_0_6z[13:6], celloutsig_0_15z, celloutsig_0_23z, celloutsig_0_21z };
  assign celloutsig_0_36z = ~((celloutsig_0_26z & celloutsig_0_29z) | (in_data[64] & celloutsig_0_13z));
  assign celloutsig_1_4z[0] = ~ celloutsig_1_3z[2];
  assign celloutsig_0_6z[13:1] = in_data[57:45] ~^ in_data[36:24];
  assign { celloutsig_1_3z[1], celloutsig_1_3z[2], celloutsig_1_3z[5:3] } = { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z[7:5] } ^ { celloutsig_1_1z, in_data[159], in_data[162:160] };
  assign celloutsig_1_4z[3:1] = celloutsig_1_3z[5:3] ~^ celloutsig_1_3z[3:1];
  assign celloutsig_0_6z[0] = 1'h1;
  assign celloutsig_1_13z[0] = 1'h0;
  assign celloutsig_1_3z[0] = 1'h0;
  assign { out_data[133:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_40z, celloutsig_0_41z };
endmodule
