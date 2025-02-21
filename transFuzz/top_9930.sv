/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [4:0] _00_;
  wire [4:0] celloutsig_0_0z;
  wire [10:0] celloutsig_0_10z;
  wire [3:0] celloutsig_0_11z;
  wire [7:0] celloutsig_0_12z;
  wire [7:0] celloutsig_0_13z;
  wire [9:0] celloutsig_0_14z;
  wire [2:0] celloutsig_0_15z;
  wire [8:0] celloutsig_0_16z;
  wire [12:0] celloutsig_0_17z;
  wire [3:0] celloutsig_0_18z;
  wire [7:0] celloutsig_0_19z;
  wire [2:0] celloutsig_0_1z;
  wire [4:0] celloutsig_0_21z;
  wire [5:0] celloutsig_0_26z;
  wire [23:0] celloutsig_0_27z;
  wire [10:0] celloutsig_0_2z;
  wire [3:0] celloutsig_0_31z;
  wire [4:0] celloutsig_0_32z;
  wire [3:0] celloutsig_0_3z;
  wire [8:0] celloutsig_0_4z;
  wire [21:0] celloutsig_0_5z;
  wire [26:0] celloutsig_0_6z;
  wire [22:0] celloutsig_0_7z;
  wire [3:0] celloutsig_0_8z;
  wire [25:0] celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire [3:0] celloutsig_1_12z;
  reg [22:0] celloutsig_1_16z;
  wire [2:0] celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  wire [15:0] celloutsig_1_1z;
  wire [11:0] celloutsig_1_2z;
  wire [25:0] celloutsig_1_3z;
  wire [26:0] celloutsig_1_4z;
  wire [2:0] celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _00_ <= 5'h00;
    else _00_ <= celloutsig_0_17z[11:7];
  assign celloutsig_0_0z = in_data[82:78] * in_data[47:43];
  assign celloutsig_0_3z = celloutsig_0_2z[3:0] * in_data[34:31];
  assign celloutsig_1_0z = in_data[115:112] * in_data[122:119];
  assign celloutsig_1_1z = in_data[181:166] * { in_data[174:171], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_2z = celloutsig_1_1z[13:2] * { celloutsig_1_1z[8:1], celloutsig_1_0z };
  assign celloutsig_1_3z = { celloutsig_1_2z[11:2], celloutsig_1_0z, celloutsig_1_2z } * { in_data[144:131], celloutsig_1_2z };
  assign celloutsig_1_4z = { celloutsig_1_2z[11:1], celloutsig_1_1z } * { in_data[129], celloutsig_1_3z };
  assign celloutsig_1_8z = celloutsig_1_1z[3:1] * celloutsig_1_0z[3:1];
  assign celloutsig_0_4z = { celloutsig_0_0z, celloutsig_0_3z } * in_data[74:66];
  assign celloutsig_1_12z = celloutsig_1_4z[7:4] * celloutsig_1_4z[13:10];
  assign celloutsig_1_18z = celloutsig_1_16z[22:20] * celloutsig_1_8z;
  assign celloutsig_0_5z = { celloutsig_0_0z[3:1], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_0z } * { celloutsig_0_0z[4:2], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_1_19z = celloutsig_1_12z[3:1] * celloutsig_1_3z[15:13];
  assign celloutsig_0_6z = { celloutsig_0_4z[5:4], celloutsig_0_1z, celloutsig_0_5z } * { in_data[92:69], celloutsig_0_1z };
  assign celloutsig_0_7z = celloutsig_0_6z[26:4] * { celloutsig_0_5z[16:2], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_8z = in_data[88:85] * celloutsig_0_7z[5:2];
  assign celloutsig_0_9z = { celloutsig_0_4z[6:0], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z } * { in_data[62:48], celloutsig_0_2z };
  assign celloutsig_0_10z = { celloutsig_0_0z[1:0], celloutsig_0_4z } * { in_data[49:42], celloutsig_0_1z };
  assign celloutsig_0_11z = { celloutsig_0_3z[3], celloutsig_0_1z } * celloutsig_0_4z[8:5];
  assign celloutsig_0_12z = { celloutsig_0_0z[4:1], celloutsig_0_3z } * in_data[84:77];
  assign celloutsig_0_1z = in_data[52:50] * in_data[64:62];
  assign celloutsig_0_13z = celloutsig_0_12z * celloutsig_0_9z[21:14];
  assign celloutsig_0_14z = { celloutsig_0_2z[1:0], celloutsig_0_13z } * in_data[58:49];
  assign celloutsig_0_15z = celloutsig_0_12z[4:2] * celloutsig_0_7z[2:0];
  assign celloutsig_0_16z = { celloutsig_0_3z[1], celloutsig_0_12z } * { celloutsig_0_10z[5], celloutsig_0_3z, celloutsig_0_11z };
  assign celloutsig_0_17z = { in_data[41:40], celloutsig_0_2z } * { celloutsig_0_9z[5:3], celloutsig_0_14z };
  assign celloutsig_0_18z = celloutsig_0_2z[8:5] * celloutsig_0_16z[3:0];
  assign celloutsig_0_19z = { in_data[81], celloutsig_0_1z, celloutsig_0_18z } * celloutsig_0_5z[19:12];
  assign celloutsig_0_21z = { celloutsig_0_10z[7], celloutsig_0_8z } * { celloutsig_0_14z[6:5], celloutsig_0_15z };
  assign celloutsig_0_2z = { in_data[90:89], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z } * in_data[84:74];
  assign celloutsig_0_26z = { celloutsig_0_16z[0], _00_ } * { celloutsig_0_2z[4], celloutsig_0_0z };
  assign celloutsig_0_27z = { celloutsig_0_19z[7:3], celloutsig_0_2z, celloutsig_0_21z, celloutsig_0_1z } * { celloutsig_0_26z[1], celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_3z };
  assign celloutsig_0_31z = _00_[4:1] * celloutsig_0_17z[3:0];
  assign celloutsig_0_32z = celloutsig_0_27z[5:1] * { celloutsig_0_4z[3], celloutsig_0_8z };
  always_latch
    if (clkin_data[64]) celloutsig_1_16z = 23'h000000;
    else if (!clkin_data[96]) celloutsig_1_16z = { celloutsig_1_2z[10:4], celloutsig_1_1z };
  assign { out_data[130:128], out_data[98:96], out_data[35:32], out_data[4:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_31z, celloutsig_0_32z };
endmodule
