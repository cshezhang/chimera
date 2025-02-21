/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [7:0] celloutsig_0_15z;
  wire [6:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [2:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  reg [7:0] celloutsig_0_21z;
  wire [11:0] celloutsig_0_22z;
  wire [2:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [17:0] celloutsig_0_26z;
  wire [3:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  reg [3:0] celloutsig_0_2z;
  wire [3:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [2:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire [4:0] celloutsig_0_35z;
  wire [10:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [19:0] celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire [7:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire [3:0] celloutsig_0_49z;
  wire [9:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire celloutsig_0_54z;
  wire [3:0] celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [35:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [19:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [10:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [10:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire [18:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [10:0] celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_12z = ~((celloutsig_1_5z[18] | in_data[167]) & celloutsig_1_5z[11]);
  assign celloutsig_0_25z = ~((celloutsig_0_4z[7] | celloutsig_0_16z[2]) & celloutsig_0_14z);
  assign celloutsig_1_9z = in_data[154:144] / { 1'h1, celloutsig_1_5z[17:8] };
  assign celloutsig_0_22z = { celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_16z } / { 1'h1, in_data[90:80] };
  assign celloutsig_0_23z = { celloutsig_0_2z[2:1], celloutsig_0_11z } / { 1'h1, celloutsig_0_16z[2:1] };
  assign celloutsig_1_15z = { celloutsig_1_13z[1], celloutsig_1_12z, celloutsig_1_7z, celloutsig_1_9z, celloutsig_1_11z, celloutsig_1_8z } > { celloutsig_1_13z[2:0], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_7z };
  assign celloutsig_1_16z = { celloutsig_1_5z[16:14], celloutsig_1_6z, celloutsig_1_12z, celloutsig_1_14z } > { celloutsig_1_2z[9:6], celloutsig_1_11z, celloutsig_1_6z };
  assign celloutsig_0_54z = { celloutsig_0_15z[4:0], celloutsig_0_31z } <= { in_data[45:43], celloutsig_0_14z, celloutsig_0_50z, celloutsig_0_11z };
  assign celloutsig_0_56z = { celloutsig_0_7z[20:7], celloutsig_0_49z, celloutsig_0_34z, celloutsig_0_4z, celloutsig_0_44z, celloutsig_0_18z, celloutsig_0_24z, celloutsig_0_16z, celloutsig_0_54z, celloutsig_0_5z } <= { celloutsig_0_16z[6:5], celloutsig_0_38z, celloutsig_0_37z, celloutsig_0_49z, celloutsig_0_18z, celloutsig_0_54z, celloutsig_0_43z, celloutsig_0_13z };
  assign celloutsig_1_6z = { celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_4z } <= { celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_1_10z = { celloutsig_1_2z[6:3], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_8z } <= { celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_0_11z = celloutsig_0_7z[33:0] <= celloutsig_0_7z[34:1];
  assign celloutsig_0_12z = { celloutsig_0_7z[29:28], celloutsig_0_5z, celloutsig_0_0z } <= celloutsig_0_7z[27:24];
  assign celloutsig_0_0z = in_data[30:24] && in_data[87:81];
  assign celloutsig_0_38z = { celloutsig_0_22z[10:6], celloutsig_0_29z } && { celloutsig_0_35z[2:1], celloutsig_0_23z, celloutsig_0_24z };
  assign celloutsig_0_44z = { celloutsig_0_34z, celloutsig_0_0z, celloutsig_0_18z } && celloutsig_0_4z[4:0];
  assign celloutsig_0_47z = celloutsig_0_37z[4:2] && { celloutsig_0_23z[2:1], celloutsig_0_31z };
  assign celloutsig_0_5z = { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z } && { in_data[90:87], celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_7z = celloutsig_1_2z[8:6] && { celloutsig_1_2z[7:6], celloutsig_1_3z };
  assign celloutsig_1_14z = { celloutsig_1_4z[3:1], celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_1z } && { celloutsig_1_9z[10:4], celloutsig_1_7z, celloutsig_1_7z };
  assign celloutsig_1_18z = { celloutsig_1_5z[4:1], celloutsig_1_4z, celloutsig_1_12z, celloutsig_1_14z, celloutsig_1_16z, celloutsig_1_15z } && { celloutsig_1_9z, celloutsig_1_12z, celloutsig_1_10z };
  assign celloutsig_0_8z = celloutsig_0_7z[24:19] && { celloutsig_0_2z[2], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_29z = { celloutsig_0_28z[3:1], celloutsig_0_14z } && { celloutsig_0_11z, celloutsig_0_24z, celloutsig_0_11z, celloutsig_0_12z };
  assign celloutsig_1_3z = ! celloutsig_1_2z[4:1];
  assign celloutsig_0_13z = ! { celloutsig_0_7z[13:12], celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_8z };
  assign celloutsig_0_17z = ! { celloutsig_0_7z[22], celloutsig_0_9z[11:6], celloutsig_0_13z, celloutsig_0_14z, celloutsig_0_2z };
  assign celloutsig_0_32z = { celloutsig_0_25z, celloutsig_0_23z } || { celloutsig_0_18z, celloutsig_0_1z };
  assign celloutsig_1_1z = in_data[183:175] || { in_data[188:182], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_11z = { in_data[159:150], celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_0z } || { in_data[115:105], celloutsig_1_1z, celloutsig_1_7z };
  assign celloutsig_0_1z = in_data[31:27] || in_data[49:45];
  assign celloutsig_0_19z = { celloutsig_0_16z[3:2], celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_18z } || { celloutsig_0_7z[25:22], celloutsig_0_9z[11:10], celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_0_20z = { celloutsig_0_15z[5:4], celloutsig_0_16z, celloutsig_0_5z } || { celloutsig_0_4z[9:5], celloutsig_0_14z, celloutsig_0_2z };
  assign celloutsig_0_34z = { celloutsig_0_26z[17:11], celloutsig_0_19z, celloutsig_0_2z } < { celloutsig_0_1z, celloutsig_0_28z, celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_0z };
  assign celloutsig_0_50z = { celloutsig_0_4z[7:0], celloutsig_0_17z, celloutsig_0_17z } < { celloutsig_0_46z[7:1], celloutsig_0_14z, celloutsig_0_25z, celloutsig_0_47z };
  assign celloutsig_1_0z = in_data[133:119] < in_data[185:171];
  assign celloutsig_1_8z = celloutsig_1_4z[3:0] < in_data[180:177];
  assign celloutsig_0_6z = celloutsig_0_4z[8:0] < celloutsig_0_4z[8:0];
  assign celloutsig_0_14z = { celloutsig_0_7z[25:23], celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_13z } < { celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_35z = { celloutsig_0_21z[4:2], celloutsig_0_20z, celloutsig_0_0z } % { 1'h1, celloutsig_0_7z[23:22], celloutsig_0_9z[11:10] };
  assign celloutsig_1_2z = { in_data[141:134], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z } % { 1'h1, in_data[116:107] };
  assign celloutsig_0_7z = { in_data[17:6], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_0z } % { 1'h1, in_data[77:43] };
  assign celloutsig_0_16z = { celloutsig_0_4z[3:0], celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_8z } % { 1'h1, celloutsig_0_15z[5:2], celloutsig_0_3z, celloutsig_0_11z };
  assign celloutsig_0_49z = { celloutsig_0_15z[5:4], celloutsig_0_11z, celloutsig_0_8z } * celloutsig_0_46z[3:0];
  assign celloutsig_0_43z = celloutsig_0_7z[26] ? { celloutsig_0_35z[1:0], celloutsig_0_26z } : { celloutsig_0_10z[1], celloutsig_0_17z, celloutsig_0_15z, celloutsig_0_4z };
  assign celloutsig_1_5z = celloutsig_1_2z[10] ? { in_data[156:140], celloutsig_1_0z, celloutsig_1_1z } : in_data[142:124];
  assign celloutsig_1_19z = celloutsig_1_10z ? { celloutsig_1_5z[4:2], celloutsig_1_16z, celloutsig_1_7z } : celloutsig_1_4z;
  assign celloutsig_0_9z[11:0] = celloutsig_0_7z[1] ? { celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_8z } : celloutsig_0_7z[21:10];
  assign celloutsig_0_15z = celloutsig_0_11z ? celloutsig_0_4z[9:2] : { celloutsig_0_7z[24:22], celloutsig_0_9z[11:10], celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_6z };
  assign celloutsig_0_24z = { celloutsig_0_7z[26:22], celloutsig_0_9z[11:10], celloutsig_0_20z, celloutsig_0_19z, celloutsig_0_17z } != { celloutsig_0_4z[5:3], celloutsig_0_0z, celloutsig_0_20z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_10z };
  assign celloutsig_0_33z = celloutsig_0_30z[2:0] <<< celloutsig_0_26z[14:12];
  assign celloutsig_0_46z = { celloutsig_0_15z[6:0], celloutsig_0_32z } <<< { celloutsig_0_30z[1], celloutsig_0_28z, celloutsig_0_17z, celloutsig_0_44z, celloutsig_0_34z };
  assign celloutsig_0_4z = { in_data[85:83], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z } <<< { in_data[22:15], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_55z = { celloutsig_0_46z[1:0], celloutsig_0_8z, celloutsig_0_50z } <<< { celloutsig_0_35z[1:0], celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_1_4z = { celloutsig_1_2z[3:0], celloutsig_1_0z } <<< celloutsig_1_2z[8:4];
  assign celloutsig_1_13z = celloutsig_1_5z[15:5] <<< celloutsig_1_5z[12:2];
  assign celloutsig_0_10z = { celloutsig_0_2z[2:1], celloutsig_0_3z } <<< celloutsig_0_9z[4:2];
  assign celloutsig_0_18z = celloutsig_0_16z[2:0] <<< { celloutsig_0_2z[2:1], celloutsig_0_12z };
  assign celloutsig_0_28z = { celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_20z, celloutsig_0_25z } <<< celloutsig_0_26z[17:14];
  assign celloutsig_0_30z = { celloutsig_0_10z, celloutsig_0_3z } <<< { celloutsig_0_15z[5:3], celloutsig_0_1z };
  assign celloutsig_0_37z = celloutsig_0_22z[11:1] >>> { celloutsig_0_35z[3:2], celloutsig_0_33z, celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_29z, celloutsig_0_25z };
  assign celloutsig_0_26z = { celloutsig_0_7z[25:22], celloutsig_0_9z[11:0], celloutsig_0_20z, celloutsig_0_8z } >>> { celloutsig_0_13z, celloutsig_0_15z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_20z, celloutsig_0_0z, celloutsig_0_10z };
  assign celloutsig_0_3z = ~((in_data[58] & celloutsig_0_0z) | celloutsig_0_0z);
  assign celloutsig_0_31z = ~((celloutsig_0_17z & celloutsig_0_12z) | celloutsig_0_13z);
  always_latch
    if (!clkin_data[32]) celloutsig_0_21z = 8'h00;
    else if (celloutsig_1_19z[0]) celloutsig_0_21z = { celloutsig_0_18z[0], celloutsig_0_16z };
  always_latch
    if (clkin_data[0]) celloutsig_0_2z = 4'h0;
    else if (celloutsig_1_19z[0]) celloutsig_0_2z = { in_data[91:90], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_9z[19:12] = celloutsig_0_7z[29:22];
  assign { out_data[128], out_data[100:96], out_data[35:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_55z, celloutsig_0_56z };
endmodule
