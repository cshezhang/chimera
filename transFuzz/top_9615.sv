/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [3:0] _01_;
  reg [10:0] _02_;
  wire [7:0] celloutsig_0_0z;
  wire [4:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [3:0] celloutsig_0_13z;
  wire [7:0] celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire [3:0] celloutsig_0_1z;
  wire [14:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire [7:0] celloutsig_0_2z;
  wire celloutsig_0_31z;
  wire celloutsig_0_33z;
  wire celloutsig_0_36z;
  wire [2:0] celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire [4:0] celloutsig_0_46z;
  wire celloutsig_0_47z;
  wire celloutsig_0_4z;
  wire [13:0] celloutsig_0_53z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire [2:0] celloutsig_0_8z;
  wire celloutsig_0_94z;
  wire celloutsig_0_95z;
  wire [10:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire [4:0] celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [9:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [6:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [5:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [2:0] celloutsig_1_8z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_3z = ~(celloutsig_0_0z[3] & celloutsig_0_0z[0]);
  assign celloutsig_0_4z = ~(celloutsig_0_3z & celloutsig_0_3z);
  assign celloutsig_0_47z = ~(celloutsig_0_37z[1] & celloutsig_0_46z[2]);
  assign celloutsig_0_6z = ~(celloutsig_0_5z & celloutsig_0_5z);
  assign celloutsig_0_94z = ~(celloutsig_0_7z[1] & _00_);
  assign celloutsig_1_2z = ~(in_data[145] & in_data[160]);
  assign celloutsig_0_11z = ~(celloutsig_0_1z[2] & celloutsig_0_3z);
  assign celloutsig_1_11z = ~(celloutsig_1_5z[4] & celloutsig_1_2z);
  assign celloutsig_1_13z = ~(in_data[141] & celloutsig_1_3z[5]);
  assign celloutsig_1_18z = ~(celloutsig_1_8z[1] & celloutsig_1_2z);
  assign celloutsig_0_12z = ~(celloutsig_0_2z[3] & celloutsig_0_0z[2]);
  assign celloutsig_0_24z = ~(celloutsig_0_12z & celloutsig_0_5z);
  assign celloutsig_0_26z = ~(celloutsig_0_24z & celloutsig_0_0z[7]);
  assign celloutsig_0_31z = ~(celloutsig_0_27z & celloutsig_0_6z);
  reg [3:0] _17_;
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _17_ <= 4'h0;
    else _17_ <= celloutsig_0_53z[13:10];
  assign { _01_[3:2], _00_, _01_[0] } = _17_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _02_ <= 11'h000;
    else _02_ <= { celloutsig_0_21z[14:5], celloutsig_0_11z };
  assign celloutsig_0_33z = celloutsig_0_3z & ~(celloutsig_0_11z);
  assign celloutsig_0_36z = celloutsig_0_9z[0] & ~(celloutsig_0_11z);
  assign celloutsig_0_5z = celloutsig_0_4z & ~(celloutsig_0_4z);
  assign celloutsig_0_95z = celloutsig_0_26z & ~(celloutsig_0_33z);
  assign celloutsig_1_0z = in_data[185] & ~(in_data[191]);
  assign celloutsig_1_4z = celloutsig_1_1z[6] & ~(celloutsig_1_3z[5]);
  assign celloutsig_1_6z = celloutsig_1_5z[4] & ~(celloutsig_1_5z[3]);
  assign celloutsig_1_19z = celloutsig_1_15z[1] & ~(celloutsig_1_13z);
  assign celloutsig_0_19z = celloutsig_0_3z & ~(celloutsig_0_1z[3]);
  assign celloutsig_0_22z = celloutsig_0_3z & ~(celloutsig_0_19z);
  assign celloutsig_0_27z = celloutsig_0_13z[1] & ~(celloutsig_0_22z);
  assign celloutsig_0_0z = in_data[52:45] - in_data[49:42];
  assign celloutsig_0_46z = { celloutsig_0_31z, celloutsig_0_8z, celloutsig_0_5z } - { celloutsig_0_5z, celloutsig_0_8z, celloutsig_0_6z };
  assign celloutsig_0_53z = { celloutsig_0_47z, celloutsig_0_24z, celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_10z } - { celloutsig_0_33z, _02_, celloutsig_0_4z, celloutsig_0_36z };
  assign celloutsig_0_8z = in_data[24:22] - { celloutsig_0_0z[6:5], celloutsig_0_5z };
  assign celloutsig_1_3z = in_data[158:152] - { in_data[151:146], celloutsig_1_0z };
  assign celloutsig_1_5z = { in_data[144:140], celloutsig_1_0z } - { celloutsig_1_3z[2:0], celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_2z };
  assign celloutsig_1_8z = { in_data[156:155], celloutsig_1_0z } - celloutsig_1_1z[4:2];
  assign celloutsig_1_15z = { celloutsig_1_5z[2:0], celloutsig_1_6z, celloutsig_1_6z } - { celloutsig_1_5z[3:1], celloutsig_1_11z, celloutsig_1_4z };
  assign celloutsig_0_1z = in_data[24:21] - in_data[77:74];
  assign celloutsig_0_17z = { in_data[45:40], celloutsig_0_3z, celloutsig_0_11z } - { celloutsig_0_10z[2:1], celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_7z };
  assign celloutsig_0_37z = celloutsig_0_2z[3:1] ^ celloutsig_0_8z;
  assign celloutsig_0_7z = { celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_6z } ^ { celloutsig_0_4z, celloutsig_0_6z, celloutsig_0_5z };
  assign celloutsig_0_9z = in_data[83:73] ^ { in_data[68], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_1_1z = in_data[173:164] ^ in_data[131:122];
  assign celloutsig_0_10z = celloutsig_0_9z[4:0] ^ { celloutsig_0_7z[2], celloutsig_0_1z };
  assign celloutsig_0_13z = celloutsig_0_0z[4:1] ^ celloutsig_0_9z[4:1];
  assign celloutsig_0_21z = { celloutsig_0_9z[8:2], celloutsig_0_2z } ^ { celloutsig_0_9z[10:5], celloutsig_0_17z, celloutsig_0_4z };
  assign celloutsig_0_2z = celloutsig_0_0z ^ in_data[10:3];
  assign _01_[1] = _00_;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_94z, celloutsig_0_95z };
endmodule
