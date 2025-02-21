/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  reg [17:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_22z;
  wire [19:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [17:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [28:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [2:0] celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire [12:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  reg [11:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [6:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [4:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_9z = !(celloutsig_1_7z ? celloutsig_1_7z : celloutsig_1_8z[4]);
  assign celloutsig_1_13z = !(celloutsig_1_7z ? celloutsig_1_0z : celloutsig_1_11z);
  assign celloutsig_1_17z = !(celloutsig_1_5z ? celloutsig_1_8z[4] : celloutsig_1_2z);
  assign celloutsig_0_11z = !(celloutsig_0_5z ? celloutsig_0_2z : celloutsig_0_4z);
  assign celloutsig_0_14z = !(celloutsig_0_6z[6] ? celloutsig_0_6z[13] : celloutsig_0_1z);
  assign celloutsig_0_28z = !(celloutsig_0_3z ? celloutsig_0_15z[14] : celloutsig_0_22z);
  assign celloutsig_1_19z = ~(celloutsig_1_17z | celloutsig_1_18z[10]);
  assign celloutsig_0_16z = ~(celloutsig_0_4z | celloutsig_0_2z);
  assign celloutsig_0_0z = ~in_data[39];
  assign celloutsig_0_9z = celloutsig_0_3z | ~(celloutsig_0_8z);
  assign celloutsig_0_18z = celloutsig_0_0z | ~(celloutsig_0_0z);
  assign celloutsig_0_22z = celloutsig_0_8z | ~(celloutsig_0_19z);
  assign celloutsig_1_3z = celloutsig_1_1z[11] | ~(in_data[129]);
  assign celloutsig_1_18z = { celloutsig_1_1z[6:0], celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_11z, celloutsig_1_3z } + { celloutsig_1_16z[0], celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_17z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_15z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_12z };
  assign celloutsig_0_27z = { celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_16z } + { celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_14z };
  assign celloutsig_1_5z = in_data[123:115] != { celloutsig_1_1z[8:3], celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_0_13z = { celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_8z } != { in_data[34:29], celloutsig_0_11z };
  assign celloutsig_1_8z = ~ { in_data[116:114], celloutsig_1_2z, celloutsig_1_5z };
  assign celloutsig_0_4z = | { in_data[76:75], celloutsig_0_0z };
  assign celloutsig_1_10z = | in_data[162:159];
  assign celloutsig_1_12z = | { celloutsig_1_5z, celloutsig_1_4z, in_data[158:151] };
  assign celloutsig_1_0z = | in_data[158:151];
  assign celloutsig_0_3z = ~^ in_data[15:1];
  assign celloutsig_1_15z = ~^ { celloutsig_1_6z[3:1], celloutsig_1_6z[2], celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_12z };
  assign celloutsig_0_19z = ~^ { celloutsig_0_2z, celloutsig_0_18z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_1_2z = ~^ celloutsig_1_1z[9:7];
  assign celloutsig_1_4z = ^ in_data[145:126];
  assign celloutsig_0_8z = ^ { in_data[80:71], celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_2z = ^ in_data[15:11];
  assign celloutsig_1_14z = in_data[167:139] ^ { celloutsig_1_12z, celloutsig_1_6z[6:1], celloutsig_1_6z[2], celloutsig_1_0z, celloutsig_1_6z[6:1], celloutsig_1_6z[2], celloutsig_1_11z, celloutsig_1_11z, celloutsig_1_12z, celloutsig_1_11z, celloutsig_1_13z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_9z };
  assign celloutsig_1_16z = celloutsig_1_6z[4:2] ^ { celloutsig_1_14z[15:14], celloutsig_1_15z };
  assign celloutsig_0_6z = in_data[48:31] ^ { celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z };
  always_latch
    if (clkin_data[32]) celloutsig_0_15z = 18'h00000;
    else if (celloutsig_1_19z) celloutsig_0_15z = { in_data[65], celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_13z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_13z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_1z = 12'h000;
    else if (!clkin_data[0]) celloutsig_1_1z = { in_data[161:151], celloutsig_1_0z };
  assign celloutsig_1_7z = ~((celloutsig_1_3z & celloutsig_1_0z) | (celloutsig_1_2z & celloutsig_1_1z[9]));
  assign celloutsig_1_11z = ~((celloutsig_1_0z & celloutsig_1_1z[3]) | (celloutsig_1_9z & celloutsig_1_9z));
  assign celloutsig_0_5z = ~((in_data[8] & celloutsig_0_3z) | (celloutsig_0_0z & celloutsig_0_3z));
  assign celloutsig_0_7z = ~((celloutsig_0_6z[7] & celloutsig_0_2z) | (celloutsig_0_2z & celloutsig_0_6z[1]));
  assign celloutsig_0_1z = ~((celloutsig_0_0z & celloutsig_0_0z) | (celloutsig_0_0z & in_data[21]));
  assign { celloutsig_1_6z[1], celloutsig_1_6z[2], celloutsig_1_6z[6:3] } = ~ { celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_1z[11:8] };
  assign celloutsig_1_6z[0] = celloutsig_1_6z[2];
  assign { out_data[140:128], out_data[96], out_data[51:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_27z, celloutsig_0_28z };
endmodule
