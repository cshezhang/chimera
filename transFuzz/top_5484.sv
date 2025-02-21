/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [19:0] _00_;
  reg [6:0] _01_;
  wire [4:0] celloutsig_0_0z;
  wire [3:0] celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire [12:0] celloutsig_0_14z;
  wire [4:0] celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire [7:0] celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire [6:0] celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire [21:0] celloutsig_0_21z;
  wire [5:0] celloutsig_0_24z;
  wire [4:0] celloutsig_0_26z;
  wire [6:0] celloutsig_0_27z;
  wire [5:0] celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_34z;
  wire celloutsig_0_36z;
  wire celloutsig_0_38z;
  wire [2:0] celloutsig_0_3z;
  wire [5:0] celloutsig_0_4z;
  wire celloutsig_0_6z;
  wire [4:0] celloutsig_0_74z;
  wire [5:0] celloutsig_0_82z;
  wire [2:0] celloutsig_0_83z;
  wire [3:0] celloutsig_0_8z;
  wire [17:0] celloutsig_0_9z;
  wire [7:0] celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_12z;
  wire [6:0] celloutsig_1_13z;
  wire [2:0] celloutsig_1_14z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire [2:0] celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire [3:0] celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire [9:0] celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [63:0] clkin_data;
  wire [63:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_1_16z = ~(celloutsig_1_14z[1] | celloutsig_1_2z);
  assign celloutsig_1_19z = celloutsig_1_4z | ~(celloutsig_1_18z);
  assign celloutsig_1_8z = celloutsig_1_4z | celloutsig_1_6z;
  assign celloutsig_1_4z = celloutsig_1_0z[7] ^ in_data[145];
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _00_ <= 20'h00000;
    else _00_ <= { celloutsig_0_1z[6:1], celloutsig_0_1z, celloutsig_0_1z };
  always_ff @(negedge clkin_data[0], posedge celloutsig_1_18z)
    if (celloutsig_1_18z) _01_ <= 7'h00;
    else _01_ <= celloutsig_0_1z;
  assign celloutsig_0_74z = celloutsig_0_9z[6:2] / { 1'h1, celloutsig_0_18z[6:3] };
  assign celloutsig_0_15z = celloutsig_0_1z[4:0] / { 1'h1, celloutsig_0_6z, celloutsig_0_3z };
  assign celloutsig_1_9z = celloutsig_1_7z[3:1] < celloutsig_1_3z;
  assign celloutsig_1_10z = { celloutsig_1_3z, celloutsig_1_9z, celloutsig_1_6z } < { in_data[163:160], celloutsig_1_8z };
  assign celloutsig_0_11z = { celloutsig_0_4z[5:4], celloutsig_0_9z } < in_data[31:12];
  assign celloutsig_0_12z = celloutsig_0_4z[5:2] < { celloutsig_0_9z[11:9], celloutsig_0_11z };
  assign celloutsig_0_19z = celloutsig_0_8z[3:1] < celloutsig_0_14z[8:6];
  assign celloutsig_0_20z = celloutsig_0_1z[6:2] < { celloutsig_0_12z, celloutsig_0_16z, celloutsig_0_3z };
  assign celloutsig_0_83z = { celloutsig_0_74z[2], celloutsig_0_30z, celloutsig_0_36z } * { celloutsig_0_82z[4:3], celloutsig_0_38z };
  assign celloutsig_1_5z = { celloutsig_1_0z[4:3], celloutsig_1_2z, celloutsig_1_4z } * in_data[191:188];
  assign celloutsig_1_7z = in_data[155:146] * { celloutsig_1_0z[7:2], celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_2z };
  assign celloutsig_1_13z = { celloutsig_1_12z, celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_6z, celloutsig_1_3z } * celloutsig_1_0z[6:0];
  assign celloutsig_0_18z = _00_[11:4] * { celloutsig_0_0z[4:3], celloutsig_0_15z, celloutsig_0_12z };
  assign celloutsig_0_21z = { _00_[15:14], celloutsig_0_9z, celloutsig_0_6z, celloutsig_0_6z } * { celloutsig_0_14z[8:4], celloutsig_0_10z, celloutsig_0_8z, celloutsig_0_18z, celloutsig_0_11z };
  assign celloutsig_0_14z = _01_[4] ? { in_data[72:67], celloutsig_0_6z, celloutsig_0_2z } : { celloutsig_0_0z[4:1], celloutsig_0_8z, celloutsig_0_0z };
  assign celloutsig_0_38z = { celloutsig_0_2z[5:3], celloutsig_0_11z, celloutsig_0_19z } !== { celloutsig_0_1z[4:3], celloutsig_0_34z, celloutsig_0_20z, celloutsig_0_16z };
  assign celloutsig_1_2z = { in_data[175:164], celloutsig_1_1z, celloutsig_1_1z, celloutsig_1_1z } !== in_data[177:163];
  assign celloutsig_1_0z = in_data[178:171] | in_data[163:156];
  assign celloutsig_0_24z = celloutsig_0_18z[6:1] | { in_data[23:19], celloutsig_0_20z };
  assign celloutsig_0_34z = ~^ { celloutsig_0_14z[5:0], celloutsig_0_12z };
  assign celloutsig_1_6z = ~^ { in_data[151], celloutsig_1_1z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_4z };
  assign celloutsig_1_12z = ~^ { in_data[177], celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_8z, celloutsig_1_10z, celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_8z, celloutsig_1_10z };
  assign celloutsig_1_18z = ~^ { celloutsig_1_13z[0], celloutsig_1_2z, celloutsig_1_16z };
  assign celloutsig_0_30z = ~^ celloutsig_0_4z[3:0];
  assign celloutsig_0_0z = in_data[89:85] >> in_data[82:78];
  assign celloutsig_0_4z = celloutsig_0_1z[5:0] >> { in_data[38], celloutsig_0_0z };
  assign celloutsig_1_14z = { celloutsig_1_7z[7:6], celloutsig_1_6z } >> { celloutsig_1_3z[0], celloutsig_1_12z, celloutsig_1_10z };
  assign celloutsig_0_10z = in_data[29:26] >> celloutsig_0_2z[3:0];
  assign celloutsig_0_26z = celloutsig_0_21z[11:7] >> in_data[33:29];
  assign celloutsig_0_3z = celloutsig_0_0z[3:1] << in_data[90:88];
  assign celloutsig_0_82z = { celloutsig_0_36z, celloutsig_0_15z } << { celloutsig_0_8z[1], celloutsig_0_74z };
  assign celloutsig_0_1z = in_data[50:44] << in_data[91:85];
  assign celloutsig_1_3z = celloutsig_1_0z[6:4] >> celloutsig_1_0z[7:5];
  assign celloutsig_0_9z = _00_[19:2] >> { celloutsig_0_1z, celloutsig_0_8z, celloutsig_0_6z, celloutsig_0_2z };
  assign celloutsig_0_2z = { celloutsig_0_0z[0], celloutsig_0_0z } >> { in_data[55], celloutsig_0_0z };
  assign celloutsig_0_8z = in_data[33:30] >>> { celloutsig_0_2z[4], celloutsig_0_3z };
  assign celloutsig_0_27z = celloutsig_0_18z[6:0] >>> { celloutsig_0_18z[4:3], celloutsig_0_26z };
  assign celloutsig_0_36z = ~((celloutsig_0_24z[2] & celloutsig_0_14z[3]) | celloutsig_0_27z[2]);
  assign celloutsig_0_6z = ~((celloutsig_0_4z[5] & celloutsig_0_0z[2]) | in_data[65]);
  assign celloutsig_1_1z = ~((in_data[120] & in_data[113]) | celloutsig_1_0z[1]);
  assign celloutsig_0_16z = ~((celloutsig_0_12z & celloutsig_0_10z[3]) | celloutsig_0_3z[0]);
  assign { out_data[128], out_data[96], out_data[37:32], out_data[2:0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_82z, celloutsig_0_83z };
endmodule
