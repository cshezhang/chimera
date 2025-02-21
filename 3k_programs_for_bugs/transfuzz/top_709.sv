/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [17:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [14:0] celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire [9:0] celloutsig_0_17z;
  wire [10:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [6:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [6:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [26:0] celloutsig_0_28z;
  wire [5:0] celloutsig_0_29z;
  reg [2:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [6:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [12:0] celloutsig_0_36z;
  wire [3:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [15:0] celloutsig_0_40z;
  wire [21:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [14:0] celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire [4:0] celloutsig_0_49z;
  wire [3:0] celloutsig_0_4z;
  wire [2:0] celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire [39:0] celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire [13:0] celloutsig_0_5z;
  wire [21:0] celloutsig_0_60z;
  wire [4:0] celloutsig_0_61z;
  wire [28:0] celloutsig_0_62z;
  wire [3:0] celloutsig_0_63z;
  wire [3:0] celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire [4:0] celloutsig_0_66z;
  wire [3:0] celloutsig_0_67z;
  wire [18:0] celloutsig_0_68z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_70z;
  wire celloutsig_0_71z;
  wire celloutsig_0_73z;
  wire [2:0] celloutsig_0_77z;
  wire [3:0] celloutsig_0_7z;
  wire [6:0] celloutsig_0_80z;
  wire [6:0] celloutsig_0_81z;
  wire celloutsig_0_82z;
  wire [2:0] celloutsig_0_83z;
  wire [10:0] celloutsig_0_86z;
  wire celloutsig_0_87z;
  wire [4:0] celloutsig_0_88z;
  wire [17:0] celloutsig_0_89z;
  wire celloutsig_0_8z;
  wire celloutsig_0_91z;
  wire [6:0] celloutsig_0_92z;
  wire celloutsig_0_93z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire [4:0] celloutsig_1_12z;
  wire [5:0] celloutsig_1_13z;
  wire [10:0] celloutsig_1_18z;
  wire [10:0] celloutsig_1_19z;
  wire [6:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [10:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [6:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [12:0] celloutsig_1_8z;
  wire [9:0] celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [14:0] _00_;
  always_latch
    if (clkin_data[32]) _00_ = 15'h0000;
    else if (!celloutsig_1_19z[0]) _00_ = { in_data[82:77], celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_4z[3], celloutsig_0_9z };
  assign { celloutsig_0_12z[17:4], celloutsig_0_12z[0] } = _00_;
  assign celloutsig_0_34z = ~(celloutsig_0_3z | celloutsig_0_12z[13]);
  assign celloutsig_0_48z = ~(celloutsig_0_23z | celloutsig_0_33z);
  assign celloutsig_1_4z = ~(in_data[111] | celloutsig_1_2z);
  assign celloutsig_0_13z = ~(celloutsig_0_6z | in_data[80]);
  assign celloutsig_0_24z = ~(1'h0 | celloutsig_0_1z);
  assign celloutsig_0_56z = { celloutsig_0_42z[16:0], celloutsig_0_12z[17:4], 3'h0, celloutsig_0_12z[0], celloutsig_0_23z, celloutsig_0_51z, celloutsig_0_20z } / { 1'h1, celloutsig_0_49z[3:0], celloutsig_0_23z, celloutsig_0_46z, celloutsig_0_34z, celloutsig_0_29z, celloutsig_0_1z, celloutsig_0_14z, celloutsig_0_52z, celloutsig_0_31z, celloutsig_0_15z[14:8], celloutsig_0_12z[10:8], celloutsig_0_15z[4], celloutsig_0_12z[6:4], celloutsig_0_15z[0], celloutsig_0_33z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_0z };
  assign celloutsig_0_63z = celloutsig_0_32z[5:2] / { 1'h1, celloutsig_0_56z[8:6] };
  assign celloutsig_0_89z = { celloutsig_0_77z, celloutsig_0_16z, celloutsig_0_83z, celloutsig_0_34z, celloutsig_0_7z, celloutsig_0_30z, celloutsig_0_58z, celloutsig_0_44z, celloutsig_0_33z } / { 1'h1, celloutsig_0_42z[19:11], celloutsig_0_82z, celloutsig_0_24z, celloutsig_0_61z, celloutsig_0_6z };
  assign celloutsig_1_9z = { in_data[101:98], celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_2z } / { 1'h1, celloutsig_1_8z[3], celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_0_28z = { celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_27z, celloutsig_0_27z, celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_6z, celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_27z, celloutsig_0_9z, celloutsig_0_4z[3], 3'h0 } / { 1'h1, celloutsig_0_12z[5], celloutsig_0_15z[14:8], celloutsig_0_12z[10:8], celloutsig_0_15z[4], celloutsig_0_12z[6:4], celloutsig_0_15z[0], celloutsig_0_17z };
  assign celloutsig_0_32z = { celloutsig_0_5z[11], celloutsig_0_36z[11], in_data[80], celloutsig_0_14z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_21z } / { 1'h1, celloutsig_0_18z[8:3] };
  assign celloutsig_0_40z = { 1'h0, celloutsig_0_0z, celloutsig_0_26z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_37z, celloutsig_0_25z } / { 1'h1, celloutsig_0_34z, celloutsig_0_14z, celloutsig_0_31z, celloutsig_0_9z, celloutsig_0_31z, celloutsig_0_16z, celloutsig_0_26z };
  assign celloutsig_0_60z = { celloutsig_0_12z[17:10], celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_52z } / { 1'h1, in_data[47:45], celloutsig_0_43z, celloutsig_0_25z, celloutsig_0_47z, celloutsig_0_59z };
  assign celloutsig_0_86z = { celloutsig_0_17z[8:3], celloutsig_0_7z, celloutsig_0_69z } / { 1'h1, in_data[80], celloutsig_0_36z[9:2], celloutsig_0_44z };
  assign celloutsig_0_35z = { celloutsig_0_18z[8:1], celloutsig_0_17z } == { celloutsig_0_12z[17:4], 3'h0, celloutsig_0_14z };
  assign celloutsig_0_43z = { celloutsig_0_40z[14:3], celloutsig_0_2z } == { celloutsig_0_12z[13:12], celloutsig_0_17z, celloutsig_0_35z, celloutsig_0_8z, celloutsig_0_23z };
  assign celloutsig_0_46z = { celloutsig_0_16z, celloutsig_0_38z } == { celloutsig_0_28z[8:7], celloutsig_0_27z, celloutsig_0_0z };
  assign celloutsig_0_52z = { celloutsig_0_34z, celloutsig_0_2z } == { celloutsig_0_12z[9:8], celloutsig_0_15z[4], celloutsig_0_12z[6] };
  assign celloutsig_0_69z = { celloutsig_0_66z[3:0], celloutsig_0_31z, celloutsig_0_27z, celloutsig_0_35z, celloutsig_0_8z } == { celloutsig_0_13z, celloutsig_0_64z, celloutsig_0_16z };
  assign celloutsig_0_8z = celloutsig_0_2z == celloutsig_0_7z[2:0];
  assign celloutsig_1_7z = celloutsig_1_5z[4:2] == in_data[172:170];
  assign celloutsig_0_11z = { in_data[80:78], celloutsig_0_5z[6:4] } == { in_data[78], celloutsig_0_5z[6:4], in_data[74:73] };
  assign celloutsig_0_21z = { celloutsig_0_18z[9:0], celloutsig_0_6z } == { celloutsig_0_36z[11], in_data[80:78], celloutsig_0_5z[6:4], in_data[74:72], celloutsig_0_11z };
  assign celloutsig_0_33z = { celloutsig_0_31z, celloutsig_0_9z } === celloutsig_0_29z[4:3];
  assign celloutsig_0_3z = { in_data[36:32], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z } === in_data[14:4];
  assign celloutsig_0_55z = { celloutsig_0_47z[4:2], celloutsig_0_14z } === celloutsig_0_26z[6:3];
  assign celloutsig_0_58z = { celloutsig_0_15z[12:11], celloutsig_0_7z, celloutsig_0_38z } === { celloutsig_0_22z[6:1], celloutsig_0_21z };
  assign celloutsig_0_6z = { celloutsig_0_5z[12], celloutsig_0_4z[3], 3'h0, celloutsig_0_3z, celloutsig_0_0z } === { celloutsig_0_5z[11], celloutsig_0_36z[11], in_data[80:79], celloutsig_0_2z };
  assign celloutsig_0_73z = { celloutsig_0_60z[20:15], celloutsig_0_21z } === { celloutsig_0_12z[5:4], 1'h0, celloutsig_0_64z };
  assign celloutsig_0_82z = { celloutsig_0_40z[13:8], celloutsig_0_80z, celloutsig_0_14z, celloutsig_0_43z, celloutsig_0_54z } === { celloutsig_0_61z[2:0], celloutsig_0_22z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_35z, celloutsig_0_19z };
  assign celloutsig_0_91z = { in_data[54:44], celloutsig_0_88z } === { celloutsig_0_40z[9], celloutsig_0_87z, celloutsig_0_26z, celloutsig_0_82z, celloutsig_0_69z, celloutsig_0_58z, celloutsig_0_67z };
  assign celloutsig_0_39z = celloutsig_0_12z[15:7] >= { celloutsig_0_18z[5:1], celloutsig_0_2z, celloutsig_0_20z };
  assign celloutsig_0_54z = celloutsig_0_37z >= { celloutsig_0_29z[4:2], celloutsig_0_39z };
  assign celloutsig_0_87z = { celloutsig_0_36z[4:0], celloutsig_0_63z, celloutsig_0_34z, celloutsig_0_52z } >= { celloutsig_0_12z[11:4], 2'h0, celloutsig_0_71z };
  assign celloutsig_0_93z = celloutsig_0_86z[8:2] >= { celloutsig_0_56z[38:33], celloutsig_0_39z };
  assign celloutsig_0_9z = { celloutsig_0_5z[11], celloutsig_0_36z[11], celloutsig_0_1z } >= { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_2z = { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z } >= { celloutsig_1_1z[2:1], celloutsig_1_1z };
  assign celloutsig_0_27z = { celloutsig_0_26z[4], celloutsig_0_21z, celloutsig_0_6z } >= celloutsig_0_16z;
  assign celloutsig_0_31z = { celloutsig_0_29z[3:0], celloutsig_0_11z } >= { celloutsig_0_18z[8:6], celloutsig_0_23z, celloutsig_0_9z };
  assign celloutsig_0_45z = { celloutsig_0_28z[12:10], celloutsig_0_21z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_34z, celloutsig_0_25z, celloutsig_0_19z, celloutsig_0_25z } && { celloutsig_0_36z[11], in_data[80], celloutsig_0_36z[9:7], celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_32z, celloutsig_0_21z };
  assign celloutsig_0_14z = { in_data[94:86], celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_9z } && { celloutsig_0_12z[15:5], celloutsig_0_6z };
  assign celloutsig_0_20z = { celloutsig_0_4z[3], celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_0z } && { celloutsig_0_15z[14:8], celloutsig_0_12z[10:8], celloutsig_0_15z[4], celloutsig_0_12z[6:4], celloutsig_0_15z[0], celloutsig_0_6z };
  assign celloutsig_0_25z = { celloutsig_0_15z[10:9], celloutsig_0_1z, celloutsig_0_20z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_3z } && { celloutsig_0_12z[17:9], celloutsig_0_8z };
  assign celloutsig_0_30z = { in_data[47:42], celloutsig_0_8z, celloutsig_0_23z } && { celloutsig_0_26z[3:1], celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_20z };
  assign celloutsig_0_0z = in_data[55] & ~(in_data[77]);
  assign celloutsig_0_44z = celloutsig_0_22z[3] & ~(celloutsig_0_2z[1]);
  assign celloutsig_0_57z = celloutsig_0_51z[0] & ~(celloutsig_0_27z);
  assign celloutsig_0_59z = celloutsig_0_36z[1] & ~(celloutsig_0_28z[6]);
  assign celloutsig_1_6z = celloutsig_1_5z[1] & ~(in_data[147]);
  assign celloutsig_1_11z = celloutsig_1_2z & ~(celloutsig_1_5z[5]);
  assign celloutsig_0_1z = celloutsig_0_0z & ~(celloutsig_0_0z);
  assign celloutsig_0_51z = { celloutsig_0_37z[2:1], celloutsig_0_46z } % { 1'h1, celloutsig_0_42z[5:4] };
  assign celloutsig_0_61z = { celloutsig_0_4z[3], 1'h0, celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_1z } % { 1'h1, celloutsig_0_12z[9:6] };
  assign celloutsig_0_64z = { celloutsig_0_0z, celloutsig_0_48z, celloutsig_0_1z, celloutsig_0_54z } % { 1'h1, celloutsig_0_32z[5:4], celloutsig_0_1z };
  assign celloutsig_0_67z = { celloutsig_0_62z[25:23], celloutsig_0_55z } % { 1'h1, celloutsig_0_17z[8:7], celloutsig_0_30z };
  assign celloutsig_0_68z = { celloutsig_0_28z[23:20], celloutsig_0_15z[14:8], celloutsig_0_12z[10:8], celloutsig_0_15z[4], celloutsig_0_12z[6:4], celloutsig_0_15z[0] } % { 1'h1, celloutsig_0_60z[15:0], celloutsig_0_39z, celloutsig_0_8z };
  assign celloutsig_0_70z = { celloutsig_0_52z, celloutsig_0_57z, celloutsig_0_27z } % { 1'h1, celloutsig_0_38z, celloutsig_0_65z };
  assign celloutsig_0_77z = { celloutsig_0_2z[0], celloutsig_0_46z, celloutsig_0_31z } % { 1'h1, celloutsig_0_68z[6], celloutsig_0_58z };
  assign celloutsig_0_80z = celloutsig_0_22z % { 2'h2, celloutsig_0_48z, celloutsig_0_31z, celloutsig_0_48z, celloutsig_0_73z, celloutsig_0_1z };
  assign celloutsig_0_83z = { celloutsig_0_81z[0], celloutsig_0_19z, celloutsig_0_38z } % { 1'h1, celloutsig_0_3z, celloutsig_0_82z };
  assign celloutsig_0_92z = { celloutsig_0_89z[3:1], celloutsig_0_2z, celloutsig_0_91z } % { 1'h1, celloutsig_0_42z[6:1] };
  assign celloutsig_1_1z = { in_data[141:136], celloutsig_1_0z } % { 1'h1, in_data[148:145], celloutsig_1_0z, in_data[96] };
  assign celloutsig_1_12z = celloutsig_1_5z[5:1] % { 1'h1, celloutsig_1_8z[6:4], celloutsig_1_11z };
  assign celloutsig_0_16z = celloutsig_0_5z[13:11] % { 1'h1, celloutsig_0_12z[4], celloutsig_0_11z };
  assign celloutsig_0_17z = in_data[92:83] % { 1'h1, in_data[65:63], celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_1z };
  assign celloutsig_0_18z = { celloutsig_0_5z[11], celloutsig_0_36z[11], in_data[80:78], celloutsig_0_5z[6:4], in_data[74], celloutsig_0_6z, celloutsig_0_13z } % { 1'h1, celloutsig_0_17z[5:3], celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_22z = in_data[82:76] % { 1'h1, celloutsig_0_18z[8:6], celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_20z };
  assign celloutsig_0_29z = { celloutsig_0_28z[4:2], celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_6z } % { 1'h1, in_data[80:78], celloutsig_0_5z[6:5] };
  assign celloutsig_0_42z = - { celloutsig_0_37z[3], celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_27z, celloutsig_0_40z };
  assign celloutsig_0_49z = - { celloutsig_0_40z[6:4], celloutsig_0_10z, celloutsig_0_6z };
  assign celloutsig_0_62z = - { in_data[46:27], celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_20z };
  assign celloutsig_0_66z = - { celloutsig_0_37z[2:1], celloutsig_0_59z, celloutsig_0_58z, celloutsig_0_9z };
  assign celloutsig_0_7z = - in_data[19:16];
  assign celloutsig_1_3z = - { in_data[188:185], celloutsig_1_1z };
  assign celloutsig_1_5z = - celloutsig_1_3z[8:2];
  assign celloutsig_1_8z = - { celloutsig_1_3z[8:5], celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_1z };
  assign celloutsig_1_19z = - { in_data[153:152], celloutsig_1_6z, celloutsig_1_11z, celloutsig_1_5z };
  assign celloutsig_0_26z = - { celloutsig_0_12z[13:11], celloutsig_0_2z, celloutsig_0_24z };
  assign celloutsig_0_38z = celloutsig_0_26z[5] & celloutsig_0_22z[5];
  assign celloutsig_0_65z = celloutsig_0_8z & celloutsig_0_62z[4];
  assign celloutsig_0_71z = celloutsig_0_59z & celloutsig_0_56z[21];
  assign celloutsig_1_0z = in_data[157] & in_data[118];
  assign celloutsig_0_10z = celloutsig_0_9z & celloutsig_0_6z;
  assign celloutsig_0_19z = celloutsig_0_6z & celloutsig_0_8z;
  assign celloutsig_0_23z = celloutsig_0_3z & celloutsig_0_13z;
  assign celloutsig_0_37z = celloutsig_0_12z[17:14] ^ { celloutsig_0_15z[10:8], celloutsig_0_12z[10] };
  assign celloutsig_0_47z = { celloutsig_0_40z[14:6], celloutsig_0_9z, celloutsig_0_44z, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_45z, celloutsig_0_1z } ^ in_data[52:38];
  assign celloutsig_0_81z = celloutsig_0_40z[15:9] ^ { in_data[24:21], celloutsig_0_70z };
  assign celloutsig_0_88z = { celloutsig_0_18z[3:1], celloutsig_0_13z, celloutsig_0_39z } ^ { celloutsig_0_69z, celloutsig_0_63z };
  assign celloutsig_1_13z = { celloutsig_1_12z[3:1], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } ^ { celloutsig_1_1z[4:1], celloutsig_1_11z, celloutsig_1_7z };
  assign celloutsig_1_18z = { in_data[151:142], celloutsig_1_7z } ^ { celloutsig_1_9z[4:0], celloutsig_1_13z };
  always_latch
    if (!clkin_data[0]) celloutsig_0_2z = 3'h0;
    else if (!celloutsig_1_19z[0]) celloutsig_0_2z = in_data[50:48];
  assign celloutsig_0_4z[3] = in_data[41] ^ celloutsig_0_0z;
  assign { celloutsig_0_5z[13:11], celloutsig_0_36z[11], celloutsig_0_5z[6:4] } = { in_data[84:81], in_data[77:75] } ^ { in_data[31:29], celloutsig_0_4z[3], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_4z[3] };
  assign { celloutsig_0_15z[8], celloutsig_0_15z[4], celloutsig_0_15z[11], celloutsig_0_15z[12], celloutsig_0_15z[10], celloutsig_0_15z[14:13], celloutsig_0_15z[0], celloutsig_0_15z[9] } = { celloutsig_0_4z[3], celloutsig_0_4z[3], celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_7z[2:1], celloutsig_0_3z, celloutsig_0_0z } ^ { celloutsig_0_12z[11], celloutsig_0_12z[7], celloutsig_0_12z[14], celloutsig_0_12z[15], celloutsig_0_12z[13], celloutsig_0_12z[17:16], celloutsig_0_10z, celloutsig_0_12z[12] };
  assign { celloutsig_0_36z[1:0], celloutsig_0_36z[12], celloutsig_0_36z[9:2] } = { celloutsig_0_27z, celloutsig_0_11z, celloutsig_0_5z[11], in_data[79:78], celloutsig_0_5z[6:4], in_data[74:72] } ^ { celloutsig_0_29z[0], celloutsig_0_24z, celloutsig_0_4z[3], celloutsig_0_2z, celloutsig_0_29z[5:1] };
  assign celloutsig_0_12z[3:1] = 3'h0;
  assign { celloutsig_0_15z[7:5], celloutsig_0_15z[3:1] } = { celloutsig_0_12z[10:8], celloutsig_0_12z[6:4] };
  assign celloutsig_0_36z[10] = in_data[80];
  assign celloutsig_0_4z[2:0] = 3'h0;
  assign { celloutsig_0_5z[10:7], celloutsig_0_5z[3:0] } = { celloutsig_0_36z[11], in_data[80:78], in_data[74:72], 1'h0 };
  assign { out_data[138:128], out_data[106:96], out_data[38:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_92z, celloutsig_0_93z };
endmodule
