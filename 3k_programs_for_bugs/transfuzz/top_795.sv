/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [12:0] _00_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [8:0] celloutsig_0_13z;
  wire [5:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [26:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [3:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [22:0] celloutsig_0_23z;
  wire [11:0] celloutsig_0_24z;
  wire [16:0] celloutsig_0_25z;
  wire celloutsig_0_28z;
  wire [3:0] celloutsig_0_2z;
  wire [3:0] celloutsig_0_30z;
  wire celloutsig_0_3z;
  wire celloutsig_0_43z;
  reg [3:0] celloutsig_0_44z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_10z;
  wire [6:0] celloutsig_1_13z;
  wire [4:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [4:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [7:0] celloutsig_1_4z;
  wire [4:0] celloutsig_1_5z;
  reg [4:0] celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_43z = celloutsig_0_28z ? celloutsig_0_30z[0] : celloutsig_0_2z[3];
  assign celloutsig_0_21z = celloutsig_0_5z ? celloutsig_0_1z : celloutsig_0_18z[2];
  assign celloutsig_0_22z = celloutsig_0_12z ? celloutsig_0_12z : celloutsig_0_5z;
  assign celloutsig_0_3z = !(celloutsig_0_2z[1] ? in_data[42] : in_data[73]);
  assign celloutsig_0_1z = !(celloutsig_0_0z ? in_data[53] : in_data[2]);
  assign celloutsig_0_4z = ~(celloutsig_0_2z[1] | celloutsig_0_2z[2]);
  assign celloutsig_0_15z = ~(celloutsig_0_2z[2] | celloutsig_0_11z);
  assign celloutsig_1_1z = in_data[164] | in_data[174];
  always_ff @(posedge clkin_data[160], negedge clkin_data[64])
    if (!clkin_data[64]) _00_ <= 13'h0000;
    else _00_ <= in_data[134:122];
  assign celloutsig_1_4z = { in_data[116:110], celloutsig_1_1z } & { celloutsig_1_2z[4:3], celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_16z = { celloutsig_0_13z[8:5], celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_13z[8:5], celloutsig_0_13z[7], celloutsig_0_13z[3:0], celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_7z } & { in_data[84:75], celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_12z };
  assign celloutsig_0_24z = { celloutsig_0_16z[16:7], celloutsig_0_8z, celloutsig_0_1z } & { in_data[93], celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_9z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_19z };
  assign celloutsig_0_25z = { celloutsig_0_23z[20:8], celloutsig_0_8z, celloutsig_0_22z, celloutsig_0_11z, celloutsig_0_12z } & { celloutsig_0_14z[5:1], celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_21z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_21z };
  assign celloutsig_1_3z = in_data[135:127] == _00_[11:3];
  assign celloutsig_1_19z = _00_[10:3] == { celloutsig_1_13z, celloutsig_1_9z };
  assign celloutsig_0_6z = { celloutsig_0_2z[2], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_3z } > { celloutsig_0_2z[2:1], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_0z };
  assign celloutsig_0_7z = { celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z } && { celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_0_11z = { in_data[93:82], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_7z } || { celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_5z = { _00_[4:1], celloutsig_1_3z } * { _00_[9:6], celloutsig_1_3z };
  assign celloutsig_0_2z = celloutsig_0_1z ? in_data[28:25] : in_data[37:34];
  assign celloutsig_0_30z = ~ { celloutsig_0_24z[1], celloutsig_0_10z, celloutsig_0_22z, celloutsig_0_9z };
  assign celloutsig_0_0z = & in_data[25:14];
  assign celloutsig_0_5z = & { celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_2z, in_data[25:14] };
  assign celloutsig_0_8z = & in_data[47:42];
  assign celloutsig_0_12z = & in_data[48:46];
  assign celloutsig_0_17z = & { celloutsig_0_16z[9], celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_3z, in_data[47:42] };
  assign celloutsig_1_9z = celloutsig_1_5z[2] & _00_[4];
  assign celloutsig_1_10z = celloutsig_1_4z[5] & celloutsig_1_7z[2];
  assign celloutsig_0_9z = ~^ { celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_7z };
  assign celloutsig_1_13z = celloutsig_1_4z[7:1] >> { celloutsig_1_4z[5:4], celloutsig_1_2z };
  assign celloutsig_1_18z = celloutsig_1_13z[5:1] >> { celloutsig_1_7z[4:1], celloutsig_1_10z };
  assign celloutsig_0_18z = { celloutsig_0_13z[2:1], celloutsig_0_10z, celloutsig_0_17z } >> { in_data[70:69], celloutsig_0_11z, celloutsig_0_11z };
  assign celloutsig_0_14z = { in_data[15:12], celloutsig_0_9z, celloutsig_0_5z } - { in_data[55], celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_2z = in_data[167:163] ~^ in_data[170:166];
  assign celloutsig_0_23z = { celloutsig_0_17z, celloutsig_0_13z[8:5], celloutsig_0_13z[7], celloutsig_0_13z[3:0], celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_0z, celloutsig_0_13z[8:5], celloutsig_0_13z[7], celloutsig_0_13z[3:0], celloutsig_0_5z } ~^ { celloutsig_0_16z[11:1], celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_19z };
  assign celloutsig_0_10z = ~((in_data[67] & celloutsig_0_5z) | celloutsig_0_3z);
  assign celloutsig_0_19z = ~((celloutsig_0_10z & celloutsig_0_8z) | celloutsig_0_1z);
  assign celloutsig_0_28z = ~((celloutsig_0_0z & celloutsig_0_17z) | celloutsig_0_16z[15]);
  always_latch
    if (!clkin_data[32]) celloutsig_0_44z = 4'h0;
    else if (!celloutsig_1_19z) celloutsig_0_44z = celloutsig_0_25z[11:8];
  always_latch
    if (!clkin_data[64]) celloutsig_1_7z = 5'h00;
    else if (!clkin_data[0]) celloutsig_1_7z = in_data[106:102];
  assign { celloutsig_0_13z[6:5], celloutsig_0_13z[3:0], celloutsig_0_13z[8:7] } = ~ { celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_2z, in_data[91], celloutsig_0_0z };
  assign celloutsig_0_13z[4] = celloutsig_0_13z[7];
  assign { out_data[132:128], out_data[96], out_data[32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_43z, celloutsig_0_44z };
endmodule
