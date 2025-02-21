/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  reg [19:0] _02_;
  wire [2:0] _03_;
  reg [11:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [4:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  reg [19:0] celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [2:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [9:0] celloutsig_0_28z;
  wire [11:0] celloutsig_0_29z;
  wire [44:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire [12:0] celloutsig_0_32z;
  wire [12:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire [4:0] celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [11:0] celloutsig_0_41z;
  wire [4:0] celloutsig_0_43z;
  wire celloutsig_0_46z;
  wire [3:0] celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire [10:0] celloutsig_0_50z;
  wire celloutsig_0_5z;
  wire [9:0] celloutsig_0_6z;
  wire [20:0] celloutsig_0_7z;
  wire celloutsig_0_83z;
  wire celloutsig_0_84z;
  wire celloutsig_0_8z;
  wire [6:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [4:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire [14:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  reg [11:0] celloutsig_1_3z;
  wire [32:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [7:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_37z = celloutsig_0_21z ? celloutsig_0_3z : celloutsig_0_17z;
  assign celloutsig_0_25z = celloutsig_0_22z ? in_data[80] : celloutsig_0_0z;
  assign celloutsig_0_83z = ~(celloutsig_0_16z & celloutsig_0_9z[2]);
  assign celloutsig_0_84z = ~(celloutsig_0_32z[1] & celloutsig_0_50z[3]);
  assign celloutsig_0_4z = !(celloutsig_0_0z ? celloutsig_0_3z : in_data[17]);
  assign celloutsig_0_21z = !(celloutsig_0_18z[13] ? celloutsig_0_13z : in_data[37]);
  assign celloutsig_1_6z = ~(celloutsig_1_2z | celloutsig_1_4z[4]);
  assign celloutsig_1_14z = ~(in_data[175] | celloutsig_1_7z);
  assign celloutsig_0_12z = ~(celloutsig_0_6z[7] | celloutsig_0_6z[4]);
  assign celloutsig_1_2z = ~((in_data[161] | celloutsig_1_1z[4]) & (in_data[147] | celloutsig_1_1z[3]));
  assign celloutsig_1_12z = ~((in_data[181] | celloutsig_1_10z) & (celloutsig_1_7z | celloutsig_1_4z[27]));
  assign celloutsig_0_31z = _01_ | ~(celloutsig_0_30z);
  assign celloutsig_0_46z = celloutsig_0_38z[2] | celloutsig_0_43z[1];
  assign celloutsig_1_18z = celloutsig_1_13z | celloutsig_1_6z;
  assign celloutsig_0_20z = ~(celloutsig_0_9z[1] ^ celloutsig_0_18z[2]);
  assign celloutsig_1_1z = in_data[184:170] + in_data[167:153];
  assign celloutsig_0_14z = { celloutsig_0_6z[5:4], celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_3z } + { celloutsig_0_2z[29:26], celloutsig_0_11z };
  reg [2:0] _22_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[64])
    if (!clkin_data[64]) _22_ <= 3'h0;
    else _22_ <= { in_data[89], celloutsig_0_5z, celloutsig_0_5z };
  assign { _03_[2], _01_, _00_ } = _22_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[96])
    if (clkin_data[96]) _02_ <= 20'h00000;
    else _02_ <= { celloutsig_1_16z[4:3], celloutsig_1_3z, celloutsig_1_16z, celloutsig_1_14z };
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _04_ <= 12'h000;
    else _04_ <= celloutsig_0_7z[18:7];
  assign celloutsig_0_35z = { celloutsig_0_29z[2:0], celloutsig_0_17z, _03_[2], _01_, _00_, celloutsig_0_20z, celloutsig_0_21z, celloutsig_0_30z, celloutsig_0_17z } == celloutsig_0_34z[12:2];
  assign celloutsig_0_16z = { celloutsig_0_14z[4], _03_[2], _01_, _00_ } == { celloutsig_0_6z[6:5], celloutsig_0_1z, celloutsig_0_15z };
  assign celloutsig_0_3z = celloutsig_0_2z[14:6] == celloutsig_0_2z[9:1];
  assign celloutsig_0_22z = { celloutsig_0_6z[8:4], celloutsig_0_17z, celloutsig_0_12z } >= in_data[68:62];
  assign celloutsig_0_5z = celloutsig_0_2z[7:3] > { celloutsig_0_2z[36:33], celloutsig_0_1z };
  assign celloutsig_0_13z = { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_11z } > { _03_[2], _01_, _00_, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_26z = { in_data[94:91], _04_, celloutsig_0_0z } > { celloutsig_0_7z[19:7], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_0z };
  assign celloutsig_1_5z = celloutsig_1_4z[15:13] <= celloutsig_1_4z[9:7];
  assign celloutsig_0_11z = { _01_, _00_, celloutsig_0_1z } <= celloutsig_0_9z[3:1];
  assign celloutsig_0_30z = { in_data[22:11], celloutsig_0_6z } <= { celloutsig_0_2z[38:19], celloutsig_0_23z, celloutsig_0_26z };
  assign celloutsig_1_13z = ! { celloutsig_1_10z, celloutsig_1_7z, celloutsig_1_9z };
  assign celloutsig_0_23z = ! { celloutsig_0_7z[15:4], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_0z };
  assign celloutsig_0_38z = { celloutsig_0_14z[3:1], celloutsig_0_8z, celloutsig_0_20z } % { 1'h1, celloutsig_0_29z[2:0], celloutsig_0_25z };
  assign celloutsig_0_9z = { celloutsig_0_7z[14:10], celloutsig_0_0z, celloutsig_0_4z } % { 1'h1, celloutsig_0_6z[8:4], celloutsig_0_8z };
  assign celloutsig_0_32z = { in_data[84:77], celloutsig_0_4z, celloutsig_0_24z, celloutsig_0_12z } % { 1'h1, in_data[37:26] };
  assign celloutsig_0_6z = { in_data[95:91], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_4z } % { 1'h1, celloutsig_0_2z[26:19], in_data[0] };
  assign celloutsig_1_16z = in_data[102:98] % { 1'h1, celloutsig_1_14z, celloutsig_1_14z, celloutsig_1_9z, celloutsig_1_2z };
  assign celloutsig_1_19z = { _02_[4:3], celloutsig_1_11z, celloutsig_1_12z, celloutsig_1_11z } % { 1'h1, celloutsig_1_3z[10:7] };
  assign celloutsig_0_29z = { _04_[8], celloutsig_0_28z, celloutsig_0_11z } % { 1'h1, celloutsig_0_2z[37:31], _03_[2], _01_, _00_, in_data[0] };
  assign celloutsig_0_7z = - { in_data[83:76], celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_2z = - { in_data[42:1], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_0z = in_data[17:15] !== in_data[2:0];
  assign celloutsig_0_40z = | { celloutsig_0_37z, celloutsig_0_18z };
  assign celloutsig_1_10z = ~^ celloutsig_1_3z[8:2];
  assign celloutsig_1_11z = ~^ { celloutsig_1_4z[32], celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_1_0z = ^ in_data[103:98];
  assign celloutsig_0_1z = ^ { in_data[51:50], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_15z = ^ celloutsig_0_9z;
  assign celloutsig_0_17z = ^ celloutsig_0_7z[17:9];
  assign celloutsig_1_8z = celloutsig_1_4z[13:6] >> celloutsig_1_3z[7:0];
  assign celloutsig_0_50z = { celloutsig_0_41z[10:5], celloutsig_0_47z, celloutsig_0_16z } << { celloutsig_0_9z[6:3], celloutsig_0_26z, celloutsig_0_46z, celloutsig_0_14z };
  assign celloutsig_0_28z = in_data[60:51] >> celloutsig_0_6z;
  assign celloutsig_0_34z = { celloutsig_0_29z[9:1], celloutsig_0_1z, celloutsig_0_21z, celloutsig_0_0z, celloutsig_0_31z } <<< { celloutsig_0_7z[20:16], celloutsig_0_9z, celloutsig_0_5z };
  assign celloutsig_0_41z = { celloutsig_0_28z[8:0], celloutsig_0_24z } <<< { in_data[53:43], celloutsig_0_20z };
  assign celloutsig_0_47z = { celloutsig_0_43z[4:2], celloutsig_0_21z } <<< { celloutsig_0_26z, celloutsig_0_1z, celloutsig_0_37z, celloutsig_0_35z };
  assign celloutsig_0_24z = { celloutsig_0_3z, celloutsig_0_22z, celloutsig_0_8z } <<< { celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_5z };
  assign celloutsig_0_43z = { celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_40z, celloutsig_0_17z, celloutsig_0_17z } - celloutsig_0_34z[9:5];
  assign celloutsig_1_4z = { celloutsig_1_3z[10:9], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_3z } - { celloutsig_1_1z[12:5], celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z };
  assign celloutsig_0_8z = ~((celloutsig_0_6z[3] & celloutsig_0_2z[19]) | celloutsig_0_4z);
  assign celloutsig_1_7z = ~((celloutsig_1_0z & celloutsig_1_6z) | celloutsig_1_5z);
  assign celloutsig_1_9z = ~((celloutsig_1_8z[6] & celloutsig_1_7z) | celloutsig_1_5z);
  always_latch
    if (clkin_data[96]) celloutsig_1_3z = 12'h000;
    else if (clkin_data[160]) celloutsig_1_3z = celloutsig_1_1z[13:2];
  always_latch
    if (clkin_data[32]) celloutsig_0_18z = 20'h00000;
    else if (!clkin_data[128]) celloutsig_0_18z = { celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_11z, celloutsig_0_9z, _03_[2], _01_, _00_, celloutsig_0_5z };
  assign _03_[1:0] = { _01_, _00_ };
  assign { out_data[128], out_data[100:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_83z, celloutsig_0_84z };
endmodule
