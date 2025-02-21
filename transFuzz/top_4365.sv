/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [22:0] celloutsig_0_13z;
  reg [21:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [3:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [3:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [21:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  reg [6:0] celloutsig_0_26z;
  wire [5:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire [5:0] celloutsig_0_3z;
  wire celloutsig_0_43z;
  wire celloutsig_0_4z;
  reg [20:0] celloutsig_0_54z;
  wire celloutsig_0_5z;
  reg [15:0] celloutsig_0_61z;
  wire [3:0] celloutsig_0_6z;
  wire [2:0] celloutsig_0_79z;
  wire celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire celloutsig_0_8z;
  reg [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [5:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  reg [8:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_43z = !(celloutsig_0_6z[0] ? celloutsig_0_18z[3] : celloutsig_0_32z);
  assign celloutsig_0_7z = !(celloutsig_0_2z ? celloutsig_0_0z : celloutsig_0_4z);
  assign celloutsig_0_1z = !(in_data[41] ? in_data[62] : celloutsig_0_0z);
  assign celloutsig_0_30z = !(celloutsig_0_16z ? celloutsig_0_26z[0] : celloutsig_0_10z);
  assign celloutsig_0_10z = ~((in_data[18] | celloutsig_0_8z) & celloutsig_0_7z);
  assign celloutsig_0_16z = ~((celloutsig_0_4z | celloutsig_0_5z) & celloutsig_0_14z[1]);
  assign celloutsig_0_0z = ~(in_data[24] ^ in_data[69]);
  assign celloutsig_1_19z = ~(celloutsig_1_7z ^ celloutsig_1_16z);
  assign celloutsig_1_11z = { celloutsig_1_6z[4:3], celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_5z } <= { celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_10z };
  assign celloutsig_0_17z = { celloutsig_0_9z[3:1], celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_0z } <= { in_data[7:3], celloutsig_0_7z };
  assign celloutsig_0_80z = ! { celloutsig_0_61z[15:13], celloutsig_0_7z, celloutsig_0_35z, celloutsig_0_43z };
  assign celloutsig_1_9z = ! in_data[139:130];
  assign celloutsig_0_21z = { celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_7z } % { 1'h1, in_data[57:55] };
  assign celloutsig_0_18z = celloutsig_0_14z[17:14] % { 1'h1, celloutsig_0_13z[9:7] };
  assign celloutsig_0_23z = in_data[38:17] % { 1'h1, in_data[30:18], celloutsig_0_3z, celloutsig_0_22z, celloutsig_0_12z };
  assign celloutsig_0_6z = { in_data[13], celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_1z } * { celloutsig_0_3z[2:1], celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_28z = { celloutsig_0_3z[4:0], celloutsig_0_16z } * { celloutsig_0_14z[18], celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_1z };
  assign celloutsig_1_18z = { celloutsig_1_1z[5:2], celloutsig_1_13z, celloutsig_1_8z } !== { celloutsig_1_6z[8:4], celloutsig_1_16z };
  assign celloutsig_0_15z = { celloutsig_0_13z[10:8], celloutsig_0_7z, celloutsig_0_2z } !== { celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_0_19z = { celloutsig_0_18z[2], celloutsig_0_16z, celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_0z } !== { celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_17z };
  assign celloutsig_0_8z = | in_data[57:48];
  assign celloutsig_0_32z = celloutsig_0_18z[1] & celloutsig_0_19z;
  assign celloutsig_0_5z = celloutsig_0_4z & in_data[95];
  assign celloutsig_1_0z = in_data[177] & in_data[157];
  assign celloutsig_1_2z = celloutsig_1_0z & in_data[154];
  assign celloutsig_0_11z = celloutsig_0_3z[1] & celloutsig_0_6z[0];
  assign celloutsig_0_22z = celloutsig_0_17z & celloutsig_0_4z;
  assign celloutsig_1_4z = | { celloutsig_1_0z, in_data[127:124] };
  assign celloutsig_0_24z = | celloutsig_0_14z[6:1];
  assign celloutsig_0_4z = ^ { in_data[82], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_1_5z = ^ { celloutsig_1_1z[4:3], celloutsig_1_1z };
  assign celloutsig_1_8z = ^ { celloutsig_1_6z[8:4], celloutsig_1_0z };
  assign celloutsig_1_13z = ^ { in_data[136:133], celloutsig_1_11z };
  assign celloutsig_1_1z = { in_data[130:129], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } >> in_data[122:117];
  assign celloutsig_0_13z = { in_data[40:22], celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_0z } >> { celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_3z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z } <<< { in_data[19:17], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_3z = in_data[181:176] <<< celloutsig_1_1z;
  assign celloutsig_0_79z = { celloutsig_0_26z[2:1], celloutsig_0_16z } - { celloutsig_0_54z[7:6], celloutsig_0_37z };
  assign celloutsig_0_35z = ~((in_data[5] & celloutsig_0_9z[3]) | celloutsig_0_8z);
  assign celloutsig_0_37z = ~((celloutsig_0_30z & celloutsig_0_24z) | celloutsig_0_7z);
  assign celloutsig_1_7z = ~((celloutsig_1_2z & in_data[188]) | celloutsig_1_5z);
  assign celloutsig_1_10z = ~((celloutsig_1_7z & celloutsig_1_9z) | celloutsig_1_3z[5]);
  assign celloutsig_1_16z = ~((in_data[135] & celloutsig_1_2z) | celloutsig_1_13z);
  assign celloutsig_0_12z = ~((celloutsig_0_0z & in_data[65]) | celloutsig_0_11z);
  assign celloutsig_0_2z = ~((in_data[48] & celloutsig_0_1z) | celloutsig_0_0z);
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_54z = 21'h000000;
    else if (clkin_data[0]) celloutsig_0_54z = { celloutsig_0_23z[21:2], celloutsig_0_24z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_61z = 16'h0000;
    else if (!clkin_data[0]) celloutsig_0_61z = { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_28z };
  always_latch
    if (!clkin_data[96]) celloutsig_1_6z = 9'h000;
    else if (clkin_data[32]) celloutsig_1_6z = { in_data[117], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z };
  always_latch
    if (clkin_data[64]) celloutsig_0_9z = 5'h00;
    else if (clkin_data[0]) celloutsig_0_9z = { in_data[49:48], celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_8z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_14z = 22'h000000;
    else if (clkin_data[0]) celloutsig_0_14z = { in_data[70:51], celloutsig_0_7z, celloutsig_0_5z };
  always_latch
    if (clkin_data[64]) celloutsig_0_26z = 7'h00;
    else if (clkin_data[0]) celloutsig_0_26z = { celloutsig_0_21z[1], celloutsig_0_24z, celloutsig_0_24z, celloutsig_0_15z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_11z };
  assign { out_data[128], out_data[96], out_data[34:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_79z, celloutsig_0_80z };
endmodule
