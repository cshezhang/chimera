/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  reg [8:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire celloutsig_0_3z;
  reg [13:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire celloutsig_0_65z;
  wire celloutsig_0_66z;
  wire celloutsig_0_67z;
  wire celloutsig_0_6z;
  wire celloutsig_0_71z;
  wire celloutsig_0_77z;
  wire celloutsig_0_7z;
  wire celloutsig_0_86z;
  wire celloutsig_0_87z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  reg [7:0] celloutsig_1_2z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_7z;
  reg [17:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = in_data[36] ? in_data[35] : in_data[36];
  assign celloutsig_0_30z = celloutsig_0_1z ? celloutsig_0_19z : in_data[86];
  assign celloutsig_0_31z = celloutsig_0_5z ? celloutsig_0_27z : celloutsig_0_19z;
  assign celloutsig_0_3z = celloutsig_0_0z ? in_data[45] : celloutsig_0_2z;
  assign celloutsig_0_4z = celloutsig_0_0z ? in_data[72] : celloutsig_0_0z;
  assign celloutsig_0_50z = celloutsig_0_17z ? celloutsig_0_2z : celloutsig_0_3z;
  assign celloutsig_0_51z = celloutsig_0_21z ? celloutsig_0_50z : celloutsig_0_48z;
  assign celloutsig_0_52z = celloutsig_0_21z ? celloutsig_0_5z : celloutsig_0_32z;
  assign celloutsig_0_59z = celloutsig_0_53z ? celloutsig_0_7z : celloutsig_0_4z;
  assign celloutsig_0_6z = in_data[90] ? in_data[86] : celloutsig_0_5z;
  assign celloutsig_0_8z = celloutsig_0_1z ? celloutsig_0_3z : celloutsig_0_0z;
  assign celloutsig_0_86z = celloutsig_0_7z ? celloutsig_0_14z : celloutsig_0_77z;
  assign celloutsig_1_0z = in_data[152] ? in_data[125] : in_data[113];
  assign celloutsig_1_5z = celloutsig_1_2z[1] ? celloutsig_1_4z : celloutsig_1_2z[2];
  assign celloutsig_1_11z = celloutsig_1_7z ? celloutsig_1_0z : celloutsig_1_8z[13];
  assign celloutsig_1_13z = celloutsig_1_5z ? celloutsig_1_7z : celloutsig_1_11z;
  assign celloutsig_0_10z = celloutsig_0_2z ? celloutsig_0_7z : celloutsig_0_3z;
  assign celloutsig_0_1z = in_data[75] ? celloutsig_0_0z : in_data[6];
  assign celloutsig_0_17z = celloutsig_0_9z ? celloutsig_0_8z : in_data[86];
  assign celloutsig_0_19z = celloutsig_0_7z ? celloutsig_0_13z : celloutsig_0_11z;
  assign celloutsig_0_23z = celloutsig_0_9z ? celloutsig_0_14z : celloutsig_0_17z;
  assign celloutsig_0_25z = !(celloutsig_0_6z ? celloutsig_0_22z : celloutsig_0_11z);
  assign celloutsig_0_27z = !(celloutsig_0_17z ? celloutsig_0_11z : celloutsig_0_15z);
  assign celloutsig_0_28z = !(celloutsig_0_0z ? celloutsig_0_14z : celloutsig_0_21z);
  assign celloutsig_0_32z = !(celloutsig_0_25z ? celloutsig_0_21z : celloutsig_0_25z);
  assign celloutsig_0_35z = !(celloutsig_0_15z ? celloutsig_0_31z : celloutsig_0_19z);
  assign celloutsig_0_42z = !(celloutsig_0_35z ? celloutsig_0_23z : celloutsig_0_32z);
  assign celloutsig_0_48z = !(celloutsig_0_35z ? celloutsig_0_21z : celloutsig_0_42z);
  assign celloutsig_0_5z = !(celloutsig_0_2z ? celloutsig_0_2z : celloutsig_0_4z);
  assign celloutsig_0_53z = !(celloutsig_0_41z[10] ? celloutsig_0_31z : celloutsig_0_4z);
  assign celloutsig_0_61z = !(celloutsig_0_51z ? celloutsig_0_4z : celloutsig_0_30z);
  assign celloutsig_0_65z = !(celloutsig_0_10z ? celloutsig_0_61z : celloutsig_0_13z);
  assign celloutsig_0_66z = !(celloutsig_0_59z ? celloutsig_0_50z : celloutsig_0_10z);
  assign celloutsig_0_67z = !(celloutsig_0_35z ? celloutsig_0_66z : celloutsig_0_2z);
  assign celloutsig_0_71z = !(celloutsig_0_30z ? celloutsig_0_52z : celloutsig_0_11z);
  assign celloutsig_0_7z = !(celloutsig_0_0z ? celloutsig_0_3z : celloutsig_0_5z);
  assign celloutsig_0_77z = !(celloutsig_0_1z ? celloutsig_0_65z : celloutsig_0_16z[6]);
  assign celloutsig_0_87z = !(celloutsig_0_67z ? celloutsig_0_17z : celloutsig_0_71z);
  assign celloutsig_1_1z = !(celloutsig_1_0z ? celloutsig_1_0z : celloutsig_1_0z);
  assign celloutsig_1_4z = !(celloutsig_1_2z[4] ? celloutsig_1_1z : celloutsig_1_1z);
  assign celloutsig_0_9z = !(celloutsig_0_1z ? celloutsig_0_7z : celloutsig_0_5z);
  assign celloutsig_1_7z = !(celloutsig_1_5z ? celloutsig_1_0z : celloutsig_1_4z);
  assign celloutsig_1_9z = !(celloutsig_1_1z ? celloutsig_1_0z : celloutsig_1_5z);
  assign celloutsig_1_15z = !(celloutsig_1_9z ? celloutsig_1_8z[12] : celloutsig_1_7z);
  assign celloutsig_1_18z = !(celloutsig_1_15z ? celloutsig_1_13z : celloutsig_1_2z[5]);
  assign celloutsig_1_19z = !(celloutsig_1_8z[5] ? celloutsig_1_4z : celloutsig_1_5z);
  assign celloutsig_0_11z = !(celloutsig_0_10z ? celloutsig_0_4z : celloutsig_0_9z);
  assign celloutsig_0_12z = !(celloutsig_0_7z ? celloutsig_0_11z : celloutsig_0_7z);
  assign celloutsig_0_13z = !(celloutsig_0_10z ? celloutsig_0_1z : celloutsig_0_8z);
  assign celloutsig_0_14z = !(celloutsig_0_8z ? in_data[9] : celloutsig_0_13z);
  assign celloutsig_0_15z = !(celloutsig_0_3z ? celloutsig_0_3z : celloutsig_0_0z);
  assign celloutsig_0_21z = !(celloutsig_0_1z ? celloutsig_0_4z : celloutsig_0_15z);
  assign celloutsig_0_22z = !(celloutsig_0_4z ? celloutsig_0_9z : celloutsig_0_6z);
  assign celloutsig_0_2z = !(celloutsig_0_0z ? celloutsig_0_1z : in_data[81]);
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_41z = 14'h0000;
    else if (clkin_data[0]) celloutsig_0_41z = { in_data[33:26], celloutsig_0_32z, celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_28z };
  always_latch
    if (clkin_data[128]) celloutsig_1_2z = 8'h00;
    else if (clkin_data[32]) celloutsig_1_2z = { in_data[146:141], celloutsig_1_1z, celloutsig_1_0z };
  always_latch
    if (!clkin_data[128]) celloutsig_1_8z = 18'h00000;
    else if (!clkin_data[64]) celloutsig_1_8z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_16z = 9'h000;
    else if (!clkin_data[0]) celloutsig_0_16z = { in_data[72:71], celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_0z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_86z, celloutsig_0_87z };
endmodule
