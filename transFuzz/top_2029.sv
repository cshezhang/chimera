/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  reg [4:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  reg [7:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_29z;
  wire celloutsig_0_30z;
  wire [3:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [10:0] celloutsig_0_6z;
  reg [19:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [4:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  reg [24:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [7:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_10z = ~(celloutsig_1_5z | celloutsig_1_0z);
  assign celloutsig_0_8z = ~(celloutsig_0_1z | celloutsig_0_7z[12]);
  assign celloutsig_0_15z = ~(celloutsig_0_6z[5] | celloutsig_0_8z);
  assign celloutsig_0_30z = ~(celloutsig_0_9z[1] | celloutsig_0_7z[15]);
  assign celloutsig_1_0z = ~(in_data[98] | in_data[130]);
  assign celloutsig_1_2z = in_data[117] | ~(celloutsig_1_1z[7]);
  assign celloutsig_1_4z = celloutsig_1_0z | ~(celloutsig_1_2z);
  assign celloutsig_1_13z = celloutsig_1_3z | ~(celloutsig_1_12z);
  assign celloutsig_1_19z = celloutsig_1_16z | ~(celloutsig_1_6z);
  assign celloutsig_1_16z = celloutsig_1_13z ^ celloutsig_1_9z[6];
  assign celloutsig_0_29z = celloutsig_0_19z[0] ^ celloutsig_0_1z;
  assign celloutsig_1_5z = celloutsig_1_2z == celloutsig_1_4z;
  assign celloutsig_1_12z = celloutsig_1_11z[4:1] == { celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_0z };
  assign celloutsig_1_18z = { celloutsig_1_1z[4:2], celloutsig_1_4z } == celloutsig_1_11z[3:0];
  assign celloutsig_1_9z = in_data[115:108] | { celloutsig_1_1z[5:1], celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_4z };
  assign celloutsig_1_11z = celloutsig_1_9z[6:2] | { celloutsig_1_9z[6:4], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_6z = { in_data[20:11], celloutsig_0_4z } | { celloutsig_0_3z[3:2], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_9z = { celloutsig_0_3z, celloutsig_0_4z } | { celloutsig_0_3z[3:2], celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_3z = in_data[78:75] | { in_data[16:14], celloutsig_0_1z };
  assign celloutsig_0_0z = ~^ in_data[43:38];
  assign celloutsig_1_3z = ~^ celloutsig_1_1z[20:18];
  assign celloutsig_0_4z = ~^ { in_data[15:6], celloutsig_0_0z };
  assign celloutsig_1_6z = ~^ { celloutsig_1_1z[18:16], celloutsig_1_3z };
  assign celloutsig_0_1z = ~^ in_data[8:5];
  assign celloutsig_0_16z = ~^ { celloutsig_0_9z[4:2], celloutsig_0_14z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_7z = 20'h00000;
    else if (!celloutsig_1_18z) celloutsig_0_7z = { in_data[95:88], celloutsig_0_6z, celloutsig_0_4z };
  always_latch
    if (clkin_data[32]) celloutsig_0_14z = 5'h00;
    else if (celloutsig_1_18z) celloutsig_0_14z = celloutsig_0_6z[4:0];
  always_latch
    if (!clkin_data[32]) celloutsig_0_19z = 8'h00;
    else if (celloutsig_1_18z) celloutsig_0_19z = { celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_16z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_1z = 25'h0000000;
    else if (!clkin_data[0]) celloutsig_1_1z = { in_data[171:149], celloutsig_1_0z, celloutsig_1_0z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_29z, celloutsig_0_30z };
endmodule
