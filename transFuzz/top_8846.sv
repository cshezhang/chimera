/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [7:0] _00_;
  reg [3:0] _01_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [2:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [22:0] celloutsig_0_20z;
  wire [2:0] celloutsig_0_21z;
  wire celloutsig_0_26z;
  wire [2:0] celloutsig_0_27z;
  wire [5:0] celloutsig_0_28z;
  wire [9:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire [5:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [2:0] celloutsig_0_39z;
  wire [14:0] celloutsig_0_3z;
  wire [6:0] celloutsig_0_43z;
  wire [13:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire [20:0] celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire [13:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_5z;
  wire [7:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_35z = ~(celloutsig_0_27z[0] & celloutsig_0_8z);
  assign celloutsig_0_13z = ~(in_data[31] & celloutsig_0_5z);
  assign celloutsig_0_2z = ~(celloutsig_0_1z & celloutsig_0_1z);
  assign celloutsig_1_0z = !(in_data[114] ? in_data[151] : in_data[185]);
  assign celloutsig_0_17z = ~(celloutsig_0_5z | celloutsig_0_7z);
  assign celloutsig_1_8z = ~((celloutsig_1_1z | celloutsig_1_7z[6]) & (celloutsig_1_2z[4] | celloutsig_1_0z));
  assign celloutsig_1_1z = ~(celloutsig_1_0z ^ in_data[173]);
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _00_ <= 8'h00;
    else _00_ <= { celloutsig_1_0z, celloutsig_1_2z[4:1], celloutsig_1_2z[2], celloutsig_1_1z, celloutsig_1_0z };
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _01_ <= 4'h0;
    else _01_ <= { celloutsig_0_7z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_1_7z = in_data[184:177] & { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_1_11z = celloutsig_1_7z[5:2] & { celloutsig_1_7z[7:5], celloutsig_1_3z };
  assign celloutsig_0_3z = { in_data[16:9], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z } / { 1'h1, in_data[76:65], celloutsig_0_2z, in_data[0] };
  assign celloutsig_0_45z = { celloutsig_0_4z, celloutsig_0_29z[9:8], 1'h1, celloutsig_0_29z[6:0], celloutsig_0_2z, celloutsig_0_37z, celloutsig_0_11z } / { 1'h1, celloutsig_0_43z, _01_, celloutsig_0_11z, celloutsig_0_0z };
  assign celloutsig_0_6z = { celloutsig_0_3z[5:3], celloutsig_0_4z, celloutsig_0_4z } && celloutsig_0_3z[8:4];
  assign celloutsig_0_16z = { in_data[23:22], celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_2z } && { in_data[61:47], celloutsig_0_7z };
  assign celloutsig_0_31z = { in_data[65], celloutsig_0_2z, celloutsig_0_3z } && celloutsig_0_20z[18:2];
  assign celloutsig_1_9z = ! in_data[115:112];
  assign celloutsig_0_7z = { in_data[44:34], celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z } || { in_data[95:88], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_0_14z = { celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_6z } || { _01_[2], celloutsig_0_2z, celloutsig_0_6z };
  assign celloutsig_0_37z = celloutsig_0_27z[0] & ~(celloutsig_0_35z);
  assign celloutsig_0_4z = celloutsig_0_1z & ~(celloutsig_0_0z);
  assign celloutsig_1_5z = _00_[7] & ~(celloutsig_1_0z);
  assign celloutsig_0_26z = celloutsig_0_16z & ~(in_data[42]);
  assign celloutsig_1_3z = { in_data[123:118], celloutsig_1_1z, celloutsig_1_1z } != { in_data[153:151], celloutsig_1_2z[4:1], celloutsig_1_2z[2] };
  assign celloutsig_0_39z = - celloutsig_0_27z;
  assign celloutsig_1_18z = - { celloutsig_1_10z[18:16], celloutsig_1_10z[17], celloutsig_1_10z[14], celloutsig_1_10z[7:1], celloutsig_1_10z[20], celloutsig_1_8z };
  assign celloutsig_0_11z = in_data[84:70] !== { in_data[20:9], celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_1z = in_data[28:20] !== { in_data[44:40], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_18z = { in_data[38:27], celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_1z } !== { celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_2z };
  assign celloutsig_0_20z = ~ { in_data[59:44], celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_16z };
  assign celloutsig_0_0z = in_data[23] & in_data[92];
  assign celloutsig_0_46z = celloutsig_0_45z[0] & celloutsig_0_37z;
  assign celloutsig_0_5z = celloutsig_0_2z & celloutsig_0_4z;
  assign celloutsig_0_10z = celloutsig_0_1z & celloutsig_0_2z;
  assign celloutsig_0_19z = celloutsig_0_10z & celloutsig_0_14z;
  assign celloutsig_0_32z = celloutsig_0_3z[4] & celloutsig_0_0z;
  assign celloutsig_0_47z = ^ { celloutsig_0_20z[16:14], celloutsig_0_11z, _01_, celloutsig_0_39z, _01_, celloutsig_0_19z, celloutsig_0_31z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_36z, celloutsig_0_15z, celloutsig_0_3z, celloutsig_0_32z, celloutsig_0_2z };
  assign celloutsig_1_19z = ^ { in_data[189], celloutsig_1_9z, celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_9z };
  assign celloutsig_0_8z = ^ celloutsig_0_3z[14:8];
  assign celloutsig_0_15z = { celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_13z } >> { celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_8z };
  assign celloutsig_0_21z = in_data[44:42] >> celloutsig_0_15z;
  assign celloutsig_0_27z = { 2'h0, celloutsig_0_14z } >>> { celloutsig_0_19z, celloutsig_0_10z, 1'h1 };
  assign celloutsig_0_43z = { celloutsig_0_3z[2:0], celloutsig_0_21z, celloutsig_0_18z } - { celloutsig_0_28z, celloutsig_0_14z };
  assign celloutsig_0_36z = celloutsig_0_28z ~^ { celloutsig_0_7z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_21z };
  assign celloutsig_0_28z = { celloutsig_0_20z[6:3], celloutsig_0_17z, celloutsig_0_0z } ~^ { celloutsig_0_16z, celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_14z };
  assign { celloutsig_0_29z[9:8], celloutsig_0_29z[6:0] } = { celloutsig_0_20z[19:18], celloutsig_0_20z[16:10] } | { celloutsig_0_13z, celloutsig_0_26z, celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_6z };
  assign { celloutsig_1_2z[2:1], celloutsig_1_2z[4:3] } = ~ { celloutsig_1_1z, celloutsig_1_0z, in_data[188:187] };
  assign { celloutsig_1_10z[14], celloutsig_1_10z[7:1], celloutsig_1_10z[20], celloutsig_1_10z[17:16], celloutsig_1_10z[19:18] } = ~ { celloutsig_1_8z, _00_, celloutsig_1_2z[2:1], celloutsig_1_2z[4:3] };
  assign celloutsig_0_29z[7] = 1'h1;
  assign { celloutsig_1_10z[15], celloutsig_1_10z[13:8], celloutsig_1_10z[0] } = { celloutsig_1_10z[17], celloutsig_1_10z[19:16], celloutsig_1_10z[17], celloutsig_1_10z[14], celloutsig_1_10z[20] };
  assign celloutsig_1_2z[0] = celloutsig_1_2z[2];
  assign { out_data[141:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_46z, celloutsig_0_47z };
endmodule
