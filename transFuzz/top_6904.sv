/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire [9:0] _10_;
  wire [31:0] _11_;
  reg [3:0] _12_;
  wire [15:0] _13_;
  wire [14:0] _14_;
  wire [7:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [6:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [5:0] celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [15:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [13:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [4:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [43:0] celloutsig_0_37z;
  wire [14:0] celloutsig_0_38z;
  wire [2:0] celloutsig_0_39z;
  wire [5:0] celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire [2:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire [36:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_55z;
  wire [5:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire [8:0] celloutsig_0_67z;
  wire celloutsig_0_68z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_91z;
  wire [6:0] celloutsig_0_92z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [6:0] celloutsig_1_11z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [11:0] celloutsig_1_1z;
  wire [8:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [16:0] celloutsig_1_5z;
  wire [10:0] celloutsig_1_6z;
  wire celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_35z = !(celloutsig_0_2z[4] ? celloutsig_0_7z : celloutsig_0_1z);
  assign celloutsig_0_45z = !(celloutsig_0_38z[0] ? celloutsig_0_15z : celloutsig_0_38z[6]);
  assign celloutsig_0_47z = !(celloutsig_0_44z ? celloutsig_0_3z[2] : in_data[57]);
  assign celloutsig_0_51z = !(celloutsig_0_5z ? celloutsig_0_25z : celloutsig_0_6z);
  assign celloutsig_0_6z = !(celloutsig_0_5z ? celloutsig_0_3z[5] : in_data[76]);
  assign celloutsig_0_11z = !(celloutsig_0_7z ? celloutsig_0_10z[6] : celloutsig_0_8z);
  assign celloutsig_0_22z = !(celloutsig_0_14z ? celloutsig_0_13z[5] : in_data[6]);
  assign celloutsig_0_30z = ~((celloutsig_0_6z | celloutsig_0_14z) & (celloutsig_0_4z | celloutsig_0_12z));
  assign celloutsig_0_33z = ~((celloutsig_0_26z[3] | celloutsig_0_7z) & (celloutsig_0_25z | celloutsig_0_12z));
  assign celloutsig_0_48z = ~((celloutsig_0_42z[1] | celloutsig_0_47z) & (_00_ | celloutsig_0_37z[42]));
  assign celloutsig_0_5z = ~((in_data[93] | celloutsig_0_4z) & (celloutsig_0_4z | celloutsig_0_2z[0]));
  assign celloutsig_0_7z = ~((_01_ | in_data[1]) & (celloutsig_0_3z[1] | celloutsig_0_1z));
  assign celloutsig_1_8z = ~((celloutsig_1_2z[3] | celloutsig_1_0z) & (in_data[158] | in_data[116]));
  assign celloutsig_0_15z = ~((celloutsig_0_3z[3] | celloutsig_0_14z) & (celloutsig_0_1z | celloutsig_0_7z));
  assign celloutsig_0_25z = ~((celloutsig_0_10z[4] | celloutsig_0_11z) & (celloutsig_0_7z | celloutsig_0_11z));
  assign celloutsig_0_27z = ~((celloutsig_0_24z[8] | celloutsig_0_3z[2]) & (celloutsig_0_6z | celloutsig_0_15z));
  assign celloutsig_0_29z = celloutsig_0_13z[3] | ~(in_data[17]);
  assign celloutsig_0_31z = _02_ | ~(celloutsig_0_6z);
  assign celloutsig_0_91z = celloutsig_0_59z[3] | ~(celloutsig_0_43z);
  assign celloutsig_1_0z = in_data[169] | ~(in_data[187]);
  assign celloutsig_1_4z = celloutsig_1_0z | ~(celloutsig_1_3z);
  assign celloutsig_1_10z = celloutsig_1_3z | ~(_06_);
  assign celloutsig_0_9z = celloutsig_0_1z | ~(celloutsig_0_5z);
  assign celloutsig_0_12z = celloutsig_0_7z | ~(_07_);
  assign celloutsig_0_23z = celloutsig_0_4z | ~(celloutsig_0_20z);
  assign celloutsig_0_43z = celloutsig_0_39z[2] | celloutsig_0_29z;
  assign celloutsig_0_36z = ~(celloutsig_0_27z ^ celloutsig_0_18z);
  assign celloutsig_0_44z = ~(celloutsig_0_21z ^ celloutsig_0_14z);
  assign celloutsig_0_1z = ~(_08_ ^ _09_);
  assign celloutsig_0_42z = celloutsig_0_10z[4:2] + celloutsig_0_26z[4:2];
  assign celloutsig_0_92z = { celloutsig_0_16z, celloutsig_0_7z } + { celloutsig_0_42z, celloutsig_0_29z, celloutsig_0_8z, celloutsig_0_68z, celloutsig_0_19z };
  assign celloutsig_1_6z = celloutsig_1_1z[10:0] + celloutsig_1_5z[15:5];
  assign celloutsig_0_10z = { in_data[8:7], celloutsig_0_3z } + in_data[51:44];
  reg [15:0] _48_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _48_ <= 16'h0000;
    else _48_ <= in_data[36:21];
  assign { _13_[15], _08_, _13_[13], _01_, _09_, _04_, _13_[9:6], _00_, _07_, _13_[3:0] } = _48_;
  reg [6:0] _49_;
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[64])
    if (!clkin_data[64]) _49_ <= 7'h00;
    else _49_ <= { celloutsig_0_13z[5:4], celloutsig_0_25z, celloutsig_0_36z, celloutsig_0_33z, celloutsig_0_28z, celloutsig_0_18z };
  assign { _10_[7:2], _03_ } = _49_;
  reg [31:0] _50_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[96])
    if (clkin_data[96]) _50_ <= 32'd0;
    else _50_ <= { in_data[145:139], celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_3z };
  assign { _11_[31:21], _06_, _11_[19:0] } = _50_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _12_ <= 4'h0;
    else _12_ <= { celloutsig_1_11z[5:3], celloutsig_1_10z };
  reg [14:0] _52_;
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _52_ <= 15'h0000;
    else _52_ <= { celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_15z };
  assign { _02_, _14_[13:1], _05_ } = _52_;
  assign celloutsig_0_67z = { celloutsig_0_49z[8:1], celloutsig_0_11z } / { 1'h1, _09_, _04_, _13_[9:7], celloutsig_0_1z, celloutsig_0_55z, celloutsig_0_48z };
  assign celloutsig_1_1z = in_data[136:125] / { 1'h1, in_data[142:133], celloutsig_1_0z };
  assign celloutsig_0_13z = { celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_1z } / { 1'h1, in_data[46:41] };
  assign celloutsig_0_26z = { in_data[40:28], celloutsig_0_20z } / { 1'h1, celloutsig_0_10z[5:3], celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_25z };
  assign celloutsig_0_55z = celloutsig_0_13z[5:0] <= { _10_[6:3], celloutsig_0_11z, celloutsig_0_25z };
  assign celloutsig_0_8z = { _00_, _07_, _13_[3:2], celloutsig_0_6z } <= in_data[25:21];
  assign celloutsig_1_3z = in_data[150:148] <= celloutsig_1_1z[2:0];
  assign celloutsig_1_15z = { _11_[24:22], celloutsig_1_4z } <= in_data[128:125];
  assign celloutsig_1_11z = celloutsig_1_0z ? in_data[166:160] : in_data[182:176];
  assign celloutsig_0_20z = { _09_, _04_, _13_[9:6], _00_, _07_, _13_[3:1] } != { _13_[7:6], _00_, _07_, _13_[3:2], celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_28z = celloutsig_0_3z[5:2] !== { celloutsig_0_11z, celloutsig_0_19z, celloutsig_0_11z, celloutsig_0_14z };
  assign celloutsig_0_4z = celloutsig_0_2z !== { _00_, _07_, _13_[3:1] };
  assign celloutsig_1_18z = { celloutsig_1_6z[10:5], _12_ } !== { celloutsig_1_2z[8], celloutsig_1_11z, celloutsig_1_15z, celloutsig_1_15z };
  assign celloutsig_1_19z = { celloutsig_1_5z[9:7], celloutsig_1_0z } !== celloutsig_1_6z[3:0];
  assign celloutsig_0_19z = { celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_4z } !== { _13_[1:0], celloutsig_0_7z };
  assign celloutsig_0_41z = celloutsig_0_25z & celloutsig_0_21z;
  assign celloutsig_0_68z = celloutsig_0_67z[0] & celloutsig_0_33z;
  assign celloutsig_0_18z = celloutsig_0_10z[5] & celloutsig_0_11z;
  assign celloutsig_0_21z = in_data[30] & _13_[15];
  assign celloutsig_0_32z = ~^ { celloutsig_0_13z[3:0], celloutsig_0_27z, celloutsig_0_9z, celloutsig_0_28z, celloutsig_0_16z, celloutsig_0_19z };
  assign celloutsig_0_46z = ^ { celloutsig_0_37z[29], celloutsig_0_5z, celloutsig_0_33z, celloutsig_0_6z, celloutsig_0_45z, celloutsig_0_45z };
  assign celloutsig_0_14z = ^ { celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_0_49z = { in_data[60:33], celloutsig_0_10z, celloutsig_0_41z } >> { celloutsig_0_38z, celloutsig_0_41z, celloutsig_0_11z, celloutsig_0_35z, celloutsig_0_18z, celloutsig_0_47z, celloutsig_0_25z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_47z, celloutsig_0_5z, celloutsig_0_30z, celloutsig_0_4z, celloutsig_0_44z, celloutsig_0_46z };
  assign celloutsig_0_16z = celloutsig_0_13z[6:1] - { celloutsig_0_13z[3], celloutsig_0_2z };
  assign celloutsig_0_37z = { celloutsig_0_33z, celloutsig_0_27z, _13_[15], _08_, _13_[13], _01_, _09_, _04_, _13_[9:6], _00_, _07_, _13_[3:0], celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_32z, celloutsig_0_2z, celloutsig_0_32z, celloutsig_0_3z } ~^ { in_data[60:33], celloutsig_0_31z, _02_, _14_[13:1], _05_ };
  assign celloutsig_0_38z = { celloutsig_0_24z[13:1], celloutsig_0_9z, celloutsig_0_30z } ~^ { celloutsig_0_10z[6:3], celloutsig_0_25z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_33z, celloutsig_0_35z, celloutsig_0_31z };
  assign celloutsig_0_39z = celloutsig_0_24z[13:11] ~^ { celloutsig_0_16z[3], celloutsig_0_27z, celloutsig_0_35z };
  assign celloutsig_1_2z = in_data[146:138] ~^ in_data[171:163];
  assign celloutsig_0_2z = { in_data[3:0], celloutsig_0_1z } ~^ { _01_, _09_, _04_, _13_[9:8] };
  assign celloutsig_0_3z = { _01_, _09_, _04_, _13_[9:7] } ^ { in_data[23], celloutsig_0_2z };
  assign celloutsig_0_59z = { in_data[68:66], celloutsig_0_51z, celloutsig_0_21z, celloutsig_0_22z } ^ { _10_[5:2], celloutsig_0_33z, celloutsig_0_47z };
  assign celloutsig_1_5z = { in_data[175:169], celloutsig_1_4z, celloutsig_1_2z } ^ { celloutsig_1_2z[8:6], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_0_24z = { _14_[13:1], _05_, celloutsig_0_22z, celloutsig_0_5z } ^ { _14_[7], celloutsig_0_9z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_21z, celloutsig_0_23z, celloutsig_0_11z, celloutsig_0_19z, celloutsig_0_21z, celloutsig_0_22z };
  assign { _10_[9:8], _10_[1:0] } = { celloutsig_0_27z, celloutsig_0_1z, _03_, celloutsig_0_30z };
  assign _11_[20] = _06_;
  assign { _13_[14], _13_[12:10], _13_[5:4] } = { _08_, _01_, _09_, _04_, _00_, _07_ };
  assign { _14_[14], _14_[0] } = { _02_, _05_ };
  assign { out_data[128], out_data[96], out_data[32], out_data[6:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_91z, celloutsig_0_92z };
endmodule
