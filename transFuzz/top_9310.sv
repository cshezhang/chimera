/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  reg [20:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [2:0] celloutsig_0_22z;
  wire [9:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [3:0] celloutsig_0_26z;
  reg [5:0] celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [21:0] celloutsig_0_31z;
  wire [3:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  reg [3:0] celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [2:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire [8:0] celloutsig_0_4z;
  wire [11:0] celloutsig_0_50z;
  wire celloutsig_0_52z;
  wire [4:0] celloutsig_0_55z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire [5:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire [4:0] celloutsig_1_10z;
  wire [2:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [4:0] celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [4:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  reg [25:0] celloutsig_1_4z;
  wire [10:0] celloutsig_1_5z;
  wire [13:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [11:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_5z = ~(celloutsig_0_2z | in_data[78]);
  assign celloutsig_0_8z = ~(celloutsig_0_0z | celloutsig_0_6z[1]);
  assign celloutsig_0_17z = ~(celloutsig_0_5z | celloutsig_0_15z);
  assign celloutsig_1_3z = ~((celloutsig_1_1z[2] | celloutsig_1_1z[3]) & (celloutsig_1_0z[1] | celloutsig_1_0z[0]));
  assign celloutsig_1_19z = ~((celloutsig_1_10z[3] | celloutsig_1_0z[1]) & (celloutsig_1_10z[3] | celloutsig_1_9z[1]));
  assign celloutsig_0_9z = ~((celloutsig_0_0z | celloutsig_0_4z[3]) & (celloutsig_0_7z | in_data[43]));
  assign celloutsig_0_1z = ~((celloutsig_0_0z | celloutsig_0_0z) & (celloutsig_0_0z | in_data[43]));
  assign celloutsig_0_18z = ~((celloutsig_0_9z | celloutsig_0_14z) & (celloutsig_0_12z | celloutsig_0_4z[8]));
  assign celloutsig_0_19z = celloutsig_0_16z[9] | celloutsig_0_16z[19];
  assign celloutsig_0_30z = celloutsig_0_14z | celloutsig_0_1z;
  assign celloutsig_0_35z = ~(celloutsig_0_30z ^ celloutsig_0_3z);
  assign celloutsig_0_52z = ~(celloutsig_0_36z[3] ^ celloutsig_0_19z);
  assign celloutsig_0_13z = ~(celloutsig_0_1z ^ in_data[28]);
  assign celloutsig_0_24z = ~(celloutsig_0_23z[8] ^ celloutsig_0_18z);
  assign celloutsig_0_29z = ~(celloutsig_0_17z ^ celloutsig_0_16z[4]);
  assign celloutsig_0_26z = { celloutsig_0_22z[0], celloutsig_0_22z } / { 1'h1, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_8z };
  assign celloutsig_0_34z = { celloutsig_0_31z[20], celloutsig_0_17z, celloutsig_0_30z, celloutsig_0_9z } / { 1'h1, celloutsig_0_23z[8:7], celloutsig_0_17z };
  assign celloutsig_1_9z = { celloutsig_1_5z[10:4], celloutsig_1_1z } / { 1'h1, celloutsig_1_6z[10:3], celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_8z };
  assign celloutsig_1_12z = celloutsig_1_1z[4:2] / { 1'h1, celloutsig_1_9z[4:3] };
  assign celloutsig_1_7z = celloutsig_1_6z[2:0] == in_data[103:101];
  assign celloutsig_0_10z = { celloutsig_0_8z, celloutsig_0_6z } == { celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_5z };
  assign celloutsig_0_38z = { celloutsig_0_36z, celloutsig_0_25z, celloutsig_0_11z } === { celloutsig_0_4z[5:1], celloutsig_0_25z };
  assign celloutsig_0_59z = { celloutsig_0_16z[13:8], celloutsig_0_50z[1:0] } > celloutsig_0_31z[10:3];
  assign celloutsig_0_11z = { celloutsig_0_4z[2:1], celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z } <= { celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_0_57z = { celloutsig_0_16z[11], celloutsig_0_55z, celloutsig_0_19z } && { celloutsig_0_36z[3:2], celloutsig_0_52z, celloutsig_0_26z };
  assign celloutsig_0_12z = ! { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_42z = celloutsig_0_34z[3:1] || celloutsig_0_31z[5:3];
  assign celloutsig_0_48z = { celloutsig_0_42z, celloutsig_0_25z, celloutsig_0_12z } % { 1'h1, celloutsig_0_42z, celloutsig_0_2z };
  assign celloutsig_0_55z = { celloutsig_0_1z, celloutsig_0_29z, celloutsig_0_48z } * { celloutsig_0_27z[4:2], celloutsig_0_49z, celloutsig_0_17z };
  assign celloutsig_1_1z = { celloutsig_1_0z[1:0], celloutsig_1_0z } * { in_data[191:190], celloutsig_1_0z };
  assign celloutsig_0_4z = celloutsig_0_1z ? { in_data[28:24], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z } : { in_data[49:43], 1'h0, celloutsig_0_3z };
  assign celloutsig_0_50z[1:0] = celloutsig_0_12z ? { celloutsig_0_20z, celloutsig_0_20z } : { celloutsig_0_45z, celloutsig_0_29z };
  assign celloutsig_1_18z = celloutsig_1_8z ? { celloutsig_1_10z[0], 1'h1, celloutsig_1_13z } : { celloutsig_1_17z[2:1], 1'h0 };
  assign celloutsig_0_20z = { celloutsig_0_16z[12:8], celloutsig_0_1z, celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_18z } != { celloutsig_0_16z[7:5], celloutsig_0_17z, celloutsig_0_6z };
  assign celloutsig_0_46z = { celloutsig_0_4z[5:2], celloutsig_0_1z } !== { celloutsig_0_25z, celloutsig_0_19z, celloutsig_0_29z, celloutsig_0_7z, celloutsig_0_38z };
  assign celloutsig_0_6z = ~ { celloutsig_0_4z[6:2], celloutsig_0_2z };
  assign celloutsig_0_22z = ~ { celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_10z };
  assign celloutsig_0_49z = & { celloutsig_0_36z[3:1], celloutsig_0_29z, celloutsig_0_26z, celloutsig_0_24z, celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_8z };
  assign celloutsig_0_58z = & { celloutsig_0_57z, celloutsig_0_46z, celloutsig_0_45z, celloutsig_0_35z, celloutsig_0_23z, celloutsig_0_21z, celloutsig_0_4z[7:6], celloutsig_0_3z };
  assign celloutsig_1_8z = & { celloutsig_1_6z[7], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_3z = | { in_data[40:36], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_7z = celloutsig_0_0z & celloutsig_0_5z;
  assign celloutsig_1_13z = in_data[137] & celloutsig_1_3z;
  assign celloutsig_1_2z = | in_data[162:124];
  assign celloutsig_0_2z = | { celloutsig_0_1z, in_data[65:61], celloutsig_0_0z };
  assign celloutsig_0_0z = ^ in_data[77:75];
  assign celloutsig_0_15z = ^ { celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_13z };
  assign celloutsig_0_21z = ^ { in_data[89:83], celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_25z = ^ { celloutsig_0_23z[4:3], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_17z };
  assign celloutsig_1_5z = in_data[144:134] >> { in_data[180:171], celloutsig_1_2z };
  assign celloutsig_1_10z = celloutsig_1_1z >> celloutsig_1_5z[7:3];
  assign celloutsig_0_31z = { celloutsig_0_4z[6:4], celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_21z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_22z } >> { celloutsig_0_16z[18:1], celloutsig_0_22z, celloutsig_0_19z };
  assign celloutsig_1_0z = in_data[111:109] ~^ in_data[162:160];
  assign celloutsig_1_6z = { celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z } ~^ { celloutsig_1_4z[21:13], celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_17z = { celloutsig_1_1z[1:0], celloutsig_1_12z } ~^ in_data[139:135];
  assign celloutsig_0_23z = { celloutsig_0_4z[8:3], celloutsig_0_21z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_8z } ~^ { celloutsig_0_16z[19:12], celloutsig_0_10z, celloutsig_0_10z };
  always_latch
    if (celloutsig_1_19z) celloutsig_0_36z = 4'h0;
    else if (clkin_data[0]) celloutsig_0_36z = { celloutsig_0_10z, celloutsig_0_20z, celloutsig_0_8z, celloutsig_0_29z };
  always_latch
    if (clkin_data[64]) celloutsig_1_4z = 26'h0000000;
    else if (clkin_data[32]) celloutsig_1_4z = { in_data[180:175], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_0z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_16z = 21'h000000;
    else if (!clkin_data[0]) celloutsig_0_16z = { celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_4z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_27z = 6'h00;
    else if (!clkin_data[0]) celloutsig_0_27z = in_data[74:69];
  assign celloutsig_0_45z = ~((celloutsig_0_15z & celloutsig_0_23z[7]) | (celloutsig_0_14z & celloutsig_0_21z));
  assign celloutsig_0_14z = ~((celloutsig_0_1z & celloutsig_0_6z[5]) | (celloutsig_0_1z & celloutsig_0_10z));
  assign celloutsig_0_50z[11:2] = celloutsig_0_16z[17:8];
  assign { out_data[130:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_58z, celloutsig_0_59z };
endmodule
