/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [16:0] _00_;
  wire [2:0] _01_;
  wire [16:0] _02_;
  wire [22:0] _03_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [4:0] celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire [32:0] celloutsig_0_14z;
  wire [9:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [18:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [13:0] celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [11:0] celloutsig_0_26z;
  wire [10:0] celloutsig_0_27z;
  wire [3:0] celloutsig_0_28z;
  wire [16:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [6:0] celloutsig_0_43z;
  wire celloutsig_0_45z;
  wire [6:0] celloutsig_0_47z;
  reg [6:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [7:0] celloutsig_0_51z;
  wire [2:0] celloutsig_0_5z;
  wire [6:0] celloutsig_0_62z;
  wire [6:0] celloutsig_0_63z;
  wire celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire [5:0] celloutsig_0_6z;
  wire [23:0] celloutsig_0_7z;
  wire [20:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [12:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire [5:0] celloutsig_1_18z;
  wire [21:0] celloutsig_1_19z;
  wire [4:0] celloutsig_1_1z;
  wire [10:0] celloutsig_1_2z;
  wire [3:0] celloutsig_1_3z;
  wire [11:0] celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [9:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_38z = ~((celloutsig_0_34z | celloutsig_0_20z[12]) & (celloutsig_0_18z | celloutsig_0_34z));
  assign celloutsig_0_65z = ~((celloutsig_0_43z[3] | celloutsig_0_47z[1]) & (celloutsig_0_39z | celloutsig_0_25z));
  assign celloutsig_0_62z = { celloutsig_0_17z[5:0], celloutsig_0_19z } + { celloutsig_0_51z[3], celloutsig_0_12z, celloutsig_0_33z };
  assign celloutsig_0_63z = celloutsig_0_62z + { celloutsig_0_43z[5:0], celloutsig_0_45z };
  assign celloutsig_1_1z = { in_data[112:110], celloutsig_1_0z, celloutsig_1_0z } + { in_data[127:125], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_2z = in_data[111:101] + in_data[176:166];
  assign celloutsig_1_4z = { celloutsig_1_3z[1], celloutsig_1_2z } + { celloutsig_1_3z[3:1], celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_1_19z = { celloutsig_1_2z[7:1], celloutsig_1_12z, celloutsig_1_15z, celloutsig_1_13z } + { in_data[132:122], celloutsig_1_2z };
  assign celloutsig_0_12z = { celloutsig_0_4z[2], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_10z } + _00_[8:4];
  assign celloutsig_0_13z = { _00_[2], _01_[1:0] } + celloutsig_0_2z[16:14];
  assign celloutsig_0_15z = { celloutsig_0_14z[29:25], celloutsig_0_12z } + { celloutsig_0_7z[5:1], celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_9z };
  assign celloutsig_0_20z = celloutsig_0_2z[16:3] + { in_data[54:42], celloutsig_0_19z };
  assign celloutsig_0_2z = { _02_[16:13], _00_[16:4] } + { _00_[16:2], celloutsig_0_0z, celloutsig_0_0z };
  reg [22:0] _17_;
  always_ff @(posedge celloutsig_1_19z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _17_ <= 23'h000000;
    else _17_ <= in_data[93:71];
  assign { _02_[16:13], _00_[16:2], _01_[1:0], _03_[1:0] } = _17_;
  assign celloutsig_0_6z = in_data[53:48] / { 1'h1, celloutsig_0_2z[11:7] };
  assign celloutsig_0_7z = { in_data[67], _02_[16:13], _00_[16:2], _01_[1:0], _03_[1:0] } / { 1'h1, _02_[16:13], _00_[16:2], _01_[1:0], _03_[1], in_data[0] };
  assign celloutsig_0_8z = { in_data[50:32], celloutsig_0_0z, celloutsig_0_3z } / { 1'h1, celloutsig_0_7z[19:0] };
  assign celloutsig_0_33z = celloutsig_0_2z[10:4] == celloutsig_0_4z;
  assign celloutsig_0_50z = { celloutsig_0_4z[6:2], celloutsig_0_33z } == { celloutsig_0_15z[4:2], celloutsig_0_5z };
  assign celloutsig_0_66z = celloutsig_0_47z[4:0] == celloutsig_0_63z[6:2];
  assign celloutsig_1_7z = in_data[146:118] == in_data[139:111];
  assign celloutsig_0_11z = { celloutsig_0_7z[12], celloutsig_0_3z, celloutsig_0_10z } == celloutsig_0_5z;
  assign celloutsig_0_22z = { celloutsig_0_8z[7:3], celloutsig_0_4z } == _00_[13:2];
  assign celloutsig_0_23z = celloutsig_0_15z[6:2] == { celloutsig_0_4z[6:5], celloutsig_0_22z, celloutsig_0_3z, celloutsig_0_18z };
  assign celloutsig_0_3z = celloutsig_0_2z[14:7] === _00_[14:7];
  assign celloutsig_1_10z = { celloutsig_1_5z[1:0], celloutsig_1_6z, celloutsig_1_5z } === celloutsig_1_4z[5:0];
  assign celloutsig_0_9z = { _02_[13], _00_[16:7], celloutsig_0_0z } === { _00_[8:2], _01_[1:0], celloutsig_0_5z };
  assign celloutsig_0_16z = celloutsig_0_8z[17:1] === { _00_[8:2], _01_[1:0], _03_[1:0], celloutsig_0_10z, celloutsig_0_12z };
  assign celloutsig_0_34z = celloutsig_0_14z[16:10] > { celloutsig_0_12z[4:1], celloutsig_0_13z };
  assign celloutsig_1_0z = in_data[169:163] > in_data[184:178];
  assign celloutsig_1_6z = { celloutsig_1_4z[10], celloutsig_1_5z, celloutsig_1_1z } > in_data[126:118];
  assign celloutsig_1_15z = { celloutsig_1_12z[1:0], celloutsig_1_7z } > celloutsig_1_4z[6:4];
  assign celloutsig_0_24z = { celloutsig_0_6z[5:4], celloutsig_0_13z } > celloutsig_0_20z[13:9];
  assign celloutsig_0_30z = { celloutsig_0_14z[2:1], celloutsig_0_3z } > { celloutsig_0_27z[4:3], celloutsig_0_10z };
  assign celloutsig_0_0z = ! in_data[52:40];
  assign celloutsig_0_10z = ! { _00_[8:2], _01_[1:0], _03_[1:0] };
  assign celloutsig_1_13z = { celloutsig_1_9z[2], celloutsig_1_0z, celloutsig_1_10z } < celloutsig_1_9z[7:5];
  assign celloutsig_0_25z = { celloutsig_0_6z, celloutsig_0_16z } < { celloutsig_0_8z[5:1], celloutsig_0_10z, celloutsig_0_10z };
  assign celloutsig_1_9z = in_data[137:128] * celloutsig_1_2z[9:0];
  assign celloutsig_0_27z = { _00_[11:8], celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_22z, celloutsig_0_18z } * celloutsig_0_17z[17:7];
  assign celloutsig_0_18z = { celloutsig_0_14z[27:26], celloutsig_0_11z } != celloutsig_0_6z[2:0];
  assign celloutsig_0_28z = ~ { _02_[13], _00_[16:14] };
  assign celloutsig_0_39z = ~^ celloutsig_0_5z;
  assign celloutsig_0_45z = ~^ { celloutsig_0_43z[6:2], celloutsig_0_25z };
  assign celloutsig_0_19z = ~^ { _01_[1], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_0_43z = { celloutsig_0_2z[13:8], celloutsig_0_30z } >>> { celloutsig_0_38z, celloutsig_0_24z, celloutsig_0_28z, celloutsig_0_11z };
  assign celloutsig_0_5z = { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_3z } >>> celloutsig_0_4z[3:1];
  assign celloutsig_1_3z = { celloutsig_1_2z[6:5], celloutsig_1_0z, celloutsig_1_0z } >>> { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_12z = { celloutsig_1_5z[1:0], celloutsig_1_7z, celloutsig_1_9z } >>> { celloutsig_1_4z[11:4], celloutsig_1_6z, celloutsig_1_3z };
  assign celloutsig_0_17z = { _02_[13], _00_[16:2], _01_[1:0], _03_[1] } >>> { celloutsig_0_12z[3], celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_0_47z = { _02_[13], _00_[16:11] } ~^ celloutsig_0_26z[6:0];
  assign celloutsig_0_51z = { celloutsig_0_43z[4:1], celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_23z, celloutsig_0_50z } ~^ { celloutsig_0_6z[2:1], celloutsig_0_6z };
  assign celloutsig_1_5z = celloutsig_1_2z[8:6] ~^ celloutsig_1_2z[6:4];
  assign celloutsig_1_18z = celloutsig_1_12z[5:0] ~^ { celloutsig_1_2z[7:3], celloutsig_1_13z };
  assign celloutsig_0_14z = in_data[95:63] ~^ { celloutsig_0_2z[4:1], celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_10z };
  assign celloutsig_0_26z = { celloutsig_0_2z[10:5], celloutsig_0_6z } ~^ { celloutsig_0_15z[6:1], celloutsig_0_23z, celloutsig_0_12z };
  always_latch
    if (clkin_data[32]) celloutsig_0_4z = 7'h00;
    else if (clkin_data[96]) celloutsig_0_4z = { in_data[60:57], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z };
  assign _00_[1:0] = { celloutsig_0_0z, celloutsig_0_0z };
  assign _01_[2] = _00_[2];
  assign _02_[12:0] = _00_[16:4];
  assign _03_[22:2] = { _02_[16:13], _00_[16:2], _01_[1:0] };
  assign { out_data[133:128], out_data[117:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_65z, celloutsig_0_66z };
endmodule
