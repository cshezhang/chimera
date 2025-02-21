/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [2:0] _03_;
  wire [13:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_18z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_42z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~(in_data[8] | in_data[37]);
  assign celloutsig_0_3z = ~(celloutsig_0_0z | celloutsig_0_0z);
  assign celloutsig_0_31z = ~(celloutsig_0_3z | celloutsig_0_2z);
  assign celloutsig_0_34z = ~(celloutsig_0_23z | celloutsig_0_21z);
  assign celloutsig_0_35z = ~(celloutsig_0_24z | celloutsig_0_9z);
  assign celloutsig_0_4z = ~(celloutsig_0_1z | celloutsig_0_1z);
  assign celloutsig_0_41z = ~(celloutsig_0_35z | celloutsig_0_24z);
  assign celloutsig_0_42z = ~(celloutsig_0_9z | celloutsig_0_34z);
  assign celloutsig_1_0z = ~(in_data[114] | in_data[142]);
  assign celloutsig_1_1z = ~(celloutsig_1_0z | in_data[152]);
  assign celloutsig_1_2z = ~(celloutsig_1_1z | in_data[154]);
  assign celloutsig_1_3z = ~(celloutsig_1_1z | celloutsig_1_2z);
  assign celloutsig_0_5z = ~(in_data[48] | celloutsig_0_0z);
  assign celloutsig_1_4z = ~(celloutsig_1_3z | celloutsig_1_0z);
  assign celloutsig_1_10z = ~(celloutsig_1_2z | in_data[148]);
  assign celloutsig_1_12z = ~(celloutsig_1_0z | celloutsig_1_3z);
  assign celloutsig_0_6z = ~(in_data[7] | celloutsig_0_4z);
  assign celloutsig_1_18z = ~(celloutsig_1_12z | celloutsig_1_4z);
  assign celloutsig_1_19z = ~(celloutsig_1_10z | celloutsig_1_4z);
  assign celloutsig_0_7z = ~(celloutsig_0_3z | in_data[51]);
  assign celloutsig_0_9z = ~(celloutsig_0_5z | celloutsig_0_0z);
  assign celloutsig_0_11z = ~(celloutsig_0_1z | celloutsig_0_4z);
  assign celloutsig_0_12z = ~(celloutsig_0_7z | celloutsig_0_9z);
  assign celloutsig_0_1z = ~(celloutsig_0_0z | in_data[38]);
  assign celloutsig_0_13z = ~(celloutsig_0_1z | celloutsig_0_11z);
  assign celloutsig_0_18z = ~(_01_ | celloutsig_0_9z);
  assign celloutsig_0_2z = ~(celloutsig_0_1z | celloutsig_0_0z);
  assign celloutsig_0_21z = ~(celloutsig_0_5z | celloutsig_0_18z);
  assign celloutsig_0_23z = ~(_02_ | celloutsig_0_31z);
  assign celloutsig_0_24z = ~(celloutsig_0_12z | celloutsig_0_9z);
  reg [2:0] _35_;
  always_ff @(negedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _35_ <= 3'h0;
    else _35_ <= { celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_5z };
  assign { _03_[2:1], _01_ } = _35_;
  reg [13:0] _36_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _36_ <= 14'h0000;
    else _36_ <= { celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_13z, _03_[2:1], _01_ };
  assign { _04_[13], _00_, _04_[11:4], _02_, _04_[2:0] } = _36_;
  assign _03_[0] = _01_;
  assign { _04_[12], _04_[3] } = { _00_, _02_ };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_41z, celloutsig_0_42z };
endmodule
