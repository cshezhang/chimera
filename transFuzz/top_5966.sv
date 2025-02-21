/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [6:0] _00_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [6:0] celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire [24:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [6:0] celloutsig_0_23z;
  wire [2:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire [5:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_3z;
  wire [15:0] celloutsig_0_40z;
  wire [15:0] celloutsig_0_45z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [3:0] celloutsig_0_62z;
  wire celloutsig_0_6z;
  wire [4:0] celloutsig_0_70z;
  wire [5:0] celloutsig_0_73z;
  wire [13:0] celloutsig_0_74z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [6:0] celloutsig_1_10z;
  wire [21:0] celloutsig_1_12z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [17:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [3:0] celloutsig_1_8z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_31z = ~((celloutsig_0_27z | celloutsig_0_25z) & celloutsig_0_21z);
  assign celloutsig_0_4z = ~((celloutsig_0_1z | in_data[47]) & celloutsig_0_1z);
  assign celloutsig_0_7z = ~((celloutsig_0_1z | celloutsig_0_1z) & celloutsig_0_6z);
  assign celloutsig_1_4z = ~((in_data[190] | celloutsig_1_3z) & celloutsig_1_2z[12]);
  assign celloutsig_1_18z = ~((celloutsig_1_5z | celloutsig_1_12z[1]) & in_data[180]);
  assign celloutsig_0_25z = ~((celloutsig_0_4z | celloutsig_0_10z) & celloutsig_0_24z[2]);
  assign celloutsig_0_13z = ~((celloutsig_0_5z | celloutsig_0_6z) & (celloutsig_0_10z | celloutsig_0_5z));
  assign celloutsig_0_16z = in_data[68] | celloutsig_0_7z;
  assign celloutsig_0_2z = in_data[52] | in_data[22];
  assign celloutsig_0_6z = ~(celloutsig_0_4z ^ celloutsig_0_2z);
  assign celloutsig_1_0z = ~(in_data[157] ^ in_data[129]);
  assign celloutsig_0_22z = ~(celloutsig_0_13z ^ in_data[69]);
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[0])
    if (!clkin_data[0]) _00_ <= 7'h00;
    else _00_ <= { celloutsig_0_18z, celloutsig_0_2z };
  assign celloutsig_0_74z = { in_data[95:83], celloutsig_0_32z } & { celloutsig_0_22z, _00_, celloutsig_0_30z };
  assign celloutsig_1_10z = { celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_6z } & { celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_3z };
  assign celloutsig_0_70z = { celloutsig_0_40z[9:8], celloutsig_0_22z, celloutsig_0_25z, celloutsig_0_34z } / { 1'h1, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_32z, celloutsig_0_3z };
  assign celloutsig_0_73z = { celloutsig_0_62z, celloutsig_0_31z, celloutsig_0_49z } / { 1'h1, celloutsig_0_70z };
  assign celloutsig_0_24z = { celloutsig_0_17z[5], celloutsig_0_20z, celloutsig_0_10z } / { 1'h1, celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_0_1z = in_data[14:9] == in_data[41:36];
  assign celloutsig_0_12z = { celloutsig_0_11z, celloutsig_0_8z } == { celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_5z = { celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z } && { celloutsig_1_2z[14:10], celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_0_9z = { in_data[74:64], celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_3z } && { in_data[39:26], celloutsig_0_7z, celloutsig_0_1z };
  assign celloutsig_0_14z = { in_data[52:50], celloutsig_0_3z, celloutsig_0_13z, celloutsig_0_10z } && { in_data[5:4], celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_12z };
  assign celloutsig_0_21z = { celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_9z, celloutsig_0_15z, celloutsig_0_12z } && { celloutsig_0_19z[13], celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_7z };
  assign celloutsig_1_6z = ! in_data[135:128];
  assign celloutsig_0_5z = { in_data[83], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_4z } || { celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_10z = { in_data[59:50], celloutsig_0_1z } || { celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_20z = { in_data[40:39], celloutsig_0_0z } < celloutsig_0_18z[4:2];
  assign celloutsig_1_3z = { in_data[150], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } != in_data[151:148];
  assign celloutsig_1_1z = { in_data[137:136], celloutsig_1_0z, celloutsig_1_0z } !== in_data[160:157];
  assign celloutsig_0_8z = { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_3z } !== { celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_4z };
  assign celloutsig_0_62z = ~ celloutsig_0_45z[8:5];
  assign celloutsig_1_2z = ~ in_data[127:110];
  assign celloutsig_1_12z = ~ { in_data[154:135], celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_0_32z = & { celloutsig_0_17z[6:4], celloutsig_0_5z };
  assign celloutsig_0_49z = & { celloutsig_0_40z[11:8], celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_4z };
  assign celloutsig_1_19z = & { celloutsig_1_10z[5:2], celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_3z };
  assign celloutsig_0_11z = & { celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_4z };
  assign celloutsig_0_0z = | in_data[61:59];
  assign celloutsig_0_34z = | { celloutsig_0_19z[6:1], celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_30z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_13z };
  assign celloutsig_0_3z = | { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_26z = celloutsig_0_21z & celloutsig_0_19z[5];
  assign celloutsig_0_15z = { celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_6z } >> { celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_1_8z = { celloutsig_1_2z[16], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_6z } >> celloutsig_1_2z[5:2];
  assign celloutsig_0_19z = { in_data[72:49], celloutsig_0_9z } >> { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_14z, celloutsig_0_13z };
  assign celloutsig_0_45z = { in_data[75:67], _00_ } <<< { celloutsig_0_30z[0], celloutsig_0_30z, celloutsig_0_27z, celloutsig_0_26z, celloutsig_0_15z, celloutsig_0_14z, celloutsig_0_7z };
  assign celloutsig_0_17z = { in_data[2:0], celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_4z } <<< { in_data[69:66], celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_5z };
  assign celloutsig_0_23z = { celloutsig_0_4z, celloutsig_0_18z } <<< { celloutsig_0_15z[3:1], celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_40z = celloutsig_0_19z[18:3] >>> { celloutsig_0_19z[20:11], celloutsig_0_18z };
  assign celloutsig_0_18z = { celloutsig_0_17z[5:1], celloutsig_0_5z } >>> { celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_0_30z = { celloutsig_0_23z[6:5], celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z } >>> { in_data[15:11], celloutsig_0_21z };
  assign celloutsig_0_27z = ~((celloutsig_0_12z & celloutsig_0_4z) | (celloutsig_0_3z & celloutsig_0_18z[2]));
  assign { out_data[128], out_data[96], out_data[37:32], out_data[13:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_73z, celloutsig_0_74z };
endmodule
