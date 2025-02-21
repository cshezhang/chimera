/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire [3:0] _03_;
  wire [3:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [15:0] celloutsig_0_11z;
  wire [7:0] celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_25z;
  wire [3:0] celloutsig_0_26z;
  wire [6:0] celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire [12:0] celloutsig_0_2z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [7:0] celloutsig_0_36z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_4z;
  wire [7:0] celloutsig_0_5z;
  wire [6:0] celloutsig_0_6z;
  wire celloutsig_0_72z;
  wire celloutsig_0_73z;
  wire [7:0] celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [5:0] celloutsig_0_9z;
  wire [4:0] celloutsig_1_10z;
  wire celloutsig_1_18z;
  wire [2:0] celloutsig_1_19z;
  wire [7:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [4:0] celloutsig_1_3z;
  wire [2:0] celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [6:0] celloutsig_1_6z;
  wire [7:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_15z = celloutsig_0_7z[2] ? celloutsig_0_1z : celloutsig_0_13z;
  assign celloutsig_0_17z = !(celloutsig_0_4z ? celloutsig_0_5z[7] : celloutsig_0_6z[5]);
  assign celloutsig_1_9z = celloutsig_1_2z ^ celloutsig_1_3z[3];
  assign celloutsig_0_3z = celloutsig_0_2z[1] ^ in_data[8];
  reg [3:0] _09_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[64])
    if (clkin_data[64]) _09_ <= 4'h0;
    else _09_ <= in_data[115:112];
  assign { _03_[3:1], _02_ } = _09_;
  reg [3:0] _10_;
  always_ff @(negedge celloutsig_1_19z[0], negedge clkin_data[32])
    if (!clkin_data[32]) _10_ <= 4'h0;
    else _10_ <= celloutsig_0_9z[4:1];
  assign { _01_, _00_, _04_[1:0] } = _10_;
  assign celloutsig_1_7z = in_data[129:122] / { 1'h1, celloutsig_1_1z[4:0], celloutsig_1_5z, celloutsig_1_5z };
  assign celloutsig_0_2z = in_data[76:64] / { 1'h1, in_data[29:18] };
  assign celloutsig_0_1z = in_data[74:64] === in_data[54:44];
  assign celloutsig_0_72z = { in_data[40:39], celloutsig_0_40z, celloutsig_0_19z, celloutsig_0_15z } && celloutsig_0_36z[6:2];
  assign celloutsig_1_2z = celloutsig_1_1z && { celloutsig_1_1z[4:1], _03_[3:1], _02_ };
  assign celloutsig_0_28z = in_data[75:69] && celloutsig_0_7z[6:0];
  assign celloutsig_0_25z = ! in_data[75:69];
  assign celloutsig_0_29z = ! celloutsig_0_11z[9:7];
  assign celloutsig_1_5z = celloutsig_1_3z[4:2] || { _03_[3:2], celloutsig_1_2z };
  assign celloutsig_0_10z = celloutsig_0_3z & ~(celloutsig_0_5z[5]);
  assign celloutsig_1_3z = celloutsig_1_1z[5:1] % { 1'h1, celloutsig_1_1z[3:0] };
  assign celloutsig_0_5z = { in_data[20:18], celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_0z } * celloutsig_0_2z[11:4];
  assign celloutsig_0_6z = { celloutsig_0_5z[7:3], celloutsig_0_0z, celloutsig_0_4z } * in_data[62:56];
  assign celloutsig_1_10z = { celloutsig_1_9z, celloutsig_1_8z, celloutsig_1_2z, celloutsig_1_9z, celloutsig_1_5z } * celloutsig_1_1z[5:1];
  assign celloutsig_0_16z = { celloutsig_0_9z[4:0], celloutsig_0_1z } != celloutsig_0_5z[5:0];
  assign celloutsig_0_4z = in_data[67:62] !== { in_data[63:59], celloutsig_0_3z };
  assign celloutsig_0_73z = in_data[13:11] !== celloutsig_0_27z[2:0];
  assign celloutsig_1_4z = ~ { _03_[3:2], celloutsig_1_2z };
  assign celloutsig_1_6z = in_data[162:156] | { _03_[3:1], _02_, celloutsig_1_4z };
  assign celloutsig_0_9z = { celloutsig_0_6z[4:1], celloutsig_0_8z, celloutsig_0_3z } | celloutsig_0_5z[5:0];
  assign celloutsig_0_12z = { in_data[90:84], celloutsig_0_10z } | { celloutsig_0_11z[7], celloutsig_0_6z };
  assign celloutsig_0_26z = { in_data[68:66], celloutsig_0_0z } | { celloutsig_0_9z[2:0], celloutsig_0_1z };
  assign celloutsig_0_27z = { celloutsig_0_22z, celloutsig_0_22z, _01_, _00_, _04_[1:0], celloutsig_0_10z } | { celloutsig_0_5z[5:0], celloutsig_0_23z };
  assign celloutsig_1_18z = & { celloutsig_1_10z, celloutsig_1_7z[0], celloutsig_1_5z };
  assign celloutsig_0_0z = ^ in_data[37:27];
  assign celloutsig_1_8z = ^ { in_data[154:153], celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_0_19z = ^ { in_data[21:16], celloutsig_0_15z, celloutsig_0_13z };
  assign celloutsig_0_23z = ^ { celloutsig_0_6z[5:1], celloutsig_0_7z, celloutsig_0_17z, celloutsig_0_17z, celloutsig_0_13z, celloutsig_0_16z, celloutsig_0_16z };
  assign celloutsig_0_36z = { celloutsig_0_9z[3:2], celloutsig_0_9z } <<< { in_data[87:85], celloutsig_0_14z, celloutsig_0_35z, celloutsig_0_34z, celloutsig_0_22z, celloutsig_0_35z };
  assign celloutsig_1_1z = in_data[170:163] <<< { _03_[3:1], _02_, _03_[3:1], _02_ };
  assign celloutsig_1_19z = celloutsig_1_3z[2:0] <<< { celloutsig_1_1z[7], celloutsig_1_8z, celloutsig_1_8z };
  assign celloutsig_0_7z = in_data[36:29] >>> { celloutsig_0_6z, celloutsig_0_1z };
  assign celloutsig_0_11z = { celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_4z } >>> { celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_0_34z = ~((celloutsig_0_26z[1] & celloutsig_0_2z[3]) | celloutsig_0_25z);
  assign celloutsig_0_40z = ~((celloutsig_0_34z & celloutsig_0_25z) | celloutsig_0_13z);
  assign celloutsig_0_13z = ~((in_data[45] & celloutsig_0_7z[6]) | celloutsig_0_3z);
  assign celloutsig_0_14z = ~((celloutsig_0_9z[2] & celloutsig_0_1z) | celloutsig_0_2z[11]);
  assign celloutsig_0_22z = ~((celloutsig_0_8z & celloutsig_0_12z[3]) | celloutsig_0_3z);
  assign celloutsig_0_35z = ~((celloutsig_0_28z & celloutsig_0_8z) | (celloutsig_0_29z & celloutsig_0_15z));
  assign celloutsig_0_8z = ~((celloutsig_0_0z & celloutsig_0_3z) | (celloutsig_0_2z[7] & celloutsig_0_1z));
  assign _03_[0] = _02_;
  assign _04_[3:2] = { _01_, _00_ };
  assign { out_data[128], out_data[98:96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_72z, celloutsig_0_73z };
endmodule
