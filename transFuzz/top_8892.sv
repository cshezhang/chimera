/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [3:0] _01_;
  wire [10:0] _02_;
  reg [6:0] _03_;
  wire [4:0] _04_;
  wire celloutsig_0_0z;
  wire [31:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire [4:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire [4:0] celloutsig_0_16z;
  wire [2:0] celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire [15:0] celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [10:0] celloutsig_0_21z;
  wire [3:0] celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire [11:0] celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [13:0] celloutsig_0_29z;
  wire [11:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_38z;
  wire [3:0] celloutsig_0_3z;
  wire celloutsig_0_43z;
  wire [11:0] celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire [2:0] celloutsig_0_47z;
  wire [10:0] celloutsig_0_4z;
  wire [11:0] celloutsig_0_55z;
  wire [41:0] celloutsig_0_56z;
  wire [13:0] celloutsig_0_5z;
  wire [2:0] celloutsig_0_61z;
  wire [7:0] celloutsig_0_66z;
  wire celloutsig_0_6z;
  wire celloutsig_0_7z;
  wire celloutsig_0_92z;
  wire [4:0] celloutsig_0_98z;
  wire celloutsig_0_99z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire [2:0] celloutsig_1_16z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [11:0] celloutsig_1_4z;
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
  assign celloutsig_1_2z = ~(celloutsig_1_0z & celloutsig_1_0z);
  assign celloutsig_1_3z = ~(celloutsig_1_2z & celloutsig_1_2z);
  assign celloutsig_0_11z = ~(in_data[71] & celloutsig_0_2z[0]);
  assign celloutsig_1_7z = ~(celloutsig_1_4z[1] & celloutsig_1_5z);
  assign celloutsig_0_34z = ~celloutsig_0_27z;
  assign celloutsig_0_45z = ~celloutsig_0_6z;
  assign celloutsig_0_92z = ~celloutsig_0_31z;
  assign celloutsig_0_9z = ~in_data[89];
  assign celloutsig_0_26z = ~in_data[92];
  assign celloutsig_0_28z = ~celloutsig_0_24z;
  assign celloutsig_0_6z = ~((celloutsig_0_4z[6] | celloutsig_0_1z) & celloutsig_0_1z);
  assign celloutsig_1_18z = ~((celloutsig_1_2z | celloutsig_1_17z) & (celloutsig_1_7z | celloutsig_1_4z[4]));
  assign celloutsig_0_33z = celloutsig_0_18z ^ celloutsig_0_28z;
  assign celloutsig_1_5z = celloutsig_1_1z ^ celloutsig_1_4z[9];
  assign celloutsig_1_8z = celloutsig_1_1z ^ in_data[155];
  assign celloutsig_0_2z = in_data[32:21] + { in_data[21:11], celloutsig_0_0z };
  assign celloutsig_0_22z = celloutsig_0_10z[10:7] + { _01_[3:1], celloutsig_0_45z };
  assign celloutsig_0_25z = celloutsig_0_5z[11:0] + { celloutsig_0_19z[14:4], celloutsig_0_23z };
  assign celloutsig_0_29z = { celloutsig_0_12z[4:3], celloutsig_0_21z, celloutsig_0_23z } + { celloutsig_0_4z[9:2], celloutsig_0_16z, celloutsig_0_15z };
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[0])
    if (clkin_data[0]) _03_ <= 7'h00;
    else _03_ <= { _02_[4:2], celloutsig_0_38z, celloutsig_0_47z };
  reg [4:0] _25_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[0])
    if (clkin_data[0]) _25_ <= 5'h00;
    else _25_ <= { in_data[5:4], celloutsig_0_13z, celloutsig_0_9z, celloutsig_0_7z };
  assign { _01_[3:1], _04_[1:0] } = _25_;
  reg [5:0] _26_;
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[0])
    if (!clkin_data[0]) _26_ <= 6'h00;
    else _26_ <= { celloutsig_0_5z[6:2], celloutsig_0_9z };
  assign { _02_[5:2], _00_, _02_[0] } = _26_;
  assign celloutsig_0_3z = { in_data[9:7], celloutsig_0_0z } / { 1'h1, in_data[66:64] };
  assign celloutsig_1_4z = { in_data[140:138], celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_1z, celloutsig_1_1z } / { 1'h1, in_data[169:161], celloutsig_1_0z, celloutsig_1_3z };
  assign celloutsig_0_17z = celloutsig_0_2z[8:6] / { 1'h1, celloutsig_0_12z[1], celloutsig_0_0z };
  assign celloutsig_1_6z = in_data[144:134] == { in_data[191:189], celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_1z };
  assign celloutsig_1_12z = { in_data[103:100], celloutsig_1_11z } == { in_data[122:120], celloutsig_1_3z, celloutsig_1_5z };
  assign celloutsig_1_17z = { celloutsig_1_4z[10], celloutsig_1_3z, celloutsig_1_16z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_11z, celloutsig_1_6z, celloutsig_1_16z } == { celloutsig_1_16z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_15z, celloutsig_1_1z };
  assign celloutsig_0_23z = { _01_[2:1], _04_[1:0], celloutsig_0_1z, celloutsig_0_21z, celloutsig_0_21z, celloutsig_0_18z, _02_[5:2], _00_, _02_[0], celloutsig_0_11z } == in_data[82:48];
  assign celloutsig_0_24z = celloutsig_0_16z == { celloutsig_0_3z[1:0], celloutsig_0_45z, celloutsig_0_11z, celloutsig_0_45z };
  assign celloutsig_0_31z = { _02_[4:2], _00_, celloutsig_0_26z, celloutsig_0_9z } == { celloutsig_0_22z, celloutsig_0_7z, celloutsig_0_13z };
  assign celloutsig_0_38z = celloutsig_0_25z[9:5] > { _04_[1:0], celloutsig_0_24z, celloutsig_0_30z, celloutsig_0_0z };
  assign celloutsig_1_11z = { in_data[126:114], celloutsig_1_6z } > { celloutsig_1_10z, celloutsig_1_3z, celloutsig_1_6z, celloutsig_1_1z, celloutsig_1_3z, celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_10z, celloutsig_1_9z, celloutsig_1_2z };
  assign celloutsig_1_1z = in_data[112:107] <= in_data[135:130];
  assign celloutsig_1_15z = { in_data[104:96], celloutsig_1_8z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_10z, celloutsig_1_1z } <= { celloutsig_1_13z, celloutsig_1_4z, celloutsig_1_3z };
  assign celloutsig_0_32z = { celloutsig_0_16z[2:1], celloutsig_0_27z } || celloutsig_0_3z[3:1];
  assign celloutsig_1_10z = { celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_6z } || { celloutsig_1_4z[7:6], celloutsig_1_5z };
  assign celloutsig_0_43z = celloutsig_0_34z & ~(celloutsig_0_4z[8]);
  assign celloutsig_0_55z = { celloutsig_0_28z, celloutsig_0_21z } * { celloutsig_0_19z[14:4], celloutsig_0_15z };
  assign celloutsig_0_56z = - { _03_[6:4], celloutsig_0_5z, celloutsig_0_3z, celloutsig_0_44z, celloutsig_0_13z, celloutsig_0_26z, celloutsig_0_11z, celloutsig_0_38z, celloutsig_0_43z, celloutsig_0_33z, celloutsig_0_32z, celloutsig_0_33z, celloutsig_0_15z };
  assign celloutsig_0_10z = - { in_data[19:1], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_3z };
  assign celloutsig_0_1z = | { in_data[86:78], celloutsig_0_0z };
  assign celloutsig_1_0z = ^ in_data[170:165];
  assign celloutsig_0_18z = ^ celloutsig_0_10z[27:8];
  assign celloutsig_0_12z = celloutsig_0_2z[8:4] >> celloutsig_0_5z[6:2];
  assign celloutsig_0_21z = { celloutsig_0_16z[4:1], _02_[5:2], _00_, _02_[0], celloutsig_0_13z } >> { celloutsig_0_5z[7:3], _01_[3:1], _04_[1:0], celloutsig_0_18z };
  assign celloutsig_0_4z = celloutsig_0_2z[11:1] <<< in_data[24:14];
  assign celloutsig_0_98z = { celloutsig_0_61z, celloutsig_0_92z, celloutsig_0_33z } <<< celloutsig_0_29z[5:1];
  assign celloutsig_0_44z = { _02_[3:2], _00_, _02_[0], _02_[5:2], _00_, _02_[0], celloutsig_0_38z, celloutsig_0_28z } >>> { celloutsig_0_28z, celloutsig_0_21z };
  assign celloutsig_0_47z = { celloutsig_0_2z[11], celloutsig_0_35z, celloutsig_0_0z } >>> celloutsig_0_25z[9:7];
  assign celloutsig_0_5z = { celloutsig_0_4z[7:6], celloutsig_0_2z } >>> { in_data[60:52], celloutsig_0_1z, celloutsig_0_3z };
  assign celloutsig_0_61z = { celloutsig_0_29z[8:7], celloutsig_0_32z } >>> celloutsig_0_56z[20:18];
  assign celloutsig_0_66z = celloutsig_0_10z[31:24] >>> { celloutsig_0_22z[3], celloutsig_0_38z, celloutsig_0_45z, celloutsig_0_16z };
  assign celloutsig_1_16z = { celloutsig_1_15z, celloutsig_1_12z, celloutsig_1_2z } >>> { celloutsig_1_2z, celloutsig_1_11z, celloutsig_1_9z };
  assign celloutsig_0_16z = { in_data[38:35], celloutsig_0_7z } >>> { _01_[3:1], _04_[1], celloutsig_0_6z };
  assign celloutsig_0_19z = { celloutsig_0_16z[3:0], celloutsig_0_2z } >>> { celloutsig_0_3z[3], celloutsig_0_45z, celloutsig_0_2z, celloutsig_0_18z, celloutsig_0_9z };
  assign celloutsig_0_0z = ~((in_data[73] & in_data[78]) | in_data[83]);
  assign celloutsig_0_35z = ~((celloutsig_0_18z & celloutsig_0_16z[3]) | celloutsig_0_28z);
  assign celloutsig_0_7z = ~((celloutsig_0_3z[1] & celloutsig_0_1z) | celloutsig_0_3z[3]);
  assign celloutsig_0_99z = ~((celloutsig_0_66z[4] & celloutsig_0_2z[4]) | celloutsig_0_55z[6]);
  assign celloutsig_1_13z = ~((celloutsig_1_1z & celloutsig_1_3z) | celloutsig_1_1z);
  assign celloutsig_0_15z = ~((celloutsig_0_7z & celloutsig_0_10z[11]) | celloutsig_0_5z[2]);
  assign celloutsig_0_27z = ~((celloutsig_0_26z & celloutsig_0_18z) | celloutsig_0_9z);
  assign celloutsig_0_30z = ~((celloutsig_0_3z[1] & celloutsig_0_17z[2]) | celloutsig_0_7z);
  assign celloutsig_1_9z = ~((celloutsig_1_0z & celloutsig_1_8z) | (celloutsig_1_7z & celloutsig_1_3z));
  assign celloutsig_1_19z = ~((celloutsig_1_0z & celloutsig_1_17z) | (celloutsig_1_13z & celloutsig_1_17z));
  assign celloutsig_0_13z = ~((celloutsig_0_6z & celloutsig_0_7z) | (celloutsig_0_9z & celloutsig_0_45z));
  assign _01_[0] = celloutsig_0_45z;
  assign { _02_[10:6], _02_[1] } = { celloutsig_0_19z[13:12], celloutsig_0_28z, celloutsig_0_30z, celloutsig_0_33z, _00_ };
  assign _04_[4:2] = _01_[3:1];
  assign { out_data[128], out_data[96], out_data[36:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_98z, celloutsig_0_99z };
endmodule
