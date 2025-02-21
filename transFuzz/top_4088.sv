/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [5:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  reg [4:0] celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  reg [5:0] celloutsig_0_16z;
  wire [14:0] celloutsig_0_17z;
  wire celloutsig_0_1z;
  reg [11:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [3:0] celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire [30:0] celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  reg [2:0] celloutsig_1_5z;
  wire [13:0] celloutsig_1_6z;
  wire celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_3z = celloutsig_1_2z ? celloutsig_1_2z : celloutsig_1_0z;
  assign celloutsig_1_18z = celloutsig_1_10z ? celloutsig_1_10z : celloutsig_1_8z;
  assign celloutsig_0_3z = ~((celloutsig_0_1z | celloutsig_0_1z) & celloutsig_0_2z);
  assign celloutsig_0_57z = ~((celloutsig_0_28z | celloutsig_0_37z) & celloutsig_0_17z[11]);
  assign celloutsig_1_1z = ~((celloutsig_1_0z | celloutsig_1_0z) & celloutsig_1_0z);
  assign celloutsig_1_8z = ~((celloutsig_1_5z[1] | celloutsig_1_13z) & celloutsig_1_2z);
  assign celloutsig_0_13z = ~((celloutsig_0_9z | celloutsig_0_8z) & celloutsig_0_3z);
  assign celloutsig_0_1z = ~((celloutsig_0_0z[3] | in_data[21]) & in_data[20]);
  assign celloutsig_0_24z = ~((celloutsig_0_15z | celloutsig_0_4z) & celloutsig_0_6z);
  assign celloutsig_0_2z = ~((in_data[91] | in_data[45]) & celloutsig_0_1z);
  assign celloutsig_0_58z = ! celloutsig_0_20z[9:7];
  assign celloutsig_1_0z = ! in_data[108:99];
  assign celloutsig_1_2z = ! { in_data[112:110], celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_1_11z = ! { in_data[144:137], celloutsig_1_0z, celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_8z };
  assign celloutsig_0_8z = ! { celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_0_4z = celloutsig_0_3z & ~(in_data[90]);
  assign celloutsig_0_5z = celloutsig_0_1z & ~(celloutsig_0_4z);
  assign celloutsig_1_10z = in_data[101] & ~(celloutsig_1_2z);
  assign celloutsig_0_7z = celloutsig_0_3z & ~(celloutsig_0_1z);
  assign celloutsig_0_15z = celloutsig_0_2z & ~(celloutsig_0_7z);
  assign celloutsig_0_21z = celloutsig_0_11z[1] & ~(celloutsig_0_10z);
  assign celloutsig_0_22z = { celloutsig_0_14z[1:0], celloutsig_0_1z, celloutsig_0_10z } % { 1'h1, celloutsig_0_11z[3], celloutsig_0_21z, celloutsig_0_8z };
  assign celloutsig_0_37z = | celloutsig_0_22z[2:0];
  assign celloutsig_1_13z = | { celloutsig_1_0z, in_data[158:151] };
  assign celloutsig_0_6z = | { celloutsig_0_3z, celloutsig_0_2z, in_data[80:66] };
  assign celloutsig_1_19z = | { celloutsig_1_14z[19:13], celloutsig_1_10z };
  assign celloutsig_0_10z = | { celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_28z = | { celloutsig_0_24z, celloutsig_0_22z, celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_0_9z = ~^ { celloutsig_0_0z[2], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_5z };
  assign celloutsig_0_0z = in_data[26:21] - in_data[39:34];
  assign celloutsig_1_6z = { in_data[159:147], celloutsig_1_3z } - { in_data[135:127], celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_1_14z = { in_data[180:152], celloutsig_1_1z, celloutsig_1_13z } - { celloutsig_1_6z[13:11], celloutsig_1_13z, celloutsig_1_13z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_13z, celloutsig_1_0z, celloutsig_1_11z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_11z };
  assign celloutsig_0_14z = in_data[3:1] - { celloutsig_0_0z[3:2], celloutsig_0_3z };
  assign celloutsig_0_17z = { in_data[59:47], celloutsig_0_9z, celloutsig_0_9z } - { in_data[54:48], celloutsig_0_1z, celloutsig_0_16z, celloutsig_0_13z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_5z = 3'h0;
    else if (clkin_data[0]) celloutsig_1_5z = { in_data[159], celloutsig_1_2z, celloutsig_1_2z };
  always_latch
    if (clkin_data[32]) celloutsig_0_11z = 5'h00;
    else if (celloutsig_1_19z) celloutsig_0_11z = { celloutsig_0_0z[1], celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_10z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_16z = 6'h00;
    else if (!celloutsig_1_19z) celloutsig_0_16z = { in_data[3:1], celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_13z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_20z = 12'h000;
    else if (!celloutsig_1_19z) celloutsig_0_20z = { celloutsig_0_0z, celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_8z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_57z, celloutsig_0_58z };
endmodule
