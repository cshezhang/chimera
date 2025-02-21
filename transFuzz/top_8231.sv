/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire [24:0] _07_;
  wire [11:0] _08_;
  wire [3:0] _09_;
  wire [12:0] _10_;
  reg [3:0] _11_;
  reg [6:0] _12_;
  wire [3:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [2:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [3:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [8:0] celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire [5:0] celloutsig_0_26z;
  wire [7:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [13:0] celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [7:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [12:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire [3:0] celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_47z;
  wire [8:0] celloutsig_0_48z;
  wire [6:0] celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire [4:0] celloutsig_0_55z;
  wire celloutsig_0_56z;
  wire celloutsig_0_5z;
  wire celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire celloutsig_0_62z;
  wire celloutsig_0_66z;
  wire celloutsig_0_70z;
  wire celloutsig_0_75z;
  wire [24:0] celloutsig_0_79z;
  wire [3:0] celloutsig_0_80z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire [3:0] celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [3:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [5:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_40z = _00_ ? celloutsig_0_29z : celloutsig_0_14z;
  assign celloutsig_0_44z = celloutsig_0_41z ? celloutsig_0_4z : celloutsig_0_16z;
  assign celloutsig_0_29z = celloutsig_0_15z ? _01_ : celloutsig_0_15z;
  assign celloutsig_0_8z = ~(_02_ & celloutsig_0_2z);
  assign celloutsig_0_18z = ~(celloutsig_0_5z & in_data[9]);
  assign celloutsig_0_61z = !(celloutsig_0_5z ? celloutsig_0_34z : celloutsig_0_60z);
  assign celloutsig_1_2z = !(celloutsig_1_0z ? _04_ : _03_);
  assign celloutsig_0_4z = ~in_data[5];
  assign celloutsig_0_19z = ~celloutsig_0_14z;
  assign celloutsig_0_28z = ~celloutsig_0_12z;
  assign celloutsig_0_75z = ~((in_data[27] | celloutsig_0_55z[1]) & celloutsig_0_49z[0]);
  assign celloutsig_1_3z = ~((_05_ | celloutsig_1_2z) & celloutsig_1_2z);
  assign celloutsig_0_34z = celloutsig_0_27z[5] | celloutsig_0_18z;
  assign celloutsig_1_14z = celloutsig_1_7z[0] | in_data[146];
  assign celloutsig_1_9z = { in_data[183:179], celloutsig_1_4z } + { celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_8z };
  reg [24:0] _28_;
  always_ff @(negedge celloutsig_1_0z, posedge clkin_data[64])
    if (clkin_data[64]) _28_ <= 25'h0000000;
    else _28_ <= { celloutsig_0_27z[7:1], celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_13z[2:1], celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_29z, celloutsig_0_13z[2:1], celloutsig_0_9z, celloutsig_0_28z, celloutsig_0_22z, celloutsig_0_3z, celloutsig_0_21z, celloutsig_0_9z };
  assign { _07_[24:4], _06_, _07_[2:0] } = _28_;
  reg [11:0] _29_;
  always_ff @(posedge celloutsig_1_0z, posedge clkin_data[64])
    if (clkin_data[64]) _29_ <= 12'h000;
    else _29_ <= { in_data[27], celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_4z, in_data[27:25], celloutsig_0_3z };
  assign { _08_[11:2], _01_, _08_[0] } = _29_;
  reg [12:0] _30_;
  always_ff @(negedge celloutsig_1_0z, posedge clkin_data[64])
    if (clkin_data[64]) _30_ <= 13'h0000;
    else _30_ <= { in_data[68], _08_[11:2], _01_, _08_[0] };
  assign { _10_[12:7], _00_, _02_, _10_[4:0] } = _30_;
  reg [3:0] _31_;
  always_ff @(posedge clkin_data[0], posedge clkin_data[96])
    if (clkin_data[96]) _31_ <= 4'h0;
    else _31_ <= in_data[139:136];
  assign { _03_, _05_, _04_, _09_[0] } = _31_;
  always_ff @(posedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _11_ <= 4'h0;
    else _11_ <= { in_data[122], celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_5z };
  always_ff @(posedge celloutsig_1_0z, negedge clkin_data[64])
    if (!clkin_data[64]) _12_ <= 7'h00;
    else _12_ <= { celloutsig_0_3z[3:1], in_data[27:25], celloutsig_0_9z };
  assign celloutsig_1_7z = { celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_3z } / { 1'h1, in_data[181], celloutsig_1_3z, celloutsig_1_4z };
  assign celloutsig_1_0z = in_data[128:125] === in_data[105:102];
  assign celloutsig_1_5z = { celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z } <= { celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_6z = { celloutsig_1_2z, celloutsig_1_2z, _03_, _05_, _04_, _09_[0], celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_2z } <= { _03_, _05_, _04_, _09_[0], celloutsig_1_5z, _03_, _05_, _04_, _09_[0] };
  assign celloutsig_1_11z = celloutsig_1_9z[4:1] <= _11_;
  assign celloutsig_1_18z = { celloutsig_1_6z, celloutsig_1_9z, celloutsig_1_7z, celloutsig_1_7z } <= { celloutsig_1_13z[1:0], celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_14z, celloutsig_1_4z, celloutsig_1_13z, celloutsig_1_8z, celloutsig_1_7z };
  assign celloutsig_0_66z = { _08_[11:10], celloutsig_0_16z } && { _07_[4], _06_, _07_[2] };
  assign celloutsig_0_70z = { celloutsig_0_61z, celloutsig_0_12z, celloutsig_0_14z, celloutsig_0_16z } && { _08_[3:2], _01_, celloutsig_0_62z };
  assign celloutsig_0_16z = { in_data[74], celloutsig_0_1z, celloutsig_0_9z } && celloutsig_0_3z[3:1];
  assign celloutsig_1_12z = ! { celloutsig_1_0z, _03_, _05_, _04_, _09_[0], celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_8z, _11_ };
  assign celloutsig_0_30z = ! celloutsig_0_20z[2:0];
  assign celloutsig_0_41z = celloutsig_0_36z[6:4] || { celloutsig_0_34z, celloutsig_0_12z, celloutsig_0_28z };
  assign celloutsig_0_47z = in_data[27:25] || celloutsig_0_27z[2:0];
  assign celloutsig_0_9z = { _10_[8:7], _00_, _02_, _10_[4:2], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_2z, celloutsig_0_4z, _10_[12:7], _00_, _02_, _10_[4:0], in_data[27:25], celloutsig_0_4z, celloutsig_0_2z } || { _08_[10:2], _01_, _08_[0], celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_1z, _08_[11:2], _01_, _08_[0], in_data[27:25], celloutsig_0_2z, celloutsig_0_5z };
  assign celloutsig_0_62z = { celloutsig_0_31z[7:0], celloutsig_0_40z } < { _08_[7], celloutsig_0_56z, celloutsig_0_29z, celloutsig_0_51z, celloutsig_0_20z, celloutsig_0_47z };
  assign celloutsig_0_15z = { celloutsig_0_2z, celloutsig_0_12z, celloutsig_0_8z } < { celloutsig_0_13z[2:1], celloutsig_0_9z };
  assign celloutsig_0_32z = celloutsig_0_25z & ~(celloutsig_0_1z);
  assign celloutsig_0_35z = _12_[0] & ~(_07_[9]);
  assign celloutsig_0_39z = _12_[3] & ~(celloutsig_0_27z[2]);
  assign celloutsig_0_51z = _12_[2] & ~(celloutsig_0_15z);
  assign celloutsig_0_60z = celloutsig_0_12z & ~(celloutsig_0_19z);
  assign celloutsig_1_4z = in_data[116] & ~(celloutsig_1_0z);
  assign celloutsig_1_8z = celloutsig_1_3z & ~(celloutsig_1_0z);
  assign celloutsig_0_11z = celloutsig_0_5z & ~(in_data[26]);
  assign celloutsig_0_12z = celloutsig_0_2z & ~(in_data[70]);
  assign out_data[113:97] = celloutsig_1_14z ? { celloutsig_1_13z[2], celloutsig_1_18z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_18z, celloutsig_1_4z, celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_5z, celloutsig_1_13z } : { celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_13z, celloutsig_1_7z, _11_, celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_0_13z[2:1] = celloutsig_0_10z[3] ? { celloutsig_0_12z, celloutsig_0_12z } : { celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_0_23z = celloutsig_0_10z[3] ? { in_data[76:72], celloutsig_0_15z, celloutsig_0_9z, celloutsig_0_14z, celloutsig_0_2z } : { in_data[82:75], celloutsig_0_16z };
  assign celloutsig_0_10z = ~ _08_[8:5];
  assign celloutsig_0_38z = { celloutsig_0_8z, celloutsig_0_10z, celloutsig_0_36z } | { _08_[8:2], _01_, celloutsig_0_37z, celloutsig_0_32z, celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_4z };
  assign celloutsig_0_45z = & celloutsig_0_31z[8:4];
  assign celloutsig_0_52z = & celloutsig_0_3z[3:1];
  assign celloutsig_0_1z = & in_data[56:53];
  assign celloutsig_0_21z = & { _00_, celloutsig_0_16z, celloutsig_0_12z, _10_[12:7], celloutsig_0_5z, celloutsig_0_2z };
  assign celloutsig_0_56z = celloutsig_0_30z & celloutsig_0_52z;
  assign celloutsig_0_14z = celloutsig_0_10z[2] & celloutsig_0_3z[0];
  assign celloutsig_0_37z = ~^ celloutsig_0_17z;
  assign celloutsig_0_42z = ~^ { celloutsig_0_27z, celloutsig_0_14z, celloutsig_0_8z, celloutsig_0_14z };
  assign celloutsig_0_22z = ~^ { celloutsig_0_5z, celloutsig_0_18z, celloutsig_0_13z[2:1], celloutsig_0_9z };
  assign celloutsig_0_2z = ~^ in_data[48:46];
  assign celloutsig_0_48z = { celloutsig_0_26z[3], celloutsig_0_22z, celloutsig_0_34z, celloutsig_0_42z, celloutsig_0_32z, celloutsig_0_35z, celloutsig_0_39z, celloutsig_0_19z, celloutsig_0_8z } >> celloutsig_0_38z[9:1];
  assign celloutsig_0_79z = { in_data[27:25], celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_34z, celloutsig_0_45z, celloutsig_0_48z, celloutsig_0_66z, celloutsig_0_61z, celloutsig_0_4z, celloutsig_0_56z, celloutsig_0_44z } >> { celloutsig_0_42z, celloutsig_0_25z, celloutsig_0_11z, celloutsig_0_75z, celloutsig_0_12z, celloutsig_0_10z, celloutsig_0_31z, celloutsig_0_40z, celloutsig_0_70z };
  assign celloutsig_0_17z = { celloutsig_0_13z[2:1], celloutsig_0_9z, celloutsig_0_15z } >> { celloutsig_0_3z[2:0], celloutsig_0_1z };
  assign celloutsig_0_49z = { _00_, _02_, _10_[4:0] } << { _10_[10:7], _00_, _02_, _10_[4] };
  assign celloutsig_0_55z = { celloutsig_0_31z[9:7], celloutsig_0_2z, celloutsig_0_40z } >> { celloutsig_0_31z[10:7], celloutsig_0_52z };
  assign celloutsig_1_13z = { celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_11z } >> { celloutsig_1_0z, celloutsig_1_12z, celloutsig_1_5z, celloutsig_1_2z };
  assign celloutsig_0_26z = { celloutsig_0_20z, celloutsig_0_18z, celloutsig_0_18z } >> { celloutsig_0_12z, celloutsig_0_20z, celloutsig_0_1z };
  assign celloutsig_0_27z = { celloutsig_0_26z[2:1], celloutsig_0_20z, celloutsig_0_8z, celloutsig_0_16z } >> { _12_[6:1], celloutsig_0_25z, celloutsig_0_25z };
  assign celloutsig_0_80z = celloutsig_0_36z[6:3] >>> { _10_[8:7], _00_, celloutsig_0_37z };
  assign celloutsig_0_3z = { in_data[26], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z } >>> { in_data[86:84], celloutsig_0_1z };
  assign celloutsig_0_36z = { celloutsig_0_23z[3:2], celloutsig_0_17z, celloutsig_0_1z, celloutsig_0_21z } ^ { _08_[9], celloutsig_0_25z, celloutsig_0_14z, celloutsig_0_34z, celloutsig_0_35z, celloutsig_0_13z[2:1], celloutsig_0_9z };
  assign celloutsig_0_20z = celloutsig_0_3z ^ { celloutsig_0_9z, celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_5z };
  assign celloutsig_0_31z = { _08_[9:3], celloutsig_0_18z, celloutsig_0_22z, celloutsig_0_11z, celloutsig_0_3z } ^ { in_data[51:50], celloutsig_0_4z, celloutsig_0_13z[2:1], celloutsig_0_9z, celloutsig_0_25z, celloutsig_0_5z, celloutsig_0_28z, celloutsig_0_10z, celloutsig_0_11z };
  assign celloutsig_0_5z = ~((celloutsig_0_3z[1] & celloutsig_0_3z[1]) | celloutsig_0_2z);
  assign celloutsig_0_25z = ~((celloutsig_0_15z & _08_[10]) | celloutsig_0_4z);
  assign _07_[3] = _06_;
  assign _08_[1] = _01_;
  assign _09_[3:1] = { _03_, _05_, _04_ };
  assign _10_[6:5] = { _00_, _02_ };
  assign celloutsig_0_13z[0] = celloutsig_0_9z;
  assign { out_data[128], out_data[96], out_data[56:32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_0z, celloutsig_0_79z, celloutsig_0_80z };
endmodule
