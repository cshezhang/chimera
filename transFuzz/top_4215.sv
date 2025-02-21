/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] celloutsig_0_0z;
  wire [28:0] celloutsig_0_10z;
  wire [13:0] celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_1z;
  wire celloutsig_0_28z;
  wire celloutsig_0_30z;
  wire celloutsig_0_3z;
  wire [2:0] celloutsig_0_4z;
  wire [4:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_8z;
  wire [9:0] celloutsig_0_9z;
  wire [11:0] celloutsig_1_0z;
  wire celloutsig_1_12z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  reg [4:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [9:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_8z = in_data[133] ? celloutsig_1_7z[4] : in_data[124];
  assign celloutsig_1_18z = celloutsig_1_7z[2] ? celloutsig_1_0z[11] : celloutsig_1_3z;
  assign celloutsig_1_15z = ~celloutsig_1_8z;
  assign celloutsig_0_15z = ~celloutsig_0_3z;
  assign celloutsig_0_28z = celloutsig_0_15z | celloutsig_0_13z;
  assign celloutsig_1_9z = celloutsig_1_1z[1] ^ celloutsig_1_8z;
  assign celloutsig_0_13z = celloutsig_0_3z ^ celloutsig_0_4z[0];
  assign celloutsig_1_19z = { in_data[165:164], celloutsig_1_15z, celloutsig_1_12z } + { celloutsig_1_1z[4:2], celloutsig_1_9z };
  assign celloutsig_0_4z = { in_data[25:24], celloutsig_0_3z } + { in_data[82:81], celloutsig_0_1z };
  reg [25:0] _09_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[0])
    if (!clkin_data[0]) _09_ <= 26'h0000000;
    else _09_ <= { celloutsig_0_10z[27:3], celloutsig_0_30z };
  assign out_data[25:0] = _09_;
  assign celloutsig_1_3z = { in_data[162:145], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z } >= { in_data[187:164], celloutsig_1_2z };
  assign celloutsig_0_30z = { celloutsig_0_11z[7:5], celloutsig_0_28z } > celloutsig_0_5z[4:1];
  assign celloutsig_1_2z = celloutsig_1_1z[4:2] && celloutsig_1_0z[5:3];
  assign celloutsig_0_6z = { in_data[92:87], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_4z } < { in_data[66:59], celloutsig_0_4z };
  assign celloutsig_0_5z = { in_data[67:66], celloutsig_0_4z } % { 1'h1, celloutsig_0_1z, celloutsig_0_4z[2:1], in_data[0] };
  assign celloutsig_0_9z = celloutsig_0_5z[1] ? { in_data[72:64], celloutsig_0_1z } : { celloutsig_0_0z[1:0], celloutsig_0_5z[2], celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_8z };
  assign celloutsig_0_11z = celloutsig_0_5z[2] ? { celloutsig_0_10z[22:20], celloutsig_0_1z, celloutsig_0_9z } : celloutsig_0_10z[16:3];
  assign celloutsig_1_12z = & in_data[175:173];
  assign celloutsig_1_0z = in_data[128:117] >> in_data[151:140];
  assign celloutsig_0_10z = { in_data[31:4], celloutsig_0_8z } >> { in_data[80:68], celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_5z[2] };
  assign celloutsig_0_0z = in_data[9:7] ^ in_data[34:32];
  assign celloutsig_1_7z = { celloutsig_1_0z[11:3], celloutsig_1_3z } ^ in_data[163:154];
  always_latch
    if (!clkin_data[32]) celloutsig_1_1z = 5'h00;
    else if (!clkin_data[64]) celloutsig_1_1z = celloutsig_1_0z[4:0];
  assign celloutsig_0_3z = ~((celloutsig_0_1z & in_data[43]) | (in_data[22] & in_data[78]));
  assign celloutsig_0_8z = ~((celloutsig_0_3z & celloutsig_0_1z) | (celloutsig_0_6z & celloutsig_0_5z[2]));
  assign celloutsig_0_1z = ~((in_data[52] & in_data[63]) | (celloutsig_0_0z[1] & in_data[34]));
  assign { out_data[128], out_data[99:96], out_data[32] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_30z };
endmodule
