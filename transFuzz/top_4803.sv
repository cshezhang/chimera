/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [14:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  reg [3:0] celloutsig_0_19z;
  wire [6:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [4:0] celloutsig_0_21z;
  wire [11:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [5:0] celloutsig_0_26z;
  wire [2:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  reg [29:0] celloutsig_0_32z;
  reg [2:0] celloutsig_0_3z;
  wire [6:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  reg [4:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_18z;
  reg [10:0] celloutsig_1_19z;
  wire [6:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [15:0] celloutsig_1_5z;
  wire celloutsig_1_7z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = !(in_data[83] ? in_data[42] : in_data[33]);
  assign celloutsig_0_41z = { celloutsig_0_14z, celloutsig_0_8z } == { celloutsig_0_32z[29], celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_3z };
  assign celloutsig_0_4z = in_data[35:28] == { celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_5z = in_data[30:1] == { in_data[53:28], celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_1_18z = celloutsig_1_0z[3:1] == { celloutsig_1_5z[3:2], celloutsig_1_7z };
  assign celloutsig_0_6z = { in_data[74:64], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_2z } == { in_data[56:31], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_10z = { celloutsig_0_8z[3], celloutsig_0_3z } == in_data[18:15];
  assign celloutsig_0_11z = celloutsig_0_8z[3:0] == { celloutsig_0_1z[4:3], celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_15z = in_data[11:1] == { celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_8z };
  assign celloutsig_0_30z = celloutsig_0_26z[5:1] == { celloutsig_0_22z[5:2], celloutsig_0_23z };
  assign celloutsig_1_7z = { in_data[152:151], celloutsig_1_5z, celloutsig_1_1z } === { in_data[146:126], celloutsig_1_0z };
  assign celloutsig_0_7z = { celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_6z } === celloutsig_0_1z[6:2];
  assign celloutsig_0_9z = { celloutsig_0_2z[1:0], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_3z } === { in_data[91:82], celloutsig_0_5z };
  assign celloutsig_1_0z = in_data[142:139] % { 1'h1, in_data[171:169] };
  assign celloutsig_1_3z = { celloutsig_1_0z, celloutsig_1_2z } % { 1'h1, in_data[109:106] };
  assign celloutsig_1_5z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z } % { 1'h1, celloutsig_1_1z[5:1], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_0_16z = { celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_5z } % { 1'h1, celloutsig_0_1z[5:0], celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_0z };
  assign celloutsig_0_22z = { in_data[92:84], celloutsig_0_7z, celloutsig_0_18z, celloutsig_0_9z } % { 1'h1, celloutsig_0_8z[3:0], celloutsig_0_1z };
  assign celloutsig_0_2z = in_data[71:69] % { 1'h1, in_data[75:74] };
  assign celloutsig_0_26z = { celloutsig_0_20z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_15z } % { 1'h1, celloutsig_0_1z[2:0], celloutsig_0_14z, celloutsig_0_4z };
  assign celloutsig_1_2z = in_data[148:135] != in_data[133:120];
  assign celloutsig_1_4z = { celloutsig_1_1z[1:0], celloutsig_1_3z } != { in_data[133:128], celloutsig_1_2z };
  assign celloutsig_0_12z = celloutsig_0_1z[6:2] != { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_11z };
  assign celloutsig_0_13z = { in_data[70:66], celloutsig_0_12z } != { celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_2z };
  assign celloutsig_0_14z = { in_data[94:86], celloutsig_0_7z } != { celloutsig_0_1z[4:3], celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_0z };
  assign celloutsig_0_17z = { celloutsig_0_1z[5:1], celloutsig_0_6z } != { celloutsig_0_1z[4:0], celloutsig_0_13z };
  assign celloutsig_0_18z = { in_data[22:6], celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_0z } != { celloutsig_0_16z[7:3], celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_9z };
  assign celloutsig_0_20z = { celloutsig_0_2z[2:1], celloutsig_0_6z, celloutsig_0_6z } != { celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_17z, celloutsig_0_18z };
  assign celloutsig_0_23z = celloutsig_0_22z[3:1] != { celloutsig_0_8z[3:2], celloutsig_0_12z };
  assign celloutsig_0_40z = celloutsig_0_32z[25:19] >> { celloutsig_0_16z[10:9], celloutsig_0_21z };
  assign celloutsig_1_1z = { in_data[124:122], celloutsig_1_0z } >> in_data[118:112];
  assign celloutsig_0_1z = in_data[10:4] >> { in_data[78:74], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_21z = { celloutsig_0_19z, celloutsig_0_11z } >> { celloutsig_0_8z[2], celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_14z };
  always_latch
    if (clkin_data[96]) celloutsig_0_32z = 30'h00000000;
    else if (clkin_data[0]) celloutsig_0_32z = { in_data[24:13], celloutsig_0_30z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_13z, celloutsig_0_23z, celloutsig_0_4z, celloutsig_0_22z };
  always_latch
    if (!clkin_data[96]) celloutsig_0_3z = 3'h0;
    else if (!clkin_data[32]) celloutsig_0_3z = celloutsig_0_2z;
  always_latch
    if (!clkin_data[128]) celloutsig_1_19z = 11'h000;
    else if (clkin_data[64]) celloutsig_1_19z = celloutsig_1_5z[12:2];
  always_latch
    if (celloutsig_1_18z) celloutsig_0_8z = 5'h00;
    else if (!clkin_data[32]) celloutsig_0_8z = { celloutsig_0_1z[0], celloutsig_0_0z, celloutsig_0_2z };
  always_latch
    if (!clkin_data[96]) celloutsig_0_19z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_19z = { celloutsig_0_16z[9:7], celloutsig_0_12z };
  assign { out_data[128], out_data[106:96], out_data[38:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_40z, celloutsig_0_41z };
endmodule
