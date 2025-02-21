/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [9:0] _02_;
  wire [18:0] _03_;
  reg [6:0] _04_;
  reg [10:0] _05_;
  wire [9:0] _06_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [3:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire [7:0] celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire [20:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire [7:0] celloutsig_0_39z;
  wire [41:0] celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire [4:0] celloutsig_0_46z;
  wire celloutsig_0_4z;
  wire celloutsig_0_52z;
  wire celloutsig_0_54z;
  wire [2:0] celloutsig_0_55z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire [10:0] celloutsig_1_0z;
  wire [2:0] celloutsig_1_11z;
  wire [5:0] celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire [17:0] celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [18:0] celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_45z = ~(celloutsig_0_41z & celloutsig_0_14z);
  assign celloutsig_0_52z = ~(celloutsig_0_43z & celloutsig_0_22z);
  assign celloutsig_0_9z = ~(celloutsig_0_6z & in_data[40]);
  assign celloutsig_0_24z = ~(celloutsig_0_23z[16] & _00_);
  assign celloutsig_0_43z = ~celloutsig_0_7z;
  assign celloutsig_1_8z = ~in_data[123];
  assign celloutsig_0_10z = ~celloutsig_0_18z;
  assign celloutsig_0_14z = ~celloutsig_0_4z;
  assign celloutsig_0_25z = ~celloutsig_0_12z;
  assign celloutsig_0_31z = ~celloutsig_0_3z[19];
  assign celloutsig_0_15z = ~((celloutsig_0_9z | celloutsig_0_18z) & celloutsig_0_4z);
  assign celloutsig_0_44z = celloutsig_0_29z | ~(celloutsig_0_41z);
  assign celloutsig_0_12z = celloutsig_0_4z | ~(celloutsig_0_10z);
  assign celloutsig_0_13z = celloutsig_0_12z | ~(celloutsig_0_18z);
  assign celloutsig_0_17z = celloutsig_0_15z | ~(celloutsig_0_9z);
  assign celloutsig_0_41z = celloutsig_0_39z[4] | celloutsig_0_30z;
  assign celloutsig_1_6z = celloutsig_1_4z[11] | celloutsig_1_4z[12];
  assign celloutsig_0_30z = _01_ | celloutsig_0_20z[0];
  assign celloutsig_1_0z = in_data[108:98] + in_data[156:146];
  assign celloutsig_1_4z = { in_data[131:121], _03_[7:5], celloutsig_1_2z, _03_[7:5], celloutsig_1_2z } + { celloutsig_1_1z[0], celloutsig_1_2z, _03_[7:5], _03_[7:5], celloutsig_1_0z };
  assign celloutsig_1_11z = celloutsig_1_5z + celloutsig_1_1z[5:3];
  assign celloutsig_0_20z = in_data[86:79] + { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_17z, celloutsig_0_11z };
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _04_ <= 7'h00;
    else _04_ <= { in_data[79:74], celloutsig_0_6z };
  reg [2:0] _30_;
  always_ff @(negedge clkin_data[64], negedge clkin_data[128])
    if (!clkin_data[128]) _30_ <= 3'h0;
    else _30_ <= in_data[126:124];
  assign _03_[7:5] = _30_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _05_ <= 11'h000;
    else _05_ <= { in_data[35:27], celloutsig_0_9z, celloutsig_0_9z };
  reg [9:0] _32_;
  always_ff @(posedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _32_ <= 10'h000;
    else _32_ <= in_data[18:9];
  assign { _06_[9:8], _02_[9:8], _01_, _02_[6:4], _00_, _06_[0] } = _32_;
  assign celloutsig_0_4z = { in_data[18:17], celloutsig_0_0z } >= { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_54z = { celloutsig_0_33z, celloutsig_0_6z, celloutsig_0_44z, celloutsig_0_42z, celloutsig_0_12z, celloutsig_0_42z, _05_ } >= { celloutsig_0_23z[20:15], celloutsig_0_39z, celloutsig_0_52z, celloutsig_0_0z, celloutsig_0_52z };
  assign celloutsig_0_5z = celloutsig_0_3z[32:24] && { in_data[56:51], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_18z };
  assign celloutsig_1_18z = { celloutsig_1_11z[0], celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_15z } && { celloutsig_1_0z[8:0], celloutsig_1_9z };
  assign celloutsig_0_27z = { celloutsig_0_3z[25:24], celloutsig_0_10z, celloutsig_0_24z, celloutsig_0_6z } && _05_[5:1];
  assign celloutsig_0_0z = in_data[82:73] < in_data[94:85];
  assign celloutsig_1_2z = in_data[106:104] < celloutsig_1_1z[2:0];
  assign celloutsig_1_9z = { celloutsig_1_6z, celloutsig_1_4z } < { celloutsig_1_4z[16:8], celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_8z, _03_[7:5], _03_[7:5] };
  assign celloutsig_0_6z = { in_data[70], celloutsig_0_18z, celloutsig_0_18z } < { celloutsig_0_3z[7:6], celloutsig_0_18z };
  assign celloutsig_0_22z = _05_[8:5] < { _06_[9], celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_9z };
  assign celloutsig_0_18z = { in_data[87:78], celloutsig_0_1z, celloutsig_0_1z } < { in_data[85:75], celloutsig_0_1z };
  assign celloutsig_0_29z = celloutsig_0_3z[8:2] < _05_[10:4];
  assign celloutsig_0_39z = { _05_[10:4], celloutsig_0_6z } % { 1'h1, in_data[43:37] };
  assign celloutsig_0_46z = celloutsig_0_23z[17:13] % { 1'h1, celloutsig_0_23z[8:5] };
  assign celloutsig_0_55z = { celloutsig_0_4z, celloutsig_0_31z, celloutsig_0_45z } % { 1'h1, celloutsig_0_46z[3:2] };
  assign celloutsig_1_19z = { in_data[167:154], celloutsig_1_8z, celloutsig_1_11z } % { 1'h1, celloutsig_1_15z[3:0], celloutsig_1_2z, celloutsig_1_15z, celloutsig_1_15z };
  assign celloutsig_0_11z = { celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_5z } % { 1'h1, in_data[7:5] };
  assign celloutsig_1_1z = ~ celloutsig_1_0z[8:3];
  assign celloutsig_1_15z = ~ celloutsig_1_1z;
  assign celloutsig_0_33z = celloutsig_0_25z & celloutsig_0_27z;
  assign celloutsig_1_7z = in_data[112] & celloutsig_1_5z[2];
  assign celloutsig_0_23z = celloutsig_0_3z[35:15] >> { in_data[64:51], celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_0_3z = in_data[87:46] << { in_data[83:44], celloutsig_0_0z, celloutsig_0_18z };
  assign celloutsig_1_5z = { celloutsig_1_4z[12:11], celloutsig_1_2z } >> celloutsig_1_0z[4:2];
  assign celloutsig_0_42z = ~((celloutsig_0_39z[3] & celloutsig_0_6z) | (_04_[4] & celloutsig_0_7z));
  assign celloutsig_0_7z = ~((celloutsig_0_5z & in_data[47]) | (in_data[3] & celloutsig_0_0z));
  assign celloutsig_0_1z = ~((celloutsig_0_0z & celloutsig_0_0z) | (in_data[35] & in_data[85]));
  assign { _02_[7], _02_[3], _02_[0] } = { _01_, celloutsig_0_18z, celloutsig_0_12z };
  assign { _03_[18:8], _03_[4:0] } = { in_data[131:121], celloutsig_1_2z, _03_[7:5], celloutsig_1_2z };
  assign _06_[7:1] = { _02_[9:8], _01_, _02_[6:4], _00_ };
  assign { out_data[128], out_data[113:96], out_data[32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_54z, celloutsig_0_55z };
endmodule
