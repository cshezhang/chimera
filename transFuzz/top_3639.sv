/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire [7:0] _05_;
  wire [6:0] _06_;
  wire [6:0] _07_;
  wire [6:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [13:0] celloutsig_0_12z;
  wire [5:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [7:0] celloutsig_0_15z;
  wire [6:0] celloutsig_0_16z;
  wire [11:0] celloutsig_0_17z;
  wire [12:0] celloutsig_0_18z;
  wire [30:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [4:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [4:0] celloutsig_0_24z;
  wire [22:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [13:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [7:0] celloutsig_0_30z;
  wire [8:0] celloutsig_0_31z;
  wire [5:0] celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_37z;
  wire celloutsig_0_39z;
  wire [3:0] celloutsig_0_3z;
  wire celloutsig_0_43z;
  wire [4:0] celloutsig_0_45z;
  wire celloutsig_0_46z;
  wire celloutsig_0_48z;
  wire celloutsig_0_4z;
  wire [4:0] celloutsig_0_51z;
  wire celloutsig_0_52z;
  wire celloutsig_0_56z;
  wire [16:0] celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire celloutsig_0_65z;
  wire [9:0] celloutsig_0_68z;
  wire celloutsig_0_69z;
  wire [7:0] celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [6:0] celloutsig_0_9z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [13:0] celloutsig_1_14z;
  wire [2:0] celloutsig_1_15z;
  wire [8:0] celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [14:0] celloutsig_1_1z;
  wire [4:0] celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
  wire [5:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [14:0] celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_46z = ~(celloutsig_0_20z[0] | celloutsig_0_28z);
  assign celloutsig_0_35z = ~((celloutsig_0_24z[0] | celloutsig_0_34z) & celloutsig_0_32z[0]);
  assign celloutsig_0_43z = ~((celloutsig_0_17z[3] | celloutsig_0_11z) & _00_);
  assign celloutsig_0_4z = ~((celloutsig_0_3z[2] | celloutsig_0_2z) & celloutsig_0_1z);
  assign celloutsig_0_56z = ~((celloutsig_0_12z[4] | celloutsig_0_5z[8]) & celloutsig_0_2z);
  assign celloutsig_1_6z = ~((celloutsig_1_1z[3] | celloutsig_1_1z[5]) & 1'h0);
  assign celloutsig_1_10z = ~((celloutsig_1_5z[3] | celloutsig_1_6z) & celloutsig_1_9z[11]);
  assign celloutsig_1_11z = ~((in_data[109] | in_data[103]) & _01_);
  assign celloutsig_0_7z = ~((celloutsig_0_2z | celloutsig_0_3z[3]) & celloutsig_0_1z);
  assign celloutsig_1_19z = ~((celloutsig_1_6z | celloutsig_1_10z) & _02_);
  assign celloutsig_0_8z = ~((celloutsig_0_6z[4] | celloutsig_0_7z) & celloutsig_0_6z[5]);
  assign celloutsig_0_1z = ~((in_data[55] | in_data[17]) & _04_);
  assign celloutsig_0_21z = ~((celloutsig_0_8z | celloutsig_0_18z[4]) & celloutsig_0_14z);
  assign celloutsig_0_23z = ~((celloutsig_0_14z | celloutsig_0_4z) & _03_);
  assign celloutsig_0_27z = ~((celloutsig_0_10z[5] | celloutsig_0_3z[1]) & celloutsig_0_11z);
  assign celloutsig_0_28z = ~((celloutsig_0_16z[1] | celloutsig_0_1z) & celloutsig_0_12z[3]);
  reg [6:0] _24_;
  always_ff @(negedge celloutsig_1_18z, negedge clkin_data[64])
    if (!clkin_data[64]) _24_ <= 7'h00;
    else _24_ <= in_data[76:70];
  assign { _04_, _07_[5], _03_, _07_[3:0] } = _24_;
  reg [7:0] _25_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _25_ <= 8'h00;
    else _25_ <= { celloutsig_0_33z, celloutsig_0_23z, celloutsig_0_13z };
  assign { _05_[7:1], _00_ } = _25_;
  reg [6:0] _26_;
  always_ff @(negedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _26_ <= 7'h00;
    else _26_ <= in_data[144:138];
  assign { _06_[6], _01_, _06_[4:1], _02_ } = _26_;
  assign celloutsig_0_30z = { celloutsig_0_23z, celloutsig_0_10z } / { 1'h1, celloutsig_0_18z[10:4] };
  assign celloutsig_0_31z = { celloutsig_0_19z[22:15], celloutsig_0_23z } / { 1'h1, celloutsig_0_15z };
  assign celloutsig_0_32z = celloutsig_0_31z[6:1] / { 1'h1, celloutsig_0_20z };
  assign celloutsig_1_3z = { _06_[6], _01_, _06_[4:2] } / { 1'h1, celloutsig_1_1z[0], 3'h0 };
  assign celloutsig_1_5z = in_data[142:137] / { 1'h1, celloutsig_1_3z };
  assign celloutsig_0_9z = in_data[27:21] / { 1'h1, celloutsig_0_6z[5:1], celloutsig_0_2z };
  assign celloutsig_0_15z = { in_data[18:14], celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_1z } / { 1'h1, _07_[5], _03_, _07_[3:0], celloutsig_0_7z };
  assign celloutsig_0_17z = { celloutsig_0_5z[8:4], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_3z[3:1], celloutsig_0_3z[1], celloutsig_0_4z } / { 1'h1, celloutsig_0_16z[3:1], celloutsig_0_15z };
  assign celloutsig_0_34z = { celloutsig_0_9z[6], _04_, _07_[5], _03_, _07_[3:0], celloutsig_0_8z } == { celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_26z };
  assign celloutsig_0_48z = { celloutsig_0_28z, celloutsig_0_23z, celloutsig_0_14z, celloutsig_0_37z, celloutsig_0_39z } == celloutsig_0_20z;
  assign celloutsig_1_18z = celloutsig_1_9z[11:3] == { celloutsig_1_17z[4:0], celloutsig_1_4z, celloutsig_1_7z };
  assign celloutsig_0_11z = { in_data[85:82], celloutsig_0_3z[3:1], celloutsig_0_3z[1] } == { _04_, _07_[5], _03_, _07_[3:0], celloutsig_0_1z };
  assign celloutsig_0_52z = celloutsig_0_5z[10:4] === { celloutsig_0_7z, celloutsig_0_22z, celloutsig_0_4z, celloutsig_0_27z, celloutsig_0_34z, celloutsig_0_27z, celloutsig_0_48z };
  assign celloutsig_0_61z = { celloutsig_0_45z, celloutsig_0_39z } === { celloutsig_0_5z[10:7], celloutsig_0_52z, celloutsig_0_56z };
  assign celloutsig_0_69z = { celloutsig_0_25z[22:1], celloutsig_0_39z, celloutsig_0_61z, celloutsig_0_46z, celloutsig_0_3z[3:1], celloutsig_0_3z[1] } === { celloutsig_0_29z[10:0], celloutsig_0_51z, celloutsig_0_15z, celloutsig_0_45z };
  assign celloutsig_1_7z = celloutsig_1_5z[4:2] === celloutsig_1_5z[2:0];
  assign celloutsig_1_8z = { _06_[6], _01_, _06_[4:1], _02_ } === { 2'h0, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_4z };
  assign celloutsig_0_65z = celloutsig_0_17z[9:0] > { celloutsig_0_25z[17:9], celloutsig_0_37z };
  assign celloutsig_0_22z = { celloutsig_0_12z[11:1], _04_, _07_[5], _03_, _07_[3:0], celloutsig_0_9z } <= { celloutsig_0_12z[9:7], celloutsig_0_15z, celloutsig_0_7z, celloutsig_0_21z, celloutsig_0_3z[3:1], celloutsig_0_3z[1], celloutsig_0_21z, celloutsig_0_9z };
  assign celloutsig_1_15z = - { celloutsig_1_14z[11:10], celloutsig_1_6z };
  assign celloutsig_0_12z = - { celloutsig_0_5z[4:2], celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_11z };
  assign celloutsig_0_18z = - { celloutsig_0_5z[13:2], celloutsig_0_2z };
  assign celloutsig_0_68z = { celloutsig_0_3z[1], celloutsig_0_3z[1], celloutsig_0_33z, celloutsig_0_65z, celloutsig_0_43z, celloutsig_0_20z } << { celloutsig_0_5z[12:9], celloutsig_0_32z };
  assign celloutsig_1_1z = { in_data[142:135], _06_[6], _01_, _06_[4:1], _02_ } << in_data[135:121];
  assign celloutsig_0_6z = { _04_, _07_[5], _03_, _07_[3:0], celloutsig_0_1z } << { in_data[50:48], celloutsig_0_4z, celloutsig_0_3z[3:1], celloutsig_0_3z[1] };
  assign celloutsig_1_4z = _06_[3:1] << celloutsig_1_3z[3:1];
  assign celloutsig_1_9z = { in_data[181:179], celloutsig_1_5z, celloutsig_1_5z } << celloutsig_1_1z;
  assign celloutsig_1_14z = { celloutsig_1_1z[8:7], celloutsig_1_11z, _06_[6], _01_, _06_[4:1], _02_, celloutsig_1_10z, celloutsig_1_4z } << { celloutsig_1_1z[10:0], celloutsig_1_4z };
  assign celloutsig_0_10z = { _07_[5], _03_, _07_[3:0], celloutsig_0_1z } << celloutsig_0_6z[7:1];
  assign celloutsig_0_16z = { in_data[9:4], celloutsig_0_7z } << { in_data[35:30], celloutsig_0_2z };
  assign celloutsig_0_19z = { celloutsig_0_5z[13:4], celloutsig_0_12z, _04_, _07_[5], _03_, _07_[3:0] } << { in_data[87:82], celloutsig_0_18z, celloutsig_0_3z[3:1], celloutsig_0_3z[1], celloutsig_0_15z };
  assign celloutsig_0_24z = celloutsig_0_6z[6:2] << celloutsig_0_20z;
  assign celloutsig_0_5z = { _07_[3:2], _04_, _07_[5], _03_, _07_[3:0], _04_, _07_[5], _03_, _07_[3:0], celloutsig_0_4z } >> { in_data[72:66], celloutsig_0_2z, _04_, _07_[5], _03_, _07_[3:0], celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_13z = { _07_[5], _03_, _07_[3:0] } >> { celloutsig_0_6z[5:4], celloutsig_0_3z[3:1], celloutsig_0_3z[1] };
  assign celloutsig_0_45z = { celloutsig_0_39z, celloutsig_0_3z[3:1], celloutsig_0_3z[1] } - { celloutsig_0_19z[19:18], celloutsig_0_27z, celloutsig_0_26z, celloutsig_0_2z };
  assign celloutsig_1_17z = { celloutsig_1_15z, 3'h0, celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_6z } - in_data[115:107];
  assign celloutsig_0_25z = { celloutsig_0_6z[5], celloutsig_0_6z, celloutsig_0_14z, celloutsig_0_18z } - { celloutsig_0_20z[3:1], celloutsig_0_9z, celloutsig_0_13z, celloutsig_0_9z };
  assign celloutsig_0_29z = { celloutsig_0_13z, celloutsig_0_6z } ^ { celloutsig_0_18z[6:2], celloutsig_0_1z, celloutsig_0_16z, celloutsig_0_26z };
  assign celloutsig_0_51z = _05_[5:1] ^ { _07_[5], _03_, _07_[3:1] };
  assign celloutsig_0_20z = { celloutsig_0_16z[6:3], celloutsig_0_8z } ^ { celloutsig_0_15z[4:1], celloutsig_0_11z };
  assign celloutsig_0_2z = ~((celloutsig_0_1z & _07_[1]) | (celloutsig_0_1z & in_data[25]));
  assign celloutsig_0_33z = ~((celloutsig_0_3z[1] & celloutsig_0_30z[7]) | (celloutsig_0_15z[5] & celloutsig_0_9z[4]));
  assign celloutsig_0_37z = ~((celloutsig_0_11z & celloutsig_0_30z[0]) | (celloutsig_0_4z & celloutsig_0_23z));
  assign celloutsig_0_39z = ~((celloutsig_0_5z[7] & celloutsig_0_35z) | (celloutsig_0_35z & celloutsig_0_5z[15]));
  assign celloutsig_0_14z = ~((celloutsig_0_5z[13] & celloutsig_0_2z) | (celloutsig_0_1z & in_data[80]));
  assign celloutsig_0_26z = ~((celloutsig_0_8z & celloutsig_0_14z) | (celloutsig_0_14z & celloutsig_0_13z[2]));
  assign { celloutsig_0_3z[1], celloutsig_0_3z[3:2] } = { celloutsig_0_1z, in_data[4:3] } ^ { celloutsig_0_2z, in_data[58:57] };
  assign _05_[0] = _00_;
  assign { _06_[5], _06_[0] } = { _01_, _02_ };
  assign { _07_[6], _07_[4] } = { _04_, _03_ };
  assign celloutsig_0_3z[0] = celloutsig_0_3z[1];
  assign { out_data[128], out_data[96], out_data[41:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_68z, celloutsig_0_69z };
endmodule
