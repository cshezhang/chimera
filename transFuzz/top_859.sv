/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [48:0] _01_;
  reg [48:0] _02_;
  wire celloutsig_0_0z;
  wire [16:0] celloutsig_0_10z;
  wire [2:0] celloutsig_0_12z;
  wire [5:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [2:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [6:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [16:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  reg [15:0] celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire [5:0] celloutsig_0_42z;
  wire [2:0] celloutsig_0_43z;
  wire [6:0] celloutsig_0_45z;
  reg [5:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire [13:0] celloutsig_0_52z;
  wire [5:0] celloutsig_0_5z;
  wire celloutsig_0_62z;
  wire celloutsig_0_63z;
  wire celloutsig_0_6z;
  wire [5:0] celloutsig_0_76z;
  wire celloutsig_0_77z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [11:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [3:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [9:0] celloutsig_1_6z;
  wire [3:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_1z = in_data[43] ? in_data[89] : celloutsig_0_0z;
  assign celloutsig_0_3z = ~(in_data[45] | celloutsig_0_2z);
  assign celloutsig_1_11z = ~(celloutsig_1_0z | celloutsig_1_5z);
  assign celloutsig_0_19z = ~(celloutsig_0_8z | celloutsig_0_7z);
  assign celloutsig_1_8z = ~((celloutsig_1_6z[9] | celloutsig_1_1z) & (celloutsig_1_5z | in_data[134]));
  assign celloutsig_1_18z = ~((celloutsig_1_10z[6] | celloutsig_1_13z) & (celloutsig_1_12z | celloutsig_1_10z[7]));
  assign celloutsig_0_14z = ~((celloutsig_0_9z | celloutsig_0_13z[0]) & (celloutsig_0_10z[13] | celloutsig_0_6z));
  assign celloutsig_0_33z = ~((celloutsig_0_9z | celloutsig_0_21z) & (celloutsig_0_12z[0] | celloutsig_0_13z[4]));
  assign celloutsig_0_4z = celloutsig_0_3z | ~(celloutsig_0_0z);
  assign celloutsig_0_7z = celloutsig_0_6z | ~(in_data[6]);
  assign celloutsig_0_25z = celloutsig_0_18z | ~(celloutsig_0_1z);
  assign celloutsig_0_32z = celloutsig_0_17z[3] | ~(_00_);
  assign celloutsig_0_21z = ~(celloutsig_0_16z ^ celloutsig_0_18z);
  assign celloutsig_0_30z = ~(celloutsig_0_16z ^ celloutsig_0_15z[2]);
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[32])
    if (!clkin_data[32]) _02_ <= 49'h0000000000000;
    else _02_ <= { celloutsig_0_24z, celloutsig_0_26z, celloutsig_0_27z, celloutsig_0_7z, celloutsig_0_37z, _01_[28:27], _00_, celloutsig_0_28z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_16z, celloutsig_0_5z, celloutsig_0_21z, celloutsig_0_30z, celloutsig_0_27z, celloutsig_0_15z, celloutsig_0_42z, celloutsig_0_2z };
  reg [2:0] _18_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[32])
    if (clkin_data[32]) _18_ <= 3'h0;
    else _18_ <= { celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_0z };
  assign { _01_[28:27], _00_ } = _18_;
  assign celloutsig_0_36z = { celloutsig_0_29z[4], celloutsig_0_17z } == { celloutsig_0_32z, celloutsig_0_30z, celloutsig_0_21z, celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_1_13z = { celloutsig_1_6z[8:4], celloutsig_1_7z, celloutsig_1_8z } == { celloutsig_1_6z[9:4], celloutsig_1_6z[7], celloutsig_1_6z[2:0] };
  assign celloutsig_0_27z = { in_data[91:87], celloutsig_0_13z } == { celloutsig_0_10z[9:6], celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_24z, celloutsig_0_15z };
  assign celloutsig_0_40z = celloutsig_0_5z[4:2] >= celloutsig_0_17z[2:0];
  assign celloutsig_0_34z = { celloutsig_0_17z, celloutsig_0_27z, celloutsig_0_24z, celloutsig_0_0z } > { celloutsig_0_25z, celloutsig_0_18z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_27z };
  assign celloutsig_0_9z = { in_data[7:5], celloutsig_0_8z, celloutsig_0_3z } > { celloutsig_0_5z[5:2], celloutsig_0_2z };
  assign celloutsig_0_16z = { celloutsig_0_13z[3:0], _01_[28:27], _00_, celloutsig_0_4z } > { in_data[68:62], celloutsig_0_4z };
  assign celloutsig_1_15z = { celloutsig_1_7z[0], celloutsig_1_4z } && { celloutsig_1_7z, celloutsig_1_13z };
  assign celloutsig_1_19z = { celloutsig_1_9z, celloutsig_1_11z, celloutsig_1_15z, celloutsig_1_13z, celloutsig_1_3z } && { in_data[138:132], celloutsig_1_5z };
  assign celloutsig_0_18z = { in_data[13:12], celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_6z } && { celloutsig_0_13z[5:2], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_0_23z = celloutsig_0_15z && { _00_, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_2z = { in_data[84:64], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } && { in_data[26:6], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_0_6z = ! { in_data[95:93], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_1z = ! { in_data[188], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_26z = ! { celloutsig_0_10z[10:2], celloutsig_0_7z, celloutsig_0_7z, _01_[28:27], _00_, celloutsig_0_0z };
  assign celloutsig_0_63z = { celloutsig_0_32z, celloutsig_0_45z, celloutsig_0_15z } < { celloutsig_0_52z[11:10], celloutsig_0_4z, celloutsig_0_62z, celloutsig_0_1z, celloutsig_0_35z, celloutsig_0_8z, celloutsig_0_43z, celloutsig_0_51z };
  assign celloutsig_1_5z = { in_data[156:154], celloutsig_1_0z, celloutsig_1_4z } < in_data[186:179];
  assign celloutsig_0_0z = in_data[57] & ~(in_data[35]);
  assign celloutsig_0_35z = celloutsig_0_6z & ~(celloutsig_0_7z);
  assign celloutsig_0_77z = celloutsig_0_63z & ~(celloutsig_0_23z);
  assign celloutsig_0_28z = celloutsig_0_15z[2] & ~(celloutsig_0_14z);
  assign celloutsig_1_4z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z } % { 1'h1, celloutsig_1_3z[1:0], in_data[96] };
  assign celloutsig_1_10z = { celloutsig_1_3z[1], celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_8z } % { 1'h1, in_data[176:171], celloutsig_1_7z, in_data[96] };
  assign celloutsig_0_17z = { celloutsig_0_12z[2], celloutsig_0_5z } % { 1'h1, _01_[28:27], _00_, _01_[28:27], _00_ };
  assign celloutsig_0_15z = { celloutsig_0_10z[2:1], celloutsig_0_14z } * { celloutsig_0_5z[3:2], celloutsig_0_8z };
  assign celloutsig_0_24z = in_data[25:12] != { celloutsig_0_17z[2:1], celloutsig_0_16z, celloutsig_0_23z, celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_2z, celloutsig_0_7z };
  assign celloutsig_0_42z = - { celloutsig_0_13z[3:0], celloutsig_0_0z, celloutsig_0_27z };
  assign celloutsig_1_3z = - { in_data[183:182], celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_7z = - { celloutsig_1_6z[4], celloutsig_1_6z[7], celloutsig_1_6z[2], celloutsig_1_0z };
  assign celloutsig_0_12z = - { celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_3z };
  assign celloutsig_0_51z = & { _02_[44:24], celloutsig_0_30z, celloutsig_0_27z, celloutsig_0_7z };
  assign celloutsig_1_12z = & in_data[152:150];
  assign celloutsig_1_0z = in_data[181] & in_data[172];
  assign celloutsig_0_62z = | celloutsig_0_13z[5:1];
  assign celloutsig_0_8z = | { celloutsig_0_6z, celloutsig_0_5z[2:0], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_0_29z = { in_data[69:54], celloutsig_0_27z } >> { celloutsig_0_28z, celloutsig_0_12z, celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_25z, celloutsig_0_23z, celloutsig_0_19z, celloutsig_0_3z, celloutsig_0_24z, celloutsig_0_24z, celloutsig_0_26z };
  assign celloutsig_0_43z = { celloutsig_0_18z, celloutsig_0_34z, celloutsig_0_8z } >>> celloutsig_0_37z[3:1];
  assign celloutsig_0_5z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_1z } >>> { in_data[84:81], celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_45z = { celloutsig_0_43z, celloutsig_0_23z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_25z } - { _02_[12:11], celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_28z };
  assign celloutsig_0_52z = { celloutsig_0_15z[1], celloutsig_0_48z, celloutsig_0_40z, celloutsig_0_48z } - { celloutsig_0_37z[12:0], celloutsig_0_4z };
  assign celloutsig_0_13z = in_data[25:20] - { celloutsig_0_12z[2:1], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_76z = { celloutsig_0_10z[13:10], celloutsig_0_26z, celloutsig_0_21z } ~^ celloutsig_0_42z;
  assign celloutsig_1_9z = ~((celloutsig_1_7z[1] & in_data[113]) | in_data[150]);
  always_latch
    if (clkin_data[32]) celloutsig_0_37z = 16'h0000;
    else if (clkin_data[128]) celloutsig_0_37z = { celloutsig_0_10z[8:4], celloutsig_0_33z, celloutsig_0_36z, celloutsig_0_26z, celloutsig_0_36z, celloutsig_0_17z };
  always_latch
    if (clkin_data[64]) celloutsig_0_48z = 6'h00;
    else if (!clkin_data[128]) celloutsig_0_48z = celloutsig_0_13z;
  assign celloutsig_0_10z[16:1] = in_data[49:34] ~^ { celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_8z };
  assign { celloutsig_1_6z[8:7], celloutsig_1_6z[2], celloutsig_1_6z[6], celloutsig_1_6z[1], celloutsig_1_6z[5:4], celloutsig_1_6z[0], celloutsig_1_6z[9] } = { celloutsig_1_5z, celloutsig_1_3z[3:2], celloutsig_1_3z[2:1], celloutsig_1_3z[1:0], celloutsig_1_3z[0], in_data[151] } | { celloutsig_1_3z[1:0], celloutsig_1_5z, celloutsig_1_3z[3], celloutsig_1_5z, celloutsig_1_3z[2:1], celloutsig_1_0z, celloutsig_1_3z[2] };
  assign { _01_[48:29], _01_[26:0] } = { celloutsig_0_24z, celloutsig_0_26z, celloutsig_0_27z, celloutsig_0_7z, celloutsig_0_37z, _00_, celloutsig_0_28z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_7z, celloutsig_0_16z, celloutsig_0_5z, celloutsig_0_21z, celloutsig_0_30z, celloutsig_0_27z, celloutsig_0_15z, celloutsig_0_42z, celloutsig_0_2z };
  assign celloutsig_0_10z[0] = 1'h1;
  assign celloutsig_1_6z[3] = celloutsig_1_6z[7];
  assign { out_data[128], out_data[96], out_data[37:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_76z, celloutsig_0_77z };
endmodule
