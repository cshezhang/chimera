/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  reg [13:0] _03_;
  wire [12:0] _04_;
  wire celloutsig_0_0z;
  wire [7:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [5:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [3:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire [14:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [7:0] celloutsig_0_33z;
  wire celloutsig_0_35z;
  wire [8:0] celloutsig_0_36z;
  wire [9:0] celloutsig_0_38z;
  wire [14:0] celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [7:0] celloutsig_1_8z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_40z = ~(celloutsig_0_23z & celloutsig_0_36z[1]);
  assign celloutsig_0_11z = ~(celloutsig_0_0z & celloutsig_0_0z);
  assign celloutsig_0_22z = ~(celloutsig_0_18z & celloutsig_0_0z);
  assign celloutsig_0_26z = ~(celloutsig_0_15z[2] & celloutsig_0_16z);
  assign celloutsig_0_1z = ~((in_data[93] | celloutsig_0_0z) & (celloutsig_0_0z | in_data[61]));
  assign celloutsig_0_16z = ~((celloutsig_0_8z | celloutsig_0_2z) & (_00_ | _01_));
  assign celloutsig_0_20z = ~((celloutsig_0_4z | celloutsig_0_19z[1]) & (celloutsig_0_2z | celloutsig_0_10z[6]));
  assign celloutsig_0_32z = ~(celloutsig_0_19z[2] ^ celloutsig_0_17z);
  assign celloutsig_0_35z = ~(celloutsig_0_25z ^ celloutsig_0_3z);
  assign celloutsig_1_0z = ~(in_data[181] ^ in_data[164]);
  assign celloutsig_1_1z = ~(in_data[111] ^ in_data[102]);
  assign celloutsig_1_2z = ~(celloutsig_1_1z ^ celloutsig_1_0z);
  assign celloutsig_1_16z = ~(celloutsig_1_4z ^ celloutsig_1_15z);
  assign celloutsig_1_18z = ~(celloutsig_1_8z[1] ^ celloutsig_1_12z);
  assign celloutsig_0_14z = ~(celloutsig_0_9z ^ celloutsig_0_12z[3]);
  assign celloutsig_0_17z = ~(celloutsig_0_1z ^ celloutsig_0_5z);
  assign celloutsig_0_21z = ~(celloutsig_0_8z ^ celloutsig_0_1z);
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _03_ <= 14'h0000;
    else _03_ <= { in_data[22:16], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_3z };
  reg [12:0] _23_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_19z)
    if (!celloutsig_1_19z) _23_ <= 13'h0000;
    else _23_ <= { _03_[13:4], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_5z };
  assign { _04_[12:9], _00_, _04_[7], _01_, _02_, _04_[4:0] } = _23_;
  assign celloutsig_0_0z = in_data[92:72] <= in_data[71:51];
  assign celloutsig_0_31z = { _03_[11], celloutsig_0_25z, celloutsig_0_5z } <= celloutsig_0_15z[4:2];
  assign celloutsig_0_3z = { in_data[88:67], celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z } <= in_data[26:0];
  assign celloutsig_1_6z = in_data[107:99] <= in_data[190:182];
  assign celloutsig_0_4z = { in_data[41:36], celloutsig_0_2z } <= in_data[8:2];
  assign celloutsig_0_8z = in_data[34:22] <= { _03_[10:0], celloutsig_0_4z, celloutsig_0_4z };
  assign celloutsig_0_13z = { celloutsig_0_12z[3:1], celloutsig_0_1z } <= celloutsig_0_12z[5:2];
  assign celloutsig_0_23z = in_data[37:20] <= { _04_[3:1], celloutsig_0_10z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_9z, celloutsig_0_19z };
  assign celloutsig_1_4z = ! { in_data[170:164], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_3z };
  assign celloutsig_0_18z = ! { celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_13z };
  assign celloutsig_1_12z = celloutsig_1_14z & ~(celloutsig_1_8z[7]);
  assign celloutsig_1_14z = celloutsig_1_1z & ~(celloutsig_1_5z);
  assign celloutsig_1_15z = celloutsig_1_0z & ~(celloutsig_1_7z);
  assign celloutsig_0_25z = celloutsig_0_10z[1] & ~(celloutsig_0_1z);
  assign celloutsig_0_33z = { in_data[53:52], celloutsig_0_20z, celloutsig_0_21z, celloutsig_0_21z, celloutsig_0_31z, celloutsig_0_0z, celloutsig_0_13z } * { _04_[9], _00_, _04_[7], _01_, _02_, _04_[4:2] };
  assign celloutsig_0_39z = { celloutsig_0_38z[4:0], celloutsig_0_33z, celloutsig_0_14z, celloutsig_0_0z } * { celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_26z, celloutsig_0_16z, celloutsig_0_27z, celloutsig_0_11z, celloutsig_0_26z, celloutsig_0_2z, celloutsig_0_4z, celloutsig_0_32z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_13z };
  assign celloutsig_1_8z = { in_data[124:122], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_1z } * { in_data[116:113], celloutsig_1_5z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_6z };
  assign celloutsig_0_15z = celloutsig_0_12z[4:0] * { in_data[43], celloutsig_0_4z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_5z };
  assign celloutsig_0_38z = { _04_[10:9], _00_, _04_[7], _01_, _02_, _04_[4:1] } >> { celloutsig_0_24z[11:5], celloutsig_0_20z, celloutsig_0_17z, celloutsig_0_5z };
  assign celloutsig_0_19z = { _03_[7:6], celloutsig_0_1z, celloutsig_0_17z } >> { _03_[7:6], celloutsig_0_11z, celloutsig_0_2z };
  assign celloutsig_0_24z = { celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_12z } >> { celloutsig_0_12z[3:2], celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_22z, celloutsig_0_21z, celloutsig_0_13z };
  assign celloutsig_0_36z = { in_data[40:35], celloutsig_0_27z, celloutsig_0_17z, celloutsig_0_1z } ~^ { celloutsig_0_12z[5], celloutsig_0_21z, celloutsig_0_27z, celloutsig_0_27z, celloutsig_0_30z, celloutsig_0_13z, celloutsig_0_25z, celloutsig_0_20z, celloutsig_0_35z };
  assign celloutsig_0_10z = in_data[25:18] ~^ { _03_[5:0], celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_12z = { celloutsig_0_10z[4:2], celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_3z } ~^ { _04_[7], _01_, celloutsig_0_2z, celloutsig_0_9z, celloutsig_0_9z, celloutsig_0_9z };
  assign celloutsig_0_30z = ~((celloutsig_0_4z & _04_[4]) | celloutsig_0_16z);
  assign celloutsig_1_3z = ~((celloutsig_1_2z & celloutsig_1_1z) | celloutsig_1_0z);
  assign celloutsig_1_5z = ~((celloutsig_1_3z & celloutsig_1_2z) | celloutsig_1_4z);
  assign celloutsig_1_7z = ~((celloutsig_1_5z & celloutsig_1_6z) | celloutsig_1_0z);
  assign celloutsig_0_5z = ~((celloutsig_0_1z & celloutsig_0_2z) | celloutsig_0_3z);
  assign celloutsig_1_19z = ~((celloutsig_1_16z & celloutsig_1_15z) | celloutsig_1_14z);
  assign celloutsig_0_9z = ~((celloutsig_0_3z & in_data[34]) | in_data[33]);
  assign celloutsig_0_2z = ~((in_data[91] & celloutsig_0_0z) | celloutsig_0_0z);
  assign celloutsig_0_27z = ~((_04_[12] & celloutsig_0_4z) | celloutsig_0_17z);
  assign { _04_[8], _04_[6:5] } = { _00_, _01_, _02_ };
  assign { out_data[128], out_data[96], out_data[46:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_39z, celloutsig_0_40z };
endmodule
