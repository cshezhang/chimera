/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [10:0] _02_;
  wire [2:0] celloutsig_0_0z;
  wire [20:0] celloutsig_0_10z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_2z;
  wire celloutsig_0_33z;
  wire celloutsig_0_36z;
  wire [11:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [7:0] celloutsig_0_7z;
  wire [7:0] celloutsig_0_8z;
  wire [29:0] celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire celloutsig_1_13z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [3:0] celloutsig_1_1z;
  wire [24:0] celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
  wire [15:0] celloutsig_1_5z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_6z = !(_00_ ? celloutsig_0_5z : celloutsig_0_3z[2]);
  assign celloutsig_1_19z = ~(celloutsig_1_1z[2] | celloutsig_1_18z[2]);
  assign celloutsig_0_13z = ~((celloutsig_0_5z | celloutsig_0_4z) & in_data[26]);
  assign celloutsig_0_33z = ~((celloutsig_0_9z[6] | _01_) & (celloutsig_0_14z | celloutsig_0_8z[3]));
  assign celloutsig_0_2z = ~((_00_ | in_data[20]) & (in_data[94] | celloutsig_0_0z[2]));
  assign celloutsig_1_8z = celloutsig_1_4z[0] | celloutsig_1_3z[8];
  reg [6:0] _09_;
  always_ff @(posedge celloutsig_1_18z[0], posedge clkin_data[32])
    if (clkin_data[32]) _09_ <= 7'h00;
    else _09_ <= { celloutsig_0_8z[5:0], celloutsig_0_4z };
  assign out_data[6:0] = _09_;
  reg [10:0] _10_;
  always_ff @(negedge celloutsig_1_18z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _10_ <= 11'h000;
    else _10_ <= { in_data[55:51], celloutsig_0_0z, celloutsig_0_0z };
  assign { _02_[10:8], _01_, _02_[6:3], _00_, _02_[1:0] } = _10_;
  assign celloutsig_1_4z = celloutsig_1_0z[2:0] & celloutsig_1_0z[4:2];
  assign celloutsig_1_1z = celloutsig_1_0z[5:2] / { 1'h1, celloutsig_1_0z[3:1] };
  assign celloutsig_1_13z = celloutsig_1_5z[6:3] > { celloutsig_1_5z[8:6], celloutsig_1_8z };
  assign celloutsig_1_9z = celloutsig_1_1z[1] & ~(celloutsig_1_1z[0]);
  assign celloutsig_0_7z[7:1] = celloutsig_0_4z ? { celloutsig_0_3z[10:6], celloutsig_0_6z, celloutsig_0_6z } : celloutsig_0_3z[7:1];
  assign celloutsig_0_8z = celloutsig_0_7z[3] ? { celloutsig_0_7z[7:4], 1'h1, celloutsig_0_7z[2:1], celloutsig_0_6z } : { in_data[30:25], celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_4z = { _02_[5:3], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z } != in_data[49:39];
  assign celloutsig_0_9z = - { _02_[5], _02_[10:8], _01_, _02_[6:3], _00_, _02_[1:0], celloutsig_0_7z[7:1], celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_8z };
  assign celloutsig_0_10z = - { celloutsig_0_3z[10:0], celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_5z };
  assign celloutsig_0_0z = in_data[11:9] | in_data[7:5];
  assign celloutsig_0_5z = | in_data[37:32];
  assign celloutsig_0_14z = celloutsig_0_9z[5] & celloutsig_0_10z[0];
  assign celloutsig_1_0z = in_data[144:139] >> in_data[133:128];
  assign celloutsig_0_3z = { in_data[28:21], celloutsig_0_0z, celloutsig_0_2z } >> in_data[68:57];
  assign celloutsig_1_18z = { celloutsig_1_4z[2:1], celloutsig_1_13z, celloutsig_1_9z } >> { celloutsig_1_3z[13:11], celloutsig_1_8z };
  assign celloutsig_1_3z = in_data[128:104] - { in_data[184:164], celloutsig_1_1z };
  assign celloutsig_1_5z = { celloutsig_1_3z[18:6], celloutsig_1_4z } ~^ celloutsig_1_3z[19:4];
  assign celloutsig_0_36z = ~((celloutsig_0_13z & celloutsig_0_33z) | (celloutsig_0_14z & celloutsig_0_4z));
  assign { _02_[7], _02_[2] } = { _01_, _00_ };
  assign celloutsig_0_7z[0] = celloutsig_0_6z;
  assign { out_data[131:128], out_data[96], out_data[32] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_36z };
endmodule
