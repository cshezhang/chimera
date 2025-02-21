/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [11:0] celloutsig_0_1z;
  wire [3:0] celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  reg [3:0] celloutsig_0_5z;
  wire celloutsig_1_0z;
  wire [3:0] celloutsig_1_10z;
  reg [11:0] celloutsig_1_11z;
  wire [12:0] celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [6:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [7:0] celloutsig_1_4z;
  wire [8:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [8:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = in_data[142:125] <= in_data[131:114];
  assign celloutsig_1_2z = in_data[167:143] <= { in_data[130:113], celloutsig_1_1z };
  assign celloutsig_1_3z = in_data[190:163] <= { in_data[124:98], celloutsig_1_2z };
  assign celloutsig_0_0z = in_data[78:75] || in_data[54:51];
  assign celloutsig_0_4z = { celloutsig_0_1z[11:9], celloutsig_0_3z, celloutsig_0_3z } || in_data[69:65];
  assign celloutsig_1_6z = { celloutsig_1_1z[6:4], celloutsig_1_1z } || { celloutsig_1_1z[1:0], celloutsig_1_4z };
  assign celloutsig_1_7z = { celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_3z } || { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_18z = celloutsig_1_14z[12:9] || celloutsig_1_1z[6:3];
  assign celloutsig_1_19z = in_data[166:161] || { celloutsig_1_9z[4:1], celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_3z = celloutsig_0_1z[0] & ~(celloutsig_0_1z[3]);
  assign celloutsig_1_4z = - { in_data[132:128], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_5z = - { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_1z = - { in_data[32:23], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_10z = - { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_6z };
  assign celloutsig_0_2z = - celloutsig_0_1z[9:6];
  assign celloutsig_1_1z = { in_data[176:172], celloutsig_1_0z, celloutsig_1_0z } >> in_data[109:103];
  assign celloutsig_1_9z = in_data[111:103] >> celloutsig_1_5z;
  assign celloutsig_1_14z = { celloutsig_1_9z[4:3], celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_5z } >> { celloutsig_1_1z[2], celloutsig_1_11z };
  always_latch
    if (clkin_data[32]) celloutsig_0_5z = 4'h0;
    else if (celloutsig_1_18z) celloutsig_0_5z = celloutsig_0_2z;
  always_latch
    if (!clkin_data[64]) celloutsig_1_11z = 12'h000;
    else if (!clkin_data[0]) celloutsig_1_11z = { in_data[178:176], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_10z };
  assign { out_data[128], out_data[96], out_data[32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_4z, celloutsig_0_5z };
endmodule
