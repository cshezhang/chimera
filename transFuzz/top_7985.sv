/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [9:0] _00_;
  wire celloutsig_0_0z;
  wire [4:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [6:0] celloutsig_0_18z;
  wire [11:0] celloutsig_0_1z;
  wire [11:0] celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire [3:0] celloutsig_0_27z;
  wire [3:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire [10:0] celloutsig_0_32z;
  wire [2:0] celloutsig_0_37z;
  wire [19:0] celloutsig_0_38z;
  wire [20:0] celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire celloutsig_0_43z;
  wire [15:0] celloutsig_0_4z;
  wire [7:0] celloutsig_0_5z;
  wire [27:0] celloutsig_0_6z;
  wire [10:0] celloutsig_0_7z;
  wire [5:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [6:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [12:0] celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire [8:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [19:0] celloutsig_1_2z;
  wire [14:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [6:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [3:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~(in_data[28] ^ in_data[1]);
  assign celloutsig_0_43z = ~(celloutsig_0_28z[1] ^ celloutsig_0_32z[3]);
  assign celloutsig_1_18z = ~(celloutsig_1_3z[6] ^ celloutsig_1_9z[1]);
  assign celloutsig_0_12z = ~(celloutsig_0_7z[1] ^ celloutsig_0_2z);
  assign celloutsig_0_24z = ~(celloutsig_0_16z ^ celloutsig_0_4z[0]);
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z[0])
    if (!celloutsig_1_19z[0]) _00_ <= 10'h000;
    else _00_ <= celloutsig_0_1z[10:1];
  assign celloutsig_0_42z = celloutsig_0_4z[13:8] === celloutsig_0_38z[10:5];
  assign celloutsig_1_1z = in_data[178:176] === in_data[139:137];
  assign celloutsig_1_4z = { celloutsig_1_0z[4:1], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z } === celloutsig_1_3z[12:0];
  assign celloutsig_1_6z = { celloutsig_1_3z[14:10], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_5z } === celloutsig_1_2z[15:2];
  assign celloutsig_1_10z = { celloutsig_1_9z[0], celloutsig_1_1z, celloutsig_1_1z } === celloutsig_1_9z[3:1];
  assign celloutsig_0_9z = celloutsig_0_5z[6:1] === celloutsig_0_3z[12:7];
  assign celloutsig_0_14z = in_data[42:38] === celloutsig_0_1z[5:1];
  assign celloutsig_0_15z = { in_data[54:49], celloutsig_0_14z } === { celloutsig_0_5z[1], celloutsig_0_8z };
  assign celloutsig_0_16z = { celloutsig_0_1z[5:2], celloutsig_0_5z } === { celloutsig_0_3z[19:14], celloutsig_0_11z, celloutsig_0_12z };
  assign celloutsig_0_2z = in_data[14:9] === in_data[51:46];
  assign celloutsig_0_3z = { in_data[24:20], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_2z } >> { in_data[37:30], celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_38z = { celloutsig_0_6z[25:9], celloutsig_0_37z } >> { celloutsig_0_6z[20:3], celloutsig_0_14z, celloutsig_0_15z };
  assign celloutsig_1_3z = { celloutsig_1_2z[19:6], celloutsig_1_1z } >> celloutsig_1_2z[17:3];
  assign celloutsig_1_5z = celloutsig_1_3z[9:3] >> celloutsig_1_0z;
  assign celloutsig_1_9z = in_data[135:132] >> { celloutsig_1_5z[6:4], celloutsig_1_4z };
  assign celloutsig_1_13z = { celloutsig_1_2z[19:12], celloutsig_1_9z, celloutsig_1_10z } >> { celloutsig_1_0z[5], celloutsig_1_9z, celloutsig_1_0z, celloutsig_1_6z };
  assign celloutsig_0_6z = in_data[94:67] >> { celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_8z = { celloutsig_0_6z[10:7], celloutsig_0_2z, celloutsig_0_0z } >> celloutsig_0_1z[7:2];
  assign celloutsig_0_11z = celloutsig_0_4z[11:7] >> { celloutsig_0_6z[25:22], celloutsig_0_9z };
  assign celloutsig_0_18z = { celloutsig_0_3z[7:2], celloutsig_0_0z } >> { celloutsig_0_6z[16:11], celloutsig_0_9z };
  assign celloutsig_0_28z = celloutsig_0_27z >> { celloutsig_0_8z[5:3], celloutsig_0_12z };
  assign celloutsig_0_32z = { celloutsig_0_7z[9:0], celloutsig_0_15z } >> { celloutsig_0_24z, celloutsig_0_15z, celloutsig_0_5z, celloutsig_0_2z };
  assign celloutsig_0_37z = celloutsig_0_22z[8:6] >> celloutsig_0_6z[16:14];
  assign celloutsig_0_4z = { celloutsig_0_3z[13:0], celloutsig_0_0z, celloutsig_0_0z } >> { celloutsig_0_3z[18:4], celloutsig_0_2z };
  assign celloutsig_0_5z = { celloutsig_0_4z[3:0], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_2z } >> in_data[66:59];
  assign celloutsig_0_7z = celloutsig_0_4z[13:3] >> { celloutsig_0_5z[6:4], celloutsig_0_5z };
  assign celloutsig_0_22z = celloutsig_0_3z[16:5] >> { celloutsig_0_8z[4:3], _00_ };
  assign celloutsig_1_0z = in_data[118:112] ^ in_data[148:142];
  assign celloutsig_1_2z = { in_data[113:109], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z } ^ { in_data[120:109], celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_1_19z = celloutsig_1_2z[9:1] ^ celloutsig_1_13z[9:1];
  assign celloutsig_0_1z = in_data[31:20] ^ in_data[95:84];
  assign celloutsig_0_27z = _00_[3:0] ^ celloutsig_0_18z[5:2];
  assign { out_data[128], out_data[104:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_42z, celloutsig_0_43z };
endmodule
