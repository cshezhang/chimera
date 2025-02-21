/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [12:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [15:0] celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire [5:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [31:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  reg [3:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_34z;
  wire [8:0] celloutsig_0_36z;
  wire [2:0] celloutsig_0_37z;
  wire [3:0] celloutsig_0_3z;
  wire [4:0] celloutsig_0_41z;
  wire [11:0] celloutsig_0_42z;
  wire [8:0] celloutsig_0_45z;
  wire [2:0] celloutsig_0_46z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [12:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [7:0] celloutsig_1_16z;
  wire [9:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [6:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [2:0] celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  wire [19:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_11z = ~(celloutsig_1_1z & celloutsig_1_9z);
  assign celloutsig_1_15z = ~(celloutsig_1_11z & celloutsig_1_8z[18]);
  assign celloutsig_0_17z = ~(celloutsig_0_5z & celloutsig_0_11z);
  assign celloutsig_1_14z = celloutsig_1_5z | ~(celloutsig_1_4z);
  assign celloutsig_0_6z = celloutsig_0_4z | ~(celloutsig_0_3z[3]);
  assign celloutsig_0_12z = celloutsig_0_3z[1] | ~(celloutsig_0_4z);
  assign celloutsig_0_14z = celloutsig_0_2z | ~(celloutsig_0_4z);
  assign celloutsig_0_23z = celloutsig_0_5z | ~(celloutsig_0_22z);
  assign celloutsig_0_26z = celloutsig_0_24z | ~(celloutsig_0_2z);
  assign celloutsig_0_30z = celloutsig_0_9z[0] | ~(celloutsig_0_9z[2]);
  assign celloutsig_1_1z = ~(in_data[173] ^ in_data[185]);
  assign celloutsig_1_3z = ~(celloutsig_1_0z ^ celloutsig_1_2z[4]);
  assign celloutsig_1_9z = ~(celloutsig_1_4z ^ celloutsig_1_3z);
  assign celloutsig_0_11z = ~(celloutsig_0_0z ^ celloutsig_0_2z);
  assign celloutsig_1_12z = { celloutsig_1_10z[2:0], celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_5z } >= { celloutsig_1_10z[7:1], celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_19z = { celloutsig_1_7z, celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_15z, celloutsig_1_15z, celloutsig_1_5z, celloutsig_1_5z } >= { celloutsig_1_16z, celloutsig_1_7z };
  assign celloutsig_0_10z = { celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_3z } >= { in_data[45:21], celloutsig_0_8z };
  assign celloutsig_0_16z = { celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_5z } >= { celloutsig_0_1z[3:2], celloutsig_0_10z, celloutsig_0_10z };
  assign celloutsig_1_13z = { celloutsig_1_8z[18:12], celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_12z } <= celloutsig_1_10z[12:3];
  assign celloutsig_0_5z = { in_data[13:11], celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_4z } <= { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_2z };
  assign celloutsig_1_0z = in_data[166:155] || in_data[164:153];
  assign celloutsig_0_4z = { celloutsig_0_3z[2:1], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_2z } || { celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_8z = { celloutsig_0_3z[0], celloutsig_0_3z, celloutsig_0_2z } || in_data[15:10];
  assign celloutsig_0_36z = { celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_21z } % { 1'h1, in_data[14:11], celloutsig_0_26z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_34z };
  assign celloutsig_1_2z = { in_data[127], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_0z } % { 1'h1, in_data[187:183], celloutsig_1_1z };
  assign celloutsig_1_7z = { celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_1z } % { 1'h1, celloutsig_1_0z, celloutsig_1_5z };
  assign celloutsig_0_15z = { in_data[78:68], celloutsig_0_8z, celloutsig_0_6z } % { 1'h1, celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_14z };
  assign celloutsig_0_20z = { celloutsig_0_15z[12], celloutsig_0_9z, celloutsig_0_16z } % { 1'h1, celloutsig_0_11z, celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_14z };
  assign celloutsig_1_10z = { celloutsig_1_8z[15:6], celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_1z } % { 1'h1, in_data[148:137] };
  assign celloutsig_0_3z = celloutsig_0_1z[1] ? { celloutsig_0_1z[3:2], 1'h1, celloutsig_0_1z[0] } : { celloutsig_0_1z[4:2], 1'h0 };
  assign celloutsig_0_45z = celloutsig_0_24z ? { celloutsig_0_15z[5], celloutsig_0_20z, celloutsig_0_26z, celloutsig_0_8z, 1'h1 } : celloutsig_0_42z[9:1];
  assign celloutsig_1_8z = celloutsig_1_1z ? in_data[156:137] : in_data[180:161];
  assign celloutsig_0_9z = in_data[85] ? { celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_8z } : celloutsig_0_3z[2:0];
  assign celloutsig_0_37z = in_data[50:48] | celloutsig_0_3z[3:1];
  assign celloutsig_1_18z = { celloutsig_1_11z, celloutsig_1_16z, celloutsig_1_15z } | { celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_13z };
  assign celloutsig_0_25z = { in_data[59:43], celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_22z, celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_17z } | { celloutsig_0_15z[12:6], celloutsig_0_18z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_17z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_7z, celloutsig_0_23z, celloutsig_0_24z, celloutsig_0_21z, celloutsig_0_13z };
  assign celloutsig_1_5z = & { celloutsig_1_4z, celloutsig_1_3z, in_data[137:121] };
  assign celloutsig_0_7z = & { celloutsig_0_5z, celloutsig_0_1z, in_data[86:75] };
  assign celloutsig_0_22z = & { celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_1z, in_data[86:75] };
  assign celloutsig_0_28z = & { celloutsig_0_27z, celloutsig_0_1z };
  assign celloutsig_1_4z = celloutsig_1_1z & celloutsig_1_0z;
  assign celloutsig_0_13z = | { celloutsig_0_6z, celloutsig_0_3z[3:1] };
  assign celloutsig_0_34z = ~^ { celloutsig_0_25z[28:24], celloutsig_0_7z, celloutsig_0_30z, celloutsig_0_8z, celloutsig_0_24z, celloutsig_0_27z };
  assign celloutsig_0_18z = ~^ { in_data[38:33], celloutsig_0_11z };
  assign celloutsig_0_19z = { celloutsig_0_15z[8:0], celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_12z } >> { celloutsig_0_1z[4:1], celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_13z, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_13z };
  assign celloutsig_0_21z = { celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_10z, celloutsig_0_12z } >> celloutsig_0_15z[12:7];
  assign celloutsig_0_46z = { celloutsig_0_27z[1], celloutsig_0_2z, celloutsig_0_10z } << { celloutsig_0_28z, celloutsig_0_26z, celloutsig_0_14z };
  assign celloutsig_1_16z = { celloutsig_1_7z[1:0], celloutsig_1_14z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_1z, celloutsig_1_9z } << { celloutsig_1_10z[12:7], celloutsig_1_1z, celloutsig_1_13z };
  assign celloutsig_0_1z = in_data[63:59] << in_data[16:12];
  assign celloutsig_0_41z = { celloutsig_0_20z[3:2], celloutsig_0_37z } ~^ { celloutsig_0_19z[9:7], celloutsig_0_22z, celloutsig_0_10z };
  assign celloutsig_0_42z = { celloutsig_0_23z, celloutsig_0_10z, celloutsig_0_36z, celloutsig_0_0z } ~^ { celloutsig_0_1z[3:2], celloutsig_0_27z, celloutsig_0_41z, celloutsig_0_14z };
  assign celloutsig_1_6z = { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_0z } ~^ { in_data[121], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_0z = ~((in_data[92] & in_data[87]) | in_data[73]);
  assign celloutsig_0_24z = ~((celloutsig_0_22z & celloutsig_0_16z) | celloutsig_0_0z);
  always_latch
    if (!celloutsig_1_19z) celloutsig_0_27z = 4'h0;
    else if (clkin_data[0]) celloutsig_0_27z = { celloutsig_0_21z[3:1], celloutsig_0_2z };
  assign celloutsig_0_2z = ~((in_data[68] & celloutsig_0_1z[3]) | (celloutsig_0_1z[3] & in_data[85]));
  assign { out_data[137:128], out_data[96], out_data[40:32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_45z, celloutsig_0_46z };
endmodule
