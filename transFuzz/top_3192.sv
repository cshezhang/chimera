/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [5:0] _00_;
  wire [10:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire [13:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [18:0] celloutsig_0_1z;
  wire [30:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [16:0] celloutsig_0_23z;
  wire [2:0] celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [7:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  reg [12:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [2:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [8:0] celloutsig_0_43z;
  wire [7:0] celloutsig_0_45z;
  wire celloutsig_0_4z;
  wire celloutsig_0_59z;
  reg [9:0] celloutsig_0_5z;
  wire [6:0] celloutsig_0_61z;
  wire [7:0] celloutsig_0_6z;
  wire [9:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_92z;
  reg [10:0] celloutsig_0_93z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [17:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [4:0] celloutsig_1_5z;
  wire [9:0] celloutsig_1_6z;
  wire celloutsig_1_8z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_11z = celloutsig_1_6z[3] ? celloutsig_1_3z[6] : celloutsig_1_10z;
  assign celloutsig_0_22z = celloutsig_0_14z ? celloutsig_0_10z[1] : celloutsig_0_4z;
  assign celloutsig_1_4z = celloutsig_1_2z | ~(celloutsig_1_3z[10]);
  assign celloutsig_0_16z = celloutsig_0_11z[10] | ~(celloutsig_0_7z[5]);
  assign celloutsig_0_39z = celloutsig_0_35z[12] ^ celloutsig_0_4z;
  assign celloutsig_1_8z = celloutsig_1_1z[2] ^ celloutsig_1_2z;
  assign celloutsig_1_19z = celloutsig_1_11z ^ celloutsig_1_1z[1];
  assign celloutsig_0_12z = celloutsig_0_8z ^ celloutsig_0_10z[3];
  assign celloutsig_0_26z = celloutsig_0_8z ^ celloutsig_0_23z[9];
  always_ff @(posedge clkin_data[160], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _00_ <= 6'h00;
    else _00_ <= { celloutsig_0_22z, celloutsig_0_15z };
  assign celloutsig_0_0z = in_data[33:23] & in_data[30:20];
  assign celloutsig_0_20z = { celloutsig_0_6z[3:2], celloutsig_0_12z, celloutsig_0_15z, celloutsig_0_9z, celloutsig_0_18z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_16z } & { celloutsig_0_7z[8:6], celloutsig_0_13z, celloutsig_0_18z, celloutsig_0_17z, celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_19z };
  assign celloutsig_0_23z = celloutsig_0_20z[18:2] & { celloutsig_0_11z[10:3], celloutsig_0_16z, celloutsig_0_6z };
  assign celloutsig_0_24z = celloutsig_0_23z[16:14] & celloutsig_0_20z[26:24];
  assign celloutsig_0_45z = { celloutsig_0_38z[0], _00_, celloutsig_0_4z } / { 1'h1, celloutsig_0_43z[4:0], celloutsig_0_22z, celloutsig_0_26z };
  assign celloutsig_0_1z = { celloutsig_0_0z[8:1], celloutsig_0_0z } / { 1'h1, in_data[47:30] };
  assign celloutsig_0_36z = celloutsig_0_10z === { celloutsig_0_8z, celloutsig_0_27z, celloutsig_0_28z, celloutsig_0_18z };
  assign celloutsig_0_37z = { celloutsig_0_1z[8:6], celloutsig_0_5z, celloutsig_0_36z } >= celloutsig_0_20z[27:14];
  assign celloutsig_0_19z = { celloutsig_0_15z[2:1], celloutsig_0_2z } > { celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_9z };
  assign celloutsig_0_2z = celloutsig_0_0z[10:6] > celloutsig_0_1z[10:6];
  assign celloutsig_0_4z = celloutsig_0_0z[9:2] && { in_data[68:62], celloutsig_0_2z };
  assign celloutsig_0_14z = { in_data[30:23], celloutsig_0_12z } && celloutsig_0_11z[12:4];
  assign celloutsig_0_3z = ! { celloutsig_0_1z[18:17], celloutsig_0_1z };
  assign celloutsig_0_59z = ! _00_[3:0];
  assign celloutsig_0_21z = ! { celloutsig_0_11z[12:5], celloutsig_0_12z, celloutsig_0_9z };
  assign celloutsig_0_40z = { in_data[61:45], celloutsig_0_21z } < { celloutsig_0_2z, celloutsig_0_16z, celloutsig_0_8z, _00_, celloutsig_0_6z, celloutsig_0_16z };
  assign celloutsig_1_2z = { celloutsig_1_1z[1:0], celloutsig_1_1z } < { in_data[151:149], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_13z = { celloutsig_0_5z[5:1], celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_9z } < { celloutsig_0_6z[5:1], celloutsig_0_10z, celloutsig_0_2z };
  assign celloutsig_0_17z = celloutsig_0_5z[4] & ~(celloutsig_0_11z[10]);
  assign celloutsig_0_18z = celloutsig_0_4z & ~(celloutsig_0_7z[5]);
  assign celloutsig_0_28z = celloutsig_0_10z[3] & ~(in_data[46]);
  assign celloutsig_0_43z = { celloutsig_0_1z[11:9], celloutsig_0_39z, celloutsig_0_27z, celloutsig_0_10z } % { 1'h1, celloutsig_0_29z[4:1], celloutsig_0_24z, celloutsig_0_8z };
  assign celloutsig_0_6z = celloutsig_0_1z[15:8] % { 1'h1, celloutsig_0_0z[9:3] };
  assign celloutsig_1_5z = { celloutsig_1_3z[5], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_0z } % { 1'h1, celloutsig_1_3z[16:14], in_data[96] };
  assign celloutsig_1_3z = { in_data[112:107], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z } * in_data[191:174];
  assign celloutsig_0_10z = celloutsig_0_1z[1] ? { celloutsig_0_0z[9:7], celloutsig_0_3z } : in_data[54:51];
  assign celloutsig_0_11z = celloutsig_0_7z[9] ? in_data[41:28] : { in_data[42:32], celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_9z };
  assign celloutsig_0_7z = - celloutsig_0_1z[13:4];
  assign celloutsig_1_1z = - { in_data[122], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_15z = - celloutsig_0_6z[6:2];
  assign celloutsig_0_8z = celloutsig_0_7z[8:2] !== celloutsig_0_5z[8:2];
  assign celloutsig_0_9z = & { celloutsig_0_7z[8:5], celloutsig_0_6z };
  assign celloutsig_1_0z = in_data[167] & in_data[189];
  assign celloutsig_0_27z = celloutsig_0_15z[3] & celloutsig_0_19z;
  assign celloutsig_1_10z = | { celloutsig_1_8z, celloutsig_1_5z[3:1], celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_29z = { celloutsig_0_11z[9:4], celloutsig_0_12z, celloutsig_0_22z } >> { celloutsig_0_11z[12:6], celloutsig_0_2z };
  assign celloutsig_1_6z = { celloutsig_1_3z[12:5], celloutsig_1_2z, celloutsig_1_2z } >> celloutsig_1_3z[17:8];
  assign celloutsig_0_61z = celloutsig_0_29z[6:0] - { celloutsig_0_23z[6:5], celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_59z, celloutsig_0_37z, celloutsig_0_3z };
  assign celloutsig_0_38z = { celloutsig_0_5z[9:8], celloutsig_0_9z } ^ { celloutsig_0_23z[16], celloutsig_0_3z, celloutsig_0_16z };
  assign celloutsig_0_92z = ~((celloutsig_0_5z[5] & celloutsig_0_6z[1]) | celloutsig_0_40z);
  assign celloutsig_1_18z = ~((celloutsig_1_8z & celloutsig_1_1z[1]) | celloutsig_1_3z[3]);
  always_latch
    if (clkin_data[96]) celloutsig_0_35z = 13'h0000;
    else if (clkin_data[32]) celloutsig_0_35z = { celloutsig_0_7z[9:5], celloutsig_0_6z };
  always_latch
    if (!clkin_data[96]) celloutsig_0_5z = 10'h000;
    else if (!clkin_data[0]) celloutsig_0_5z = celloutsig_0_0z[9:0];
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_93z = 11'h000;
    else if (!clkin_data[32]) celloutsig_0_93z = { celloutsig_0_45z[1:0], celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_61z };
  assign { out_data[128], out_data[96], out_data[32], out_data[10:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_92z, celloutsig_0_93z };
endmodule
