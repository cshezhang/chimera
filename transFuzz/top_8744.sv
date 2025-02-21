/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [3:0] _03_;
  wire [21:0] _04_;
  wire [13:0] _05_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [15:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [30:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_34z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [10:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire [2:0] celloutsig_1_13z;
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
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_0z = ~in_data[64];
  assign celloutsig_1_4z = ~in_data[161];
  assign celloutsig_1_19z = ~celloutsig_1_5z;
  assign celloutsig_0_10z = ~celloutsig_0_9z;
  assign celloutsig_0_12z = ~celloutsig_0_8z;
  assign celloutsig_0_18z = ~_01_;
  assign celloutsig_0_25z = ~_02_;
  assign celloutsig_1_5z = ~(celloutsig_1_1z ^ in_data[136]);
  assign celloutsig_1_7z = ~(celloutsig_1_1z ^ celloutsig_1_4z);
  assign celloutsig_0_19z = ~(celloutsig_0_17z[3] ^ celloutsig_0_3z);
  reg [3:0] _16_;
  always_ff @(posedge celloutsig_1_5z, negedge clkin_data[0])
    if (!clkin_data[0]) _16_ <= 4'h0;
    else _16_ <= { celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_9z };
  assign { _03_[3], _01_, _03_[1:0] } = _16_;
  reg [21:0] _17_;
  always_ff @(negedge celloutsig_1_5z, negedge clkin_data[0])
    if (!clkin_data[0]) _17_ <= 22'h000000;
    else _17_ <= { celloutsig_0_2z[18:15], celloutsig_0_5z, celloutsig_0_15z, celloutsig_0_9z };
  assign { _04_[21], _02_, _04_[19:0] } = _17_;
  reg [13:0] _18_;
  always_ff @(negedge celloutsig_1_5z, posedge clkin_data[0])
    if (clkin_data[0]) _18_ <= 14'h0000;
    else _18_ <= { _02_, _04_[19:9], celloutsig_0_7z, celloutsig_0_9z };
  assign { _05_[13:2], _00_, _05_[0] } = _18_;
  assign celloutsig_1_0z = in_data[143:133] / { 1'h1, in_data[145:136] };
  assign celloutsig_1_13z = { in_data[114], celloutsig_1_3z, celloutsig_1_7z } / { 1'h1, celloutsig_1_6z, in_data[96] };
  assign celloutsig_0_15z = { celloutsig_0_2z[20:17], celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_4z, _03_[3], _01_, _03_[1:0], celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_10z } / { 1'h1, celloutsig_0_2z[26:17], celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_3z };
  assign celloutsig_0_17z = { celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_14z } / { 1'h1, celloutsig_0_15z[11:10], celloutsig_0_0z };
  assign celloutsig_0_2z = { in_data[89:60], celloutsig_0_0z } / { 1'h1, in_data[86:65], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z, in_data[0] };
  assign celloutsig_0_39z = celloutsig_0_15z[5:3] !== { celloutsig_0_15z[2], celloutsig_0_19z, celloutsig_0_34z };
  assign celloutsig_1_15z = { celloutsig_1_0z[10:2], celloutsig_1_11z } !== { celloutsig_1_0z[3:0], celloutsig_1_11z, celloutsig_1_11z, celloutsig_1_7z, celloutsig_1_2z, celloutsig_1_14z, celloutsig_1_7z };
  assign celloutsig_0_16z = { _03_[3], celloutsig_0_3z, celloutsig_0_14z } !== { in_data[91:90], celloutsig_0_8z };
  assign celloutsig_0_34z = ~^ { _05_[12:8], celloutsig_0_17z, celloutsig_0_6z, celloutsig_0_16z, celloutsig_0_12z, celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_7z, celloutsig_0_7z, celloutsig_0_30z, celloutsig_0_0z, celloutsig_0_26z, _05_[13:2], _00_, _05_[0], celloutsig_0_13z, celloutsig_0_10z };
  assign celloutsig_0_3z = ~^ celloutsig_0_2z[25:13];
  assign celloutsig_0_40z = ~^ { celloutsig_0_19z, celloutsig_0_30z, celloutsig_0_8z };
  assign celloutsig_1_1z = ~^ in_data[163:158];
  assign celloutsig_0_4z = ~^ { celloutsig_0_2z[29:0], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_1_3z = ~^ celloutsig_1_0z[10:1];
  assign celloutsig_1_6z = ~^ { celloutsig_1_0z[10], celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_1_8z = ~^ { in_data[185:168], celloutsig_1_3z, celloutsig_1_5z };
  assign celloutsig_0_5z = ~^ celloutsig_0_2z[28:25];
  assign celloutsig_1_16z = ~^ { celloutsig_1_0z[10:9], celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_11z, celloutsig_1_13z, celloutsig_1_9z };
  assign celloutsig_0_7z = ~^ { celloutsig_0_2z[16:13], celloutsig_0_5z };
  assign celloutsig_0_8z = ~^ { in_data[18:16], celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_7z };
  assign celloutsig_0_9z = ~^ in_data[6:1];
  assign celloutsig_0_13z = ~^ { in_data[77:67], celloutsig_0_4z };
  assign celloutsig_0_14z = ~^ celloutsig_0_2z[19:12];
  assign celloutsig_0_26z = ~^ { celloutsig_0_18z, celloutsig_0_17z };
  assign celloutsig_0_30z = ~^ { in_data[15:14], celloutsig_0_4z, celloutsig_0_25z };
  assign celloutsig_1_2z = ~((celloutsig_1_1z & in_data[105]) | (in_data[122] & in_data[184]));
  assign celloutsig_1_9z = ~((celloutsig_1_3z & celloutsig_1_4z) | (celloutsig_1_3z & celloutsig_1_1z));
  assign celloutsig_1_11z = ~((celloutsig_1_7z & celloutsig_1_3z) | (in_data[96] & celloutsig_1_4z));
  assign celloutsig_1_14z = ~((celloutsig_1_0z[7] & celloutsig_1_9z) | (celloutsig_1_5z & celloutsig_1_3z));
  assign celloutsig_0_6z = ~((celloutsig_0_0z & celloutsig_0_2z[30]) | (in_data[76] & celloutsig_0_4z));
  assign celloutsig_1_18z = ~((celloutsig_1_15z & celloutsig_1_3z) | (celloutsig_1_16z & celloutsig_1_15z));
  assign celloutsig_0_1z = ~((in_data[25] & in_data[50]) | (celloutsig_0_0z & celloutsig_0_0z));
  assign _03_[2] = _01_;
  assign _04_[20] = _02_;
  assign _05_[1] = _00_;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_39z, celloutsig_0_40z };
endmodule
