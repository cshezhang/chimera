/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [3:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [4:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [4:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [4:0] celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [8:0] celloutsig_0_23z;
  wire celloutsig_0_26z;
  wire [5:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [11:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [5:0] celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire [9:0] celloutsig_0_3z;
  wire [17:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [10:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [10:0] celloutsig_1_11z;
  wire [3:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [22:0] celloutsig_1_2z;
  reg [6:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [27:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [15:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_7z = celloutsig_1_3z[6] ? celloutsig_1_3z[2] : celloutsig_1_3z[5];
  assign celloutsig_1_1z = !(in_data[124] ? celloutsig_1_0z : celloutsig_1_0z);
  assign celloutsig_0_18z = !(celloutsig_0_3z[9] ? celloutsig_0_6z[7] : celloutsig_0_10z);
  assign celloutsig_1_0z = ~((in_data[120] | in_data[168]) & in_data[169]);
  assign celloutsig_0_5z = ~((celloutsig_0_0z[0] | celloutsig_0_0z[2]) & celloutsig_0_0z[3]);
  assign celloutsig_0_9z = ~((celloutsig_0_6z[3] | celloutsig_0_0z[3]) & celloutsig_0_6z[9]);
  assign celloutsig_0_11z = ~((celloutsig_0_5z | in_data[71]) & celloutsig_0_10z);
  assign celloutsig_0_35z = ~((celloutsig_0_26z | celloutsig_0_3z[1]) & (celloutsig_0_18z | celloutsig_0_21z));
  assign celloutsig_1_15z = ~((celloutsig_1_14z[0] | celloutsig_1_4z) & (celloutsig_1_6z[17] | celloutsig_1_4z));
  assign celloutsig_0_12z = ~((celloutsig_0_5z | celloutsig_0_9z) & (celloutsig_0_10z | celloutsig_0_0z[3]));
  assign celloutsig_0_21z = ~((celloutsig_0_10z | celloutsig_0_20z) & (in_data[52] | celloutsig_0_10z));
  assign celloutsig_0_22z = celloutsig_0_4z | celloutsig_0_7z;
  assign celloutsig_0_4z = ~(in_data[0] ^ celloutsig_0_0z[1]);
  assign celloutsig_1_18z = ~(celloutsig_1_9z ^ celloutsig_1_15z);
  assign celloutsig_0_40z = { celloutsig_0_14z, celloutsig_0_32z, celloutsig_0_35z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_18z } + { celloutsig_0_23z[5:0], celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_27z };
  assign celloutsig_0_14z = { celloutsig_0_6z[3:2], celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_11z } + { celloutsig_0_1z[4], celloutsig_0_0z };
  assign celloutsig_0_8z = celloutsig_0_0z >= { in_data[37:35], celloutsig_0_4z };
  assign celloutsig_0_13z = { in_data[10:6], celloutsig_0_0z } >= { celloutsig_0_3z[7:0], celloutsig_0_5z };
  assign celloutsig_1_9z = celloutsig_1_8z[14:10] > { celloutsig_1_8z[8:7], celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_19z = { celloutsig_1_14z[2:0], celloutsig_1_15z } <= celloutsig_1_11z[6:3];
  assign celloutsig_1_5z = ! { celloutsig_1_3z[6:1], celloutsig_1_2z };
  assign celloutsig_0_16z = { celloutsig_0_6z[7:5], celloutsig_0_11z, celloutsig_0_4z } % { 1'h1, celloutsig_0_3z[6:3] };
  assign celloutsig_0_3z = in_data[28:19] % { 1'h1, in_data[28:20] };
  assign celloutsig_1_2z = in_data[188:166] % { 1'h1, in_data[161:140] };
  assign celloutsig_1_11z = { celloutsig_1_2z[14:5], celloutsig_1_4z } % { 1'h1, celloutsig_1_6z[12:5], celloutsig_1_5z, in_data[96] };
  assign celloutsig_0_19z = { celloutsig_0_12z, celloutsig_0_0z } % { 1'h1, celloutsig_0_0z[1], celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_15z };
  assign celloutsig_0_30z = celloutsig_0_7z ? { celloutsig_0_27z[2:0], celloutsig_0_0z, celloutsig_0_1z[4], celloutsig_0_0z } : { celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_27z };
  assign celloutsig_0_32z = celloutsig_0_16z[3] ? in_data[64:59] : in_data[16:11];
  assign celloutsig_0_1z[4] = in_data[40] ? in_data[84] : in_data[22];
  assign celloutsig_0_27z = celloutsig_0_17z ? { celloutsig_0_11z, celloutsig_0_16z } : { in_data[32:28], celloutsig_0_13z };
  assign celloutsig_0_17z = { celloutsig_0_1z[4], celloutsig_0_0z } != { celloutsig_0_0z[2:0], celloutsig_0_12z, celloutsig_0_4z };
  assign celloutsig_0_20z = { celloutsig_0_0z[3], celloutsig_0_19z, celloutsig_0_16z, celloutsig_0_4z, celloutsig_0_11z } != { celloutsig_0_6z[10:4], celloutsig_0_19z, celloutsig_0_12z };
  assign celloutsig_0_31z = { celloutsig_0_30z[2:0], celloutsig_0_16z, celloutsig_0_28z, celloutsig_0_22z } !== { celloutsig_0_1z[4], celloutsig_0_0z, celloutsig_0_1z[4], celloutsig_0_0z };
  assign celloutsig_1_4z = & celloutsig_1_2z[21:16];
  assign celloutsig_0_10z = & { celloutsig_0_8z, celloutsig_0_4z, in_data[88:87] };
  assign celloutsig_0_28z = & { celloutsig_0_12z, celloutsig_0_6z[8:2] };
  assign celloutsig_0_7z = celloutsig_0_5z & celloutsig_0_0z[1];
  assign celloutsig_0_15z = celloutsig_0_0z[3] & in_data[79];
  assign celloutsig_0_41z = | { celloutsig_0_31z, in_data[45:44] };
  assign celloutsig_0_26z = ~^ { celloutsig_0_0z[3], celloutsig_0_22z, celloutsig_0_5z };
  assign celloutsig_1_8z = { in_data[124:111], celloutsig_1_7z, celloutsig_1_1z } << { celloutsig_1_6z[21:15], celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_1_14z = { celloutsig_1_2z[10:8], celloutsig_1_0z } << { celloutsig_1_8z[15:13], celloutsig_1_9z };
  assign celloutsig_0_23z = { celloutsig_0_0z[2:1], celloutsig_0_21z, celloutsig_0_16z, celloutsig_0_15z } << { in_data[50:47], celloutsig_0_0z, celloutsig_0_15z };
  assign celloutsig_1_6z = { celloutsig_1_3z[2], celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_5z } >>> { in_data[139:113], celloutsig_1_0z };
  assign celloutsig_0_6z = { in_data[82:76], celloutsig_0_0z } >>> { celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_1z[4], celloutsig_0_0z, celloutsig_0_4z };
  always_latch
    if (!clkin_data[32]) celloutsig_0_0z = 4'h0;
    else if (celloutsig_1_18z) celloutsig_0_0z = in_data[60:57];
  always_latch
    if (clkin_data[64]) celloutsig_1_3z = 7'h00;
    else if (clkin_data[0]) celloutsig_1_3z = celloutsig_1_2z[14:8];
  assign celloutsig_0_1z[3:0] = celloutsig_0_0z;
  assign { out_data[128], out_data[96], out_data[49:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_40z, celloutsig_0_41z };
endmodule
