/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [5:0] _00_;
  wire celloutsig_0_0z;
  wire [8:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [16:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [7:0] celloutsig_0_1z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [9:0] celloutsig_0_6z;
  wire celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [4:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [3:0] celloutsig_1_15z;
  wire [2:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [14:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [2:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [15:0] celloutsig_1_6z;
  wire [9:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_18z = ~(celloutsig_1_11z | celloutsig_1_15z[0]);
  assign celloutsig_0_8z = ~(celloutsig_0_0z | celloutsig_0_4z);
  assign celloutsig_1_14z = ~(celloutsig_1_1z | celloutsig_1_6z[2]);
  always_ff @(posedge celloutsig_1_19z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _00_ <= 6'h00;
    else _00_ <= { celloutsig_0_6z[6:3], celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_15z = celloutsig_1_0z ? { celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_10z, celloutsig_1_14z } : { celloutsig_1_13z[4:3], celloutsig_1_5z, 1'h0 };
  assign celloutsig_0_6z = in_data[4] ? in_data[61:52] : { celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_0z };
  assign celloutsig_0_13z = celloutsig_0_3z ? { celloutsig_0_10z[7:0], celloutsig_0_4z, _00_, celloutsig_0_0z, 1'h1 } : { celloutsig_0_9z[3:2], celloutsig_0_5z, _00_, celloutsig_0_1z };
  assign celloutsig_0_1z = in_data[37] ? in_data[62:55] : { in_data[57:54], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_7z = celloutsig_1_5z ? { in_data[173], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_4z } : { in_data[121:115], celloutsig_1_3z, celloutsig_1_4z, 1'h0 };
  assign celloutsig_1_19z = { celloutsig_1_7z[7:1], celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_17z, celloutsig_1_0z, celloutsig_1_10z, celloutsig_1_11z } | { celloutsig_1_6z[14:3], celloutsig_1_11z, celloutsig_1_12z, celloutsig_1_0z };
  assign celloutsig_0_10z = { in_data[69:63], celloutsig_0_0z, celloutsig_0_3z } | { celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_1_2z = in_data[109:107] | { in_data[190:189], celloutsig_1_1z };
  assign celloutsig_1_6z = { in_data[159:146], celloutsig_1_0z, celloutsig_1_5z } | { in_data[154:148], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_3z = celloutsig_0_1z[0] & in_data[65];
  assign celloutsig_1_9z = celloutsig_1_4z & celloutsig_1_3z;
  assign celloutsig_1_10z = celloutsig_1_3z & celloutsig_1_0z;
  assign celloutsig_0_4z = | { celloutsig_0_3z, celloutsig_0_1z[5:0] };
  assign celloutsig_1_4z = | { celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_12z = | { celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z, in_data[168:161] };
  assign celloutsig_1_0z = ^ in_data[117:115];
  assign celloutsig_1_1z = ^ { in_data[159:153], celloutsig_1_0z };
  assign celloutsig_1_3z = ^ { in_data[149:136], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_17z = { celloutsig_1_2z[2:1], celloutsig_1_1z } ^ celloutsig_1_7z[9:7];
  assign celloutsig_0_9z = { in_data[32:29], celloutsig_0_2z } ^ { celloutsig_0_6z[6:4], celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_1_13z = { celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_8z } ^ { celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_2z };
  assign celloutsig_0_0z = ~((in_data[73] & in_data[56]) | in_data[82]);
  assign celloutsig_0_5z = ~((celloutsig_0_3z & celloutsig_0_2z) | celloutsig_0_2z);
  assign celloutsig_0_11z = ~((celloutsig_0_0z & celloutsig_0_8z) | celloutsig_0_0z);
  assign celloutsig_0_14z = ~((celloutsig_0_11z & celloutsig_0_10z[3]) | celloutsig_0_8z);
  assign celloutsig_1_5z = ~((celloutsig_1_2z[2] & in_data[124]) | celloutsig_1_4z);
  assign celloutsig_1_8z = ~((celloutsig_1_1z & celloutsig_1_4z) | celloutsig_1_7z[0]);
  assign celloutsig_1_11z = ~((celloutsig_1_1z & celloutsig_1_9z) | celloutsig_1_10z);
  assign celloutsig_0_2z = ~((in_data[64] & celloutsig_0_1z[3]) | celloutsig_0_1z[3]);
  assign { out_data[128], out_data[110:96], out_data[48:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_13z, celloutsig_0_14z };
endmodule
