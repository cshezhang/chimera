/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [7:0] celloutsig_0_11z;
  wire [8:0] celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire [15:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire celloutsig_0_22z;
  wire celloutsig_0_2z;
  wire [3:0] celloutsig_0_37z;
  reg [2:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [6:0] celloutsig_0_4z;
  wire [3:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [6:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [7:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [2:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [15:0] celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [14:0] celloutsig_1_17z;
  wire [10:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [20:0] celloutsig_1_1z;
  wire [3:0] celloutsig_1_2z;
  reg [4:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [11:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_16z = celloutsig_1_0z ? celloutsig_1_13z[0] : celloutsig_1_14z;
  assign celloutsig_1_9z = !(celloutsig_1_5z ? celloutsig_1_4z : celloutsig_1_5z);
  assign celloutsig_0_2z = ~in_data[28];
  assign celloutsig_1_19z = ~((celloutsig_1_18z[1] | celloutsig_1_9z) & (celloutsig_1_14z | celloutsig_1_17z[9]));
  assign celloutsig_0_22z = ~((celloutsig_0_1z | celloutsig_0_17z) & (celloutsig_0_2z | celloutsig_0_15z));
  assign celloutsig_1_0z = in_data[101] | ~(in_data[161]);
  assign celloutsig_0_6z = celloutsig_0_0z[2] | ~(celloutsig_0_1z);
  assign celloutsig_0_15z = celloutsig_0_2z | ~(celloutsig_0_4z[0]);
  assign celloutsig_0_1z = ~(celloutsig_0_0z[2] ^ celloutsig_0_0z[0]);
  assign celloutsig_1_8z = { in_data[110:100], celloutsig_1_6z } + { celloutsig_1_1z[11:5], celloutsig_1_2z, celloutsig_1_5z };
  assign celloutsig_0_13z = { celloutsig_0_7z[3], celloutsig_0_0z[2:1] } + { celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_10z };
  assign celloutsig_0_12z = { celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_6z } & { celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_1z };
  assign celloutsig_1_13z = { in_data[150], celloutsig_1_11z, celloutsig_1_7z } / { 1'h1, celloutsig_1_8z[2:1] };
  assign celloutsig_1_18z = { celloutsig_1_1z[13:5], celloutsig_1_15z[1:0] } / { 1'h1, celloutsig_1_1z[13:6], celloutsig_1_6z, celloutsig_1_4z };
  assign celloutsig_0_16z = { in_data[89:77], celloutsig_0_13z } / { 1'h1, celloutsig_0_9z[5:4], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_12z };
  assign celloutsig_0_3z = { in_data[29:6], celloutsig_0_0z } >= { in_data[26:4], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_1_6z = celloutsig_1_2z[2:0] || celloutsig_1_2z[3:1];
  assign celloutsig_0_8z = { celloutsig_0_7z[4:3], celloutsig_0_0z, celloutsig_0_1z } || { celloutsig_0_7z[5:3], celloutsig_0_0z };
  assign celloutsig_0_37z = celloutsig_0_11z[6:3] % { 1'h1, celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_1z };
  assign { celloutsig_0_4z[6:4], celloutsig_0_4z[0] } = celloutsig_0_1z ? { in_data[38:36], 1'h1 } : { in_data[54:53], 2'h0 };
  assign celloutsig_1_15z[1:0] = in_data[115] ? { celloutsig_1_1z[4], celloutsig_1_14z } : { celloutsig_1_4z, celloutsig_1_11z };
  assign celloutsig_0_7z[6:3] = in_data[28] ? { celloutsig_0_5z[3:1], celloutsig_0_1z } : { celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_5z = - { celloutsig_0_4z[4], celloutsig_0_0z[2:1], celloutsig_0_3z };
  assign celloutsig_1_5z = celloutsig_1_1z[16:14] !== celloutsig_1_3z[4:2];
  assign celloutsig_1_7z = in_data[184:167] !== { in_data[146:132], celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_6z };
  assign celloutsig_0_18z = { in_data[31:23], celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_4z[6:4], celloutsig_0_0z, celloutsig_0_4z[0] } !== { celloutsig_0_16z[9:0], celloutsig_0_16z, celloutsig_0_5z };
  assign celloutsig_0_0z = ~ in_data[18:16];
  assign celloutsig_1_1z = ~ { in_data[142:123], celloutsig_1_0z };
  assign celloutsig_1_2z = ~ in_data[153:150];
  assign celloutsig_1_12z = | { celloutsig_1_9z, celloutsig_1_5z, celloutsig_1_10z };
  assign celloutsig_1_14z = | { celloutsig_1_1z[18:17], celloutsig_1_3z, celloutsig_1_12z };
  assign celloutsig_0_17z = | { celloutsig_0_12z[7:1], celloutsig_0_4z[6:4], celloutsig_0_0z, celloutsig_0_4z[0], celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_4z[6:4], celloutsig_0_0z, celloutsig_0_4z[0] };
  assign celloutsig_0_10z = | { celloutsig_0_8z, celloutsig_0_7z[6:3], celloutsig_0_6z, in_data[75:70], celloutsig_0_0z };
  assign celloutsig_1_4z = ~^ { celloutsig_1_2z[3:2], celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_10z = ~^ celloutsig_1_3z;
  assign celloutsig_0_9z = { celloutsig_0_5z[3:1], celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_6z } >> { in_data[75], celloutsig_0_4z[6:4], celloutsig_0_0z, celloutsig_0_4z[0] };
  assign celloutsig_0_11z = { in_data[47:44], celloutsig_0_0z, celloutsig_0_10z } >> { celloutsig_0_0z[1:0], celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_2z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_38z = 3'h0;
    else if (celloutsig_1_19z) celloutsig_0_38z = celloutsig_0_0z;
  always_latch
    if (clkin_data[64]) celloutsig_1_3z = 5'h00;
    else if (clkin_data[0]) celloutsig_1_3z = { celloutsig_1_1z[17:14], celloutsig_1_0z };
  assign celloutsig_1_11z = ~((celloutsig_1_10z & celloutsig_1_5z) | (celloutsig_1_3z[3] & celloutsig_1_3z[4]));
  assign { celloutsig_1_17z[3:2], celloutsig_1_17z[5], celloutsig_1_17z[14], celloutsig_1_17z[6], celloutsig_1_17z[0], celloutsig_1_17z[11:7], celloutsig_1_17z[12] } = ~ { celloutsig_1_16z, celloutsig_1_14z, celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_4z[3:1] = celloutsig_0_0z;
  assign celloutsig_0_7z[2:0] = celloutsig_0_0z;
  assign celloutsig_1_15z[15:2] = celloutsig_1_1z[18:5];
  assign { celloutsig_1_17z[13], celloutsig_1_17z[4], celloutsig_1_17z[1] } = { celloutsig_1_17z[14], celloutsig_1_17z[6], celloutsig_1_17z[14] };
  assign { out_data[138:128], out_data[96], out_data[35:32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_37z, celloutsig_0_38z };
endmodule
