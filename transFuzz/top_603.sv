/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [3:0] _01_;
  wire [6:0] _02_;
  wire [7:0] _03_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [11:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [3:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [6:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire [6:0] celloutsig_0_27z;
  wire [4:0] celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_44z;
  wire celloutsig_0_46z;
  wire celloutsig_0_49z;
  wire [3:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire [18:0] celloutsig_1_13z;
  wire celloutsig_1_18z;
  wire [5:0] celloutsig_1_1z;
  wire [11:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [9:0] celloutsig_1_4z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire [2:0] celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_33z = celloutsig_0_8z ? celloutsig_0_5z : celloutsig_0_26z;
  assign celloutsig_0_41z = celloutsig_0_36z ? celloutsig_0_19z : celloutsig_0_8z;
  assign celloutsig_0_44z = in_data[68] ? celloutsig_0_25z[4] : celloutsig_0_12z;
  assign celloutsig_0_46z = celloutsig_0_31z ? celloutsig_0_30z : celloutsig_0_41z;
  assign celloutsig_0_1z = in_data[18] ? celloutsig_0_0z : in_data[28];
  assign celloutsig_0_17z = celloutsig_0_3z ? celloutsig_0_2z : celloutsig_0_0z;
  assign celloutsig_0_0z = ~(in_data[54] & in_data[39]);
  assign celloutsig_1_3z = ~(celloutsig_1_1z[2] & in_data[149]);
  assign celloutsig_0_11z = ~(celloutsig_0_7z & celloutsig_0_8z);
  assign celloutsig_0_2z = ~(in_data[58] & in_data[14]);
  assign celloutsig_0_6z = ~((in_data[44] | celloutsig_0_5z) & celloutsig_0_4z[0]);
  assign celloutsig_0_10z = ~((celloutsig_0_7z | celloutsig_0_4z[2]) & celloutsig_0_8z);
  assign celloutsig_0_19z = ~((celloutsig_0_1z | celloutsig_0_2z) & in_data[11]);
  assign celloutsig_0_26z = ~((celloutsig_0_16z | celloutsig_0_4z[1]) & celloutsig_0_7z);
  assign celloutsig_0_30z = ~((celloutsig_0_8z | celloutsig_0_18z) & (_00_ | celloutsig_0_7z));
  assign celloutsig_0_8z = ~((celloutsig_0_2z | celloutsig_0_2z) & (celloutsig_0_3z | celloutsig_0_2z));
  assign celloutsig_0_20z = ~((celloutsig_0_6z | celloutsig_0_16z) & (celloutsig_0_7z | celloutsig_0_8z));
  assign celloutsig_0_22z = ~((celloutsig_0_5z | celloutsig_0_2z) & (celloutsig_0_10z | celloutsig_0_6z));
  reg [6:0] _22_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _22_ <= 7'h00;
    else _22_ <= { _02_[6:2], celloutsig_0_46z, celloutsig_0_44z };
  assign out_data[6:0] = _22_;
  reg [2:0] _23_;
  always_ff @(posedge clkin_data[32], negedge clkin_data[64])
    if (!clkin_data[64]) _23_ <= 3'h0;
    else _23_ <= celloutsig_1_4z[4:2];
  assign out_data[98:96] = _23_;
  reg [7:0] _24_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _24_ <= 8'h00;
    else _24_ <= { celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_3z };
  assign { _03_[7:5], _02_[6:2] } = _24_;
  reg [3:0] _25_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _25_ <= 4'h0;
    else _25_ <= { celloutsig_0_7z, celloutsig_0_19z, celloutsig_0_0z, celloutsig_0_16z };
  assign { _00_, _01_[2:0] } = _25_;
  assign celloutsig_1_7z = celloutsig_1_2z[8:2] >= { celloutsig_1_2z[6], celloutsig_1_1z };
  assign celloutsig_0_34z = { celloutsig_0_22z, celloutsig_0_30z, celloutsig_0_24z } > { celloutsig_0_9z, celloutsig_0_20z, celloutsig_0_7z };
  assign celloutsig_0_12z = { in_data[78:73], celloutsig_0_9z } && { celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_6z };
  assign celloutsig_1_6z = in_data[102:100] || { celloutsig_1_1z[2], celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_1_18z = { celloutsig_1_13z[18:14], celloutsig_1_6z } || celloutsig_1_4z[6:1];
  assign celloutsig_0_13z = { celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_6z } || { celloutsig_0_9z, celloutsig_0_8z, celloutsig_0_2z };
  assign celloutsig_0_5z = celloutsig_0_0z & ~(celloutsig_0_3z);
  assign celloutsig_1_10z = celloutsig_1_7z & ~(in_data[159]);
  assign celloutsig_0_18z = celloutsig_0_16z & ~(celloutsig_0_8z);
  assign celloutsig_0_4z = { in_data[3:2], celloutsig_0_1z, celloutsig_0_0z } % { 1'h1, in_data[16], celloutsig_0_1z, celloutsig_0_1z };
  assign celloutsig_1_1z = { in_data[155:152], celloutsig_1_0z, celloutsig_1_0z } % { 1'h1, in_data[167:163] };
  assign celloutsig_0_21z = in_data[81:70] % { 1'h1, in_data[35:26], celloutsig_0_10z };
  assign celloutsig_0_27z = { celloutsig_0_23z[2:0], celloutsig_0_23z } % { 1'h1, celloutsig_0_21z[10:5] };
  assign celloutsig_0_3z = ~^ in_data[48:39];
  assign celloutsig_0_49z = ~^ { _02_[6], celloutsig_0_28z, celloutsig_0_38z };
  assign celloutsig_0_9z = ~^ { celloutsig_0_4z[2:1], celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_0_38z = ^ { celloutsig_0_25z[5:4], celloutsig_0_34z, celloutsig_0_33z };
  assign celloutsig_0_14z = ^ { celloutsig_0_4z[2:0], celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_3z };
  assign celloutsig_0_16z = ^ { celloutsig_0_4z[1:0], celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_9z };
  assign celloutsig_0_24z = ^ { celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_19z };
  assign celloutsig_1_2z = { celloutsig_1_1z[5:2], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z } >>> { celloutsig_1_1z, celloutsig_1_1z };
  assign celloutsig_0_23z = { celloutsig_0_21z[9:8], celloutsig_0_12z, celloutsig_0_14z } >>> { _03_[6:5], _02_[6:5] };
  assign celloutsig_1_4z = { celloutsig_1_2z[9:2], celloutsig_1_0z, celloutsig_1_0z } - celloutsig_1_2z[9:0];
  assign celloutsig_1_8z = celloutsig_1_4z[2:0] - { celloutsig_1_2z[3], celloutsig_1_3z, celloutsig_1_6z };
  assign celloutsig_1_13z = { in_data[191:175], celloutsig_1_10z, celloutsig_1_10z } - { celloutsig_1_2z[10:0], celloutsig_1_0z, celloutsig_1_7z, celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_10z };
  assign celloutsig_0_25z = { celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_3z, celloutsig_0_19z } - { celloutsig_0_1z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_2z };
  assign celloutsig_0_28z = { celloutsig_0_27z[1], celloutsig_0_22z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_16z } - { celloutsig_0_19z, celloutsig_0_12z, celloutsig_0_11z, celloutsig_0_13z, celloutsig_0_10z };
  assign celloutsig_0_31z = ~((celloutsig_0_8z & celloutsig_0_14z) | (celloutsig_0_1z & celloutsig_0_3z));
  assign celloutsig_0_36z = ~((celloutsig_0_0z & celloutsig_0_12z) | (celloutsig_0_27z[3] & celloutsig_0_21z[8]));
  assign celloutsig_1_0z = ~((in_data[131] & in_data[148]) | (in_data[171] & in_data[156]));
  assign celloutsig_0_7z = ~((celloutsig_0_0z & in_data[47]) | (in_data[13] & celloutsig_0_5z));
  assign _01_[3] = _00_;
  assign _02_[1:0] = { celloutsig_0_46z, celloutsig_0_44z };
  assign _03_[4:0] = _02_[6:2];
  assign { out_data[128], out_data[32] } = { celloutsig_1_18z, celloutsig_0_49z };
endmodule
