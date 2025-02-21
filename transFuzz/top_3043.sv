/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [13:0] _00_;
  reg [13:0] _01_;
  reg [11:0] _02_;
  reg [17:0] _03_;
  reg [3:0] _04_;
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
  wire celloutsig_0_20z;
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
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  reg [26:0] celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  reg [9:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_53z;
  wire celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_9z;
  reg [2:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_18z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  reg [3:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [223:0] clkin_data;
  wire [223:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(posedge clkin_data[0], posedge clkin_data[96])
    if (clkin_data[96]) _01_ <= 14'h0000;
    else _01_ <= { _00_[13:11], celloutsig_0_6z, celloutsig_0_31z, celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_30z, celloutsig_0_0z, celloutsig_0_26z, celloutsig_0_3z, celloutsig_0_27z, celloutsig_0_12z, celloutsig_0_7z };
  always_ff @(negedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _02_ <= 12'h000;
    else _02_ <= { celloutsig_0_12z, celloutsig_0_28z, celloutsig_0_25z, celloutsig_0_4z, celloutsig_0_30z, celloutsig_0_14z, celloutsig_0_26z, celloutsig_0_9z, celloutsig_0_30z, celloutsig_0_21z, celloutsig_0_19z, celloutsig_0_15z };
  reg [2:0] _07_;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _07_ <= 3'h0;
    else _07_ <= { celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z };
  assign _00_[13:11] = _07_;
  always_ff @(negedge clkin_data[32], posedge clkin_data[96])
    if (clkin_data[96]) _03_ <= 18'h00000;
    else _03_ <= { _02_[11:2], celloutsig_0_47z, celloutsig_0_35z, celloutsig_0_47z, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_38z, celloutsig_0_14z, celloutsig_0_13z };
  reg [2:0] _09_;
  always_ff @(negedge clkin_data[64], negedge clkin_data[128])
    if (!clkin_data[128]) _09_ <= 3'h0;
    else _09_ <= { celloutsig_1_3z[3], celloutsig_1_7z, celloutsig_1_5z };
  assign out_data[98:96] = _09_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _04_ <= 4'h0;
    else _04_ <= { _00_[12:11], celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_0z = in_data[80:74] < in_data[49:43];
  assign celloutsig_0_3z = { in_data[29:27], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z } < { in_data[31:23], celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_32z = { in_data[58:54], celloutsig_0_29z, celloutsig_0_3z, celloutsig_0_15z, _00_[13:11], celloutsig_0_20z, celloutsig_0_22z, celloutsig_0_7z, celloutsig_0_31z, celloutsig_0_3z, celloutsig_0_21z, _04_, celloutsig_0_1z, celloutsig_0_26z } < { in_data[16:1], _00_[13:11], celloutsig_0_2z, celloutsig_0_28z, celloutsig_0_17z, celloutsig_0_29z };
  assign celloutsig_0_33z = { celloutsig_0_11z, celloutsig_0_16z, celloutsig_0_31z, celloutsig_0_7z, _04_, celloutsig_0_31z } < { _04_[3:2], _04_, celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_7z };
  assign celloutsig_0_34z = { celloutsig_0_4z, _00_[13:11], celloutsig_0_32z, celloutsig_0_28z, celloutsig_0_18z } < { celloutsig_0_30z, celloutsig_0_15z, celloutsig_0_32z, celloutsig_0_27z, celloutsig_0_16z, celloutsig_0_27z, celloutsig_0_33z };
  assign celloutsig_0_35z = { celloutsig_0_6z, celloutsig_0_33z, _00_[13:11] } < { celloutsig_0_26z, celloutsig_0_12z, celloutsig_0_31z, celloutsig_0_31z, celloutsig_0_17z };
  assign celloutsig_0_38z = { celloutsig_0_32z, celloutsig_0_28z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_24z, celloutsig_0_0z, celloutsig_0_26z } < { in_data[32:30], celloutsig_0_17z, celloutsig_0_0z, celloutsig_0_33z, celloutsig_0_12z };
  assign celloutsig_0_39z = { celloutsig_0_31z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_20z, celloutsig_0_27z } < { in_data[75:74], celloutsig_0_2z, celloutsig_0_27z, celloutsig_0_28z, celloutsig_0_7z };
  assign celloutsig_0_4z = { in_data[70:66], celloutsig_0_1z } < in_data[73:68];
  assign celloutsig_0_41z = { in_data[67:60], celloutsig_0_16z, celloutsig_0_22z, celloutsig_0_35z, celloutsig_0_3z, celloutsig_0_23z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_38z } < { celloutsig_0_36z[25:20], celloutsig_0_25z, celloutsig_0_16z, celloutsig_0_9z, celloutsig_0_25z, celloutsig_0_33z, celloutsig_0_22z, celloutsig_0_29z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_33z, celloutsig_0_20z };
  assign celloutsig_0_42z = { celloutsig_0_36z[22:17], celloutsig_0_35z } < in_data[72:66];
  assign celloutsig_0_43z = { celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_4z } < { _00_[13:12], celloutsig_0_24z };
  assign celloutsig_0_44z = in_data[70:66] < { _01_[3], celloutsig_0_32z, celloutsig_0_38z, celloutsig_0_26z, celloutsig_0_4z };
  assign celloutsig_0_46z = { _01_[12:10], celloutsig_0_18z, celloutsig_0_26z, celloutsig_0_13z } < { celloutsig_0_44z, celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_31z, celloutsig_0_15z };
  assign celloutsig_0_47z = { _01_[12], celloutsig_0_21z, celloutsig_0_20z } < { celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_3z };
  assign celloutsig_0_48z = { celloutsig_0_9z, celloutsig_0_17z, celloutsig_0_1z, celloutsig_0_28z, celloutsig_0_3z, celloutsig_0_32z, celloutsig_0_27z, celloutsig_0_23z } < { in_data[31:27], celloutsig_0_35z, celloutsig_0_42z, celloutsig_0_43z };
  assign celloutsig_0_53z = { in_data[46:44], celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_47z, celloutsig_0_33z, celloutsig_0_33z, celloutsig_0_35z, celloutsig_0_30z, celloutsig_0_16z, celloutsig_0_27z } < { _02_[8:7], celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_27z, celloutsig_0_41z, celloutsig_0_44z, celloutsig_0_39z, celloutsig_0_46z, celloutsig_0_1z, celloutsig_0_41z, celloutsig_0_42z };
  assign celloutsig_0_54z = { celloutsig_0_17z, celloutsig_0_39z, celloutsig_0_53z, celloutsig_0_48z, celloutsig_0_34z } < { celloutsig_0_45z[8:6], celloutsig_0_21z, celloutsig_0_11z };
  assign celloutsig_0_55z = { _03_[11], celloutsig_0_27z, celloutsig_0_32z } < { celloutsig_0_15z, celloutsig_0_17z, celloutsig_0_6z };
  assign celloutsig_0_57z = { celloutsig_0_36z[7:3], celloutsig_0_24z, celloutsig_0_18z, celloutsig_0_35z, celloutsig_0_48z, celloutsig_0_20z, celloutsig_0_24z, celloutsig_0_2z } < { _02_[5:2], celloutsig_0_19z, celloutsig_0_53z, celloutsig_0_44z, celloutsig_0_46z, celloutsig_0_2z, celloutsig_0_55z, celloutsig_0_27z, celloutsig_0_54z };
  assign celloutsig_0_58z = { celloutsig_0_35z, celloutsig_0_10z, _04_, celloutsig_0_6z, celloutsig_0_27z } < { celloutsig_0_45z[8:5], celloutsig_0_44z, celloutsig_0_46z, celloutsig_0_14z, celloutsig_0_17z };
  assign celloutsig_0_60z = { celloutsig_0_28z, celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_48z, celloutsig_0_3z, celloutsig_0_33z, celloutsig_0_29z, _00_[13:11] } < { celloutsig_0_21z, celloutsig_0_16z, celloutsig_0_35z, celloutsig_0_32z, celloutsig_0_24z, celloutsig_0_58z, celloutsig_0_27z, celloutsig_0_35z, celloutsig_0_26z, celloutsig_0_23z };
  assign celloutsig_0_61z = { celloutsig_0_47z, celloutsig_0_57z, celloutsig_0_48z } < { celloutsig_0_17z, celloutsig_0_48z, celloutsig_0_53z };
  assign celloutsig_1_1z = in_data[108:105] < { in_data[138], celloutsig_1_0z };
  assign celloutsig_1_2z = { in_data[148:141], celloutsig_1_1z } < { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_6z = { in_data[18:15], celloutsig_0_2z } < { in_data[26], celloutsig_0_3z, _00_[13:11] };
  assign celloutsig_1_4z = { celloutsig_1_0z[2:1], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_1z } < { in_data[149:141], celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_5z = { celloutsig_1_3z[1], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z } < { celloutsig_1_0z[1:0], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_6z = { in_data[189:174], celloutsig_1_4z } < { in_data[162:154], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_1_7z = { celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_6z } < { celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_2z };
  assign celloutsig_1_8z = { in_data[172:169], celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_0z } < { celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_7z };
  assign celloutsig_1_9z = { celloutsig_1_0z[1:0], celloutsig_1_4z } < { celloutsig_1_3z[2:1], celloutsig_1_2z };
  assign celloutsig_1_10z = { celloutsig_1_0z[2], celloutsig_1_3z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_9z } < { in_data[116:111], celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_0_7z = { celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, _00_[13:11] } < { _00_[12:11], _00_[13:11], celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_1_18z = { in_data[113:105], celloutsig_1_8z, celloutsig_1_10z } < { in_data[143:136], celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_8z };
  assign celloutsig_0_9z = { _04_[0], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_4z } < { in_data[82:79], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, _00_[13:11] };
  assign celloutsig_0_10z = { _04_[3], celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_4z, _00_[13:11], celloutsig_0_4z, celloutsig_0_1z, _04_, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_4z } < { in_data[72:54], _04_ };
  assign celloutsig_0_11z = { in_data[32:28], celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_0z } < in_data[41:34];
  assign celloutsig_0_1z = in_data[88:85] < { in_data[82:81], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_12z = { in_data[31], celloutsig_0_6z, _04_, celloutsig_0_1z } < { celloutsig_0_2z, celloutsig_0_0z, _00_[13:11], celloutsig_0_9z, celloutsig_0_0z };
  assign celloutsig_0_13z = { in_data[22:18], _00_[13:11] } < { in_data[31:30], celloutsig_0_7z, celloutsig_0_12z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_9z };
  assign celloutsig_0_14z = { _04_[3], celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_3z } < { _04_[1:0], celloutsig_0_1z, celloutsig_0_13z, celloutsig_0_9z, _00_[13:11], celloutsig_0_13z };
  assign celloutsig_0_15z = { in_data[32:25], celloutsig_0_3z, celloutsig_0_6z } < in_data[58:49];
  assign celloutsig_0_16z = { celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_13z } < { celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_7z };
  assign celloutsig_0_17z = { _04_[0], celloutsig_0_4z, celloutsig_0_9z } < { celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_0z };
  assign celloutsig_0_18z = _04_ < { _04_[3:1], celloutsig_0_14z };
  assign celloutsig_0_19z = { celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_0z, _04_, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_13z } < { celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_2z, _04_, celloutsig_0_4z, celloutsig_0_14z };
  assign celloutsig_0_20z = { in_data[28:23], _04_, celloutsig_0_3z, celloutsig_0_0z } < { in_data[11:1], celloutsig_0_6z };
  assign celloutsig_0_21z = { _00_[12:11], celloutsig_0_10z, celloutsig_0_3z } < { celloutsig_0_0z, _00_[13:11] };
  assign celloutsig_0_2z = { in_data[73:71], celloutsig_0_1z, celloutsig_0_1z } < { in_data[70:67], celloutsig_0_1z };
  assign celloutsig_0_22z = { _00_[13:11], celloutsig_0_21z, celloutsig_0_18z } < { in_data[84], celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_14z };
  assign celloutsig_0_23z = { _04_, celloutsig_0_18z } < { celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_18z, celloutsig_0_15z };
  assign celloutsig_0_24z = { celloutsig_0_19z, celloutsig_0_20z, celloutsig_0_9z, celloutsig_0_23z } < { celloutsig_0_22z, celloutsig_0_23z, celloutsig_0_18z, celloutsig_0_13z };
  assign celloutsig_0_25z = { in_data[47:40], celloutsig_0_7z, celloutsig_0_16z, celloutsig_0_11z } < { celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_21z, celloutsig_0_22z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_15z, celloutsig_0_9z };
  assign celloutsig_0_26z = { in_data[52:42], celloutsig_0_7z } < { _04_[3:1], celloutsig_0_3z, celloutsig_0_13z, celloutsig_0_19z, celloutsig_0_4z, _00_[13:11], celloutsig_0_0z, celloutsig_0_21z };
  assign celloutsig_0_27z = { _00_[13], celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_26z, celloutsig_0_16z, celloutsig_0_15z, celloutsig_0_23z } < { _04_[3], _00_[13:11], celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_19z };
  assign celloutsig_0_28z = { celloutsig_0_16z, _04_, celloutsig_0_7z, celloutsig_0_20z, celloutsig_0_15z } < { celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_22z, celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_4z };
  assign celloutsig_0_29z = { celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_25z } < { celloutsig_0_1z, celloutsig_0_20z, celloutsig_0_15z };
  assign celloutsig_0_30z = { celloutsig_0_20z, _04_, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_17z, celloutsig_0_25z } < { in_data[59:58], celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_18z, celloutsig_0_1z, celloutsig_0_27z, celloutsig_0_21z, celloutsig_0_6z, celloutsig_0_21z };
  assign celloutsig_0_31z = { celloutsig_0_19z, celloutsig_0_21z, celloutsig_0_16z, celloutsig_0_25z } < { celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_10z };
  always_latch
    if (clkin_data[96]) celloutsig_0_36z = 27'h0000000;
    else if (!clkin_data[160]) celloutsig_0_36z = { celloutsig_0_2z, _00_[13:11], celloutsig_0_9z, celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_29z, _00_[13:11], celloutsig_0_3z, celloutsig_0_24z, celloutsig_0_32z, celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_21z, celloutsig_0_34z, celloutsig_0_3z, celloutsig_0_24z, celloutsig_0_29z, celloutsig_0_7z, celloutsig_0_20z, celloutsig_0_21z, celloutsig_0_21z, celloutsig_0_0z, celloutsig_0_9z };
  always_latch
    if (!clkin_data[96]) celloutsig_0_45z = 10'h000;
    else if (!clkin_data[160]) celloutsig_0_45z = { celloutsig_0_42z, celloutsig_0_21z, celloutsig_0_24z, celloutsig_0_39z, celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_23z, celloutsig_0_33z, celloutsig_0_12z, celloutsig_0_1z };
  always_latch
    if (clkin_data[128]) celloutsig_1_0z = 3'h0;
    else if (!clkin_data[192]) celloutsig_1_0z = in_data[175:173];
  always_latch
    if (!clkin_data[128]) celloutsig_1_3z = 4'h0;
    else if (!clkin_data[192]) celloutsig_1_3z = in_data[119:116];
  assign _00_[10:0] = { celloutsig_0_6z, celloutsig_0_31z, celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_30z, celloutsig_0_0z, celloutsig_0_26z, celloutsig_0_3z, celloutsig_0_27z, celloutsig_0_12z, celloutsig_0_7z };
  assign { out_data[128], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_0_60z, celloutsig_0_61z };
endmodule
