/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [16:0] _01_;
  wire [8:0] celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [21:0] celloutsig_0_12z;
  wire [26:0] celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_19z;
  wire [2:0] celloutsig_0_1z;
  wire [5:0] celloutsig_0_21z;
  wire [15:0] celloutsig_0_24z;
  wire [11:0] celloutsig_0_25z;
  wire [17:0] celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [27:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [3:0] celloutsig_0_5z;
  wire [4:0] celloutsig_0_6z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [18:0] celloutsig_1_15z;
  wire [9:0] celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [12:0] celloutsig_1_2z;
  wire [3:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [4:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_8z = ~(celloutsig_0_4z & celloutsig_0_4z);
  assign celloutsig_0_9z = !(celloutsig_0_3z[10] ? celloutsig_0_2z : celloutsig_0_8z);
  assign celloutsig_0_30z = !(_00_ ? celloutsig_0_1z[0] : celloutsig_0_28z[15]);
  assign celloutsig_1_8z = celloutsig_1_3z[3] ^ celloutsig_1_0z;
  assign celloutsig_0_2z = in_data[47] ^ celloutsig_0_1z[0];
  assign celloutsig_0_3z = { in_data[58:43], celloutsig_0_1z, celloutsig_0_0z } + { in_data[63:60], celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_1_15z = { celloutsig_1_2z[12:5], celloutsig_1_14z, celloutsig_1_5z, celloutsig_1_14z, celloutsig_1_9z, celloutsig_1_10z, celloutsig_1_13z, celloutsig_1_0z } + in_data[172:154];
  assign celloutsig_0_10z = celloutsig_0_1z + celloutsig_0_1z;
  reg [16:0] _10_;
  always_ff @(posedge celloutsig_1_19z[0], negedge clkin_data[0])
    if (!clkin_data[0]) _10_ <= 17'h00000;
    else _10_ <= in_data[77:61];
  assign { _01_[16:4], _00_, _01_[2:0] } = _10_;
  assign celloutsig_0_28z = { celloutsig_0_13z[14:6], celloutsig_0_5z, celloutsig_0_6z } & { celloutsig_0_24z[12:8], celloutsig_0_8z, celloutsig_0_25z };
  assign celloutsig_1_9z = { celloutsig_1_3z[1], celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_1z } / { 1'h1, celloutsig_1_3z };
  assign celloutsig_0_15z = celloutsig_0_1z[2] & ~(celloutsig_0_8z);
  assign celloutsig_0_12z = celloutsig_0_3z[22:1] * { in_data[51:31], celloutsig_0_9z };
  assign celloutsig_0_24z = celloutsig_0_13z[15:0] * { celloutsig_0_13z[23:10], celloutsig_0_9z, celloutsig_0_19z };
  assign celloutsig_0_1z = celloutsig_0_0z[7:5] | celloutsig_0_0z[5:3];
  assign celloutsig_1_13z = & celloutsig_1_3z;
  assign celloutsig_0_11z = & celloutsig_0_3z[24:14];
  assign celloutsig_1_1z = & in_data[121:105];
  assign celloutsig_1_11z = | { celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_1_5z = ^ { in_data[166:164], celloutsig_1_4z };
  assign celloutsig_1_6z = ^ { celloutsig_1_2z[11:10], celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_4z = ^ { celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_1_14z = ^ { celloutsig_1_2z[11:10], celloutsig_1_10z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_9z, celloutsig_1_13z, celloutsig_1_10z };
  assign celloutsig_0_19z = ^ { celloutsig_0_1z[0], celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_0_29z = ^ { celloutsig_0_3z[10:8], celloutsig_0_21z, celloutsig_0_15z };
  assign celloutsig_1_0z = ^ in_data[167:165];
  assign celloutsig_0_0z = in_data[70:62] >> in_data[65:57];
  assign celloutsig_1_19z = celloutsig_1_2z[9:5] >> { celloutsig_1_2z[5:2], celloutsig_1_11z };
  assign celloutsig_0_25z = { in_data[73:71], celloutsig_0_0z } >> { _01_[10:4], _00_, _01_[2:0], celloutsig_0_15z };
  assign celloutsig_0_13z = { celloutsig_0_3z[24], celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_1z } <<< { celloutsig_0_6z[0], celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_0_5z = in_data[69:66] - celloutsig_0_3z[14:11];
  assign celloutsig_0_21z = { celloutsig_0_12z[10], celloutsig_0_6z } - { celloutsig_0_10z, celloutsig_0_10z };
  assign celloutsig_1_3z = { in_data[117:115], celloutsig_1_1z } ^ celloutsig_1_2z[10:7];
  assign celloutsig_1_4z = celloutsig_1_2z[8:5] ^ celloutsig_1_2z[7:4];
  assign celloutsig_1_16z = celloutsig_1_2z[12:3] ^ { in_data[108:100], celloutsig_1_5z };
  assign celloutsig_0_6z = celloutsig_0_0z[5:1] ^ celloutsig_0_0z[4:0];
  assign celloutsig_1_2z = in_data[145:133] ^ { in_data[110:99], celloutsig_1_1z };
  assign celloutsig_1_7z = ~((celloutsig_1_6z & celloutsig_1_2z[0]) | celloutsig_1_2z[0]);
  assign celloutsig_1_18z = ~((celloutsig_1_15z[7] & celloutsig_1_16z[2]) | celloutsig_1_0z);
  assign celloutsig_1_10z = ~((celloutsig_1_7z & in_data[170]) | (celloutsig_1_1z & celloutsig_1_4z[1]));
  assign _01_[3] = _00_;
  assign { out_data[128], out_data[100:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_29z, celloutsig_0_30z };
endmodule
