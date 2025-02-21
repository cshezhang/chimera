/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [10:0] celloutsig_0_0z;
  wire [9:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [2:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [30:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire [12:0] celloutsig_0_22z;
  reg [2:0] celloutsig_0_23z;
  wire [5:0] celloutsig_0_24z;
  wire [23:0] celloutsig_0_25z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_35z;
  wire [23:0] celloutsig_0_36z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  reg [9:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [8:0] celloutsig_0_9z;
  reg [4:0] celloutsig_1_0z;
  wire [4:0] celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire [4:0] celloutsig_1_1z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_11z = celloutsig_0_8z ? celloutsig_0_6z : celloutsig_0_1z;
  assign celloutsig_0_12z = celloutsig_0_8z ? celloutsig_0_11z : celloutsig_0_5z;
  assign celloutsig_0_16z = celloutsig_0_11z ? celloutsig_0_8z : celloutsig_0_5z;
  assign celloutsig_0_8z = !(celloutsig_0_6z ? celloutsig_0_2z : celloutsig_0_6z);
  assign celloutsig_0_1z = !(celloutsig_0_0z[3] ? in_data[16] : in_data[50]);
  assign celloutsig_0_0z = in_data[19:9] & in_data[20:10];
  assign celloutsig_1_1z = celloutsig_1_0z & in_data[177:173];
  assign celloutsig_1_19z = in_data[161:157] / { 1'h1, celloutsig_1_0z[3:0] };
  assign celloutsig_0_10z = { in_data[52:45], celloutsig_0_1z, celloutsig_0_8z } / { 1'h1, celloutsig_0_0z[4:0], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_3z = celloutsig_0_0z[9:1] == in_data[46:38];
  assign celloutsig_0_13z = in_data[13:10] == in_data[95:92];
  assign celloutsig_0_18z = { celloutsig_0_16z, celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_3z } == { celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_16z, celloutsig_0_5z };
  assign celloutsig_0_2z = { celloutsig_0_0z[2], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z } == { in_data[32:20], celloutsig_0_1z };
  assign celloutsig_0_5z = celloutsig_0_0z[5:2] === { in_data[83:81], celloutsig_0_3z };
  assign celloutsig_0_21z = in_data[50:48] === { celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_11z };
  assign celloutsig_0_30z = celloutsig_0_14z > celloutsig_0_7z[8:6];
  assign celloutsig_0_9z = { celloutsig_0_0z[10:5], celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_6z } * { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_6z };
  assign celloutsig_1_18z = ~ celloutsig_1_1z;
  assign celloutsig_0_14z = ~ { celloutsig_0_7z[3:2], celloutsig_0_1z };
  assign celloutsig_0_17z = { celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_8z } | { celloutsig_0_7z[9], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_16z, celloutsig_0_15z };
  assign celloutsig_0_25z = { celloutsig_0_17z[11:10], celloutsig_0_21z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_23z, celloutsig_0_18z, celloutsig_0_8z, celloutsig_0_24z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_4z } | { celloutsig_0_7z[4:2], celloutsig_0_18z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_7z };
  assign celloutsig_0_35z = | { celloutsig_0_25z[14:4], celloutsig_0_14z };
  assign celloutsig_0_4z = | { celloutsig_0_2z, celloutsig_0_0z[9:3] };
  assign celloutsig_0_6z = | { celloutsig_0_3z, celloutsig_0_2z, in_data[55:52], celloutsig_0_0z[9:3] };
  assign celloutsig_0_15z = | { celloutsig_0_14z, celloutsig_0_13z, in_data[33:28] };
  assign celloutsig_0_19z = | { celloutsig_0_18z, celloutsig_0_10z[5:0] };
  assign celloutsig_0_36z = { celloutsig_0_17z[26:7], celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_16z, celloutsig_0_1z } ~^ { celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_30z, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_22z[12:2], celloutsig_0_22z[2], celloutsig_0_22z[0], celloutsig_0_14z };
  assign celloutsig_0_24z = celloutsig_0_9z[6:1] ~^ { celloutsig_0_0z[8:5], celloutsig_0_6z, celloutsig_0_6z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_0z = 5'h00;
    else if (!clkin_data[0]) celloutsig_1_0z = in_data[157:153];
  always_latch
    if (!clkin_data[32]) celloutsig_0_7z = 10'h000;
    else if (!celloutsig_1_19z[0]) celloutsig_0_7z = { in_data[68:60], celloutsig_0_2z };
  always_latch
    if (clkin_data[32]) celloutsig_0_23z = 3'h0;
    else if (celloutsig_1_19z[0]) celloutsig_0_23z = celloutsig_0_0z[7:5];
  assign { celloutsig_0_22z[3], celloutsig_0_22z[12:4], celloutsig_0_22z[0], celloutsig_0_22z[2] } = ~ { celloutsig_0_19z, celloutsig_0_7z[8:0], celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_22z[1] = celloutsig_0_22z[2];
  assign { out_data[132:128], out_data[100:96], out_data[32], out_data[23:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_35z, celloutsig_0_36z };
endmodule
