/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  reg [7:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_16z;
  wire [2:0] celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [15:0] celloutsig_0_22z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [10:0] celloutsig_0_5z;
  wire [2:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [6:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [2:0] celloutsig_1_12z;
  wire [3:0] celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [3:0] celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire [10:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [16:0] celloutsig_1_6z;
  wire [6:0] celloutsig_1_7z;
  wire [2:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = ~((celloutsig_0_2z | celloutsig_0_3z) & (in_data[4] | celloutsig_0_0z[0]));
  assign celloutsig_0_16z = ~((celloutsig_0_11z[2] | celloutsig_0_6z[1]) & (celloutsig_0_9z | celloutsig_0_12z));
  assign celloutsig_0_21z = ~((celloutsig_0_5z[3] | celloutsig_0_18z[0]) & (celloutsig_0_13z | celloutsig_0_1z));
  assign celloutsig_0_9z = celloutsig_0_6z[2] | in_data[58];
  assign celloutsig_0_12z = celloutsig_0_10z | celloutsig_0_4z;
  assign celloutsig_1_0z = in_data[111] | in_data[134];
  assign celloutsig_0_3z = celloutsig_0_1z | in_data[75];
  assign celloutsig_0_20z = celloutsig_0_6z[0] ^ celloutsig_0_8z[5];
  assign celloutsig_1_9z = celloutsig_1_7z[5:3] & celloutsig_1_2z[3:1];
  assign celloutsig_0_6z = { in_data[30:29], celloutsig_0_1z } & celloutsig_0_0z;
  assign celloutsig_0_8z = { celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_0z } & { in_data[74], celloutsig_0_0z, celloutsig_0_6z };
  assign celloutsig_1_7z = { celloutsig_1_4z[10:5], celloutsig_1_5z } & { in_data[107:102], celloutsig_1_5z };
  assign celloutsig_1_19z = { celloutsig_1_13z[2:1], celloutsig_1_15z } >= { celloutsig_1_13z[3], celloutsig_1_5z, celloutsig_1_15z };
  assign celloutsig_0_7z = { in_data[43:40], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_6z } >= { in_data[95:85], celloutsig_0_4z };
  assign celloutsig_0_10z = { celloutsig_0_6z, celloutsig_0_6z } >= celloutsig_0_5z[7:2];
  assign celloutsig_1_10z = celloutsig_1_7z[6:4] && in_data[136:134];
  assign celloutsig_1_1z = { in_data[108:106], celloutsig_1_0z } && { in_data[122:120], celloutsig_1_0z };
  assign celloutsig_1_5z = in_data[137:131] && { celloutsig_1_2z[2:0], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_13z = celloutsig_0_2z & ~(in_data[11]);
  assign celloutsig_1_2z = in_data[176:173] % { 1'h1, in_data[190:188] };
  assign celloutsig_1_12z = celloutsig_1_5z ? { celloutsig_1_2z[1:0], celloutsig_1_0z } : { celloutsig_1_9z[2:1], celloutsig_1_10z };
  assign celloutsig_0_22z = celloutsig_0_5z[1] ? { celloutsig_0_5z[7:2], 1'h1, celloutsig_0_6z, celloutsig_0_18z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_20z } : { in_data[66:56], celloutsig_0_20z, celloutsig_0_16z, celloutsig_0_0z };
  assign celloutsig_1_15z = in_data[105] & celloutsig_1_5z;
  assign celloutsig_1_18z = | { celloutsig_1_15z, celloutsig_1_12z, celloutsig_1_7z };
  assign celloutsig_0_1z = ^ in_data[87:57];
  assign celloutsig_0_2z = ^ in_data[30:24];
  assign celloutsig_0_18z = celloutsig_0_11z[5:3] >> { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_12z };
  assign celloutsig_1_3z = celloutsig_1_2z[2:0] >> { in_data[184:183], celloutsig_1_0z };
  assign celloutsig_0_0z = in_data[44:42] ~^ in_data[85:83];
  assign celloutsig_0_5z = { celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_1z } ^ { in_data[56:47], celloutsig_0_3z };
  always_latch
    if (celloutsig_1_19z) celloutsig_0_11z = 8'h00;
    else if (!clkin_data[0]) celloutsig_0_11z = { in_data[41:35], celloutsig_0_9z };
  assign celloutsig_1_4z[10:4] = in_data[151:145] ~^ { celloutsig_1_2z[3], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z };
  assign { celloutsig_1_6z[3:0], celloutsig_1_6z[5], celloutsig_1_6z[16:6] } = ~ { celloutsig_1_2z, celloutsig_1_0z, in_data[117:107] };
  assign celloutsig_1_13z[3:1] = celloutsig_1_4z[6:4] & { celloutsig_1_6z[13], celloutsig_1_0z, celloutsig_1_15z };
  assign celloutsig_1_13z[0] = celloutsig_1_15z;
  assign celloutsig_1_4z[3:0] = 4'hf;
  assign celloutsig_1_6z[4] = celloutsig_1_6z[5];
  assign { out_data[128], out_data[96], out_data[32], out_data[15:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_21z, celloutsig_0_22z };
endmodule
