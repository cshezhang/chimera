/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  reg [7:0] _01_;
  wire [9:0] _02_;
  reg [3:0] _03_;
  wire [14:0] _04_;
  wire [21:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [17:0] celloutsig_0_11z;
  wire [3:0] celloutsig_0_13z;
  wire [40:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [4:0] celloutsig_0_17z;
  wire [3:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [3:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [3:0] celloutsig_0_29z;
  wire [6:0] celloutsig_0_2z;
  wire [14:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_37z;
  wire [2:0] celloutsig_0_39z;
  wire [4:0] celloutsig_0_43z;
  wire celloutsig_0_45z;
  wire [2:0] celloutsig_0_47z;
  wire [11:0] celloutsig_0_49z;
  wire [9:0] celloutsig_0_50z;
  wire celloutsig_0_53z;
  wire [19:0] celloutsig_0_55z;
  wire celloutsig_0_61z;
  wire [7:0] celloutsig_0_68z;
  wire [2:0] celloutsig_0_69z;
  wire [2:0] celloutsig_0_6z;
  wire [13:0] celloutsig_0_70z;
  wire [18:0] celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_12z;
  wire [15:0] celloutsig_1_18z;
  wire [11:0] celloutsig_1_19z;
  wire [5:0] celloutsig_1_3z;
  wire [11:0] celloutsig_1_5z;
  wire [3:0] celloutsig_1_7z;
  wire [47:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_1z = ~celloutsig_0_0z[21];
  assign celloutsig_0_45z = ~celloutsig_0_30z[2];
  assign celloutsig_0_61z = ~celloutsig_0_50z[1];
  assign celloutsig_0_22z = ~celloutsig_0_0z[17];
  assign celloutsig_0_28z = ~celloutsig_0_27z[3];
  assign celloutsig_1_0z = ~in_data[184];
  assign celloutsig_0_10z = ~celloutsig_0_6z[1];
  assign celloutsig_0_21z = ~in_data[80];
  assign celloutsig_0_23z = ~celloutsig_0_6z[0];
  assign celloutsig_0_15z = ~in_data[35];
  assign celloutsig_0_31z = ~celloutsig_0_0z[7];
  assign celloutsig_0_37z = ~celloutsig_0_0z[13];
  always_ff @(negedge clkin_data[32], negedge clkin_data[128])
    if (!clkin_data[128]) _01_ <= 8'h00;
    else _01_ <= { celloutsig_1_0z, in_data[184], celloutsig_1_3z };
  reg [9:0] _18_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _18_ <= 10'h000;
    else _18_ <= { celloutsig_0_8z[15:12], celloutsig_0_6z, celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_22z };
  assign { _02_[9:5], celloutsig_0_53z, _02_[3:0] } = _18_;
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[96])
    if (!clkin_data[96]) _03_ <= 4'h0;
    else _03_ <= celloutsig_0_13z;
  reg [14:0] _20_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _20_ <= 15'h0000;
    else _20_ <= { in_data[34:27], celloutsig_0_2z };
  assign { _04_[14:1], _00_ } = _20_;
  assign celloutsig_0_0z = in_data[85:64] % { 1'h1, in_data[39:19] };
  assign celloutsig_0_39z = { celloutsig_0_6z[1], celloutsig_0_31z, celloutsig_0_28z } % { 1'h1, celloutsig_0_19z[1:0] };
  assign celloutsig_0_43z = { _04_[4:1], _00_ } % { 1'h1, celloutsig_0_2z[3:0] };
  assign celloutsig_0_47z = { celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_0z[17] } % { 1'h1, celloutsig_0_23z, celloutsig_0_0z[21] };
  assign celloutsig_0_49z = { celloutsig_0_11z[11], celloutsig_0_31z, celloutsig_0_39z, celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_10z } % { 1'h1, in_data[33:24], celloutsig_0_37z };
  assign celloutsig_0_50z = celloutsig_0_49z[10:1] % { 1'h1, celloutsig_0_47z, in_data[80], celloutsig_0_22z, celloutsig_0_28z, in_data[35], in_data[80], celloutsig_0_22z };
  assign celloutsig_0_55z = { celloutsig_0_30z[12:1], celloutsig_0_22z, celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_53z, celloutsig_0_1z } % { 1'h1, celloutsig_0_2z[4:0], celloutsig_0_0z[21], _03_, celloutsig_0_28z, celloutsig_0_19z, _03_ };
  assign celloutsig_0_6z = { in_data[76], celloutsig_0_22z, celloutsig_0_22z } % { 1'h1, celloutsig_0_2z[4:3] };
  assign celloutsig_0_68z = { celloutsig_0_55z[7:1], celloutsig_0_61z } % { 1'h1, celloutsig_0_45z, celloutsig_0_0z[21], celloutsig_0_27z, celloutsig_0_0z[21] };
  assign celloutsig_0_69z = { celloutsig_0_68z[2:1], celloutsig_0_28z } % { 1'h1, in_data[24:23] };
  assign celloutsig_0_70z = { celloutsig_0_13z[3:1], celloutsig_0_27z[3], celloutsig_0_43z, celloutsig_0_22z, celloutsig_0_6z, in_data[35] } % { 1'h1, celloutsig_0_14z[22:10] };
  assign celloutsig_1_3z = { in_data[184], celloutsig_1_0z, in_data[184], in_data[184], celloutsig_1_0z, in_data[184] } % { 1'h1, in_data[127:125], in_data[184], in_data[96] };
  assign celloutsig_1_5z = { in_data[184], in_data[184], celloutsig_1_3z, in_data[184], in_data[184], in_data[184], celloutsig_1_0z } % { 1'h1, in_data[166:156] };
  assign celloutsig_0_8z = celloutsig_0_0z[20:2] % { 1'h1, in_data[43:34], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_1_7z = in_data[126:123] % { 1'h1, _01_[4:3], in_data[184] };
  assign celloutsig_1_9z = in_data[181:134] % { 1'h1, in_data[172:133], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_7z };
  assign celloutsig_1_12z = { in_data[156:153], in_data[184], in_data[184] } % { 1'h1, celloutsig_1_5z[9:5] };
  assign celloutsig_1_18z = celloutsig_1_9z[39:24] % { 1'h1, in_data[184], celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_7z };
  assign celloutsig_1_19z = celloutsig_1_9z[21:10] % { 1'h1, in_data[176:166] };
  assign celloutsig_0_11z = { in_data[46:30], celloutsig_0_0z[21] } % { 1'h1, celloutsig_0_0z[10:2], celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_13z = { celloutsig_0_11z[9:7], celloutsig_0_0z[17] } % { 1'h1, in_data[39:37] };
  assign celloutsig_0_14z = { celloutsig_0_11z[14], celloutsig_0_0z, celloutsig_0_11z } % { 1'h1, celloutsig_0_0z[20:6], celloutsig_0_0z[17], celloutsig_0_22z, _02_[9:5], celloutsig_0_53z, _02_[3:0], celloutsig_0_0z[17], celloutsig_0_6z, celloutsig_0_0z[17], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_17z = { celloutsig_0_8z[18:15], celloutsig_0_0z[17] } % { 1'h1, _02_[6:5], celloutsig_0_53z, celloutsig_0_15z };
  assign celloutsig_0_19z = celloutsig_0_0z[7:4] % { 1'h1, celloutsig_0_15z, celloutsig_0_0z[17], in_data[35] };
  assign celloutsig_0_2z = celloutsig_0_0z[6:0] % { 1'h1, in_data[77:73], celloutsig_0_1z };
  assign celloutsig_0_27z = { celloutsig_0_11z[17:16], in_data[35], in_data[35] } % { 1'h1, celloutsig_0_14z[29:27] };
  assign celloutsig_0_29z = { celloutsig_0_13z[3:2], celloutsig_0_23z, celloutsig_0_22z } % { 1'h1, celloutsig_0_27z[2:1], celloutsig_0_22z };
  assign celloutsig_0_30z = { celloutsig_0_15z, celloutsig_0_27z, celloutsig_0_13z, celloutsig_0_0z[17], _03_, celloutsig_0_15z } % { 1'h1, celloutsig_0_28z, celloutsig_0_10z, celloutsig_0_21z, celloutsig_0_23z, celloutsig_0_23z, celloutsig_0_6z, celloutsig_0_29z, celloutsig_0_22z, in_data[0] };
  assign _02_[4] = celloutsig_0_53z;
  assign _04_[0] = _00_;
  assign { out_data[143:128], out_data[107:96], out_data[34:32], out_data[13:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_69z, celloutsig_0_70z };
endmodule
