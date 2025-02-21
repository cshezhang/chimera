/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  reg [2:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [3:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [7:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  reg [7:0] celloutsig_0_29z;
  wire celloutsig_0_30z;
  reg [11:0] celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [3:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [3:0] _00_;
  always_latch
    if (!clkin_data[32]) _00_ = 4'h0;
    else if (celloutsig_1_18z) _00_ = { celloutsig_0_30z, celloutsig_0_3z, celloutsig_0_35z, celloutsig_0_10z };
  assign { out_data[37], out_data[34:32] } = _00_;
  assign celloutsig_0_35z = ~((celloutsig_0_24z | celloutsig_0_16z[1]) & (celloutsig_0_8z | celloutsig_0_32z[2]));
  assign celloutsig_1_0z = ~((in_data[184] | in_data[191]) & (in_data[151] | in_data[151]));
  assign celloutsig_1_4z = ~((celloutsig_1_3z | celloutsig_1_0z) & (celloutsig_1_2z[0] | celloutsig_1_0z));
  assign celloutsig_1_10z = ~((celloutsig_1_3z | celloutsig_1_1z) & (celloutsig_1_9z | celloutsig_1_6z));
  assign celloutsig_1_18z = ~((celloutsig_1_9z | celloutsig_1_9z) & (celloutsig_1_3z | in_data[111]));
  assign celloutsig_0_6z = ~((1'h0 | celloutsig_0_5z) & (celloutsig_0_5z | 1'h0));
  assign celloutsig_1_19z = ~((celloutsig_1_13z | celloutsig_1_4z) & (celloutsig_1_1z | celloutsig_1_2z[2]));
  assign celloutsig_0_15z = ~((1'h0 | celloutsig_0_6z) & (celloutsig_0_0z | celloutsig_0_12z[2]));
  assign celloutsig_0_22z = ~((celloutsig_0_5z | in_data[11]) & (celloutsig_0_3z | celloutsig_0_13z));
  assign celloutsig_0_24z = ~((celloutsig_0_20z | celloutsig_0_9z[4]) & (celloutsig_0_20z | celloutsig_0_20z));
  assign celloutsig_0_26z = ~((celloutsig_0_7z | celloutsig_0_6z) & (celloutsig_0_15z | celloutsig_0_1z));
  assign celloutsig_0_28z = ~((1'h0 | celloutsig_0_11z) & (celloutsig_0_12z[1] | celloutsig_0_0z));
  assign celloutsig_1_6z = celloutsig_1_4z ^ celloutsig_1_5z;
  assign celloutsig_1_9z = celloutsig_1_4z ^ celloutsig_1_8z;
  assign celloutsig_1_13z = celloutsig_1_10z ^ celloutsig_1_4z;
  assign celloutsig_1_3z = { in_data[163:161], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_2z } > in_data[173:147];
  assign celloutsig_1_8z = { celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_3z } > { celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_5z = in_data[77:57] > { in_data[67:52], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_1z = { in_data[89:60], celloutsig_0_0z, celloutsig_0_0z } > in_data[63:32];
  assign celloutsig_0_17z = { celloutsig_0_9z[4:3], celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_3z, 1'h0 } > { in_data[93], 1'h0, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_9z };
  assign celloutsig_0_0z = ! in_data[45:27];
  assign celloutsig_1_1z = ! { in_data[164:156], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_5z = ! celloutsig_1_2z[2:0];
  assign celloutsig_0_8z = ! in_data[57:45];
  assign celloutsig_0_25z = ! celloutsig_0_9z;
  assign celloutsig_0_30z = ! { celloutsig_0_19z[1:0], celloutsig_0_20z };
  assign celloutsig_0_3z = ! { in_data[93:90], celloutsig_0_1z };
  assign celloutsig_1_2z = - { in_data[144:143], celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_9z = - { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_16z = - { celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_8z };
  assign celloutsig_0_19z = - { celloutsig_0_3z, celloutsig_0_16z };
  assign celloutsig_0_23z = - { celloutsig_0_19z[3:1], celloutsig_0_3z, celloutsig_0_19z };
  assign celloutsig_0_7z = & { in_data[13:1], celloutsig_0_0z };
  assign celloutsig_0_11z = & { celloutsig_0_1z, in_data[89:88] };
  assign celloutsig_0_20z = & { celloutsig_0_17z, in_data[88:82] };
  assign celloutsig_0_21z = & { celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_12z[0] };
  assign celloutsig_0_27z = & { celloutsig_0_26z, celloutsig_0_17z, celloutsig_0_9z };
  assign celloutsig_0_38z = | { celloutsig_0_29z[2], celloutsig_0_21z, celloutsig_0_27z, celloutsig_0_28z, celloutsig_0_3z };
  assign celloutsig_0_10z = | { in_data[23:22], celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_7z };
  assign celloutsig_0_13z = | { celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_5z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_12z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_12z = { celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_7z };
  always_latch
    if (clkin_data[64]) celloutsig_0_29z = 8'h00;
    else if (celloutsig_1_18z) celloutsig_0_29z = { celloutsig_0_23z[3:2], celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_24z, celloutsig_0_25z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_32z = 12'h000;
    else if (celloutsig_1_18z) celloutsig_0_32z = { celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_17z, celloutsig_0_24z, celloutsig_0_10z, celloutsig_0_22z, celloutsig_0_9z, celloutsig_0_20z };
  assign { out_data[128], out_data[96], out_data[36:35], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, 2'h0, celloutsig_0_38z };
endmodule
