/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] _00_;
  wire [10:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [8:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [3:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [2:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  reg [5:0] celloutsig_0_20z;
  wire [5:0] celloutsig_0_21z;
  wire [17:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  reg [14:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [4:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire [7:0] celloutsig_0_34z;
  wire [3:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire [2:0] celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [3:0] celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire [34:0] celloutsig_0_45z;
  wire [12:0] celloutsig_0_50z;
  wire [4:0] celloutsig_0_53z;
  wire celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [12:0] celloutsig_0_70z;
  wire celloutsig_0_76z;
  wire celloutsig_0_77z;
  wire celloutsig_0_7z;
  wire [2:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [5:0] celloutsig_1_0z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire [2:0] celloutsig_1_17z;
  reg [2:0] celloutsig_1_18z;
  wire [28:0] celloutsig_1_19z;
  wire [15:0] celloutsig_1_1z;
  wire [3:0] celloutsig_1_2z;
  wire [9:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [14:0] celloutsig_1_5z;
  reg [4:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_38z = !(celloutsig_0_17z ? celloutsig_0_6z : celloutsig_0_15z);
  assign celloutsig_0_55z = !(celloutsig_0_45z[5] ? celloutsig_0_19z : celloutsig_0_0z[2]);
  assign celloutsig_0_15z = !(celloutsig_0_2z ? celloutsig_0_10z[0] : celloutsig_0_11z);
  assign celloutsig_0_9z = ~(celloutsig_0_8z[0] | celloutsig_0_6z);
  assign celloutsig_0_77z = celloutsig_0_30z | ~(celloutsig_0_59z);
  assign celloutsig_1_12z = celloutsig_1_4z | in_data[171];
  assign celloutsig_0_45z = { celloutsig_0_15z, celloutsig_0_29z, celloutsig_0_23z, celloutsig_0_5z, celloutsig_0_36z, celloutsig_0_41z, celloutsig_0_24z, celloutsig_0_26z, celloutsig_0_0z, celloutsig_0_44z, celloutsig_0_25z } + { in_data[72:41], celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_9z };
  assign celloutsig_0_70z = { celloutsig_0_2z, celloutsig_0_59z, celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_28z } + { celloutsig_0_53z[1:0], celloutsig_0_32z, celloutsig_0_8z, celloutsig_0_38z, celloutsig_0_53z, celloutsig_0_57z };
  assign celloutsig_0_8z = _00_ + _00_;
  always_ff @(posedge celloutsig_1_18z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _00_ <= 3'h0;
    else _00_ <= celloutsig_0_3z[3:1];
  assign celloutsig_1_0z = in_data[187:182] & in_data[135:130];
  assign celloutsig_0_44z = celloutsig_0_0z[4:0] == { celloutsig_0_18z[1:0], celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_27z };
  assign celloutsig_0_41z = in_data[64:57] >= { celloutsig_0_15z, celloutsig_0_23z, celloutsig_0_23z, celloutsig_0_6z, celloutsig_0_8z, celloutsig_0_33z };
  assign celloutsig_0_57z = { in_data[77:76], celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_55z, celloutsig_0_32z } > { celloutsig_0_10z[1], _00_, celloutsig_0_36z, celloutsig_0_16z, celloutsig_0_32z, celloutsig_0_23z };
  assign celloutsig_0_76z = { _00_[1], celloutsig_0_50z, celloutsig_0_15z, celloutsig_0_56z, celloutsig_0_37z } > { celloutsig_0_20z[2:0], celloutsig_0_9z, celloutsig_0_26z, celloutsig_0_44z, celloutsig_0_70z };
  assign celloutsig_1_4z = celloutsig_1_0z[4:2] > celloutsig_1_1z[11:9];
  assign celloutsig_0_11z = { celloutsig_0_8z[1], celloutsig_0_3z } > { celloutsig_0_8z[2:1], celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_0_17z = celloutsig_0_14z[5:3] > celloutsig_0_8z;
  assign celloutsig_0_30z = { celloutsig_0_22z[8:1], celloutsig_0_26z } > { in_data[54:49], celloutsig_0_1z, celloutsig_0_28z, celloutsig_0_6z };
  assign celloutsig_1_8z = { celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_4z } <= celloutsig_1_5z[14:8];
  assign celloutsig_0_23z = { celloutsig_0_21z[2:0], celloutsig_0_15z, celloutsig_0_7z } <= { celloutsig_0_18z[2], celloutsig_0_6z, celloutsig_0_13z, celloutsig_0_19z, celloutsig_0_5z };
  assign celloutsig_0_39z = ! { celloutsig_0_14z[6:3], celloutsig_0_37z };
  assign celloutsig_0_42z = ! { celloutsig_0_26z, celloutsig_0_35z };
  assign celloutsig_0_5z = ! { celloutsig_0_2z, _00_, celloutsig_0_1z, _00_ };
  assign celloutsig_0_59z = ! { celloutsig_0_22z[16:11], celloutsig_0_37z };
  assign celloutsig_0_7z = ! { celloutsig_0_0z[4:3], celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_1_7z = ! { celloutsig_1_0z[5:1], celloutsig_1_4z, celloutsig_1_2z };
  assign celloutsig_0_19z = ! { celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_5z };
  assign celloutsig_0_6z = { in_data[77:75], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_2z } || { celloutsig_0_0z[5], celloutsig_0_3z, celloutsig_0_5z, _00_ };
  assign celloutsig_0_26z = celloutsig_0_20z[5:2] || { celloutsig_0_18z, celloutsig_0_17z };
  assign celloutsig_0_29z = { celloutsig_0_24z[6:4], celloutsig_0_3z } || celloutsig_0_24z[8:2];
  assign celloutsig_0_36z = { celloutsig_0_24z[8], celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_20z } < { celloutsig_0_31z[4:1], celloutsig_0_26z, celloutsig_0_23z, celloutsig_0_28z, celloutsig_0_9z, celloutsig_0_33z };
  assign celloutsig_0_12z = { celloutsig_0_0z[8:7], celloutsig_0_11z, celloutsig_0_3z } < { in_data[20:15], celloutsig_0_9z };
  assign celloutsig_0_2z = celloutsig_0_0z < in_data[31:21];
  assign celloutsig_0_25z = celloutsig_0_14z[7:5] < { celloutsig_0_21z[5], celloutsig_0_12z, celloutsig_0_11z };
  assign celloutsig_0_34z = celloutsig_0_14z[8:1] * { celloutsig_0_21z[5], celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_27z, celloutsig_0_9z, celloutsig_0_28z };
  assign celloutsig_0_53z = { celloutsig_0_45z[29:26], celloutsig_0_39z } * celloutsig_0_50z[9:5];
  assign celloutsig_1_19z = { celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_17z } * { in_data[181:162], celloutsig_1_0z, celloutsig_1_17z };
  assign celloutsig_0_3z = { celloutsig_0_0z[2:0], celloutsig_0_1z } * { celloutsig_0_0z[5:3], celloutsig_0_1z };
  assign celloutsig_0_0z = - in_data[86:76];
  assign celloutsig_0_50z = - { celloutsig_0_45z[15:6], celloutsig_0_32z, celloutsig_0_44z, celloutsig_0_23z };
  assign celloutsig_1_1z = - { celloutsig_1_0z[5:2], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_21z = - { in_data[23:20], celloutsig_0_17z, celloutsig_0_12z };
  assign celloutsig_0_1z = celloutsig_0_0z[8:3] !== celloutsig_0_0z[6:1];
  assign celloutsig_1_3z = { celloutsig_1_0z, celloutsig_1_2z } | { in_data[151:148], celloutsig_1_0z };
  assign celloutsig_0_10z = { celloutsig_0_0z[10:8], celloutsig_0_2z } | { _00_, celloutsig_0_7z };
  assign celloutsig_0_16z = { celloutsig_0_14z[6:5], celloutsig_0_9z, celloutsig_0_12z } | { celloutsig_0_2z, celloutsig_0_8z };
  assign celloutsig_0_28z = | { celloutsig_0_7z, celloutsig_0_3z };
  assign celloutsig_0_32z = | { celloutsig_0_22z[10:2], celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_2z };
  assign celloutsig_0_33z = | { celloutsig_0_25z, celloutsig_0_16z[1:0], celloutsig_0_13z };
  assign celloutsig_0_56z = ~^ { celloutsig_0_36z, celloutsig_0_3z, celloutsig_0_42z, celloutsig_0_44z, celloutsig_0_27z, celloutsig_0_9z };
  assign celloutsig_1_14z = ~^ celloutsig_1_5z[12:10];
  assign celloutsig_0_27z = ~^ { celloutsig_0_24z[8:0], celloutsig_0_12z, celloutsig_0_26z, celloutsig_0_8z };
  assign celloutsig_1_2z = in_data[110:107] >> celloutsig_1_0z[3:0];
  assign celloutsig_1_5z = { celloutsig_1_1z[5:3], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_3z } >> { celloutsig_1_1z[12:5], celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_1_17z = in_data[171:169] >> { celloutsig_1_1z[9:8], celloutsig_1_14z };
  assign celloutsig_0_35z = { celloutsig_0_17z, celloutsig_0_18z } << { celloutsig_0_0z[7], celloutsig_0_18z };
  assign celloutsig_0_22z = { in_data[28:13], celloutsig_0_9z, celloutsig_0_1z } << { celloutsig_0_21z, celloutsig_0_21z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_13z };
  assign celloutsig_0_37z = { celloutsig_0_3z[0], celloutsig_0_5z, celloutsig_0_12z } - { celloutsig_0_34z[5:4], celloutsig_0_12z };
  assign celloutsig_0_14z = { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_10z } - { celloutsig_0_0z[8:1], celloutsig_0_7z };
  assign celloutsig_0_18z = celloutsig_0_16z[2:0] - celloutsig_0_16z[3:1];
  assign celloutsig_0_31z = { celloutsig_0_20z[2:0], celloutsig_0_25z, celloutsig_0_2z } - { celloutsig_0_24z[12:9], celloutsig_0_2z };
  always_latch
    if (clkin_data[32]) celloutsig_1_6z = 5'h00;
    else if (!clkin_data[128]) celloutsig_1_6z = { in_data[138], celloutsig_1_2z };
  always_latch
    if (clkin_data[64]) celloutsig_1_18z = 3'h0;
    else if (!clkin_data[128]) celloutsig_1_18z = { celloutsig_1_17z[2:1], celloutsig_1_8z };
  always_latch
    if (clkin_data[0]) celloutsig_0_20z = 6'h00;
    else if (!clkin_data[96]) celloutsig_0_20z = { celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_19z };
  always_latch
    if (clkin_data[0]) celloutsig_0_24z = 15'h0000;
    else if (!clkin_data[96]) celloutsig_0_24z = { celloutsig_0_10z[2:1], celloutsig_0_23z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_20z, celloutsig_0_11z, celloutsig_0_1z };
  assign celloutsig_0_13z = ~((celloutsig_0_5z & celloutsig_0_8z[1]) | (celloutsig_0_7z & celloutsig_0_6z));
  assign { out_data[130:128], out_data[124:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_76z, celloutsig_0_77z };
endmodule
