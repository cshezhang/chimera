/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [15:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [8:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire [14:0] celloutsig_0_17z;
  wire [6:0] celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_2z;
  reg [14:0] celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire [7:0] celloutsig_0_35z;
  reg [6:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [17:0] celloutsig_0_5z;
  wire [36:0] celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [10:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [14:0] celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire [2:0] celloutsig_1_14z;
  wire [8:0] celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [15:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [11:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [3:0] celloutsig_1_7z;
  wire [2:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_17z = ~(celloutsig_1_7z[3] & celloutsig_1_11z[0]);
  assign celloutsig_0_6z = { in_data[29:25], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z } + { celloutsig_0_5z[10:0], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_15z = { celloutsig_0_3z[2:0], celloutsig_0_12z, celloutsig_0_10z } + { celloutsig_0_9z[9:6], celloutsig_0_10z };
  assign celloutsig_1_1z = { in_data[143:129], celloutsig_1_0z } & { in_data[176:163], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_7z = { celloutsig_0_3z[5:4], celloutsig_0_1z } & { celloutsig_0_3z[6:5], celloutsig_0_0z };
  assign celloutsig_0_11z = celloutsig_0_6z[15:0] & { celloutsig_0_6z[26:12], celloutsig_0_1z };
  assign celloutsig_1_10z = { celloutsig_1_1z[0], celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_0z } / { 1'h1, in_data[138:133], celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_8z };
  assign celloutsig_0_4z = { in_data[48:44], celloutsig_0_0z, celloutsig_0_2z } === { in_data[10:5], celloutsig_0_1z };
  assign celloutsig_0_12z = { celloutsig_0_6z[4:1], celloutsig_0_0z } === { celloutsig_0_5z[7:4], celloutsig_0_2z };
  assign celloutsig_1_18z = { celloutsig_1_17z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_5z } > { celloutsig_1_16z[6:1], celloutsig_1_7z };
  assign celloutsig_1_4z = in_data[119:117] <= celloutsig_1_1z[13:11];
  assign celloutsig_0_1z = { in_data[40:14], celloutsig_0_0z, celloutsig_0_0z } <= { in_data[65:39], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_14z = { celloutsig_0_5z[15:5], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_2z } <= { celloutsig_0_11z[15:2], celloutsig_0_13z };
  assign celloutsig_1_0z = ! in_data[173:167];
  assign celloutsig_1_2z = ! celloutsig_1_1z[11:6];
  assign celloutsig_0_34z = ! { celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_1_9z = celloutsig_1_7z[1] & ~(in_data[185]);
  assign celloutsig_0_13z = { celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_8z } % { 1'h1, in_data[24:18], celloutsig_0_4z };
  assign celloutsig_1_11z = { celloutsig_1_7z[2:0], celloutsig_1_5z } % { 1'h1, celloutsig_1_1z[11:9] };
  assign celloutsig_1_14z = celloutsig_1_10z[5:3] % { 1'h1, celloutsig_1_11z[2:1] };
  assign celloutsig_0_9z = ~ { in_data[94:88], celloutsig_0_1z, celloutsig_0_7z };
  assign celloutsig_1_5z = ~^ { celloutsig_1_3z[10], celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_19z = ~^ { celloutsig_1_14z[1], celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_0_10z = ~^ in_data[87:82];
  assign celloutsig_0_21z = ~^ { celloutsig_0_11z[4:1], celloutsig_0_8z, celloutsig_0_4z };
  assign celloutsig_0_0z = ^ in_data[76:64];
  assign celloutsig_1_6z = ^ { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_2z = ^ { in_data[32:28], celloutsig_0_0z };
  assign celloutsig_1_7z = { celloutsig_1_1z[4:3], celloutsig_1_5z, celloutsig_1_0z } << celloutsig_1_3z[9:6];
  assign celloutsig_0_5z = { in_data[38:28], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_1z } << { in_data[3:2], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_16z = celloutsig_0_15z[3:1] << celloutsig_0_13z[2:0];
  assign celloutsig_0_17z = { celloutsig_0_5z[13:0], celloutsig_0_14z } << { celloutsig_0_11z[6], celloutsig_0_15z, celloutsig_0_13z };
  assign celloutsig_1_3z = { in_data[135:125], celloutsig_1_2z } >> celloutsig_1_1z[12:1];
  assign celloutsig_1_16z = { in_data[167:160], celloutsig_1_6z } >> { celloutsig_1_3z[9:2], celloutsig_1_6z };
  assign celloutsig_0_18z = { celloutsig_0_5z[5:0], celloutsig_0_4z } >> celloutsig_0_17z[6:0];
  assign celloutsig_1_8z = in_data[186:184] - { celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_0_35z = in_data[69:62] - { celloutsig_0_32z[8:2], celloutsig_0_21z };
  assign celloutsig_0_8z = ~((celloutsig_0_5z[10] & celloutsig_0_3z[5]) | celloutsig_0_0z);
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_3z = 7'h00;
    else if (clkin_data[32]) celloutsig_0_3z = { in_data[20:15], celloutsig_0_1z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_32z = 15'h0000;
    else if (clkin_data[0]) celloutsig_0_32z = { celloutsig_0_15z, celloutsig_0_18z, celloutsig_0_16z };
  assign { out_data[128], out_data[96], out_data[32], out_data[7:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_34z, celloutsig_0_35z };
endmodule
