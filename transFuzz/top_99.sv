/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [11:0] _00_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [3:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [13:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [6:0] celloutsig_0_22z;
  wire [6:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [3:0] celloutsig_0_25z;
  wire [2:0] celloutsig_0_26z;
  wire [13:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [15:0] celloutsig_0_30z;
  wire [19:0] celloutsig_0_31z;
  wire celloutsig_0_34z;
  wire [3:0] celloutsig_0_38z;
  wire [2:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_47z;
  wire [22:0] celloutsig_0_4z;
  wire celloutsig_0_50z;
  wire [7:0] celloutsig_0_5z;
  wire [8:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [2:0] celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire [7:0] celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire [7:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [9:0] celloutsig_1_8z;
  wire [15:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_15z = celloutsig_0_13z ? celloutsig_0_7z : celloutsig_0_3z;
  assign celloutsig_0_21z = celloutsig_0_19z ? celloutsig_0_5z[7] : celloutsig_0_15z;
  assign celloutsig_1_3z = !(celloutsig_1_1z[2] ? celloutsig_1_1z[0] : celloutsig_1_0z);
  assign celloutsig_1_14z = !(celloutsig_1_4z[3] ? celloutsig_1_1z[2] : celloutsig_1_3z);
  assign celloutsig_0_10z = !(celloutsig_0_0z ? celloutsig_0_8z : celloutsig_0_6z[2]);
  assign celloutsig_1_2z = ~celloutsig_1_1z[2];
  assign celloutsig_0_8z = ~((celloutsig_0_4z[18] | celloutsig_0_6z[8]) & (celloutsig_0_4z[15] | celloutsig_0_3z));
  assign celloutsig_0_17z = ~((celloutsig_0_11z | in_data[37]) & (celloutsig_0_14z | celloutsig_0_9z));
  assign celloutsig_0_2z = ~((celloutsig_0_0z | celloutsig_0_0z) & (celloutsig_0_0z | celloutsig_0_1z));
  assign celloutsig_0_47z = celloutsig_0_4z[21] | ~(celloutsig_0_14z);
  assign celloutsig_0_9z = celloutsig_0_1z | ~(celloutsig_0_5z[5]);
  assign celloutsig_1_18z = celloutsig_1_15z[1] | celloutsig_1_14z;
  assign celloutsig_0_1z = in_data[25] | in_data[67];
  assign celloutsig_0_0z = in_data[5] ^ in_data[17];
  reg [12:0] _15_;
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[0])
    if (!clkin_data[0]) _15_ <= 13'h0000;
    else _15_ <= { celloutsig_0_27z[13:2], celloutsig_0_34z };
  assign out_data[44:32] = _15_;
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[0])
    if (!clkin_data[0]) _00_ <= 12'h000;
    else _00_ <= { celloutsig_0_6z[3:1], celloutsig_0_6z[8:1], celloutsig_0_6z[2] };
  assign celloutsig_1_5z = { in_data[189:187], celloutsig_1_2z } / { 1'h1, celloutsig_1_4z[3:1] };
  assign celloutsig_0_50z = { celloutsig_0_38z[0], celloutsig_0_20z, celloutsig_0_21z, celloutsig_0_34z, celloutsig_0_39z } >= { celloutsig_0_4z[12:8], celloutsig_0_8z, celloutsig_0_47z };
  assign celloutsig_1_7z = { in_data[184:179], celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_2z } <= in_data[119:106];
  assign celloutsig_0_14z = { celloutsig_0_4z[20:2], celloutsig_0_4z[3:2], celloutsig_0_13z, celloutsig_0_10z } <= { celloutsig_0_4z[19:4], celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_8z };
  assign celloutsig_0_19z = { celloutsig_0_6z[8:1], celloutsig_0_0z, celloutsig_0_3z } <= celloutsig_0_4z[15:6];
  assign celloutsig_0_24z = { celloutsig_0_4z[18:8], celloutsig_0_19z, celloutsig_0_14z } <= celloutsig_0_4z[21:9];
  assign celloutsig_0_29z = celloutsig_0_22z[5:3] <= { celloutsig_0_26z[1:0], celloutsig_0_9z };
  assign celloutsig_0_7z = celloutsig_0_4z[17:15] && celloutsig_0_5z[2:0];
  assign celloutsig_1_4z = in_data[190:186] % { 1'h1, in_data[153:151], celloutsig_1_3z };
  assign celloutsig_0_16z = { in_data[48], celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_11z } % { 1'h1, celloutsig_0_6z[1], celloutsig_0_6z[2], celloutsig_0_14z };
  assign celloutsig_0_22z = { celloutsig_0_6z[6:1], celloutsig_0_7z } % { 1'h1, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_2z, celloutsig_0_14z, celloutsig_0_15z };
  assign celloutsig_0_27z = { celloutsig_0_6z[8:1], celloutsig_0_6z[2], celloutsig_0_11z, celloutsig_0_17z, celloutsig_0_24z, celloutsig_0_2z, celloutsig_0_24z } % { 1'h1, celloutsig_0_25z[2], celloutsig_0_13z, celloutsig_0_6z[8:1], celloutsig_0_6z[2], celloutsig_0_1z, celloutsig_0_20z };
  assign celloutsig_1_6z = ~ { in_data[122:120], celloutsig_1_0z, celloutsig_1_5z };
  assign celloutsig_1_9z = ~ { in_data[134:125], celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_0_3z = ^ { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_1_0z = ^ in_data[152:140];
  assign celloutsig_0_13z = ^ { _00_[10:2], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_5z };
  assign celloutsig_0_20z = ^ in_data[40:33];
  assign celloutsig_0_38z = celloutsig_0_23z[4:1] << { celloutsig_0_31z[9:8], celloutsig_0_1z, celloutsig_0_8z };
  assign celloutsig_1_1z = { in_data[182:181], celloutsig_1_0z } << { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_15z = { celloutsig_1_6z[3:2], celloutsig_1_7z } << celloutsig_1_9z[8:6];
  assign celloutsig_0_18z = { celloutsig_0_5z[5:0], celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_15z, celloutsig_0_3z } << { celloutsig_0_16z[0], celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_6z[8:1], celloutsig_0_6z[2] };
  assign celloutsig_0_25z = { _00_[2:0], celloutsig_0_15z } << celloutsig_0_5z[4:1];
  assign celloutsig_0_26z = { celloutsig_0_23z[2], celloutsig_0_14z, celloutsig_0_17z } << { celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_8z };
  assign celloutsig_0_31z = { celloutsig_0_30z[8:7], celloutsig_0_30z[11:7], celloutsig_0_30z[1:0], celloutsig_0_13z, celloutsig_0_23z, celloutsig_0_0z, celloutsig_0_20z, celloutsig_0_17z } <<< { celloutsig_0_4z[13:2], celloutsig_0_4z[3], celloutsig_0_24z, celloutsig_0_25z, celloutsig_0_2z, celloutsig_0_17z };
  assign celloutsig_1_19z = { celloutsig_1_8z[8:5], celloutsig_1_2z, celloutsig_1_13z, celloutsig_1_18z, celloutsig_1_13z } <<< celloutsig_1_9z[15:8];
  assign celloutsig_0_39z = celloutsig_0_26z >>> { _00_[11], celloutsig_0_10z, celloutsig_0_28z };
  assign celloutsig_0_23z = { celloutsig_0_5z[7:2], celloutsig_0_14z } >>> in_data[33:27];
  assign celloutsig_0_5z = in_data[93:86] ^ in_data[24:17];
  assign celloutsig_1_8z = { in_data[154:146], celloutsig_1_7z } ^ { celloutsig_1_4z[3:2], celloutsig_1_6z };
  assign celloutsig_0_34z = ~((celloutsig_0_24z & celloutsig_0_2z) | celloutsig_0_26z[0]);
  assign celloutsig_1_13z = ~((celloutsig_1_0z & celloutsig_1_4z[0]) | celloutsig_1_0z);
  assign celloutsig_0_11z = ~((in_data[38] & celloutsig_0_2z) | (in_data[8] & celloutsig_0_1z));
  assign celloutsig_0_28z = ~((celloutsig_0_13z & celloutsig_0_13z) | (celloutsig_0_1z & celloutsig_0_18z[5]));
  assign { celloutsig_0_4z[3:2], celloutsig_0_4z[22:4] } = ~ { celloutsig_0_3z, celloutsig_0_1z, in_data[36:18] };
  assign { celloutsig_0_6z[2:1], celloutsig_0_6z[8:3] } = ~ { celloutsig_0_3z, celloutsig_0_1z, in_data[65:60] };
  assign { celloutsig_0_30z[0], celloutsig_0_30z[15:13], celloutsig_0_30z[11:7], celloutsig_0_30z[1], celloutsig_0_30z[12] } = ~ { celloutsig_0_29z, celloutsig_0_23z[6:4], celloutsig_0_20z, celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_2z };
  assign celloutsig_0_30z[6:2] = celloutsig_0_30z[11:7];
  assign celloutsig_0_4z[1:0] = celloutsig_0_4z[3:2];
  assign celloutsig_0_6z[0] = celloutsig_0_6z[2];
  assign { out_data[128], out_data[103:96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_50z };
endmodule
