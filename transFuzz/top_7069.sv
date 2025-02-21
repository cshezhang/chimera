/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [45:0] _03_;
  reg [2:0] _04_;
  wire [19:0] _05_;
  reg [5:0] _06_;
  reg [14:0] _07_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [17:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [10:0] celloutsig_0_17z;
  wire [7:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [3:0] celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire [12:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [2:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire [4:0] celloutsig_0_38z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_42z;
  wire celloutsig_0_44z;
  wire celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire [2:0] celloutsig_0_49z;
  wire [20:0] celloutsig_0_4z;
  wire celloutsig_0_52z;
  wire celloutsig_0_57z;
  wire [24:0] celloutsig_0_60z;
  wire celloutsig_0_61z;
  wire [15:0] celloutsig_0_63z;
  wire [3:0] celloutsig_0_66z;
  wire celloutsig_0_6z;
  wire celloutsig_0_70z;
  wire [3:0] celloutsig_0_75z;
  wire [5:0] celloutsig_0_78z;
  wire celloutsig_0_79z;
  wire celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [4:0] celloutsig_1_11z;
  wire [12:0] celloutsig_1_12z;
  wire [4:0] celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [2:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [14:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [9:0] celloutsig_1_6z;
  wire [3:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [7:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_40z = ~(celloutsig_0_19z & _00_);
  assign celloutsig_0_3z = !(celloutsig_0_0z ? in_data[42] : celloutsig_0_0z);
  assign celloutsig_0_11z = ~(_00_ | celloutsig_0_7z);
  assign celloutsig_0_2z = ~(celloutsig_0_0z | _01_);
  assign celloutsig_0_33z = ~_01_;
  assign celloutsig_0_36z = ~celloutsig_0_11z;
  assign celloutsig_0_47z = ~celloutsig_0_6z;
  assign celloutsig_0_24z = ~celloutsig_0_14z;
  assign celloutsig_0_27z = ~celloutsig_0_25z[7];
  assign celloutsig_0_79z = celloutsig_0_36z | ~(celloutsig_0_42z);
  assign celloutsig_1_8z = celloutsig_1_5z | ~(celloutsig_1_4z[2]);
  assign celloutsig_0_15z = _01_ | ~(celloutsig_0_2z);
  assign celloutsig_1_18z = in_data[146] | celloutsig_1_15z;
  assign celloutsig_0_10z = _01_ | celloutsig_0_9z;
  assign celloutsig_0_32z = celloutsig_0_9z | _02_;
  assign celloutsig_0_61z = ~(celloutsig_0_35z ^ celloutsig_0_25z[0]);
  assign celloutsig_0_7z = ~(celloutsig_0_2z ^ in_data[22]);
  assign celloutsig_0_26z = ~(celloutsig_0_15z ^ celloutsig_0_7z);
  assign celloutsig_0_29z = ~(_01_ ^ celloutsig_0_17z[0]);
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _04_ <= 3'h0;
    else _04_ <= { _01_, _03_[6], celloutsig_0_44z };
  reg [19:0] _28_;
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _28_ <= 20'h00000;
    else _28_ <= in_data[30:11];
  assign { _05_[19:2], _02_, _05_[0] } = _28_;
  always_ff @(negedge clkin_data[32], negedge clkin_data[64])
    if (!clkin_data[64]) _06_ <= 6'h00;
    else _06_ <= { in_data[146:144], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z };
  reg [2:0] _30_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _30_ <= 3'h0;
    else _30_ <= in_data[15:13];
  assign { _00_, _01_, _03_[6] } = _30_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _07_ <= 15'h0000;
    else _07_ <= celloutsig_0_12z[15:1];
  assign celloutsig_1_13z = { celloutsig_1_6z[9:6], celloutsig_1_10z } / { 1'h1, celloutsig_1_7z[2], celloutsig_1_1z };
  assign celloutsig_0_52z = { _02_, celloutsig_0_47z, celloutsig_0_22z } == { _07_[5], celloutsig_0_3z, celloutsig_0_13z };
  assign celloutsig_0_57z = { in_data[72:67], celloutsig_0_49z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_49z, celloutsig_0_32z, celloutsig_0_39z, celloutsig_0_35z } == _05_[18:2];
  assign celloutsig_0_6z = { in_data[82:81], celloutsig_0_0z } == in_data[51:49];
  assign celloutsig_0_16z = celloutsig_0_12z[13:2] == _05_[13:2];
  assign celloutsig_0_19z = celloutsig_0_18z[3:1] == celloutsig_0_18z[2:0];
  assign celloutsig_0_21z = { celloutsig_0_4z[18:1], celloutsig_0_10z } == celloutsig_0_4z[20:2];
  assign celloutsig_0_22z = { _05_[19:10], celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_0z } == { _05_[16:6], celloutsig_0_16z, celloutsig_0_19z };
  assign celloutsig_1_5z = { celloutsig_1_4z[8:6], _06_, _06_ } === { celloutsig_1_4z[5:4], _06_, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_0z = in_data[73:11] <= in_data[87:25];
  assign celloutsig_0_44z = { celloutsig_0_25z[11:9], celloutsig_0_10z } <= celloutsig_0_38z[4:1];
  assign celloutsig_0_35z = ! { celloutsig_0_17z[6:4], celloutsig_0_9z };
  assign celloutsig_0_70z = ! { celloutsig_0_17z[10:2], celloutsig_0_9z, celloutsig_0_63z };
  assign celloutsig_1_0z = ! in_data[168:165];
  assign celloutsig_1_10z = ! { celloutsig_1_4z[12:11], celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_0_9z = ! { in_data[28:24], celloutsig_0_47z, celloutsig_0_3z };
  assign celloutsig_0_38z = { celloutsig_0_25z[11:8], celloutsig_0_3z } % { 1'h1, celloutsig_0_30z[1], celloutsig_0_21z, celloutsig_0_26z, celloutsig_0_34z };
  assign celloutsig_0_4z = { in_data[8:1], _00_, _01_, _03_[6], _00_, _01_, _03_[6], celloutsig_0_3z, _00_, _01_, _03_[6], _00_, _01_, _03_[6] } % { 1'h1, in_data[92:73] };
  assign celloutsig_0_66z = { celloutsig_0_25z[7:6], celloutsig_0_15z, celloutsig_0_34z } % { 1'h1, celloutsig_0_38z[1:0], celloutsig_0_19z };
  assign celloutsig_1_9z = { celloutsig_1_6z[6:0], celloutsig_1_5z } % { 1'h1, in_data[137:134], celloutsig_1_1z };
  assign celloutsig_0_63z = { _07_[11:8], celloutsig_0_9z, celloutsig_0_40z, celloutsig_0_47z, celloutsig_0_33z, _00_, _01_, _03_[6], celloutsig_0_61z, celloutsig_0_40z, celloutsig_0_37z, celloutsig_0_31z, celloutsig_0_26z } * { celloutsig_0_60z[20:7], celloutsig_0_26z, celloutsig_0_3z };
  assign celloutsig_1_6z = { celloutsig_1_4z[2:0], celloutsig_1_5z, _06_ } * { in_data[175:167], celloutsig_1_5z };
  assign celloutsig_1_11z = { celloutsig_1_7z[2:0], celloutsig_1_0z, celloutsig_1_2z } * { celloutsig_1_6z[7:5], celloutsig_1_2z, celloutsig_1_8z };
  assign celloutsig_1_12z = { celloutsig_1_6z[5], celloutsig_1_11z, celloutsig_1_8z, celloutsig_1_10z, celloutsig_1_7z, celloutsig_1_5z } * { celloutsig_1_6z[3:0], celloutsig_1_10z, celloutsig_1_9z };
  assign celloutsig_0_17z = { celloutsig_0_4z[9:2], celloutsig_0_16z, celloutsig_0_47z, celloutsig_0_11z } * { celloutsig_0_2z, celloutsig_0_47z, celloutsig_0_10z, celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_16z, _00_, _01_, _03_[6], celloutsig_0_9z };
  assign celloutsig_0_18z = { celloutsig_0_4z[18:13], celloutsig_0_9z, celloutsig_0_0z } * { _05_[12:6], celloutsig_0_7z };
  assign celloutsig_0_42z = { _05_[19:15], celloutsig_0_31z } != { _01_, celloutsig_0_16z, celloutsig_0_33z, celloutsig_0_16z, celloutsig_0_36z, celloutsig_0_47z };
  assign celloutsig_1_2z = in_data[151:146] != { celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_39z = & { celloutsig_0_17z, celloutsig_0_10z };
  assign celloutsig_0_13z = & { celloutsig_0_47z, celloutsig_0_10z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_14z = & celloutsig_0_4z[18:8];
  assign celloutsig_0_31z = & { celloutsig_0_18z, celloutsig_0_16z };
  assign celloutsig_0_34z = | { celloutsig_0_33z, celloutsig_0_26z, celloutsig_0_10z, celloutsig_0_7z };
  assign celloutsig_0_37z = | { celloutsig_0_47z, celloutsig_0_29z, celloutsig_0_22z };
  assign celloutsig_0_48z = | { celloutsig_0_32z, _07_[8:6], celloutsig_0_10z };
  assign celloutsig_1_15z = | { celloutsig_1_10z, celloutsig_1_6z[6:4], celloutsig_1_2z };
  assign celloutsig_0_78z = { celloutsig_0_27z, celloutsig_0_70z, _04_, celloutsig_0_33z } << { celloutsig_0_75z[1], celloutsig_0_75z, celloutsig_0_6z };
  assign celloutsig_1_7z = { celloutsig_1_6z[8:6], celloutsig_1_0z } << _06_[3:0];
  assign celloutsig_0_12z = { _05_[16:7], celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_6z, _00_, _01_, _03_[6] } << { _05_[19:7], celloutsig_0_10z, celloutsig_0_47z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_9z };
  assign celloutsig_0_75z = { celloutsig_0_20z[2], celloutsig_0_57z, celloutsig_0_48z, celloutsig_0_27z } >> celloutsig_0_66z;
  assign celloutsig_0_30z = { celloutsig_0_20z[3], celloutsig_0_47z, celloutsig_0_9z } >> { celloutsig_0_15z, celloutsig_0_21z, celloutsig_0_21z };
  assign celloutsig_1_1z = in_data[130:128] ~^ in_data[168:166];
  assign celloutsig_0_20z = { _05_[4:2], celloutsig_0_15z } ~^ { celloutsig_0_9z, _00_, _01_, _03_[6] };
  assign celloutsig_0_49z = { _05_[13], celloutsig_0_37z, celloutsig_0_36z } ^ { _01_, celloutsig_0_24z, celloutsig_0_26z };
  assign celloutsig_0_60z = { in_data[92:70], celloutsig_0_34z, celloutsig_0_52z } ^ { _07_[9:6], celloutsig_0_21z, celloutsig_0_35z, celloutsig_0_6z, celloutsig_0_12z };
  assign celloutsig_1_4z = { in_data[106], celloutsig_1_0z, celloutsig_1_2z, _06_, _06_ } ^ { in_data[147:138], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_0_25z = { celloutsig_0_17z[8:0], celloutsig_0_20z } ^ { celloutsig_0_12z[11:2], _00_, _01_, _03_[6] };
  assign celloutsig_1_19z = ~((celloutsig_1_12z[8] & in_data[110]) | (celloutsig_1_2z & celloutsig_1_13z[1]));
  assign { _03_[45:7], _03_[5:0] } = { in_data[54:18], _00_, _01_, celloutsig_0_13z, celloutsig_0_38z };
  assign _05_[1] = _02_;
  assign { out_data[128], out_data[96], out_data[37:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_78z, celloutsig_0_79z };
endmodule
