/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [31:0] _01_;
  reg [31:0] _02_;
  wire celloutsig_0_11z;
  reg [15:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [12:0] celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [2:0] celloutsig_0_2z;
  reg [40:0] celloutsig_0_30z;
  wire [2:0] celloutsig_0_31z;
  wire [5:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire [5:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  reg [4:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [3:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [31:0] celloutsig_1_13z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [4:0] celloutsig_1_5z;
  wire [16:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = ~(in_data[131] & in_data[154]);
  assign celloutsig_1_2z = ~(in_data[121] & celloutsig_1_0z);
  assign celloutsig_1_9z = ~(celloutsig_1_7z & celloutsig_1_3z);
  assign celloutsig_0_4z = ~(celloutsig_0_3z[5] & in_data[37]);
  assign celloutsig_0_19z = celloutsig_0_6z[4] | celloutsig_0_12z[2];
  assign celloutsig_0_5z = _00_ ^ celloutsig_0_4z;
  reg [5:0] _09_;
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _09_ <= 6'h00;
    else _09_ <= in_data[79:74];
  assign { _00_, _01_[9:5] } = _09_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _02_ <= 32'd0;
    else _02_ <= { in_data[15:5], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_5z, _00_, _01_[9:5], celloutsig_0_9z };
  assign celloutsig_0_3z = { _00_, _01_[9:8], celloutsig_0_2z } & { _00_, _01_[9:8], celloutsig_0_2z };
  assign celloutsig_1_19z = { celloutsig_1_5z[3], celloutsig_1_7z, celloutsig_1_14z } == { in_data[150:149], celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_0_8z = { celloutsig_0_4z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_4z } == in_data[74:71];
  assign celloutsig_1_7z = { celloutsig_1_6z[9:0], celloutsig_1_2z } && { celloutsig_1_6z[11:8], celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_11z = { celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_10z, celloutsig_1_4z, celloutsig_1_1z } && { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_10z, celloutsig_1_7z, celloutsig_1_4z };
  assign celloutsig_1_18z = { celloutsig_1_13z[19], celloutsig_1_7z, celloutsig_1_9z } < { celloutsig_1_5z[3], celloutsig_1_7z, celloutsig_1_8z };
  assign celloutsig_0_7z = { celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_4z } < { _00_, _01_[9:5], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_5z };
  assign celloutsig_0_13z = { _02_[29:20], celloutsig_0_1z, celloutsig_0_1z } < { celloutsig_0_12z[15:5], celloutsig_0_8z };
  assign celloutsig_1_6z = celloutsig_1_0z ? { in_data[152:137], celloutsig_1_1z } : { in_data[165:164], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_4z, 1'h0, celloutsig_1_4z };
  assign celloutsig_0_2z = celloutsig_0_1z ? in_data[57:55] : _01_[9:7];
  assign celloutsig_1_3z = { celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z } !== { in_data[148:146], celloutsig_1_1z };
  assign celloutsig_1_8z = { celloutsig_1_6z[11:2], celloutsig_1_7z, celloutsig_1_5z } !== { celloutsig_1_6z[15:8], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_1z };
  assign celloutsig_1_1z = & in_data[166:154];
  assign celloutsig_0_1z = & in_data[56:53];
  assign celloutsig_1_4z = | { in_data[138:126], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_10z = { celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_8z } << celloutsig_1_6z[12:9];
  assign celloutsig_0_6z = celloutsig_0_3z << in_data[19:14];
  assign celloutsig_1_5z = { in_data[127:124], celloutsig_1_0z } >> { celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_13z = { in_data[134:113], celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_1z } >> in_data[175:144];
  assign celloutsig_1_14z = { celloutsig_1_6z[12:11], celloutsig_1_11z } >> in_data[179:177];
  assign celloutsig_0_17z = _02_[30:18] >> in_data[41:29];
  assign celloutsig_0_31z = _02_[9:7] - celloutsig_0_17z[10:8];
  assign celloutsig_0_11z = ~((celloutsig_0_8z & celloutsig_0_8z) | celloutsig_0_6z[1]);
  always_latch
    if (celloutsig_1_18z) celloutsig_0_9z = 5'h00;
    else if (!clkin_data[64]) celloutsig_0_9z = { celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_7z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_12z = 16'h0000;
    else if (clkin_data[64]) celloutsig_0_12z = _02_[30:15];
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_30z = 41'h00000000000;
    else if (clkin_data[64]) celloutsig_0_30z = { celloutsig_0_11z, celloutsig_0_19z, _02_, celloutsig_0_13z, celloutsig_0_6z };
  assign { _01_[31:10], _01_[4:0] } = { in_data[15:5], celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_5z, _00_, celloutsig_0_9z };
  assign { out_data[128], out_data[96], out_data[63:32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_30z[33:2], celloutsig_0_31z };
endmodule
