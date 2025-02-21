/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [3:0] _01_;
  reg [7:0] _02_;
  reg [2:0] _03_;
  wire [7:0] _04_;
  wire [4:0] _05_;
  wire [11:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [10:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [4:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [8:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [19:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [10:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [6:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire [6:0] celloutsig_0_26z;
  wire [2:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [7:0] celloutsig_0_33z;
  wire [5:0] celloutsig_0_34z;
  wire celloutsig_0_37z;
  wire celloutsig_0_39z;
  wire [6:0] celloutsig_0_3z;
  wire [10:0] celloutsig_0_40z;
  wire [14:0] celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire [14:0] celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire [13:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire [9:0] celloutsig_0_4z;
  wire [21:0] celloutsig_0_50z;
  wire [3:0] celloutsig_0_53z;
  wire celloutsig_0_56z;
  wire celloutsig_0_57z;
  wire [5:0] celloutsig_0_5z;
  wire celloutsig_0_69z;
  wire celloutsig_0_6z;
  wire [8:0] celloutsig_0_7z;
  wire celloutsig_0_80z;
  wire [10:0] celloutsig_0_81z;
  wire [4:0] celloutsig_0_85z;
  wire celloutsig_0_89z;
  wire celloutsig_0_8z;
  wire celloutsig_0_90z;
  wire [10:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire [15:0] celloutsig_1_13z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire [6:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [24:0] celloutsig_1_2z;
  wire [3:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [3:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_6z = celloutsig_1_4z ? celloutsig_1_2z[20] : celloutsig_1_4z;
  assign celloutsig_0_19z = celloutsig_0_15z[3] ? celloutsig_0_15z[3] : celloutsig_0_15z[5];
  assign celloutsig_0_56z = celloutsig_0_43z[4] | ~(celloutsig_0_40z[0]);
  assign celloutsig_0_14z = celloutsig_0_9z[10] | ~(celloutsig_0_6z);
  assign celloutsig_0_34z = celloutsig_0_24z[6:1] + { in_data[34:32], celloutsig_0_30z, celloutsig_0_6z, celloutsig_0_22z };
  assign celloutsig_0_46z = { in_data[37:26], celloutsig_0_18z, celloutsig_0_2z } + { celloutsig_0_41z[10:3], celloutsig_0_13z, celloutsig_0_23z };
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[0])
    if (clkin_data[0]) _02_ <= 8'h00;
    else _02_ <= { celloutsig_0_50z[4:1], celloutsig_0_47z, celloutsig_0_14z, celloutsig_0_22z, celloutsig_0_30z };
  always_ff @(posedge celloutsig_1_18z, negedge clkin_data[0])
    if (!clkin_data[0]) _03_ <= 3'h0;
    else _03_ <= { celloutsig_0_15z[3:2], celloutsig_0_16z };
  reg [7:0] _14_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[0])
    if (clkin_data[0]) _14_ <= 8'h00;
    else _14_ <= { celloutsig_0_7z[7:1], celloutsig_0_6z };
  assign { _04_[7:4], _00_, _04_[2:0] } = _14_;
  reg [4:0] _15_;
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[0])
    if (clkin_data[0]) _15_ <= 5'h00;
    else _15_ <= celloutsig_0_5z[4:0];
  assign { _05_[4], _01_ } = _15_;
  assign celloutsig_0_0z = in_data[15:4] / { 1'h1, in_data[23:13] };
  assign celloutsig_0_85z = { celloutsig_0_41z[6:5], celloutsig_0_23z, celloutsig_0_69z, celloutsig_0_57z } / { 1'h1, _02_[6], celloutsig_0_47z, celloutsig_0_57z, celloutsig_0_45z };
  assign celloutsig_1_8z = celloutsig_1_3z / { 1'h1, celloutsig_1_5z[1:0], celloutsig_1_4z };
  assign celloutsig_0_44z = celloutsig_0_9z[10:5] === { celloutsig_0_5z[4:0], celloutsig_0_1z };
  assign celloutsig_0_16z = { celloutsig_0_11z[10:9], celloutsig_0_1z } === { celloutsig_0_9z[1:0], celloutsig_0_12z };
  assign celloutsig_0_69z = { celloutsig_0_7z[7], celloutsig_0_42z, celloutsig_0_45z } > { _03_[1:0], celloutsig_0_37z };
  assign celloutsig_0_1z = celloutsig_0_0z[9:7] > in_data[55:53];
  assign celloutsig_0_25z = { celloutsig_0_11z[3:1], celloutsig_0_14z, celloutsig_0_16z } > celloutsig_0_9z[9:5];
  assign celloutsig_0_30z = { _01_[3:2], celloutsig_0_1z } <= { celloutsig_0_13z[4], celloutsig_0_6z, celloutsig_0_1z };
  assign celloutsig_0_39z = { celloutsig_0_3z[6:4], celloutsig_0_37z } <= { _04_[2:1], celloutsig_0_32z, celloutsig_0_19z };
  assign celloutsig_0_57z = { celloutsig_0_9z[7], _04_[7:4], _00_, _04_[2:0] } <= celloutsig_0_9z[10:2];
  assign celloutsig_0_22z = celloutsig_0_9z[10:2] <= { celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_10z };
  assign celloutsig_0_31z = celloutsig_0_0z[11:4] || { celloutsig_0_29z[1:0], celloutsig_0_30z, _05_[4], _01_ };
  assign celloutsig_0_37z = { celloutsig_0_24z[3:0], celloutsig_0_18z, celloutsig_0_33z, celloutsig_0_16z, celloutsig_0_21z } || { _01_[1:0], celloutsig_0_33z, celloutsig_0_24z, celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_6z = celloutsig_0_4z[4:2] || celloutsig_0_4z[7:5];
  assign celloutsig_0_80z = { celloutsig_0_4z[6:4], celloutsig_0_42z, celloutsig_0_12z, celloutsig_0_56z, celloutsig_0_12z } || { celloutsig_0_46z[8:5], celloutsig_0_44z, celloutsig_0_2z, celloutsig_0_47z };
  assign celloutsig_0_90z = { celloutsig_0_81z[10:1], celloutsig_0_85z } || { celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_53z, celloutsig_0_15z };
  assign celloutsig_1_0z = in_data[139:111] || in_data[189:161];
  assign celloutsig_1_9z = { in_data[115:112], celloutsig_1_1z, celloutsig_1_8z } || { in_data[115:108], celloutsig_1_7z };
  assign celloutsig_0_18z = { celloutsig_0_9z[8:7], celloutsig_0_14z } || { celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_10z };
  assign celloutsig_0_10z = celloutsig_0_5z[3:0] < in_data[78:75];
  assign celloutsig_0_23z = { celloutsig_0_15z[4:2], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_1z } < { in_data[67:56], celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_45z = celloutsig_0_22z & ~(celloutsig_0_29z[2]);
  assign celloutsig_0_47z = celloutsig_0_18z & ~(celloutsig_0_31z);
  assign celloutsig_1_4z = in_data[148] & ~(celloutsig_1_1z);
  assign celloutsig_0_41z = { celloutsig_0_34z[3:1], celloutsig_0_31z, celloutsig_0_1z, celloutsig_0_33z, celloutsig_0_23z, celloutsig_0_2z } % { 1'h1, celloutsig_0_12z, celloutsig_0_16z, _04_[7:4], _00_, _04_[2:0], celloutsig_0_6z, celloutsig_0_39z, celloutsig_0_22z, celloutsig_0_30z };
  assign celloutsig_0_21z = { in_data[47:39], celloutsig_0_12z, celloutsig_0_10z } % { 1'h1, celloutsig_0_5z[4:0], celloutsig_0_19z, celloutsig_0_14z, _03_ };
  assign celloutsig_0_26z = celloutsig_0_9z[10:4] % { 1'h1, celloutsig_0_5z[4:0], celloutsig_0_12z };
  assign celloutsig_0_4z = in_data[80:71] % { 1'h1, in_data[76:68] };
  assign celloutsig_0_43z = { celloutsig_0_21z[10:3], celloutsig_0_24z } * { celloutsig_0_17z[19:6], celloutsig_0_10z };
  assign { celloutsig_1_13z[15:6], celloutsig_1_13z[1] } = celloutsig_1_10z ? { celloutsig_1_2z[22:13], celloutsig_1_0z } : { in_data[144:143], celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_0z, 1'h0 };
  assign celloutsig_1_17z = celloutsig_1_13z[8] ? { 1'h1, celloutsig_1_13z[7:6], celloutsig_1_5z } : celloutsig_1_2z[17:11];
  assign celloutsig_0_11z = celloutsig_0_1z ? celloutsig_0_9z : { in_data[94:93], celloutsig_0_5z, celloutsig_0_6z, 1'h0, celloutsig_0_10z };
  assign celloutsig_0_29z = celloutsig_0_9z[6] ? celloutsig_0_26z[6:4] : celloutsig_0_9z[10:8];
  assign celloutsig_0_17z = - { celloutsig_0_7z[6], celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_15z };
  assign celloutsig_0_32z = { celloutsig_0_15z[8:7], celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_8z } !== { celloutsig_0_5z[2], celloutsig_0_15z };
  assign celloutsig_1_1z = { in_data[155:154], celloutsig_1_0z } !== in_data[176:174];
  assign celloutsig_1_10z = { celloutsig_1_2z[22:20], celloutsig_1_9z, celloutsig_1_7z } !== { celloutsig_1_9z, celloutsig_1_5z };
  assign celloutsig_1_12z = { celloutsig_1_2z[15:14], celloutsig_1_10z } !== celloutsig_1_3z[2:0];
  assign celloutsig_1_19z = { celloutsig_1_2z[12:0], celloutsig_1_1z, celloutsig_1_17z } !== { celloutsig_1_13z[15:6], celloutsig_1_5z, celloutsig_1_13z[1], celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_15z };
  assign celloutsig_0_2z = in_data[21:18] !== in_data[27:24];
  assign celloutsig_0_53z = ~ celloutsig_0_4z[8:5];
  assign celloutsig_0_81z = ~ celloutsig_0_21z;
  assign celloutsig_0_24z = ~ { celloutsig_0_17z[6:1], celloutsig_0_18z };
  assign celloutsig_0_42z = ^ { celloutsig_0_9z[7:3], celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_0z };
  assign celloutsig_1_15z = ^ { celloutsig_1_8z[1:0], celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_12z, celloutsig_1_10z, celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_14z, celloutsig_1_1z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_0_9z = { celloutsig_0_5z[4:2], celloutsig_0_1z, celloutsig_0_3z } >> { celloutsig_0_4z, celloutsig_0_8z };
  assign celloutsig_0_33z = celloutsig_0_11z[7:0] << in_data[73:66];
  assign celloutsig_0_40z = { in_data[71:63], celloutsig_0_19z, celloutsig_0_23z } << { celloutsig_0_17z[17:14], celloutsig_0_26z };
  assign celloutsig_0_5z = { in_data[68:64], celloutsig_0_2z } << celloutsig_0_0z[7:2];
  assign celloutsig_1_2z = { in_data[173:151], celloutsig_1_1z, celloutsig_1_0z } << in_data[149:125];
  assign celloutsig_1_3z = in_data[179:176] << celloutsig_1_2z[12:9];
  assign celloutsig_1_14z = { in_data[179:178], celloutsig_1_7z } << { celloutsig_1_9z, celloutsig_1_4z, celloutsig_1_10z };
  assign celloutsig_0_7z = { celloutsig_0_4z[6:4], celloutsig_0_5z } <<< { celloutsig_0_4z[7:3], celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_3z = celloutsig_0_0z[10:4] >>> in_data[55:49];
  assign celloutsig_1_5z = { celloutsig_1_2z[23:21], celloutsig_1_0z } >>> in_data[103:100];
  assign celloutsig_0_13z = celloutsig_0_4z[8:4] >>> { celloutsig_0_9z[7:5], celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_0_50z = { celloutsig_0_43z[3:1], celloutsig_0_34z, celloutsig_0_45z, celloutsig_0_16z, celloutsig_0_8z, celloutsig_0_4z } ~^ { celloutsig_0_46z[11:0], celloutsig_0_8z, celloutsig_0_34z, celloutsig_0_25z, celloutsig_0_30z, celloutsig_0_44z };
  assign celloutsig_0_15z = celloutsig_0_11z[10:2] ~^ celloutsig_0_11z[8:0];
  assign celloutsig_0_89z = ~((celloutsig_0_69z & celloutsig_0_80z) | _02_[5]);
  assign celloutsig_1_18z = ~((celloutsig_1_17z[1] & celloutsig_1_6z) | celloutsig_1_4z);
  assign celloutsig_0_8z = ~((celloutsig_0_3z[1] & in_data[49]) | (celloutsig_0_7z[3] & celloutsig_0_0z[1]));
  assign celloutsig_1_7z = ~((celloutsig_1_2z[5] & celloutsig_1_1z) | (celloutsig_1_6z & celloutsig_1_5z[1]));
  assign celloutsig_0_12z = ~((celloutsig_0_3z[2] & celloutsig_0_1z) | (celloutsig_0_6z & in_data[48]));
  assign _04_[3] = _00_;
  assign _05_[3:0] = _01_;
  assign { celloutsig_1_13z[5:2], celloutsig_1_13z[0] } = { celloutsig_1_5z, celloutsig_1_4z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_89z, celloutsig_0_90z };
endmodule
