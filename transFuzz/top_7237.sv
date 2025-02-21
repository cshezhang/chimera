/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire [7:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [15:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire [5:0] celloutsig_0_24z;
  wire [2:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  reg [10:0] celloutsig_0_31z;
  wire [3:0] celloutsig_0_34z;
  wire celloutsig_0_38z;
  wire [9:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire [9:0] celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire [3:0] celloutsig_0_43z;
  wire celloutsig_0_48z;
  wire [9:0] celloutsig_0_4z;
  wire celloutsig_0_54z;
  wire [13:0] celloutsig_0_5z;
  wire celloutsig_0_65z;
  reg [5:0] celloutsig_0_6z;
  wire [6:0] celloutsig_0_7z;
  wire [4:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [6:0] celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [3:0] celloutsig_1_15z;
  wire [4:0] celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [4:0] celloutsig_1_19z;
  wire [5:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  reg [2:0] celloutsig_1_6z;
  wire [17:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_41z = in_data[77] ? in_data[83] : celloutsig_0_29z;
  assign celloutsig_0_48z = celloutsig_0_41z ? celloutsig_0_41z : celloutsig_0_38z;
  assign celloutsig_1_10z = in_data[107] ? celloutsig_1_0z : celloutsig_1_2z;
  assign celloutsig_1_11z = celloutsig_1_7z[6] ? celloutsig_1_8z : celloutsig_1_7z[6];
  assign celloutsig_1_18z = celloutsig_1_6z[0] ? celloutsig_1_12z[0] : celloutsig_1_3z;
  assign celloutsig_0_12z = in_data[37] ? 1'h0 : celloutsig_0_9z;
  assign celloutsig_0_3z = { in_data[13:4], celloutsig_0_0z } === in_data[24:14];
  assign celloutsig_0_34z = celloutsig_0_6z[5:2] * { celloutsig_0_8z[2:0], celloutsig_0_16z };
  assign celloutsig_1_1z = in_data[126:121] * in_data[167:162];
  assign celloutsig_1_12z = { celloutsig_1_1z, celloutsig_1_0z } * { in_data[142:141], celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_10z };
  assign celloutsig_0_10z[3:1] = celloutsig_0_8z[3:0] * celloutsig_0_1z[3:1];
  assign celloutsig_0_11z[7:4] = { celloutsig_0_8z[3], celloutsig_0_3z, celloutsig_0_1z[4:1], 1'h0, celloutsig_0_0z } * celloutsig_0_40z[8:5];
  assign celloutsig_0_4z[9:4] = celloutsig_0_1z[4] ? { celloutsig_0_1z[2:1], 1'h0, celloutsig_0_0z, celloutsig_0_3z, 1'h1 } : { 1'h0, celloutsig_0_1z[3:1], celloutsig_0_2z, 1'h0 };
  assign celloutsig_1_19z = celloutsig_1_11z ? { celloutsig_1_16z[1:0], celloutsig_1_3z, celloutsig_1_17z, celloutsig_1_8z } : { celloutsig_1_6z[0], celloutsig_1_13z, celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_2z };
  assign celloutsig_0_17z = celloutsig_0_3z ? { celloutsig_0_4z[9:7], 1'h1 } : { in_data[48:46], celloutsig_0_12z };
  assign celloutsig_1_4z = { in_data[177:171], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z } != { in_data[112:100], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_17z = celloutsig_1_0z & celloutsig_1_5z;
  assign celloutsig_0_9z = celloutsig_0_2z & celloutsig_0_1z[3];
  assign celloutsig_0_16z = celloutsig_0_40z[7] & celloutsig_0_13z;
  assign celloutsig_0_20z = celloutsig_0_10z[2] & celloutsig_0_6z[2];
  assign celloutsig_0_22z = celloutsig_0_19z & celloutsig_0_20z;
  assign celloutsig_0_0z = | in_data[83:81];
  assign celloutsig_0_54z = | { celloutsig_0_39z[8:0], celloutsig_0_38z, celloutsig_0_26z, celloutsig_0_20z, celloutsig_0_13z, in_data[79] };
  assign celloutsig_0_14z = | { celloutsig_0_40z[9:5], celloutsig_0_5z[11:9] };
  assign celloutsig_0_19z = | { celloutsig_0_40z[9:5], celloutsig_0_18z, celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_5z[11:9], celloutsig_0_1z[4:1] };
  assign celloutsig_0_29z = | { celloutsig_0_26z, celloutsig_0_20z, celloutsig_0_13z, in_data[79] };
  assign celloutsig_1_2z = ^ celloutsig_1_1z[4:0];
  assign celloutsig_1_3z = ^ { celloutsig_1_1z[2:0], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_5z = ^ { celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_1_8z = ^ { celloutsig_1_7z[11:6], celloutsig_1_3z };
  assign celloutsig_1_13z = ^ celloutsig_1_7z[15:12];
  assign celloutsig_0_13z = ^ { in_data[24:11], celloutsig_0_3z };
  assign celloutsig_0_18z = ^ { celloutsig_0_11z[7:4], 3'h0 };
  assign celloutsig_0_2z = ^ in_data[42:21];
  assign celloutsig_0_43z = celloutsig_0_6z[5:2] ~^ celloutsig_0_40z[9:6];
  assign celloutsig_0_8z = in_data[94:90] ^ { celloutsig_0_5z[11:9], celloutsig_0_40z[9:8] };
  assign celloutsig_1_15z = { celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z } ^ in_data[144:141];
  assign celloutsig_1_16z = { celloutsig_1_6z[1:0], celloutsig_1_11z, celloutsig_1_10z, celloutsig_1_11z } ^ { celloutsig_1_15z[1:0], celloutsig_1_13z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_0_25z = { celloutsig_0_8z[4], celloutsig_0_18z, celloutsig_0_3z } ^ celloutsig_0_7z[4:2];
  always_latch
    if (!clkin_data[32]) celloutsig_0_6z = 6'h00;
    else if (celloutsig_1_18z) celloutsig_0_6z = { celloutsig_0_5z[10:9], celloutsig_0_40z[9:6] };
  always_latch
    if (!clkin_data[64]) celloutsig_1_6z = 3'h0;
    else if (!clkin_data[0]) celloutsig_1_6z = celloutsig_1_1z[4:2];
  always_latch
    if (clkin_data[32]) celloutsig_0_31z = 11'h000;
    else if (!celloutsig_1_18z) celloutsig_0_31z = { celloutsig_0_5z[12:9], celloutsig_0_40z[9:6], celloutsig_0_22z, celloutsig_0_9z, celloutsig_0_30z };
  assign celloutsig_0_38z = ~((celloutsig_0_12z & celloutsig_0_31z[2]) | (celloutsig_0_14z & celloutsig_0_15z[1]));
  assign celloutsig_0_65z = ~((in_data[82] & celloutsig_0_43z[2]) | (celloutsig_0_54z & celloutsig_0_25z[2]));
  assign celloutsig_1_0z = ~((in_data[113] & in_data[113]) | (in_data[166] & in_data[169]));
  assign celloutsig_0_26z = ~((celloutsig_0_6z[4] & celloutsig_0_19z) | (celloutsig_0_13z & celloutsig_0_8z[0]));
  assign celloutsig_0_30z = ~((celloutsig_0_29z & celloutsig_0_14z) | (celloutsig_0_14z & celloutsig_0_7z[5]));
  assign celloutsig_0_7z[1] = ~ in_data[5];
  assign celloutsig_0_39z[0] = ~ celloutsig_0_25z[0];
  assign out_data[35] = ~ celloutsig_0_8z[2];
  assign out_data[36] = ~ celloutsig_0_8z[3];
  assign out_data[37] = ~ celloutsig_0_8z[4];
  assign celloutsig_0_39z[1] = ~ celloutsig_0_25z[1];
  assign celloutsig_0_39z[2] = ~ celloutsig_0_25z[2];
  assign celloutsig_0_39z[3] = ~ celloutsig_0_34z[0];
  assign celloutsig_0_1z[4:1] = in_data[95:92] ^ in_data[94:91];
  assign { celloutsig_1_7z[13], celloutsig_1_7z[4], celloutsig_1_7z[12], celloutsig_1_7z[3], celloutsig_1_7z[11], celloutsig_1_7z[2], celloutsig_1_7z[14], celloutsig_1_7z[15], celloutsig_1_7z[17], celloutsig_1_7z[10:5], celloutsig_1_7z[0], celloutsig_1_7z[1] } = { celloutsig_1_6z[2], celloutsig_1_6z[2:1], celloutsig_1_6z[1:0], celloutsig_1_6z[0], celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z[5], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z } ~^ { celloutsig_1_3z, celloutsig_1_1z[3], celloutsig_1_3z, celloutsig_1_1z[2], celloutsig_1_3z, celloutsig_1_1z[1], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_1z[5:4], celloutsig_1_4z, celloutsig_1_1z[0] };
  assign celloutsig_0_24z[5:1] = in_data[74:70] ~^ { celloutsig_0_1z[2], celloutsig_0_16z, celloutsig_0_10z[3:1] };
  assign { celloutsig_0_40z[6:5], celloutsig_0_5z[13:9], celloutsig_0_40z[9:7] } = { celloutsig_0_2z, celloutsig_0_1z[4], in_data[10:5], celloutsig_0_0z, celloutsig_0_0z } ^ { celloutsig_0_4z[5:4], celloutsig_0_1z[2:1], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_4z[9:6] };
  assign { celloutsig_0_7z[3:2], celloutsig_0_7z[6:4], celloutsig_0_7z[0] } = { celloutsig_0_40z[6:5], celloutsig_0_40z[9:7], celloutsig_0_2z } ~^ { in_data[7:6], in_data[10:8], celloutsig_0_0z };
  assign { celloutsig_0_15z[14:13], celloutsig_0_15z[15], celloutsig_0_15z[8], celloutsig_0_15z[0], celloutsig_0_15z[7:1] } = { celloutsig_0_40z[6:5], celloutsig_0_40z[7], celloutsig_0_14z, celloutsig_0_12z, celloutsig_0_7z } ~^ { celloutsig_0_5z[11:10], celloutsig_0_5z[12], celloutsig_0_40z[6], celloutsig_0_2z, celloutsig_0_40z[5], celloutsig_0_6z };
  assign { out_data[38], out_data[32], out_data[34:33] } = { celloutsig_0_48z, celloutsig_0_12z, celloutsig_0_8z[1:0] } ~^ { celloutsig_0_40z[5], celloutsig_0_48z, celloutsig_0_16z, celloutsig_0_20z };
  assign { celloutsig_0_39z[6:4], celloutsig_0_39z[9:7] } = { celloutsig_0_34z[3:1], celloutsig_0_24z[4:3], celloutsig_0_16z } ~^ { celloutsig_0_11z[6:4], celloutsig_0_17z[1:0], celloutsig_0_11z[7] };
  assign celloutsig_0_10z[0] = 1'h0;
  assign celloutsig_0_11z[3:0] = 4'h0;
  assign celloutsig_0_1z[0] = 1'h0;
  assign celloutsig_0_40z[4:2] = 3'h0;
  assign celloutsig_0_4z[3:0] = { celloutsig_0_1z[3:1], 1'h0 };
  assign celloutsig_0_5z[8:0] = { celloutsig_0_40z[9:5], 4'h0 };
  assign celloutsig_1_7z[16] = 1'h1;
  assign { out_data[128], out_data[100:96], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_65z };
endmodule
