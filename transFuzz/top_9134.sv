/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [12:0] celloutsig_0_10z;
  wire [10:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [2:0] celloutsig_0_16z;
  wire [11:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [5:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [8:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [26:0] celloutsig_0_23z;
  wire [10:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  reg [14:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [12:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_32z;
  reg [12:0] celloutsig_0_33z;
  wire [4:0] celloutsig_0_34z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_43z;
  reg [7:0] celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_54z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire [2:0] celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_66z;
  wire [18:0] celloutsig_0_67z;
  wire [13:0] celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire [29:0] celloutsig_0_7z;
  wire celloutsig_0_81z;
  reg [12:0] celloutsig_0_82z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [10:0] celloutsig_1_1z;
  wire [30:0] celloutsig_1_2z;
  reg [38:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [29:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~(in_data[8] & in_data[45]);
  assign celloutsig_0_43z = ~(celloutsig_0_8z & celloutsig_0_8z);
  assign celloutsig_0_57z = ~(celloutsig_0_37z & celloutsig_0_28z);
  assign celloutsig_1_5z = ~(celloutsig_1_4z[3] & celloutsig_1_1z[8]);
  assign celloutsig_0_22z = ~(celloutsig_0_9z & celloutsig_0_0z);
  assign celloutsig_0_13z = !(celloutsig_0_3z ? celloutsig_0_10z[6] : celloutsig_0_4z);
  assign celloutsig_0_21z = !(in_data[28] ? celloutsig_0_20z[2] : in_data[92]);
  assign celloutsig_0_29z = !(celloutsig_0_28z ? celloutsig_0_5z[2] : celloutsig_0_26z);
  assign celloutsig_0_56z = ~(celloutsig_0_3z | celloutsig_0_47z[6]);
  assign celloutsig_0_8z = ~(celloutsig_0_5z[0] | in_data[7]);
  assign celloutsig_0_32z = celloutsig_0_17z[10] ^ celloutsig_0_26z;
  assign celloutsig_1_7z = celloutsig_1_1z[9] ^ celloutsig_1_6z;
  assign celloutsig_1_18z = celloutsig_1_16z ^ celloutsig_1_0z;
  assign celloutsig_0_37z = ~(celloutsig_0_18z ^ celloutsig_0_34z[4]);
  assign celloutsig_0_3z = ~(celloutsig_0_2z[8] ^ in_data[17]);
  assign celloutsig_0_66z = ~(celloutsig_0_34z[3] ^ celloutsig_0_54z);
  assign celloutsig_0_9z = ~(celloutsig_0_1z ^ celloutsig_0_2z[11]);
  assign celloutsig_0_18z = ~(celloutsig_0_5z[1] ^ celloutsig_0_13z);
  assign celloutsig_0_25z = ~(celloutsig_0_24z[5] ^ celloutsig_0_8z);
  assign celloutsig_0_28z = ~(celloutsig_0_3z ^ celloutsig_0_2z[9]);
  assign celloutsig_0_4z = { celloutsig_0_2z[2], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z } == { celloutsig_0_2z[10:9], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_9z = celloutsig_1_8z[23:15] == { celloutsig_1_1z[8:1], celloutsig_1_7z };
  assign celloutsig_1_10z = { celloutsig_1_8z[19:11], celloutsig_1_9z } == { celloutsig_1_4z[34:26], celloutsig_1_5z };
  assign celloutsig_0_54z = in_data[36:29] === { celloutsig_0_33z[4:0], celloutsig_0_37z, celloutsig_0_36z, celloutsig_0_29z };
  assign celloutsig_0_14z = { celloutsig_0_9z, celloutsig_0_13z } === { celloutsig_0_10z[1], celloutsig_0_0z };
  assign celloutsig_0_40z = { celloutsig_0_6z[11:1], celloutsig_0_2z, celloutsig_0_12z } >= { in_data[21:14], celloutsig_0_27z, celloutsig_0_21z, celloutsig_0_13z };
  assign celloutsig_0_41z = { celloutsig_0_33z[5:0], celloutsig_0_29z, celloutsig_0_8z, celloutsig_0_30z, celloutsig_0_36z, celloutsig_0_13z, celloutsig_0_30z, celloutsig_0_25z, celloutsig_0_9z } >= { celloutsig_0_33z[11:3], celloutsig_0_34z };
  assign celloutsig_0_81z = { celloutsig_0_40z, celloutsig_0_29z, celloutsig_0_13z } >= celloutsig_0_67z[6:4];
  assign celloutsig_0_67z = celloutsig_0_57z ? celloutsig_0_7z[27:9] : { celloutsig_0_23z[18:4], celloutsig_0_60z, celloutsig_0_66z, celloutsig_0_13z, celloutsig_0_43z };
  assign celloutsig_1_1z[10:1] = in_data[112] ? { in_data[116:113], 1'h1, in_data[111:107] } : in_data[110:101];
  assign celloutsig_0_24z = celloutsig_0_16z[0] ? in_data[95:85] : { in_data[94:85], celloutsig_0_21z };
  assign celloutsig_0_2z = celloutsig_0_1z ? { in_data[25:15], 2'h3 } : { in_data[95:88], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, 1'h0, celloutsig_0_0z };
  assign celloutsig_0_6z = - { in_data[78:73], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_7z = - { celloutsig_0_5z[2], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_36z = & { celloutsig_0_30z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_12z = & celloutsig_0_6z[4:2];
  assign celloutsig_0_26z = & { celloutsig_0_21z, celloutsig_0_9z, celloutsig_0_7z[18:9], celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_1_6z = ~^ celloutsig_1_4z[24:21];
  assign celloutsig_0_34z = { celloutsig_0_11z[8:5], celloutsig_0_1z } - { celloutsig_0_7z[3:0], celloutsig_0_28z };
  assign celloutsig_0_5z = { in_data[40:39], celloutsig_0_3z } - { in_data[64], celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_1_2z = in_data[181:151] - in_data[130:100];
  assign celloutsig_1_8z = celloutsig_1_4z[34:5] - in_data[130:101];
  assign celloutsig_0_10z = { celloutsig_0_7z[24:16], celloutsig_0_4z, celloutsig_0_5z } - celloutsig_0_6z[13:1];
  assign celloutsig_0_11z = { celloutsig_0_2z[8:0], celloutsig_0_3z, celloutsig_0_3z } - { celloutsig_0_6z[12:3], celloutsig_0_4z };
  assign celloutsig_0_16z = celloutsig_0_6z[12:10] - { celloutsig_0_5z[2:1], celloutsig_0_9z };
  assign celloutsig_0_17z = { celloutsig_0_7z[9:1], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_12z } - { celloutsig_0_7z[11:1], celloutsig_0_1z };
  assign celloutsig_0_19z = { celloutsig_0_10z[6:5], celloutsig_0_5z, celloutsig_0_8z } - { celloutsig_0_17z[6:4], celloutsig_0_5z };
  assign celloutsig_0_20z = { celloutsig_0_2z[7:0], celloutsig_0_9z } - celloutsig_0_7z[19:11];
  assign celloutsig_0_23z = { celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_22z, celloutsig_0_11z, celloutsig_0_22z } - { celloutsig_0_6z[12:3], celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_16z, celloutsig_0_22z, celloutsig_0_12z };
  assign celloutsig_1_0z = ~((in_data[141] & in_data[132]) | in_data[191]);
  assign celloutsig_1_19z = ~((celloutsig_1_6z & celloutsig_1_8z[9]) | celloutsig_1_10z);
  assign celloutsig_0_30z = ~((celloutsig_0_3z & celloutsig_0_25z) | celloutsig_0_8z);
  always_latch
    if (!clkin_data[64]) celloutsig_0_33z = 13'h0000;
    else if (clkin_data[0]) celloutsig_0_33z = { celloutsig_0_27z[10:1], celloutsig_0_29z, celloutsig_0_29z, celloutsig_0_28z };
  always_latch
    if (clkin_data[64]) celloutsig_0_47z = 8'h00;
    else if (celloutsig_1_19z) celloutsig_0_47z = { celloutsig_0_23z[15:9], celloutsig_0_41z };
  always_latch
    if (clkin_data[64]) celloutsig_0_82z = 13'h0000;
    else if (!clkin_data[0]) celloutsig_0_82z = { celloutsig_0_12z, celloutsig_0_70z, celloutsig_0_24z };
  always_latch
    if (!clkin_data[96]) celloutsig_1_4z = 39'h0000000000;
    else if (clkin_data[32]) celloutsig_1_4z = in_data[152:114];
  always_latch
    if (!clkin_data[64]) celloutsig_0_27z = 15'h0000;
    else if (!clkin_data[0]) celloutsig_0_27z = { in_data[31:18], celloutsig_0_8z };
  assign celloutsig_0_58z = ~((celloutsig_0_32z & celloutsig_0_24z[1]) | (celloutsig_0_25z & celloutsig_0_23z[0]));
  assign celloutsig_0_60z = ~((celloutsig_0_20z[2] & celloutsig_0_19z[3]) | (celloutsig_0_17z[2] & celloutsig_0_58z));
  assign celloutsig_0_70z = ~((celloutsig_0_56z & celloutsig_0_19z[5]) | (celloutsig_0_6z[12] & celloutsig_0_23z[13]));
  assign celloutsig_1_16z = ~((celloutsig_1_9z & celloutsig_1_2z[10]) | (celloutsig_1_0z & celloutsig_1_2z[11]));
  assign celloutsig_0_1z = ~((in_data[12] & in_data[86]) | (celloutsig_0_0z & in_data[33]));
  assign celloutsig_1_1z[0] = celloutsig_1_0z;
  assign { out_data[128], out_data[96], out_data[32], out_data[12:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_81z, celloutsig_0_82z };
endmodule
