/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [2:0] _01_;
  wire celloutsig_0_0z;
  wire [11:0] celloutsig_0_11z;
  wire [3:0] celloutsig_0_13z;
  wire [7:0] celloutsig_0_1z;
  reg [3:0] celloutsig_0_26z;
  wire celloutsig_0_2z;
  wire celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [6:0] celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire [10:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [3:0] celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [17:0] celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire [3:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [11:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [7:0] celloutsig_1_8z;
  reg [2:0] celloutsig_1_9z;
  input [191:0] clkin_data;
  wire [191:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_38z = celloutsig_0_26z[1] ? celloutsig_0_26z[3] : _00_;
  assign celloutsig_1_0z = in_data[159] ? in_data[125] : in_data[108];
  assign celloutsig_1_19z = celloutsig_1_5z ? celloutsig_1_4z[3] : celloutsig_1_1z;
  assign celloutsig_1_2z = ~((in_data[155] | in_data[135]) & (celloutsig_1_0z | celloutsig_1_1z));
  assign celloutsig_1_5z = ~((celloutsig_1_0z | celloutsig_1_4z[3]) & (celloutsig_1_3z | celloutsig_1_4z[2]));
  assign celloutsig_1_10z = ~((celloutsig_1_4z[1] | in_data[154]) & (celloutsig_1_2z | celloutsig_1_3z));
  assign celloutsig_0_39z = ~(celloutsig_0_26z[2] ^ celloutsig_0_13z[1]);
  assign celloutsig_0_6z = ~(celloutsig_0_0z ^ in_data[22]);
  reg [2:0] _10_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[64])
    if (!clkin_data[64]) _10_ <= 3'h0;
    else _10_ <= celloutsig_0_9z[4:2];
  assign { _01_[2:1], _00_ } = _10_;
  assign celloutsig_1_13z = celloutsig_1_8z[6:1] == { celloutsig_1_4z, celloutsig_1_12z };
  assign celloutsig_1_14z = { celloutsig_1_6z[8:6], celloutsig_1_13z, celloutsig_1_0z, celloutsig_1_8z } == { celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_7z, celloutsig_1_11z, celloutsig_1_1z };
  assign celloutsig_0_5z = celloutsig_0_3z >= { celloutsig_0_1z[7:2], celloutsig_0_4z };
  assign celloutsig_1_17z = { celloutsig_1_16z[16:15], celloutsig_1_15z, celloutsig_1_14z, celloutsig_1_8z, celloutsig_1_6z } >= { celloutsig_1_16z[15:4], celloutsig_1_14z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_12z, celloutsig_1_0z };
  assign celloutsig_0_7z = ! { in_data[15:12], celloutsig_0_4z };
  assign celloutsig_1_1z = celloutsig_1_0z & ~(in_data[153]);
  assign celloutsig_1_7z = celloutsig_1_2z & ~(in_data[132]);
  assign celloutsig_0_3z = celloutsig_0_1z[7:1] * in_data[83:77];
  assign celloutsig_1_4z = { celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z } * in_data[164:160];
  assign celloutsig_1_11z = - { celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_10z, celloutsig_1_0z };
  assign celloutsig_1_18z = ~ { celloutsig_1_11z[3:2], celloutsig_1_7z, celloutsig_1_17z };
  assign celloutsig_0_1z = ~ in_data[46:39];
  assign celloutsig_0_2z = ^ { celloutsig_0_1z[7:5], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_6z = { celloutsig_1_4z[1:0], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z } <<< in_data[121:110];
  assign celloutsig_1_16z = { celloutsig_1_3z, celloutsig_1_15z, celloutsig_1_13z, celloutsig_1_9z, celloutsig_1_15z, celloutsig_1_14z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_15z } <<< { celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_0_8z = { celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_5z, celloutsig_0_5z } <<< { celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_0_13z = celloutsig_0_3z[6:3] <<< { celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_1_8z = { celloutsig_1_6z[11:5], celloutsig_1_5z } >>> { in_data[113:107], celloutsig_1_0z };
  assign celloutsig_0_9z = { celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_4z } >>> { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_4z };
  assign celloutsig_0_4z = ~((celloutsig_0_0z & in_data[57]) | celloutsig_0_3z[3]);
  always_latch
    if (!clkin_data[96]) celloutsig_1_9z = 3'h0;
    else if (!clkin_data[160]) celloutsig_1_9z = { celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_7z };
  always_latch
    if (celloutsig_1_18z[0]) celloutsig_0_26z = 4'h0;
    else if (!clkin_data[128]) celloutsig_0_26z = celloutsig_0_11z[4:1];
  assign celloutsig_0_0z = ~((in_data[29] & in_data[73]) | (in_data[55] & in_data[73]));
  assign celloutsig_1_3z = ~((in_data[98] & in_data[141]) | (celloutsig_1_0z & celloutsig_1_0z));
  assign celloutsig_1_12z = ~((celloutsig_1_8z[0] & celloutsig_1_11z[0]) | (celloutsig_1_10z & celloutsig_1_11z[2]));
  assign celloutsig_1_15z = ~((celloutsig_1_12z & celloutsig_1_6z[9]) | (celloutsig_1_7z & celloutsig_1_12z));
  assign { celloutsig_0_11z[11], celloutsig_0_11z[7:3], celloutsig_0_11z[1], celloutsig_0_11z[2], celloutsig_0_11z[9], celloutsig_0_11z[10] } = ~ { celloutsig_0_9z[7], celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_2z };
  assign _01_[0] = _00_;
  assign { celloutsig_0_11z[8], celloutsig_0_11z[0] } = { celloutsig_0_11z[10], celloutsig_0_11z[1] };
  assign { out_data[131:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_38z, celloutsig_0_39z };
endmodule
