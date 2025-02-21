/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [3:0] _00_;
  reg [12:0] _01_;
  wire celloutsig_0_0z;
  wire [21:0] celloutsig_0_10z;
  wire [5:0] celloutsig_0_14z;
  wire celloutsig_0_1z;
  wire [3:0] celloutsig_0_26z;
  wire [7:0] celloutsig_0_27z;
  wire [18:0] celloutsig_0_2z;
  wire [4:0] celloutsig_0_3z;
  wire [11:0] celloutsig_0_4z;
  wire [5:0] celloutsig_0_5z;
  wire [4:0] celloutsig_0_6z;
  wire [20:0] celloutsig_0_7z;
  wire [9:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire [11:0] celloutsig_1_13z;
  wire [14:0] celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire [9:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [6:0] celloutsig_1_2z;
  wire [6:0] celloutsig_1_3z;
  wire [6:0] celloutsig_1_4z;
  wire [3:0] celloutsig_1_6z;
  wire [4:0] celloutsig_1_7z;
  wire [10:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_18z = in_data[186] ? celloutsig_1_0z : celloutsig_1_3z[4];
  assign celloutsig_0_1z = ~celloutsig_0_0z;
  assign celloutsig_0_0z = ~((in_data[91] | in_data[53]) & (in_data[39] | in_data[13]));
  assign celloutsig_1_8z = in_data[126:116] + in_data[130:120];
  assign celloutsig_0_4z = celloutsig_0_2z[17:6] + in_data[71:60];
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _00_ <= 4'h0;
    else _00_ <= { celloutsig_1_6z[3:1], celloutsig_1_9z };
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _01_ <= 13'h0000;
    else _01_ <= { celloutsig_0_7z[14:3], celloutsig_0_1z };
  assign celloutsig_0_6z = { in_data[73:70], celloutsig_0_1z } & in_data[57:53];
  assign celloutsig_0_14z = { celloutsig_0_10z[10:6], celloutsig_0_0z } & { celloutsig_0_9z[9], celloutsig_0_3z };
  assign celloutsig_0_3z = { celloutsig_0_2z[10:8], celloutsig_0_1z, celloutsig_0_1z } / { 1'h1, in_data[87:84] };
  assign celloutsig_1_13z = { celloutsig_1_8z[9:3], celloutsig_1_10z, _00_ } / { 1'h1, in_data[121:118], celloutsig_1_4z };
  assign celloutsig_1_17z = in_data[181:172] / { 1'h1, celloutsig_1_13z[4], celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_1z, celloutsig_1_12z, celloutsig_1_6z };
  assign celloutsig_1_9z = in_data[173:167] < celloutsig_1_2z;
  assign celloutsig_0_10z = celloutsig_0_3z[2] ? { in_data[75:66], celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_6z } : { celloutsig_0_3z[4:3], 1'h0, celloutsig_0_3z[1:0], celloutsig_0_4z, celloutsig_0_3z[4:3], 1'h0, celloutsig_0_3z[1:0] };
  assign celloutsig_1_2z = celloutsig_1_0z ? { in_data[128:124], 2'h3 } : { in_data[176:171], 1'h0 };
  assign celloutsig_1_3z = celloutsig_1_2z[4] ? { in_data[103:100], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } : in_data[180:174];
  assign celloutsig_1_12z = celloutsig_1_2z[3] != celloutsig_1_7z[4];
  assign celloutsig_1_19z = { celloutsig_1_17z[6:5], celloutsig_1_18z } != { celloutsig_1_14z[5:4], celloutsig_1_16z };
  assign celloutsig_1_7z = ~ celloutsig_1_2z[5:1];
  assign celloutsig_1_4z = celloutsig_1_3z | in_data[174:168];
  assign celloutsig_1_6z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z } | { celloutsig_1_4z[4:2], celloutsig_1_0z };
  assign celloutsig_0_7z = { in_data[6], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_0z } | in_data[86:66];
  assign celloutsig_0_26z = celloutsig_0_6z[4:1] | celloutsig_0_14z[4:1];
  assign celloutsig_0_27z = celloutsig_0_4z[11:4] | { _01_[4:2], celloutsig_0_6z };
  assign celloutsig_1_10z = ~^ { celloutsig_1_2z[3:2], celloutsig_1_3z };
  assign celloutsig_1_16z = ~^ { celloutsig_1_13z[7:0], celloutsig_1_0z };
  assign celloutsig_1_0z = ~^ in_data[117:111];
  assign celloutsig_1_1z = ~^ in_data[145:143];
  assign celloutsig_1_14z = { celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_3z } >> { celloutsig_1_7z[2:0], celloutsig_1_0z, _00_, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_10z, celloutsig_1_10z };
  assign celloutsig_0_9z = { in_data[31:27], celloutsig_0_6z } >> celloutsig_0_7z[10:1];
  assign celloutsig_0_2z = in_data[54:36] >> in_data[81:63];
  assign celloutsig_0_5z = celloutsig_0_4z[11:6] ^ { celloutsig_0_3z, celloutsig_0_0z };
  assign { out_data[128], out_data[96], out_data[35:32], out_data[7:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_26z, celloutsig_0_27z };
endmodule
