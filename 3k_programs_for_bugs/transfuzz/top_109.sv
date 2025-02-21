/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire [13:0] _04_;
  wire [5:0] _05_;
  reg [3:0] _06_;
  wire [8:0] _07_;
  wire celloutsig_0_0z;
  wire [4:0] celloutsig_0_10z;
  wire celloutsig_0_14z;
  wire [8:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [8:0] celloutsig_0_20z;
  wire [21:0] celloutsig_0_21z;
  wire celloutsig_0_2z;
  wire [6:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_1_0z;
  wire celloutsig_1_15z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [17:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [30:0] celloutsig_1_7z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_18z = ~(celloutsig_0_1z | in_data[28]);
  assign celloutsig_0_19z = ~(_00_ | celloutsig_0_7z);
  assign celloutsig_0_6z = ~celloutsig_0_4z[4];
  assign celloutsig_0_1z = ~celloutsig_0_0z;
  assign celloutsig_1_3z = ~in_data[151];
  assign celloutsig_1_6z = ~_01_;
  assign celloutsig_0_7z = celloutsig_0_2z ^ celloutsig_0_0z;
  assign celloutsig_0_14z = celloutsig_0_6z ^ _02_;
  assign celloutsig_1_0z = in_data[191] ^ in_data[141];
  assign celloutsig_1_1z = in_data[153] ^ celloutsig_1_0z;
  assign celloutsig_1_5z = in_data[169] ^ _03_;
  reg [5:0] _19_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[32])
    if (clkin_data[32]) _19_ <= 6'h00;
    else _19_ <= { celloutsig_0_4z[5:2], celloutsig_0_2z, celloutsig_0_5z };
  assign { _05_[5:2], _02_, _05_[0] } = _19_;
  always_ff @(posedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _06_ <= 4'h0;
    else _06_ <= { in_data[50:49], celloutsig_0_7z, celloutsig_0_8z };
  reg [8:0] _21_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _21_ <= 9'h000;
    else _21_ <= celloutsig_1_2z[14:6];
  assign { _07_[8:6], _01_, _07_[4], _03_, _07_[2:0] } = _21_;
  reg [13:0] _22_;
  always_ff @(negedge celloutsig_1_18z, posedge clkin_data[64])
    if (clkin_data[64]) _22_ <= 14'h0000;
    else _22_ <= { in_data[44:38], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_2z };
  assign { _04_[13:12], _00_, _04_[10:0] } = _22_;
  assign celloutsig_0_21z = { _06_[3:1], celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_16z, celloutsig_0_1z, _06_ } & { celloutsig_0_15z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_6z, _05_[5:2], _02_, _05_[0] };
  assign celloutsig_0_16z = { _04_[12], _00_, _04_[10:1], celloutsig_0_4z, celloutsig_0_6z } == { _04_[13:12], _00_, _04_[10:0], celloutsig_0_6z, _06_, celloutsig_0_2z };
  assign celloutsig_0_0z = in_data[21:14] > in_data[95:88];
  assign celloutsig_1_18z = { in_data[189:181], celloutsig_1_1z, celloutsig_1_15z, celloutsig_1_15z } > celloutsig_1_7z[11:0];
  assign celloutsig_0_4z = in_data[69:63] % { 1'h1, in_data[60:58], celloutsig_0_2z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_20z = { celloutsig_0_4z[5:2], celloutsig_0_18z, celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_19z, celloutsig_0_5z } % { 1'h1, celloutsig_0_15z[7:0] };
  assign celloutsig_1_15z = celloutsig_1_6z & celloutsig_1_7z[17];
  assign celloutsig_1_19z = | { celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z[1], celloutsig_1_1z };
  assign celloutsig_0_5z = | { celloutsig_0_4z, _04_[5:2], celloutsig_0_0z };
  assign celloutsig_0_8z = | { celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_2z = | { celloutsig_0_1z, in_data[65:62] };
  assign celloutsig_1_2z = in_data[184:167] >> { in_data[181:167], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_0_10z = { celloutsig_0_4z[2:1], celloutsig_0_7z, celloutsig_0_1z, celloutsig_0_2z } <<< { _05_[5:2], _02_ };
  assign celloutsig_0_15z = { celloutsig_0_4z[5:0], celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_5z } - in_data[35:27];
  assign celloutsig_1_7z = { in_data[124:112], celloutsig_1_2z } - { _07_[8:6], _01_, _07_[4], _03_, _07_[2], celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z };
  assign _04_[11] = _00_;
  assign _05_[1] = _02_;
  assign { _07_[5], _07_[3] } = { _01_, _03_ };
  assign { out_data[128], out_data[96], out_data[40:32], out_data[21:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_20z, celloutsig_0_21z };
endmodule
