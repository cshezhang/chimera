/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [2:0] _00_;
  wire [5:0] _01_;
  wire [16:0] celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  wire [4:0] celloutsig_0_11z;
  wire [15:0] celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [3:0] celloutsig_0_15z;
  wire [13:0] celloutsig_0_16z;
  wire [10:0] celloutsig_0_17z;
  wire [13:0] celloutsig_0_18z;
  wire [8:0] celloutsig_0_19z;
  wire [21:0] celloutsig_0_1z;
  wire [6:0] celloutsig_0_20z;
  wire [6:0] celloutsig_0_21z;
  wire [14:0] celloutsig_0_22z;
  wire celloutsig_0_25z;
  wire [10:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [2:0] celloutsig_0_31z;
  wire [2:0] celloutsig_0_32z;
  wire [11:0] celloutsig_0_35z;
  wire [3:0] celloutsig_0_36z;
  wire [2:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [11:0] celloutsig_0_40z;
  wire celloutsig_0_42z;
  wire [2:0] celloutsig_0_43z;
  wire [6:0] celloutsig_0_4z;
  wire [21:0] celloutsig_0_51z;
  wire [3:0] celloutsig_0_54z;
  wire [8:0] celloutsig_0_5z;
  wire [11:0] celloutsig_0_6z;
  wire [11:0] celloutsig_0_71z;
  wire [22:0] celloutsig_0_74z;
  wire [4:0] celloutsig_0_7z;
  wire celloutsig_0_86z;
  wire [3:0] celloutsig_0_87z;
  wire [8:0] celloutsig_0_8z;
  wire [9:0] celloutsig_0_9z;
  wire [3:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [11:0] celloutsig_1_12z;
  wire [6:0] celloutsig_1_13z;
  wire [4:0] celloutsig_1_16z;
  wire [14:0] celloutsig_1_18z;
  wire [11:0] celloutsig_1_19z;
  wire [22:0] celloutsig_1_1z;
  wire [3:0] celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire [6:0] celloutsig_1_4z;
  wire [4:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [9:0] celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = celloutsig_0_2z | celloutsig_0_1z[19];
  assign celloutsig_0_42z = celloutsig_0_25z | celloutsig_0_31z[0];
  assign celloutsig_0_86z = celloutsig_0_74z[6] | celloutsig_0_22z[10];
  assign celloutsig_1_6z = celloutsig_1_1z[3] | celloutsig_1_0z[3];
  assign celloutsig_1_7z = celloutsig_1_3z[0] | celloutsig_1_1z[3];
  assign celloutsig_1_10z = celloutsig_1_5z[4] | celloutsig_1_1z[3];
  assign celloutsig_0_14z = celloutsig_0_10z[0] | celloutsig_0_13z[0];
  assign celloutsig_0_25z = celloutsig_0_20z[1] | celloutsig_0_3z;
  assign celloutsig_0_2z = in_data[47] | celloutsig_0_0z[13];
  assign celloutsig_0_0z = in_data[76:60] + in_data[18:2];
  assign celloutsig_0_43z = celloutsig_0_35z[6:4] + _00_;
  assign celloutsig_0_6z = { celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_4z } + celloutsig_0_0z[15:4];
  assign celloutsig_1_18z = { celloutsig_1_1z[17], celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_8z } + { celloutsig_1_13z[4:0], celloutsig_1_16z, celloutsig_1_2z, celloutsig_1_7z };
  assign celloutsig_0_11z = celloutsig_0_5z[8:4] + celloutsig_0_7z;
  assign celloutsig_0_12z = in_data[52:37] + { celloutsig_0_5z[5:0], celloutsig_0_5z, celloutsig_0_2z };
  assign celloutsig_0_19z = celloutsig_0_12z[11:3] + { celloutsig_0_7z[1:0], celloutsig_0_15z, celloutsig_0_13z };
  assign celloutsig_0_31z = celloutsig_0_17z[5:3] + celloutsig_0_21z[5:3];
  reg [5:0] _19_;
  always_ff @(negedge celloutsig_1_18z[0], posedge clkin_data[0])
    if (clkin_data[0]) _19_ <= 6'h00;
    else _19_ <= { in_data[7:6], celloutsig_0_36z };
  assign { _01_[5:3], _00_ } = _19_;
  assign celloutsig_0_39z = - celloutsig_0_9z[8:6];
  assign celloutsig_0_4z = - { in_data[90:87], celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_7z = - in_data[39:35];
  assign celloutsig_0_8z = - celloutsig_0_0z[11:3];
  assign celloutsig_1_0z = - in_data[107:104];
  assign celloutsig_1_2z = - celloutsig_1_0z;
  assign celloutsig_1_3z = - celloutsig_1_0z[2:0];
  assign celloutsig_1_4z = - { celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_0_10z = - celloutsig_0_8z[6:4];
  assign celloutsig_0_13z = - { celloutsig_0_11z[2:1], celloutsig_0_3z };
  assign celloutsig_0_15z = - celloutsig_0_0z[7:4];
  assign celloutsig_0_16z = - celloutsig_0_12z[15:2];
  assign celloutsig_0_17z = - { celloutsig_0_8z[7:2], celloutsig_0_15z, celloutsig_0_14z };
  assign celloutsig_0_29z = - { celloutsig_0_6z[7:0], celloutsig_0_10z };
  assign celloutsig_0_32z = - celloutsig_0_1z[13:11];
  assign celloutsig_0_36z = - celloutsig_0_15z;
  assign celloutsig_0_40z = celloutsig_0_6z | { celloutsig_0_20z[6], celloutsig_0_15z, celloutsig_0_4z };
  assign celloutsig_0_71z = { celloutsig_0_16z[9:4], _01_[5:3], _00_ } | celloutsig_0_18z[13:2];
  assign celloutsig_0_87z = celloutsig_0_71z[3:0] | celloutsig_0_7z[4:1];
  assign celloutsig_0_9z = celloutsig_0_1z[19:10] | { celloutsig_0_5z[6:5], celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_1_5z = celloutsig_1_1z[19:15] | in_data[139:135];
  assign celloutsig_1_8z = { celloutsig_1_3z[2], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_6z } | { celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_0z };
  assign celloutsig_1_12z = { celloutsig_1_3z[0], celloutsig_1_10z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_7z } | { celloutsig_1_1z[15:5], celloutsig_1_10z };
  assign celloutsig_1_19z = { celloutsig_1_1z[13:6], celloutsig_1_9z, celloutsig_1_7z } | { celloutsig_1_1z[14:13], celloutsig_1_4z, celloutsig_1_9z };
  assign celloutsig_0_1z = in_data[80:59] | { in_data[94:90], celloutsig_0_0z };
  assign celloutsig_0_18z = { celloutsig_0_11z[3:0], celloutsig_0_9z } | { celloutsig_0_7z[2], celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_7z };
  assign celloutsig_0_20z = celloutsig_0_17z[7:1] | { celloutsig_0_12z[10], celloutsig_0_2z, celloutsig_0_7z };
  assign celloutsig_0_21z = { celloutsig_0_9z[7:5], celloutsig_0_10z, celloutsig_0_2z } | celloutsig_0_8z[7:1];
  assign celloutsig_0_22z = { celloutsig_0_12z[10:8], celloutsig_0_19z, celloutsig_0_13z } | { celloutsig_0_12z[13:2], celloutsig_0_13z };
  assign celloutsig_0_51z = { in_data[10:6], celloutsig_0_0z } << { celloutsig_0_40z[6], celloutsig_0_43z, celloutsig_0_9z, celloutsig_0_21z, celloutsig_0_3z };
  assign celloutsig_0_5z = in_data[26:18] << { celloutsig_0_4z[4:3], celloutsig_0_4z };
  assign celloutsig_0_54z = celloutsig_0_51z[11:8] << celloutsig_0_21z[4:1];
  assign celloutsig_0_74z = { celloutsig_0_39z[0], celloutsig_0_14z, celloutsig_0_54z, celloutsig_0_42z, celloutsig_0_29z, celloutsig_0_11z } << { celloutsig_0_0z[15:2], celloutsig_0_36z, celloutsig_0_11z };
  assign celloutsig_1_1z = in_data[180:158] << in_data[133:111];
  assign celloutsig_1_9z = celloutsig_1_0z[2:0] << { celloutsig_1_3z[1:0], celloutsig_1_7z };
  assign celloutsig_1_13z = in_data[188:182] << { celloutsig_1_12z[11:7], celloutsig_1_10z, celloutsig_1_7z };
  assign celloutsig_1_16z = celloutsig_1_13z[6:2] << celloutsig_1_5z;
  assign celloutsig_0_35z = { celloutsig_0_8z[7:2], celloutsig_0_2z, celloutsig_0_7z } << { celloutsig_0_1z[16:13], celloutsig_0_32z, celloutsig_0_11z };
  assign _01_[2:0] = _00_;
  assign { out_data[142:128], out_data[107:96], out_data[32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_86z, celloutsig_0_87z };
endmodule
