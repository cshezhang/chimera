/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [5:0] _02_;
  wire [2:0] _03_;
  reg [2:0] _04_;
  wire [8:0] _05_;
  reg [3:0] _06_;
  wire [13:0] _07_;
  wire [10:0] _08_;
  wire [3:0] _09_;
  wire celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire [8:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [4:0] celloutsig_0_36z;
  wire celloutsig_0_3z;
  wire [4:0] celloutsig_0_40z;
  wire [12:0] celloutsig_0_45z;
  wire [11:0] celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [3:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire [15:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [6:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _04_ <= 3'h0;
    else _04_ <= { _03_[2], celloutsig_0_3z, celloutsig_0_14z };
  reg [8:0] _11_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _11_ <= 9'h000;
    else _11_ <= _05_;
  assign out_data[40:32] = _11_;
  always_ff @(posedge clkin_data[64], negedge clkin_data[96])
    if (!clkin_data[96]) _06_ <= 4'h0;
    else _06_ <= celloutsig_1_6z[3:0];
  reg [13:0] _13_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _13_ <= 14'h0000;
    else _13_ <= { celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_11z };
  assign { _07_[13:3], _03_[2], _07_[1:0] } = _13_;
  reg [10:0] _14_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _14_ <= 11'h000;
    else _14_ <= { celloutsig_0_11z[8:5], celloutsig_0_15z, celloutsig_0_20z, celloutsig_0_18z, celloutsig_0_10z };
  assign { _08_[10:9], _05_ } = _14_;
  reg [3:0] _15_;
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _15_ <= 4'h0;
    else _15_ <= { celloutsig_0_20z, celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_18z };
  assign { _00_, _09_[2:0] } = _15_;
  reg [5:0] _16_;
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _16_ <= 6'h00;
    else _16_ <= { in_data[68], celloutsig_0_24z, celloutsig_0_6z };
  assign { _02_[5:4], _01_, _02_[2:0] } = _16_;
  assign celloutsig_0_36z = { celloutsig_0_22z, _00_, _09_[2:0] } / { 1'h1, _04_, celloutsig_0_23z };
  assign celloutsig_0_40z = { _07_[11:8], celloutsig_0_25z } / { 1'h1, _04_[1:0], celloutsig_0_24z, celloutsig_0_29z };
  assign celloutsig_0_45z = { celloutsig_0_36z[2:1], celloutsig_0_12z, celloutsig_0_24z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_6z } / { 1'h1, _07_[7:3], _03_[2], _07_[1:0], celloutsig_0_15z, celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_5z };
  assign celloutsig_0_47z = { celloutsig_0_45z[9:6], celloutsig_0_40z, celloutsig_0_15z, celloutsig_0_20z, celloutsig_0_23z } / { 1'h1, _02_[4], _01_, _02_[2:0], celloutsig_0_7z, celloutsig_0_17z, celloutsig_0_29z, celloutsig_0_27z, celloutsig_0_23z, in_data[0] };
  assign celloutsig_1_4z = { in_data[102], celloutsig_1_1z, celloutsig_1_2z } / { 1'h1, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_12z = { _06_[2:1], _06_, celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_11z, celloutsig_1_11z } / { 1'h1, celloutsig_1_4z[0], celloutsig_1_3z, celloutsig_1_7z, _06_, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_11z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_0_4z = { in_data[40:31], celloutsig_0_2z, celloutsig_0_0z } === { in_data[45:35], celloutsig_0_2z };
  assign celloutsig_1_0z = in_data[117:114] === in_data[140:137];
  assign celloutsig_1_8z = in_data[154:152] === { celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_7z };
  assign celloutsig_1_9z = { celloutsig_1_6z[0], celloutsig_1_1z, celloutsig_1_0z } === { celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_1z };
  assign celloutsig_0_13z = { in_data[42:29], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_4z } === { in_data[45:17], celloutsig_0_0z, celloutsig_0_8z };
  assign celloutsig_0_18z = { celloutsig_0_10z[2:0], celloutsig_0_13z, celloutsig_0_7z } === { celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_23z = { in_data[86:78], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_5z } === { celloutsig_0_11z[8:1], celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_5z, celloutsig_0_7z };
  assign celloutsig_0_0z = in_data[78:69] <= in_data[78:69];
  assign celloutsig_0_29z = { celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_18z } <= { _08_[10:9], _05_[8] };
  assign celloutsig_1_13z = { celloutsig_1_6z[5:3], celloutsig_1_6z, celloutsig_1_11z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_2z } <= { celloutsig_1_6z[3:0], celloutsig_1_6z, _06_, celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_15z = { in_data[115:105], celloutsig_1_11z } <= { celloutsig_1_12z[12:7], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_8z };
  assign celloutsig_0_9z = in_data[19:15] <= { in_data[19:17], celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_1z = in_data[23:6] <= { in_data[46:34], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_27z = { _08_[9], _00_, _09_[2:0] } <= { celloutsig_0_20z, celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_15z, celloutsig_0_18z };
  assign celloutsig_1_3z = { in_data[162], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z } < { in_data[177], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_1_5z = { in_data[125:120], celloutsig_1_2z } < { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_19z = { in_data[148:145], celloutsig_1_16z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_5z } < { celloutsig_1_6z[6:2], celloutsig_1_15z, celloutsig_1_0z, celloutsig_1_7z };
  assign celloutsig_0_15z = { in_data[59], celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_13z } < { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_7z };
  assign celloutsig_0_16z = { celloutsig_0_10z[3:1], celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_2z } < { celloutsig_0_10z[1], celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_8z };
  assign celloutsig_0_20z = { in_data[43], celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_3z, _07_[13:3], _03_[2], _07_[1:0], celloutsig_0_2z, celloutsig_0_4z } < { _07_[11:4], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_14z };
  assign celloutsig_1_7z = celloutsig_1_4z[1] & ~(celloutsig_1_0z);
  assign celloutsig_0_17z = celloutsig_0_15z & ~(celloutsig_0_2z);
  assign celloutsig_0_3z = & { celloutsig_0_2z, celloutsig_0_1z, in_data[62:48], celloutsig_0_0z };
  assign celloutsig_1_16z = & { celloutsig_1_13z, celloutsig_1_12z[4], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_18z = & celloutsig_1_12z[12:3];
  assign celloutsig_0_7z = & in_data[49:45];
  assign celloutsig_0_8z = & { celloutsig_0_4z, in_data[57:55], in_data[49:45], celloutsig_0_0z };
  assign celloutsig_1_1z = celloutsig_1_0z & in_data[167];
  assign celloutsig_1_2z = celloutsig_1_1z & celloutsig_1_0z;
  assign celloutsig_0_5z = in_data[14] & celloutsig_0_4z;
  assign celloutsig_1_11z = celloutsig_1_3z & celloutsig_1_0z;
  assign celloutsig_0_14z = celloutsig_0_7z & celloutsig_0_3z;
  assign celloutsig_0_24z = celloutsig_0_6z[2] & celloutsig_0_13z;
  assign celloutsig_1_6z = { celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_5z } <<< in_data[103:97];
  assign celloutsig_0_6z = in_data[37:34] <<< { in_data[77:76], celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_10z = { in_data[20], celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_1z } <<< { celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_8z };
  assign celloutsig_0_11z = { in_data[17:10], celloutsig_0_0z } <<< { celloutsig_0_6z[3:1], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_12z = ~((celloutsig_0_0z & celloutsig_0_2z) | (celloutsig_0_8z & celloutsig_0_5z));
  assign celloutsig_0_2z = ~((celloutsig_0_0z & celloutsig_0_0z) | (celloutsig_0_1z & in_data[26]));
  assign celloutsig_0_22z = ~((celloutsig_0_13z & celloutsig_0_13z) | (celloutsig_0_6z[0] & _05_[4]));
  assign celloutsig_0_25z = ~((celloutsig_0_1z & celloutsig_0_3z) | (_07_[3] & celloutsig_0_2z));
  assign _02_[3] = _01_;
  assign _03_[1:0] = { celloutsig_0_3z, celloutsig_0_14z };
  assign _07_[2] = _03_[2];
  assign _08_[8:0] = _05_;
  assign _09_[3] = _00_;
  assign { out_data[128], out_data[96], out_data[11:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_47z };
endmodule
