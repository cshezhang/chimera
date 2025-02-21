/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [34:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [13:0] celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  reg [41:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [5:0] celloutsig_0_19z;
  wire [15:0] celloutsig_0_1z;
  wire [12:0] celloutsig_0_21z;
  wire [3:0] celloutsig_0_26z;
  wire [3:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire [10:0] celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire [3:0] celloutsig_0_35z;
  wire [7:0] celloutsig_0_36z;
  wire [8:0] celloutsig_0_3z;
  wire [3:0] celloutsig_0_4z;
  wire [3:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire [3:0] celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [2:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [18:0] celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [9:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_18z = !(celloutsig_1_0z[1] ? celloutsig_1_9z : celloutsig_1_0z[0]);
  assign celloutsig_1_9z = ~celloutsig_1_2z[1];
  assign celloutsig_1_19z = ~celloutsig_1_11z;
  assign celloutsig_0_33z = ~((celloutsig_0_7z | celloutsig_0_17z) & (celloutsig_0_1z[7] | celloutsig_0_6z));
  assign celloutsig_0_10z = ~((celloutsig_0_6z | celloutsig_0_0z[22]) & (celloutsig_0_8z[4] | celloutsig_0_2z));
  assign celloutsig_0_12z = ~((celloutsig_0_2z | in_data[44]) & (celloutsig_0_5z[0] | celloutsig_0_6z));
  assign celloutsig_1_3z = celloutsig_1_0z[2] | celloutsig_1_2z[1];
  assign celloutsig_0_6z = celloutsig_0_4z[1] | in_data[88];
  assign celloutsig_1_11z = celloutsig_1_8z[9] ^ celloutsig_1_2z[2];
  assign celloutsig_0_7z = celloutsig_0_5z[1] ^ celloutsig_0_2z;
  assign celloutsig_0_17z = celloutsig_0_1z[10] ^ celloutsig_0_10z;
  assign celloutsig_0_28z = celloutsig_0_9z + celloutsig_0_16z[37:34];
  assign celloutsig_1_6z = { celloutsig_1_4z[10:7], celloutsig_1_0z, celloutsig_1_1z } && { celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_1_0z = in_data[116:114] % { 1'h1, in_data[128:127] };
  assign celloutsig_0_31z = { celloutsig_0_4z[1:0], celloutsig_0_3z } % { 1'h1, celloutsig_0_26z, celloutsig_0_8z, celloutsig_0_10z };
  assign celloutsig_0_35z = celloutsig_0_28z * celloutsig_0_31z[7:4];
  assign celloutsig_0_13z[13:4] = celloutsig_0_1z[0] ? { celloutsig_0_4z[2], celloutsig_0_3z } : celloutsig_0_1z[12:3];
  assign celloutsig_1_2z = - celloutsig_1_0z;
  assign celloutsig_0_3z = in_data[70:62] | celloutsig_0_0z[28:20];
  assign celloutsig_0_4z = celloutsig_0_1z[7:4] | celloutsig_0_1z[8:5];
  assign celloutsig_1_1z = celloutsig_1_0z[0] & celloutsig_1_0z[2];
  assign celloutsig_0_11z = celloutsig_0_5z[1] & celloutsig_0_6z;
  assign celloutsig_0_2z = celloutsig_0_0z[16] & in_data[60];
  assign celloutsig_1_5z = celloutsig_1_2z >> { in_data[181:180], celloutsig_1_3z };
  assign celloutsig_1_8z = { celloutsig_1_4z[10:9], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_3z } >> { in_data[145:140], celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_0_26z = celloutsig_0_19z[5:2] >> { celloutsig_0_21z[11:9], celloutsig_0_6z };
  assign celloutsig_0_8z = celloutsig_0_1z[12:8] >>> in_data[64:60];
  assign celloutsig_0_0z = in_data[89:55] - in_data[88:54];
  assign celloutsig_0_36z = { celloutsig_0_31z[3:1], celloutsig_0_33z, celloutsig_0_5z } - celloutsig_0_13z[13:6];
  assign celloutsig_0_5z = { celloutsig_0_0z[13:11], celloutsig_0_2z } - { celloutsig_0_0z[13:11], celloutsig_0_2z };
  assign celloutsig_0_9z = celloutsig_0_3z[5:2] - celloutsig_0_0z[23:20];
  assign celloutsig_0_1z = in_data[34:19] - in_data[21:6];
  assign celloutsig_0_21z = { celloutsig_0_3z[7:2], celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_2z, celloutsig_0_17z } - { celloutsig_0_0z[19:8], celloutsig_0_10z };
  assign celloutsig_0_14z = celloutsig_0_8z[3:0] ~^ { celloutsig_0_5z[3], celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_7z };
  assign celloutsig_0_19z = { celloutsig_0_1z[13:9], celloutsig_0_6z } ~^ { in_data[19:18], celloutsig_0_5z };
  always_latch
    if (!celloutsig_1_11z) celloutsig_0_16z = 42'h00000000000;
    else if (clkin_data[0]) celloutsig_0_16z = { celloutsig_0_1z[7:6], celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_13z[13:4], celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_14z };
  assign { celloutsig_1_4z[6:5], celloutsig_1_4z[2:0], celloutsig_1_4z[3], celloutsig_1_4z[18:7] } = { celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z, in_data[131:120] } | { celloutsig_1_2z[0], celloutsig_1_1z, celloutsig_1_0z[1:0], celloutsig_1_1z, celloutsig_1_0z[2], in_data[172:169], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z[2:1] };
  assign celloutsig_0_13z[3:0] = celloutsig_0_5z;
  assign celloutsig_1_4z[4] = celloutsig_1_4z[5];
  assign { out_data[128], out_data[96], out_data[35:32], out_data[7:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_35z, celloutsig_0_36z };
endmodule
