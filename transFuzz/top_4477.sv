/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [5:0] _01_;
  wire [6:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [6:0] celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire [4:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire [11:0] celloutsig_0_19z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire [3:0] celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [23:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_2z;
  wire [20:0] celloutsig_0_3z;
  wire [2:0] celloutsig_0_4z;
  wire [10:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [10:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire [17:0] celloutsig_1_14z;
  wire celloutsig_1_18z;
  wire [7:0] celloutsig_1_19z;
  wire [3:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire [25:0] celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire [36:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire [4:0] celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_8z = !(celloutsig_1_3z[0] ? celloutsig_1_4z[16] : celloutsig_1_1z[0]);
  assign celloutsig_1_12z = !(celloutsig_1_1z[1] ? in_data[140] : celloutsig_1_10z);
  assign celloutsig_0_26z = !(celloutsig_0_0z[1] ? celloutsig_0_24z : in_data[53]);
  assign celloutsig_0_8z = in_data[32] | ~(celloutsig_0_6z);
  assign celloutsig_1_13z = celloutsig_1_12z ^ celloutsig_1_0z;
  assign celloutsig_1_11z = ~(celloutsig_1_8z ^ celloutsig_1_9z[4]);
  assign celloutsig_0_6z = ~(_00_ ^ celloutsig_0_2z);
  assign celloutsig_0_21z = ~(celloutsig_0_16z[0] ^ celloutsig_0_3z[18]);
  assign celloutsig_1_0z = ~(in_data[185] ^ in_data[142]);
  assign celloutsig_1_2z = ~(in_data[162] ^ celloutsig_1_1z[1]);
  reg [5:0] _12_;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_19z[0])
    if (celloutsig_1_19z[0]) _12_ <= 6'h00;
    else _12_ <= in_data[37:32];
  assign { _01_[5:2], _00_, _01_[0] } = _12_;
  assign celloutsig_1_4z = { in_data[119:112], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z } & { in_data[179:167], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_1_18z = celloutsig_1_5z[3:1] === celloutsig_1_9z[3:1];
  assign celloutsig_0_14z = celloutsig_0_3z[18:11] === { celloutsig_0_0z, celloutsig_0_10z };
  assign celloutsig_0_10z = celloutsig_0_5z[3:1] || { _01_[3], celloutsig_0_2z, celloutsig_0_8z };
  assign celloutsig_0_12z = in_data[10:7] || celloutsig_0_7z[7:4];
  assign celloutsig_0_20z = in_data[87:81] || { celloutsig_0_4z[2], _01_[5:2], _00_, _01_[0] };
  assign celloutsig_0_2z = { _01_[5:2], _00_, _01_[0] } || celloutsig_0_0z[6:1];
  assign celloutsig_0_19z = celloutsig_0_14z ? { in_data[24:14], 1'h1 } : { celloutsig_0_5z[4:2], celloutsig_0_11z, 1'h0, celloutsig_0_2z };
  assign celloutsig_0_17z = | { celloutsig_0_7z[10:2], celloutsig_0_2z };
  assign celloutsig_0_24z = | { celloutsig_0_7z[3:2], celloutsig_0_9z, celloutsig_0_19z, celloutsig_0_4z, celloutsig_0_12z };
  assign celloutsig_0_0z = in_data[93:87] << in_data[21:15];
  assign celloutsig_1_9z = { celloutsig_1_1z, celloutsig_1_2z } << { celloutsig_1_5z[1], celloutsig_1_5z };
  assign celloutsig_1_19z = celloutsig_1_4z[8:1] << celloutsig_1_14z[7:0];
  assign celloutsig_0_23z = { celloutsig_0_19z[5:3], celloutsig_0_17z } << { celloutsig_0_12z, celloutsig_0_4z };
  assign celloutsig_0_7z = { in_data[47:40], celloutsig_0_4z } >> { celloutsig_0_0z[6:4], celloutsig_0_6z, _01_[5:2], _00_, _01_[0], celloutsig_0_6z };
  assign celloutsig_1_14z = { celloutsig_1_4z[19:4], celloutsig_1_8z, celloutsig_1_11z } <<< { celloutsig_1_7z[20:4], celloutsig_1_13z };
  assign celloutsig_0_9z = celloutsig_0_3z[11:9] <<< in_data[77:75];
  assign celloutsig_0_11z = in_data[17:11] <<< { celloutsig_0_5z[4:0], celloutsig_0_8z, celloutsig_0_2z };
  assign celloutsig_0_16z = { celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_10z } <<< celloutsig_0_5z[6:2];
  assign celloutsig_0_3z = { _01_[5:2], _00_, _01_[0], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_2z } >>> { in_data[46:27], celloutsig_0_2z };
  assign celloutsig_0_25z = { celloutsig_0_3z[15:14], celloutsig_0_24z, celloutsig_0_23z, celloutsig_0_4z, celloutsig_0_14z, celloutsig_0_4z, celloutsig_0_21z, celloutsig_0_0z, celloutsig_0_17z, celloutsig_0_14z } >>> { in_data[69:65], celloutsig_0_11z, celloutsig_0_7z, celloutsig_0_20z };
  assign celloutsig_1_3z = { in_data[168:165], celloutsig_1_2z } >>> { celloutsig_1_1z[1:0], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_5z = celloutsig_1_1z >>> celloutsig_1_4z[3:0];
  assign celloutsig_0_4z = celloutsig_0_3z[8:6] - celloutsig_0_3z[3:1];
  assign celloutsig_1_7z = in_data[168:132] ^ { celloutsig_1_4z[22:20], celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_4z };
  assign celloutsig_0_5z = { celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_4z } ^ celloutsig_0_3z[16:6];
  assign celloutsig_1_1z = in_data[139:136] ^ { in_data[105:103], celloutsig_1_0z };
  assign celloutsig_1_10z = ~((celloutsig_1_5z[1] & celloutsig_1_2z) | (celloutsig_1_9z[4] & celloutsig_1_7z[7]));
  assign _01_[1] = _00_;
  assign { out_data[128], out_data[103:96], out_data[55:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_25z, celloutsig_0_26z };
endmodule
