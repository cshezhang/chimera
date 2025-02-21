/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [9:0] _00_;
  reg [7:0] _01_;
  reg [10:0] _02_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [4:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire [7:0] celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [11:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_23z;
  wire [11:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_29z;
  wire [19:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire [9:0] celloutsig_0_33z;
  wire [3:0] celloutsig_0_34z;
  wire [2:0] celloutsig_0_35z;
  wire [9:0] celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire [4:0] celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire [10:0] celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire [8:0] celloutsig_1_0z;
  wire celloutsig_1_12z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire [3:0] celloutsig_1_4z;
  wire [2:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  wire [5:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_1z = celloutsig_1_0z[4] ? celloutsig_1_0z[5] : celloutsig_1_0z[8];
  assign celloutsig_1_2z = in_data[155] ? celloutsig_1_0z[0] : celloutsig_1_0z[3];
  assign celloutsig_0_10z = celloutsig_0_3z ? in_data[9] : celloutsig_0_6z;
  assign celloutsig_0_30z = !(celloutsig_0_0z ? celloutsig_0_14z : celloutsig_0_23z);
  assign celloutsig_0_4z = celloutsig_0_2z[17] | ~(celloutsig_0_1z);
  assign celloutsig_0_14z = celloutsig_0_12z | ~(celloutsig_0_6z);
  assign celloutsig_0_0z = in_data[82] | in_data[93];
  assign celloutsig_0_37z = celloutsig_0_35z[1] | celloutsig_0_26z;
  assign celloutsig_0_11z = celloutsig_0_8z[2] | celloutsig_0_7z;
  assign celloutsig_0_15z = celloutsig_0_11z | celloutsig_0_9z;
  assign celloutsig_0_7z = ~(celloutsig_0_6z ^ celloutsig_0_3z);
  always_ff @(negedge clkin_data[32], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _01_ <= 8'h00;
    else _01_ <= { celloutsig_0_2z[11], celloutsig_0_17z, celloutsig_0_13z, celloutsig_0_11z };
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _02_ <= 11'h000;
    else _02_ <= { _01_[7:2], celloutsig_0_13z };
  always_ff @(posedge clkin_data[32], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _00_ <= 10'h000;
    else _00_ <= { celloutsig_0_24z[7:0], celloutsig_0_0z, celloutsig_0_30z };
  assign celloutsig_0_12z = { celloutsig_0_8z[7:4], celloutsig_0_3z } <= { celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_0z };
  assign celloutsig_0_27z = { celloutsig_0_19z[10:7], celloutsig_0_23z, celloutsig_0_1z } <= { celloutsig_0_8z[5:1], celloutsig_0_25z };
  assign celloutsig_1_6z = { in_data[159:158], celloutsig_1_2z } || celloutsig_1_0z[6:4];
  assign celloutsig_0_17z = in_data[4:1] || { celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_0z };
  assign celloutsig_0_29z = { celloutsig_0_2z[18:5], celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_11z } < { celloutsig_0_8z[2], celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_19z, celloutsig_0_0z, celloutsig_0_1z };
  assign celloutsig_0_26z = celloutsig_0_12z & ~(celloutsig_0_15z);
  assign celloutsig_0_24z = { celloutsig_0_11z, _02_ } % { 1'h1, in_data[89:87], celloutsig_0_10z, celloutsig_0_18z, celloutsig_0_11z, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_18z, celloutsig_0_1z, celloutsig_0_17z };
  assign celloutsig_1_0z = in_data[107:99] % { 1'h1, in_data[152:145] };
  assign celloutsig_0_16z = { in_data[20:14], celloutsig_0_1z } % { 1'h1, celloutsig_0_5z[3], celloutsig_0_9z, celloutsig_0_7z, celloutsig_0_0z, celloutsig_0_7z, celloutsig_0_3z, celloutsig_0_0z };
  assign celloutsig_1_3z = { in_data[152], celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_1z } * celloutsig_1_0z[4:0];
  assign celloutsig_1_8z = { celloutsig_1_3z[4:3], celloutsig_1_4z } * { in_data[129:128], celloutsig_1_2z, celloutsig_1_7z };
  assign celloutsig_1_9z = { celloutsig_1_0z[6:4], celloutsig_1_0z, celloutsig_1_0z } !== { celloutsig_1_8z, celloutsig_1_4z, celloutsig_1_1z, celloutsig_1_8z, celloutsig_1_7z, celloutsig_1_6z };
  assign celloutsig_0_35z = ~ celloutsig_0_2z[7:5];
  assign celloutsig_0_5z = ~ in_data[37:33];
  assign celloutsig_1_18z = & { celloutsig_1_12z, celloutsig_1_9z, celloutsig_1_6z, celloutsig_1_1z };
  assign celloutsig_0_1z = & { in_data[44:20], celloutsig_0_0z };
  assign celloutsig_0_6z = celloutsig_0_2z[6] & in_data[41];
  assign celloutsig_1_19z = celloutsig_1_0z[5] & celloutsig_1_5z[2];
  assign celloutsig_0_18z = celloutsig_0_3z & celloutsig_0_16z[5];
  assign celloutsig_0_25z = in_data[78] & celloutsig_0_15z;
  assign celloutsig_0_3z = in_data[61] & celloutsig_0_0z;
  assign celloutsig_1_12z = | { celloutsig_1_7z[2], celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_1z };
  assign celloutsig_0_9z = | celloutsig_0_2z[10:4];
  assign celloutsig_0_23z = | { celloutsig_0_19z[8], celloutsig_0_16z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_36z = { celloutsig_0_24z[10:8], celloutsig_0_13z, celloutsig_0_12z, celloutsig_0_27z } >> { in_data[58], celloutsig_0_5z, celloutsig_0_34z };
  assign celloutsig_0_19z = in_data[29:18] >> { celloutsig_0_17z, celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_6z, celloutsig_0_11z };
  assign celloutsig_0_2z = { in_data[87:71], celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_1z } >> { in_data[43:25], celloutsig_0_0z };
  assign celloutsig_0_33z = { _00_[9:1], celloutsig_0_29z } << { celloutsig_0_2z[19:12], celloutsig_0_0z, celloutsig_0_9z };
  assign celloutsig_0_34z = celloutsig_0_33z[4:1] << { celloutsig_0_19z[11:10], celloutsig_0_15z, celloutsig_0_18z };
  assign celloutsig_1_4z = celloutsig_1_0z[3:0] << { in_data[151:149], celloutsig_1_1z };
  assign celloutsig_1_5z = in_data[113:111] << celloutsig_1_4z[2:0];
  assign celloutsig_1_7z = celloutsig_1_0z[7:5] << { celloutsig_1_0z[7:6], celloutsig_1_1z };
  assign celloutsig_0_8z = { in_data[58:52], celloutsig_0_3z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_7z } << { celloutsig_0_2z[14:6], celloutsig_0_6z, celloutsig_0_6z };
  assign celloutsig_0_13z = { celloutsig_0_6z, celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_12z } << { celloutsig_0_8z[5:3], celloutsig_0_1z, celloutsig_0_6z };
  assign { out_data[128], out_data[96], out_data[41:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_36z, celloutsig_0_37z };
endmodule
