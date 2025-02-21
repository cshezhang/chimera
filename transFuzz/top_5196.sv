/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [7:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [20:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [21:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [7:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [4:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [7:0] celloutsig_0_27z;
  reg [6:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [7:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  reg [4:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [6:0] celloutsig_0_38z;
  wire [15:0] celloutsig_0_3z;
  wire [6:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [10:0] celloutsig_0_43z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire [15:0] celloutsig_0_5z;
  wire celloutsig_0_61z;
  reg [3:0] celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire [7:0] celloutsig_0_73z;
  wire celloutsig_0_79z;
  wire [19:0] celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [19:0] celloutsig_1_13z;
  wire [3:0] celloutsig_1_14z;
  wire [20:0] celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire [12:0] celloutsig_1_19z;
  wire [20:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [5:0] celloutsig_1_8z;
  wire [8:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_52z = celloutsig_0_30z ? celloutsig_0_26z : celloutsig_0_3z[14];
  assign celloutsig_1_18z = ~(celloutsig_1_6z & celloutsig_1_6z);
  assign celloutsig_0_79z = !(celloutsig_0_1z ? celloutsig_0_73z[7] : celloutsig_0_47z);
  assign celloutsig_1_3z = !(in_data[172] ? in_data[179] : celloutsig_1_0z);
  assign celloutsig_0_8z = !(celloutsig_0_5z[8] ? celloutsig_0_4z : celloutsig_0_0z);
  assign celloutsig_0_12z = !(celloutsig_0_4z ? celloutsig_0_0z : celloutsig_0_3z[2]);
  assign celloutsig_0_33z = ~(celloutsig_0_11z | celloutsig_0_25z);
  assign celloutsig_0_80z = ~(celloutsig_0_51z | celloutsig_0_38z[5]);
  assign celloutsig_1_0z = ~(in_data[148] | in_data[150]);
  assign celloutsig_1_10z = ~(celloutsig_1_3z | celloutsig_1_3z);
  assign celloutsig_0_11z = ~(celloutsig_0_1z | celloutsig_0_7z[10]);
  assign celloutsig_0_34z = ~celloutsig_0_28z[6];
  assign celloutsig_0_35z = ~((celloutsig_0_8z | celloutsig_0_31z[0]) & celloutsig_0_21z);
  assign celloutsig_0_6z = ~((celloutsig_0_0z | celloutsig_0_3z[6]) & celloutsig_0_0z);
  assign celloutsig_0_1z = ~((celloutsig_0_0z | celloutsig_0_0z) & celloutsig_0_0z);
  assign celloutsig_0_16z = ~((celloutsig_0_9z[2] | celloutsig_0_0z) & celloutsig_0_2z);
  assign celloutsig_0_2z = ~((celloutsig_0_1z | in_data[24]) & celloutsig_0_0z);
  assign celloutsig_0_26z = ~((celloutsig_0_0z | celloutsig_0_14z) & (celloutsig_0_15z | celloutsig_0_1z));
  assign celloutsig_0_14z = celloutsig_0_13z[1] | ~(celloutsig_0_6z);
  assign celloutsig_0_17z = celloutsig_0_4z | ~(celloutsig_0_1z);
  assign celloutsig_0_41z = celloutsig_0_15z ^ celloutsig_0_4z;
  assign celloutsig_0_51z = ~(celloutsig_0_31z[6] ^ celloutsig_0_32z);
  assign celloutsig_0_61z = ~(celloutsig_0_8z ^ celloutsig_0_4z);
  assign celloutsig_1_11z = ~(celloutsig_1_6z ^ celloutsig_1_9z[4]);
  assign celloutsig_1_12z = ~(celloutsig_1_6z ^ celloutsig_1_4z);
  assign celloutsig_0_73z = celloutsig_0_43z[7:0] + { celloutsig_0_19z[8:7], celloutsig_0_15z, celloutsig_0_69z, celloutsig_0_6z };
  assign celloutsig_0_31z = { celloutsig_0_7z[18:16], celloutsig_0_24z } / { 1'h1, celloutsig_0_26z, celloutsig_0_24z, celloutsig_0_12z };
  assign celloutsig_1_6z = { celloutsig_1_1z[17:16], celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_2z } >= { in_data[151:149], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_7z = { celloutsig_1_1z[17:13], celloutsig_1_4z, celloutsig_1_6z } >= { in_data[174:169], celloutsig_1_4z };
  assign celloutsig_0_37z = { celloutsig_0_31z[5:2], celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_24z, celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_33z, celloutsig_0_30z, celloutsig_0_17z, celloutsig_0_30z, celloutsig_0_9z, celloutsig_0_28z, celloutsig_0_4z, celloutsig_0_25z, celloutsig_0_25z, celloutsig_0_12z, celloutsig_0_21z, celloutsig_0_9z, celloutsig_0_32z, celloutsig_0_32z } || { in_data[63:17], celloutsig_0_1z };
  assign celloutsig_1_5z = in_data[174:171] || { in_data[138:136], celloutsig_1_2z };
  assign celloutsig_0_20z = { in_data[85:80], celloutsig_0_12z, celloutsig_0_0z } || { celloutsig_0_9z[3:2], celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_11z };
  assign celloutsig_0_25z = celloutsig_0_13z[9:6] || in_data[42:39];
  assign celloutsig_0_4z = { in_data[60:37], celloutsig_0_2z, celloutsig_0_2z } < in_data[26:1];
  assign celloutsig_0_10z = in_data[66:59] % { 1'h1, in_data[22:18], celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_3z[15:1] = celloutsig_0_1z ? { in_data[16:4], celloutsig_0_0z, 1'h1 } : in_data[29:15];
  assign celloutsig_0_43z = celloutsig_0_5z[12] ? in_data[95:85] : { celloutsig_0_31z[3], celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_33z, celloutsig_0_36z, celloutsig_0_18z, celloutsig_0_41z };
  assign celloutsig_1_14z = celloutsig_1_5z ? celloutsig_1_8z[4:1] : { celloutsig_1_0z, celloutsig_1_12z, celloutsig_1_4z, 1'h0 };
  assign celloutsig_0_19z[21:5] = celloutsig_0_17z ? { celloutsig_0_13z[18:4], celloutsig_0_1z, celloutsig_0_14z } : { celloutsig_0_13z[11:6], celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_16z, celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_8z };
  assign celloutsig_0_24z = celloutsig_0_17z ? celloutsig_0_3z[13:9] : { celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_15z = celloutsig_0_9z[3:1] !== { celloutsig_0_10z[4], celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_30z = { celloutsig_0_3z[14:1], celloutsig_0_15z, celloutsig_0_2z } !== celloutsig_0_5z;
  assign celloutsig_0_9z = ~ { celloutsig_0_7z[3:0], celloutsig_0_6z };
  assign celloutsig_0_22z = ~ celloutsig_0_7z[7:0];
  assign celloutsig_0_38z = { celloutsig_0_3z[12:7], celloutsig_0_0z } | { celloutsig_0_10z[5:1], celloutsig_0_26z, celloutsig_0_25z };
  assign celloutsig_1_15z = { celloutsig_1_13z[19:1], celloutsig_1_3z, celloutsig_1_0z } | { celloutsig_1_13z[5:3], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_11z, celloutsig_1_11z, celloutsig_1_14z, celloutsig_1_3z };
  assign celloutsig_0_0z = | in_data[63:60];
  assign celloutsig_0_32z = | { celloutsig_0_28z, celloutsig_0_14z, celloutsig_0_26z };
  assign celloutsig_1_2z = | in_data[129:127];
  assign celloutsig_0_21z = | { celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_6z };
  assign celloutsig_0_46z = | { celloutsig_0_40z[3:1], celloutsig_0_6z, in_data[30:21] };
  assign celloutsig_0_18z = | { celloutsig_0_6z, in_data[30:21] };
  assign celloutsig_0_23z = | celloutsig_0_9z[3:0];
  assign celloutsig_1_4z = ~^ { in_data[186:185], celloutsig_1_2z };
  assign celloutsig_1_19z = celloutsig_1_15z[12:0] >> { celloutsig_1_13z[6:4], celloutsig_1_0z, celloutsig_1_9z };
  assign celloutsig_0_27z = celloutsig_0_22z >> { celloutsig_0_5z[15:9], celloutsig_0_26z };
  assign celloutsig_0_5z = { celloutsig_0_3z[14:1], celloutsig_0_0z, celloutsig_0_1z } << { in_data[45:32], celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_1_8z = { celloutsig_1_1z[18], celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_6z } << { celloutsig_1_1z[11:9], celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_0_7z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_2z } <<< { in_data[67:53], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_6z };
  assign celloutsig_1_1z = in_data[166:146] >>> { in_data[169:150], celloutsig_1_0z };
  assign celloutsig_1_9z = { celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_0z } >>> celloutsig_1_1z[8:0];
  assign celloutsig_1_13z = { in_data[171:154], celloutsig_1_4z, celloutsig_1_12z } >>> { celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_4z };
  assign celloutsig_0_13z = { celloutsig_0_5z[15:4], celloutsig_0_8z, celloutsig_0_10z } >>> { in_data[54:39], celloutsig_0_9z };
  assign celloutsig_0_40z = { celloutsig_0_19z[11:9], celloutsig_0_4z, celloutsig_0_16z, celloutsig_0_4z, celloutsig_0_6z } - { celloutsig_0_3z[5:2], celloutsig_0_34z, celloutsig_0_25z, celloutsig_0_26z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_36z = 5'h00;
    else if (!clkin_data[0]) celloutsig_0_36z = celloutsig_0_7z[15:11];
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_69z = 4'h0;
    else if (clkin_data[32]) celloutsig_0_69z = { celloutsig_0_24z[4], celloutsig_0_37z, celloutsig_0_52z, celloutsig_0_61z };
  always_latch
    if (clkin_data[64]) celloutsig_0_28z = 7'h00;
    else if (!clkin_data[32]) celloutsig_0_28z = { celloutsig_0_27z[7:2], celloutsig_0_15z };
  assign celloutsig_0_47z = ~((celloutsig_0_35z & celloutsig_0_46z) | (celloutsig_0_20z & celloutsig_0_1z));
  assign celloutsig_0_19z[4:0] = celloutsig_0_9z;
  assign celloutsig_0_3z[0] = celloutsig_0_0z;
  assign { out_data[128], out_data[108:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_79z, celloutsig_0_80z };
endmodule
