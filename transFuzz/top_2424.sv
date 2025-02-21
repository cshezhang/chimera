/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [6:0] celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  reg [3:0] celloutsig_0_12z;
  wire [13:0] celloutsig_0_13z;
  reg [9:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [11:0] celloutsig_0_17z;
  wire [10:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [12:0] celloutsig_0_26z;
  wire celloutsig_0_2z;
  wire celloutsig_0_35z;
  wire [2:0] celloutsig_0_3z;
  reg [6:0] celloutsig_0_4z;
  reg [10:0] celloutsig_0_56z;
  wire [4:0] celloutsig_0_5z;
  wire [4:0] celloutsig_0_65z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [8:0] celloutsig_0_8z;
  wire [3:0] celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [5:0] celloutsig_1_14z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [8:0] celloutsig_1_2z;
  wire [8:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [13:0] celloutsig_1_6z;
  wire [13:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_19z = !(celloutsig_1_2z[8] ? celloutsig_1_14z[4] : celloutsig_1_14z[1]);
  assign celloutsig_1_4z = ~(celloutsig_1_1z | celloutsig_1_2z[8]);
  assign celloutsig_1_5z = ~(celloutsig_1_3z[6] | in_data[97]);
  assign celloutsig_0_8z = { celloutsig_0_1z[3:2], celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_6z } + { celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_3z = { celloutsig_0_0z[1:0], celloutsig_0_2z } + in_data[38:36];
  assign celloutsig_1_0z = in_data[184:181] & in_data[109:106];
  assign celloutsig_1_14z = { in_data[100:96], celloutsig_1_5z } & { celloutsig_1_2z[5:2], celloutsig_1_13z, celloutsig_1_8z };
  assign celloutsig_0_5z = { celloutsig_0_4z[3:2], celloutsig_0_3z } / { 1'h1, celloutsig_0_1z[3:0] };
  assign celloutsig_0_65z = celloutsig_0_56z[8:4] / { 1'h1, celloutsig_0_13z[10:7] };
  assign celloutsig_1_18z = celloutsig_1_7z[13:10] / { 1'h1, celloutsig_1_2z[1:0], celloutsig_1_10z };
  assign celloutsig_0_6z = in_data[60:52] == { in_data[77:74], celloutsig_0_5z };
  assign celloutsig_1_1z = in_data[162:158] == { in_data[120], celloutsig_1_0z };
  assign celloutsig_1_13z = { in_data[147:134], celloutsig_1_12z } == in_data[131:117];
  assign celloutsig_0_20z = { celloutsig_0_8z[4:1], celloutsig_0_7z } == { in_data[10:7], celloutsig_0_19z };
  assign celloutsig_0_24z = { celloutsig_0_21z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_7z } == { celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_19z };
  assign celloutsig_0_25z = { in_data[50:48], celloutsig_0_15z } == { celloutsig_0_10z, celloutsig_0_24z };
  assign celloutsig_0_19z = { celloutsig_0_0z[5:3], celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_16z } === { celloutsig_0_5z[3:0], celloutsig_0_0z };
  assign celloutsig_1_8z = celloutsig_1_3z[2:0] && celloutsig_1_3z[2:0];
  assign celloutsig_0_16z = { in_data[63], celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_12z } && { in_data[51:44], celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_35z = { celloutsig_0_13z[13], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_22z } < { celloutsig_0_8z[8:3], celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_21z };
  assign celloutsig_0_7z = { celloutsig_0_1z, celloutsig_0_6z } < { celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_0_11z = celloutsig_0_1z[3] & ~(celloutsig_0_7z);
  assign celloutsig_0_17z = in_data[61:50] % { 1'h1, celloutsig_0_1z[3:2], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_15z };
  assign out_data[8:1] = celloutsig_0_9z[2] ? { celloutsig_0_19z, celloutsig_0_1z, celloutsig_0_20z, celloutsig_0_19z } : celloutsig_0_18z[8:1];
  assign celloutsig_0_26z = - { celloutsig_0_0z[5:1], celloutsig_0_25z, celloutsig_0_0z };
  assign celloutsig_0_10z = ~ celloutsig_0_1z[2:0];
  assign celloutsig_1_10z = | { celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_0_21z = | { celloutsig_0_17z[8:5], celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_15z = ^ { celloutsig_0_14z[5:0], celloutsig_0_11z };
  assign celloutsig_0_22z = ^ { celloutsig_0_12z[1:0], celloutsig_0_6z, celloutsig_0_20z, celloutsig_0_16z, celloutsig_0_9z };
  assign celloutsig_0_2z = ^ celloutsig_0_0z[2:0];
  assign celloutsig_0_0z = in_data[7:1] >> in_data[13:7];
  assign celloutsig_0_13z = { in_data[59], celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_6z } >> { in_data[22:18], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_1_2z = in_data[168:160] - { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_3z = { in_data[190:187], celloutsig_1_1z, celloutsig_1_0z } - in_data[123:115];
  assign celloutsig_0_9z = { celloutsig_0_0z[3:1], celloutsig_0_7z } - celloutsig_0_1z[3:0];
  assign celloutsig_0_1z = in_data[11:7] - celloutsig_0_0z[6:2];
  assign celloutsig_1_6z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_2z } ^ { celloutsig_1_2z[7:5], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_5z };
  assign celloutsig_1_7z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_2z } ^ { in_data[112:103], celloutsig_1_0z };
  assign celloutsig_0_18z = { celloutsig_0_8z[5:1], celloutsig_0_3z, celloutsig_0_3z } ^ { celloutsig_0_0z[5:0], celloutsig_0_9z, celloutsig_0_15z };
  always_latch
    if (clkin_data[0]) celloutsig_0_4z = 7'h00;
    else if (!celloutsig_1_18z[0]) celloutsig_0_4z = in_data[47:41];
  always_latch
    if (!clkin_data[0]) celloutsig_0_56z = 11'h000;
    else if (!celloutsig_1_18z[0]) celloutsig_0_56z = { celloutsig_0_26z[12:4], celloutsig_0_35z, celloutsig_0_16z };
  always_latch
    if (!clkin_data[0]) celloutsig_0_12z = 4'h0;
    else if (!celloutsig_1_18z[0]) celloutsig_0_12z = { celloutsig_0_0z[3], celloutsig_0_3z };
  always_latch
    if (clkin_data[0]) celloutsig_0_14z = 10'h000;
    else if (celloutsig_1_18z[0]) celloutsig_0_14z = { celloutsig_0_13z[5:0], celloutsig_0_7z, celloutsig_0_3z };
  assign celloutsig_1_12z = ~((celloutsig_1_5z & celloutsig_1_6z[3]) | (celloutsig_1_8z & celloutsig_1_7z[5]));
  assign { out_data[131:128], out_data[96], out_data[36:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_65z, celloutsig_0_15z };
endmodule
