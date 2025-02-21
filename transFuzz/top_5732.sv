/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [5:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire [2:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  reg [3:0] celloutsig_0_22z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  reg [2:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [2:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [8:0] celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  reg [3:0] celloutsig_1_2z;
  wire [12:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_7z = celloutsig_1_3z[8:3] >= { celloutsig_1_1z[5:1], celloutsig_1_0z };
  assign celloutsig_1_16z = { celloutsig_1_3z[12:1], celloutsig_1_1z } >= { celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_13z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_0z };
  assign celloutsig_1_17z = { celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_4z } >= { celloutsig_1_15z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_13z };
  assign celloutsig_1_18z = { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_13z, celloutsig_1_0z, celloutsig_1_16z, celloutsig_1_0z } >= { in_data[139:134], celloutsig_1_17z, celloutsig_1_12z, celloutsig_1_5z, celloutsig_1_11z };
  assign celloutsig_0_6z = { in_data[40:15], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_2z } >= { in_data[42:13], celloutsig_0_3z, celloutsig_0_5z };
  assign celloutsig_0_11z = { celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_1z } >= in_data[53:49];
  assign celloutsig_0_3z = in_data[18:2] >= { in_data[60:52], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_1_15z = { celloutsig_1_11z, celloutsig_1_7z, celloutsig_1_5z } % { 1'h1, celloutsig_1_13z, celloutsig_1_13z };
  assign celloutsig_1_19z = { celloutsig_1_14z, celloutsig_1_2z, celloutsig_1_15z, celloutsig_1_9z } % { 1'h1, celloutsig_1_3z[9:2] };
  assign celloutsig_0_20z = celloutsig_0_0z[5:3] % { 1'h1, celloutsig_0_10z, celloutsig_0_11z };
  assign celloutsig_1_1z = in_data[124:119] % { 1'h1, in_data[187:184], celloutsig_1_0z };
  assign celloutsig_1_3z = { in_data[174:166], celloutsig_1_2z } % { 1'h1, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z[3:1], in_data[96] };
  assign celloutsig_1_8z = { celloutsig_1_2z[1:0], celloutsig_1_6z } != celloutsig_1_2z[2:0];
  assign celloutsig_1_10z = celloutsig_1_1z[5:2] != in_data[150:147];
  assign celloutsig_1_11z = in_data[113:107] != { celloutsig_1_2z[3:2], celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_8z };
  assign celloutsig_1_12z = { in_data[152:150], celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_9z, celloutsig_1_6z } != celloutsig_1_3z[11:2];
  assign celloutsig_0_12z = in_data[53:35] != { celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_0_14z = { in_data[70:52], celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_0z[5:4], celloutsig_0_0z[2:0], celloutsig_0_9z, celloutsig_0_4z } != { celloutsig_0_0z[4:2], celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_11z };
  assign celloutsig_1_0z = in_data[185:175] != in_data[178:168];
  assign celloutsig_1_13z = & { celloutsig_1_12z, celloutsig_1_11z, celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z[3], celloutsig_1_0z };
  assign celloutsig_0_1z = & in_data[58:51];
  assign celloutsig_0_2z = & celloutsig_0_0z;
  assign celloutsig_0_21z = & { celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_3z, in_data[58:51], in_data[47:36], celloutsig_0_0z };
  assign celloutsig_1_5z = & celloutsig_1_3z[8:2];
  assign celloutsig_0_5z = celloutsig_0_4z[0] & celloutsig_0_0z[3];
  assign celloutsig_0_8z = celloutsig_0_5z & celloutsig_0_1z;
  assign celloutsig_0_10z = celloutsig_0_6z & celloutsig_0_8z;
  assign celloutsig_1_4z = celloutsig_1_1z[2] & in_data[157];
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_0z = 6'h00;
    else if (!clkin_data[0]) celloutsig_0_0z = in_data[76:71];
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_4z = 3'h0;
    else if (!clkin_data[0]) celloutsig_0_4z = celloutsig_0_0z[2:0];
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_22z = 4'h0;
    else if (!clkin_data[32]) celloutsig_0_22z = { celloutsig_0_2z, celloutsig_0_20z };
  always_latch
    if (!clkin_data[96]) celloutsig_1_2z = 4'h0;
    else if (clkin_data[64]) celloutsig_1_2z = in_data[132:129];
  assign celloutsig_1_9z = ~((celloutsig_1_5z & celloutsig_1_0z) | (celloutsig_1_5z & in_data[99]));
  assign celloutsig_1_14z = ~((celloutsig_1_8z & celloutsig_1_12z) | (celloutsig_1_12z & celloutsig_1_5z));
  assign celloutsig_0_7z = ~((celloutsig_0_6z & celloutsig_0_4z[1]) | (celloutsig_0_2z & in_data[64]));
  assign celloutsig_0_9z = ~((celloutsig_0_4z[0] & celloutsig_0_8z) | (celloutsig_0_2z & in_data[36]));
  assign celloutsig_0_13z = ~((celloutsig_0_7z & celloutsig_0_6z) | (celloutsig_0_8z & celloutsig_0_6z));
  assign celloutsig_0_18z = ~((celloutsig_0_14z & celloutsig_0_11z) | (celloutsig_0_10z & celloutsig_0_6z));
  assign celloutsig_1_6z = ~((celloutsig_1_2z[0] & celloutsig_1_4z) | (celloutsig_1_2z[3] & in_data[181]));
  assign { out_data[128], out_data[104:96], out_data[32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_21z, celloutsig_0_22z };
endmodule
