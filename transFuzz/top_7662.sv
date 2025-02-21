/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [6:0] _00_;
  reg [17:0] _01_;
  reg [8:0] _02_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [9:0] celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [2:0] celloutsig_0_24z;
  wire [4:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [2:0] celloutsig_0_27z;
  wire [9:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [5:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [5:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_45z;
  wire [4:0] celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_54z;
  wire celloutsig_0_56z;
  wire [7:0] celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire [10:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [6:0] celloutsig_0_8z;
  wire [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [8:0] celloutsig_1_5z;
  wire [15:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [9:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = celloutsig_0_2z ? celloutsig_0_3z[0] : celloutsig_0_2z;
  assign celloutsig_0_56z = celloutsig_0_47z[1] ? celloutsig_0_26z : celloutsig_0_28z[2];
  assign celloutsig_1_7z = celloutsig_1_5z[1] ? celloutsig_1_1z : celloutsig_1_0z;
  assign celloutsig_0_1z = ~(in_data[10] & in_data[44]);
  assign celloutsig_0_39z = ~celloutsig_0_4z;
  assign celloutsig_0_5z = ~celloutsig_0_3z[3];
  assign celloutsig_0_22z = ~celloutsig_0_18z;
  assign celloutsig_0_32z = ~celloutsig_0_14z[5];
  assign celloutsig_0_33z = ~celloutsig_0_24z[2];
  assign celloutsig_0_45z = ~((celloutsig_0_15z[3] | celloutsig_0_31z) & celloutsig_0_31z);
  assign celloutsig_1_3z = ~((celloutsig_1_0z | celloutsig_1_1z) & celloutsig_1_2z);
  assign celloutsig_0_26z = ~((celloutsig_0_8z[6] | celloutsig_0_8z[0]) & celloutsig_0_17z);
  assign celloutsig_0_35z = ~((celloutsig_0_24z[2] | celloutsig_0_26z) & celloutsig_0_15z[0]);
  assign celloutsig_1_14z = celloutsig_1_3z | ~(celloutsig_1_10z);
  assign celloutsig_0_34z = celloutsig_0_1z | ~(celloutsig_0_31z);
  assign celloutsig_0_0z = in_data[66] ^ in_data[64];
  assign celloutsig_0_40z = celloutsig_0_18z ^ celloutsig_0_22z;
  assign celloutsig_1_2z = celloutsig_1_1z ^ celloutsig_1_0z;
  assign celloutsig_1_13z = celloutsig_1_3z ^ celloutsig_1_4z;
  assign celloutsig_0_11z = celloutsig_0_0z ^ celloutsig_0_7z;
  assign celloutsig_0_18z = celloutsig_0_15z[0] ^ celloutsig_0_6z[0];
  assign celloutsig_0_54z = ~(celloutsig_0_7z ^ celloutsig_0_35z);
  assign celloutsig_0_13z = ~(celloutsig_0_5z ^ celloutsig_0_10z);
  assign celloutsig_0_30z = ~(celloutsig_0_28z[5] ^ celloutsig_0_13z);
  always_ff @(posedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _00_ <= 7'h00;
    else _00_ <= celloutsig_1_9z[8:2];
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _01_ <= 18'h00000;
    else _01_ <= { in_data[181:166], celloutsig_1_2z, celloutsig_1_2z };
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _02_ <= 9'h000;
    else _02_ <= { in_data[64:57], celloutsig_0_11z };
  assign celloutsig_0_25z = celloutsig_0_3z[5:1] & { celloutsig_0_24z, celloutsig_0_21z, celloutsig_0_17z };
  assign celloutsig_0_27z = { celloutsig_0_25z[2:1], celloutsig_0_17z } & { celloutsig_0_14z[9:8], celloutsig_0_17z };
  assign celloutsig_0_28z = { celloutsig_0_6z[10:2], celloutsig_0_2z } & { celloutsig_0_27z[1:0], celloutsig_0_22z, celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_21z };
  assign celloutsig_1_18z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z } === { _00_[3], celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_1z = { in_data[191:188], celloutsig_1_0z, celloutsig_1_0z } >= in_data[170:165];
  assign celloutsig_0_2z = in_data[33:29] >= { in_data[88], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_4z = { in_data[161:157], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z } < in_data[118:108];
  assign celloutsig_0_12z = { celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_4z } < { celloutsig_0_6z[7:6], celloutsig_0_1z };
  assign celloutsig_0_38z = { celloutsig_0_9z[3:0], celloutsig_0_27z, celloutsig_0_12z, celloutsig_0_30z, celloutsig_0_24z, celloutsig_0_17z, celloutsig_0_32z } !== { celloutsig_0_15z[1:0], celloutsig_0_14z, celloutsig_0_33z, celloutsig_0_35z };
  assign celloutsig_1_10z = celloutsig_1_9z[8:3] !== in_data[165:160];
  assign celloutsig_1_19z = _01_[11:8] !== { celloutsig_1_14z, celloutsig_1_14z, celloutsig_1_10z, celloutsig_1_13z };
  assign celloutsig_0_51z = | { celloutsig_0_8z[6:5], celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_45z, celloutsig_0_42z };
  assign celloutsig_1_0z = | in_data[150:145];
  assign celloutsig_0_10z = | celloutsig_0_3z[5:1];
  assign celloutsig_0_21z = | { in_data[31:29], celloutsig_0_13z };
  assign celloutsig_0_19z = | { celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_4z };
  assign celloutsig_0_42z = ~^ { celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_41z, celloutsig_0_40z, celloutsig_0_35z, celloutsig_0_15z, celloutsig_0_30z, celloutsig_0_39z, celloutsig_0_34z, celloutsig_0_40z, celloutsig_0_25z, celloutsig_0_38z, celloutsig_0_41z };
  assign celloutsig_0_7z = ~^ { in_data[24:18], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_17z = ~^ { celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_6z };
  assign celloutsig_0_31z = ~^ { celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_25z, celloutsig_0_17z };
  assign celloutsig_1_9z = { celloutsig_1_5z[8:3], celloutsig_1_2z, celloutsig_1_13z, celloutsig_1_13z, celloutsig_1_2z } << { celloutsig_1_6z[6:0], celloutsig_1_7z, celloutsig_1_13z, celloutsig_1_0z };
  assign celloutsig_0_8z = celloutsig_0_6z[7:1] >> { in_data[54:53], celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_16z = { celloutsig_0_8z[1:0], celloutsig_0_7z } >> celloutsig_0_9z[2:0];
  assign celloutsig_0_24z = { celloutsig_0_16z[1:0], celloutsig_0_4z } >> in_data[57:55];
  assign celloutsig_0_41z = celloutsig_0_14z[9:4] <<< { celloutsig_0_20z[4], celloutsig_0_9z };
  assign celloutsig_0_47z = { celloutsig_0_8z[6:3], celloutsig_0_2z } <<< { celloutsig_0_20z[3], celloutsig_0_17z, celloutsig_0_13z, celloutsig_0_38z, celloutsig_0_19z };
  assign celloutsig_0_57z = { celloutsig_0_14z[7:1], celloutsig_0_42z } <<< { _02_[6:1], celloutsig_0_54z, celloutsig_0_51z };
  assign celloutsig_1_5z = { celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z } <<< { in_data[149:145], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_1_6z = { in_data[171:158], celloutsig_1_4z, celloutsig_1_2z } <<< { celloutsig_1_5z[6:1], celloutsig_1_5z, celloutsig_1_0z };
  assign celloutsig_0_6z = in_data[51:41] <<< { in_data[74:67], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_9z = { celloutsig_0_8z[3], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_4z } <<< { celloutsig_0_8z[5:3], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_15z = { in_data[11:8], celloutsig_0_1z } <<< { celloutsig_0_14z[9:8], celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_5z };
  assign celloutsig_0_3z = { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_0z } - { in_data[20:17], celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_0_14z = { celloutsig_0_6z[7:0], celloutsig_0_0z, celloutsig_0_11z } - { celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_12z };
  assign celloutsig_0_20z = { celloutsig_0_8z[5:2], celloutsig_0_2z } - celloutsig_0_15z;
  assign { out_data[128], out_data[96], out_data[32], out_data[7:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_56z, celloutsig_0_57z };
endmodule
