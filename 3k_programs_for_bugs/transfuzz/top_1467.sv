/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [4:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire [4:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [3:0] celloutsig_0_16z;
  wire [30:0] celloutsig_0_17z;
  reg [14:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [6:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [2:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire [5:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [3:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire [3:0] celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [22:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_10z = ~(celloutsig_0_8z & in_data[3]);
  assign celloutsig_0_3z = ~celloutsig_0_0z[0];
  assign celloutsig_0_35z = ~celloutsig_0_12z;
  assign celloutsig_0_41z = ~celloutsig_0_24z;
  assign celloutsig_1_11z = ~celloutsig_1_10z;
  assign celloutsig_0_22z = ~celloutsig_0_21z;
  assign celloutsig_0_4z = ~((in_data[62] | celloutsig_0_0z[1]) & (in_data[84] | celloutsig_0_2z));
  assign celloutsig_1_18z = ~((celloutsig_1_9z | celloutsig_1_0z) & (celloutsig_1_10z | celloutsig_1_10z));
  assign celloutsig_1_4z = celloutsig_1_0z | in_data[104];
  assign celloutsig_1_8z = celloutsig_1_4z ^ celloutsig_1_7z;
  assign celloutsig_0_38z = { celloutsig_0_19z, celloutsig_0_15z, celloutsig_0_34z, celloutsig_0_8z } + { celloutsig_0_0z, celloutsig_0_19z };
  assign celloutsig_0_1z = { celloutsig_0_0z[2:1], celloutsig_0_0z } + { celloutsig_0_0z[3:2], celloutsig_0_0z };
  assign celloutsig_0_14z = { celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_8z } + { celloutsig_0_1z[6], celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_7z };
  assign celloutsig_0_17z = { celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_14z } + { celloutsig_0_14z[4:1], celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_34z = { celloutsig_0_7z, celloutsig_0_25z, celloutsig_0_22z } / { 1'h1, celloutsig_0_9z[0], celloutsig_0_24z };
  assign celloutsig_1_3z = { celloutsig_1_2z[17:8], celloutsig_1_0z } == celloutsig_1_2z[10:0];
  assign celloutsig_0_21z = { celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_5z } == celloutsig_0_17z[12:8];
  assign celloutsig_0_6z = celloutsig_0_5z === in_data[69];
  assign celloutsig_1_10z = { in_data[142:132], celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_4z } > celloutsig_1_2z[13:0];
  assign celloutsig_0_8z = { in_data[37:31], celloutsig_0_0z, celloutsig_0_3z } > { celloutsig_0_1z[4:0], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_31z = { celloutsig_0_0z[4:1], celloutsig_0_7z } > { in_data[27:25], celloutsig_0_3z, celloutsig_0_12z };
  assign celloutsig_0_42z = { celloutsig_0_14z[4], celloutsig_0_2z, celloutsig_0_40z } <= { celloutsig_0_24z, celloutsig_0_30z, celloutsig_0_41z };
  assign celloutsig_0_40z = { celloutsig_0_16z, celloutsig_0_28z, celloutsig_0_8z, celloutsig_0_24z, celloutsig_0_31z, celloutsig_0_37z, celloutsig_0_35z } && { celloutsig_0_14z[4:1], celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_0_7z = celloutsig_0_1z[5:2] && { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_24z = { celloutsig_0_20z, celloutsig_0_20z, celloutsig_0_15z, celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_23z, celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_6z } && { celloutsig_0_22z, celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_23z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_2z };
  assign celloutsig_0_19z = ! { celloutsig_0_18z[13:5], celloutsig_0_4z };
  assign celloutsig_0_20z = ! { in_data[10:8], celloutsig_0_1z };
  assign celloutsig_0_23z = ! { celloutsig_0_17z[27:6], celloutsig_0_13z, celloutsig_0_22z };
  assign celloutsig_0_30z = ! celloutsig_0_0z[4:2];
  assign celloutsig_0_46z = { celloutsig_0_38z[5:3], celloutsig_0_12z } || { celloutsig_0_40z, celloutsig_0_24z, celloutsig_0_4z, celloutsig_0_30z };
  assign celloutsig_0_15z = { celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_8z } || { celloutsig_0_14z[4], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_3z };
  assign celloutsig_1_9z = in_data[166] & ~(celloutsig_1_0z);
  assign celloutsig_0_2z = in_data[44] & ~(celloutsig_0_0z[3]);
  assign celloutsig_0_0z = in_data[17:13] % { 1'h1, in_data[88:85] };
  assign celloutsig_1_2z = { in_data[190:169], celloutsig_1_1z } % { 1'h1, in_data[117:104], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, in_data[96] };
  assign celloutsig_1_15z = { celloutsig_1_2z[14:12], celloutsig_1_13z } % { 1'h1, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_1_0z = in_data[107:101] != in_data[175:169];
  assign celloutsig_0_45z = - { celloutsig_0_16z[3:2], celloutsig_0_42z, celloutsig_0_19z };
  assign celloutsig_0_16z = - { celloutsig_0_13z, celloutsig_0_4z };
  assign celloutsig_0_5z = | celloutsig_0_1z[6:2];
  assign celloutsig_0_28z = | { celloutsig_0_13z[0], celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_8z };
  assign celloutsig_1_1z = in_data[131] & in_data[134];
  assign celloutsig_1_7z = in_data[189] & celloutsig_1_0z;
  assign celloutsig_1_13z = celloutsig_1_11z & celloutsig_1_8z;
  assign celloutsig_1_19z = celloutsig_1_11z & celloutsig_1_15z[1];
  assign celloutsig_0_11z = in_data[73] & in_data[1];
  assign celloutsig_0_25z = celloutsig_0_21z & celloutsig_0_7z;
  assign celloutsig_0_9z = { in_data[41:40], celloutsig_0_5z } << celloutsig_0_0z[2:0];
  assign celloutsig_0_13z = { in_data[25], celloutsig_0_6z, celloutsig_0_10z } << { celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_4z };
  assign celloutsig_0_37z = ~((celloutsig_0_18z[12] & celloutsig_0_34z[2]) | celloutsig_0_22z);
  assign celloutsig_0_12z = ~((celloutsig_0_7z & celloutsig_0_4z) | celloutsig_0_5z);
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_18z = 15'h0000;
    else if (clkin_data[0]) celloutsig_0_18z = { celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_4z };
  assign { out_data[128], out_data[96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_45z, celloutsig_0_46z };
endmodule
