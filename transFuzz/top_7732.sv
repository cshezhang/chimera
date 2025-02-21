/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [12:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [4:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [11:0] celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [12:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  reg [8:0] celloutsig_0_20z;
  wire [12:0] celloutsig_0_21z;
  wire [10:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [9:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  reg [6:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  reg [6:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  reg [20:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [12:0] celloutsig_0_37z;
  wire [3:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [8:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [17:0] celloutsig_0_41z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_47z;
  wire [10:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [4:0] celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire [3:0] celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire celloutsig_0_56z;
  wire [14:0] celloutsig_0_57z;
  wire [10:0] celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_64z;
  wire [10:0] celloutsig_0_66z;
  wire [8:0] celloutsig_0_67z;
  wire celloutsig_0_69z;
  wire [9:0] celloutsig_0_6z;
  wire [3:0] celloutsig_0_71z;
  wire celloutsig_0_76z;
  wire [14:0] celloutsig_0_7z;
  wire [15:0] celloutsig_0_80z;
  wire celloutsig_0_83z;
  wire celloutsig_0_86z;
  wire [8:0] celloutsig_0_89z;
  wire celloutsig_0_8z;
  wire [2:0] celloutsig_0_93z;
  wire celloutsig_0_94z;
  wire [9:0] celloutsig_0_9z;
  wire [17:0] celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [9:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [7:0] celloutsig_1_3z;
  wire [12:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_47z = ~(celloutsig_0_27z[5] & celloutsig_0_19z);
  assign celloutsig_0_56z = ~(celloutsig_0_45z & celloutsig_0_50z[4]);
  assign celloutsig_1_2z = ~(celloutsig_1_1z[2] & in_data[148]);
  assign celloutsig_1_16z = ~(celloutsig_1_8z & celloutsig_1_8z);
  assign celloutsig_0_2z = ~(celloutsig_0_1z & in_data[18]);
  assign celloutsig_0_51z = !(celloutsig_0_38z[1] ? celloutsig_0_36z : celloutsig_0_10z);
  assign celloutsig_0_59z = !(celloutsig_0_44z ? celloutsig_0_31z[6] : celloutsig_0_23z);
  assign celloutsig_0_69z = !(celloutsig_0_25z ? celloutsig_0_67z[5] : celloutsig_0_57z[10]);
  assign celloutsig_1_8z = !(celloutsig_1_3z[6] ? celloutsig_1_2z : celloutsig_1_6z);
  assign celloutsig_0_26z = !(celloutsig_0_8z ? celloutsig_0_0z[10] : celloutsig_0_5z);
  assign celloutsig_0_28z = !(celloutsig_0_3z[5] ? celloutsig_0_17z[12] : celloutsig_0_8z);
  assign celloutsig_0_30z = !(celloutsig_0_20z[3] ? celloutsig_0_25z : celloutsig_0_7z[3]);
  assign celloutsig_0_64z = ~(celloutsig_0_9z[4] | celloutsig_0_17z[5]);
  assign celloutsig_1_5z = ~(celloutsig_1_1z[9] | celloutsig_1_4z[7]);
  assign celloutsig_1_9z = ~(celloutsig_1_6z | celloutsig_1_8z);
  assign celloutsig_0_23z = ~(celloutsig_0_19z | celloutsig_0_14z[11]);
  assign celloutsig_0_8z = ~((celloutsig_0_1z | celloutsig_0_4z) & (celloutsig_0_3z[3] | celloutsig_0_6z[4]));
  assign celloutsig_1_19z = ~((celloutsig_1_7z | celloutsig_1_16z) & (in_data[172] | in_data[173]));
  assign celloutsig_0_76z = celloutsig_0_23z | ~(celloutsig_0_58z[4]);
  assign celloutsig_0_83z = celloutsig_0_31z[5] ^ celloutsig_0_9z[9];
  assign celloutsig_0_80z = { celloutsig_0_11z, celloutsig_0_66z, celloutsig_0_76z, celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_4z } + { celloutsig_0_48z[9:4], celloutsig_0_38z, celloutsig_0_50z, celloutsig_0_25z };
  assign celloutsig_0_71z = { celloutsig_0_15z[1:0], celloutsig_0_51z, celloutsig_0_30z } & { celloutsig_0_27z[5:3], celloutsig_0_18z };
  assign celloutsig_0_50z = { celloutsig_0_6z[4:1], celloutsig_0_18z } / { 1'h1, celloutsig_0_14z[8:5] };
  assign celloutsig_0_66z = { in_data[74:67], celloutsig_0_16z, celloutsig_0_30z, celloutsig_0_29z } / { 1'h1, celloutsig_0_58z[9:0] };
  assign celloutsig_0_89z = { in_data[47:42], celloutsig_0_30z, celloutsig_0_86z, celloutsig_0_47z } / { 1'h1, celloutsig_0_0z[11:4] };
  assign celloutsig_0_18z = celloutsig_0_14z[8:2] == { celloutsig_0_12z[4], celloutsig_0_1z, celloutsig_0_15z };
  assign celloutsig_0_36z = { celloutsig_0_17z[10:4], celloutsig_0_6z[9:1], celloutsig_0_2z } === { celloutsig_0_31z[5:1], celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_20z };
  assign celloutsig_0_49z = celloutsig_0_38z === { celloutsig_0_31z[1:0], celloutsig_0_5z, celloutsig_0_32z };
  assign celloutsig_0_86z = { celloutsig_0_20z[7:4], celloutsig_0_30z } === { celloutsig_0_71z[0], celloutsig_0_64z, celloutsig_0_59z, celloutsig_0_64z, celloutsig_0_45z };
  assign celloutsig_0_10z = celloutsig_0_0z[10:7] === celloutsig_0_0z[12:9];
  assign celloutsig_1_12z = { celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_2z } === { celloutsig_1_5z, 1'h0, celloutsig_1_5z };
  assign celloutsig_0_4z = in_data[86:62] || { celloutsig_0_3z[4:0], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_0_34z = in_data[36:33] || celloutsig_0_21z[11:8];
  assign celloutsig_0_54z = { in_data[39:34], celloutsig_0_26z, celloutsig_0_24z, celloutsig_0_35z, celloutsig_0_28z } < { celloutsig_0_24z[4:1], celloutsig_0_32z, celloutsig_0_14z, celloutsig_0_18z, celloutsig_0_13z };
  assign celloutsig_1_6z = { in_data[181:173], 2'h0 } < celloutsig_1_4z[10:0];
  assign celloutsig_1_1z = { in_data[156:148], 1'h0 } % { 1'h1, in_data[104:98], 1'h0, in_data[96] };
  assign celloutsig_0_12z = celloutsig_0_7z[9:5] % { 1'h1, celloutsig_0_3z[3], celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_0_15z = celloutsig_0_12z % { 1'h1, celloutsig_0_3z[6:4], celloutsig_0_11z };
  assign celloutsig_0_24z = { celloutsig_0_6z[9:1], celloutsig_0_11z } % { 1'h1, celloutsig_0_7z[13:10], celloutsig_0_15z };
  assign celloutsig_0_3z = { celloutsig_0_0z[9:3], celloutsig_0_2z, celloutsig_0_1z } % { 1'h1, celloutsig_0_0z[6:1], celloutsig_0_2z, in_data[0] };
  assign celloutsig_0_41z = { celloutsig_0_6z[8:5], celloutsig_0_25z, celloutsig_0_21z } % { 1'h1, celloutsig_0_33z[19:7], celloutsig_0_5z, celloutsig_0_35z, celloutsig_0_4z, celloutsig_0_40z };
  assign celloutsig_0_22z = { celloutsig_0_21z[5:1], celloutsig_0_10z, celloutsig_0_12z } % { 1'h1, celloutsig_0_12z[0], celloutsig_0_3z };
  assign celloutsig_0_6z[9:1] = celloutsig_0_5z ? { celloutsig_0_0z[7:0], 1'h1 } : { celloutsig_0_3z[7:2], celloutsig_0_2z, 1'h0, celloutsig_0_2z };
  assign celloutsig_0_14z = celloutsig_0_8z ? { celloutsig_0_9z[5], celloutsig_0_9z, 1'h1 } : { celloutsig_0_0z[3:0], 1'h0, celloutsig_0_10z, celloutsig_0_12z, 1'h0 };
  assign celloutsig_0_32z = { celloutsig_0_9z[7:6], celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_15z, celloutsig_0_22z } != { celloutsig_0_7z[6:1], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_23z };
  assign celloutsig_1_7z = celloutsig_1_1z[3:1] != { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_5z };
  assign celloutsig_1_13z = { in_data[184:149], celloutsig_1_6z, celloutsig_1_12z } != { celloutsig_1_10z[7:4], celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_7z };
  assign celloutsig_0_29z = { celloutsig_0_21z[12:3], celloutsig_0_16z } != celloutsig_0_17z[12:2];
  assign celloutsig_0_40z = { celloutsig_0_13z, celloutsig_0_39z, celloutsig_0_11z } !== celloutsig_0_21z[12:10];
  assign celloutsig_0_5z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_4z } !== { celloutsig_0_0z[9:3], celloutsig_0_1z };
  assign celloutsig_1_18z = celloutsig_1_4z[5:1] !== { celloutsig_1_13z, celloutsig_1_16z, celloutsig_1_13z, celloutsig_1_16z, celloutsig_1_16z };
  assign celloutsig_0_0z = ~ in_data[82:70];
  assign celloutsig_1_4z = ~ { in_data[128:124], celloutsig_1_3z };
  assign celloutsig_0_9z = { celloutsig_0_0z[11:3], celloutsig_0_5z } | celloutsig_0_7z[9:0];
  assign celloutsig_0_94z = | { celloutsig_0_80z[14:8], celloutsig_0_69z, celloutsig_0_52z, celloutsig_0_89z, celloutsig_0_39z, celloutsig_0_4z };
  assign celloutsig_0_11z = | { celloutsig_0_6z[9:8], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_2z };
  assign celloutsig_0_25z = | celloutsig_0_20z[6:0];
  assign celloutsig_0_35z = ~^ { celloutsig_0_9z[5], celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_28z, celloutsig_0_26z };
  assign celloutsig_0_45z = ~^ { celloutsig_0_24z[4:3], celloutsig_0_15z, celloutsig_0_18z };
  assign celloutsig_0_1z = ~^ celloutsig_0_0z[11:1];
  assign celloutsig_0_16z = ~^ { in_data[36:35], celloutsig_0_10z, celloutsig_0_13z, celloutsig_0_10z };
  assign celloutsig_0_58z = celloutsig_0_48z << { celloutsig_0_22z[5], celloutsig_0_20z, celloutsig_0_45z };
  assign celloutsig_0_37z = celloutsig_0_0z >> { celloutsig_0_14z[9], celloutsig_0_11z, celloutsig_0_6z[9:1], celloutsig_0_2z, celloutsig_0_11z };
  assign celloutsig_0_21z = { celloutsig_0_0z[12:1], celloutsig_0_2z } >> { celloutsig_0_14z, celloutsig_0_11z };
  assign celloutsig_1_3z = in_data[104:97] <<< celloutsig_1_1z[9:2];
  assign celloutsig_1_10z = in_data[142:125] <<< { celloutsig_1_1z[8:3], celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_1z };
  assign celloutsig_0_52z = { celloutsig_0_20z[3], celloutsig_0_11z, celloutsig_0_23z, celloutsig_0_49z } >>> celloutsig_0_41z[15:12];
  assign celloutsig_0_57z = { celloutsig_0_21z[12:5], celloutsig_0_40z, celloutsig_0_35z, celloutsig_0_50z } >>> { celloutsig_0_40z, celloutsig_0_54z, celloutsig_0_37z };
  assign celloutsig_0_93z = { celloutsig_0_56z, celloutsig_0_83z, celloutsig_0_34z } >>> celloutsig_0_31z[2:0];
  assign celloutsig_0_17z = { celloutsig_0_15z[4:3], celloutsig_0_6z[9:1], celloutsig_0_2z, celloutsig_0_4z } >>> in_data[40:28];
  assign celloutsig_0_67z = celloutsig_0_22z[10:2] - celloutsig_0_17z[9:1];
  assign celloutsig_0_38z = { celloutsig_0_3z[4:2], celloutsig_0_2z } ^ in_data[43:40];
  assign celloutsig_0_48z = { celloutsig_0_37z[2], celloutsig_0_30z, celloutsig_0_20z } ^ { celloutsig_0_37z[9:0], celloutsig_0_2z };
  assign celloutsig_0_7z = { celloutsig_0_3z[5:1], celloutsig_0_2z, celloutsig_0_3z } ^ { celloutsig_0_0z[4:1], celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_4z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_31z = 7'h00;
    else if (!clkin_data[0]) celloutsig_0_31z = { celloutsig_0_21z[8:3], celloutsig_0_26z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_33z = 21'h000000;
    else if (!clkin_data[0]) celloutsig_0_33z = { in_data[14:9], celloutsig_0_25z, celloutsig_0_32z, celloutsig_0_17z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_20z = 9'h000;
    else if (!clkin_data[0]) celloutsig_0_20z = { celloutsig_0_7z[10:3], celloutsig_0_16z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_27z = 7'h00;
    else if (clkin_data[0]) celloutsig_0_27z = in_data[48:42];
  assign celloutsig_0_39z = ~((celloutsig_0_1z & celloutsig_0_0z[9]) | (celloutsig_0_21z[3] & celloutsig_0_31z[0]));
  assign celloutsig_0_44z = ~((celloutsig_0_25z & celloutsig_0_35z) | (celloutsig_0_36z & celloutsig_0_39z));
  assign celloutsig_0_13z = ~((celloutsig_0_5z & celloutsig_0_10z) | (celloutsig_0_12z[2] & celloutsig_0_9z[4]));
  assign celloutsig_0_19z = ~((celloutsig_0_1z & celloutsig_0_18z) | (celloutsig_0_5z & celloutsig_0_3z[2]));
  assign celloutsig_0_6z[0] = celloutsig_0_2z;
  assign { out_data[128], out_data[96], out_data[34:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_93z, celloutsig_0_94z };
endmodule
