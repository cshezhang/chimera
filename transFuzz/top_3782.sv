/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire [5:0] _01_;
  wire [4:0] celloutsig_0_0z;
  wire [5:0] celloutsig_0_10z;
  wire [3:0] celloutsig_0_11z;
  wire [13:0] celloutsig_0_12z;
  wire [15:0] celloutsig_0_13z;
  wire [8:0] celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire [2:0] celloutsig_0_20z;
  wire celloutsig_0_22z;
  wire [3:0] celloutsig_0_23z;
  wire [8:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_2z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire [10:0] celloutsig_0_3z;
  wire celloutsig_0_42z;
  wire [3:0] celloutsig_0_43z;
  wire [3:0] celloutsig_0_4z;
  wire [4:0] celloutsig_0_57z;
  wire celloutsig_0_58z;
  wire [4:0] celloutsig_0_5z;
  wire [5:0] celloutsig_0_6z;
  wire [3:0] celloutsig_0_7z;
  wire [10:0] celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire [5:0] celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire [10:0] celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire [3:0] celloutsig_1_15z;
  wire [36:0] celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire [13:0] celloutsig_1_19z;
  wire [15:0] celloutsig_1_1z;
  wire [12:0] celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire [4:0] celloutsig_1_4z;
  wire [4:0] celloutsig_1_5z;
  wire [2:0] celloutsig_1_6z;
  wire [9:0] celloutsig_1_7z;
  wire [4:0] celloutsig_1_8z;
  wire [12:0] celloutsig_1_9z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_35z = !(celloutsig_0_14z[3] ? celloutsig_0_9z[1] : celloutsig_0_34z);
  assign celloutsig_0_42z = !(celloutsig_0_22z ? celloutsig_0_35z : celloutsig_0_12z[1]);
  assign celloutsig_1_0z = !(in_data[128] ? in_data[159] : in_data[139]);
  assign celloutsig_1_11z = !(in_data[144] ? celloutsig_1_3z : celloutsig_1_10z[2]);
  assign celloutsig_0_1z = !(celloutsig_0_0z[0] ? in_data[78] : in_data[38]);
  assign celloutsig_0_15z = !(celloutsig_0_5z[1] ? celloutsig_0_1z : celloutsig_0_11z[1]);
  assign celloutsig_0_19z = !(celloutsig_0_1z ? celloutsig_0_14z[2] : celloutsig_0_7z[0]);
  assign celloutsig_0_22z = !(celloutsig_0_2z ? celloutsig_0_0z[3] : celloutsig_0_10z[0]);
  assign celloutsig_0_25z = !(celloutsig_0_2z ? celloutsig_0_19z : celloutsig_0_23z[1]);
  assign celloutsig_0_34z = ~((celloutsig_0_6z[3] | celloutsig_0_14z[4]) & (celloutsig_0_0z[0] | celloutsig_0_10z[2]));
  assign celloutsig_0_58z = ~((celloutsig_0_25z | _00_) & (celloutsig_0_3z[2] | celloutsig_0_42z));
  assign celloutsig_1_3z = ~((celloutsig_1_1z[2] | celloutsig_1_1z[11]) & (celloutsig_1_0z | celloutsig_1_2z[1]));
  assign celloutsig_1_14z = ~((in_data[136] | celloutsig_1_5z[3]) & (celloutsig_1_9z[3] | celloutsig_1_12z[8]));
  assign celloutsig_0_2z = ~((celloutsig_0_1z | celloutsig_0_0z[1]) & (in_data[48] | celloutsig_0_0z[2]));
  reg [5:0] _16_;
  always_ff @(negedge clkin_data[32], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _16_ <= 6'h00;
    else _16_ <= celloutsig_0_24z[5:0];
  assign { _01_[5:4], _00_, _01_[2:0] } = _16_;
  assign celloutsig_1_17z = { in_data[140:109], celloutsig_1_15z, celloutsig_1_14z } * { celloutsig_1_2z[5:3], celloutsig_1_11z, celloutsig_1_9z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_14z, celloutsig_1_15z, celloutsig_1_9z };
  assign celloutsig_1_18z = celloutsig_1_7z[2:0] * { celloutsig_1_12z[2:1], celloutsig_1_0z };
  assign celloutsig_0_9z = { in_data[79:75], celloutsig_0_6z } * { in_data[17:14], celloutsig_0_1z, celloutsig_0_6z };
  assign celloutsig_0_0z = ~ in_data[41:37];
  assign celloutsig_0_3z = ~ in_data[28:18];
  assign celloutsig_1_6z = ~ celloutsig_1_4z[3:1];
  assign celloutsig_1_8z = ~ celloutsig_1_5z;
  assign celloutsig_1_9z = ~ { in_data[158:156], celloutsig_1_4z, celloutsig_1_8z };
  assign celloutsig_0_10z = ~ { in_data[28:27], celloutsig_0_7z };
  assign celloutsig_0_23z = ~ celloutsig_0_11z;
  assign celloutsig_0_24z = ~ celloutsig_0_13z[15:7];
  assign celloutsig_0_4z = { celloutsig_0_2z, celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_2z } <<< celloutsig_0_0z[4:1];
  assign celloutsig_0_43z = celloutsig_0_11z <<< { celloutsig_0_20z, celloutsig_0_35z };
  assign celloutsig_0_5z = { celloutsig_0_0z[3], celloutsig_0_4z } <<< { celloutsig_0_0z[4], celloutsig_0_4z };
  assign celloutsig_0_6z = { celloutsig_0_5z[1], celloutsig_0_0z } <<< { in_data[88], celloutsig_0_0z };
  assign celloutsig_0_57z = { celloutsig_0_3z[8:5], celloutsig_0_19z } <<< { celloutsig_0_13z[13], celloutsig_0_43z };
  assign celloutsig_1_1z = { in_data[157:143], celloutsig_1_0z } <<< { in_data[168:154], celloutsig_1_0z };
  assign celloutsig_1_7z = { celloutsig_1_2z[9:1], celloutsig_1_0z } <<< { celloutsig_1_1z[14:13], celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_1_10z = celloutsig_1_1z[14:9] <<< { celloutsig_1_7z[9], celloutsig_1_4z };
  assign celloutsig_1_12z = { celloutsig_1_7z[8:6], celloutsig_1_8z, celloutsig_1_6z } <<< celloutsig_1_2z[10:0];
  assign celloutsig_1_15z = celloutsig_1_10z[3:0] <<< celloutsig_1_8z[4:1];
  assign celloutsig_1_19z = celloutsig_1_17z[20:7] <<< { celloutsig_1_1z[8:0], celloutsig_1_8z };
  assign celloutsig_0_11z = in_data[51:48] <<< celloutsig_0_4z;
  assign celloutsig_0_12z = { celloutsig_0_11z[2:1], celloutsig_0_0z, celloutsig_0_10z, celloutsig_0_1z } <<< { celloutsig_0_9z[10:1], celloutsig_0_7z };
  assign celloutsig_1_2z = { celloutsig_1_1z[12:1], celloutsig_1_0z } >>> celloutsig_1_1z[15:3];
  assign celloutsig_1_4z = { in_data[170:167], celloutsig_1_0z } >>> { celloutsig_1_1z[6:3], celloutsig_1_0z };
  assign celloutsig_1_5z = celloutsig_1_2z[5:1] >>> celloutsig_1_1z[9:5];
  assign celloutsig_0_7z = in_data[77:74] >>> in_data[73:70];
  assign celloutsig_0_13z = { celloutsig_0_11z[1:0], celloutsig_0_5z, celloutsig_0_7z, celloutsig_0_5z } >>> { celloutsig_0_9z[10:8], celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_11z };
  assign celloutsig_0_14z = { celloutsig_0_0z[3:0], celloutsig_0_5z } >>> in_data[23:15];
  assign celloutsig_0_20z = celloutsig_0_11z[3:1] >>> { celloutsig_0_0z[1:0], celloutsig_0_15z };
  assign _01_[3] = _00_;
  assign { out_data[130:128], out_data[109:96], out_data[36:32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_57z, celloutsig_0_58z };
endmodule
