/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [8:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [9:0] celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire [7:0] celloutsig_0_15z;
  wire [3:0] celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire [8:0] celloutsig_0_22z;
  wire celloutsig_0_2z;
  wire celloutsig_0_34z;
  wire celloutsig_0_3z;
  wire celloutsig_0_42z;
  reg [2:0] celloutsig_0_44z;
  wire [4:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [9:0] celloutsig_0_60z;
  wire [7:0] celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_6z;
  wire [11:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  reg [6:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire [5:0] celloutsig_1_19z;
  wire [20:0] celloutsig_1_1z;
  wire [7:0] celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire [16:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [7:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [4:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_8z = celloutsig_1_4z[16] ? celloutsig_1_2z[3] : celloutsig_1_1z[19];
  assign celloutsig_0_2z = celloutsig_0_1z ? celloutsig_0_0z[6] : celloutsig_0_0z[2];
  assign celloutsig_0_6z = ~(celloutsig_0_3z & celloutsig_0_3z);
  assign celloutsig_0_3z = ~(celloutsig_0_1z | in_data[42]);
  assign celloutsig_0_62z = ~(celloutsig_0_60z[5] | celloutsig_0_42z);
  assign celloutsig_1_0z = ~(in_data[115] | in_data[183]);
  assign celloutsig_1_5z = celloutsig_1_2z[2] | celloutsig_1_2z[5];
  assign celloutsig_0_34z = celloutsig_0_4z[3] ^ celloutsig_0_15z[5];
  assign celloutsig_0_42z = ~(celloutsig_0_18z ^ celloutsig_0_34z);
  assign celloutsig_1_18z = ~(celloutsig_1_6z ^ celloutsig_1_14z);
  assign celloutsig_1_2z = celloutsig_1_1z[7:0] / { 1'h1, celloutsig_1_1z[9:3] };
  assign celloutsig_0_12z = { celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_5z } / { 1'h1, celloutsig_0_0z[2], celloutsig_0_3z, celloutsig_0_9z };
  assign celloutsig_0_10z = { celloutsig_0_7z[10], celloutsig_0_5z, celloutsig_0_5z } == { celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_1_10z = celloutsig_1_4z >= { celloutsig_1_7z[7:1], celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_5z };
  assign celloutsig_0_11z = { celloutsig_0_9z[4:1], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_3z } >= { in_data[29], celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_8z };
  assign celloutsig_0_18z = { celloutsig_0_15z[6:5], celloutsig_0_8z, celloutsig_0_3z } >= { celloutsig_0_9z[2:0], celloutsig_0_6z };
  assign celloutsig_0_5z = { celloutsig_0_0z[5:1], celloutsig_0_3z } <= in_data[20:15];
  assign celloutsig_1_14z = { celloutsig_1_4z[9:6], celloutsig_1_10z, celloutsig_1_10z, celloutsig_1_10z } <= { celloutsig_1_7z[2:0], celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_5z };
  assign celloutsig_1_6z = { in_data[183:181], celloutsig_1_0z } || celloutsig_1_4z[15:12];
  assign celloutsig_0_14z = { celloutsig_0_12z[5:3], celloutsig_0_5z, celloutsig_0_11z } || { celloutsig_0_9z[4:1], celloutsig_0_3z };
  assign celloutsig_0_0z = in_data[85:77] * in_data[74:66];
  assign celloutsig_0_4z = in_data[67:63] * { celloutsig_0_0z[8:5], celloutsig_0_1z };
  assign celloutsig_0_61z = celloutsig_0_60z[7] ? celloutsig_0_22z[7:0] : { celloutsig_0_14z, celloutsig_0_9z };
  assign celloutsig_1_9z = celloutsig_1_7z[7] ? celloutsig_1_4z[11:7] : { in_data[102:99], celloutsig_1_6z };
  assign celloutsig_0_7z = celloutsig_0_5z ? { in_data[91:84], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_2z, 1'h1 } : { in_data[34:32], celloutsig_0_0z };
  assign celloutsig_0_15z = celloutsig_0_7z[1] ? { celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_14z } : in_data[55:48];
  assign celloutsig_0_16z = celloutsig_0_3z ? celloutsig_0_12z[9:6] : celloutsig_0_0z[6:3];
  assign celloutsig_0_1z = in_data[22:18] != in_data[11:7];
  assign celloutsig_0_8z = celloutsig_0_6z & celloutsig_0_1z;
  assign celloutsig_1_1z = in_data[182:162] <<< { in_data[189:170], celloutsig_1_0z };
  assign celloutsig_1_3z = in_data[124:120] <<< in_data[170:166];
  assign celloutsig_1_4z = { in_data[157:146], celloutsig_1_3z } <<< celloutsig_1_1z[16:0];
  assign celloutsig_1_19z = { in_data[138:134], celloutsig_1_14z } <<< { celloutsig_1_9z, celloutsig_1_5z };
  assign celloutsig_0_22z = { celloutsig_0_9z[1], celloutsig_0_9z, celloutsig_0_11z } <<< { celloutsig_0_0z[6:0], celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_60z = { celloutsig_0_9z[5:0], celloutsig_0_44z, celloutsig_0_5z } - { celloutsig_0_12z[6:1], celloutsig_0_16z };
  assign celloutsig_1_7z = in_data[177:170] - { in_data[177:171], celloutsig_1_6z };
  always_latch
    if (!clkin_data[0]) celloutsig_0_44z = 3'h0;
    else if (celloutsig_1_18z) celloutsig_0_44z = in_data[43:41];
  always_latch
    if (clkin_data[0]) celloutsig_0_9z = 7'h00;
    else if (celloutsig_1_18z) celloutsig_0_9z = { celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_8z };
  assign { out_data[128], out_data[101:96], out_data[39:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_61z, celloutsig_0_62z };
endmodule
