/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [9:0] _00_;
  reg [3:0] _01_;
  reg [3:0] _02_;
  wire [4:0] celloutsig_0_0z;
  wire [12:0] celloutsig_0_10z;
  wire [11:0] celloutsig_0_11z;
  wire [5:0] celloutsig_0_12z;
  wire [3:0] celloutsig_0_13z;
  wire [9:0] celloutsig_0_14z;
  wire [6:0] celloutsig_0_15z;
  wire [2:0] celloutsig_0_16z;
  wire [6:0] celloutsig_0_17z;
  wire [5:0] celloutsig_0_18z;
  wire [4:0] celloutsig_0_19z;
  wire [5:0] celloutsig_0_1z;
  wire [12:0] celloutsig_0_20z;
  wire [7:0] celloutsig_0_21z;
  wire [5:0] celloutsig_0_23z;
  wire [3:0] celloutsig_0_24z;
  wire [20:0] celloutsig_0_25z;
  wire [7:0] celloutsig_0_26z;
  wire [10:0] celloutsig_0_27z;
  wire [10:0] celloutsig_0_28z;
  wire [12:0] celloutsig_0_29z;
  wire [2:0] celloutsig_0_30z;
  wire [10:0] celloutsig_0_31z;
  wire [23:0] celloutsig_0_32z;
  wire [4:0] celloutsig_0_33z;
  wire [6:0] celloutsig_0_34z;
  wire [8:0] celloutsig_0_35z;
  wire [3:0] celloutsig_0_36z;
  wire [13:0] celloutsig_0_37z;
  wire [2:0] celloutsig_0_38z;
  wire [43:0] celloutsig_0_3z;
  wire [14:0] celloutsig_0_40z;
  wire [2:0] celloutsig_0_41z;
  wire [25:0] celloutsig_0_43z;
  wire [3:0] celloutsig_0_44z;
  wire [2:0] celloutsig_0_45z;
  wire [9:0] celloutsig_0_46z;
  wire [18:0] celloutsig_0_4z;
  wire [5:0] celloutsig_0_51z;
  wire [6:0] celloutsig_0_52z;
  wire [8:0] celloutsig_0_53z;
  wire [2:0] celloutsig_0_55z;
  wire [26:0] celloutsig_0_59z;
  wire [3:0] celloutsig_0_5z;
  wire [11:0] celloutsig_0_65z;
  wire [5:0] celloutsig_0_69z;
  wire [2:0] celloutsig_0_6z;
  wire [3:0] celloutsig_0_78z;
  wire [2:0] celloutsig_0_7z;
  wire [26:0] celloutsig_0_81z;
  wire [4:0] celloutsig_0_83z;
  wire [2:0] celloutsig_0_86z;
  wire [9:0] celloutsig_0_88z;
  wire [30:0] celloutsig_0_89z;
  wire [5:0] celloutsig_0_8z;
  wire [5:0] celloutsig_1_0z;
  wire [13:0] celloutsig_1_10z;
  wire [17:0] celloutsig_1_12z;
  wire [8:0] celloutsig_1_13z;
  wire [11:0] celloutsig_1_17z;
  wire [5:0] celloutsig_1_18z;
  wire [8:0] celloutsig_1_1z;
  wire [5:0] celloutsig_1_2z;
  wire [9:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire [38:0] celloutsig_1_7z;
  wire [6:0] celloutsig_1_8z;
  wire [5:0] celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _01_ <= 4'h0;
    else _01_ <= { celloutsig_0_7z[0], celloutsig_0_21z[7:6], celloutsig_0_27z[5] };
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _02_ <= 4'h0;
    else _02_ <= { celloutsig_0_6z[2], celloutsig_0_7z };
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z[0])
    if (!celloutsig_1_18z[0]) _00_ <= 10'h000;
    else _00_ <= { in_data[76:72], celloutsig_0_0z };
  assign celloutsig_0_0z = in_data[28:24] ~^ in_data[48:44];
  assign celloutsig_0_33z = _00_[8:4] ~^ { in_data[32], celloutsig_0_5z };
  assign celloutsig_0_35z = { celloutsig_0_10z[4:0], _02_ } ~^ { celloutsig_0_14z[5:2], celloutsig_0_33z };
  assign celloutsig_0_36z = celloutsig_0_35z[7:4] ~^ _00_[3:0];
  assign celloutsig_0_37z = celloutsig_0_4z[13:0] ~^ { celloutsig_0_25z[3], celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_0z };
  assign celloutsig_0_38z = celloutsig_0_14z[4:2] ~^ celloutsig_0_24z[3:1];
  assign celloutsig_0_3z = { _00_, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, _00_, celloutsig_0_1z } ~^ { in_data[63:31], celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_40z = { celloutsig_0_6z[1], celloutsig_0_37z } ~^ { celloutsig_0_35z[4], celloutsig_0_15z, celloutsig_0_13z, celloutsig_0_6z };
  assign celloutsig_0_41z = celloutsig_0_38z ~^ celloutsig_0_36z[2:0];
  assign celloutsig_0_44z = celloutsig_0_18z[4:1] ~^ celloutsig_0_24z;
  assign celloutsig_0_45z = { celloutsig_0_34z[5], celloutsig_0_12z[4:3] } ~^ celloutsig_0_8z[4:2];
  assign celloutsig_0_46z = celloutsig_0_3z[39:30] ~^ { celloutsig_0_33z[4:1], celloutsig_0_1z };
  assign celloutsig_0_4z = { in_data[82:70], celloutsig_0_1z } ~^ in_data[68:50];
  assign celloutsig_0_51z = { celloutsig_0_7z[0], celloutsig_0_21z[7:6], celloutsig_0_27z[5:3] } ~^ celloutsig_0_15z[5:0];
  assign celloutsig_0_52z = celloutsig_0_11z[6:0] ~^ { celloutsig_0_30z, celloutsig_0_32z[5:2] };
  assign celloutsig_0_53z = { celloutsig_0_30z[2:1], celloutsig_0_34z[6:5], celloutsig_0_12z[4:0] } ~^ { celloutsig_0_18z[3:1], celloutsig_0_1z };
  assign celloutsig_0_55z = celloutsig_0_53z[3:1] ~^ _00_[9:7];
  assign celloutsig_0_5z = celloutsig_0_1z[3:0] ~^ _00_[6:3];
  assign celloutsig_0_59z = { celloutsig_0_8z[2], celloutsig_0_44z, celloutsig_0_55z, celloutsig_0_53z, celloutsig_0_52z, celloutsig_0_6z } ~^ { celloutsig_0_11z[9:3], _00_, celloutsig_0_44z, celloutsig_0_51z };
  assign celloutsig_0_6z = celloutsig_0_3z[42:40] ~^ in_data[21:19];
  assign celloutsig_0_78z = { celloutsig_0_23z[1], celloutsig_0_41z } ~^ { celloutsig_0_43z[5], celloutsig_0_21z[1:0], celloutsig_0_30z[2] };
  assign celloutsig_0_7z = celloutsig_0_4z[15:13] ~^ in_data[67:65];
  assign celloutsig_0_86z = celloutsig_0_51z[4:2] ~^ celloutsig_0_40z[5:3];
  assign celloutsig_0_8z = celloutsig_0_3z[26:21] ~^ { _00_[5], celloutsig_0_0z };
  assign celloutsig_0_88z = { _01_[3:2], celloutsig_0_45z, celloutsig_0_83z[4:3], celloutsig_0_29z[2:0] } ~^ { celloutsig_0_38z[1], celloutsig_0_31z[9:8], celloutsig_0_69z[3:0], celloutsig_0_30z };
  assign celloutsig_0_89z = { celloutsig_0_81z[21:10], celloutsig_0_65z[11:5], celloutsig_0_18z[4:0], celloutsig_0_36z, celloutsig_0_45z } ~^ { celloutsig_0_4z[13:10], celloutsig_0_86z, celloutsig_0_34z[6:5], celloutsig_0_12z[4:0], celloutsig_0_20z, celloutsig_0_78z };
  assign celloutsig_1_0z = in_data[149:144] ~^ in_data[166:161];
  assign celloutsig_1_1z = in_data[181:173] ~^ in_data[177:169];
  assign celloutsig_1_2z = celloutsig_1_0z ~^ in_data[115:110];
  assign celloutsig_1_4z = celloutsig_1_0z[3:0] ~^ celloutsig_1_1z[8:5];
  assign celloutsig_1_9z = { in_data[127:126], celloutsig_1_0z[4:1] } ~^ celloutsig_1_2z;
  assign celloutsig_1_12z = { celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z } ~^ { celloutsig_1_1z[7:0], celloutsig_1_9z, celloutsig_1_0z[4:1] };
  assign celloutsig_1_13z = { celloutsig_1_7z[14], celloutsig_1_2z[5:4], celloutsig_1_0z } ~^ { celloutsig_1_10z[12:8], celloutsig_1_2z[3:0] };
  assign celloutsig_1_17z = celloutsig_1_12z[16:5] ~^ { celloutsig_1_13z[4:2], celloutsig_1_0z, in_data[185:183] };
  assign celloutsig_1_18z = celloutsig_1_1z[5:0] ~^ celloutsig_1_12z[17:12];
  assign celloutsig_0_10z = celloutsig_0_3z[22:10] ~^ { _02_[3:2], celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_0z };
  assign celloutsig_0_11z = { celloutsig_0_3z[33:26], celloutsig_0_5z } ~^ in_data[37:26];
  assign celloutsig_0_1z = { in_data[51], celloutsig_0_0z } ~^ in_data[47:42];
  assign celloutsig_0_12z = { celloutsig_0_0z[4:3], celloutsig_0_5z } ~^ { celloutsig_0_4z[10:8], celloutsig_0_6z };
  assign celloutsig_0_13z = celloutsig_0_3z[32:29] ~^ _02_;
  assign celloutsig_0_14z = celloutsig_0_3z[21:12] ~^ celloutsig_0_10z[11:2];
  assign celloutsig_0_15z = in_data[37:31] ~^ { in_data[48:46], _02_ };
  assign celloutsig_0_16z = celloutsig_0_14z[3:1] ~^ celloutsig_0_15z[6:4];
  assign celloutsig_0_17z = { celloutsig_0_11z[6:5], celloutsig_0_0z } ~^ _00_[8:2];
  assign celloutsig_0_18z = celloutsig_0_10z[10:5] ~^ celloutsig_0_4z[15:10];
  assign celloutsig_0_19z = celloutsig_0_1z[4:0] ~^ { celloutsig_0_6z[2:1], celloutsig_0_6z };
  assign celloutsig_0_20z = { celloutsig_0_11z[7:1], celloutsig_0_18z } ~^ { _00_[9:1], _02_ };
  assign celloutsig_0_21z = celloutsig_0_3z[15:8] ~^ { celloutsig_0_10z[12:9], celloutsig_0_5z };
  assign celloutsig_0_23z = { celloutsig_0_1z[2], celloutsig_0_19z } ~^ celloutsig_0_14z[9:4];
  assign celloutsig_0_24z = celloutsig_0_11z[9:6] ~^ celloutsig_0_21z[5:2];
  assign celloutsig_0_28z = { celloutsig_0_17z[6:4], celloutsig_0_21z } ~^ { _02_[2], celloutsig_0_14z };
  assign celloutsig_0_30z = celloutsig_0_11z[5:3] ~^ celloutsig_0_19z[4:2];
  assign celloutsig_0_31z = { celloutsig_0_10z[9:8], celloutsig_0_29z[7:2], celloutsig_0_6z } ~^ { celloutsig_0_3z[19:12], celloutsig_0_16z };
  assign celloutsig_0_26z[7:5] = celloutsig_0_24z[3:1] ~^ celloutsig_0_8z[2:0];
  assign celloutsig_1_3z[9:6] = in_data[107:104] ~^ in_data[139:136];
  assign { celloutsig_0_25z[11:0], celloutsig_0_25z[15:12] } = { celloutsig_0_11z, celloutsig_0_5z } ~^ { celloutsig_0_10z[7:0], celloutsig_0_13z, celloutsig_0_10z[11:8] };
  assign { celloutsig_0_27z[5:0], celloutsig_0_27z[10:9] } = { celloutsig_0_21z[5:0], celloutsig_0_7z[2:1] } ~^ { celloutsig_0_12z, celloutsig_0_26z[6:5] };
  assign { celloutsig_0_29z[12], celloutsig_0_29z[7:0] } = { celloutsig_0_26z[5], celloutsig_0_21z } ~^ { celloutsig_0_10z[12], celloutsig_0_10z[7:6], celloutsig_0_1z };
  assign { celloutsig_0_32z[5:0], celloutsig_0_32z[15:11], celloutsig_0_32z[23], celloutsig_0_32z[21], celloutsig_0_32z[22], celloutsig_0_32z[20:16] } = { celloutsig_0_23z, celloutsig_0_7z, celloutsig_0_5z[3:2], celloutsig_0_1z[5], celloutsig_0_1z[5:4], celloutsig_0_1z[4:0] } ~^ { celloutsig_0_12z, celloutsig_0_10z[4:3], celloutsig_0_26z[7:5], celloutsig_0_10z[12], celloutsig_0_10z[10], celloutsig_0_10z[11], celloutsig_0_10z[9:5] };
  assign celloutsig_0_34z[6:5] = celloutsig_0_26z[6:5] ~^ { celloutsig_0_17z[2], celloutsig_0_12z[5] };
  assign { celloutsig_0_43z[25:23], celloutsig_0_43z[15:5] } = { celloutsig_0_10z[12], celloutsig_0_25z[15:14], celloutsig_0_25z[6:2], celloutsig_0_21z[7:2] } ~^ { celloutsig_0_41z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_26z[7:5] };
  assign celloutsig_0_65z[11:5] = { celloutsig_0_28z[10:7], celloutsig_0_26z[7:5] } ~^ { celloutsig_0_46z[8:3], celloutsig_0_18z[5] };
  assign celloutsig_0_69z[3:0] = celloutsig_0_5z ~^ celloutsig_0_31z[7:4];
  assign celloutsig_0_81z[26:7] = celloutsig_0_59z[20:1] ~^ { celloutsig_0_4z[17:1], celloutsig_0_14z[9:7] };
  assign celloutsig_0_83z[4:3] = celloutsig_0_26z[6:5] ~^ celloutsig_0_29z[4:3];
  assign { celloutsig_1_7z[38:35], celloutsig_1_7z[9], celloutsig_1_7z[24], celloutsig_1_7z[8], celloutsig_1_7z[23], celloutsig_1_7z[7], celloutsig_1_7z[22], celloutsig_1_7z[6], celloutsig_1_7z[21], celloutsig_1_7z[14] } = { celloutsig_1_0z[5:2], celloutsig_1_3z[9], celloutsig_1_3z[9:8], celloutsig_1_3z[8:7], celloutsig_1_3z[7:6], celloutsig_1_3z[6], celloutsig_1_3z[6] } ~^ { celloutsig_1_3z[9:6], celloutsig_1_2z[1], celloutsig_1_0z[4], celloutsig_1_2z[0], celloutsig_1_0z[3], celloutsig_1_4z[3], celloutsig_1_0z[2], celloutsig_1_4z[2], celloutsig_1_0z[1:0] };
  assign { celloutsig_1_10z[9], celloutsig_1_8z[4], celloutsig_1_8z[6] } = { celloutsig_1_2z[5:4], celloutsig_1_0z[3] } ~^ { celloutsig_1_3z[7:6], celloutsig_1_3z[8] };
  assign { celloutsig_1_10z[13:10], celloutsig_1_10z[8] } = { celloutsig_1_3z[9:6], celloutsig_1_3z[6] } ~^ { celloutsig_1_4z[3:1], celloutsig_1_8z[6], celloutsig_1_8z[4] };
  assign out_data[101:97] = { celloutsig_1_17z[7:5], in_data[185:184] } ~^ { celloutsig_1_10z[8], celloutsig_1_2z[3:0] };
  assign celloutsig_0_25z[20:16] = { celloutsig_0_21z[3:0], celloutsig_0_10z[12] };
  assign celloutsig_0_26z[4:0] = 5'h1f;
  assign celloutsig_0_27z[8:6] = { celloutsig_0_7z[0], celloutsig_0_21z[7:6] };
  assign celloutsig_0_29z[11:8] = celloutsig_0_10z[11:8];
  assign celloutsig_0_32z[10:6] = { celloutsig_0_5z[1:0], celloutsig_0_30z };
  assign celloutsig_0_34z[4:0] = celloutsig_0_12z[4:0];
  assign { celloutsig_0_43z[22:16], celloutsig_0_43z[4:0] } = { celloutsig_0_25z[13:7], celloutsig_0_21z[1:0], celloutsig_0_30z };
  assign celloutsig_0_65z[4:0] = celloutsig_0_18z[4:0];
  assign celloutsig_0_69z[5:4] = celloutsig_0_31z[9:8];
  assign celloutsig_0_81z[6:0] = celloutsig_0_14z[6:0];
  assign celloutsig_0_83z[2:0] = celloutsig_0_29z[2:0];
  assign celloutsig_1_10z[7:0] = { celloutsig_1_2z[3:0], 4'hf };
  assign celloutsig_1_3z[5:0] = 6'h3f;
  assign { celloutsig_1_7z[34:25], celloutsig_1_7z[20:15], celloutsig_1_7z[13:10], celloutsig_1_7z[5:0] } = { celloutsig_1_3z[9:6], 1'h1, celloutsig_1_0z[4:1], celloutsig_1_0z[5], celloutsig_1_0z[0], celloutsig_1_0z[5:1], celloutsig_1_2z[5:2], celloutsig_1_4z[1:0], celloutsig_1_0z[4:1] };
  assign { celloutsig_1_8z[5], celloutsig_1_8z[3:0] } = { celloutsig_1_10z[9], celloutsig_1_2z[3:0] };
  assign { out_data[133:128], out_data[96], out_data[41:32], out_data[30:0] } = { celloutsig_1_18z, in_data[183], celloutsig_0_88z, celloutsig_0_89z };
endmodule
