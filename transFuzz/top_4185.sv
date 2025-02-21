/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [3:0] celloutsig_0_16z;
  wire [34:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [9:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [3:0] celloutsig_0_20z;
  wire [42:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  reg [10:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [9:0] celloutsig_0_8z;
  wire [14:0] celloutsig_0_9z;
  wire [9:0] celloutsig_1_0z;
  wire [8:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [7:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [9:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_30z = !(celloutsig_0_15z ? celloutsig_0_20z[0] : celloutsig_0_18z);
  assign celloutsig_0_62z = !(celloutsig_0_16z[2] ? celloutsig_0_19z[6] : celloutsig_0_30z);
  assign celloutsig_0_7z = !(celloutsig_0_6z ? celloutsig_0_0z : celloutsig_0_5z);
  assign celloutsig_1_4z = !(in_data[173] ? celloutsig_1_3z : celloutsig_1_0z[7]);
  assign celloutsig_1_8z = !(celloutsig_1_3z ? celloutsig_1_5z : celloutsig_1_1z);
  assign celloutsig_1_11z = !(celloutsig_1_10z[2] ? celloutsig_1_3z : celloutsig_1_7z);
  assign celloutsig_1_12z = !(celloutsig_1_6z ? celloutsig_1_0z[6] : celloutsig_1_3z);
  assign celloutsig_0_15z = !(celloutsig_0_3z[7] ? celloutsig_0_6z : celloutsig_0_4z);
  assign celloutsig_0_0z = in_data[65:62] <= in_data[88:85];
  assign celloutsig_0_4z = { celloutsig_0_3z[8:6], celloutsig_0_0z, celloutsig_0_1z } <= { celloutsig_0_2z[20:17], celloutsig_0_1z };
  assign celloutsig_0_5z = { celloutsig_0_3z[3:1], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_0z } <= { celloutsig_0_3z[5:3], celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_0_63z = { celloutsig_0_19z[4:3], celloutsig_0_5z, celloutsig_0_62z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_18z } <= { celloutsig_0_9z[12:7], celloutsig_0_5z, celloutsig_0_1z };
  assign celloutsig_1_3z = { in_data[108:101], celloutsig_1_2z } <= { in_data[139:125], celloutsig_1_1z };
  assign celloutsig_1_5z = { in_data[152:127], celloutsig_1_4z, celloutsig_1_1z } <= { in_data[143:134], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_1_6z = { in_data[183:175], celloutsig_1_4z } <= in_data[165:156];
  assign celloutsig_1_7z = { celloutsig_1_2z[4:1], celloutsig_1_3z } <= { celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_1_18z = { celloutsig_1_9z[4:3], celloutsig_1_14z } <= { celloutsig_1_0z[6:5], celloutsig_1_3z };
  assign celloutsig_1_19z = { celloutsig_1_9z[7:5], celloutsig_1_6z } <= { celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_3z };
  assign celloutsig_0_10z = { celloutsig_0_8z[9:1], celloutsig_0_4z, celloutsig_0_0z } <= { celloutsig_0_9z[10:1], celloutsig_0_4z };
  assign celloutsig_0_11z = { in_data[71:54], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_4z } <= { celloutsig_0_9z[12:4], celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_0_1z = in_data[46:44] <= in_data[16:14];
  assign celloutsig_0_12z = celloutsig_0_9z[9:3] <= celloutsig_0_2z[41:35];
  assign celloutsig_0_14z = { celloutsig_0_3z[8:1], celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_11z } <= { celloutsig_0_2z[42:33], celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_0_18z = in_data[27:23] <= { celloutsig_0_16z[3], celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_7z };
  assign celloutsig_0_6z = { in_data[61:55], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_4z } && { in_data[45:41], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_1_1z = celloutsig_1_0z[5:0] && celloutsig_1_0z[7:2];
  assign celloutsig_1_14z = { celloutsig_1_6z, celloutsig_1_12z, celloutsig_1_11z, celloutsig_1_6z } && in_data[154:151];
  assign celloutsig_0_13z = celloutsig_0_2z[32:26] && { celloutsig_0_9z[6:1], celloutsig_0_1z };
  assign celloutsig_1_0z = in_data[176] ? in_data[152:143] : in_data[112:103];
  assign celloutsig_1_2z = celloutsig_1_1z ? celloutsig_1_0z[8:1] : celloutsig_1_0z[7:0];
  assign celloutsig_1_9z[9:1] = celloutsig_1_2z[1] ? { celloutsig_1_4z, celloutsig_1_2z[7:2], 1'h1, celloutsig_1_2z[0] } : { celloutsig_1_0z[8:4], celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_4z };
  assign celloutsig_1_10z = celloutsig_1_7z ? { celloutsig_1_0z[8:2], celloutsig_1_6z, celloutsig_1_3z } : { celloutsig_1_5z, celloutsig_1_4z, 3'h0, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_0_8z = celloutsig_0_5z ? celloutsig_0_2z[12:3] : { in_data[58:50], celloutsig_0_7z };
  assign celloutsig_0_9z = celloutsig_0_8z[5] ? { celloutsig_0_2z[42:41], celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_3z } : { celloutsig_0_2z[28:15], celloutsig_0_0z };
  assign celloutsig_0_16z = celloutsig_0_7z ? { celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_11z } : { celloutsig_0_2z[40:39], celloutsig_0_12z, celloutsig_0_10z };
  assign celloutsig_0_17z = celloutsig_0_16z[2] ? celloutsig_0_2z[39:5] : { celloutsig_0_3z[6], celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_3z };
  assign celloutsig_0_19z = celloutsig_0_9z[7] ? celloutsig_0_17z[9:0] : { in_data[83:75], celloutsig_0_5z };
  assign celloutsig_0_2z = celloutsig_0_1z ? { in_data[34:2], 1'h1, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, 4'hf } : { in_data[95:54], 1'h0 };
  assign celloutsig_0_20z = celloutsig_0_1z ? { celloutsig_0_12z, celloutsig_0_15z, celloutsig_0_18z, celloutsig_0_4z } : { celloutsig_0_17z[11:9], 1'h0 };
  always_latch
    if (!clkin_data[0]) celloutsig_0_3z = 11'h000;
    else if (!celloutsig_1_19z) celloutsig_0_3z = in_data[87:77];
  assign celloutsig_1_9z[0] = celloutsig_1_3z;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_62z, celloutsig_0_63z };
endmodule
