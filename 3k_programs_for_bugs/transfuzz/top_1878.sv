/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [16:0] celloutsig_0_0z;
  wire [4:0] celloutsig_0_10z;
  wire [10:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [20:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [16:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [8:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [4:0] celloutsig_0_31z;
  wire [25:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [2:0] celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire [3:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [3:0] celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire [13:0] celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire [2:0] celloutsig_0_5z;
  wire [12:0] celloutsig_0_63z;
  wire celloutsig_0_65z;
  wire [21:0] celloutsig_0_66z;
  wire celloutsig_0_6z;
  wire celloutsig_0_73z;
  wire celloutsig_0_77z;
  reg [3:0] celloutsig_0_78z;
  wire [23:0] celloutsig_0_7z;
  wire [3:0] celloutsig_0_85z;
  wire [12:0] celloutsig_0_8z;
  wire [2:0] celloutsig_0_97z;
  wire celloutsig_0_98z;
  wire [14:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  reg [26:0] celloutsig_1_11z;
  wire celloutsig_1_14z;
  wire [10:0] celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire [10:0] celloutsig_1_19z;
  wire [13:0] celloutsig_1_1z;
  wire [16:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire [8:0] celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [8:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_77z = ~(celloutsig_0_53z & celloutsig_0_35z[2]);
  assign celloutsig_0_14z = ~(celloutsig_0_11z[6] & celloutsig_0_8z[12]);
  assign celloutsig_0_12z = !(celloutsig_0_0z[13] ? celloutsig_0_8z[1] : celloutsig_0_11z[0]);
  assign celloutsig_0_3z = !(in_data[88] ? celloutsig_0_2z : in_data[40]);
  assign celloutsig_0_48z = ~(celloutsig_0_0z[15] | celloutsig_0_20z);
  assign celloutsig_0_53z = ~(celloutsig_0_4z | celloutsig_0_39z);
  assign celloutsig_1_0z = ~(in_data[144] | in_data[174]);
  assign celloutsig_0_22z = ~(celloutsig_0_2z | celloutsig_0_0z[16]);
  assign celloutsig_0_25z = ~(celloutsig_0_10z[4] | celloutsig_0_10z[1]);
  assign celloutsig_0_30z = ~(celloutsig_0_13z[6] | celloutsig_0_20z);
  assign celloutsig_0_6z = ~((celloutsig_0_3z | celloutsig_0_5z[1]) & celloutsig_0_1z);
  assign celloutsig_0_34z = ~((celloutsig_0_19z | celloutsig_0_21z) & (celloutsig_0_33z | celloutsig_0_10z[4]));
  assign celloutsig_0_39z = ~((celloutsig_0_24z | celloutsig_0_32z[10]) & (in_data[21] | celloutsig_0_33z));
  assign celloutsig_1_3z = ~((celloutsig_1_2z[14] | celloutsig_1_1z[0]) & (in_data[163] | in_data[115]));
  assign celloutsig_0_10z = celloutsig_0_9z[7:3] + { celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_1z };
  assign celloutsig_0_28z = { in_data[51:46], celloutsig_0_20z, celloutsig_0_17z, celloutsig_0_19z } + { celloutsig_0_9z[8:3], celloutsig_0_4z, celloutsig_0_18z, celloutsig_0_3z };
  assign celloutsig_0_4z = celloutsig_0_0z[16:10] === in_data[10:4];
  assign celloutsig_0_44z = { celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_24z } === in_data[70:48];
  assign celloutsig_0_46z = celloutsig_0_7z[21:11] === celloutsig_0_13z[16:6];
  assign celloutsig_0_26z = { celloutsig_0_7z[13:6], celloutsig_0_18z, celloutsig_0_21z } === { in_data[94:92], celloutsig_0_3z, celloutsig_0_22z, celloutsig_0_10z };
  assign celloutsig_0_98z = { celloutsig_0_13z[19:0], celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_85z, celloutsig_0_20z } > { celloutsig_0_78z[3:1], celloutsig_0_66z, celloutsig_0_65z, celloutsig_0_17z };
  assign celloutsig_0_19z = { celloutsig_0_16z[5:2], celloutsig_0_4z, celloutsig_0_12z } > celloutsig_0_13z[9:4];
  assign celloutsig_0_65z = celloutsig_0_63z[12:6] <= { in_data[68:63], celloutsig_0_39z };
  assign celloutsig_1_10z = { celloutsig_1_5z[2:0], celloutsig_1_8z, celloutsig_1_5z } <= { celloutsig_1_6z[6:3], celloutsig_1_5z };
  assign celloutsig_0_18z = celloutsig_0_9z[14:1] <= celloutsig_0_16z[13:0];
  assign celloutsig_0_1z = in_data[5] & ~(in_data[19]);
  assign celloutsig_0_5z = { celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_1z } % { 1'h1, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_63z = { celloutsig_0_55z, celloutsig_0_6z, celloutsig_0_18z, celloutsig_0_45z, celloutsig_0_42z, celloutsig_0_46z, celloutsig_0_55z, celloutsig_0_19z, celloutsig_0_10z } % { 1'h1, celloutsig_0_7z[11:0] };
  assign celloutsig_0_7z = { in_data[51:30], celloutsig_0_4z, celloutsig_0_2z } % { 1'h1, in_data[33:31], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_1_2z = in_data[191:175] % { 1'h1, in_data[114:99] };
  assign celloutsig_1_5z = { in_data[127], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_4z } % { 1'h1, in_data[172:170] };
  assign celloutsig_1_9z = celloutsig_1_6z % { 1'h1, celloutsig_1_1z[6:0], celloutsig_1_0z };
  assign celloutsig_0_11z = celloutsig_0_0z[12:2] % { 1'h1, celloutsig_0_7z[11:2] };
  assign celloutsig_0_16z = celloutsig_0_0z % { 1'h1, celloutsig_0_6z, celloutsig_0_9z };
  assign celloutsig_0_32z = { in_data[91:70], celloutsig_0_18z, celloutsig_0_22z, celloutsig_0_21z, celloutsig_0_20z } % { 1'h1, celloutsig_0_13z[10], celloutsig_0_19z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_8z };
  assign celloutsig_0_52z = { celloutsig_0_11z[4:3], celloutsig_0_34z, celloutsig_0_3z } % { 1'h1, celloutsig_0_11z[6:4] };
  assign celloutsig_0_35z = celloutsig_0_15z ? celloutsig_0_8z[3:1] : { celloutsig_0_13z[5], celloutsig_0_17z, celloutsig_0_26z };
  assign celloutsig_0_13z = celloutsig_0_9z[10] ? celloutsig_0_7z[20:0] : { celloutsig_0_7z[18:1], celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_18z = { celloutsig_1_5z[3:1], celloutsig_1_3z } !== { celloutsig_1_7z[2:1], celloutsig_1_10z, celloutsig_1_14z };
  assign celloutsig_0_38z = ~ celloutsig_0_16z[15:12];
  assign celloutsig_0_66z = ~ { celloutsig_0_32z[16:13], celloutsig_0_30z, celloutsig_0_22z, celloutsig_0_48z, celloutsig_0_34z, celloutsig_0_54z };
  assign celloutsig_0_8z = ~ { celloutsig_0_7z[13:2], celloutsig_0_2z };
  assign celloutsig_0_54z = { celloutsig_0_0z[13:4], celloutsig_0_38z } | { celloutsig_0_11z[10:2], celloutsig_0_4z, celloutsig_0_33z, celloutsig_0_35z };
  assign celloutsig_1_7z = { celloutsig_1_1z[11:10], celloutsig_1_4z } | { celloutsig_1_6z[6:5], celloutsig_1_3z };
  assign celloutsig_0_55z = & { celloutsig_0_53z, celloutsig_0_50z, celloutsig_0_37z, celloutsig_0_27z, celloutsig_0_26z, celloutsig_0_20z, celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_0z[14:5] };
  assign celloutsig_0_73z = & celloutsig_0_13z[4:0];
  assign celloutsig_1_4z = & celloutsig_1_2z[8:5];
  assign celloutsig_0_21z = & celloutsig_0_7z[10:1];
  assign celloutsig_0_2z = & in_data[84:74];
  assign celloutsig_0_24z = & { celloutsig_0_8z[12:11], celloutsig_0_3z };
  assign celloutsig_0_37z = | { celloutsig_0_32z, celloutsig_0_31z, celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_15z, celloutsig_0_11z[5], celloutsig_0_10z[4:2], celloutsig_0_9z[9:0] };
  assign celloutsig_0_45z = | { celloutsig_0_44z, celloutsig_0_28z[7:5], celloutsig_0_6z };
  assign celloutsig_1_14z = | { celloutsig_1_10z, celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_0_17z = | celloutsig_0_9z[9:0];
  assign celloutsig_0_20z = | { celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_13z[14:7] };
  assign celloutsig_0_33z = | { celloutsig_0_32z, celloutsig_0_31z, celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_15z, celloutsig_0_11z[5], celloutsig_0_9z[9:0] };
  assign celloutsig_0_50z = ~^ celloutsig_0_8z[3:0];
  assign celloutsig_1_8z = ~^ celloutsig_1_2z[11:1];
  assign celloutsig_0_15z = ~^ celloutsig_0_0z[10:8];
  assign celloutsig_0_0z = in_data[26:10] >> in_data[49:33];
  assign celloutsig_0_9z = { celloutsig_0_8z[11:4], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_3z } >> celloutsig_0_0z[14:0];
  assign celloutsig_1_6z = { celloutsig_1_1z[11:4], celloutsig_1_4z } >> { in_data[109:108], celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_1_15z = in_data[132:122] >> { celloutsig_1_9z[8], celloutsig_1_6z, celloutsig_1_8z };
  assign celloutsig_0_97z = celloutsig_0_13z[2:0] >>> { celloutsig_0_38z[2:1], celloutsig_0_34z };
  assign celloutsig_1_1z = { in_data[127:115], celloutsig_1_0z } >>> in_data[174:161];
  assign celloutsig_0_31z = celloutsig_0_8z[7:3] >>> { celloutsig_0_10z[3:0], celloutsig_0_24z };
  assign celloutsig_0_85z = { celloutsig_0_10z[3:2], celloutsig_0_73z, celloutsig_0_42z } - celloutsig_0_52z;
  assign celloutsig_1_19z = { celloutsig_1_15z[7:0], celloutsig_1_7z } - { celloutsig_1_11z[13:4], celloutsig_1_8z };
  assign celloutsig_0_42z = ~((celloutsig_0_30z & celloutsig_0_13z[10]) | celloutsig_0_14z);
  assign celloutsig_0_27z = ~((celloutsig_0_24z & celloutsig_0_18z) | celloutsig_0_26z);
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_78z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_78z = { celloutsig_0_50z, celloutsig_0_22z, celloutsig_0_77z, celloutsig_0_34z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_11z = 27'h0000000;
    else if (clkin_data[32]) celloutsig_1_11z = { celloutsig_1_7z[2], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_1z };
  assign { out_data[128], out_data[106:96], out_data[34:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_97z, celloutsig_0_98z };
endmodule
