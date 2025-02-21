/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  reg [14:0] _03_;
  wire [4:0] _04_;
  wire [3:0] _05_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [16:0] celloutsig_0_13z;
  reg [31:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [4:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [5:0] celloutsig_0_20z;
  wire [20:0] celloutsig_0_21z;
  wire [9:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [5:0] celloutsig_0_25z;
  wire [21:0] celloutsig_0_26z;
  wire [5:0] celloutsig_0_27z;
  wire [7:0] celloutsig_0_28z;
  wire [9:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [7:0] celloutsig_0_31z;
  wire [10:0] celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire [8:0] celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [5:0] celloutsig_0_38z;
  wire [9:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [15:0] celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [6:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire [16:0] celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [12:0] celloutsig_0_50z;
  wire celloutsig_0_55z;
  wire celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire [7:0] celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire celloutsig_0_6z;
  wire [20:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [2:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [5:0] celloutsig_1_15z;
  wire [4:0] celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [25:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [2:0] celloutsig_1_2z;
  wire [25:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [5:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [2:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_9z = celloutsig_0_7z[15] ? celloutsig_0_0z : celloutsig_0_1z;
  assign celloutsig_0_23z = celloutsig_0_10z ? in_data[53] : celloutsig_0_1z;
  assign celloutsig_0_2z = celloutsig_0_0z ? celloutsig_0_0z : in_data[54];
  assign celloutsig_0_64z = ~celloutsig_0_50z[1];
  assign celloutsig_0_5z = ~_01_;
  assign celloutsig_1_11z = ~celloutsig_1_7z[3];
  assign celloutsig_1_14z = ~celloutsig_1_6z;
  assign celloutsig_1_18z = ~celloutsig_1_1z;
  assign celloutsig_0_43z = ~((celloutsig_0_38z[5] | celloutsig_0_42z[0]) & celloutsig_0_26z[6]);
  assign celloutsig_0_4z = ~((_02_ | celloutsig_0_2z) & celloutsig_0_0z);
  assign celloutsig_1_6z = ~((celloutsig_1_5z[1] | celloutsig_1_0z) & celloutsig_1_1z);
  assign celloutsig_0_1z = ~((celloutsig_0_0z | in_data[40]) & in_data[59]);
  assign celloutsig_0_16z = ~((celloutsig_0_10z | celloutsig_0_10z) & celloutsig_0_11z);
  assign celloutsig_0_36z = celloutsig_0_20z[2] | ~(celloutsig_0_4z);
  assign celloutsig_0_37z = celloutsig_0_26z[12] | ~(celloutsig_0_1z);
  assign celloutsig_0_19z = celloutsig_0_15z | ~(celloutsig_0_0z);
  assign celloutsig_1_0z = ~(in_data[116] ^ in_data[176]);
  assign celloutsig_1_4z = ~(celloutsig_1_2z[2] ^ celloutsig_1_2z[0]);
  assign celloutsig_0_6z = ~(_01_ ^ celloutsig_0_5z);
  assign celloutsig_0_11z = ~(celloutsig_0_7z[5] ^ celloutsig_0_1z);
  reg [4:0] _26_;
  always_ff @(negedge clkin_data[32], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _26_ <= 5'h00;
    else _26_ <= in_data[13:9];
  assign { _04_[4], _02_, _01_, _04_[1:0] } = _26_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _03_ <= 15'h0000;
    else _03_ <= { celloutsig_0_22z[2:1], celloutsig_0_29z, celloutsig_0_16z, celloutsig_0_30z, celloutsig_0_0z };
  reg [3:0] _28_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _28_ <= 4'h0;
    else _28_ <= { _02_, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_10z };
  assign { _05_[3:2], _00_, _05_[0] } = _28_;
  assign celloutsig_0_35z = { celloutsig_0_25z[3:0], celloutsig_0_11z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_30z } & in_data[29:21];
  assign celloutsig_0_40z = { _03_[12:4], celloutsig_0_8z } & { celloutsig_0_26z[18:10], celloutsig_0_16z };
  assign celloutsig_1_13z = celloutsig_1_5z & in_data[173:171];
  assign celloutsig_1_15z = { celloutsig_1_5z[2:1], celloutsig_1_14z, celloutsig_1_9z } & { celloutsig_1_13z[2], celloutsig_1_7z[3], celloutsig_1_6z, celloutsig_1_13z };
  assign celloutsig_1_19z = { celloutsig_1_3z[13:0], celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_17z, celloutsig_1_7z, celloutsig_1_6z } & { celloutsig_1_3z[24:23], celloutsig_1_5z, celloutsig_1_16z, celloutsig_1_15z, celloutsig_1_11z, celloutsig_1_16z, celloutsig_1_6z, celloutsig_1_2z };
  assign celloutsig_0_26z = in_data[72:51] & { in_data[67:56], celloutsig_0_22z };
  assign celloutsig_0_0z = in_data[34:14] > in_data[72:52];
  assign celloutsig_0_30z = celloutsig_0_7z[17:12] > celloutsig_0_22z[8:3];
  assign celloutsig_0_49z = { celloutsig_0_22z[8], celloutsig_0_16z, _04_[4], _02_, _01_, _04_[1:0], celloutsig_0_32z, celloutsig_0_17z } > { celloutsig_0_31z[7:2], celloutsig_0_41z, celloutsig_0_6z, _04_[4], _02_, _01_, _04_[1:0], celloutsig_0_8z, celloutsig_0_37z, celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_43z, _05_[3:2], _00_, _05_[0], celloutsig_0_36z };
  assign celloutsig_1_8z = { in_data[186:168], celloutsig_1_1z, celloutsig_1_6z } > { celloutsig_1_3z[13:3], celloutsig_1_5z, celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_1_10z = { celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_0z } > { celloutsig_1_5z[0], celloutsig_1_5z };
  assign celloutsig_0_10z = celloutsig_0_7z[7:1] > { in_data[71:69], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_9z };
  assign celloutsig_0_41z = { celloutsig_0_27z[5:1], celloutsig_0_15z } && { celloutsig_0_38z[2], celloutsig_0_30z, celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_18z, celloutsig_0_0z };
  assign celloutsig_0_55z = celloutsig_0_48z[7:4] && celloutsig_0_14z[17:14];
  assign celloutsig_0_57z = { _03_[14:6], celloutsig_0_28z, celloutsig_0_23z, celloutsig_0_19z } && { celloutsig_0_35z[4:2], celloutsig_0_5z, celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_50z };
  assign celloutsig_1_1z = { in_data[129:121], celloutsig_1_0z, celloutsig_1_0z } && { in_data[141:132], celloutsig_1_0z };
  assign celloutsig_1_17z = celloutsig_1_3z[21:5] && { celloutsig_1_7z[0], celloutsig_1_7z[3], celloutsig_1_10z, celloutsig_1_15z, celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_15z };
  assign celloutsig_0_8z = { _02_, _01_, celloutsig_0_4z } && { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_2z };
  assign celloutsig_0_15z = in_data[24:16] && { celloutsig_0_14z[19:17], _04_[4], _02_, _01_, _04_[1:0], celloutsig_0_8z };
  assign celloutsig_0_46z = { celloutsig_0_42z[1:0], _05_[3:2], _00_, _05_[0], celloutsig_0_6z, celloutsig_0_30z } < { celloutsig_0_45z[6:2], celloutsig_0_37z, celloutsig_0_15z, celloutsig_0_11z };
  assign celloutsig_0_24z = { celloutsig_0_20z[3:1], celloutsig_0_13z, celloutsig_0_17z } < { celloutsig_0_7z[19:3], _05_[3:2], _00_, _05_[0], celloutsig_0_19z, celloutsig_0_23z, celloutsig_0_15z, celloutsig_0_10z };
  assign celloutsig_1_5z = { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_4z } % { 1'h1, in_data[178:177] };
  assign celloutsig_0_21z = { in_data[72:53], celloutsig_0_2z } % { 1'h1, celloutsig_0_7z[16:3], celloutsig_0_8z, celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_4z, in_data[0] };
  assign celloutsig_0_28z = { celloutsig_0_13z[7:6], celloutsig_0_20z } % { 1'h1, celloutsig_0_25z, celloutsig_0_24z };
  assign celloutsig_0_34z = { celloutsig_0_14z[28:25], celloutsig_0_23z } != celloutsig_0_32z[9:5];
  assign celloutsig_0_18z = { in_data[9:7], celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_16z, celloutsig_0_8z, _05_[3:2], _00_, _05_[0], celloutsig_0_5z } != { celloutsig_0_13z[7:5], celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_17z };
  assign celloutsig_0_48z = { celloutsig_0_13z[5:4], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_22z, celloutsig_0_46z, celloutsig_0_4z, celloutsig_0_0z } | { celloutsig_0_21z[4:1], celloutsig_0_23z, celloutsig_0_34z, celloutsig_0_22z, celloutsig_0_6z };
  assign celloutsig_0_63z = { celloutsig_0_35z[7:2], celloutsig_0_57z, celloutsig_0_15z } | { celloutsig_0_27z[5:1], celloutsig_0_55z, celloutsig_0_37z, celloutsig_0_11z };
  assign celloutsig_1_2z = { in_data[109], celloutsig_1_1z, celloutsig_1_0z } | in_data[159:157];
  assign celloutsig_1_16z = { celloutsig_1_13z[2:1], celloutsig_1_13z } | celloutsig_1_3z[8:4];
  assign celloutsig_0_13z = { in_data[65:59], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_10z, _04_[4], _02_, _01_, _04_[1:0] } | { celloutsig_0_7z[14:4], celloutsig_0_10z, _05_[3:2], _00_, _05_[0], celloutsig_0_1z };
  assign celloutsig_0_20z = { celloutsig_0_17z[3:2], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_5z } | { celloutsig_0_4z, celloutsig_0_17z };
  assign celloutsig_0_25z = { celloutsig_0_14z[19:18], celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_18z } | { celloutsig_0_2z, celloutsig_0_23z, celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_24z, celloutsig_0_4z };
  assign celloutsig_0_27z = { celloutsig_0_1z, _05_[3:2], _00_, _05_[0], celloutsig_0_5z } | { celloutsig_0_13z[4:1], celloutsig_0_9z, celloutsig_0_1z };
  assign celloutsig_0_42z = { celloutsig_0_7z[17:4], celloutsig_0_9z, celloutsig_0_5z } << { celloutsig_0_21z[5:4], celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_37z, celloutsig_0_27z, _05_[3:2], _00_, _05_[0], celloutsig_0_24z };
  assign celloutsig_0_45z = { celloutsig_0_40z[8:3], celloutsig_0_43z } << { celloutsig_0_25z[2:1], celloutsig_0_37z, _05_[3:2], _00_, _05_[0] };
  assign celloutsig_1_7z = { in_data[138:137], celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_4z } << celloutsig_1_3z[22:17];
  assign celloutsig_1_9z = { celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z } << { celloutsig_1_7z[1:0], celloutsig_1_6z };
  assign celloutsig_0_17z = { celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_2z } << { celloutsig_0_14z[21:18], celloutsig_0_10z };
  assign celloutsig_0_31z = celloutsig_0_26z[14:7] <<< celloutsig_0_22z[9:2];
  assign celloutsig_0_32z = { celloutsig_0_4z, celloutsig_0_24z, celloutsig_0_5z, celloutsig_0_31z } <<< { celloutsig_0_26z[17:8], celloutsig_0_4z };
  assign celloutsig_0_38z = celloutsig_0_22z[7:2] <<< celloutsig_0_21z[19:14];
  assign celloutsig_0_50z = { celloutsig_0_13z[14:10], celloutsig_0_28z } <<< { celloutsig_0_14z[22:19], celloutsig_0_15z, celloutsig_0_49z, celloutsig_0_45z };
  assign celloutsig_1_3z = { in_data[129:113], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z } <<< { in_data[177:160], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_0_7z = { in_data[94:77], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_6z } <<< { in_data[23:21], celloutsig_0_4z, _04_[4], _02_, _01_, _04_[1:0], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_0_22z = { celloutsig_0_20z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_0z, celloutsig_0_19z } <<< celloutsig_0_14z[26:17];
  assign celloutsig_0_29z = { celloutsig_0_13z[7:0], celloutsig_0_2z, celloutsig_0_8z } <<< { celloutsig_0_17z[3:0], celloutsig_0_20z };
  always_latch
    if (celloutsig_1_19z[0]) celloutsig_0_14z = 32'd0;
    else if (clkin_data[64]) celloutsig_0_14z = { celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_6z, _04_[4], _02_, _01_, _04_[1:0], celloutsig_0_0z, _05_[3:2], _00_, _05_[0] };
  assign _04_[3:2] = { _02_, _01_ };
  assign _05_[1] = _00_;
  assign { out_data[128], out_data[121:96], out_data[39:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_63z, celloutsig_0_64z };
endmodule
