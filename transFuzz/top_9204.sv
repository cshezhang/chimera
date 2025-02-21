/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  reg [2:0] celloutsig_0_10z;
  wire [22:0] celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_2z;
  wire [4:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_3z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [4:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [7:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [14:0] celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = in_data[118] ? in_data[126] : in_data[117];
  assign celloutsig_0_1z = celloutsig_0_0z ? in_data[33] : celloutsig_0_0z;
  assign celloutsig_0_8z = ~((celloutsig_0_7z[0] | celloutsig_0_2z) & celloutsig_0_3z);
  assign celloutsig_0_35z = in_data[62] | ~(celloutsig_0_13z[11]);
  assign celloutsig_1_6z = celloutsig_1_2z | ~(celloutsig_1_1z);
  assign celloutsig_0_34z = { celloutsig_0_7z[1:0], celloutsig_0_20z, celloutsig_0_15z, celloutsig_0_20z } & in_data[12:8];
  assign celloutsig_1_4z = { in_data[103], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z } & { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_5z = { in_data[75:46], celloutsig_0_3z, celloutsig_0_3z } >= { in_data[90:67], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_4z };
  assign celloutsig_0_6z = in_data[31:28] >= { celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_15z = { celloutsig_0_7z[4:2], celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_0z } >= in_data[11:5];
  assign celloutsig_1_2z = { in_data[131:127], celloutsig_1_0z, celloutsig_1_1z } <= in_data[104:98];
  assign celloutsig_0_20z = { celloutsig_0_10z[0], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_7z } <= { celloutsig_0_9z[6:2], celloutsig_0_10z };
  assign celloutsig_0_0z = in_data[20:18] || in_data[7:5];
  assign celloutsig_0_3z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z } || in_data[94:92];
  assign celloutsig_1_7z = { celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_6z } || { in_data[146:140], celloutsig_1_5z, celloutsig_1_5z };
  assign celloutsig_1_1z = celloutsig_1_0z & ~(in_data[122]);
  assign celloutsig_1_9z = celloutsig_1_6z & ~(celloutsig_1_4z[0]);
  assign celloutsig_1_10z = { in_data[150:142], celloutsig_1_5z, celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z } * in_data[116:102];
  assign celloutsig_0_9z = in_data[49:42] * { celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_6z };
  assign celloutsig_1_3z = in_data[126:122] !== in_data[186:182];
  assign celloutsig_1_12z = { celloutsig_1_10z[9:4], celloutsig_1_7z, celloutsig_1_0z } !== { celloutsig_1_7z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_1_5z = | celloutsig_1_4z[3:1];
  assign celloutsig_1_19z = ^ { in_data[186:175], celloutsig_1_3z, celloutsig_1_18z };
  assign celloutsig_0_2z = ^ in_data[84:82];
  assign celloutsig_0_4z = { in_data[52:51], celloutsig_0_1z, celloutsig_0_0z } << in_data[81:78];
  assign celloutsig_1_18z = { celloutsig_1_4z[2:0], celloutsig_1_12z } << celloutsig_1_10z[9:6];
  assign celloutsig_0_13z = { celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_0z } << { in_data[68:47], celloutsig_0_0z };
  assign celloutsig_0_7z = { celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_2z } <<< in_data[15:11];
  always_latch
    if (!clkin_data[0]) celloutsig_0_10z = 3'h0;
    else if (!celloutsig_1_19z) celloutsig_0_10z = { celloutsig_0_4z[3:2], celloutsig_0_6z };
  assign { out_data[131:128], out_data[96], out_data[36:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_34z, celloutsig_0_35z };
endmodule
