/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  reg [6:0] _02_;
  reg [28:0] _03_;
  wire [21:0] _04_;
  reg [18:0] _05_;
  wire [3:0] _06_;
  wire [18:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [14:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire [38:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [18:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [45:0] celloutsig_0_23z;
  wire [13:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [13:0] celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [4:0] celloutsig_0_31z;
  wire celloutsig_0_3z;
  wire [4:0] celloutsig_0_42z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [2:0] celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [3:0] celloutsig_0_7z;
  wire [3:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [14:0] celloutsig_1_3z;
  wire [12:0] celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_18z = !(celloutsig_1_6z ? celloutsig_1_1z : celloutsig_1_14z);
  assign celloutsig_0_10z = !(celloutsig_0_7z[3] ? celloutsig_0_2z : _00_);
  assign celloutsig_0_25z = !(celloutsig_0_7z[1] ? celloutsig_0_24z[0] : celloutsig_0_17z);
  assign celloutsig_0_26z = !(celloutsig_0_10z ? celloutsig_0_5z : _01_);
  assign celloutsig_1_2z = celloutsig_1_0z | ~(celloutsig_1_0z);
  assign celloutsig_0_1z = celloutsig_0_0z[14] | ~(in_data[1]);
  assign celloutsig_0_20z = celloutsig_0_19z | ~(celloutsig_0_11z[4]);
  assign celloutsig_1_6z = celloutsig_1_5z[2] ^ celloutsig_1_0z;
  assign celloutsig_0_45z = ~(celloutsig_0_23z[5] ^ celloutsig_0_29z);
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _02_ <= 7'h00;
    else _02_ <= { celloutsig_0_11z[7:4], celloutsig_0_21z, celloutsig_0_4z, celloutsig_0_2z };
  always_ff @(posedge clkin_data[32], posedge clkin_data[96])
    if (clkin_data[96]) _03_ <= 29'h00000000;
    else _03_ <= { in_data[113:108], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z };
  reg [21:0] _18_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _18_ <= 22'h000000;
    else _18_ <= { in_data[71:52], celloutsig_0_2z, celloutsig_0_4z };
  assign { _04_[21:20], _00_, _04_[18:0] } = _18_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _05_ <= 19'h00000;
    else _05_ <= { in_data[54:37], celloutsig_0_3z };
  reg [3:0] _20_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _20_ <= 4'h0;
    else _20_ <= { celloutsig_0_10z, celloutsig_0_14z };
  assign { _01_, _06_[2:0] } = _20_;
  assign celloutsig_0_0z = in_data[95:77] / { 1'h1, in_data[33:16] };
  assign celloutsig_0_3z = in_data[19:15] == in_data[63:59];
  assign celloutsig_0_4z = celloutsig_0_0z < { celloutsig_0_0z[16:0], celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_5z = { in_data[71:60], celloutsig_0_2z } < { celloutsig_0_0z[16:5], celloutsig_0_3z };
  assign celloutsig_1_14z = _03_[24:21] < { celloutsig_1_3z[6:4], celloutsig_1_6z };
  assign celloutsig_0_13z = celloutsig_0_11z[13:4] < { _05_[8:3], celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_10z };
  assign celloutsig_0_19z = { in_data[94:93], celloutsig_0_17z, celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_7z } < { _04_[14:5], celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_2z };
  assign celloutsig_0_2z = celloutsig_0_0z[17:1] < in_data[63:47];
  assign celloutsig_1_0z = in_data[109] & ~(in_data[125]);
  assign celloutsig_0_22z = celloutsig_0_18z[0] & ~(celloutsig_0_5z);
  assign celloutsig_0_16z = celloutsig_0_0z[11] ? { celloutsig_0_11z[14:3], celloutsig_0_9z, celloutsig_0_3z, _05_, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_2z } : { in_data[95:63], celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_10z };
  assign celloutsig_0_12z = celloutsig_0_9z[2:0] != { _04_[21:20], _00_ };
  assign celloutsig_0_29z = { celloutsig_0_5z, celloutsig_0_22z, celloutsig_0_21z, celloutsig_0_14z } != { celloutsig_0_0z[15], celloutsig_0_13z, celloutsig_0_22z, celloutsig_0_26z, celloutsig_0_22z, celloutsig_0_12z };
  assign celloutsig_0_23z = { celloutsig_0_0z[14:4], celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_20z, _01_, _06_[2:0], celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_12z } | { _00_, _04_[18:1], celloutsig_0_21z, celloutsig_0_19z, _04_[21:20], _00_, _04_[18:0], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_24z = celloutsig_0_11z[14:1] | { celloutsig_0_0z[18:6], celloutsig_0_4z };
  assign celloutsig_1_19z = ^ { celloutsig_1_3z[6:2], celloutsig_1_14z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_0_17z = ^ celloutsig_0_11z[12:8];
  assign celloutsig_0_31z = celloutsig_0_11z[8:4] << celloutsig_0_16z[27:23];
  assign celloutsig_0_42z = { celloutsig_0_7z, celloutsig_0_19z } << { celloutsig_0_27z[6:3], celloutsig_0_5z };
  assign celloutsig_0_7z = { _04_[3], celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_5z } << { celloutsig_0_0z[5:4], celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_14z = { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_12z } << celloutsig_0_11z[10:8];
  assign celloutsig_0_18z = { _01_, _06_[2:1], celloutsig_0_10z, celloutsig_0_11z } << in_data[86:68];
  assign celloutsig_1_4z = { in_data[140:131], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z } >> celloutsig_1_3z[13:1];
  assign celloutsig_1_5z = { celloutsig_1_3z[8], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z } >> celloutsig_1_3z[3:0];
  assign celloutsig_0_9z = { _05_[9], celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_3z } >> { in_data[44], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_11z = { _04_[13:6], celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_5z } >> { celloutsig_0_0z[9:0], celloutsig_0_9z, celloutsig_0_4z };
  assign celloutsig_0_47z = { celloutsig_0_31z[3:2], celloutsig_0_13z } - _02_[3:1];
  assign celloutsig_1_3z = { in_data[105:96], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z } - { in_data[119:106], celloutsig_1_1z };
  assign celloutsig_0_27z = { celloutsig_0_23z[26:17], celloutsig_0_12z, celloutsig_0_26z, celloutsig_0_19z, celloutsig_0_13z } - { _04_[12:0], celloutsig_0_4z };
  assign celloutsig_0_46z = ~((celloutsig_0_45z & celloutsig_0_42z[4]) | (celloutsig_0_25z & celloutsig_0_0z[9]));
  assign celloutsig_1_1z = ~((in_data[136] & celloutsig_1_0z) | (in_data[121] & celloutsig_1_0z));
  assign celloutsig_0_21z = ~((celloutsig_0_5z & celloutsig_0_13z) | (celloutsig_0_1z & celloutsig_0_18z[14]));
  assign _04_[19] = _00_;
  assign _06_[3] = _01_;
  assign { out_data[128], out_data[96], out_data[32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_46z, celloutsig_0_47z };
endmodule
