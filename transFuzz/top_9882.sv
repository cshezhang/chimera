/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire [15:0] _06_;
  wire [9:0] _07_;
  reg [7:0] _08_;
  wire [2:0] _09_;
  wire [18:0] celloutsig_0_0z;
  wire [7:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [3:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [11:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [10:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [5:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire [3:0] celloutsig_0_39z;
  wire [8:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [18:0] celloutsig_0_41z;
  wire celloutsig_0_43z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [13:0] celloutsig_0_48z;
  wire [36:0] celloutsig_0_49z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_54z;
  wire celloutsig_0_55z;
  wire celloutsig_0_5z;
  wire [11:0] celloutsig_0_6z;
  wire celloutsig_0_74z;
  wire celloutsig_0_75z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [21:0] celloutsig_1_17z;
  wire [6:0] celloutsig_1_18z;
  wire [5:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [7:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_30z = !(celloutsig_0_9z ? celloutsig_0_6z[7] : celloutsig_0_1z[10]);
  assign celloutsig_0_46z = !(_00_ ? celloutsig_0_11z : celloutsig_0_4z[3]);
  assign celloutsig_0_50z = !(celloutsig_0_6z[10] ? celloutsig_0_43z : _01_);
  assign celloutsig_1_4z = !(celloutsig_1_0z ? celloutsig_1_1z : celloutsig_1_0z);
  assign celloutsig_1_8z = !(celloutsig_1_4z ? celloutsig_1_3z[3] : celloutsig_1_5z);
  assign celloutsig_1_14z = !(celloutsig_1_9z ? celloutsig_1_12z : in_data[149]);
  assign celloutsig_1_16z = !(celloutsig_1_15z ? celloutsig_1_14z : celloutsig_1_8z);
  assign celloutsig_0_2z = !(celloutsig_0_1z[8] ? in_data[29] : celloutsig_0_1z[11]);
  assign celloutsig_0_55z = ~((celloutsig_0_54z | celloutsig_0_40z) & (celloutsig_0_49z[12] | celloutsig_0_50z));
  assign celloutsig_0_74z = ~((celloutsig_0_55z | _02_) & (celloutsig_0_1z[1] | celloutsig_0_0z[8]));
  assign celloutsig_1_2z = ~((in_data[113] | in_data[156]) & (in_data[137] | celloutsig_1_0z));
  assign celloutsig_1_9z = ~((celloutsig_1_0z | celloutsig_1_8z) & (_03_ | celloutsig_1_8z));
  assign celloutsig_0_16z = ~((in_data[13] | celloutsig_0_12z) & (_04_ | celloutsig_0_13z[2]));
  assign celloutsig_0_37z = ~(celloutsig_0_28z ^ celloutsig_0_10z[5]);
  assign celloutsig_0_5z = ~(in_data[91] ^ celloutsig_0_3z[5]);
  assign celloutsig_1_0z = ~(in_data[109] ^ in_data[114]);
  assign celloutsig_1_5z = ~(celloutsig_1_3z[4] ^ celloutsig_1_1z);
  assign celloutsig_1_15z = ~(in_data[171] ^ celloutsig_1_13z);
  assign celloutsig_0_20z = ~(_05_ ^ celloutsig_0_2z);
  reg [15:0] _29_;
  always_ff @(posedge clkin_data[32], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _29_ <= 16'h0000;
    else _29_ <= { celloutsig_0_32z[3], celloutsig_0_1z, celloutsig_0_14z, celloutsig_0_30z, celloutsig_0_31z };
  assign { _06_[15:9], _00_, _06_[7:0] } = _29_;
  reg [2:0] _30_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _30_ <= 3'h0;
    else _30_ <= celloutsig_0_0z[2:0];
  assign { _02_, _04_, _01_ } = _30_;
  reg [9:0] _31_;
  always_ff @(negedge clkin_data[64], posedge clkin_data[96])
    if (clkin_data[96]) _31_ <= 10'h000;
    else _31_ <= { celloutsig_1_3z[7:2], celloutsig_1_0z, celloutsig_1_3z[0], celloutsig_1_2z, celloutsig_1_4z };
  assign { _07_[9], _03_, _07_[7:0] } = _31_;
  always_ff @(negedge clkin_data[32], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _08_ <= 8'h00;
    else _08_ <= celloutsig_0_10z;
  reg [2:0] _33_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _33_ <= 3'h0;
    else _33_ <= celloutsig_0_6z[5:3];
  assign { _05_, _09_[1:0] } = _33_;
  assign celloutsig_0_31z = { celloutsig_0_1z[7:5], celloutsig_0_11z, celloutsig_0_23z } == { _05_, _09_[1:0], celloutsig_0_26z, celloutsig_0_28z };
  assign celloutsig_0_43z = { celloutsig_0_31z, celloutsig_0_20z, celloutsig_0_40z } == celloutsig_0_1z[7:5];
  assign celloutsig_0_54z = { celloutsig_0_1z[1], celloutsig_0_29z, celloutsig_0_5z } == celloutsig_0_39z[2:0];
  assign celloutsig_1_1z = in_data[114:104] == { in_data[189:180], celloutsig_1_0z };
  assign celloutsig_1_13z = { in_data[121:112], celloutsig_1_3z[7:2], celloutsig_1_3z[0] } == { celloutsig_1_3z[4:2], celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_4z, _07_[9], _03_, _07_[7:0], celloutsig_1_4z };
  assign celloutsig_0_9z = { celloutsig_0_3z[7:5], celloutsig_0_5z, celloutsig_0_6z } == { in_data[67:64], celloutsig_0_1z };
  assign celloutsig_0_11z = celloutsig_0_0z[12:8] == { in_data[77:74], celloutsig_0_5z };
  assign celloutsig_0_18z = celloutsig_0_6z[9:2] == { celloutsig_0_0z[17:15], celloutsig_0_11z, celloutsig_0_4z[3:1], celloutsig_0_2z };
  assign celloutsig_0_38z = _05_ & ~(celloutsig_0_14z);
  assign celloutsig_0_40z = _06_[14] & ~(celloutsig_0_19z);
  assign celloutsig_1_12z = celloutsig_1_8z & ~(celloutsig_1_4z);
  assign celloutsig_0_19z = celloutsig_0_10z[3] & ~(celloutsig_0_16z);
  assign celloutsig_0_24z = _01_ & ~(celloutsig_0_3z[3]);
  assign celloutsig_0_25z = celloutsig_0_18z & ~(celloutsig_0_20z);
  assign celloutsig_0_26z = celloutsig_0_24z & ~(celloutsig_0_25z);
  assign celloutsig_0_3z = in_data[56:48] % { 1'h1, celloutsig_0_1z[9:2] };
  assign celloutsig_0_6z = { celloutsig_0_0z[11:1], celloutsig_0_2z } % { 1'h1, celloutsig_0_3z[6:2], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z[3:1], celloutsig_0_2z };
  assign celloutsig_1_17z = { in_data[172:155], celloutsig_1_14z, celloutsig_1_16z, celloutsig_1_4z, celloutsig_1_1z } % { 1'h1, celloutsig_1_3z[3:2], celloutsig_1_0z, celloutsig_1_16z, celloutsig_1_7z, celloutsig_1_16z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_4z, _07_[9], _03_, _07_[7:0], celloutsig_1_10z };
  assign celloutsig_1_18z = { _07_[9], _03_, _07_[7:3] } % { 1'h1, celloutsig_1_17z[6:1] };
  assign celloutsig_0_0z = in_data[19] ? in_data[94:76] : in_data[54:36];
  assign celloutsig_0_39z = celloutsig_0_33z ? { celloutsig_0_27z[10:8], celloutsig_0_16z } : { celloutsig_0_6z[1], celloutsig_0_37z, celloutsig_0_38z, celloutsig_0_37z };
  assign celloutsig_0_4z[3:1] = celloutsig_0_3z[6] ? in_data[36:34] : celloutsig_0_0z[9:7];
  assign celloutsig_0_48z = celloutsig_0_32z[5] ? { celloutsig_0_0z[12:4], celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_23z } : celloutsig_0_41z[13:0];
  assign celloutsig_0_49z = celloutsig_0_45z ? { celloutsig_0_48z[7:6], celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_27z, celloutsig_0_0z, celloutsig_0_24z, celloutsig_0_29z, celloutsig_0_40z } : { celloutsig_0_13z, _02_, _04_, _01_, celloutsig_0_31z, celloutsig_0_18z, celloutsig_0_46z, celloutsig_0_48z, celloutsig_0_20z, celloutsig_0_1z };
  assign { celloutsig_1_3z[7:2], celloutsig_1_3z[0] } = in_data[139] ? { in_data[127:124], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z } : { in_data[116:111], celloutsig_1_1z };
  assign celloutsig_0_10z = celloutsig_0_0z[10] ? { celloutsig_0_0z[17:11], 1'h1 } : { celloutsig_0_0z[16:11], 1'h0, celloutsig_0_0z[9] };
  assign celloutsig_0_32z = - { _08_[4:0], celloutsig_0_26z };
  assign celloutsig_0_41z = - { celloutsig_0_3z[8:2], celloutsig_0_10z, _05_, _09_[1:0], celloutsig_0_31z };
  assign celloutsig_1_19z = - celloutsig_1_17z[5:0];
  assign celloutsig_0_13z = - celloutsig_0_6z[11:8];
  assign celloutsig_0_1z = - in_data[90:79];
  assign celloutsig_0_27z = - { _09_[0], celloutsig_0_11z, celloutsig_0_19z, celloutsig_0_10z };
  assign celloutsig_0_33z = celloutsig_0_6z[11:1] !== { _04_, _01_, celloutsig_0_31z, celloutsig_0_4z[3:1], celloutsig_0_2z, celloutsig_0_23z, _05_, _09_[1:0] };
  assign celloutsig_0_45z = { celloutsig_0_4z[2], _08_, celloutsig_0_25z } !== { _06_[14:9], _00_, _06_[7:6], celloutsig_0_20z };
  assign celloutsig_0_75z = { celloutsig_0_3z[2:1], celloutsig_0_27z } !== { _06_[12:9], _00_, _06_[7:1], celloutsig_0_16z };
  assign celloutsig_1_7z = { celloutsig_1_3z[7:2], celloutsig_1_5z } !== _07_[7:1];
  assign celloutsig_1_10z = { celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_0z } !== { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_7z };
  assign celloutsig_0_12z = celloutsig_0_0z[15:4] !== { celloutsig_0_0z[10:4], celloutsig_0_4z[3:1], celloutsig_0_2z, celloutsig_0_9z };
  assign celloutsig_0_14z = { celloutsig_0_6z[9:7], celloutsig_0_5z } !== { in_data[25], celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_9z };
  assign celloutsig_0_23z = { _02_, _04_, celloutsig_0_2z, celloutsig_0_18z } !== { celloutsig_0_9z, _02_, _04_, _01_ };
  assign celloutsig_0_28z = { celloutsig_0_24z, celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_26z } !== { celloutsig_0_1z[4:2], celloutsig_0_24z };
  assign celloutsig_0_29z = _08_[7:2] !== celloutsig_0_0z[6:1];
  assign _06_[8] = _00_;
  assign _07_[8] = _03_;
  assign _09_[2] = _05_;
  assign celloutsig_0_4z[0] = celloutsig_0_2z;
  assign celloutsig_1_3z[1] = celloutsig_1_0z;
  assign { out_data[134:128], out_data[101:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_74z, celloutsig_0_75z };
endmodule
