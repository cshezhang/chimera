/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [17:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [5:0] celloutsig_0_11z;
  wire [14:0] celloutsig_0_12z;
  wire [10:0] celloutsig_0_13z;
  wire [7:0] celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [2:0] celloutsig_0_18z;
  wire [17:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [11:0] celloutsig_0_23z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [3:0] celloutsig_0_32z;
  wire [4:0] celloutsig_0_33z;
  wire celloutsig_0_3z;
  wire [7:0] celloutsig_0_48z;
  wire [4:0] celloutsig_0_4z;
  wire [3:0] celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire [12:0] celloutsig_0_61z;
  reg [8:0] celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire [2:0] celloutsig_0_9z;
  wire [15:0] celloutsig_1_0z;
  wire [8:0] celloutsig_1_10z;
  wire [25:0] celloutsig_1_11z;
  wire celloutsig_1_15z;
  wire [9:0] celloutsig_1_16z;
  wire [12:0] celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [9:0] celloutsig_1_3z;
  wire [5:0] celloutsig_1_4z;
  wire [9:0] celloutsig_1_5z;
  wire [6:0] celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = in_data[54:37] + in_data[52:35];
  assign celloutsig_0_4z = in_data[14:10] + in_data[44:40];
  assign celloutsig_0_5z = celloutsig_0_4z[4:1] + celloutsig_0_0z[16:13];
  assign celloutsig_1_0z = in_data[172:157] + in_data[124:109];
  assign celloutsig_1_3z = celloutsig_1_0z[9:0] + celloutsig_1_0z[12:3];
  assign celloutsig_1_4z = { celloutsig_1_0z[8:6], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z } + { celloutsig_1_3z[4:2], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_5z = in_data[155:146] + { celloutsig_1_3z[8:0], celloutsig_1_2z };
  assign celloutsig_1_10z = { celloutsig_1_0z[15:8], celloutsig_1_2z } + { celloutsig_1_3z[8:7], celloutsig_1_7z };
  assign celloutsig_0_9z = { celloutsig_0_5z[2:1], celloutsig_0_3z } + celloutsig_0_4z[2:0];
  assign celloutsig_0_11z = { celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_9z } + in_data[71:66];
  assign celloutsig_0_13z = { in_data[13:12], celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_1z } + { celloutsig_0_0z[11:5], celloutsig_0_5z };
  assign celloutsig_0_19z = { in_data[29:18], celloutsig_0_1z, celloutsig_0_15z } + celloutsig_0_0z;
  assign celloutsig_0_23z = celloutsig_0_19z[11:0] + { in_data[12:4], celloutsig_0_7z };
  assign celloutsig_0_32z = { celloutsig_0_12z[5:3], celloutsig_0_3z } + { celloutsig_0_14z[3], celloutsig_0_21z, celloutsig_0_16z, celloutsig_0_27z };
  assign celloutsig_0_48z = - { celloutsig_0_32z[1:0], celloutsig_0_15z, celloutsig_0_1z };
  assign celloutsig_0_61z = - { in_data[48:45], celloutsig_0_48z, celloutsig_0_29z };
  assign celloutsig_1_7z = - celloutsig_1_3z[6:0];
  assign celloutsig_1_8z = - celloutsig_1_7z[5:2];
  assign celloutsig_1_11z = - { celloutsig_1_0z[14:4], celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_8z };
  assign celloutsig_1_16z = - { celloutsig_1_0z[6:3], celloutsig_1_9z, celloutsig_1_15z, celloutsig_1_8z };
  assign celloutsig_1_18z = - { celloutsig_1_4z[5:3], celloutsig_1_16z };
  assign celloutsig_1_19z = - celloutsig_1_10z[4:1];
  assign celloutsig_0_7z = - { in_data[47], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_12z = - { celloutsig_0_0z[14:5], celloutsig_0_4z };
  assign celloutsig_0_14z = - { celloutsig_0_6z[8:3], celloutsig_0_2z, celloutsig_0_10z };
  assign celloutsig_0_15z = - celloutsig_0_14z[5:1];
  assign celloutsig_0_18z = - celloutsig_0_11z[4:2];
  assign celloutsig_0_33z = - { celloutsig_0_18z, celloutsig_0_10z, celloutsig_0_3z };
  assign celloutsig_0_60z = & { celloutsig_0_33z[4:2], celloutsig_0_13z[2], celloutsig_0_7z };
  assign celloutsig_1_1z = & celloutsig_1_0z;
  assign celloutsig_1_2z = & in_data[174:171];
  assign celloutsig_1_9z = & { celloutsig_1_5z, celloutsig_1_0z[5:1] };
  assign celloutsig_1_15z = & { celloutsig_1_11z[25:3], in_data[174:171] };
  assign celloutsig_0_10z = & { celloutsig_0_7z, celloutsig_0_6z[3], in_data[88:75], celloutsig_0_0z[13:4] };
  assign celloutsig_0_1z = & in_data[88:75];
  assign celloutsig_0_16z = & celloutsig_0_12z[8:6];
  assign celloutsig_0_2z = & celloutsig_0_0z[13:11];
  assign celloutsig_0_27z = & { celloutsig_0_23z, celloutsig_0_19z[15:12], celloutsig_0_19z[6:4], celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_6z[3], in_data[88:75], in_data[71:67], celloutsig_0_0z[13:4] };
  assign celloutsig_0_29z = & { celloutsig_0_23z, celloutsig_0_5z[3:1], celloutsig_0_0z[13:4] };
  assign celloutsig_0_21z = & celloutsig_0_5z[3:1];
  assign celloutsig_0_3z = & celloutsig_0_0z[13:4];
  always_latch
    if (!celloutsig_1_19z[0]) celloutsig_0_6z = 9'h000;
    else if (!clkin_data[0]) celloutsig_0_6z = { celloutsig_0_0z[4], celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_1z };
  assign { out_data[140:128], out_data[99:96], out_data[32], out_data[12:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_60z, celloutsig_0_61z };
endmodule
