/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire [16:0] _02_;
  wire [16:0] _03_;
  wire [11:0] _04_;
  wire [2:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [12:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [16:0] celloutsig_0_22z;
  wire [4:0] celloutsig_0_23z;
  wire [3:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_43z;
  wire celloutsig_0_46z;
  wire celloutsig_0_4z;
  wire celloutsig_0_52z;
  wire celloutsig_0_53z;
  wire celloutsig_0_5z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_14z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [6:0] celloutsig_1_7z;
  wire [16:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_53z = _01_ ? celloutsig_0_5z : celloutsig_0_43z;
  assign celloutsig_0_17z = celloutsig_0_5z ? celloutsig_0_11z : celloutsig_0_9z;
  assign celloutsig_0_19z = celloutsig_0_8z ? celloutsig_0_9z : celloutsig_0_12z;
  assign celloutsig_0_30z = celloutsig_0_26z ? celloutsig_0_17z : celloutsig_0_0z[1];
  assign celloutsig_0_0z = in_data[7:5] + in_data[59:57];
  assign celloutsig_1_4z = { in_data[166:164], celloutsig_1_0z, celloutsig_1_2z } + { celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_1_7z = { celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_5z } + { celloutsig_1_4z[4:1], celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_1_8z = { celloutsig_1_7z[2:0], celloutsig_1_1z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_5z } + { celloutsig_1_4z[3:1], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_2z };
  assign celloutsig_0_18z = { celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_1z, celloutsig_0_16z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_16z, celloutsig_0_16z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_14z } + { celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_16z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_15z, celloutsig_0_11z, celloutsig_0_1z };
  assign celloutsig_0_22z = { celloutsig_0_18z[7], _02_[15:9], celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_8z } + { celloutsig_0_18z[4:1], celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_8z, _03_[5:0] };
  assign celloutsig_0_23z = { _03_[5], celloutsig_0_19z, celloutsig_0_5z, celloutsig_0_16z, celloutsig_0_16z } + { _03_[2], celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_11z, celloutsig_0_14z };
  assign celloutsig_0_24z = in_data[57:54] + { celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_12z };
  reg [11:0] _17_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[32])
    if (clkin_data[32]) _17_ <= 12'h000;
    else _17_ <= { celloutsig_0_10z, celloutsig_0_17z, celloutsig_0_30z, celloutsig_0_38z, celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_34z, celloutsig_0_9z, celloutsig_0_10z, celloutsig_0_3z, celloutsig_0_9z };
  assign { _04_[11:3], _00_, _04_[1], _01_ } = _17_;
  reg [6:0] _18_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[32])
    if (clkin_data[32]) _18_ <= 7'h00;
    else _18_ <= { in_data[69:67], celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_2z };
  assign _02_[15:9] = _18_;
  reg [5:0] _19_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _19_ <= 6'h00;
    else _19_ <= celloutsig_0_18z[11:6];
  assign _03_[5:0] = _19_;
  assign celloutsig_0_38z = { _03_[4:0], celloutsig_0_15z } === { celloutsig_0_23z[4:1], celloutsig_0_30z, celloutsig_0_16z };
  assign celloutsig_1_0z = in_data[137:121] === in_data[155:139];
  assign celloutsig_1_1z = in_data[126:119] === { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_2z = in_data[184:162] === { in_data[174:154], celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_9z = celloutsig_1_7z[6:1] === celloutsig_1_8z[6:1];
  assign celloutsig_0_7z = { celloutsig_0_4z, celloutsig_0_0z } === { in_data[30:28], celloutsig_0_2z };
  assign celloutsig_0_11z = { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_2z, celloutsig_0_3z } === in_data[42:39];
  assign celloutsig_0_14z = { in_data[49:33], celloutsig_0_1z, celloutsig_0_10z } === { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_13z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_9z };
  assign celloutsig_0_35z = { celloutsig_0_18z[12:3], celloutsig_0_13z, celloutsig_0_34z, celloutsig_0_15z } < { _03_[5:1], celloutsig_0_13z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_19z, celloutsig_0_1z, celloutsig_0_25z, celloutsig_0_29z };
  assign celloutsig_0_46z = { celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_19z } < { _03_[2], celloutsig_0_17z, celloutsig_0_8z };
  assign celloutsig_0_5z = { celloutsig_0_0z[2:1], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z } < { in_data[46:36], celloutsig_0_0z };
  assign celloutsig_0_52z = { celloutsig_0_23z[4:3], celloutsig_0_35z, celloutsig_0_12z, celloutsig_0_16z } < { celloutsig_0_22z[3:0], celloutsig_0_46z };
  assign celloutsig_0_12z = { in_data[61:52], celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_5z } < { in_data[39:32], celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_1_5z = { in_data[125:119], celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_4z } < { in_data[176:172], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_6z = { celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_3z } < { in_data[143:139], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_5z };
  assign celloutsig_0_10z = { celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z } < { celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_0_2z = { celloutsig_0_0z[1], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_1z } < { celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_3z = in_data[4] & ~(celloutsig_0_0z[2]);
  assign celloutsig_0_34z = celloutsig_0_12z & ~(celloutsig_0_7z);
  assign celloutsig_0_4z = celloutsig_0_1z & ~(celloutsig_0_1z);
  assign celloutsig_0_43z = celloutsig_0_24z[3] & ~(celloutsig_0_8z);
  assign celloutsig_1_3z = in_data[130] & ~(celloutsig_1_2z);
  assign celloutsig_1_14z = celloutsig_1_0z & ~(celloutsig_1_6z);
  assign celloutsig_1_17z = celloutsig_1_14z & ~(in_data[148]);
  assign celloutsig_1_18z = celloutsig_1_9z & ~(celloutsig_1_17z);
  assign celloutsig_1_19z = celloutsig_1_14z & ~(celloutsig_1_2z);
  assign celloutsig_0_8z = celloutsig_0_4z & ~(celloutsig_0_12z);
  assign celloutsig_0_9z = celloutsig_0_12z & ~(celloutsig_0_8z);
  assign celloutsig_0_1z = in_data[11] & ~(in_data[91]);
  assign celloutsig_0_13z = celloutsig_0_8z & ~(celloutsig_0_2z);
  assign celloutsig_0_15z = celloutsig_0_12z & ~(celloutsig_0_14z);
  assign celloutsig_0_16z = celloutsig_0_3z & ~(celloutsig_0_9z);
  assign celloutsig_0_25z = in_data[14] & ~(celloutsig_0_8z);
  assign celloutsig_0_26z = celloutsig_0_11z & ~(_03_[1]);
  assign celloutsig_0_29z = _02_[11] & ~(celloutsig_0_4z);
  assign { _02_[16], _02_[8:0] } = { celloutsig_0_18z[7], celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_12z, celloutsig_0_4z, celloutsig_0_15z, celloutsig_0_8z };
  assign _03_[16:6] = { celloutsig_0_18z[4:1], celloutsig_0_19z, celloutsig_0_13z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_8z };
  assign { _04_[2], _04_[0] } = { _00_, _01_ };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_52z, celloutsig_0_53z };
endmodule
