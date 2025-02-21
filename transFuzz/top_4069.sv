/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [20:0] _01_;
  wire celloutsig_0_10z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_1z;
  wire celloutsig_0_2z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [5:0] celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [28:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_10z = !(celloutsig_0_6z ? in_data[95] : celloutsig_0_4z);
  assign celloutsig_0_15z = !(celloutsig_0_10z ? celloutsig_0_5z : celloutsig_0_14z);
  assign celloutsig_1_0z = !(in_data[142] ? in_data[140] : in_data[134]);
  assign celloutsig_1_18z = ~((celloutsig_1_14z[5] | celloutsig_1_14z[4]) & (celloutsig_1_8z | celloutsig_1_2z));
  assign celloutsig_0_1z = ~((in_data[90] | in_data[15]) & (in_data[12] | _00_));
  assign celloutsig_1_1z = ~((in_data[125] | celloutsig_1_0z) & (celloutsig_1_0z | celloutsig_1_0z));
  assign celloutsig_1_2z = ~((in_data[142] | celloutsig_1_1z) & (in_data[142] | celloutsig_1_0z));
  assign celloutsig_1_9z = ~((celloutsig_1_1z | celloutsig_1_6z) & (celloutsig_1_0z | celloutsig_1_2z));
  reg [20:0] _10_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[0])
    if (clkin_data[0]) _10_ <= 21'h000000;
    else _10_ <= in_data[70:50];
  assign { _00_, _01_[19:0] } = _10_;
  assign celloutsig_0_2z = { in_data[30:28], celloutsig_0_1z, celloutsig_0_1z } > _01_[13:9];
  assign celloutsig_0_3z = _01_[14:9] > { in_data[87:84], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_1_5z = { in_data[168:136], celloutsig_1_1z, celloutsig_1_1z } > { in_data[141:110], celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_12z = { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_10z } > { celloutsig_1_7z[8:7], celloutsig_1_8z, celloutsig_1_6z };
  assign celloutsig_0_4z = in_data[7:4] || { _01_[15:14], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_6z = { in_data[18:11], _00_, _01_[19:0], celloutsig_0_5z } || { in_data[12:10], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_4z, _00_, _01_[19:0], celloutsig_0_1z };
  assign celloutsig_1_6z = { in_data[117:97], celloutsig_1_5z, celloutsig_1_1z } || in_data[159:137];
  assign celloutsig_1_10z = { celloutsig_1_7z[28:3], celloutsig_1_4z } || { in_data[174:160], celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_4z };
  assign celloutsig_1_13z = celloutsig_1_8z & ~(in_data[170]);
  assign celloutsig_1_19z = celloutsig_1_18z & ~(celloutsig_1_6z);
  assign celloutsig_0_5z = celloutsig_0_2z & ~(celloutsig_0_4z);
  assign celloutsig_0_7z = in_data[67] & ~(in_data[57]);
  assign celloutsig_0_14z = celloutsig_0_7z & ~(_00_);
  assign celloutsig_1_3z = celloutsig_1_0z & ~(celloutsig_1_0z);
  assign celloutsig_1_4z = celloutsig_1_3z & ~(celloutsig_1_2z);
  assign celloutsig_1_8z = celloutsig_1_6z & ~(celloutsig_1_4z);
  assign celloutsig_1_14z = - { in_data[128], celloutsig_1_12z, celloutsig_1_9z, celloutsig_1_13z, celloutsig_1_2z, celloutsig_1_13z };
  assign celloutsig_1_7z = - { in_data[156:129], celloutsig_1_2z };
  assign _01_[20] = _00_;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_14z, celloutsig_0_15z };
endmodule
