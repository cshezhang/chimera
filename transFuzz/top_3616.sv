/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [6:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_19z;
  reg [10:0] celloutsig_0_1z;
  wire celloutsig_0_2z;
  reg [10:0] celloutsig_0_33z;
  wire celloutsig_0_3z;
  wire [11:0] celloutsig_0_4z;
  wire [2:0] celloutsig_0_5z;
  wire celloutsig_0_8z;
  wire celloutsig_0_98z;
  wire celloutsig_0_99z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [4:0] celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire [3:0] celloutsig_1_13z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [5:0] celloutsig_1_2z;
  wire [9:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_7z;
  reg [7:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_5z = !(celloutsig_1_0z ? celloutsig_1_2z[5] : celloutsig_1_4z);
  assign celloutsig_0_8z = ~(in_data[40] | celloutsig_0_4z[6]);
  assign celloutsig_1_12z = ~(celloutsig_1_2z[5] | celloutsig_1_4z);
  assign celloutsig_0_9z = ~((celloutsig_0_5z[1] | celloutsig_0_2z) & (celloutsig_0_3z | in_data[92]));
  assign celloutsig_1_1z = in_data[137] ^ celloutsig_1_0z;
  assign celloutsig_1_7z = ~(celloutsig_1_5z ^ celloutsig_1_0z);
  assign celloutsig_1_16z = ~(celloutsig_1_9z[0] ^ celloutsig_1_13z[1]);
  assign celloutsig_0_4z = { in_data[15:5], celloutsig_0_2z } & { in_data[23], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_2z = in_data[64:62] === celloutsig_0_0z[3:1];
  assign celloutsig_0_99z = ! celloutsig_0_33z[7:1];
  assign celloutsig_1_19z = { celloutsig_1_3z[9:7], celloutsig_1_12z } || celloutsig_1_3z[5:2];
  assign celloutsig_0_3z = in_data[35] & ~(celloutsig_0_2z);
  assign celloutsig_1_0z = in_data[112] & ~(in_data[176]);
  assign celloutsig_0_5z = celloutsig_0_4z[2:0] * celloutsig_0_0z[3:1];
  assign celloutsig_1_3z = { in_data[151:149], celloutsig_1_0z, celloutsig_1_2z } * { celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_10z = { in_data[76:71], celloutsig_0_8z } != { celloutsig_0_1z[10:5], celloutsig_0_3z };
  assign celloutsig_0_19z = { celloutsig_0_1z[7:2], celloutsig_0_10z } != celloutsig_0_0z;
  assign celloutsig_1_2z = in_data[109:104] | in_data[191:186];
  assign celloutsig_1_13z = celloutsig_1_10z[4:1] | { celloutsig_1_7z, celloutsig_1_12z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_0_0z = in_data[22:16] ~^ in_data[76:70];
  assign celloutsig_1_10z = { celloutsig_1_2z[1:0], celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_5z } ~^ { celloutsig_1_2z[2:0], celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_0_98z = ~((in_data[93] & celloutsig_0_19z) | celloutsig_0_9z);
  always_latch
    if (!clkin_data[32]) celloutsig_0_33z = 11'h000;
    else if (!celloutsig_1_19z) celloutsig_0_33z = { in_data[40:33], celloutsig_0_5z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_9z = 8'h00;
    else if (clkin_data[0]) celloutsig_1_9z = { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_2z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_1z = 11'h000;
    else if (celloutsig_1_19z) celloutsig_0_1z = in_data[95:85];
  assign celloutsig_1_4z = ~((in_data[98] & celloutsig_1_3z[7]) | (celloutsig_1_2z[1] & in_data[130]));
  assign celloutsig_1_18z = ~((celloutsig_1_16z & celloutsig_1_4z) | (celloutsig_1_9z[3] & celloutsig_1_3z[5]));
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_98z, celloutsig_0_99z };
endmodule
