/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_1z;
  reg [4:0] celloutsig_0_22z;
  wire [3:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_2z;
  wire [2:0] celloutsig_0_3z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_8z;
  wire [16:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire [8:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [9:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [5:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [7:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_5z = !(celloutsig_0_0z ? in_data[92] : celloutsig_0_0z);
  assign celloutsig_1_5z = !(celloutsig_1_3z ? celloutsig_1_1z : celloutsig_1_3z);
  assign celloutsig_1_7z = !(in_data[179] ? celloutsig_1_3z : celloutsig_1_5z);
  assign celloutsig_1_12z = ~celloutsig_1_2z[9];
  assign celloutsig_1_14z = ~celloutsig_1_1z;
  assign celloutsig_0_24z = ~celloutsig_0_22z[1];
  assign celloutsig_1_11z = celloutsig_1_6z[6] | ~(celloutsig_1_0z[8]);
  assign celloutsig_0_2z = in_data[46] | ~(celloutsig_0_1z);
  assign celloutsig_1_16z = celloutsig_1_2z[9] ^ celloutsig_1_0z[1];
  assign celloutsig_0_23z = celloutsig_0_22z[3:0] + celloutsig_0_22z[3:0];
  assign celloutsig_1_18z = { celloutsig_1_14z, celloutsig_1_9z, celloutsig_1_10z } / { 1'h1, celloutsig_1_0z[5:4] };
  assign celloutsig_1_13z = { celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_9z } === { celloutsig_1_7z, celloutsig_1_11z, celloutsig_1_11z };
  assign celloutsig_1_9z = celloutsig_1_6z[7:3] > celloutsig_1_6z[4:0];
  assign celloutsig_1_17z = { celloutsig_1_6z[2:1], celloutsig_1_16z } > { celloutsig_1_7z, celloutsig_1_14z, celloutsig_1_14z };
  assign celloutsig_0_6z = celloutsig_0_4z[3:1] > { celloutsig_0_3z[2], celloutsig_0_2z, celloutsig_0_5z };
  assign celloutsig_0_12z = { celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_8z } > { celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_4z };
  assign celloutsig_1_1z = celloutsig_1_0z[6:1] > in_data[191:186];
  assign celloutsig_1_3z = celloutsig_1_2z[5:2] <= in_data[172:169];
  assign celloutsig_1_8z = { celloutsig_1_0z[14:0], celloutsig_1_4z, celloutsig_1_5z } <= { in_data[116:96], celloutsig_1_5z };
  assign celloutsig_0_1z = ! in_data[66:54];
  assign celloutsig_0_0z = in_data[62] & ~(in_data[11]);
  assign celloutsig_0_4z = { celloutsig_0_3z, celloutsig_0_2z } % { 1'h1, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_8z = { celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z } * { in_data[88:87], celloutsig_0_5z };
  assign celloutsig_1_4z = celloutsig_1_2z[8:3] * celloutsig_1_2z[9:4];
  assign celloutsig_1_6z = { celloutsig_1_0z[8:3], celloutsig_1_5z, celloutsig_1_1z } * { celloutsig_1_0z[13:7], celloutsig_1_1z };
  assign celloutsig_1_0z = in_data[191] ? in_data[159:143] : in_data[175:159];
  assign celloutsig_1_2z = - { in_data[147:139], celloutsig_1_1z };
  assign celloutsig_1_10z = | celloutsig_1_4z;
  assign celloutsig_0_11z = | in_data[16:12];
  assign celloutsig_1_19z = { celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_8z } - { in_data[152:148], celloutsig_1_16z, celloutsig_1_13z, celloutsig_1_17z, celloutsig_1_11z };
  assign celloutsig_0_3z = { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_0z } - { in_data[19], celloutsig_0_2z, celloutsig_0_0z };
  always_latch
    if (!clkin_data[0]) celloutsig_0_22z = 5'h00;
    else if (celloutsig_1_18z[0]) celloutsig_0_22z = { celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_2z };
  assign { out_data[130:128], out_data[104:96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_23z, celloutsig_0_24z };
endmodule
