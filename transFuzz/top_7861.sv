/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [12:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [4:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [5:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [4:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [5:0] celloutsig_0_40z;
  wire [4:0] celloutsig_0_41z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  reg [11:0] celloutsig_0_45z;
  reg [3:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire [4:0] celloutsig_0_48z;
  wire [8:0] celloutsig_0_4z;
  wire [8:0] celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_59z;
  wire [19:0] celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire [4:0] celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire [14:0] celloutsig_0_67z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_82z;
  wire [2:0] celloutsig_0_83z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [8:0] celloutsig_1_11z;
  wire [3:0] celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [3:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  reg [6:0] _00_;
  always_latch
    if (celloutsig_1_19z) _00_ = 7'h00;
    else if (!clkin_data[0]) _00_ = { celloutsig_0_4z[8:7], celloutsig_0_4z[5:3], celloutsig_0_4z[4], celloutsig_0_4z[0] };
  assign { celloutsig_0_52z[8:7], celloutsig_0_52z[5:2], celloutsig_0_52z[0] } = _00_;
  reg [10:0] _01_;
  always_latch
    if (!celloutsig_1_19z) _01_ = 11'h000;
    else if (!clkin_data[32]) _01_ = { celloutsig_0_20z[3:2], celloutsig_0_2z, celloutsig_0_27z, celloutsig_0_4z[8:7], celloutsig_0_4z[5:3], celloutsig_0_4z[4], celloutsig_0_4z[0] };
  assign { celloutsig_0_31z[12:7], celloutsig_0_31z[5:2], celloutsig_0_31z[0] } = _01_;
  assign celloutsig_0_56z = ~(celloutsig_0_28z & celloutsig_0_55z);
  assign celloutsig_1_1z = ~(in_data[168] & in_data[153]);
  assign celloutsig_1_4z = ~(celloutsig_1_1z & celloutsig_1_3z[1]);
  assign celloutsig_0_1z = ~(celloutsig_0_0z & celloutsig_0_0z);
  assign celloutsig_0_15z = ~(celloutsig_0_7z & celloutsig_0_3z);
  assign celloutsig_0_53z = !(celloutsig_0_2z ? celloutsig_0_40z[2] : celloutsig_0_44z);
  assign celloutsig_0_55z = !(celloutsig_0_2z ? celloutsig_0_47z : celloutsig_0_9z);
  assign celloutsig_0_62z = !(celloutsig_0_7z ? celloutsig_0_43z : celloutsig_0_53z);
  assign celloutsig_0_7z = !(celloutsig_0_0z ? celloutsig_0_6z : celloutsig_0_6z);
  assign celloutsig_1_0z = !(in_data[116] ? in_data[122] : in_data[120]);
  assign celloutsig_1_19z = !(celloutsig_1_0z ? celloutsig_1_18z : celloutsig_1_3z[0]);
  assign celloutsig_0_13z = !(celloutsig_0_0z ? celloutsig_0_0z : celloutsig_0_12z);
  assign celloutsig_0_32z = { celloutsig_0_31z[8:7], 1'h0, celloutsig_0_31z[5], celloutsig_0_1z, celloutsig_0_24z, celloutsig_0_8z, celloutsig_0_21z, celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_24z, celloutsig_0_29z, celloutsig_0_22z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_29z } > { celloutsig_0_4z[8:7], 1'h0, celloutsig_0_4z[5:3], celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_8z, celloutsig_0_23z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_0z };
  assign celloutsig_0_6z = celloutsig_0_5z[15:12] > { celloutsig_0_5z[1:0], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_64z = { celloutsig_0_8z, celloutsig_0_32z, celloutsig_0_0z, celloutsig_0_21z, celloutsig_0_62z, celloutsig_0_46z, celloutsig_0_56z } > { celloutsig_0_5z[9], in_data[42], celloutsig_0_5z[7:4], in_data[37], celloutsig_0_17z, celloutsig_0_37z, celloutsig_0_1z };
  assign celloutsig_0_16z = { celloutsig_0_5z[16:9], in_data[42], celloutsig_0_5z[7:6] } > { celloutsig_0_4z[7], 1'h0, celloutsig_0_4z[5:3], celloutsig_0_4z[4], 1'h0, celloutsig_0_4z[0], celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_0z };
  assign celloutsig_0_22z = { celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_2z, celloutsig_0_20z[4:2], celloutsig_0_2z, celloutsig_0_20z[0], celloutsig_0_2z, celloutsig_0_21z } > { celloutsig_0_5z[12:9], in_data[42], celloutsig_0_5z[7:6], celloutsig_0_0z, celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_15z };
  assign celloutsig_0_26z = { celloutsig_0_5z[12:9], in_data[42], celloutsig_0_5z[7:4], in_data[37], celloutsig_0_5z[2:1], celloutsig_0_10z, celloutsig_0_25z, celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_19z, celloutsig_0_23z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_19z } > { in_data[67:56], celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_16z };
  assign celloutsig_0_44z = in_data[60:37] || { celloutsig_0_5z[5:4], in_data[37], celloutsig_0_5z[2:0], celloutsig_0_0z, celloutsig_0_18z, celloutsig_0_38z, celloutsig_0_37z, celloutsig_0_6z, celloutsig_0_21z, celloutsig_0_2z, celloutsig_0_18z, celloutsig_0_9z, celloutsig_0_36z, celloutsig_0_32z, celloutsig_0_15z, celloutsig_0_15z };
  assign celloutsig_0_47z = { celloutsig_0_46z[3:1], celloutsig_0_15z, celloutsig_0_29z } || { celloutsig_0_4z[5:3], celloutsig_0_4z[4] };
  assign celloutsig_0_82z = { celloutsig_0_40z[3], celloutsig_0_43z, celloutsig_0_32z, celloutsig_0_1z, celloutsig_0_38z, celloutsig_0_40z, celloutsig_0_19z } || { celloutsig_0_67z[5:2], celloutsig_0_26z, celloutsig_0_40z, celloutsig_0_32z };
  assign celloutsig_0_9z = { celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_3z } || { celloutsig_0_5z[19:17], celloutsig_0_0z, celloutsig_0_6z };
  assign celloutsig_1_5z = { in_data[168:167], celloutsig_1_0z } || { celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_8z = { celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_6z } || { in_data[142:140], celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_0_17z = { in_data[34:18], celloutsig_0_8z } || { in_data[21:19], celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_7z, celloutsig_0_15z, celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_3z, celloutsig_0_15z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_13z };
  assign celloutsig_0_0z = in_data[13:10] < in_data[36:33];
  assign celloutsig_0_37z = { celloutsig_0_2z, celloutsig_0_20z[0], celloutsig_0_9z, celloutsig_0_33z, celloutsig_0_11z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_28z, celloutsig_0_12z, celloutsig_0_16z } < { celloutsig_0_31z[12:7], 1'h0, celloutsig_0_31z[5:2], 1'h0, celloutsig_0_31z[0], celloutsig_0_19z };
  assign celloutsig_0_61z = { celloutsig_0_46z[2:1], celloutsig_0_53z, celloutsig_0_28z, celloutsig_0_35z, celloutsig_0_38z, celloutsig_0_7z, celloutsig_0_46z, celloutsig_0_46z, celloutsig_0_44z, celloutsig_0_20z[4:2], celloutsig_0_2z, celloutsig_0_20z[0], celloutsig_0_6z, celloutsig_0_34z, celloutsig_0_21z, celloutsig_0_31z[5], celloutsig_0_39z[3:1], celloutsig_0_3z } < { celloutsig_0_46z, celloutsig_0_47z, celloutsig_0_16z, celloutsig_0_11z, celloutsig_0_44z, celloutsig_0_23z, celloutsig_0_32z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_26z, celloutsig_0_33z, celloutsig_0_41z, celloutsig_0_41z, celloutsig_0_59z };
  assign celloutsig_0_8z = { celloutsig_0_4z[7], 1'h0, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_7z } < { celloutsig_0_4z[7], 1'h0, celloutsig_0_4z[5:3] };
  assign celloutsig_0_10z = { celloutsig_0_5z[15:9], in_data[42], celloutsig_0_0z } < { celloutsig_0_5z[18:16], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_1_18z = { celloutsig_1_13z[3:2], celloutsig_1_2z } < celloutsig_1_11z[8:6];
  assign celloutsig_0_14z = in_data[32:25] < { 1'h0, celloutsig_0_4z[5:3], celloutsig_0_4z[4], 1'h0, celloutsig_0_4z[0], celloutsig_0_8z };
  assign celloutsig_0_18z = in_data[64:56] < { celloutsig_0_12z, celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_17z, celloutsig_0_15z };
  assign celloutsig_0_25z = { celloutsig_0_5z[13:9], in_data[42], celloutsig_0_5z[7:4], celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_19z } < { celloutsig_0_5z[18:13], celloutsig_0_11z, celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_24z };
  assign celloutsig_0_27z = { celloutsig_0_22z, celloutsig_0_6z, celloutsig_0_21z, celloutsig_0_0z } < { celloutsig_0_5z[12:11], celloutsig_0_24z, celloutsig_0_25z };
  assign celloutsig_0_29z = { celloutsig_0_24z, celloutsig_0_2z, celloutsig_0_17z } < { celloutsig_0_9z, celloutsig_0_21z, celloutsig_0_25z };
  assign celloutsig_0_33z = { celloutsig_0_5z[1:0], celloutsig_0_13z, celloutsig_0_17z, celloutsig_0_14z } % { 1'h1, in_data[67:64] };
  assign celloutsig_0_41z = { 1'h0, celloutsig_0_4z[0], celloutsig_0_8z, celloutsig_0_28z, celloutsig_0_0z } % { 1'h1, celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_11z };
  assign celloutsig_1_3z = in_data[172:169] % { 1'h1, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_11z = { celloutsig_1_0z, celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_6z } % { 1'h1, celloutsig_1_3z[0], celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_5z };
  assign celloutsig_0_38z = { celloutsig_0_36z[5:2], celloutsig_0_37z, celloutsig_0_37z, celloutsig_0_15z, celloutsig_0_35z, celloutsig_0_29z, celloutsig_0_32z, celloutsig_0_22z, celloutsig_0_26z } !== { celloutsig_0_22z, celloutsig_0_34z, celloutsig_0_4z[8:7], 1'h0, celloutsig_0_4z[5:3], celloutsig_0_4z[4], 1'h0, celloutsig_0_4z[0], celloutsig_0_15z };
  assign celloutsig_0_43z = in_data[53:51] !== in_data[89:87];
  assign celloutsig_0_59z = { celloutsig_0_4z[4], 1'h0, celloutsig_0_43z, celloutsig_0_2z } !== in_data[62:59];
  assign celloutsig_1_6z = { in_data[132:129], celloutsig_1_0z } !== { celloutsig_1_3z[1:0], celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_1_7z = { celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_2z } !== { celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_0_11z = { celloutsig_0_4z[5:3], celloutsig_0_4z[4] } !== { celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_2z };
  assign celloutsig_0_12z = { 1'h0, celloutsig_0_4z[0], celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_9z } !== { in_data[86:71], celloutsig_0_1z, celloutsig_0_11z };
  assign celloutsig_0_21z = { celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_20z[4:2], celloutsig_0_2z, celloutsig_0_20z[0], celloutsig_0_9z, celloutsig_0_17z } !== { celloutsig_0_4z[8:7], 1'h0, celloutsig_0_4z[5:3], celloutsig_0_4z[4], 1'h0, celloutsig_0_14z };
  assign celloutsig_0_2z = { in_data[39:37], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z } !== in_data[44:38];
  assign celloutsig_0_24z = { celloutsig_0_14z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_7z } !== { celloutsig_0_5z[19:14], celloutsig_0_12z, celloutsig_0_17z };
  assign celloutsig_0_28z = { celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_15z } !== { celloutsig_0_5z[2], celloutsig_0_19z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_13z };
  assign celloutsig_0_30z = { celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_21z } !== { celloutsig_0_28z, celloutsig_0_29z, celloutsig_0_22z };
  assign celloutsig_0_3z = ~^ in_data[25:20];
  assign celloutsig_0_34z = ~^ { celloutsig_0_5z[12:11], celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_26z, celloutsig_0_21z, celloutsig_0_28z, celloutsig_0_24z, celloutsig_0_13z, celloutsig_0_20z[4:2], celloutsig_0_2z, celloutsig_0_20z[0], celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_29z, celloutsig_0_26z, celloutsig_0_4z[8:7], 1'h0, celloutsig_0_4z[5:3], celloutsig_0_4z[4], 1'h0, celloutsig_0_4z[0], celloutsig_0_8z };
  assign celloutsig_1_2z = ~^ { in_data[138], celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_10z = ~^ { in_data[141:138], celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_8z };
  assign celloutsig_0_23z = ~^ { celloutsig_0_4z[7], 1'h0, celloutsig_0_4z[5:3], celloutsig_0_4z[4], 1'h0, celloutsig_0_4z[0], celloutsig_0_22z, celloutsig_0_14z, celloutsig_0_12z };
  assign celloutsig_0_36z = { celloutsig_0_3z, celloutsig_0_30z, celloutsig_0_25z, celloutsig_0_18z, celloutsig_0_22z, celloutsig_0_25z } ^ { celloutsig_0_33z[3], celloutsig_0_21z, celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_28z };
  assign celloutsig_0_40z = { celloutsig_0_15z, celloutsig_0_25z, celloutsig_0_29z, celloutsig_0_37z, celloutsig_0_27z, celloutsig_0_8z } ^ { celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_15z };
  assign celloutsig_0_48z = { celloutsig_0_1z, celloutsig_0_46z } ^ { celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_23z, celloutsig_0_21z, celloutsig_0_26z };
  assign celloutsig_0_63z = { celloutsig_0_39z[3:1], celloutsig_0_43z, celloutsig_0_29z } ^ { celloutsig_0_48z[4:1], celloutsig_0_17z };
  assign celloutsig_0_67z = { celloutsig_0_45z[4:1], celloutsig_0_64z, celloutsig_0_1z, celloutsig_0_13z, celloutsig_0_61z, celloutsig_0_31z[5], celloutsig_0_39z[3:1], celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_55z } ^ { celloutsig_0_18z, celloutsig_0_6z, celloutsig_0_41z, celloutsig_0_3z, celloutsig_0_32z, celloutsig_0_30z, celloutsig_0_63z };
  assign celloutsig_0_83z = { celloutsig_0_52z[8:7], celloutsig_0_19z } ^ celloutsig_0_46z[3:1];
  assign celloutsig_1_13z = { celloutsig_1_3z[1:0], celloutsig_1_4z, celloutsig_1_5z } ^ { celloutsig_1_11z[6], celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_8z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_45z = 12'h000;
    else if (!clkin_data[0]) celloutsig_0_45z = { celloutsig_0_4z[5:4], celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_41z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_3z };
  always_latch
    if (celloutsig_1_19z) celloutsig_0_46z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_46z = { celloutsig_0_37z, celloutsig_0_43z, celloutsig_0_44z, celloutsig_0_37z };
  assign celloutsig_0_35z = ~((celloutsig_0_28z & celloutsig_0_19z) | (celloutsig_0_34z & celloutsig_0_13z));
  assign celloutsig_1_9z = ~((celloutsig_1_5z & celloutsig_1_7z) | (celloutsig_1_3z[3] & celloutsig_1_1z));
  assign celloutsig_0_19z = ~((celloutsig_0_4z[5] & in_data[3]) | (celloutsig_0_1z & celloutsig_0_2z));
  assign { celloutsig_0_4z[5:4], celloutsig_0_4z[0], celloutsig_0_4z[8:7], celloutsig_0_4z[3] } = { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, in_data[6:5], celloutsig_0_0z } ^ { celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_3z };
  assign { celloutsig_0_5z[7:6], celloutsig_0_5z[4], celloutsig_0_5z[2], celloutsig_0_5z[10:9], celloutsig_0_5z[5], celloutsig_0_5z[1:0], celloutsig_0_5z[12], celloutsig_0_5z[19:13], celloutsig_0_5z[11] } = { celloutsig_0_4z[5:4], celloutsig_0_4z[4], celloutsig_0_4z[0], celloutsig_0_4z[8:7], celloutsig_0_4z[3], celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_2z, in_data[55:49], celloutsig_0_0z } ^ { in_data[41:40], in_data[38], in_data[36], in_data[44:43], in_data[39], in_data[35], celloutsig_0_3z, in_data[46], in_data[53:47], in_data[45] };
  assign { celloutsig_0_20z[2], celloutsig_0_20z[3], celloutsig_0_20z[4], celloutsig_0_20z[0] } = { celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_9z, celloutsig_0_2z } ^ { celloutsig_0_4z[4:3], celloutsig_0_4z[4], celloutsig_0_4z[0] };
  assign celloutsig_0_39z[3:1] = celloutsig_0_31z[4:2] ^ { celloutsig_0_26z, celloutsig_0_38z, celloutsig_0_2z };
  assign celloutsig_0_20z[1] = celloutsig_0_2z;
  assign { celloutsig_0_31z[6], celloutsig_0_31z[1] } = 2'h0;
  assign { celloutsig_0_39z[4], celloutsig_0_39z[0] } = { celloutsig_0_31z[5], celloutsig_0_3z };
  assign { celloutsig_0_4z[6], celloutsig_0_4z[2:1] } = { 1'h0, celloutsig_0_4z[4], 1'h0 };
  assign { celloutsig_0_52z[6], celloutsig_0_52z[1] } = 2'h0;
  assign { celloutsig_0_5z[8], celloutsig_0_5z[3] } = { in_data[42], in_data[37] };
  assign { out_data[128], out_data[96], out_data[32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_82z, celloutsig_0_83z };
endmodule
