/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [2:0] _01_;
  wire [17:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [14:0] celloutsig_0_11z;
  wire [5:0] celloutsig_0_13z;
  wire [3:0] celloutsig_0_14z;
  wire [10:0] celloutsig_0_15z;
  reg [2:0] celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire [11:0] celloutsig_0_19z;
  wire [7:0] celloutsig_0_1z;
  wire [11:0] celloutsig_0_23z;
  wire [9:0] celloutsig_0_25z;
  reg [31:0] celloutsig_0_26z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [2:0] celloutsig_0_31z;
  wire [21:0] celloutsig_0_34z;
  wire [3:0] celloutsig_0_3z;
  wire [16:0] celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire [2:0] celloutsig_0_5z;
  wire [7:0] celloutsig_0_6z;
  wire [7:0] celloutsig_0_7z;
  wire celloutsig_0_88z;
  wire celloutsig_0_89z;
  wire [7:0] celloutsig_0_8z;
  wire [13:0] celloutsig_0_9z;
  wire [4:0] celloutsig_1_0z;
  reg [3:0] celloutsig_1_10z;
  wire [3:0] celloutsig_1_12z;
  wire [6:0] celloutsig_1_14z;
  wire [9:0] celloutsig_1_15z;
  wire [7:0] celloutsig_1_18z;
  wire [6:0] celloutsig_1_19z;
  wire [3:0] celloutsig_1_1z;
  wire [11:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [9:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_4z = celloutsig_0_3z[2] ^ celloutsig_0_0z[9];
  assign celloutsig_0_88z = celloutsig_0_3z[2] ^ celloutsig_0_48z[15];
  assign celloutsig_1_7z = in_data[113] ^ celloutsig_1_3z;
  assign celloutsig_1_8z = celloutsig_1_7z ^ in_data[136];
  assign celloutsig_1_6z = celloutsig_1_3z ^ celloutsig_1_0z[2];
  assign celloutsig_0_29z = celloutsig_0_26z[29] ^ celloutsig_0_5z[2];
  reg [2:0] _08_;
  always_ff @(negedge celloutsig_1_18z[0], posedge clkin_data[64])
    if (clkin_data[64]) _08_ <= 3'h0;
    else _08_ <= celloutsig_0_5z;
  assign { _00_, _01_[1:0] } = _08_;
  assign celloutsig_0_1z = celloutsig_0_0z[8:1] % { 1'h1, in_data[71:65] };
  assign celloutsig_0_48z = { celloutsig_0_34z[20:7], celloutsig_0_5z } * celloutsig_0_26z[29:13];
  assign celloutsig_1_4z = { celloutsig_1_2z[7:3], celloutsig_1_0z } * in_data[182:173];
  assign celloutsig_1_19z = celloutsig_1_14z * celloutsig_1_18z[6:0];
  assign celloutsig_0_0z = in_data[33] ? in_data[87:70] : { in_data[42:34], 1'h0, in_data[32:25] };
  assign celloutsig_0_3z = celloutsig_0_1z[7] ? celloutsig_0_0z[9:6] : celloutsig_0_1z[4:1];
  assign celloutsig_0_5z = celloutsig_0_3z[3] ? celloutsig_0_1z[2:0] : { 1'h0, celloutsig_0_3z[2:1] };
  assign celloutsig_1_0z = in_data[107] ? in_data[119:115] : in_data[161:157];
  assign celloutsig_1_2z = in_data[141] ? { in_data[145:142], 1'h1, in_data[140:134] } : { celloutsig_1_0z[4:1], celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_9z = celloutsig_0_4z ? { celloutsig_0_8z[7:2], celloutsig_0_7z } : { celloutsig_0_7z[5:2], 2'h0, celloutsig_0_1z };
  assign celloutsig_1_15z = celloutsig_1_1z[2] ? { celloutsig_1_14z[6:1], celloutsig_1_12z } : { celloutsig_1_1z[3], 1'h0, celloutsig_1_1z[1], celloutsig_1_10z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_7z };
  assign celloutsig_0_11z = celloutsig_0_7z[0] ? { celloutsig_0_1z[5:0], celloutsig_0_2z, celloutsig_0_1z } : { celloutsig_0_6z[6:3], celloutsig_0_6z, celloutsig_0_5z };
  assign celloutsig_0_14z = celloutsig_0_3z[0] ? celloutsig_0_9z[4:1] : { celloutsig_0_11z[11:9], celloutsig_0_4z };
  assign celloutsig_0_7z = ~ celloutsig_0_1z;
  assign celloutsig_0_8z = ~ { celloutsig_0_7z[4:1], celloutsig_0_3z };
  assign celloutsig_1_12z = ~ { celloutsig_1_0z[4:2], celloutsig_1_5z };
  assign celloutsig_0_15z = ~ { celloutsig_0_14z[3:1], celloutsig_0_7z };
  assign celloutsig_0_23z = ~ celloutsig_0_0z[17:6];
  assign celloutsig_0_89z = ~^ celloutsig_0_9z[8:2];
  assign celloutsig_0_10z = ~^ celloutsig_0_6z[5:2];
  assign celloutsig_1_1z = in_data[167:164] << celloutsig_1_0z[4:1];
  assign celloutsig_1_14z = in_data[113:107] << { celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_1_18z = celloutsig_1_15z[9:2] << { celloutsig_1_10z, celloutsig_1_12z };
  assign celloutsig_0_13z = celloutsig_0_7z[6:1] << celloutsig_0_0z[14:9];
  assign celloutsig_0_6z = { celloutsig_0_0z[9:6], celloutsig_0_3z } >>> { in_data[9:6], celloutsig_0_2z, celloutsig_0_5z };
  assign celloutsig_0_31z = celloutsig_0_11z[8:6] >>> celloutsig_0_7z[4:2];
  assign celloutsig_0_34z = { _00_, _01_[1:0], celloutsig_0_9z, celloutsig_0_31z, celloutsig_0_29z, celloutsig_0_18z } - { celloutsig_0_23z[11:1], celloutsig_0_15z };
  assign celloutsig_0_19z = celloutsig_0_9z[13:2] - { celloutsig_0_0z[12], celloutsig_0_6z, celloutsig_0_5z };
  assign celloutsig_1_3z = ~((celloutsig_1_1z[2] & celloutsig_1_1z[1]) | celloutsig_1_1z[2]);
  assign celloutsig_1_5z = ~((celloutsig_1_2z[8] & celloutsig_1_0z[4]) | celloutsig_1_1z[0]);
  assign celloutsig_0_18z = ~((celloutsig_0_3z[0] & celloutsig_0_7z[5]) | celloutsig_0_13z[2]);
  assign celloutsig_0_2z = ~((celloutsig_0_1z[3] & celloutsig_0_0z[1]) | in_data[57]);
  always_latch
    if (clkin_data[128]) celloutsig_1_10z = 4'h0;
    else if (!clkin_data[32]) celloutsig_1_10z = celloutsig_1_4z[4:1];
  always_latch
    if (!clkin_data[96]) celloutsig_0_16z = 3'h0;
    else if (!clkin_data[0]) celloutsig_0_16z = { celloutsig_0_11z[11:10], celloutsig_0_4z };
  always_latch
    if (!clkin_data[96]) celloutsig_0_26z = 32'd0;
    else if (!clkin_data[0]) celloutsig_0_26z = { celloutsig_0_15z[9:0], celloutsig_0_25z[9:6], celloutsig_0_25z[8:6], celloutsig_0_25z[2:0], celloutsig_0_19z };
  assign { celloutsig_0_25z[8:6], celloutsig_0_25z[2:0], celloutsig_0_25z[9] } = ~ { _00_, _01_[1:0], celloutsig_0_16z, celloutsig_0_10z };
  assign _01_[2] = _00_;
  assign celloutsig_0_25z[5:3] = celloutsig_0_25z[8:6];
  assign { out_data[135:128], out_data[102:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_88z, celloutsig_0_89z };
endmodule
