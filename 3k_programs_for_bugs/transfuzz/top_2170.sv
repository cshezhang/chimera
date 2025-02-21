/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  reg [12:0] _06_;
  wire [3:0] _07_;
  wire [4:0] _08_;
  wire [4:0] _09_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [16:0] celloutsig_0_11z;
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
  wire [7:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [2:0] celloutsig_0_25z;
  wire [6:0] celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [7:0] celloutsig_0_36z;
  wire [20:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [3:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_53z;
  wire celloutsig_0_55z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_63z;
  wire [15:0] celloutsig_0_6z;
  wire [3:0] celloutsig_0_79z;
  wire celloutsig_0_7z;
  wire [2:0] celloutsig_0_80z;
  wire [14:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [12:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [32:0] celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [7:0] celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_60z = ~(celloutsig_0_14z | celloutsig_0_18z);
  assign celloutsig_0_23z = ~(celloutsig_0_16z | celloutsig_0_20z);
  assign celloutsig_0_30z = ~(_00_ | celloutsig_0_11z[12]);
  assign celloutsig_0_15z = ~_01_;
  assign celloutsig_1_4z = ~((celloutsig_1_0z | celloutsig_1_1z) & celloutsig_1_1z);
  assign celloutsig_0_13z = ~((celloutsig_0_7z | celloutsig_0_5z) & celloutsig_0_0z);
  assign celloutsig_1_1z = in_data[127] | in_data[156];
  assign celloutsig_1_9z = in_data[173] | _03_;
  assign celloutsig_0_29z = celloutsig_0_25z[0] | celloutsig_0_19z;
  assign celloutsig_0_51z = celloutsig_0_25z[2] ^ celloutsig_0_31z;
  assign celloutsig_1_10z = celloutsig_1_9z ^ _04_;
  assign celloutsig_1_12z = celloutsig_1_9z ^ celloutsig_1_2z[1];
  assign celloutsig_1_19z = celloutsig_1_11z[1] ^ celloutsig_1_2z[3];
  assign celloutsig_0_10z = _05_ ^ _01_;
  assign celloutsig_0_53z = ~(celloutsig_0_30z ^ celloutsig_0_22z);
  assign celloutsig_0_55z = ~(celloutsig_0_27z[4] ^ celloutsig_0_53z);
  assign celloutsig_1_0z = ~(in_data[172] ^ in_data[109]);
  assign celloutsig_0_20z = ~(celloutsig_0_6z[3] ^ celloutsig_0_18z);
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _06_ <= 13'h0000;
    else _06_ <= { celloutsig_0_38z[20:17], celloutsig_0_17z, celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_25z, celloutsig_0_5z };
  reg [3:0] _29_;
  always_ff @(posedge clkin_data[32], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _29_ <= 4'h0;
    else _29_ <= { celloutsig_0_2z, celloutsig_0_30z, celloutsig_0_10z, celloutsig_0_22z };
  assign { _02_, _07_[2:0] } = _29_;
  reg [4:0] _30_;
  always_ff @(negedge clkin_data[64], negedge clkin_data[128])
    if (!clkin_data[128]) _30_ <= 5'h00;
    else _30_ <= { celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_4z };
  assign { _04_, _03_, _08_[2:0] } = _30_;
  reg [4:0] _31_;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _31_ <= 5'h00;
    else _31_ <= { celloutsig_0_3z, celloutsig_0_1z };
  assign { _01_, _00_, _09_[2:1], _05_ } = _31_;
  assign celloutsig_0_31z = celloutsig_0_9z[14:6] == { _00_, _09_[2:1], _05_, celloutsig_0_29z, celloutsig_0_18z, celloutsig_0_5z, celloutsig_0_22z, celloutsig_0_0z };
  assign celloutsig_0_17z = { _09_[2:1], _05_, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_14z } == { celloutsig_0_9z[12:9], celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_32z = { in_data[55:37], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_23z, celloutsig_0_23z, celloutsig_0_27z } >= { celloutsig_0_17z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_27z, celloutsig_0_25z, celloutsig_0_31z, celloutsig_0_31z };
  assign celloutsig_0_59z = { _09_[1], celloutsig_0_39z, celloutsig_0_32z, celloutsig_0_51z } >= { _07_[2], celloutsig_0_55z, celloutsig_0_0z, celloutsig_0_20z };
  assign celloutsig_0_7z = { in_data[40:36], celloutsig_0_3z, celloutsig_0_1z } >= { in_data[49:42], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_18z = celloutsig_1_2z[7:5] >= celloutsig_1_13z[23:21];
  assign celloutsig_0_14z = ! { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_0z, _01_, _00_, _09_[2:1], _05_ };
  assign celloutsig_0_18z = ! { celloutsig_0_11z[13:6], celloutsig_0_16z };
  assign celloutsig_0_63z = { in_data[41:40], celloutsig_0_20z } || { celloutsig_0_59z, celloutsig_0_30z, celloutsig_0_12z };
  assign celloutsig_1_5z = in_data[113:108] || { celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_79z = { _06_[9:7], celloutsig_0_63z } % { 1'h1, celloutsig_0_38z[10], celloutsig_0_60z, celloutsig_0_53z };
  assign celloutsig_1_11z = { celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_1z } % { 1'h1, in_data[126:122], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_7z };
  assign celloutsig_0_9z = { in_data[92:81], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_7z } % { 1'h1, in_data[59:49], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_38z = celloutsig_0_9z[7] ? { celloutsig_0_11z[14:2], celloutsig_0_32z, celloutsig_0_27z } : in_data[77:57];
  assign celloutsig_0_39z = celloutsig_0_36z[7] & celloutsig_0_38z[17];
  assign celloutsig_0_5z = celloutsig_0_3z[1] & celloutsig_0_2z;
  assign celloutsig_1_7z = celloutsig_1_4z & celloutsig_1_5z;
  assign celloutsig_1_8z = celloutsig_1_0z & celloutsig_1_5z;
  assign celloutsig_0_1z = in_data[41] & celloutsig_0_0z;
  assign celloutsig_0_19z = celloutsig_0_6z[14] & celloutsig_0_3z[2];
  assign celloutsig_0_80z = celloutsig_0_6z[9:7] >> { celloutsig_0_27z[6:5], celloutsig_0_29z };
  assign celloutsig_1_13z = { in_data[129:112], celloutsig_1_3z, celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_9z, celloutsig_1_12z, celloutsig_1_1z, _04_, _03_, _08_[2:0], celloutsig_1_4z } >> { celloutsig_1_11z[9:2], celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_12z };
  assign celloutsig_0_27z = { celloutsig_0_21z[7:5], celloutsig_0_25z, celloutsig_0_17z } >> { celloutsig_0_9z[8:4], celloutsig_0_12z, celloutsig_0_15z };
  assign celloutsig_0_36z = { celloutsig_0_21z[7:1], celloutsig_0_32z } >> celloutsig_0_21z;
  assign celloutsig_0_6z = { in_data[31:24], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_4z } >> { in_data[16:7], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_1_2z = in_data[185:178] >> { in_data[147:141], celloutsig_1_1z };
  assign celloutsig_1_3z = celloutsig_1_2z[4:2] >> in_data[99:97];
  assign celloutsig_0_11z = { celloutsig_0_6z[10:3], _01_, _00_, _09_[2:1], _05_, celloutsig_0_3z } >> { celloutsig_0_9z[9:8], celloutsig_0_9z };
  assign celloutsig_0_21z = celloutsig_0_9z[12:5] >> { celloutsig_0_9z[12:11], celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_25z = { celloutsig_0_6z[15], celloutsig_0_4z, celloutsig_0_18z } >> { celloutsig_0_22z, celloutsig_0_5z, celloutsig_0_15z };
  assign celloutsig_0_3z = { in_data[81:79], celloutsig_0_1z } - in_data[67:64];
  assign celloutsig_0_0z = ~((in_data[30] & in_data[42]) | in_data[68]);
  assign celloutsig_0_16z = ~((celloutsig_0_13z & celloutsig_0_14z) | celloutsig_0_0z);
  assign celloutsig_0_22z = ~((celloutsig_0_5z & celloutsig_0_13z) | celloutsig_0_12z);
  assign celloutsig_0_2z = ~((celloutsig_0_1z & celloutsig_0_1z) | celloutsig_0_1z);
  assign celloutsig_0_4z = ~((celloutsig_0_2z & celloutsig_0_1z) | (celloutsig_0_3z[3] & celloutsig_0_1z));
  assign celloutsig_0_12z = ~((celloutsig_0_0z & celloutsig_0_3z[3]) | (celloutsig_0_7z & celloutsig_0_7z));
  assign _07_[3] = _02_;
  assign _08_[4:3] = { _04_, _03_ };
  assign { _09_[4:3], _09_[0] } = { _01_, _00_, _05_ };
  assign { out_data[128], out_data[96], out_data[35:32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_79z, celloutsig_0_80z };
endmodule
