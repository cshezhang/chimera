/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [2:0] _00_;
  reg [9:0] _01_;
  reg [3:0] _02_;
  wire [13:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire [25:0] celloutsig_0_12z;
  wire [3:0] celloutsig_0_13z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire [15:0] celloutsig_0_24z;
  wire celloutsig_0_26z;
  wire [19:0] celloutsig_0_27z;
  wire [2:0] celloutsig_0_28z;
  wire [3:0] celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire [13:0] celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire [10:0] celloutsig_0_34z;
  wire [3:0] celloutsig_0_35z;
  wire celloutsig_0_38z;
  wire celloutsig_0_3z;
  wire [6:0] celloutsig_0_43z;
  wire celloutsig_0_46z;
  wire celloutsig_0_4z;
  wire celloutsig_0_51z;
  wire [3:0] celloutsig_0_52z;
  wire celloutsig_0_58z;
  wire [6:0] celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire [5:0] celloutsig_0_66z;
  wire celloutsig_0_6z;
  wire celloutsig_0_73z;
  wire celloutsig_0_8z;
  wire celloutsig_0_92z;
  wire celloutsig_0_96z;
  wire [12:0] celloutsig_0_9z;
  wire [11:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_17z;
  wire [2:0] celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire [19:0] celloutsig_1_1z;
  wire [12:0] celloutsig_1_2z;
  wire [9:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire [10:0] celloutsig_1_6z;
  wire [13:0] celloutsig_1_7z;
  wire [6:0] celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_10z = celloutsig_0_0z[13] | celloutsig_0_3z;
  assign celloutsig_0_92z = celloutsig_0_26z | celloutsig_0_1z;
  assign celloutsig_0_96z = celloutsig_0_66z[1] | in_data[93];
  assign celloutsig_1_19z = celloutsig_1_17z | celloutsig_1_6z[6];
  assign celloutsig_0_16z = in_data[50] | celloutsig_0_0z[11];
  assign celloutsig_0_19z = celloutsig_0_4z | celloutsig_0_10z;
  assign celloutsig_0_21z = celloutsig_0_19z | celloutsig_0_6z;
  assign celloutsig_0_26z = in_data[57] | celloutsig_0_9z[10];
  assign celloutsig_0_31z = celloutsig_0_1z | celloutsig_0_19z;
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z[0])
    if (celloutsig_1_18z[0]) _00_ <= 3'h0;
    else _00_ <= { celloutsig_0_12z[17:16], celloutsig_0_15z };
  always_ff @(negedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _01_ <= 10'h000;
    else _01_ <= in_data[20:11];
  always_ff @(negedge clkin_data[0], negedge clkin_data[32])
    if (!clkin_data[32]) _02_ <= 4'h0;
    else _02_ <= { celloutsig_0_24z[6], celloutsig_0_51z, celloutsig_0_18z, celloutsig_0_21z };
  assign celloutsig_0_4z = ! { celloutsig_0_0z[3:0], celloutsig_0_2z };
  assign celloutsig_0_38z = ! { celloutsig_0_0z[6:3], celloutsig_0_3z };
  assign celloutsig_0_5z = ! in_data[54:47];
  assign celloutsig_0_46z = ! { celloutsig_0_0z[7:3], celloutsig_0_35z, celloutsig_0_38z, celloutsig_0_6z };
  assign celloutsig_0_6z = ! celloutsig_0_0z[8:1];
  assign celloutsig_0_51z = ! { celloutsig_0_31z, celloutsig_0_46z, celloutsig_0_22z, celloutsig_0_22z };
  assign celloutsig_0_58z = ! celloutsig_0_27z[6:3];
  assign celloutsig_0_8z = ! { in_data[82:81], celloutsig_0_1z };
  assign celloutsig_0_73z = ! { celloutsig_0_59z[6:3], _02_, celloutsig_0_46z, celloutsig_0_66z, celloutsig_0_6z, celloutsig_0_22z, _00_, celloutsig_0_2z, celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_58z };
  assign celloutsig_1_4z = ! celloutsig_1_2z[11:3];
  assign celloutsig_1_5z = ! { celloutsig_1_2z[12:5], celloutsig_1_4z };
  assign celloutsig_1_9z = ! { celloutsig_1_0z[8:2], celloutsig_1_2z };
  assign celloutsig_1_10z = ! { in_data[161:150], celloutsig_1_4z, celloutsig_1_4z };
  assign celloutsig_1_11z = ! { celloutsig_1_8z[5:2], celloutsig_1_4z, celloutsig_1_9z, celloutsig_1_8z };
  assign celloutsig_1_17z = ! { in_data[168:165], celloutsig_1_11z };
  assign celloutsig_0_14z = ! { celloutsig_0_0z[4], celloutsig_0_3z, celloutsig_0_4z };
  assign celloutsig_0_15z = ! celloutsig_0_0z[10:1];
  assign celloutsig_0_1z = ! celloutsig_0_0z[7:0];
  assign celloutsig_0_18z = ! in_data[32:30];
  assign celloutsig_0_20z = ! { celloutsig_0_15z, celloutsig_0_1z, celloutsig_0_10z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_19z };
  assign celloutsig_0_22z = ! { in_data[59:56], celloutsig_0_18z, celloutsig_0_1z };
  assign celloutsig_0_2z = ! { in_data[75:69], celloutsig_0_1z };
  assign celloutsig_0_3z = ! { celloutsig_0_0z[6:2], celloutsig_0_1z, celloutsig_0_2z };
  assign celloutsig_0_32z = ! { celloutsig_0_0z[11:2], celloutsig_0_28z };
  assign celloutsig_0_0z = in_data[36:23] ~^ in_data[75:62];
  assign celloutsig_0_43z = { celloutsig_0_4z, celloutsig_0_5z, celloutsig_0_2z, _00_, celloutsig_0_10z } ~^ { celloutsig_0_35z[1], celloutsig_0_16z, _00_, celloutsig_0_5z, celloutsig_0_22z };
  assign celloutsig_0_59z = { in_data[50:45], celloutsig_0_4z } ~^ { celloutsig_0_30z[7:5], celloutsig_0_35z };
  assign celloutsig_0_66z = { celloutsig_0_43z[3:0], celloutsig_0_22z, celloutsig_0_8z } ~^ celloutsig_0_43z[5:0];
  assign celloutsig_1_0z = in_data[108:97] ~^ in_data[107:96];
  assign celloutsig_1_1z = in_data[184:165] ~^ { celloutsig_1_0z[7:0], celloutsig_1_0z };
  assign celloutsig_1_2z = in_data[114:102] ~^ in_data[191:179];
  assign celloutsig_1_3z = in_data[143:134] ~^ in_data[111:102];
  assign celloutsig_1_6z = celloutsig_1_1z[17:7] ~^ celloutsig_1_0z[10:0];
  assign celloutsig_1_7z = { celloutsig_1_1z[19:7], celloutsig_1_4z } ~^ { celloutsig_1_1z[15:14], celloutsig_1_5z, celloutsig_1_6z };
  assign celloutsig_1_8z = celloutsig_1_3z[7:1] ~^ { celloutsig_1_7z[13:11], celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_4z, celloutsig_1_5z };
  assign celloutsig_1_18z = celloutsig_1_6z[6:4] ~^ { celloutsig_1_6z[10], celloutsig_1_11z, celloutsig_1_10z };
  assign celloutsig_0_13z = { celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_4z, celloutsig_0_1z } ~^ { celloutsig_0_2z, celloutsig_0_3z, celloutsig_0_10z, celloutsig_0_6z };
  assign celloutsig_0_24z = { celloutsig_0_0z[13:1], celloutsig_0_20z, celloutsig_0_10z, celloutsig_0_21z } ~^ { celloutsig_0_0z[10:0], celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_18z, celloutsig_0_14z, celloutsig_0_8z };
  assign celloutsig_0_28z = { celloutsig_0_15z, celloutsig_0_26z, celloutsig_0_18z } ~^ celloutsig_0_27z[7:5];
  assign celloutsig_0_34z = { celloutsig_0_27z[15:11], celloutsig_0_28z, celloutsig_0_32z, celloutsig_0_32z, celloutsig_0_32z } ~^ celloutsig_0_24z[12:2];
  assign celloutsig_0_35z = celloutsig_0_29z ~^ { celloutsig_0_34z[9:7], celloutsig_0_16z };
  assign celloutsig_0_27z[5] = ~ celloutsig_0_24z[5];
  assign celloutsig_0_29z[3] = ~ in_data[95];
  assign celloutsig_0_52z[1] = ~ _01_[3];
  assign { celloutsig_0_9z[12], celloutsig_0_9z[7], celloutsig_0_9z[2], celloutsig_0_9z[8], celloutsig_0_9z[3], celloutsig_0_9z[0], celloutsig_0_9z[11:9], celloutsig_0_9z[6:4] } = { celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_3z, celloutsig_0_1z, celloutsig_0_1z } ~^ { celloutsig_0_0z[12], celloutsig_0_0z[7], celloutsig_0_0z[2], celloutsig_0_0z[8], celloutsig_0_0z[3], celloutsig_0_4z, celloutsig_0_0z[11:9], celloutsig_0_0z[6:4] };
  assign { out_data[33], out_data[38], out_data[39], out_data[37:35], out_data[40], out_data[34] } = { celloutsig_0_92z, celloutsig_0_73z, celloutsig_0_35z[3], _00_, celloutsig_0_9z[7], celloutsig_0_6z } ~^ { celloutsig_0_59z[0], celloutsig_0_59z[5], celloutsig_0_59z[6], celloutsig_0_59z[4:2], celloutsig_0_52z[1], celloutsig_0_59z[1] };
  assign { celloutsig_0_12z[1:0], celloutsig_0_12z[2], celloutsig_0_12z[25:10], celloutsig_0_12z[8:3] } = { celloutsig_0_8z, celloutsig_0_5z, celloutsig_0_1z, in_data[57:49], celloutsig_0_0z[13:7], celloutsig_0_0z[5:0] } ~^ { celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_4z, in_data[78], celloutsig_0_5z, celloutsig_0_5z, celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_9z[12:2], celloutsig_0_9z[0], celloutsig_0_1z, celloutsig_0_6z, celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_8z };
  assign { celloutsig_0_27z[15:6], celloutsig_0_27z[4:0], celloutsig_0_27z[18:16], celloutsig_0_27z[19] } = { celloutsig_0_24z[15:6], celloutsig_0_24z[4:0], celloutsig_0_22z, celloutsig_0_22z, celloutsig_0_8z, celloutsig_0_6z } ~^ { in_data[19:15], celloutsig_0_8z, celloutsig_0_15z, celloutsig_0_26z, celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_13z, in_data[22:20], in_data[23] };
  assign { celloutsig_0_29z[0], celloutsig_0_29z[1], celloutsig_0_29z[2] } = { celloutsig_0_21z, celloutsig_0_8z, celloutsig_0_3z } ~^ { in_data[92], in_data[93], in_data[94] };
  assign { celloutsig_0_30z[13:3], celloutsig_0_30z[1:0] } = { celloutsig_0_12z[25:15], celloutsig_0_12z[13:12] } ~^ { celloutsig_0_9z[12:2], celloutsig_0_9z[0], celloutsig_0_10z };
  assign celloutsig_0_12z[9] = celloutsig_0_0z[6];
  assign celloutsig_0_30z[2] = celloutsig_0_12z[14];
  assign celloutsig_0_9z[1] = 1'h1;
  assign { out_data[130:128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, 1'h1, celloutsig_0_96z };
endmodule
