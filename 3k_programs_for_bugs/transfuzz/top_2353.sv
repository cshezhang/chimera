/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [17:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  reg [6:0] celloutsig_0_14z;
  wire [9:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [9:0] celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire [9:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [14:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [10:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [3:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [5:0] celloutsig_0_35z;
  wire [14:0] celloutsig_0_3z;
  wire [4:0] celloutsig_0_42z;
  wire celloutsig_0_45z;
  wire celloutsig_0_4z;
  wire [7:0] celloutsig_0_51z;
  wire celloutsig_0_56z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire [10:0] celloutsig_1_10z;
  reg [5:0] celloutsig_1_12z;
  wire [12:0] celloutsig_1_15z;
  wire [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [14:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [15:0] celloutsig_1_7z;
  wire [4:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_61z = ~(celloutsig_0_24z[2] & celloutsig_0_56z);
  assign celloutsig_0_25z = ~(celloutsig_0_14z[5] & celloutsig_0_11z);
  assign celloutsig_0_7z = ~(celloutsig_0_6z | celloutsig_0_0z[6]);
  assign celloutsig_0_10z = ~(in_data[7] | celloutsig_0_5z);
  assign celloutsig_0_18z = ~(celloutsig_0_9z | celloutsig_0_13z);
  assign celloutsig_1_3z = celloutsig_1_1z | ~(celloutsig_1_2z[3]);
  assign celloutsig_0_12z = celloutsig_0_3z[5] | ~(in_data[81]);
  assign celloutsig_1_4z = in_data[182] ^ celloutsig_1_0z[1];
  assign celloutsig_0_30z = celloutsig_0_25z ^ celloutsig_0_8z[1];
  assign celloutsig_0_16z = ~(celloutsig_0_2z[3] ^ celloutsig_0_1z[1]);
  assign celloutsig_0_42z = { celloutsig_0_35z[1:0], celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_13z } & { celloutsig_0_15z[6:3], celloutsig_0_27z };
  assign celloutsig_0_8z = { celloutsig_0_1z[6:4], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_6z } & celloutsig_0_1z[7:2];
  assign celloutsig_0_60z = { celloutsig_0_51z[6:4], celloutsig_0_56z, celloutsig_0_23z, celloutsig_0_30z, celloutsig_0_22z, celloutsig_0_22z } >= { celloutsig_0_26z[10:4], celloutsig_0_21z };
  assign celloutsig_1_1z = in_data[112:103] >= in_data[173:164];
  assign celloutsig_1_9z = in_data[175:169] >= { in_data[185:184], celloutsig_1_8z };
  assign celloutsig_0_13z = celloutsig_0_0z[16:14] >= celloutsig_0_3z[4:2];
  assign celloutsig_0_17z = { celloutsig_0_2z[2:0], celloutsig_0_2z, celloutsig_0_9z } >= { celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_0_27z = { celloutsig_0_7z, celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_25z } >= { celloutsig_0_14z[5:0], celloutsig_0_21z, celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_25z, celloutsig_0_5z };
  assign celloutsig_0_28z = { celloutsig_0_14z[6:5], celloutsig_0_22z } >= celloutsig_0_20z[5:3];
  assign celloutsig_0_3z = in_data[91:77] % { 1'h1, celloutsig_0_0z[11:6], celloutsig_0_1z };
  assign celloutsig_1_2z = { in_data[139:128], celloutsig_1_0z } % { 1'h1, in_data[129:117], celloutsig_1_1z };
  assign celloutsig_1_7z = { in_data[102:97], celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_4z } % { 1'h1, celloutsig_1_2z[13:0], in_data[96] };
  assign celloutsig_1_8z = { celloutsig_1_2z[2], celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_4z } % { 1'h1, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_19z = { celloutsig_0_14z[5:1], celloutsig_0_2z, celloutsig_0_7z } % { 1'h1, celloutsig_0_2z[2:1], celloutsig_0_14z };
  assign celloutsig_0_20z = { celloutsig_0_0z[7], celloutsig_0_10z, celloutsig_0_1z } % { 1'h1, celloutsig_0_3z[11:4], celloutsig_0_16z };
  assign celloutsig_0_24z = { celloutsig_0_15z[9:4], celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_7z, celloutsig_0_11z } % { 1'h1, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_22z, celloutsig_0_21z, celloutsig_0_14z };
  assign celloutsig_0_26z = { celloutsig_0_24z[10:4], celloutsig_0_23z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_5z } % { 1'h1, celloutsig_0_0z[10:7], celloutsig_0_2z, celloutsig_0_21z, celloutsig_0_13z };
  assign celloutsig_1_19z = celloutsig_1_15z[7:3] % { 1'h1, celloutsig_1_8z[3:0] };
  assign celloutsig_0_1z = celloutsig_0_0z[9:2] % { 1'h1, in_data[66:60] };
  assign celloutsig_0_4z = celloutsig_0_1z[7:5] != celloutsig_0_2z[2:0];
  assign celloutsig_0_6z = celloutsig_0_0z[10:4] != { celloutsig_0_2z[0], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_2z };
  assign celloutsig_0_21z = { celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_6z } != { celloutsig_0_14z[4], celloutsig_0_6z, celloutsig_0_17z };
  assign celloutsig_1_6z = celloutsig_1_0z[0] & celloutsig_1_3z;
  assign celloutsig_0_9z = celloutsig_0_5z & celloutsig_0_3z[5];
  assign celloutsig_0_11z = celloutsig_0_4z & celloutsig_0_2z[1];
  assign celloutsig_0_45z = ~^ { celloutsig_0_24z[14:1], celloutsig_0_42z };
  assign celloutsig_0_56z = ~^ celloutsig_0_0z[6:2];
  assign celloutsig_0_5z = ~^ { in_data[26:24], celloutsig_0_4z, celloutsig_0_2z };
  assign celloutsig_0_22z = ~^ { celloutsig_0_14z[5:1], celloutsig_0_13z };
  assign celloutsig_0_51z = celloutsig_0_19z[9:2] >> { celloutsig_0_26z[7:2], celloutsig_0_7z, celloutsig_0_45z };
  assign celloutsig_1_0z = in_data[100:98] >> in_data[152:150];
  assign celloutsig_1_15z = { celloutsig_1_2z[6:0], celloutsig_1_3z, celloutsig_1_8z } >> { celloutsig_1_10z[10:3], celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_0_15z = in_data[23:14] >> { celloutsig_0_5z, celloutsig_0_12z, celloutsig_0_1z };
  assign celloutsig_0_35z = celloutsig_0_3z[10:5] ~^ { celloutsig_0_2z[2:0], celloutsig_0_28z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_0_2z = in_data[72:69] ~^ in_data[69:66];
  assign celloutsig_1_5z = ~((celloutsig_1_1z & in_data[156]) | celloutsig_1_4z);
  assign celloutsig_0_23z = ~((celloutsig_0_16z & celloutsig_0_12z) | celloutsig_0_3z[14]);
  always_latch
    if (clkin_data[64]) celloutsig_0_0z = 18'h00000;
    else if (celloutsig_1_19z[0]) celloutsig_0_0z = in_data[56:39];
  always_latch
    if (clkin_data[96]) celloutsig_1_12z = 6'h00;
    else if (!clkin_data[32]) celloutsig_1_12z = { celloutsig_1_2z[11:8], celloutsig_1_9z, celloutsig_1_1z };
  always_latch
    if (!clkin_data[64]) celloutsig_0_14z = 7'h00;
    else if (celloutsig_1_19z[0]) celloutsig_0_14z = { celloutsig_0_0z[5:4], celloutsig_0_9z, celloutsig_0_2z };
  assign { celloutsig_1_10z[10:6], celloutsig_1_10z[3], celloutsig_1_10z[5], celloutsig_1_10z[2:1], celloutsig_1_10z[4] } = { celloutsig_1_7z[15:13], celloutsig_1_1z, celloutsig_1_0z[2], celloutsig_1_0z[2:1], celloutsig_1_0z[1:0], celloutsig_1_0z[0] } ~^ { in_data[139:135], in_data[132], in_data[134], in_data[131], celloutsig_1_5z, in_data[133] };
  assign { out_data[133:132], out_data[134], out_data[130:128] } = ~ celloutsig_1_12z;
  assign celloutsig_1_10z[0] = 1'h1;
  assign { out_data[131], out_data[100:96], out_data[32], out_data[0] } = { out_data[134], celloutsig_1_19z, celloutsig_0_60z, celloutsig_0_61z };
endmodule
