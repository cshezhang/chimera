/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [3:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [10:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [3:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [12:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [19:0] celloutsig_0_22z;
  wire [12:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire [8:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [16:0] celloutsig_0_2z;
  wire [14:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_34z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [3:0] celloutsig_0_44z;
  wire celloutsig_0_45z;
  reg [3:0] celloutsig_0_47z;
  wire [18:0] celloutsig_0_4z;
  wire celloutsig_0_52z;
  wire celloutsig_0_55z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire [7:0] celloutsig_0_63z;
  wire celloutsig_0_66z;
  wire celloutsig_0_68z;
  wire celloutsig_0_6z;
  wire [7:0] celloutsig_0_70z;
  wire celloutsig_0_7z;
  wire [2:0] celloutsig_0_80z;
  wire celloutsig_0_81z;
  reg [10:0] celloutsig_0_82z;
  wire celloutsig_0_8z;
  wire [10:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [4:0] celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire [8:0] celloutsig_1_14z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [7:0] celloutsig_1_3z;
  reg [7:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  reg [2:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_1z = in_data[180] ? in_data[181] : in_data[180];
  assign celloutsig_0_15z = celloutsig_0_12z[9] ? celloutsig_0_9z[10] : celloutsig_0_0z[2];
  assign celloutsig_0_34z = ~(celloutsig_0_14z & celloutsig_0_9z[0]);
  assign celloutsig_0_5z = ~(celloutsig_0_0z[1] & celloutsig_0_1z[6]);
  assign celloutsig_1_8z = ~(celloutsig_1_6z & 1'h0);
  assign celloutsig_0_38z = ~(celloutsig_0_37z | celloutsig_0_1z[8]);
  assign celloutsig_0_6z = ~(celloutsig_0_4z[3] | celloutsig_0_5z);
  assign celloutsig_0_68z = ~(in_data[8] | celloutsig_0_9z[6]);
  assign celloutsig_0_10z = ~(celloutsig_0_0z[3] | celloutsig_0_5z);
  assign celloutsig_0_37z = ~((celloutsig_0_24z | celloutsig_0_11z) & (celloutsig_0_16z | celloutsig_0_20z));
  assign celloutsig_0_13z = ~((celloutsig_0_1z[12] | celloutsig_0_0z[1]) & (celloutsig_0_4z[15] | celloutsig_0_12z[2]));
  assign celloutsig_0_21z = celloutsig_0_5z | ~(celloutsig_0_11z);
  assign celloutsig_0_41z = celloutsig_0_17z | celloutsig_0_37z;
  assign celloutsig_0_66z = celloutsig_0_10z | celloutsig_0_26z;
  assign celloutsig_0_3z = in_data[2] ^ celloutsig_0_2z[5];
  assign celloutsig_0_60z = celloutsig_0_29z ^ in_data[55];
  assign celloutsig_0_19z = celloutsig_0_13z ^ celloutsig_0_3z;
  assign celloutsig_0_26z = celloutsig_0_15z ^ celloutsig_0_19z;
  assign celloutsig_0_63z = celloutsig_0_22z[17:10] + { in_data[18:12], celloutsig_0_26z };
  assign celloutsig_0_1z = { in_data[31:27], celloutsig_0_0z, celloutsig_0_0z } + in_data[44:32];
  assign celloutsig_0_31z = in_data[80:75] >= { celloutsig_0_22z[6:3], celloutsig_0_15z, celloutsig_0_3z };
  assign celloutsig_1_18z = { celloutsig_1_3z[4], celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_9z } >= { celloutsig_1_5z[5:0], celloutsig_1_13z };
  assign celloutsig_0_42z = { celloutsig_0_22z[19:15], celloutsig_0_15z, celloutsig_0_38z, celloutsig_0_5z } <= { celloutsig_0_9z[5:2], celloutsig_0_37z, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_31z };
  assign celloutsig_0_52z = { celloutsig_0_0z[0], celloutsig_0_8z, celloutsig_0_19z, celloutsig_0_31z, celloutsig_0_26z, celloutsig_0_47z } <= celloutsig_0_9z[9:1];
  assign celloutsig_1_17z = { in_data[104:100], celloutsig_1_14z, celloutsig_1_13z, celloutsig_1_1z, 1'h0, celloutsig_1_7z } <= { celloutsig_1_5z[5:0], celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_11z };
  assign celloutsig_0_16z = celloutsig_0_9z[9:4] <= { celloutsig_0_4z[17:13], celloutsig_0_8z };
  assign celloutsig_1_6z = celloutsig_1_3z[0] & ~(in_data[142]);
  assign celloutsig_0_14z = celloutsig_0_7z & ~(celloutsig_0_13z);
  assign celloutsig_0_20z = celloutsig_0_1z[8] & ~(celloutsig_0_2z[9]);
  assign celloutsig_0_24z = celloutsig_0_18z[1] & ~(celloutsig_0_13z);
  assign celloutsig_0_29z = celloutsig_0_23z[9] & ~(celloutsig_0_15z);
  assign celloutsig_0_4z = { celloutsig_0_2z[14:0], celloutsig_0_0z } % { 1'h1, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_70z = celloutsig_0_30z[10:3] % { 1'h1, celloutsig_0_23z[4:1], celloutsig_0_68z, celloutsig_0_60z, celloutsig_0_24z };
  assign celloutsig_0_80z = celloutsig_0_44z[3:1] % { 1'h1, celloutsig_0_44z[1:0] };
  assign celloutsig_0_27z = { celloutsig_0_1z[10:6], celloutsig_0_17z, celloutsig_0_21z, celloutsig_0_17z, celloutsig_0_7z } * { celloutsig_0_4z[8:1], celloutsig_0_19z };
  assign celloutsig_0_12z = celloutsig_0_4z[11] ? { celloutsig_0_4z[18:12], 1'h1, celloutsig_0_4z[10:8] } : { celloutsig_0_4z[16:12], 1'h0, celloutsig_0_4z[10:7], celloutsig_0_3z };
  assign celloutsig_0_45z = { celloutsig_0_12z[7:1], celloutsig_0_8z, celloutsig_0_17z } !== { celloutsig_0_27z[4:1], celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_21z };
  assign celloutsig_1_13z = { celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_0z } !== celloutsig_1_3z[5:1];
  assign celloutsig_0_17z = { celloutsig_0_9z[9], celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_13z } !== celloutsig_0_2z[6:2];
  assign celloutsig_0_55z = | { celloutsig_0_34z, celloutsig_0_7z, celloutsig_0_42z, celloutsig_0_45z, celloutsig_0_41z, celloutsig_0_52z, celloutsig_0_20z };
  assign celloutsig_1_0z = | in_data[111:107];
  assign celloutsig_0_8z = celloutsig_0_2z[10] & celloutsig_0_7z;
  assign celloutsig_0_7z = ^ in_data[41:29];
  assign celloutsig_1_9z = ^ { celloutsig_1_7z[2:1], celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_0_0z = in_data[4:1] << in_data[51:48];
  assign celloutsig_0_44z = { celloutsig_0_6z, celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_19z } << { celloutsig_0_24z, celloutsig_0_41z, celloutsig_0_24z, celloutsig_0_38z };
  assign celloutsig_1_11z = { 3'h0, celloutsig_1_9z, celloutsig_1_9z } << { celloutsig_1_5z[6:5], celloutsig_1_7z };
  assign celloutsig_0_30z = { celloutsig_0_27z[8:1], celloutsig_0_3z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_24z, celloutsig_0_13z, celloutsig_0_24z, celloutsig_0_20z } << { celloutsig_0_4z[8:2], celloutsig_0_20z, celloutsig_0_28z, celloutsig_0_21z, celloutsig_0_0z, celloutsig_0_17z };
  assign celloutsig_0_18z = celloutsig_0_2z[12:9] >> celloutsig_0_12z[9:6];
  assign celloutsig_0_22z = { celloutsig_0_9z[10:2], celloutsig_0_12z } - { celloutsig_0_0z[3:1], celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_5z };
  assign celloutsig_1_3z = { in_data[173:167], celloutsig_1_1z } ~^ { in_data[116:112], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_14z = { celloutsig_1_3z, celloutsig_1_8z } ~^ { celloutsig_1_7z[0], celloutsig_1_3z };
  assign celloutsig_0_2z = { in_data[88:76], celloutsig_0_0z } ~^ { celloutsig_0_1z[3:0], celloutsig_0_1z };
  assign celloutsig_0_9z = celloutsig_0_1z[12:2] ^ { celloutsig_0_2z[12:3], celloutsig_0_8z };
  assign celloutsig_0_23z = celloutsig_0_4z[17:5] ^ { celloutsig_0_1z[9:4], celloutsig_0_15z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_18z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_47z = 4'h0;
    else if (clkin_data[0]) celloutsig_0_47z = { celloutsig_0_30z[14:13], celloutsig_0_29z, celloutsig_0_28z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_82z = 11'h000;
    else if (clkin_data[0]) celloutsig_0_82z = { celloutsig_0_63z[7:2], celloutsig_0_55z, celloutsig_0_80z, celloutsig_0_34z };
  always_latch
    if (!clkin_data[64]) celloutsig_1_5z = 8'h00;
    else if (!clkin_data[32]) celloutsig_1_5z = { in_data[173:167], celloutsig_1_0z };
  always_latch
    if (clkin_data[64]) celloutsig_1_7z = 3'h0;
    else if (clkin_data[32]) celloutsig_1_7z = in_data[120:118];
  assign celloutsig_0_81z = ~((celloutsig_0_66z & celloutsig_0_17z) | (celloutsig_0_70z[0] & celloutsig_0_29z));
  assign celloutsig_1_2z = ~((in_data[124] & celloutsig_1_1z) | (in_data[164] & in_data[176]));
  assign celloutsig_1_19z = ~((celloutsig_1_17z & 1'h0) | (celloutsig_1_6z & celloutsig_1_17z));
  assign celloutsig_0_11z = ~((celloutsig_0_4z[4] & celloutsig_0_9z[5]) | (celloutsig_0_0z[2] & celloutsig_0_3z));
  assign celloutsig_0_28z = ~((celloutsig_0_13z & celloutsig_0_22z[2]) | (celloutsig_0_19z & celloutsig_0_8z));
  assign { out_data[128], out_data[96], out_data[32], out_data[10:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_81z, celloutsig_0_82z };
endmodule
