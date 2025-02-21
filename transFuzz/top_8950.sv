/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  reg [21:0] _02_;
  reg [4:0] _03_;
  wire [9:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [8:0] celloutsig_0_19z;
  wire [9:0] celloutsig_0_20z;
  wire [21:0] celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [3:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [11:0] celloutsig_0_36z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_43z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire [10:0] celloutsig_0_4z;
  wire [13:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [9:0] celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [6:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [13:0] celloutsig_1_5z;
  wire [4:0] celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_6z = celloutsig_0_3z | ~(celloutsig_0_4z[2]);
  assign celloutsig_0_12z = _01_ | ~(celloutsig_0_8z);
  assign celloutsig_0_32z = celloutsig_0_26z | ~(celloutsig_0_2z[0]);
  always_ff @(negedge celloutsig_1_19z, posedge clkin_data[0])
    if (clkin_data[0]) _02_ <= 22'h000000;
    else _02_ <= { celloutsig_0_2z[2:0], celloutsig_0_16z, celloutsig_0_16z, celloutsig_0_31z, celloutsig_0_31z, celloutsig_0_5z, celloutsig_0_16z };
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[0])
    if (!clkin_data[0]) _03_ <= 5'h00;
    else _03_ <= { celloutsig_0_2z, celloutsig_0_8z };
  reg [9:0] _10_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[0])
    if (clkin_data[0]) _10_ <= 10'h000;
    else _10_ <= in_data[93:84];
  assign { _04_[9], _01_, _00_, _04_[6:0] } = _10_;
  assign celloutsig_1_5z = { in_data[136:134], celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_4z } & { in_data[124:114], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_0_21z = { _01_, _00_, _04_[6:5], celloutsig_0_12z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_2z } & { _04_[9], _01_, _00_, celloutsig_0_16z, celloutsig_0_5z, celloutsig_0_2z };
  assign celloutsig_1_4z = { in_data[159:143], celloutsig_1_1z } == { celloutsig_1_3z[4:0], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_9z = { celloutsig_1_5z[12:2], celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_7z, celloutsig_1_2z } == { in_data[175:156], celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_1z };
  assign celloutsig_1_10z = { celloutsig_1_6z[4:3], celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z } == { celloutsig_1_3z[6:2], celloutsig_1_8z };
  assign celloutsig_1_19z = { celloutsig_1_6z[2], celloutsig_1_9z, celloutsig_1_13z, celloutsig_1_18z, celloutsig_1_7z, celloutsig_1_18z } == celloutsig_1_14z[8:3];
  assign celloutsig_0_8z = in_data[48:37] == { in_data[43:33], celloutsig_0_0z };
  assign celloutsig_0_10z = celloutsig_0_4z[9:1] == { _01_, _00_, _04_[6:1], celloutsig_0_9z };
  assign celloutsig_0_13z = in_data[68:60] == { _04_[9], _01_, _00_, celloutsig_0_8z, celloutsig_0_3z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_11z };
  assign celloutsig_0_27z = { celloutsig_0_4z[4:3], celloutsig_0_11z, celloutsig_0_10z, celloutsig_0_13z, celloutsig_0_5z } == { celloutsig_0_20z[9:2], 1'h0, celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_15z, celloutsig_0_0z, _03_ };
  assign celloutsig_0_29z = { celloutsig_0_5z[12:0], celloutsig_0_7z } >= celloutsig_0_5z;
  assign celloutsig_0_30z = celloutsig_0_19z[7:2] >= { _04_[3], celloutsig_0_26z, celloutsig_0_13z, celloutsig_0_22z, celloutsig_0_10z, celloutsig_0_13z };
  assign celloutsig_0_44z = { _00_, _04_[6:4], celloutsig_0_3z, celloutsig_0_31z } && { _02_[6:3], celloutsig_0_29z, celloutsig_0_17z };
  assign celloutsig_0_45z = { celloutsig_0_36z[4:2], celloutsig_0_31z, celloutsig_0_25z, celloutsig_0_15z, celloutsig_0_39z, celloutsig_0_23z, celloutsig_0_16z, celloutsig_0_2z } && { celloutsig_0_43z, celloutsig_0_30z, celloutsig_0_30z, celloutsig_0_25z, celloutsig_0_29z, celloutsig_0_9z, celloutsig_0_31z, celloutsig_0_12z, celloutsig_0_13z, celloutsig_0_32z, celloutsig_0_29z, celloutsig_0_28z, celloutsig_0_31z };
  assign celloutsig_0_24z = { in_data[59:53], celloutsig_0_17z, celloutsig_0_7z } && in_data[93:85];
  assign celloutsig_1_0z = ! in_data[166:157];
  assign celloutsig_1_7z = ! { celloutsig_1_5z[9:8], celloutsig_1_2z, celloutsig_1_0z };
  assign celloutsig_1_12z = ! { in_data[109:108], celloutsig_1_6z, celloutsig_1_9z };
  assign celloutsig_1_18z = ! { in_data[138:130], celloutsig_1_12z, celloutsig_1_9z };
  assign celloutsig_0_16z = ! { celloutsig_0_4z[4:0], celloutsig_0_2z, celloutsig_0_7z };
  assign celloutsig_0_17z = ! { celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_13z };
  assign celloutsig_0_22z = ! { celloutsig_0_21z[6:2], celloutsig_0_15z };
  assign celloutsig_0_39z = { celloutsig_0_25z, celloutsig_0_3z, celloutsig_0_6z } || { celloutsig_0_15z, celloutsig_0_18z, celloutsig_0_27z };
  assign celloutsig_0_15z = celloutsig_0_5z[9:3] || { celloutsig_0_4z[7:4], celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_11z };
  assign celloutsig_0_31z = { celloutsig_0_4z[7:3], celloutsig_0_28z } || celloutsig_0_20z[7:2];
  assign celloutsig_1_6z = - { in_data[179:177], celloutsig_1_1z, celloutsig_1_0z };
  assign celloutsig_0_5z = - in_data[88:75];
  assign celloutsig_0_3z = _04_[2:0] !== { _04_[5], celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_1_13z = { celloutsig_1_5z[7:5], celloutsig_1_7z, celloutsig_1_12z } !== in_data[146:142];
  assign celloutsig_0_23z = in_data[84:78] !== { celloutsig_0_2z[3:1], celloutsig_0_13z, celloutsig_0_0z, celloutsig_0_22z, celloutsig_0_11z };
  assign celloutsig_0_2z = { _00_, _04_[6:5], celloutsig_0_0z } | { _01_, _00_, _04_[6:5] };
  assign celloutsig_0_43z = celloutsig_0_7z & celloutsig_0_39z;
  assign celloutsig_1_11z = celloutsig_1_1z & celloutsig_1_10z;
  assign celloutsig_0_11z = celloutsig_0_9z & celloutsig_0_8z;
  assign celloutsig_1_8z = ~^ { celloutsig_1_5z[9], celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_0z };
  assign celloutsig_0_9z = ~^ celloutsig_0_5z[13:7];
  assign celloutsig_0_26z = ~^ { celloutsig_0_24z, celloutsig_0_16z, celloutsig_0_25z, celloutsig_0_5z, celloutsig_0_16z };
  assign celloutsig_0_28z = ~^ { celloutsig_0_4z[9:2], celloutsig_0_18z, celloutsig_0_10z, celloutsig_0_3z };
  assign celloutsig_1_3z = { in_data[119:115], celloutsig_1_1z, celloutsig_1_2z } ~^ in_data[127:121];
  assign celloutsig_0_4z = { _01_, _00_, _04_[6:2], celloutsig_0_2z } ~^ { in_data[27:18], celloutsig_0_0z };
  assign celloutsig_1_14z = { celloutsig_1_6z[1:0], celloutsig_1_7z, celloutsig_1_3z } ~^ { celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_11z };
  assign celloutsig_0_36z = in_data[18:7] ^ { celloutsig_0_25z, celloutsig_0_8z, celloutsig_0_11z, celloutsig_0_30z, _03_, celloutsig_0_23z, celloutsig_0_30z, celloutsig_0_6z };
  assign celloutsig_0_19z = { in_data[17:15], celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_18z, celloutsig_0_9z } ^ celloutsig_0_4z[8:0];
  assign celloutsig_0_0z = ~((in_data[77] & in_data[83]) | in_data[26]);
  assign celloutsig_1_1z = ~((celloutsig_1_0z & celloutsig_1_0z) | in_data[181]);
  assign celloutsig_1_2z = ~((celloutsig_1_0z & celloutsig_1_1z) | in_data[112]);
  assign celloutsig_0_7z = ~((_04_[3] & in_data[15]) | celloutsig_0_4z[4]);
  assign celloutsig_0_18z = ~((celloutsig_0_16z & _04_[1]) | celloutsig_0_9z);
  assign celloutsig_0_25z = ~((celloutsig_0_2z[3] & celloutsig_0_5z[5]) | _03_[3]);
  assign { celloutsig_0_20z[9:2], celloutsig_0_20z[0] } = { celloutsig_0_19z[8:1], celloutsig_0_7z } ^ { _01_, _00_, _04_[6:5], celloutsig_0_16z, celloutsig_0_10z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_16z };
  assign _04_[8:7] = { _01_, _00_ };
  assign celloutsig_0_20z[1] = 1'h0;
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_44z, celloutsig_0_45z };
endmodule
