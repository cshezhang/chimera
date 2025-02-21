/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] _00_;
  wire celloutsig_0_0z;
  reg [9:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(negedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _00_ <= 3'h0;
    else _00_ <= { in_data[87], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_0z = in_data[88:70] > in_data[78:60];
  assign celloutsig_0_3z = { in_data[84:81], celloutsig_0_2z } > in_data[10:6];
  assign celloutsig_0_32z = { celloutsig_0_9z, celloutsig_0_24z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_3z } > { celloutsig_0_28z, celloutsig_0_1z, celloutsig_0_31z, celloutsig_0_8z, celloutsig_0_28z };
  assign celloutsig_0_34z = { in_data[69:59], celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_17z, celloutsig_0_21z, celloutsig_0_14z, celloutsig_0_24z, celloutsig_0_22z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_32z } > { in_data[84:71], celloutsig_0_15z, celloutsig_0_19z, celloutsig_0_25z, celloutsig_0_20z, celloutsig_0_11z, celloutsig_0_20z, celloutsig_0_8z };
  assign celloutsig_0_37z = { celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_22z, celloutsig_0_15z, celloutsig_0_25z, celloutsig_0_14z } > { celloutsig_0_28z, celloutsig_0_6z, celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_22z, celloutsig_0_1z };
  assign celloutsig_0_38z = { in_data[32:19], celloutsig_0_0z } > { celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_18z, _00_, celloutsig_0_11z, celloutsig_0_16z, celloutsig_0_34z, celloutsig_0_31z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_0z = in_data[164:162] > in_data[124:122];
  assign celloutsig_1_1z = { in_data[179], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } > in_data[190:187];
  assign celloutsig_1_2z = { in_data[155:150], celloutsig_1_0z, celloutsig_1_1z } > { in_data[148:143], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_4z = { in_data[52:50], celloutsig_0_3z } > { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_2z };
  assign celloutsig_1_3z = { in_data[132:112], celloutsig_1_1z } > { in_data[157:137], celloutsig_1_1z };
  assign celloutsig_1_4z = { in_data[169:165], celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z } > in_data[169:160];
  assign celloutsig_1_5z = { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_4z } > { in_data[152:151], celloutsig_1_1z };
  assign celloutsig_1_6z = { in_data[171:168], celloutsig_1_1z } > in_data[129:125];
  assign celloutsig_1_7z = { in_data[165:152], celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_3z } > { in_data[156:136], celloutsig_1_4z };
  assign celloutsig_1_8z = { celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_1z } > { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_1_9z = { in_data[132:125], celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_0z } > { celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_7z };
  assign celloutsig_1_10z = { celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_2z } > { celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_8z };
  assign celloutsig_1_11z = { in_data[119:102], celloutsig_1_10z } > { celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_7z };
  assign celloutsig_1_12z = { celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_0z } > { celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_9z };
  assign celloutsig_0_5z = { in_data[14:13], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_0z } > { in_data[94], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_1_13z = { in_data[136:132], celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_6z } > { celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_1_14z = { celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_1z } > { celloutsig_1_2z, celloutsig_1_12z, celloutsig_1_2z };
  assign celloutsig_1_15z = { celloutsig_1_14z, celloutsig_1_13z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_5z } > { celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_9z };
  assign celloutsig_1_16z = { celloutsig_1_5z, celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_13z } > { celloutsig_1_15z, celloutsig_1_12z, celloutsig_1_1z, celloutsig_1_15z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_15z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_15z };
  assign celloutsig_1_17z = { celloutsig_1_3z, celloutsig_1_15z, celloutsig_1_14z, celloutsig_1_14z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_16z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_4z } > { in_data[156:150], celloutsig_1_11z, celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_7z };
  assign celloutsig_1_18z = { in_data[105:99], celloutsig_1_17z } > { in_data[144:138], celloutsig_1_5z };
  assign celloutsig_1_19z = { celloutsig_1_2z, celloutsig_1_6z, celloutsig_1_11z, celloutsig_1_6z } > { celloutsig_1_12z, celloutsig_1_15z, celloutsig_1_8z, celloutsig_1_4z };
  assign celloutsig_0_6z = { celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_1z } > { in_data[3:0], celloutsig_0_4z };
  assign celloutsig_0_8z = { celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_5z } > { in_data[31:30], celloutsig_0_3z };
  assign celloutsig_0_9z = { celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_1z } > { _00_, celloutsig_0_4z };
  assign celloutsig_0_11z = { in_data[65:59], celloutsig_0_6z, celloutsig_0_3z } > celloutsig_0_10z[9:1];
  assign celloutsig_0_1z = { in_data[53:51], celloutsig_0_0z } > { in_data[10:8], celloutsig_0_0z };
  assign celloutsig_0_12z = { in_data[81:71], _00_, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_5z } > { celloutsig_0_10z[8:2], celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_13z = { _00_[2:1], celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_0z } > in_data[9:2];
  assign celloutsig_0_14z = { in_data[44:40], celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_1z, _00_, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_4z } > { in_data[25:10], celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_13z };
  assign celloutsig_0_15z = { _00_, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_10z } > { celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_4z, _00_, celloutsig_0_8z, celloutsig_0_8z, _00_, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_0z, _00_ };
  assign celloutsig_0_16z = { celloutsig_0_10z[8:2], celloutsig_0_5z, celloutsig_0_12z } > { in_data[17:12], celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_0_17z = { in_data[88:83], celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_16z } > { in_data[15:7], celloutsig_0_0z };
  assign celloutsig_0_18z = { celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_17z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_15z, celloutsig_0_1z } > { celloutsig_0_10z[8:1], celloutsig_0_15z };
  assign celloutsig_0_19z = { celloutsig_0_10z[9:2], _00_, celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_3z, _00_, celloutsig_0_14z } > { in_data[62:51], celloutsig_0_9z, _00_, celloutsig_0_18z, celloutsig_0_5z, celloutsig_0_9z };
  assign celloutsig_0_20z = { celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_13z } > in_data[76:63];
  assign celloutsig_0_21z = { in_data[66:59], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_14z } > { celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_10z };
  assign celloutsig_0_2z = in_data[94:86] > { in_data[92:90], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_22z = { in_data[76:70], celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_21z } > { celloutsig_0_4z, celloutsig_0_6z, _00_, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_20z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_19z, celloutsig_0_1z, celloutsig_0_13z };
  assign celloutsig_0_23z = { in_data[8:0], celloutsig_0_18z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_3z } > { in_data[81:73], celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_15z, celloutsig_0_14z };
  assign celloutsig_0_24z = { celloutsig_0_13z, celloutsig_0_4z, celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_5z, celloutsig_0_20z, celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_17z, celloutsig_0_9z, celloutsig_0_15z } > { celloutsig_0_10z[9:4], celloutsig_0_21z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_20z, celloutsig_0_23z, celloutsig_0_12z, celloutsig_0_9z };
  assign celloutsig_0_25z = { in_data[58:54], celloutsig_0_1z, celloutsig_0_8z } > { in_data[76:71], celloutsig_0_14z };
  assign celloutsig_0_26z = { in_data[39:18], celloutsig_0_22z, celloutsig_0_24z } > { in_data[68:50], celloutsig_0_5z, celloutsig_0_22z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_12z };
  assign celloutsig_0_27z = in_data[12:10] > { celloutsig_0_14z, celloutsig_0_0z, celloutsig_0_25z };
  assign celloutsig_0_28z = { celloutsig_0_25z, celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_8z } > { in_data[56], celloutsig_0_9z, celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_14z };
  assign celloutsig_0_29z = { _00_[2:1], celloutsig_0_28z, celloutsig_0_12z } > { celloutsig_0_10z[9], _00_ };
  assign celloutsig_0_30z = { in_data[68:54], celloutsig_0_23z, celloutsig_0_27z, celloutsig_0_3z, celloutsig_0_24z, celloutsig_0_9z, celloutsig_0_22z, celloutsig_0_9z, _00_, celloutsig_0_17z, celloutsig_0_1z, celloutsig_0_24z, celloutsig_0_25z, celloutsig_0_9z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_19z } > { in_data[68:40], celloutsig_0_23z, celloutsig_0_19z, celloutsig_0_6z, celloutsig_0_25z, celloutsig_0_16z };
  assign celloutsig_0_31z = { celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_29z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_13z, celloutsig_0_28z, celloutsig_0_23z, celloutsig_0_19z, celloutsig_0_17z, celloutsig_0_30z, celloutsig_0_4z, celloutsig_0_26z, celloutsig_0_6z, celloutsig_0_26z, celloutsig_0_9z, celloutsig_0_15z, celloutsig_0_0z, celloutsig_0_30z, celloutsig_0_21z, celloutsig_0_13z } > { _00_, celloutsig_0_18z, celloutsig_0_18z, celloutsig_0_26z, celloutsig_0_3z, celloutsig_0_11z, celloutsig_0_26z, celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_21z, celloutsig_0_22z, celloutsig_0_9z, celloutsig_0_8z, _00_, celloutsig_0_16z, celloutsig_0_21z, celloutsig_0_19z, celloutsig_0_0z, celloutsig_0_20z };
  always_latch
    if (clkin_data[32]) celloutsig_0_10z = 10'h000;
    else if (!celloutsig_1_19z) celloutsig_0_10z = { celloutsig_0_8z, celloutsig_0_4z, _00_, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_37z, celloutsig_0_38z };
endmodule
