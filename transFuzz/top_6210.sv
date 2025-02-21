/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [3:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [7:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  reg [3:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [3:0] celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire [42:0] celloutsig_0_18z;
  wire [16:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  reg [3:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [3:0] celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [6:0] celloutsig_0_29z;
  wire [6:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  reg [16:0] celloutsig_0_36z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_46z;
  wire [5:0] celloutsig_0_4z;
  reg [6:0] celloutsig_0_52z;
  wire celloutsig_0_57z;
  wire celloutsig_0_5z;
  wire [2:0] celloutsig_0_63z;
  wire celloutsig_0_64z;
  wire [8:0] celloutsig_0_65z;
  wire [11:0] celloutsig_0_6z;
  reg [2:0] celloutsig_0_71z;
  wire [7:0] celloutsig_0_72z;
  wire [3:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire [15:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire [3:0] celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [4:0] celloutsig_1_6z;
  wire [15:0] celloutsig_1_7z;
  wire [2:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_40z = ~(celloutsig_0_24z[3] & celloutsig_0_23z);
  assign celloutsig_1_3z = ~(celloutsig_1_0z & celloutsig_1_1z[0]);
  assign celloutsig_1_18z = ~(celloutsig_1_2z & celloutsig_1_10z[1]);
  assign celloutsig_0_26z = ~(celloutsig_0_9z & celloutsig_0_17z[3]);
  assign celloutsig_0_64z = ~celloutsig_0_57z;
  assign celloutsig_0_34z = ~((celloutsig_0_31z | celloutsig_0_27z) & celloutsig_0_31z);
  assign celloutsig_1_4z = ~((celloutsig_1_3z | celloutsig_1_2z) & celloutsig_1_3z);
  assign celloutsig_1_5z = ~((celloutsig_1_3z | in_data[128]) & celloutsig_1_4z);
  assign celloutsig_1_9z = ~((celloutsig_1_7z[11] | celloutsig_1_2z) & in_data[122]);
  assign celloutsig_1_15z = ~((celloutsig_1_12z | celloutsig_1_6z[1]) & celloutsig_1_2z);
  assign celloutsig_0_15z = ~((celloutsig_0_7z[0] | celloutsig_0_4z[3]) & celloutsig_0_4z[3]);
  assign celloutsig_0_20z = ~((celloutsig_0_2z[6] | celloutsig_0_1z) & celloutsig_0_15z);
  assign celloutsig_0_33z = celloutsig_0_29z[6] | celloutsig_0_26z;
  assign celloutsig_0_3z = celloutsig_0_1z | celloutsig_0_2z[3];
  assign celloutsig_0_46z = celloutsig_0_6z[4] | in_data[10];
  assign celloutsig_0_57z = celloutsig_0_31z | celloutsig_0_6z[0];
  assign celloutsig_0_8z = celloutsig_0_6z[1] | celloutsig_0_2z[6];
  assign celloutsig_0_21z = celloutsig_0_16z[1] | celloutsig_0_15z;
  assign celloutsig_0_23z = celloutsig_0_3z | celloutsig_0_16z[0];
  assign celloutsig_0_72z = { celloutsig_0_65z[7:2], celloutsig_0_64z, celloutsig_0_40z } + celloutsig_0_36z[14:7];
  assign celloutsig_1_7z = in_data[189:174] & { in_data[158:147], celloutsig_1_3z, celloutsig_1_1z };
  assign celloutsig_0_12z = { in_data[86], celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_11z } & { celloutsig_0_6z[5:2], celloutsig_0_0z };
  assign celloutsig_0_7z = celloutsig_0_6z[10:7] / { 1'h1, in_data[8:6] };
  assign celloutsig_1_14z = { celloutsig_1_1z[1], celloutsig_1_2z, celloutsig_1_2z } / { 1'h1, celloutsig_1_8z[0], celloutsig_1_11z };
  assign celloutsig_0_16z = { celloutsig_0_0z[3:1], celloutsig_0_9z } / { 1'h1, celloutsig_0_14z[2:0] };
  assign celloutsig_0_5z = { in_data[26:15], celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_1z } > { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_31z = { celloutsig_0_18z[41:22], celloutsig_0_30z, celloutsig_0_26z, celloutsig_0_11z } > { celloutsig_0_16z[2:1], celloutsig_0_2z, celloutsig_0_23z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_12z };
  assign celloutsig_1_0z = in_data[168:160] <= in_data[141:133];
  assign celloutsig_0_11z = ! celloutsig_0_0z[2:0];
  assign celloutsig_0_27z = ! { celloutsig_0_15z, celloutsig_0_0z };
  assign celloutsig_1_16z = in_data[142:129] || { celloutsig_1_12z, celloutsig_1_14z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_6z, celloutsig_1_12z };
  assign celloutsig_1_12z = celloutsig_1_6z < { celloutsig_1_8z[2:1], celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_4z };
  assign celloutsig_0_9z = { celloutsig_0_6z[9:2], celloutsig_0_4z } != { celloutsig_0_2z, celloutsig_0_2z };
  assign celloutsig_0_13z = celloutsig_0_12z[7:2] != celloutsig_0_2z[6:1];
  assign celloutsig_0_30z = celloutsig_0_24z != { celloutsig_0_7z[2:1], celloutsig_0_20z, celloutsig_0_11z };
  assign celloutsig_0_4z = - { in_data[92:91], celloutsig_0_0z };
  assign celloutsig_1_1z = - in_data[159:157];
  assign celloutsig_0_24z = - celloutsig_0_22z;
  assign celloutsig_0_2z = - { in_data[16:14], celloutsig_0_0z };
  assign celloutsig_0_29z = - { celloutsig_0_7z[3:1], celloutsig_0_14z };
  assign celloutsig_1_11z = { celloutsig_1_7z[9:7], celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } !== { celloutsig_1_6z[3:0], celloutsig_1_6z };
  assign celloutsig_0_0z = in_data[77:74] >> in_data[31:28];
  assign celloutsig_0_63z = { celloutsig_0_4z[1:0], celloutsig_0_33z } >> celloutsig_0_7z[2:0];
  assign celloutsig_0_65z = { celloutsig_0_52z[1], celloutsig_0_0z, celloutsig_0_34z, celloutsig_0_63z } >> celloutsig_0_19z[12:4];
  assign celloutsig_1_6z = { in_data[133], celloutsig_1_1z, celloutsig_1_4z } >> { in_data[129:126], celloutsig_1_0z };
  assign celloutsig_1_8z = { celloutsig_1_7z[2:1], celloutsig_1_4z } >> celloutsig_1_7z[8:6];
  assign celloutsig_1_10z = { in_data[186:184], celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_9z } >> { in_data[177:173], celloutsig_1_5z };
  assign celloutsig_1_17z = { celloutsig_1_8z[2], celloutsig_1_15z, celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_14z, celloutsig_1_2z, celloutsig_1_15z, celloutsig_1_6z, celloutsig_1_16z, celloutsig_1_0z } >> { in_data[148:134], celloutsig_1_15z };
  assign celloutsig_0_18z = { celloutsig_0_6z[10:2], celloutsig_0_13z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_16z, celloutsig_0_14z } >> { celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_14z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_14z, celloutsig_0_16z };
  assign celloutsig_0_19z = { celloutsig_0_14z[3:1], celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_15z, celloutsig_0_0z } >> { in_data[18], celloutsig_0_9z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_17z, celloutsig_0_11z, celloutsig_0_10z };
  assign celloutsig_0_6z = { celloutsig_0_2z[5:1], celloutsig_0_1z, celloutsig_0_4z } << { in_data[15:13], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z };
  assign celloutsig_1_19z = { celloutsig_1_11z, celloutsig_1_16z, celloutsig_1_12z, celloutsig_1_3z } << { celloutsig_1_17z[2:0], celloutsig_1_5z };
  assign celloutsig_0_17z = { celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_13z, celloutsig_0_13z } << { celloutsig_0_4z[3:1], celloutsig_0_13z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_36z = 17'h00000;
    else if (clkin_data[0]) celloutsig_0_36z = { celloutsig_0_32z, celloutsig_0_29z, celloutsig_0_31z, celloutsig_0_4z, celloutsig_0_34z, celloutsig_0_33z };
  always_latch
    if (!celloutsig_1_18z) celloutsig_0_52z = 7'h00;
    else if (clkin_data[0]) celloutsig_0_52z = celloutsig_0_18z[17:11];
  always_latch
    if (celloutsig_1_18z) celloutsig_0_71z = 3'h0;
    else if (clkin_data[0]) celloutsig_0_71z = { celloutsig_0_63z[1], celloutsig_0_32z, celloutsig_0_46z };
  always_latch
    if (celloutsig_1_18z) celloutsig_0_14z = 4'h0;
    else if (clkin_data[0]) celloutsig_0_14z = celloutsig_0_7z;
  always_latch
    if (celloutsig_1_18z) celloutsig_0_22z = 4'h0;
    else if (!clkin_data[0]) celloutsig_0_22z = celloutsig_0_4z[5:2];
  assign celloutsig_1_2z = ~((celloutsig_1_1z[0] & in_data[178]) | (celloutsig_1_1z[0] & celloutsig_1_0z));
  assign celloutsig_0_10z = ~((celloutsig_0_3z & celloutsig_0_3z) | (celloutsig_0_8z & in_data[62]));
  assign celloutsig_0_1z = ~((celloutsig_0_0z[1] & celloutsig_0_0z[1]) | (celloutsig_0_0z[0] & in_data[77]));
  assign celloutsig_0_32z = ~((celloutsig_0_29z[5] & celloutsig_0_13z) | (celloutsig_0_9z & celloutsig_0_21z));
  assign { out_data[128], out_data[99:96], out_data[34:32], out_data[7:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_71z, celloutsig_0_72z };
endmodule
