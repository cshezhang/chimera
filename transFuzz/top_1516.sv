/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [24:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [2:0] celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [6:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [9:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [2:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [10:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [17:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [4:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [20:0] celloutsig_0_41z;
  wire [4:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [3:0] celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_53z;
  wire celloutsig_0_55z;
  wire celloutsig_0_5z;
  wire [17:0] celloutsig_0_60z;
  wire [2:0] celloutsig_0_63z;
  reg [14:0] celloutsig_0_64z;
  wire [12:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [10:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [6:0] celloutsig_1_7z;
  wire [5:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_9z = ~(celloutsig_0_6z[12] & celloutsig_0_7z);
  assign celloutsig_0_26z = ~(celloutsig_0_1z[5] & celloutsig_0_5z);
  assign celloutsig_0_28z = ~(celloutsig_0_15z[14] & celloutsig_0_27z);
  assign celloutsig_0_0z = !(in_data[12] ? in_data[81] : in_data[19]);
  assign celloutsig_0_32z = !(celloutsig_0_26z ? celloutsig_0_29z : celloutsig_0_7z);
  assign celloutsig_0_33z = !(celloutsig_0_10z ? celloutsig_0_4z : celloutsig_0_2z);
  assign celloutsig_0_45z = !(in_data[78] ? celloutsig_0_13z : celloutsig_0_32z);
  assign celloutsig_1_1z = !(in_data[187] ? in_data[136] : in_data[123]);
  assign celloutsig_1_6z = !(in_data[117] ? celloutsig_1_0z : celloutsig_1_3z);
  assign celloutsig_0_7z = !(celloutsig_0_5z ? celloutsig_0_2z : celloutsig_0_4z);
  assign celloutsig_1_13z = !(celloutsig_1_3z ? celloutsig_1_5z[0] : in_data[162]);
  assign celloutsig_0_20z = !(celloutsig_0_6z[4] ? celloutsig_0_3z : celloutsig_0_7z);
  assign celloutsig_0_24z = !(celloutsig_0_8z ? celloutsig_0_20z : celloutsig_0_23z[3]);
  assign celloutsig_0_2z = !(celloutsig_0_0z ? celloutsig_0_1z[5] : celloutsig_0_1z[1]);
  assign celloutsig_0_3z = ~(celloutsig_0_1z[0] | celloutsig_0_1z[4]);
  assign celloutsig_0_39z = ~(celloutsig_0_2z | celloutsig_0_24z);
  assign celloutsig_0_46z = ~(celloutsig_0_44z[1] | celloutsig_0_13z);
  assign celloutsig_0_5z = ~(celloutsig_0_2z | celloutsig_0_2z);
  assign celloutsig_1_19z = ~(celloutsig_1_5z[4] | celloutsig_1_7z[3]);
  assign celloutsig_0_8z = ~(celloutsig_0_3z | celloutsig_0_5z);
  assign celloutsig_0_22z = ~(celloutsig_0_1z[0] | celloutsig_0_3z);
  assign celloutsig_0_29z = ~(celloutsig_0_25z[2] | celloutsig_0_10z);
  assign celloutsig_0_4z = ~((celloutsig_0_1z[7] | celloutsig_0_3z) & celloutsig_0_1z[7]);
  assign celloutsig_0_53z = ~((celloutsig_0_43z | celloutsig_0_32z) & celloutsig_0_3z);
  assign celloutsig_1_0z = ~((in_data[139] | in_data[135]) & in_data[188]);
  assign celloutsig_1_9z = ~((celloutsig_1_6z | celloutsig_1_2z) & celloutsig_1_2z);
  assign celloutsig_0_17z = ~((celloutsig_0_6z[10] | celloutsig_0_8z) & celloutsig_0_0z);
  assign celloutsig_0_27z = ~((celloutsig_0_19z[0] | celloutsig_0_1z[0]) & celloutsig_0_13z);
  assign celloutsig_1_2z = in_data[121:106] >= in_data[123:108];
  assign celloutsig_1_4z = in_data[143:136] >= { in_data[117:115], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_1_18z = { celloutsig_1_10z[5:1], celloutsig_1_6z, celloutsig_1_14z, celloutsig_1_9z } >= { in_data[147:144], celloutsig_1_0z, celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_6z };
  assign celloutsig_0_11z = { celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_4z } >= { in_data[46:13], celloutsig_0_2z, celloutsig_0_7z };
  assign celloutsig_0_31z = celloutsig_0_6z[10:6] && celloutsig_0_1z[6:2];
  assign celloutsig_0_37z = { celloutsig_0_15z[22:21], celloutsig_0_26z } && celloutsig_0_18z;
  assign celloutsig_0_43z = { celloutsig_0_41z[2:0], celloutsig_0_17z } && celloutsig_0_38z[3:0];
  assign celloutsig_0_10z = { celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_5z } && { in_data[73:68], celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_9z };
  assign celloutsig_0_13z = celloutsig_0_6z[11:8] && { celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_0_14z = in_data[13:8] && { celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_12z };
  assign celloutsig_0_30z = { celloutsig_0_1z[6:0], celloutsig_0_4z, celloutsig_0_28z } && { celloutsig_0_13z, celloutsig_0_29z, celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_14z, celloutsig_0_22z, celloutsig_0_16z, celloutsig_0_5z, celloutsig_0_17z };
  assign celloutsig_0_49z = celloutsig_0_39z & ~(celloutsig_0_15z[6]);
  assign celloutsig_0_55z = celloutsig_0_14z & ~(celloutsig_0_53z);
  assign celloutsig_0_16z = celloutsig_0_9z & ~(celloutsig_0_15z[9]);
  assign celloutsig_1_8z = { celloutsig_1_5z[8:4], celloutsig_1_4z } * { celloutsig_1_5z[10:7], celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_0_1z = in_data[85:78] * { in_data[14:9], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_25z = { celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_24z } * { celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_14z };
  assign celloutsig_0_35z = | { celloutsig_0_32z, celloutsig_0_28z, celloutsig_0_22z, celloutsig_0_17z };
  assign celloutsig_0_51z = | { celloutsig_0_45z, celloutsig_0_20z, celloutsig_0_1z[6:0] };
  assign celloutsig_1_3z = | { celloutsig_1_1z, in_data[103:101] };
  assign celloutsig_1_14z = | { celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_0z, in_data[103:101] };
  assign celloutsig_0_12z = | { celloutsig_0_7z, celloutsig_0_3z, in_data[30] };
  assign celloutsig_0_34z = { celloutsig_0_6z[12:8], celloutsig_0_29z, celloutsig_0_31z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_32z } - { celloutsig_0_6z[3:2], celloutsig_0_26z, celloutsig_0_32z, celloutsig_0_21z };
  assign celloutsig_0_36z = { in_data[91:90], celloutsig_0_8z, celloutsig_0_27z, celloutsig_0_29z, celloutsig_0_35z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_27z, celloutsig_0_2z, celloutsig_0_26z, celloutsig_0_31z, celloutsig_0_33z, celloutsig_0_24z, celloutsig_0_16z, celloutsig_0_28z } - { celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_11z, celloutsig_0_6z };
  assign celloutsig_0_38z = { celloutsig_0_34z[10:9], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_9z } - { celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_20z, celloutsig_0_17z, celloutsig_0_5z };
  assign celloutsig_0_41z = { celloutsig_0_15z[17:7], celloutsig_0_39z, celloutsig_0_35z, celloutsig_0_33z, celloutsig_0_10z, celloutsig_0_26z, celloutsig_0_22z, celloutsig_0_26z, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_30z } - { celloutsig_0_36z[5:4], celloutsig_0_20z, celloutsig_0_37z, celloutsig_0_0z, celloutsig_0_24z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_22z };
  assign celloutsig_0_42z = { celloutsig_0_1z[5:3], celloutsig_0_32z, celloutsig_0_11z } - { in_data[95:94], celloutsig_0_4z, celloutsig_0_22z, celloutsig_0_16z };
  assign celloutsig_0_44z = { celloutsig_0_18z, celloutsig_0_32z } - { celloutsig_0_38z[2:1], celloutsig_0_2z, celloutsig_0_37z };
  assign celloutsig_0_60z = { celloutsig_0_44z, celloutsig_0_21z, celloutsig_0_24z, celloutsig_0_14z, celloutsig_0_51z, celloutsig_0_33z, celloutsig_0_28z, celloutsig_0_12z, celloutsig_0_32z } - { celloutsig_0_21z[3], celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_32z, celloutsig_0_55z, celloutsig_0_46z, celloutsig_0_26z, celloutsig_0_2z, celloutsig_0_39z, celloutsig_0_8z, celloutsig_0_4z, celloutsig_0_49z };
  assign celloutsig_0_63z = { celloutsig_0_32z, celloutsig_0_55z, celloutsig_0_31z } - { celloutsig_0_60z[17:16], celloutsig_0_17z };
  assign celloutsig_0_6z = { celloutsig_0_1z[1:0], celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z } - { in_data[81:75], celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_1_5z = { in_data[190:184], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_0z } - { celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_1_7z = { celloutsig_1_5z[7:3], celloutsig_1_6z, celloutsig_1_3z } - { celloutsig_1_5z[5:0], celloutsig_1_6z };
  assign celloutsig_1_10z = celloutsig_1_8z - celloutsig_1_7z[5:0];
  assign celloutsig_0_15z = { celloutsig_0_6z[10:7], celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_10z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_10z } - { celloutsig_0_6z[9:4], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_0_18z = celloutsig_0_1z[2:0] - { celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_10z };
  assign celloutsig_0_19z = { celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_14z, celloutsig_0_9z } - celloutsig_0_6z[8:5];
  assign celloutsig_0_21z = { celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_18z, celloutsig_0_3z } - { celloutsig_0_6z[11:6], celloutsig_0_14z };
  assign celloutsig_0_23z = { celloutsig_0_6z[10:4], celloutsig_0_17z, celloutsig_0_7z, celloutsig_0_3z } - { celloutsig_0_21z[5:1], celloutsig_0_7z, celloutsig_0_18z, celloutsig_0_8z };
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_64z = 15'h0000;
    else if (clkin_data[32]) celloutsig_0_64z = { celloutsig_0_41z[19:16], celloutsig_0_32z, celloutsig_0_8z, celloutsig_0_53z, celloutsig_0_20z, celloutsig_0_55z, celloutsig_0_39z, celloutsig_0_42z };
  assign { out_data[128], out_data[96], out_data[34:32], out_data[14:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_63z, celloutsig_0_64z };
endmodule
