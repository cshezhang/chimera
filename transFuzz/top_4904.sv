/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  reg [3:0] _03_;
  wire [3:0] _04_;
  reg [15:0] _05_;
  wire [25:0] _06_;
  wire [2:0] _07_;
  reg [4:0] _08_;
  reg [3:0] _09_;
  reg [9:0] _10_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire [22:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [7:0] celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_27z;
  wire celloutsig_0_28z;
  wire [8:0] celloutsig_0_29z;
  wire [4:0] celloutsig_0_2z;
  wire [3:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [6:0] celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_44z;
  wire celloutsig_0_45z;
  wire celloutsig_0_48z;
  wire celloutsig_0_49z;
  wire celloutsig_0_4z;
  wire [15:0] celloutsig_0_51z;
  wire [9:0] celloutsig_0_52z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_61z;
  wire [13:0] celloutsig_0_62z;
  wire celloutsig_0_6z;
  wire [7:0] celloutsig_0_72z;
  wire [3:0] celloutsig_0_73z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire [2:0] celloutsig_0_9z;
  wire celloutsig_1_10z;
  wire [18:0] celloutsig_1_11z;
  wire celloutsig_1_13z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [7:0] celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_6z;
  wire [2:0] celloutsig_1_7z;
  input [159:0] clkin_data;
  wire [159:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_45z = ~(celloutsig_0_17z | celloutsig_0_2z[4]);
  assign celloutsig_0_48z = ~(celloutsig_0_28z | celloutsig_0_13z);
  assign celloutsig_1_3z = ~(celloutsig_1_2z | celloutsig_1_1z[3]);
  assign celloutsig_0_11z = ~(celloutsig_0_8z | celloutsig_0_10z);
  assign celloutsig_0_12z = ~(celloutsig_0_3z | celloutsig_0_3z);
  assign celloutsig_0_13z = ~(celloutsig_0_1z | celloutsig_0_1z);
  assign celloutsig_0_27z = ~(celloutsig_0_26z | celloutsig_0_12z);
  assign celloutsig_0_44z = ~((celloutsig_0_28z | celloutsig_0_13z) & celloutsig_0_9z[1]);
  assign celloutsig_0_8z = ~((celloutsig_0_6z | in_data[20]) & celloutsig_0_1z);
  assign celloutsig_0_61z = ~((celloutsig_0_32z | celloutsig_0_28z) & (_00_ | celloutsig_0_49z));
  assign celloutsig_1_6z = ~((celloutsig_1_2z | celloutsig_1_3z) & (celloutsig_1_3z | celloutsig_1_3z));
  assign celloutsig_1_15z = ~((celloutsig_1_14z | celloutsig_1_7z[2]) & (celloutsig_1_10z | _01_));
  assign celloutsig_0_10z = ~((celloutsig_0_1z | celloutsig_0_1z) & (celloutsig_0_0z | in_data[51]));
  assign celloutsig_0_16z = ~((celloutsig_0_11z | celloutsig_0_3z) & (celloutsig_0_2z[1] | celloutsig_0_7z));
  assign celloutsig_0_39z = celloutsig_0_28z | ~(celloutsig_0_28z);
  assign celloutsig_1_19z = _02_ | ~(celloutsig_1_3z);
  assign celloutsig_0_40z = celloutsig_0_31z ^ celloutsig_0_17z;
  reg [3:0] _28_;
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _28_ <= 4'h0;
    else _28_ <= { celloutsig_0_35z, celloutsig_0_45z, celloutsig_0_3z, celloutsig_0_39z };
  assign { _04_[3], _00_, _04_[1:0] } = _28_;
  always_ff @(negedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _05_ <= 16'h0000;
    else _05_ <= { celloutsig_0_29z[8:1], celloutsig_0_29z[4], celloutsig_0_37z, celloutsig_0_12z, celloutsig_0_40z, celloutsig_0_25z, celloutsig_0_61z, celloutsig_0_18z, celloutsig_0_12z };
  reg [25:0] _30_;
  always_ff @(posedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _30_ <= 26'h0000000;
    else _30_ <= in_data[134:109];
  assign { _06_[25:18], _02_, _06_[16:0] } = _30_;
  reg [2:0] _31_;
  always_ff @(negedge clkin_data[0], negedge clkin_data[96])
    if (!clkin_data[96]) _31_ <= 3'h0;
    else _31_ <= celloutsig_1_1z[6:4];
  assign { _01_, _07_[1:0] } = _31_;
  always_ff @(negedge clkin_data[0], posedge clkin_data[128])
    if (clkin_data[128]) _08_ <= 5'h00;
    else _08_ <= { _06_[18], _02_, _06_[16:14] };
  always_ff @(posedge celloutsig_1_19z, posedge clkin_data[32])
    if (clkin_data[32]) _09_ <= 4'h0;
    else _09_ <= { celloutsig_0_14z, celloutsig_0_0z, celloutsig_0_14z, celloutsig_0_4z };
  always_ff @(negedge celloutsig_1_19z, negedge clkin_data[32])
    if (!clkin_data[32]) _10_ <= 10'h000;
    else _10_ <= { celloutsig_0_17z, celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_18z, celloutsig_0_17z, celloutsig_0_22z, celloutsig_0_19z, celloutsig_0_7z, celloutsig_0_18z, celloutsig_0_18z };
  always_ff @(negedge celloutsig_1_19z, posedge clkin_data[64])
    if (clkin_data[64]) _03_ <= 4'h0;
    else _03_ <= { celloutsig_0_24z[6:4], celloutsig_0_27z };
  assign celloutsig_0_34z = { in_data[68:67], celloutsig_0_11z, celloutsig_0_26z, celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_3z } & { in_data[23], celloutsig_0_11z, celloutsig_0_2z };
  assign celloutsig_0_2z = { in_data[1:0], celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_1z } & in_data[35:31];
  assign celloutsig_0_52z = { celloutsig_0_51z[6:3], celloutsig_0_51z[4], celloutsig_0_51z[1], celloutsig_0_51z[10], celloutsig_0_40z, celloutsig_0_18z, celloutsig_0_36z } / { 1'h1, _10_[7:0], celloutsig_0_25z };
  assign celloutsig_0_62z = { celloutsig_0_52z[8], celloutsig_0_21z, celloutsig_0_7z, celloutsig_0_45z, celloutsig_0_37z, celloutsig_0_26z, celloutsig_0_16z, celloutsig_0_37z, celloutsig_0_30z[3:1], celloutsig_0_30z[2], celloutsig_0_59z, celloutsig_0_22z } / { 1'h1, celloutsig_0_24z[6:1], celloutsig_0_32z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_31z, celloutsig_0_26z, celloutsig_0_10z, celloutsig_0_59z };
  assign celloutsig_0_73z = celloutsig_0_62z[7:4] / { 1'h1, celloutsig_0_15z[13], celloutsig_0_36z, celloutsig_0_6z };
  assign celloutsig_0_15z = { in_data[51:44], celloutsig_0_12z, celloutsig_0_2z, celloutsig_0_7z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_6z, celloutsig_0_12z, celloutsig_0_1z } / { 1'h1, celloutsig_0_14z, celloutsig_0_6z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_10z, celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_7z, celloutsig_0_14z, celloutsig_0_3z, celloutsig_0_12z, celloutsig_0_6z, celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_7z };
  assign celloutsig_0_36z = { celloutsig_0_24z[2:1], celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_18z, celloutsig_0_16z, celloutsig_0_13z, celloutsig_0_8z, celloutsig_0_3z } === { celloutsig_0_30z[3:1], celloutsig_0_30z[2], celloutsig_0_17z, celloutsig_0_35z, celloutsig_0_16z, celloutsig_0_3z, celloutsig_0_19z };
  assign celloutsig_0_6z = { celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_5z } === in_data[70:68];
  assign celloutsig_1_18z = { _08_[4:1], celloutsig_1_16z, celloutsig_1_15z } === celloutsig_1_11z[17:12];
  assign celloutsig_0_14z = { in_data[69:65], celloutsig_0_4z, celloutsig_0_6z } === { celloutsig_0_2z[4:1], celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_11z };
  assign celloutsig_0_25z = { celloutsig_0_15z[7:5], celloutsig_0_12z } === _10_[4:1];
  assign celloutsig_0_26z = { celloutsig_0_2z[4:1], celloutsig_0_12z, celloutsig_0_9z, celloutsig_0_25z, celloutsig_0_11z } === _10_;
  assign celloutsig_0_28z = celloutsig_0_24z[7:2] === { _09_[3:1], celloutsig_0_17z, celloutsig_0_1z, celloutsig_0_0z };
  assign celloutsig_0_35z = { celloutsig_0_34z[0], celloutsig_0_5z, celloutsig_0_22z, celloutsig_0_29z[8:1], celloutsig_0_29z[4], celloutsig_0_26z, celloutsig_0_9z } <= in_data[90:75];
  assign celloutsig_0_59z = { celloutsig_0_52z[7:2], celloutsig_0_40z, celloutsig_0_1z, celloutsig_0_28z, celloutsig_0_17z, celloutsig_0_4z } <= { celloutsig_0_15z[12:5], celloutsig_0_4z, celloutsig_0_10z, celloutsig_0_19z };
  assign celloutsig_0_7z = { celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_6z } <= { celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z };
  assign celloutsig_1_2z = celloutsig_1_1z[7:3] <= in_data[121:117];
  assign celloutsig_1_14z = { _06_[13:12], celloutsig_1_13z } <= celloutsig_1_11z[7:5];
  assign celloutsig_0_31z = { celloutsig_0_29z[7:3], celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_26z, celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_2z } <= { celloutsig_0_9z[1], celloutsig_0_4z, celloutsig_0_29z[8:1], celloutsig_0_29z[4], celloutsig_0_28z, celloutsig_0_26z, celloutsig_0_1z, celloutsig_0_25z };
  assign celloutsig_0_32z = { celloutsig_0_3z, celloutsig_0_19z, celloutsig_0_19z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_13z, celloutsig_0_27z, celloutsig_0_14z, celloutsig_0_5z, celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_18z, celloutsig_0_3z, celloutsig_0_21z, celloutsig_0_22z, celloutsig_0_17z, celloutsig_0_28z, celloutsig_0_17z, celloutsig_0_19z } <= { celloutsig_0_15z[19:2], celloutsig_0_4z };
  assign celloutsig_0_5z = { in_data[54:49], celloutsig_0_2z, celloutsig_0_4z } && in_data[41:30];
  assign celloutsig_1_10z = _06_[11:4] && { _06_[22:20], _08_ };
  assign celloutsig_0_19z = celloutsig_0_9z && { celloutsig_0_13z, celloutsig_0_18z, celloutsig_0_10z };
  assign celloutsig_0_72z = ~ _05_[14:7];
  assign celloutsig_1_1z = ~ { _06_[19:18], _02_, _06_[16:12] };
  assign celloutsig_0_0z = | in_data[50:38];
  assign celloutsig_0_4z = | { celloutsig_0_2z[4:1], celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_3z, celloutsig_0_2z, celloutsig_0_0z };
  assign celloutsig_0_49z = | { celloutsig_0_1z, celloutsig_0_44z, celloutsig_0_37z, celloutsig_0_40z };
  assign celloutsig_0_1z = | { in_data[69:64], celloutsig_0_0z };
  assign celloutsig_0_17z = | { celloutsig_0_7z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_9z, celloutsig_0_4z, celloutsig_0_11z, celloutsig_0_12z, celloutsig_0_1z };
  assign celloutsig_0_18z = | { celloutsig_0_15z[20:12], celloutsig_0_7z };
  assign celloutsig_0_22z = | { celloutsig_0_15z[12:11], celloutsig_0_7z, celloutsig_0_5z };
  assign celloutsig_0_3z = | { celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_0z };
  assign celloutsig_0_37z = | { celloutsig_0_22z, _09_, celloutsig_0_19z, celloutsig_0_14z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_7z, celloutsig_0_2z, in_data[38:27] };
  assign celloutsig_1_16z = | { celloutsig_1_10z, in_data[105:100] };
  assign celloutsig_0_21z = | { _09_, celloutsig_0_14z, celloutsig_0_7z, celloutsig_0_2z, in_data[38:27] };
  assign celloutsig_0_9z = { in_data[28], celloutsig_0_5z, celloutsig_0_0z } >> { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_3z };
  assign celloutsig_1_7z = { celloutsig_1_1z[1:0], celloutsig_1_2z } >> _06_[7:5];
  assign celloutsig_0_24z = _10_[7:0] >> { _10_[8:6], celloutsig_0_7z, celloutsig_0_4z, celloutsig_0_13z, celloutsig_0_7z, celloutsig_0_18z };
  assign celloutsig_1_11z = { _06_[18], _02_, _06_[16:1], celloutsig_1_10z } ^ { in_data[146:140], celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_1z };
  assign celloutsig_1_13z = ~((celloutsig_1_1z[3] & celloutsig_1_6z) | (celloutsig_1_1z[2] & _08_[2]));
  assign { celloutsig_0_29z[2], celloutsig_0_29z[7], celloutsig_0_29z[5], celloutsig_0_29z[6], celloutsig_0_29z[3], celloutsig_0_29z[4], celloutsig_0_29z[1], celloutsig_0_29z[8] } = ~ { celloutsig_0_27z, celloutsig_0_26z, celloutsig_0_25z, celloutsig_0_19z, celloutsig_0_18z, celloutsig_0_10z, celloutsig_0_5z, celloutsig_0_3z };
  assign { celloutsig_0_30z[2], celloutsig_0_30z[3], celloutsig_0_30z[1] } = ~ { celloutsig_0_17z, celloutsig_0_10z, celloutsig_0_5z };
  assign { celloutsig_0_51z[11], celloutsig_0_51z[5], celloutsig_0_51z[9:6], celloutsig_0_51z[1], celloutsig_0_51z[10], celloutsig_0_51z[15:12], celloutsig_0_51z[4:3] } = ~ { celloutsig_0_48z, celloutsig_0_39z, _03_, celloutsig_0_31z, celloutsig_0_27z, celloutsig_0_24z[7:4], celloutsig_0_11z, celloutsig_0_6z };
  assign _04_[2] = _00_;
  assign _06_[17] = _02_;
  assign _07_[2] = _01_;
  assign celloutsig_0_29z[0] = celloutsig_0_29z[4];
  assign celloutsig_0_30z[0] = celloutsig_0_30z[2];
  assign { celloutsig_0_51z[2], celloutsig_0_51z[0] } = { celloutsig_0_51z[4], celloutsig_0_51z[10] };
  assign { out_data[128], out_data[96], out_data[39:32], out_data[3:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_72z, celloutsig_0_73z };
endmodule
