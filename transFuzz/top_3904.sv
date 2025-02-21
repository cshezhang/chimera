/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [4:0] _03_;
  reg [5:0] _04_;
  wire [7:0] _05_;
  wire [5:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [5:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [4:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [8:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [2:0] celloutsig_0_31z;
  wire [3:0] celloutsig_0_32z;
  wire celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire celloutsig_0_48z;
  wire [18:0] celloutsig_0_4z;
  wire [3:0] celloutsig_0_5z;
  wire [3:0] celloutsig_0_64z;
  wire celloutsig_0_65z;
  wire celloutsig_0_6z;
  wire [6:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire [4:0] celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire [11:0] celloutsig_1_11z;
  wire [34:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_65z = ~(celloutsig_0_32z[0] & celloutsig_0_32z[0]);
  assign celloutsig_1_4z = ~(celloutsig_1_0z[2] & celloutsig_1_3z);
  assign celloutsig_0_8z = ~(celloutsig_0_7z[2] & in_data[20]);
  assign celloutsig_1_16z = ~(celloutsig_1_7z & celloutsig_1_8z);
  assign celloutsig_0_24z = ~(celloutsig_0_20z & celloutsig_0_9z[1]);
  assign celloutsig_1_2z = ~(in_data[174] ^ in_data[144]);
  assign celloutsig_1_6z = ~(celloutsig_1_3z ^ celloutsig_1_5z);
  assign celloutsig_0_2z = ~(celloutsig_0_1z[3] ^ celloutsig_0_0z[5]);
  assign celloutsig_0_26z = ~(celloutsig_0_24z ^ celloutsig_0_0z[3]);
  reg [4:0] _15_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[32])
    if (clkin_data[32]) _15_ <= 5'h00;
    else _15_ <= { celloutsig_0_5z[3:2], celloutsig_0_31z };
  assign { _03_[4], _01_, _00_, _03_[1:0] } = _15_;
  always_ff @(posedge celloutsig_1_19z, negedge clkin_data[64])
    if (!clkin_data[64]) _04_ <= 6'h00;
    else _04_ <= { celloutsig_0_0z[5:1], celloutsig_0_2z };
  reg [7:0] _17_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _17_ <= 8'h00;
    else _17_ <= celloutsig_0_1z;
  assign { _05_[7:1], _02_ } = _17_;
  assign celloutsig_0_30z = { celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_2z } >= { celloutsig_0_29z, celloutsig_0_28z[8:7], celloutsig_0_25z, celloutsig_0_28z[5:0] };
  assign celloutsig_1_3z = { in_data[112:110], 1'h1 } >= in_data[120:117];
  assign celloutsig_1_13z = { celloutsig_1_11z[4:2], celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_4z } >= celloutsig_1_11z[7:0];
  assign celloutsig_1_17z = { celloutsig_1_0z[1:0], celloutsig_1_2z, celloutsig_1_13z } >= celloutsig_1_12z[15:12];
  assign celloutsig_1_18z = { celloutsig_1_12z[12], celloutsig_1_0z[3], celloutsig_1_12z[10:9], celloutsig_1_16z, celloutsig_1_10z[2], celloutsig_1_14z[1:0], celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_2z, 1'h1 } >= { 1'h1, celloutsig_1_6z, 1'h1, celloutsig_1_10z[2], celloutsig_1_14z[1:0], celloutsig_1_6z, 1'h1, celloutsig_1_17z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_5z };
  assign celloutsig_0_18z = { _04_[1:0], celloutsig_0_6z, celloutsig_0_15z } >= { celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_13z };
  assign celloutsig_0_19z = { in_data[44], celloutsig_0_2z, celloutsig_0_18z } >= celloutsig_0_0z[4:2];
  assign celloutsig_0_25z = { celloutsig_0_0z[4:3], celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_5z } >= { celloutsig_0_4z[8:4], celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_9z, _05_[7:1], _02_ };
  assign celloutsig_0_42z = { celloutsig_0_32z[2:0], celloutsig_0_6z, celloutsig_0_11z } <= { _05_[7:1], _02_, celloutsig_0_14z, 1'h1 };
  assign celloutsig_1_5z = { celloutsig_1_0z[4:1], celloutsig_1_0z } <= { celloutsig_1_2z, 3'h7, celloutsig_1_0z };
  assign celloutsig_1_19z = { celloutsig_1_10z[2], celloutsig_1_14z[1:0], celloutsig_1_5z, celloutsig_1_4z } <= { celloutsig_1_14z[1:0], celloutsig_1_10z[2], celloutsig_1_14z[1:0] };
  assign celloutsig_0_29z = celloutsig_0_13z[4:2] < in_data[6:4];
  assign celloutsig_0_6z = { celloutsig_0_4z[10:4], celloutsig_0_2z } < { celloutsig_0_0z[3], celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_1_9z = { celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_0z } < { in_data[167], celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_8z };
  assign celloutsig_0_14z = { celloutsig_0_4z[8:2], celloutsig_0_2z } < { celloutsig_0_7z[6:1], celloutsig_0_8z, celloutsig_0_12z };
  assign celloutsig_1_0z = in_data[153] ? in_data[160:156] : in_data[175:171];
  assign celloutsig_1_10z = celloutsig_1_6z ? { celloutsig_1_8z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_7z } : { celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_13z = celloutsig_0_2z ? { celloutsig_0_7z[4:1], 1'h1 } : celloutsig_0_1z[4:0];
  assign celloutsig_0_15z = celloutsig_0_9z[1] ? { celloutsig_0_13z[2], celloutsig_0_5z } : celloutsig_0_4z[17:13];
  assign { celloutsig_0_28z[8:7], celloutsig_0_28z[5:0] } = celloutsig_0_1z[5] ? { celloutsig_0_5z[1:0], celloutsig_0_13z, celloutsig_0_10z } : { in_data[54], celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_0_0z = in_data[65:60] | in_data[88:83];
  assign celloutsig_0_32z = { celloutsig_0_30z, celloutsig_0_24z, celloutsig_0_26z, celloutsig_0_25z } | { celloutsig_0_7z[4:3], celloutsig_0_26z, celloutsig_0_12z };
  assign celloutsig_0_4z = { in_data[73:61], celloutsig_0_0z } | { in_data[85:84], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_64z = { celloutsig_0_14z, celloutsig_0_42z, celloutsig_0_24z, celloutsig_0_48z } | { _01_, _00_, _03_[1:0] };
  assign celloutsig_0_11z = { in_data[11:7], celloutsig_0_3z } | { celloutsig_0_1z[7:6], celloutsig_0_9z, celloutsig_0_8z };
  assign celloutsig_0_31z = { celloutsig_0_15z[2:1], celloutsig_0_10z } ~^ celloutsig_0_5z[3:1];
  assign celloutsig_0_5z = { celloutsig_0_1z[7:6], celloutsig_0_2z, celloutsig_0_3z } ~^ celloutsig_0_0z[5:2];
  assign celloutsig_0_7z = in_data[12:6] ~^ { in_data[92:88], celloutsig_0_6z, celloutsig_0_6z };
  assign celloutsig_1_11z = { in_data[127:122], celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_3z } ~^ { celloutsig_1_10z[5:1], celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_2z };
  assign celloutsig_0_9z = celloutsig_0_0z[4:2] ~^ celloutsig_0_4z[3:1];
  assign celloutsig_0_1z = { celloutsig_0_0z[4:3], celloutsig_0_0z } ~^ in_data[39:32];
  assign celloutsig_0_3z = ~((celloutsig_0_1z[4] & celloutsig_0_0z[2]) | in_data[10]);
  assign celloutsig_0_48z = ~((celloutsig_0_24z & celloutsig_0_20z) | celloutsig_0_25z);
  assign celloutsig_1_7z = ~((celloutsig_1_4z & 1'h1) | celloutsig_1_2z);
  assign celloutsig_1_8z = ~((celloutsig_1_3z & celloutsig_1_0z[1]) | 1'h1);
  assign celloutsig_0_10z = ~((celloutsig_0_4z[4] & celloutsig_0_6z) | celloutsig_0_3z);
  assign celloutsig_0_12z = ~((celloutsig_0_3z & celloutsig_0_10z) | celloutsig_0_0z[4]);
  assign celloutsig_0_20z = ~((celloutsig_0_0z[0] & celloutsig_0_1z[4]) | celloutsig_0_15z[4]);
  assign { celloutsig_1_12z[32], celloutsig_1_12z[5], celloutsig_1_12z[26], celloutsig_1_12z[31], celloutsig_1_12z[4], celloutsig_1_12z[30], celloutsig_1_12z[3], celloutsig_1_12z[24:23], celloutsig_1_12z[2], celloutsig_1_12z[29], celloutsig_1_12z[22], celloutsig_1_12z[1], celloutsig_1_12z[28], celloutsig_1_12z[21], celloutsig_1_12z[27], celloutsig_1_12z[13], celloutsig_1_12z[7], celloutsig_1_12z[20], celloutsig_1_12z[18], celloutsig_1_12z[12], celloutsig_1_12z[34], celloutsig_1_12z[17], celloutsig_1_12z[33], celloutsig_1_12z[16], celloutsig_1_12z[10], celloutsig_1_12z[15], celloutsig_1_12z[9], celloutsig_1_12z[14], celloutsig_1_12z[8] } = { celloutsig_1_10z[5], celloutsig_1_10z[5], celloutsig_1_10z[5:4], celloutsig_1_10z[4:3], celloutsig_1_10z[3], celloutsig_1_10z[3:2], celloutsig_1_10z[2], celloutsig_1_10z[2:1], celloutsig_1_10z[1], celloutsig_1_10z[1:0], celloutsig_1_10z[0], celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_0z[4], celloutsig_1_0z[4:3], celloutsig_1_0z[3:2], celloutsig_1_0z[2], celloutsig_1_0z[2:1], celloutsig_1_0z[1:0], celloutsig_1_0z[0] } ~^ { celloutsig_1_11z[9], celloutsig_1_10z[4], celloutsig_1_2z, celloutsig_1_11z[8], celloutsig_1_10z[3], celloutsig_1_11z[7], celloutsig_1_10z[2], celloutsig_1_4z, celloutsig_1_11z[11], celloutsig_1_10z[1], celloutsig_1_3z, celloutsig_1_11z[10], celloutsig_1_10z[0], celloutsig_1_9z, celloutsig_1_11z[9], celloutsig_1_9z, celloutsig_1_11z[1], celloutsig_1_2z, celloutsig_1_11z[8], celloutsig_1_11z[6], celloutsig_1_11z[0], celloutsig_1_11z[11], celloutsig_1_11z[5], celloutsig_1_11z[10], celloutsig_1_11z[4], celloutsig_1_7z, celloutsig_1_11z[3], celloutsig_1_6z, celloutsig_1_11z[2], celloutsig_1_8z };
  assign celloutsig_1_14z[1:0] = { celloutsig_1_13z, celloutsig_1_8z } ~^ { celloutsig_1_10z[1], celloutsig_1_9z };
  assign _03_[3:2] = { _01_, _00_ };
  assign _05_[0] = _02_;
  assign celloutsig_0_28z[6] = celloutsig_0_25z;
  assign { celloutsig_1_12z[25], celloutsig_1_12z[19], celloutsig_1_12z[11], celloutsig_1_12z[6], celloutsig_1_12z[0] } = { celloutsig_1_10z[4], celloutsig_1_11z[7], celloutsig_1_0z[3], celloutsig_1_10z[5], celloutsig_1_12z[27] };
  assign celloutsig_1_14z[2] = celloutsig_1_10z[2];
  assign { out_data[128], out_data[96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_64z, celloutsig_0_65z };
endmodule
