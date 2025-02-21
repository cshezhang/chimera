/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [13:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  reg [7:0] celloutsig_0_11z;
  wire [18:0] celloutsig_0_12z;
  wire [9:0] celloutsig_0_13z;
  wire [5:0] celloutsig_0_14z;
  wire [21:0] celloutsig_0_15z;
  wire [6:0] celloutsig_0_16z;
  wire [7:0] celloutsig_0_18z;
  reg [19:0] celloutsig_0_1z;
  wire [9:0] celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire [14:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [11:0] celloutsig_0_26z;
  wire [21:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [2:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [11:0] celloutsig_0_31z;
  wire [18:0] celloutsig_0_32z;
  wire [20:0] celloutsig_0_35z;
  wire [17:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [4:0] celloutsig_0_41z;
  wire celloutsig_0_47z;
  wire [7:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire [10:0] celloutsig_0_54z;
  wire [3:0] celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire [36:0] celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire [2:0] celloutsig_0_68z;
  wire celloutsig_0_69z;
  wire [6:0] celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire [18:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [3:0] celloutsig_0_9z;
  wire [6:0] celloutsig_1_0z;
  wire [18:0] celloutsig_1_11z;
  wire [3:0] celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [13:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [4:0] celloutsig_1_6z;
  wire [20:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_51z = ~(celloutsig_0_35z[18] ^ celloutsig_0_18z[2]);
  assign celloutsig_0_5z = ~(celloutsig_0_2z[1] ^ celloutsig_0_1z[14]);
  assign celloutsig_1_9z = ~(celloutsig_1_3z ^ celloutsig_1_8z);
  assign celloutsig_0_6z = in_data[50:44] & { celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_68z = celloutsig_0_15z[18:16] & { celloutsig_0_61z, celloutsig_0_24z, celloutsig_0_47z };
  assign celloutsig_1_6z = { celloutsig_1_2z[6:4], celloutsig_1_1z, celloutsig_1_4z } & { in_data[186:183], celloutsig_1_3z };
  assign celloutsig_0_14z = { celloutsig_0_0z[4:1], celloutsig_0_8z, celloutsig_0_10z } & { celloutsig_0_6z[6:2], celloutsig_0_3z };
  assign celloutsig_0_23z = { celloutsig_0_13z[4:0], celloutsig_0_20z } & celloutsig_0_15z[18:4];
  assign celloutsig_0_62z = { celloutsig_0_14z[5:4], celloutsig_0_51z, celloutsig_0_25z } === celloutsig_0_15z[18:15];
  assign celloutsig_1_18z = celloutsig_1_7z[20:1] === { celloutsig_1_6z[1:0], celloutsig_1_1z, celloutsig_1_14z, celloutsig_1_14z, celloutsig_1_6z, celloutsig_1_14z };
  assign celloutsig_1_3z = celloutsig_1_0z[5:1] && { in_data[109:106], celloutsig_1_1z };
  assign celloutsig_1_5z = { in_data[183:182], celloutsig_1_2z } && { in_data[122:116], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_0_28z = { celloutsig_0_26z[11:10], celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_5z } && { celloutsig_0_18z[7:1], celloutsig_0_9z };
  assign celloutsig_0_4z = celloutsig_0_1z[4:2] < celloutsig_0_2z;
  assign celloutsig_1_4z = { in_data[141:125], celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z } < { in_data[190:177], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_2z };
  assign celloutsig_0_24z = celloutsig_0_13z[9:4] < { celloutsig_0_23z[10:6], celloutsig_0_4z };
  assign celloutsig_0_54z = { celloutsig_0_38z[17:8], celloutsig_0_28z } % { 1'h1, celloutsig_0_31z[10:1] };
  assign celloutsig_0_7z = { in_data[69:52], celloutsig_0_4z } % { 1'h1, in_data[75:58] };
  assign celloutsig_0_9z = { celloutsig_0_1z[1:0], celloutsig_0_5z, celloutsig_0_4z } % { 1'h1, celloutsig_0_7z[13:11] };
  assign celloutsig_0_32z = { celloutsig_0_13z[5:0], celloutsig_0_26z, celloutsig_0_29z } % { 1'h1, celloutsig_0_26z[8], celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_30z, celloutsig_0_3z };
  assign celloutsig_0_58z = celloutsig_0_6z[3:0] % { 1'h1, celloutsig_0_26z[9:7] };
  assign celloutsig_1_2z = { celloutsig_1_0z, celloutsig_1_0z } % { 1'h1, in_data[110:99], celloutsig_1_1z };
  assign celloutsig_0_13z = { celloutsig_0_12z[9:1], celloutsig_0_8z } % { 1'h1, in_data[11:6], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_49z = celloutsig_0_32z[13:6] * { celloutsig_0_31z[10:7], celloutsig_0_4z, celloutsig_0_2z };
  assign celloutsig_0_16z = celloutsig_0_7z[15:9] * celloutsig_0_13z[6:0];
  assign celloutsig_0_18z = celloutsig_0_11z * { celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_26z = celloutsig_0_0z[13:2] * { celloutsig_0_0z[8:5], celloutsig_0_11z };
  assign celloutsig_0_38z = ~ { celloutsig_0_7z[17:1], celloutsig_0_4z };
  assign celloutsig_0_41z = ~ { celloutsig_0_31z[9:6], celloutsig_0_5z };
  assign celloutsig_1_0z = ~ in_data[131:125];
  assign celloutsig_0_2z = ~ celloutsig_0_1z[9:7];
  assign celloutsig_0_27z = ~ in_data[90:69];
  assign celloutsig_0_47z = | { celloutsig_0_1z[19:13], celloutsig_0_30z };
  assign celloutsig_0_61z = | { celloutsig_0_60z[35], celloutsig_0_60z[19:15], celloutsig_0_25z, celloutsig_0_58z, celloutsig_0_22z, celloutsig_0_2z };
  assign celloutsig_0_69z = | { celloutsig_0_16z[3:0], celloutsig_0_22z, celloutsig_0_62z };
  assign celloutsig_0_25z = | { celloutsig_0_13z[7:4], celloutsig_0_13z };
  assign celloutsig_0_0z = in_data[76:63] - in_data[45:32];
  assign celloutsig_0_35z = { celloutsig_0_14z[4], celloutsig_0_31z, celloutsig_0_11z } - { celloutsig_0_27z[20:1], celloutsig_0_5z };
  assign celloutsig_1_7z = { celloutsig_1_2z[13:1], celloutsig_1_3z, celloutsig_1_0z } - { celloutsig_1_0z[5:2], celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_1_14z = { celloutsig_1_2z[12:11], celloutsig_1_9z, celloutsig_1_8z } - celloutsig_1_2z[9:6];
  assign celloutsig_1_19z = { celloutsig_1_5z, celloutsig_1_14z } - { celloutsig_1_11z[4:2], celloutsig_1_8z, celloutsig_1_4z };
  assign celloutsig_0_12z = { celloutsig_0_0z[11:4], celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_8z } - { celloutsig_0_2z[2], celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_15z = { celloutsig_0_11z[3:2], celloutsig_0_1z } - { celloutsig_0_7z[9:8], celloutsig_0_1z };
  assign celloutsig_0_20z = celloutsig_0_7z[18:9] - { celloutsig_0_18z[7:2], celloutsig_0_9z };
  assign celloutsig_0_31z = { celloutsig_0_15z[13:3], celloutsig_0_10z } - celloutsig_0_23z[13:2];
  assign celloutsig_0_3z = ~((celloutsig_0_1z[6] & celloutsig_0_0z[3]) | celloutsig_0_0z[4]);
  assign celloutsig_0_70z = ~((celloutsig_0_58z[0] & celloutsig_0_68z[1]) | celloutsig_0_49z[0]);
  assign celloutsig_1_1z = ~((in_data[174] & celloutsig_1_0z[4]) | celloutsig_1_0z[0]);
  assign celloutsig_1_8z = ~((celloutsig_1_4z & celloutsig_1_6z[4]) | celloutsig_1_3z);
  assign celloutsig_0_8z = ~((in_data[40] & celloutsig_0_2z[2]) | celloutsig_0_4z);
  assign celloutsig_0_10z = ~((celloutsig_0_5z & celloutsig_0_4z) | celloutsig_0_3z);
  assign celloutsig_0_22z = ~((celloutsig_0_16z[4] & celloutsig_0_0z[4]) | celloutsig_0_16z[1]);
  assign celloutsig_0_29z = ~((celloutsig_0_23z[13] & celloutsig_0_3z) | celloutsig_0_12z[12]);
  assign celloutsig_0_30z = ~((celloutsig_0_26z[2] & celloutsig_0_28z) | celloutsig_0_25z);
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_11z = 8'h00;
    else if (clkin_data[0]) celloutsig_0_11z = { celloutsig_0_7z[4], celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_4z };
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_1z = 20'h00000;
    else if (clkin_data[0]) celloutsig_0_1z = { celloutsig_0_0z[13:8], celloutsig_0_0z };
  assign { celloutsig_0_60z[23:22], celloutsig_0_60z[36:35], celloutsig_0_60z[19:13], celloutsig_0_60z[4:0], celloutsig_0_60z[34:25], celloutsig_0_60z[12:5], celloutsig_0_60z[24] } = ~ { celloutsig_0_54z, celloutsig_0_41z, celloutsig_0_20z, celloutsig_0_18z, celloutsig_0_10z };
  assign { celloutsig_1_11z[17:13], celloutsig_1_11z[7], celloutsig_1_11z[18], celloutsig_1_11z[6:0] } = ~ { celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_60z[21:20] = celloutsig_0_60z[36:35];
  assign celloutsig_1_11z[12:8] = celloutsig_1_11z[17:13];
  assign { out_data[128], out_data[100:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule
