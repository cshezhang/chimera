/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  reg [2:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [7:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [2:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [16:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [5:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
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
  assign celloutsig_1_7z = ~((celloutsig_1_5z | celloutsig_1_0z) & celloutsig_1_0z);
  assign celloutsig_0_5z = ~((celloutsig_0_1z | celloutsig_0_3z) & celloutsig_0_1z);
  assign celloutsig_0_12z = ~((celloutsig_0_0z | celloutsig_0_11z[2]) & celloutsig_0_10z);
  assign celloutsig_0_15z = ~((celloutsig_0_5z | celloutsig_0_3z) & celloutsig_0_12z);
  assign celloutsig_0_19z = ~((celloutsig_0_5z | celloutsig_0_1z) & celloutsig_0_11z[0]);
  assign celloutsig_0_28z = ~((celloutsig_0_11z[1] | celloutsig_0_22z) & celloutsig_0_24z[0]);
  assign celloutsig_1_2z = ~((in_data[171] | in_data[111]) & in_data[162]);
  assign celloutsig_1_18z = ~((celloutsig_1_13z | celloutsig_1_3z) & (celloutsig_1_6z | celloutsig_1_4z));
  assign celloutsig_0_27z = ~((celloutsig_0_10z | celloutsig_0_15z) & (celloutsig_0_0z | celloutsig_0_13z[7]));
  assign celloutsig_1_8z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_0z } == { in_data[129:120], celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_1_14z = { celloutsig_1_7z, celloutsig_1_13z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_12z, celloutsig_1_3z, celloutsig_1_11z, celloutsig_1_4z } == { celloutsig_1_5z, celloutsig_1_12z, celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_12z, celloutsig_1_7z };
  assign celloutsig_0_25z = { celloutsig_0_13z[3:1], celloutsig_0_13z[1], celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_24z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_15z } == { celloutsig_0_11z[1:0], celloutsig_0_15z, celloutsig_0_23z, celloutsig_0_23z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_1_4z = { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z } <= { celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_1_10z = { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_1z } <= { in_data[111], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_9z, celloutsig_1_3z };
  assign celloutsig_1_13z = { celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_1z } <= { celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_10z };
  assign celloutsig_0_10z = { in_data[7:4], celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_1z } <= { in_data[1:0], celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_14z = { celloutsig_0_13z[3], celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_4z } <= { in_data[77:68], celloutsig_0_4z };
  assign celloutsig_0_21z = { celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_6z } <= { celloutsig_0_6z[5:1], celloutsig_0_11z, celloutsig_0_11z };
  assign celloutsig_1_3z = { in_data[173:170], celloutsig_1_0z } <= in_data[169:165];
  assign celloutsig_1_9z = { celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_6z } < { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_5z };
  assign celloutsig_0_1z = in_data[62:59] < in_data[16:13];
  assign celloutsig_0_17z = { celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_0z } < { in_data[78:72], celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_9z, celloutsig_0_14z };
  assign celloutsig_1_1z = in_data[155:144] < { in_data[170:160], celloutsig_1_0z };
  assign celloutsig_0_24z = ~ { celloutsig_0_23z, celloutsig_0_2z, celloutsig_0_5z };
  assign celloutsig_0_0z = ~^ in_data[89:77];
  assign celloutsig_1_19z = ~^ { celloutsig_1_14z, celloutsig_1_13z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_9z };
  assign celloutsig_0_7z = ~^ { celloutsig_0_6z[5], celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_18z = ~^ { in_data[82:80], celloutsig_0_4z, celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_12z, celloutsig_0_14z, celloutsig_0_10z };
  assign celloutsig_0_22z = ~^ celloutsig_0_13z[5:1];
  assign celloutsig_0_23z = ~^ { celloutsig_0_6z[1], celloutsig_0_1z, celloutsig_0_22z, celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_16z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_3z, celloutsig_0_22z, celloutsig_0_21z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_3z };
  assign celloutsig_0_4z = ^ { in_data[48:35], celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_1_5z = ^ in_data[132:123];
  assign celloutsig_1_6z = ^ { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_1_11z = ^ { in_data[156:142], celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_7z };
  assign celloutsig_1_12z = ^ { in_data[147:144], celloutsig_1_3z, celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_11z, celloutsig_1_10z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_11z };
  assign celloutsig_0_8z = ^ in_data[93:84];
  assign celloutsig_0_9z = ^ { in_data[42:38], celloutsig_0_8z };
  assign celloutsig_0_16z = ^ { celloutsig_0_13z[6:1], celloutsig_0_13z[1], celloutsig_0_15z };
  assign celloutsig_0_2z = ^ { in_data[38:36], celloutsig_0_0z };
  assign celloutsig_0_3z = ^ { in_data[32:31], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_1_0z = ^ in_data[178:173];
  assign celloutsig_0_6z = { in_data[37], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_5z } <<< { in_data[25:24], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_1z };
  assign celloutsig_0_29z = { celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_19z, celloutsig_0_27z, celloutsig_0_11z } <<< { in_data[57:55], celloutsig_0_18z, celloutsig_0_21z, celloutsig_0_5z, celloutsig_0_23z, celloutsig_0_24z, celloutsig_0_21z, celloutsig_0_25z, celloutsig_0_28z, celloutsig_0_28z, celloutsig_0_28z, celloutsig_0_18z, celloutsig_0_22z };
  always_latch
    if (clkin_data[32]) celloutsig_0_11z = 3'h0;
    else if (celloutsig_1_19z) celloutsig_0_11z = { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_8z };
  assign { celloutsig_0_13z[1], celloutsig_0_13z[7:2] } = ~ { celloutsig_0_8z, celloutsig_0_6z[4:0], celloutsig_0_0z };
  assign { out_data[9], out_data[10], out_data[3], out_data[5], out_data[2], out_data[8], out_data[0], out_data[7] } = ~ { celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_22z, celloutsig_0_19z, celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_13z[0] = celloutsig_0_13z[1];
  assign { out_data[128], out_data[96], out_data[48:32], out_data[6], out_data[4], out_data[1] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_29z, out_data[7], out_data[7], out_data[7] };
endmodule
