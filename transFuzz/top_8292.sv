/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [6:0] _00_;
  wire [5:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire [4:0] celloutsig_0_11z;
  wire [15:0] celloutsig_0_12z;
  wire [9:0] celloutsig_0_13z;
  wire [6:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_17z;
  wire [8:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [11:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [5:0] celloutsig_0_22z;
  wire [30:0] celloutsig_0_23z;
  wire [37:0] celloutsig_0_25z;
  wire [9:0] celloutsig_0_27z;
  wire [3:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire [2:0] celloutsig_0_32z;
  wire celloutsig_0_35z;
  wire [16:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  reg [8:0] celloutsig_0_3z;
  wire [18:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [6:0] celloutsig_1_0z;
  wire [10:0] celloutsig_1_10z;
  wire [2:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [11:0] celloutsig_1_14z;
  wire [6:0] celloutsig_1_15z;
  wire [31:0] celloutsig_1_18z;
  wire [22:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [28:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [43:0] celloutsig_1_8z;
  wire [15:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_1z = ~celloutsig_0_0z[2];
  assign celloutsig_0_15z = ~celloutsig_0_7z;
  assign celloutsig_0_38z = ~((in_data[64] | celloutsig_0_35z) & (celloutsig_0_32z[1] | celloutsig_0_15z));
  assign celloutsig_1_3z = ~((in_data[126] | celloutsig_1_1z[21]) & (celloutsig_1_1z[5] | celloutsig_1_0z[3]));
  assign celloutsig_0_5z = ~((celloutsig_0_3z[0] | celloutsig_0_0z[0]) & (celloutsig_0_1z | in_data[61]));
  assign celloutsig_0_6z = ~((in_data[63] | celloutsig_0_2z) & (celloutsig_0_5z | celloutsig_0_5z));
  assign celloutsig_0_35z = celloutsig_0_21z ^ celloutsig_0_29z[1];
  assign celloutsig_0_17z = celloutsig_0_14z[4] ^ celloutsig_0_4z[2];
  assign celloutsig_1_2z = ~(in_data[106] ^ in_data[175]);
  assign celloutsig_1_6z = ~(celloutsig_1_4z ^ celloutsig_1_0z[1]);
  assign celloutsig_0_19z = ~(celloutsig_0_3z[4] ^ celloutsig_0_11z[2]);
  assign celloutsig_0_37z = { celloutsig_0_25z[26:21], celloutsig_0_1z, celloutsig_0_27z } + { celloutsig_0_10z[2], celloutsig_0_0z, celloutsig_0_31z, celloutsig_0_3z };
  assign celloutsig_0_25z = { celloutsig_0_23z[4:2], celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_20z, celloutsig_0_11z, celloutsig_0_15z } + { in_data[39:19], celloutsig_0_21z, celloutsig_0_9z, celloutsig_0_22z, celloutsig_0_3z };
  assign celloutsig_0_29z = celloutsig_0_3z[6:3] + celloutsig_0_14z[4:1];
  always_ff @(posedge clkin_data[128], negedge clkin_data[96])
    if (!clkin_data[96]) _00_ <= 7'h00;
    else _00_ <= celloutsig_1_0z;
  assign celloutsig_0_7z = in_data[56:54] === celloutsig_0_0z[3:1];
  assign celloutsig_0_8z = { celloutsig_0_0z[2:1], celloutsig_0_1z } === celloutsig_0_0z[4:2];
  assign celloutsig_0_21z = { celloutsig_0_20z[11:6], celloutsig_0_8z, celloutsig_0_14z } === { celloutsig_0_13z[5:1], celloutsig_0_18z };
  assign celloutsig_1_13z = celloutsig_1_8z[12:10] < celloutsig_1_11z;
  assign celloutsig_0_9z = { celloutsig_0_0z[4:1], celloutsig_0_2z, celloutsig_0_1z } < celloutsig_0_0z;
  assign celloutsig_0_20z = { celloutsig_0_14z[2:1], celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_8z } % { 1'h1, celloutsig_0_14z[4:2], celloutsig_0_14z, celloutsig_0_2z };
  assign celloutsig_0_22z = celloutsig_0_14z[0] ? celloutsig_0_12z[14:9] : celloutsig_0_18z[7:2];
  assign celloutsig_0_31z = celloutsig_0_12z[12:2] !== { celloutsig_0_27z[8:5], celloutsig_0_19z, celloutsig_0_22z };
  assign celloutsig_1_4z = { celloutsig_1_1z[20:0], celloutsig_1_2z } !== in_data[152:131];
  assign celloutsig_1_12z = celloutsig_1_9z[14:11] !== { celloutsig_1_10z[7:5], celloutsig_1_4z };
  assign celloutsig_0_2z = celloutsig_0_0z[2:0] !== in_data[87:85];
  assign celloutsig_1_9z = ~ celloutsig_1_8z[30:15];
  assign celloutsig_0_4z = in_data[18:0] | { in_data[1:0], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_1_14z = { celloutsig_1_0z[6], celloutsig_1_13z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_12z } | celloutsig_1_1z[13:2];
  assign celloutsig_1_15z = celloutsig_1_14z[8:2] | { celloutsig_1_5z[12:7], celloutsig_1_13z };
  assign celloutsig_0_32z = { celloutsig_0_31z, celloutsig_0_21z, celloutsig_0_15z } >> { celloutsig_0_20z[1], celloutsig_0_21z, celloutsig_0_15z };
  assign celloutsig_0_10z = { in_data[27], celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_5z } >> { in_data[2:1], celloutsig_0_5z, celloutsig_0_6z };
  assign celloutsig_0_18z = { celloutsig_0_3z[7:3], celloutsig_0_10z } >> celloutsig_0_4z[15:7];
  assign celloutsig_0_27z = { celloutsig_0_13z[9:2], celloutsig_0_5z, celloutsig_0_17z } >> { celloutsig_0_20z[11:3], celloutsig_0_9z };
  assign celloutsig_1_0z = in_data[155:149] << in_data[140:134];
  assign celloutsig_1_8z = in_data[164:121] << { in_data[133:122], celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_1_10z = in_data[170:160] << { celloutsig_1_5z[28:26], _00_, celloutsig_1_2z };
  assign celloutsig_0_13z = celloutsig_0_4z[18:9] >> celloutsig_0_12z[15:6];
  assign celloutsig_0_11z = { in_data[39:37], celloutsig_0_8z, celloutsig_0_2z } <<< celloutsig_0_3z[8:4];
  assign celloutsig_0_0z = in_data[74:69] - in_data[72:67];
  assign celloutsig_1_1z = { in_data[155:140], celloutsig_1_0z } - { in_data[176:161], celloutsig_1_0z };
  assign celloutsig_1_5z = { in_data[134:130], celloutsig_1_4z, celloutsig_1_1z } - in_data[141:113];
  assign celloutsig_1_11z = celloutsig_1_0z[5:3] - in_data[135:133];
  assign celloutsig_1_18z = { in_data[120:96], _00_ } - { celloutsig_1_15z[3:0], celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_15z, celloutsig_1_11z };
  assign celloutsig_0_12z = in_data[79:64] - { celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_5z };
  assign celloutsig_0_23z = { celloutsig_0_20z[8:4], celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_19z } - { celloutsig_0_4z[18:4], celloutsig_0_21z, celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_0_14z = celloutsig_0_13z[7:1] ~^ in_data[89:83];
  always_latch
    if (clkin_data[64]) celloutsig_0_3z = 9'h000;
    else if (celloutsig_1_18z[0]) celloutsig_0_3z = { in_data[77:75], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z };
  assign { out_data[159:128], out_data[96], out_data[48:32], out_data[0] } = { celloutsig_1_18z, 1'h0, celloutsig_0_37z, celloutsig_0_38z };
endmodule
