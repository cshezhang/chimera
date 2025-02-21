/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire [12:0] _00_;
  wire [5:0] celloutsig_0_0z;
  wire [2:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire [12:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [3:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [6:0] celloutsig_0_19z;
  wire [4:0] celloutsig_0_1z;
  wire [20:0] celloutsig_0_20z;
  wire [7:0] celloutsig_0_22z;
  wire celloutsig_0_24z;
  wire [7:0] celloutsig_0_29z;
  wire [6:0] celloutsig_0_31z;
  wire celloutsig_0_3z;
  wire [11:0] celloutsig_0_40z;
  wire celloutsig_0_45z;
  wire [7:0] celloutsig_0_47z;
  wire celloutsig_0_48z;
  wire [2:0] celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire [2:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [2:0] celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire [4:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire [8:0] celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire [11:0] celloutsig_1_5z;
  wire [4:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_8z = ~((celloutsig_1_5z[11] | celloutsig_1_0z[2]) & celloutsig_1_5z[9]);
  assign celloutsig_0_13z = ~((celloutsig_0_11z | in_data[11]) & celloutsig_0_1z[1]);
  assign celloutsig_0_18z = ~((celloutsig_0_10z[0] | celloutsig_0_11z) & celloutsig_0_5z);
  assign celloutsig_0_11z = ~((celloutsig_0_9z | celloutsig_0_1z[2]) & (celloutsig_0_4z[1] | celloutsig_0_3z));
  assign celloutsig_0_24z = ~((celloutsig_0_6z | celloutsig_0_22z[6]) & (celloutsig_0_9z | celloutsig_0_22z[3]));
  assign celloutsig_0_48z = celloutsig_0_7z[2] | celloutsig_0_14z[3];
  assign celloutsig_1_1z = celloutsig_1_0z[0] | celloutsig_1_0z[1];
  assign celloutsig_0_15z = celloutsig_0_10z[0] | celloutsig_0_3z;
  assign celloutsig_1_19z = celloutsig_1_4z[2] ^ celloutsig_1_11z;
  assign celloutsig_1_3z = { celloutsig_1_0z[1:0], celloutsig_1_0z } + { celloutsig_1_2z[7:6], celloutsig_1_0z };
  assign celloutsig_0_14z = { in_data[19:8], celloutsig_0_6z } + { celloutsig_0_1z[4:3], celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_5z, _00_[2:0] };
  reg [2:0] _12_;
  always_ff @(negedge celloutsig_1_19z, posedge clkin_data[0])
    if (clkin_data[0]) _12_ <= 3'h0;
    else _12_ <= in_data[23:21];
  assign _00_[2:0] = _12_;
  assign celloutsig_0_31z = { celloutsig_0_29z[5:2], celloutsig_0_10z } & { celloutsig_0_20z[4:3], celloutsig_0_24z, _00_[2:0], celloutsig_0_15z };
  assign celloutsig_0_3z = { _00_[0], celloutsig_0_1z, _00_[2:0] } === { celloutsig_0_0z[2:0], celloutsig_0_0z };
  assign celloutsig_0_45z = celloutsig_0_1z[2:0] === celloutsig_0_7z;
  assign celloutsig_0_5z = in_data[9:5] === celloutsig_0_1z;
  assign celloutsig_0_6z = { _00_[1:0], celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_0z } === { celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_40z = { celloutsig_0_31z[4:1], celloutsig_0_31z, celloutsig_0_15z } * celloutsig_0_20z[17:6];
  assign celloutsig_1_0z = in_data[136] ? in_data[124:122] : in_data[123:121];
  assign celloutsig_0_9z = in_data[68:60] !== in_data[26:18];
  assign celloutsig_0_12z = { celloutsig_0_9z, celloutsig_0_1z } !== { celloutsig_0_1z[4:1], celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_4z = ~ in_data[86:84];
  assign celloutsig_1_7z = ~ { celloutsig_1_4z[2], celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_7z = ~ { _00_[1:0], celloutsig_0_3z };
  assign celloutsig_0_17z = ~ { celloutsig_0_7z[1:0], celloutsig_0_11z, celloutsig_0_3z };
  assign celloutsig_0_29z = ~ { celloutsig_0_0z[4:1], _00_[2:0], celloutsig_0_16z };
  assign celloutsig_1_18z = { celloutsig_1_7z[4], celloutsig_1_8z, celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_13z } | { in_data[142:139], celloutsig_1_11z };
  assign celloutsig_0_20z = { celloutsig_0_0z[5:2], celloutsig_0_1z, celloutsig_0_18z, celloutsig_0_18z, celloutsig_0_12z, celloutsig_0_15z, celloutsig_0_6z, celloutsig_0_19z } | { _00_[2], _00_[2:0], celloutsig_0_13z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_19z };
  assign celloutsig_1_11z = ^ celloutsig_1_5z[10:8];
  assign celloutsig_1_13z = ^ { celloutsig_1_5z[9:1], celloutsig_1_3z, celloutsig_1_11z };
  assign celloutsig_0_8z = ^ { celloutsig_0_4z, _00_[2:0] };
  assign celloutsig_0_16z = ^ { _00_[1], celloutsig_0_9z, celloutsig_0_7z };
  assign celloutsig_0_47z = { celloutsig_0_40z[11:5], celloutsig_0_45z } >> { in_data[18:14], _00_[2:0] };
  assign celloutsig_1_5z = { celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_1z, celloutsig_1_0z } << { celloutsig_1_3z[2:1], celloutsig_1_1z, celloutsig_1_2z };
  assign celloutsig_0_1z = celloutsig_0_0z[4:0] << celloutsig_0_0z[5:1];
  assign celloutsig_0_22z = { in_data[81:80], celloutsig_0_16z, celloutsig_0_5z, celloutsig_0_6z, _00_[2:0] } << in_data[21:14];
  assign celloutsig_0_0z = in_data[32:27] <<< in_data[41:36];
  assign celloutsig_1_2z = { celloutsig_1_0z[1], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_1z, celloutsig_1_1z } <<< { in_data[122:118], celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_0_10z = celloutsig_0_1z[2:0] >>> { in_data[2], celloutsig_0_3z, celloutsig_0_8z };
  assign celloutsig_0_19z = { celloutsig_0_6z, _00_[2:0], celloutsig_0_10z } >>> { celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_18z, celloutsig_0_8z, celloutsig_0_10z };
  assign { celloutsig_1_4z[1], celloutsig_1_4z[4:2] } = ~ { celloutsig_1_1z, in_data[149:147] };
  assign _00_[12:3] = { celloutsig_0_1z[4:3], celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_13z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_5z };
  assign celloutsig_1_4z[0] = celloutsig_1_4z[1];
  assign { out_data[132:128], out_data[96], out_data[39:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_47z, celloutsig_0_48z };
endmodule
