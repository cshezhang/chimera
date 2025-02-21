/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [12:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [18:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [17:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [7:0] celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_37z;
  wire celloutsig_0_39z;
  wire [2:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  reg [18:0] celloutsig_0_45z;
  wire [11:0] celloutsig_0_46z;
  wire celloutsig_0_4z;
  wire [19:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [4:0] celloutsig_0_7z;
  wire [2:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire [18:0] celloutsig_1_15z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [15:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [6:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [5:0] celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_13z = celloutsig_1_1z ? celloutsig_1_5z[6] : in_data[165];
  assign celloutsig_1_14z = celloutsig_1_6z ? celloutsig_1_1z : celloutsig_1_11z;
  assign celloutsig_0_21z = celloutsig_0_13z[12] ? celloutsig_0_8z[0] : celloutsig_0_11z;
  assign celloutsig_0_22z = celloutsig_0_10z ? celloutsig_0_20z[8] : celloutsig_0_0z[5];
  assign celloutsig_0_30z = !(celloutsig_0_10z ? celloutsig_0_14z : celloutsig_0_13z[14]);
  assign celloutsig_1_12z = !(celloutsig_1_5z[5] ? celloutsig_1_10z[3] : celloutsig_1_1z);
  assign celloutsig_0_1z = !(in_data[65] ? celloutsig_0_0z[5] : in_data[8]);
  assign celloutsig_0_17z = !(celloutsig_0_3z[2] ? celloutsig_0_4z : celloutsig_0_14z);
  assign celloutsig_0_27z = !(celloutsig_0_19z ? celloutsig_0_15z : celloutsig_0_1z);
  assign celloutsig_1_0z = ~(in_data[159] | in_data[174]);
  assign celloutsig_0_37z = ~((celloutsig_0_17z | celloutsig_0_34z) & celloutsig_0_17z);
  assign celloutsig_0_19z = ~((celloutsig_0_9z | celloutsig_0_18z) & celloutsig_0_18z);
  assign celloutsig_0_40z = celloutsig_0_34z | celloutsig_0_21z;
  assign celloutsig_0_46z = celloutsig_0_5z[18:7] + { celloutsig_0_45z[9:6], celloutsig_0_24z, celloutsig_0_39z, celloutsig_0_22z, celloutsig_0_8z, celloutsig_0_39z, celloutsig_0_40z };
  assign celloutsig_1_15z = { celloutsig_1_10z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_14z, celloutsig_1_2z, celloutsig_1_12z } + { celloutsig_1_3z[12:3], celloutsig_1_3z[3], celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_13z };
  assign celloutsig_0_20z = { celloutsig_0_5z[14:2], celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_1z } & { celloutsig_0_13z[8], celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_15z };
  assign celloutsig_0_34z = { in_data[24:8], celloutsig_0_9z } == { celloutsig_0_33z[6:3], celloutsig_0_33z[5], celloutsig_0_33z[7], celloutsig_0_33z[0], celloutsig_0_12z, celloutsig_0_33z[7:3], celloutsig_0_33z[5], celloutsig_0_33z[7], celloutsig_0_33z[0], celloutsig_0_2z, celloutsig_0_24z };
  assign celloutsig_0_4z = celloutsig_0_0z[12:4] == { celloutsig_0_0z[10:5], celloutsig_0_3z };
  assign celloutsig_1_4z = in_data[127:123] == { celloutsig_1_3z[6:5], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_1_11z = { celloutsig_1_3z[3], celloutsig_1_3z[3], celloutsig_1_3z[3], celloutsig_1_3z[3], celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_8z[3:2], celloutsig_1_8z[2], celloutsig_1_8z[2], celloutsig_1_6z, celloutsig_1_7z } == { celloutsig_1_1z, celloutsig_1_3z[15:3], celloutsig_1_3z[3], celloutsig_1_3z[3], celloutsig_1_3z[3] };
  assign celloutsig_0_11z = { celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_6z } == celloutsig_0_0z[11:9];
  assign celloutsig_0_18z = { celloutsig_0_7z[3:0], celloutsig_0_1z } == celloutsig_0_13z[4:0];
  assign celloutsig_0_28z = { in_data[56:53], celloutsig_0_17z, celloutsig_0_11z } == { celloutsig_0_13z[9:5], celloutsig_0_27z };
  assign celloutsig_1_6z = { celloutsig_1_3z[15:3], celloutsig_1_3z[3] } >= { in_data[161:158], celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_0_12z = { celloutsig_0_3z[1], celloutsig_0_9z, celloutsig_0_2z } >= { celloutsig_0_8z[2:1], celloutsig_0_11z };
  assign celloutsig_0_10z = { celloutsig_0_8z, celloutsig_0_2z } <= { celloutsig_0_0z[10:9], celloutsig_0_1z, celloutsig_0_9z };
  assign celloutsig_0_14z = { in_data[78], celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_7z } <= { celloutsig_0_0z[12:4], celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_11z };
  assign celloutsig_0_24z = { celloutsig_0_13z[14:9], celloutsig_0_2z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_3z, celloutsig_0_6z } <= { celloutsig_0_8z[1:0], celloutsig_0_21z, celloutsig_0_21z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_15z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_23z, celloutsig_0_22z, celloutsig_0_2z };
  assign celloutsig_0_39z = ! { celloutsig_0_23z, celloutsig_0_2z, celloutsig_0_37z, celloutsig_0_9z, celloutsig_0_10z };
  assign celloutsig_1_2z = ! { in_data[100:97], celloutsig_1_0z };
  assign celloutsig_0_6z = ! celloutsig_0_0z[10:1];
  assign celloutsig_0_2z = in_data[56:46] || in_data[64:54];
  assign celloutsig_1_1z = { in_data[100:99], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z } < in_data[170:166];
  assign celloutsig_0_9z = in_data[43:33] < { celloutsig_0_0z[4:2], celloutsig_0_7z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_4z };
  assign celloutsig_0_15z = { celloutsig_0_5z[11], celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_8z } < { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_0_0z = in_data[12] ? { in_data[18:13], 1'h1, in_data[11:6] } : in_data[56:44];
  assign celloutsig_0_3z = celloutsig_0_2z ? { in_data[59:58], celloutsig_0_1z } : celloutsig_0_0z[8:6];
  assign celloutsig_1_10z = celloutsig_1_8z[2] ? celloutsig_1_5z[6:1] : in_data[177:172];
  assign celloutsig_0_5z = celloutsig_0_0z[6] ? { celloutsig_0_3z[1:0], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_0z[12:7], 1'h1, celloutsig_0_0z[5:0], celloutsig_0_3z } : in_data[48:29];
  assign celloutsig_0_7z = in_data[64] ? { celloutsig_0_0z[8], celloutsig_0_3z, celloutsig_0_2z } : { celloutsig_0_3z[2:1], celloutsig_0_3z };
  assign celloutsig_0_8z = celloutsig_0_3z[0] ? { celloutsig_0_7z[4], celloutsig_0_6z, celloutsig_0_2z } : { celloutsig_0_3z[2], celloutsig_0_4z, celloutsig_0_1z };
  assign celloutsig_0_13z = in_data[15] ? { celloutsig_0_0z[12:5], celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_8z, celloutsig_0_4z } : { celloutsig_0_0z[11:4], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_7z };
  assign celloutsig_1_7z = ~ celloutsig_1_5z[5:0];
  assign celloutsig_1_19z = & celloutsig_1_15z[13:0];
  assign celloutsig_0_23z = & celloutsig_0_0z;
  assign celloutsig_1_5z = celloutsig_1_3z[10:4] <<< in_data[129:123];
  always_latch
    if (!clkin_data[0]) celloutsig_0_45z = 19'h00000;
    else if (out_data[128]) celloutsig_0_45z = { celloutsig_0_13z[15:0], celloutsig_0_4z, celloutsig_0_39z, celloutsig_0_18z };
  assign { celloutsig_0_33z[5], celloutsig_0_33z[0], celloutsig_0_33z[7], celloutsig_0_33z[4:3], celloutsig_0_33z[6] } = ~ { celloutsig_0_30z, celloutsig_0_28z, celloutsig_0_24z, celloutsig_0_21z, celloutsig_0_17z, celloutsig_0_4z };
  assign { celloutsig_1_3z[3], celloutsig_1_3z[15:4] } = ~ { celloutsig_1_0z, in_data[126:115] };
  assign { celloutsig_1_8z[2], celloutsig_1_8z[3] } = ~ { celloutsig_1_6z, in_data[120] };
  assign { out_data[134], out_data[128], out_data[136:135], out_data[132], out_data[133], out_data[129] } = ~ { celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_5z[2:1], celloutsig_1_8z[2], celloutsig_1_8z[3], celloutsig_1_0z };
  assign celloutsig_0_33z[2:1] = { celloutsig_0_33z[5], celloutsig_0_33z[7] };
  assign celloutsig_1_3z[2:0] = { celloutsig_1_3z[3], celloutsig_1_3z[3], celloutsig_1_3z[3] };
  assign celloutsig_1_8z[1:0] = { celloutsig_1_8z[2], celloutsig_1_8z[2] };
  assign { out_data[131:130], out_data[96], out_data[50:32], out_data[11:0] } = { out_data[132], out_data[132], celloutsig_1_19z, celloutsig_0_45z, celloutsig_0_46z };
endmodule
