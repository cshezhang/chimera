/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [7:0] _00_;
  wire celloutsig_0_0z;
  wire [8:0] celloutsig_0_10z;
  wire [4:0] celloutsig_0_11z;
  wire [3:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [8:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [6:0] celloutsig_0_16z;
  wire [4:0] celloutsig_0_17z;
  wire [12:0] celloutsig_0_18z;
  wire [2:0] celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire [8:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [4:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [14:0] celloutsig_0_25z;
  wire [4:0] celloutsig_0_26z;
  wire [15:0] celloutsig_0_27z;
  wire [9:0] celloutsig_0_29z;
  wire [5:0] celloutsig_0_2z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [17:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [2:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [8:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [4:0] celloutsig_1_16z;
  wire [6:0] celloutsig_1_17z;
  wire [8:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [8:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [8:0] celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
  wire [22:0] celloutsig_1_5z;
  wire [29:0] celloutsig_1_6z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = ~in_data[124];
  assign celloutsig_1_13z = ~celloutsig_1_9z;
  assign celloutsig_0_13z = ~in_data[40];
  assign celloutsig_0_24z = ~((celloutsig_0_4z[1] | celloutsig_0_10z[3]) & (celloutsig_0_14z[6] | celloutsig_0_13z));
  assign celloutsig_0_0z = in_data[75] ^ in_data[37];
  assign celloutsig_0_33z = celloutsig_0_15z ^ celloutsig_0_3z;
  assign celloutsig_0_6z = celloutsig_0_3z ^ celloutsig_0_0z;
  reg [7:0] _08_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _08_ <= 8'h00;
    else _08_ <= { celloutsig_0_35z[8:3], celloutsig_0_6z, celloutsig_0_36z };
  assign out_data[39:32] = _08_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _00_ <= 8'h00;
    else _00_ <= { celloutsig_0_2z[2:0], celloutsig_0_5z, celloutsig_0_12z };
  assign celloutsig_0_35z = { celloutsig_0_11z[3], celloutsig_0_8z, celloutsig_0_29z, celloutsig_0_17z, celloutsig_0_32z } / { 1'h1, celloutsig_0_29z[7:2], celloutsig_0_32z, celloutsig_0_21z, celloutsig_0_34z };
  assign celloutsig_1_6z = in_data[154:125] / { 1'h1, celloutsig_1_5z[15:5], celloutsig_1_1z, celloutsig_1_3z };
  assign celloutsig_0_14z = { celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_5z } / { 1'h1, celloutsig_0_7z[4:3], celloutsig_0_2z };
  assign celloutsig_0_26z = { celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_24z } / { 1'h1, celloutsig_0_14z[6], celloutsig_0_4z };
  assign celloutsig_0_7z = in_data[28:20] / { 1'h1, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_12z = { celloutsig_0_4z[0], celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_5z } / { 1'h1, celloutsig_0_1z[3:1] };
  assign celloutsig_0_1z = in_data[15:11] / { 1'h1, in_data[32:31], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_3z = { in_data[75:65], celloutsig_0_0z } >= in_data[90:79];
  assign celloutsig_1_10z = { celloutsig_1_1z[7], celloutsig_1_1z } >= { 1'h0, celloutsig_1_3z };
  assign celloutsig_0_9z = celloutsig_0_2z[1] & ~(celloutsig_0_2z[5]);
  assign celloutsig_0_15z = celloutsig_0_3z & ~(celloutsig_0_2z[5]);
  assign celloutsig_0_36z = celloutsig_0_27z !== { celloutsig_0_29z[3:0], celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_33z, celloutsig_0_22z };
  assign celloutsig_1_2z = celloutsig_1_1z[5:2] !== celloutsig_1_1z[7:4];
  assign celloutsig_1_12z = { in_data[110:108], celloutsig_1_8z } !== { in_data[188:186], celloutsig_1_2z };
  assign celloutsig_0_8z = { in_data[38], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_6z } !== { celloutsig_0_1z[4], celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_32z = | celloutsig_0_21z[5:1];
  assign celloutsig_0_34z = | celloutsig_0_26z[4:2];
  assign celloutsig_1_11z = celloutsig_1_1z[4:1] >> { 1'h0, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_11z = { celloutsig_0_1z[1:0], celloutsig_0_4z } >> { celloutsig_0_4z[1:0], celloutsig_0_4z };
  assign celloutsig_0_2z = { in_data[56:52], celloutsig_0_0z } >> { in_data[4], celloutsig_0_1z };
  assign celloutsig_0_23z = { celloutsig_0_10z[7:4], celloutsig_0_0z } >> { _00_[7:4], celloutsig_0_13z };
  assign celloutsig_0_25z = { celloutsig_0_5z, celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_24z, celloutsig_0_24z, celloutsig_0_9z } >> { celloutsig_0_22z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_5z, _00_, celloutsig_0_6z };
  assign celloutsig_1_1z = { in_data[117:111], celloutsig_1_0z, celloutsig_1_0z } - in_data[127:119];
  assign celloutsig_1_5z = { in_data[126:114], celloutsig_1_1z, celloutsig_1_0z } - in_data[132:110];
  assign celloutsig_1_18z = { celloutsig_1_17z[4:0], celloutsig_1_13z, celloutsig_1_4z[2:1], 1'h0 } - { celloutsig_1_3z[7:4], celloutsig_1_12z, celloutsig_1_11z };
  assign celloutsig_0_16z = { celloutsig_0_11z[3:1], celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_5z } - { celloutsig_0_10z[5], celloutsig_0_15z, celloutsig_0_11z };
  assign celloutsig_0_17z = { celloutsig_0_10z[8:6], celloutsig_0_5z, celloutsig_0_9z } - { celloutsig_0_12z, celloutsig_0_3z };
  assign celloutsig_0_18z = { celloutsig_0_10z[8:1], celloutsig_0_17z } - { celloutsig_0_4z[0], celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_8z };
  assign celloutsig_0_19z = celloutsig_0_12z[3:1] - celloutsig_0_1z[3:1];
  assign celloutsig_0_27z = { celloutsig_0_21z[0], celloutsig_0_15z, celloutsig_0_23z, celloutsig_0_7z } - { celloutsig_0_16z[5:1], celloutsig_0_11z, celloutsig_0_9z, celloutsig_0_26z };
  assign celloutsig_0_4z = in_data[68:66] ~^ celloutsig_0_1z[4:2];
  assign celloutsig_1_17z = celloutsig_1_3z[6:0] ~^ { celloutsig_1_16z, celloutsig_1_10z, celloutsig_1_0z };
  assign celloutsig_0_10z = { celloutsig_0_7z[6:1], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_5z } ~^ { celloutsig_0_1z[2:0], celloutsig_0_6z, celloutsig_0_1z };
  assign celloutsig_0_21z = { celloutsig_0_18z[11:8], celloutsig_0_11z } ~^ { celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_17z };
  assign celloutsig_1_3z = { celloutsig_1_1z[7:0], celloutsig_1_0z } ^ in_data[164:156];
  assign celloutsig_0_29z = { celloutsig_0_16z[3:2], _00_ } ^ celloutsig_0_25z[9:0];
  assign celloutsig_0_38z = ~((celloutsig_0_8z & _00_[3]) | celloutsig_0_18z[11]);
  assign celloutsig_1_8z = ~((in_data[120] & in_data[148]) | in_data[160]);
  assign celloutsig_1_9z = ~((celloutsig_1_2z & celloutsig_1_0z) | celloutsig_1_6z[5]);
  assign celloutsig_0_5z = ~((celloutsig_0_1z[2] & celloutsig_0_4z[1]) | celloutsig_0_1z[4]);
  assign celloutsig_1_19z = ~((celloutsig_1_0z & 1'h0) | celloutsig_1_17z[4]);
  assign celloutsig_0_22z = ~((celloutsig_0_6z & celloutsig_0_15z) | celloutsig_0_2z[2]);
  assign celloutsig_1_16z[1] = ~ celloutsig_1_5z[19];
  assign { celloutsig_1_4z[1], celloutsig_1_4z[2] } = { celloutsig_1_2z, celloutsig_1_0z } ^ { celloutsig_1_0z, celloutsig_1_1z[6] };
  assign { celloutsig_1_16z[2], celloutsig_1_16z[3], celloutsig_1_16z[0], celloutsig_1_16z[4] } = { celloutsig_1_4z[1], celloutsig_1_4z[2], celloutsig_1_8z, celloutsig_1_5z[8] } ~^ { celloutsig_1_5z[20], celloutsig_1_5z[21], celloutsig_1_12z, celloutsig_1_5z[22] };
  assign celloutsig_1_4z[0] = 1'h0;
  assign { out_data[136:128], out_data[96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_38z };
endmodule
