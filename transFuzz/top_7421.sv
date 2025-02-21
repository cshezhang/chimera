/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire [4:0] _06_;
  wire [3:0] _07_;
  wire [4:0] _08_;
  wire [5:0] _09_;
  wire [14:0] celloutsig_0_0z;
  wire [7:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [4:0] celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire [4:0] celloutsig_0_23z;
  wire celloutsig_0_2z;
  wire celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_3z;
  wire [4:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [2:0] celloutsig_0_4z;
  wire [6:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [4:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [7:0] celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [18:0] celloutsig_1_5z;
  wire [6:0] celloutsig_1_6z;
  wire [9:0] celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_34z = ~(celloutsig_0_32z | celloutsig_0_16z);
  assign celloutsig_1_0z = ~(in_data[165] | in_data[125]);
  assign celloutsig_1_18z = ~(in_data[169] | celloutsig_1_4z);
  assign celloutsig_0_17z = celloutsig_0_9z | ~(celloutsig_0_13z);
  assign celloutsig_0_13z = celloutsig_0_7z[4] ^ celloutsig_0_12z;
  assign celloutsig_0_16z = celloutsig_0_6z ^ _02_;
  assign celloutsig_0_22z = celloutsig_0_8z ^ celloutsig_0_19z[4];
  assign celloutsig_0_2z = in_data[47] ^ _00_;
  assign celloutsig_0_32z = ~(celloutsig_0_4z[1] ^ celloutsig_0_8z);
  assign celloutsig_0_42z = ~(celloutsig_0_14z ^ celloutsig_0_41z[0]);
  assign celloutsig_1_1z = ~(in_data[173] ^ celloutsig_1_0z);
  assign celloutsig_1_16z = ~(_04_ ^ _05_);
  reg [4:0] _22_;
  always_ff @(negedge clkin_data[32], posedge clkin_data[64])
    if (clkin_data[64]) _22_ <= 5'h00;
    else _22_ <= celloutsig_1_5z[15:11];
  assign { _06_[4:3], _01_, _06_[1], _04_ } = _22_;
  reg [3:0] _23_;
  always_ff @(posedge clkin_data[32], negedge clkin_data[64])
    if (!clkin_data[64]) _23_ <= 4'h0;
    else _23_ <= { celloutsig_1_5z[6:5], celloutsig_1_1z, celloutsig_1_0z };
  assign { _05_, _07_[2:0] } = _23_;
  reg [5:0] _24_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _24_ <= 6'h00;
    else _24_ <= in_data[87:82];
  assign { _09_[5:3], _00_, _09_[1:0] } = _24_;
  reg [4:0] _25_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _25_ <= 5'h00;
    else _25_ <= celloutsig_0_5z[6:2];
  assign { _02_, _03_, _08_[2:0] } = _25_;
  assign celloutsig_0_41z = { celloutsig_0_23z[2:1], celloutsig_0_34z, celloutsig_0_22z, celloutsig_0_16z } / { 1'h1, celloutsig_0_7z[3:0] };
  assign celloutsig_0_4z = in_data[69:67] / { 1'h1, _09_[3], _00_ };
  assign celloutsig_1_3z = in_data[169:167] / { 1'h1, in_data[190:189] };
  assign celloutsig_1_8z = { celloutsig_1_2z[1:0], celloutsig_1_2z } / { 1'h1, in_data[155:154], celloutsig_1_6z };
  assign celloutsig_0_5z = { in_data[16:11], celloutsig_0_3z } / { 1'h1, in_data[81:77], celloutsig_0_2z };
  assign celloutsig_0_3z = { _09_[4:3], _00_, _09_[1:0] } === { _09_[3], _00_, _09_[1:0], celloutsig_0_2z };
  assign celloutsig_0_43z = { celloutsig_0_11z[4], celloutsig_0_42z, celloutsig_0_9z } === celloutsig_0_19z[3:1];
  assign celloutsig_1_19z = { celloutsig_1_16z, celloutsig_1_16z, celloutsig_1_16z } >= celloutsig_1_8z[2:0];
  assign celloutsig_0_6z = { celloutsig_0_0z[13:12], celloutsig_0_2z, _09_[5:3], _00_, _09_[1:0] } >= celloutsig_0_0z[10:2];
  assign celloutsig_0_12z = { celloutsig_0_7z[2:1], _09_[5:3], _00_, _09_[1:0] } >= { celloutsig_0_0z[5:1], celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_2z };
  assign celloutsig_0_20z = celloutsig_0_0z[8:2] >= { celloutsig_0_0z[13:8], celloutsig_0_16z };
  assign celloutsig_0_9z = { _09_[4:3], celloutsig_0_2z } && celloutsig_0_7z[2:0];
  assign celloutsig_0_14z = { celloutsig_0_0z, celloutsig_0_9z } && { celloutsig_0_0z[14:4], celloutsig_0_7z };
  assign celloutsig_1_4z = { celloutsig_1_3z[1:0], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z } || { in_data[191:185], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_8z = { celloutsig_0_0z[12:11], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z } || { _09_[5:3], _00_, _09_[1] };
  assign celloutsig_0_0z = in_data[58:44] % { 1'h1, in_data[83:70] };
  assign celloutsig_1_6z = { in_data[113:109], celloutsig_1_4z, celloutsig_1_1z } | { celloutsig_1_5z[8:5], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_0_7z = { _09_[4:3], _00_, _09_[1], celloutsig_0_2z } | { celloutsig_0_0z[12], celloutsig_0_6z, celloutsig_0_4z };
  assign celloutsig_0_11z = { in_data[57:54], celloutsig_0_4z, celloutsig_0_3z } | { _09_[3], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_9z };
  assign celloutsig_0_19z = celloutsig_0_5z[4:0] | { celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_17z, celloutsig_0_12z };
  assign celloutsig_0_23z = celloutsig_0_5z[4:0] | { in_data[84:81], celloutsig_0_20z };
  assign celloutsig_1_2z = { in_data[127:122], celloutsig_1_1z, celloutsig_1_0z } ^ in_data[168:161];
  assign celloutsig_1_5z = { in_data[147:130], celloutsig_1_4z } ^ { celloutsig_1_2z[6:0], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_1z };
  assign { _06_[2], _06_[0] } = { _01_, _04_ };
  assign _07_[3] = _05_;
  assign _08_[4:3] = { _02_, _03_ };
  assign _09_[2] = _00_;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_42z, celloutsig_0_43z };
endmodule
