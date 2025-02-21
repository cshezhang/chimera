/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [26:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  reg [4:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [6:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  reg [2:0] celloutsig_0_15z;
  reg [16:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [15:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [2:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [11:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [5:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  reg [7:0] celloutsig_0_31z;
  wire [17:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [13:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [5:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [6:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  reg [3:0] celloutsig_0_42z;
  wire [6:0] celloutsig_0_43z;
  wire [8:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [3:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [15:0] celloutsig_0_52z;
  wire celloutsig_0_55z;
  wire celloutsig_0_5z;
  wire celloutsig_0_65z;
  reg [4:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_83z;
  wire [6:0] celloutsig_0_84z;
  wire [6:0] celloutsig_0_85z;
  wire [3:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  reg [6:0] celloutsig_1_0z;
  wire [13:0] celloutsig_1_10z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [3:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [17:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_20z = celloutsig_0_2z ? celloutsig_0_9z : celloutsig_0_19z[7];
  assign celloutsig_0_34z = ~(celloutsig_0_16z[14] & celloutsig_0_24z);
  assign celloutsig_0_41z = ~(celloutsig_0_29z[4] & celloutsig_0_40z);
  assign celloutsig_1_19z = ~(in_data[175] & celloutsig_1_2z);
  assign celloutsig_0_1z = ~(celloutsig_0_0z[16] & in_data[82]);
  assign celloutsig_0_21z = ~(celloutsig_0_13z[2] & celloutsig_0_11z[4]);
  assign celloutsig_0_25z = ~(celloutsig_0_21z & celloutsig_0_17z);
  assign celloutsig_0_28z = ~(celloutsig_0_3z[3] & celloutsig_0_1z);
  assign celloutsig_0_33z = ~celloutsig_0_19z[13];
  assign celloutsig_0_37z = ~celloutsig_0_20z;
  assign celloutsig_0_4z = ~celloutsig_0_1z;
  assign celloutsig_0_49z = ~celloutsig_0_5z;
  assign celloutsig_0_9z = ~in_data[62];
  assign celloutsig_1_8z = ~celloutsig_1_1z[2];
  assign celloutsig_1_9z = ~celloutsig_1_2z;
  assign celloutsig_0_35z = ~((celloutsig_0_20z | celloutsig_0_16z[1]) & (celloutsig_0_23z[2] | celloutsig_0_29z[2]));
  assign celloutsig_0_46z = ~((celloutsig_0_30z | celloutsig_0_8z[2]) & (celloutsig_0_1z | celloutsig_0_39z));
  assign celloutsig_0_5z = ~((celloutsig_0_3z[5] | in_data[59]) & (in_data[16] | in_data[83]));
  assign celloutsig_1_2z = ~((in_data[132] | in_data[171]) & (celloutsig_1_0z[2] | in_data[137]));
  assign celloutsig_1_18z = ~((celloutsig_1_5z | celloutsig_1_10z[7]) & (in_data[124] | celloutsig_1_8z));
  assign celloutsig_0_27z = ~((celloutsig_0_15z[0] | celloutsig_0_24z) & (celloutsig_0_1z | celloutsig_0_6z[4]));
  assign celloutsig_0_10z = ~(celloutsig_0_3z[6] ^ in_data[61]);
  assign celloutsig_0_12z = ~(celloutsig_0_8z[1] ^ celloutsig_0_6z[1]);
  assign celloutsig_0_18z = ~(celloutsig_0_12z ^ celloutsig_0_0z[4]);
  assign celloutsig_1_4z = { in_data[102:98], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z } + { celloutsig_1_1z[2], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_2z };
  assign celloutsig_0_52z = { celloutsig_0_32z[6:3], celloutsig_0_6z, celloutsig_0_13z } / { 1'h1, celloutsig_0_0z[2:1], celloutsig_0_17z, celloutsig_0_45z, celloutsig_0_23z };
  assign celloutsig_0_84z = celloutsig_0_16z[7:1] / { 1'h1, in_data[77:73], celloutsig_0_65z };
  assign celloutsig_0_65z = celloutsig_0_13z >= { celloutsig_0_36z[6:5], celloutsig_0_6z };
  assign celloutsig_0_83z = { celloutsig_0_52z[5:0], celloutsig_0_6z, celloutsig_0_46z } >= { celloutsig_0_42z, celloutsig_0_5z, celloutsig_0_48z, celloutsig_0_23z };
  assign celloutsig_0_24z = celloutsig_0_16z[13:11] >= celloutsig_0_8z[3:1];
  assign celloutsig_0_40z = { celloutsig_0_3z[6:4], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_9z } && celloutsig_0_19z[12:1];
  assign celloutsig_0_7z = celloutsig_0_0z[20:7] && { celloutsig_0_0z[0], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_1_5z = celloutsig_1_0z[4:1] && celloutsig_1_1z;
  assign celloutsig_0_30z = celloutsig_0_3z[5:0] && celloutsig_0_26z[11:6];
  assign celloutsig_0_0z = in_data[70:44] % { 1'h1, in_data[69:45], in_data[0] };
  assign celloutsig_0_45z = { celloutsig_0_29z[1:0], celloutsig_0_23z, celloutsig_0_41z, celloutsig_0_28z, celloutsig_0_37z, celloutsig_0_20z } % { 1'h1, celloutsig_0_38z[3:2], celloutsig_0_38z };
  assign celloutsig_1_10z = { celloutsig_1_4z[10:0], celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_3z } % { 1'h1, in_data[149:138], celloutsig_1_9z };
  assign celloutsig_0_23z = celloutsig_0_3z[6:4] % { 1'h1, celloutsig_0_2z, celloutsig_0_21z };
  assign celloutsig_0_48z = - { celloutsig_0_43z[3:1], celloutsig_0_12z };
  assign celloutsig_0_8z = - celloutsig_0_3z[4:1];
  assign celloutsig_1_1z = - in_data[103:100];
  assign celloutsig_0_13z = - { celloutsig_0_0z[1], celloutsig_0_9z, celloutsig_0_6z };
  assign celloutsig_0_19z = - celloutsig_0_0z[17:2];
  assign celloutsig_0_26z = - { celloutsig_0_15z[2], celloutsig_0_25z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_29z = - { celloutsig_0_20z, celloutsig_0_27z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_10z };
  assign celloutsig_0_39z = { celloutsig_0_26z[4], celloutsig_0_25z, celloutsig_0_30z, celloutsig_0_5z, celloutsig_0_38z, celloutsig_0_28z, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_37z, celloutsig_0_13z, celloutsig_0_20z } !== { celloutsig_0_36z[11:1], celloutsig_0_18z, celloutsig_0_13z, celloutsig_0_35z, celloutsig_0_31z };
  assign celloutsig_0_55z = { celloutsig_0_49z, celloutsig_0_33z, celloutsig_0_21z } !== celloutsig_0_0z[4:2];
  assign celloutsig_1_3z = { celloutsig_1_0z[3:2], celloutsig_1_1z } !== in_data[111:106];
  assign celloutsig_0_14z = { celloutsig_0_0z[18:15], celloutsig_0_11z } !== { celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_6z };
  assign celloutsig_0_2z = in_data[56:45] !== celloutsig_0_0z[14:3];
  assign celloutsig_0_36z = { celloutsig_0_29z[4:3], celloutsig_0_30z, celloutsig_0_9z, celloutsig_0_15z, celloutsig_0_3z } <<< { celloutsig_0_14z, celloutsig_0_33z, celloutsig_0_26z };
  assign celloutsig_0_85z = { celloutsig_0_38z, celloutsig_0_55z } <<< { celloutsig_0_43z[5:0], celloutsig_0_83z };
  assign celloutsig_0_3z = { in_data[65:62], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z } - in_data[23:17];
  assign celloutsig_0_32z = in_data[51:34] - { celloutsig_0_19z[9:3], celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_13z };
  assign celloutsig_0_38z = { celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_23z, celloutsig_0_14z } - { celloutsig_0_13z[5:1], celloutsig_0_37z };
  assign celloutsig_0_43z = { celloutsig_0_36z[11], celloutsig_0_34z, celloutsig_0_25z, celloutsig_0_15z, celloutsig_0_25z } - celloutsig_0_13z;
  assign celloutsig_0_17z = ~((celloutsig_0_6z[1] & celloutsig_0_6z[0]) | celloutsig_0_1z);
  always_latch
    if (!clkin_data[64]) celloutsig_0_42z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_42z = { celloutsig_0_40z, celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_1z };
  always_latch
    if (clkin_data[64]) celloutsig_0_6z = 5'h00;
    else if (!clkin_data[0]) celloutsig_0_6z = { in_data[90:88], celloutsig_0_2z, celloutsig_0_1z };
  always_latch
    if (!clkin_data[96]) celloutsig_1_0z = 7'h00;
    else if (clkin_data[32]) celloutsig_1_0z = in_data[115:109];
  always_latch
    if (clkin_data[64]) celloutsig_0_11z = 5'h00;
    else if (!clkin_data[0]) celloutsig_0_11z = { celloutsig_0_3z[3:0], celloutsig_0_9z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_15z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_15z = celloutsig_0_8z[3:1];
  always_latch
    if (!clkin_data[64]) celloutsig_0_16z = 17'h00000;
    else if (clkin_data[0]) celloutsig_0_16z = { celloutsig_0_0z[18], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_11z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_31z = 8'h00;
    else if (clkin_data[0]) celloutsig_0_31z = in_data[84:77];
  assign { out_data[128], out_data[96], out_data[38:32], out_data[6:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_84z, celloutsig_0_85z };
endmodule
