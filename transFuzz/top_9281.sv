/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [10:0] _03_;
  wire [11:0] _04_;
  reg [9:0] _05_;
  wire [15:0] _06_;
  wire celloutsig_0_0z;
  wire [5:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [6:0] celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire [19:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [14:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [7:0] celloutsig_0_25z;
  wire [4:0] celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_43z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire celloutsig_0_54z;
  wire celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [5:0] celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_0z = in_data[131] ? in_data[111] : in_data[163];
  assign celloutsig_0_7z = celloutsig_0_0z ? in_data[36] : celloutsig_0_4z;
  assign celloutsig_0_17z = celloutsig_0_4z ? celloutsig_0_2z : celloutsig_0_12z[1];
  assign celloutsig_0_21z = celloutsig_0_16z ? celloutsig_0_10z[5] : celloutsig_0_20z;
  assign celloutsig_0_43z = ~(celloutsig_0_3z & celloutsig_0_2z);
  assign celloutsig_0_6z = !(celloutsig_0_5z ? celloutsig_0_4z : celloutsig_0_5z);
  assign celloutsig_0_30z = ~celloutsig_0_20z;
  assign celloutsig_0_23z = ~celloutsig_0_16z;
  assign celloutsig_0_31z = ~((celloutsig_0_29z | celloutsig_0_17z) & (celloutsig_0_4z | celloutsig_0_28z));
  assign celloutsig_0_36z = ~((celloutsig_0_23z | celloutsig_0_21z) & (celloutsig_0_27z | _00_));
  assign celloutsig_0_40z = ~((celloutsig_0_4z | celloutsig_0_31z) & (celloutsig_0_26z[0] | celloutsig_0_23z));
  assign celloutsig_0_49z = ~((celloutsig_0_40z | celloutsig_0_33z) & (celloutsig_0_25z[0] | _01_));
  assign celloutsig_0_14z = ~((celloutsig_0_6z | celloutsig_0_0z) & (celloutsig_0_5z | celloutsig_0_9z));
  assign celloutsig_0_20z = ~((celloutsig_0_2z | celloutsig_0_8z) & (celloutsig_0_12z[5] | celloutsig_0_17z));
  assign celloutsig_0_24z = ~((celloutsig_0_15z[16] | celloutsig_0_5z) & (celloutsig_0_17z | celloutsig_0_23z));
  assign celloutsig_1_4z = _02_ | in_data[176];
  assign celloutsig_1_6z = celloutsig_1_3z ^ celloutsig_1_0z;
  reg [10:0] _24_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _24_ <= 11'h000;
    else _24_ <= { celloutsig_0_12z[6:4], celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_28z, celloutsig_0_7z, celloutsig_0_32z, celloutsig_0_35z, celloutsig_0_34z, celloutsig_0_32z };
  assign { _03_[10:2], _01_, _03_[0] } = _24_;
  reg [11:0] _25_;
  always_ff @(negedge clkin_data[32], posedge clkin_data[96])
    if (clkin_data[96]) _25_ <= 12'h000;
    else _25_ <= { in_data[117:107], celloutsig_1_0z };
  assign { _04_[11:10], _02_, _04_[8:0] } = _25_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _05_ <= 10'h000;
    else _05_ <= { in_data[40:32], celloutsig_0_9z };
  reg [15:0] _27_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[64])
    if (!clkin_data[64]) _27_ <= 16'h0000;
    else _27_ <= { celloutsig_0_5z, celloutsig_0_5z, _05_, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_21z, celloutsig_0_20z };
  assign { _06_[15:14], _00_, _06_[12:0] } = _27_;
  assign celloutsig_0_18z = { _05_[7:0], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_11z } / { 1'h1, _05_[8:2], celloutsig_0_1z, celloutsig_0_16z, celloutsig_0_17z, celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_5z };
  assign celloutsig_0_32z = { celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_28z } > { celloutsig_0_15z[11:9], celloutsig_0_24z };
  assign celloutsig_0_28z = { _06_[15:14], _00_, _06_[12:0], celloutsig_0_9z } > { celloutsig_0_12z, celloutsig_0_27z, celloutsig_0_25z, celloutsig_0_27z };
  assign celloutsig_0_35z = ! { _05_[9:6], celloutsig_0_5z };
  assign celloutsig_0_5z = ! { in_data[71:65], celloutsig_0_2z };
  assign celloutsig_1_3z = ! _04_[6:1];
  assign celloutsig_0_19z = ! celloutsig_0_15z[6:4];
  assign celloutsig_0_0z = in_data[92:89] < in_data[65:62];
  assign celloutsig_0_54z = { celloutsig_0_21z, celloutsig_0_49z, celloutsig_0_24z, celloutsig_0_11z, celloutsig_0_30z, celloutsig_0_11z } < { celloutsig_0_10z[4:0], celloutsig_0_1z };
  assign celloutsig_0_16z = { in_data[33:25], celloutsig_0_9z } < { in_data[64:59], celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_11z };
  assign celloutsig_0_29z = celloutsig_0_1z & ~(celloutsig_0_18z[1]);
  assign celloutsig_1_2z = _04_[2] & ~(in_data[166]);
  assign celloutsig_0_8z = celloutsig_0_4z & ~(celloutsig_0_7z);
  assign celloutsig_0_58z = { celloutsig_0_15z[19:12], celloutsig_0_49z, celloutsig_0_6z } != { celloutsig_0_4z, celloutsig_0_54z, celloutsig_0_43z, celloutsig_0_9z, celloutsig_0_17z, celloutsig_0_38z, celloutsig_0_36z, celloutsig_0_6z, celloutsig_0_31z, celloutsig_0_35z };
  assign celloutsig_0_11z = { celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_5z } != { in_data[95:92], celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_9z };
  assign celloutsig_0_34z = { celloutsig_0_7z, celloutsig_0_21z, celloutsig_0_19z } !== { celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_27z };
  assign celloutsig_0_38z = { celloutsig_0_19z, celloutsig_0_37z, celloutsig_0_3z, celloutsig_0_21z, celloutsig_0_6z, celloutsig_0_23z, celloutsig_0_31z } !== { celloutsig_0_15z[18:13], celloutsig_0_9z };
  assign celloutsig_0_4z = in_data[85:74] !== { in_data[94:90], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_9z = { celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_1z } !== in_data[88:86];
  assign celloutsig_0_27z = { celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_4z } !== in_data[93:90];
  assign celloutsig_0_3z = celloutsig_0_1z & celloutsig_0_0z;
  assign celloutsig_0_37z = celloutsig_0_3z & celloutsig_0_15z[11];
  assign celloutsig_0_57z = celloutsig_0_14z & celloutsig_0_0z;
  assign celloutsig_1_10z = celloutsig_1_2z & celloutsig_1_3z;
  assign celloutsig_1_18z = celloutsig_1_10z & celloutsig_1_9z;
  assign celloutsig_1_19z = celloutsig_1_18z & celloutsig_1_13z[4];
  assign celloutsig_0_2z = in_data[63] & in_data[13];
  assign celloutsig_1_9z = | { celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_0z, in_data[161:121] };
  assign celloutsig_1_5z = { celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_3z } >> { celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_4z };
  assign celloutsig_0_25z = { _06_[10:4], celloutsig_0_20z } >> in_data[22:15];
  assign celloutsig_0_26z = { celloutsig_0_16z, celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_2z } >> in_data[74:70];
  assign celloutsig_1_13z = { in_data[174:170], celloutsig_1_9z } << { in_data[110:108], celloutsig_1_5z };
  assign celloutsig_0_12z = in_data[46:40] >> { celloutsig_0_10z[4:0], celloutsig_0_3z, celloutsig_0_6z };
  assign celloutsig_0_10z = { in_data[27:24], celloutsig_0_6z, celloutsig_0_9z } <<< { in_data[35:31], celloutsig_0_6z };
  assign celloutsig_0_15z = { in_data[61:51], celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_14z } ~^ { _05_, celloutsig_0_11z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_0z };
  assign celloutsig_0_33z = ~((celloutsig_0_26z[4] & celloutsig_0_10z[2]) | celloutsig_0_24z);
  assign celloutsig_0_1z = ~((in_data[84] & in_data[20]) | in_data[51]);
  assign _03_[1] = _01_;
  assign _04_[9] = _02_;
  assign _06_[13] = _00_;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_57z, celloutsig_0_58z };
endmodule
