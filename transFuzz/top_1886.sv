/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [3:0] _01_;
  wire [2:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  reg [2:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [24:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [9:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [16:0] celloutsig_0_21z;
  wire [5:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire [8:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [9:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [3:0] celloutsig_0_36z;
  wire [2:0] celloutsig_0_37z;
  wire [6:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_45z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire [15:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [12:0] celloutsig_0_51z;
  wire celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_67z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire [7:0] celloutsig_0_70z;
  wire [19:0] celloutsig_0_71z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [15:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [15:0] celloutsig_1_6z;
  wire [4:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_67z = ~(celloutsig_0_25z & celloutsig_0_10z);
  assign celloutsig_1_9z = ~(celloutsig_1_8z & celloutsig_1_5z);
  assign celloutsig_0_10z = ~(celloutsig_0_1z & celloutsig_0_6z);
  assign celloutsig_0_3z = !(celloutsig_0_0z[2] ? celloutsig_0_0z[2] : celloutsig_0_2z[8]);
  assign celloutsig_0_32z = !(celloutsig_0_17z ? _00_ : celloutsig_0_29z);
  assign celloutsig_0_41z = !(celloutsig_0_26z ? celloutsig_0_38z[1] : celloutsig_0_16z[10]);
  assign celloutsig_0_48z = !(celloutsig_0_37z[1] ? celloutsig_0_20z : celloutsig_0_41z);
  assign celloutsig_0_63z = !(celloutsig_0_25z ? celloutsig_0_48z : celloutsig_0_23z);
  assign celloutsig_1_0z = !(in_data[150] ? in_data[152] : in_data[107]);
  assign celloutsig_1_1z = !(in_data[156] ? celloutsig_1_0z : celloutsig_1_0z);
  assign celloutsig_0_20z = !(celloutsig_0_10z ? celloutsig_0_1z : celloutsig_0_4z[7]);
  assign celloutsig_0_24z = !(celloutsig_0_15z ? celloutsig_0_14z[2] : celloutsig_0_20z);
  assign celloutsig_0_58z = celloutsig_0_6z | ~(celloutsig_0_4z[6]);
  assign celloutsig_0_8z = in_data[5] | ~(celloutsig_0_4z[2]);
  assign celloutsig_1_11z = celloutsig_1_0z | ~(celloutsig_1_1z);
  assign celloutsig_0_12z = celloutsig_0_2z[7] | ~(celloutsig_0_4z[10]);
  assign celloutsig_0_26z = celloutsig_0_3z | ~(celloutsig_0_0z[2]);
  assign celloutsig_0_1z = celloutsig_0_0z[0] | celloutsig_0_0z[2];
  assign celloutsig_0_25z = celloutsig_0_22z[4] | celloutsig_0_16z[5];
  reg [3:0] _21_;
  always_ff @(posedge clkin_data[128], negedge clkin_data[32])
    if (!clkin_data[32]) _21_ <= 4'h0;
    else _21_ <= { celloutsig_0_21z[3:2], celloutsig_0_11z, celloutsig_0_15z };
  assign { _01_[3:1], _00_ } = _21_;
  assign celloutsig_0_7z = celloutsig_0_2z[3:1] >= { in_data[53:52], celloutsig_0_1z };
  assign celloutsig_1_19z = { celloutsig_1_10z[2], celloutsig_1_4z, celloutsig_1_11z } >= in_data[180:176];
  assign celloutsig_0_23z = { in_data[64:63], celloutsig_0_0z, celloutsig_0_13z } >= celloutsig_0_4z[13:8];
  assign celloutsig_0_11z = { in_data[61], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_9z } < { celloutsig_0_4z[7], celloutsig_0_8z, celloutsig_0_0z };
  assign celloutsig_0_13z = { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z } < { in_data[51:48], celloutsig_0_11z, celloutsig_0_12z };
  assign celloutsig_0_17z = { in_data[71:68], celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_8z } < { in_data[65:63], celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_12z };
  assign celloutsig_0_18z = celloutsig_0_2z[7:1] < { celloutsig_0_4z[3], celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_11z };
  assign celloutsig_0_45z = celloutsig_0_22z[5] & ~(celloutsig_0_14z[1]);
  assign celloutsig_1_5z = celloutsig_1_4z[2] & ~(celloutsig_1_3z);
  assign celloutsig_0_9z = celloutsig_0_1z & ~(celloutsig_0_8z);
  assign celloutsig_0_15z = celloutsig_0_4z[5] & ~(celloutsig_0_11z);
  assign celloutsig_0_37z = { celloutsig_0_20z, celloutsig_0_25z, celloutsig_0_20z } % { 1'h1, celloutsig_0_26z, celloutsig_0_10z };
  assign celloutsig_0_4z = { celloutsig_0_2z[4:1], celloutsig_0_2z, celloutsig_0_0z } % { 1'h1, celloutsig_0_2z[7:1], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z[2:1], in_data[0] };
  assign celloutsig_1_4z = { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z } % { 1'h1, in_data[179:178] };
  assign celloutsig_0_16z = { celloutsig_0_4z[11:0], celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_6z } % { 1'h1, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_13z };
  assign celloutsig_0_62z = { celloutsig_0_2z[8:3], celloutsig_0_31z, celloutsig_0_45z, celloutsig_0_26z } != { in_data[74:58], celloutsig_0_50z };
  assign celloutsig_1_10z = ~ { celloutsig_1_2z[13:9], celloutsig_1_9z };
  assign celloutsig_0_51z = celloutsig_0_16z[18:6] | celloutsig_0_16z[13:1];
  assign celloutsig_0_31z = celloutsig_0_4z[14:5] | { celloutsig_0_21z[13:9], celloutsig_0_15z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_24z, celloutsig_0_10z };
  assign celloutsig_0_5z = & celloutsig_0_2z[7:0];
  assign celloutsig_0_6z = & { celloutsig_0_4z[10:1], celloutsig_0_2z[7:0] };
  assign celloutsig_1_8z = & { celloutsig_1_7z[4:1], celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_30z = & { celloutsig_0_27z, celloutsig_0_25z, celloutsig_0_16z[24:3], celloutsig_0_8z };
  assign celloutsig_0_47z = celloutsig_0_0z[1] & celloutsig_0_31z[5];
  assign celloutsig_0_69z = celloutsig_0_32z & celloutsig_0_4z[1];
  assign celloutsig_1_3z = celloutsig_1_1z & in_data[186];
  assign celloutsig_0_27z = celloutsig_0_13z & celloutsig_0_14z[1];
  assign celloutsig_0_29z = celloutsig_0_11z & _01_[3];
  assign celloutsig_0_70z = celloutsig_0_4z[10:3] << { celloutsig_0_16z[12:11], celloutsig_0_27z, celloutsig_0_63z, celloutsig_0_9z, celloutsig_0_48z, celloutsig_0_17z, celloutsig_0_30z };
  assign celloutsig_0_71z = { celloutsig_0_21z[13:2], celloutsig_0_36z, celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_33z, celloutsig_0_47z } << { celloutsig_0_51z[11:3], celloutsig_0_22z, celloutsig_0_47z, celloutsig_0_69z, celloutsig_0_62z, celloutsig_0_58z, celloutsig_0_67z };
  assign celloutsig_0_0z = in_data[95:93] >>> in_data[67:65];
  assign celloutsig_0_38z = { celloutsig_0_2z[6:1], celloutsig_0_27z } >>> { celloutsig_0_36z, celloutsig_0_6z, celloutsig_0_17z, celloutsig_0_11z };
  assign celloutsig_1_2z = in_data[187:172] >>> { in_data[170:158], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_6z = { celloutsig_1_2z[12:4], celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_5z } >>> { celloutsig_1_2z[15:1], celloutsig_1_5z };
  assign celloutsig_0_19z = { celloutsig_0_0z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_0z } >>> celloutsig_0_16z[18:9];
  assign celloutsig_0_36z = { celloutsig_0_4z[14], celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_23z } - { celloutsig_0_32z, celloutsig_0_0z };
  assign celloutsig_1_18z = celloutsig_1_6z[3:0] - { celloutsig_1_6z[7:5], celloutsig_1_5z };
  assign celloutsig_0_21z = { celloutsig_0_19z[8:2], celloutsig_0_19z } - { in_data[40:26], celloutsig_0_10z, celloutsig_0_9z };
  assign celloutsig_0_2z = in_data[21:13] - in_data[94:86];
  assign celloutsig_0_22z = { celloutsig_0_19z[6:2], celloutsig_0_15z } ~^ { celloutsig_0_16z[22:18], celloutsig_0_5z };
  assign celloutsig_0_33z = ~((celloutsig_0_2z[0] & celloutsig_0_14z[2]) | celloutsig_0_23z);
  assign celloutsig_0_50z = ~((celloutsig_0_30z & celloutsig_0_48z) | celloutsig_0_26z);
  always_latch
    if (clkin_data[64]) celloutsig_0_14z = 3'h0;
    else if (celloutsig_1_18z[0]) celloutsig_0_14z = { celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_13z };
  assign { celloutsig_1_7z[1], celloutsig_1_7z[4:2] } = ~ { celloutsig_1_3z, celloutsig_1_2z[5:4], celloutsig_1_0z };
  assign _01_[0] = _00_;
  assign celloutsig_1_7z[0] = celloutsig_1_7z[2];
  assign { out_data[131:128], out_data[96], out_data[39:32], out_data[19:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_70z, celloutsig_0_71z };
endmodule
