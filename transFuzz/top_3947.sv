/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [3:0] celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_20z;
  wire celloutsig_0_21z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire celloutsig_0_2z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  reg [4:0] celloutsig_0_3z;
  wire celloutsig_0_41z;
  wire celloutsig_0_44z;
  wire celloutsig_0_4z;
  wire celloutsig_0_57z;
  wire celloutsig_0_59z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_72z;
  wire celloutsig_0_73z;
  wire celloutsig_0_7z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_14z;
  wire celloutsig_1_15z;
  wire celloutsig_1_16z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_1z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
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
  assign celloutsig_0_35z = ~(celloutsig_0_24z ^ celloutsig_0_18z);
  assign celloutsig_0_36z = ~(celloutsig_0_25z ^ celloutsig_0_11z);
  assign celloutsig_0_57z = ~(celloutsig_0_44z ^ celloutsig_0_2z);
  assign celloutsig_0_5z = ~(celloutsig_0_4z ^ celloutsig_0_2z);
  assign celloutsig_0_59z = ~(celloutsig_0_23z ^ celloutsig_0_20z);
  assign celloutsig_0_72z = ~(celloutsig_0_21z ^ celloutsig_0_28z);
  assign celloutsig_1_2z = ~(celloutsig_1_0z ^ in_data[156]);
  assign celloutsig_0_7z = ~(celloutsig_0_3z[4] ^ celloutsig_0_5z);
  assign celloutsig_1_6z = ~(celloutsig_1_4z ^ celloutsig_1_2z);
  assign celloutsig_1_7z = ~(celloutsig_1_1z ^ celloutsig_1_0z);
  assign celloutsig_0_8z = ~(in_data[36] ^ celloutsig_0_6z);
  assign celloutsig_1_14z = ~(celloutsig_1_11z ^ celloutsig_1_0z);
  assign celloutsig_1_18z = ~(celloutsig_1_14z ^ celloutsig_1_0z);
  assign celloutsig_0_10z = ~(celloutsig_0_2z ^ celloutsig_0_1z);
  assign celloutsig_0_11z = ~(celloutsig_0_1z ^ celloutsig_0_8z);
  assign celloutsig_0_1z = ~(in_data[58] ^ in_data[4]);
  assign celloutsig_0_14z = ~(celloutsig_0_0z[2] ^ celloutsig_0_2z);
  assign celloutsig_0_17z = ~(celloutsig_0_16z ^ celloutsig_0_2z);
  assign celloutsig_0_18z = ~(celloutsig_0_1z ^ celloutsig_0_11z);
  assign celloutsig_0_20z = ~(celloutsig_0_18z ^ celloutsig_0_17z);
  assign celloutsig_0_21z = ~(celloutsig_0_4z ^ celloutsig_0_3z[4]);
  assign celloutsig_0_23z = ~(in_data[73] ^ celloutsig_0_9z);
  assign celloutsig_0_24z = ~(celloutsig_0_6z ^ celloutsig_0_20z);
  assign celloutsig_0_25z = ~(celloutsig_0_5z ^ celloutsig_0_11z);
  assign celloutsig_0_26z = ~(celloutsig_0_19z ^ in_data[9]);
  assign celloutsig_0_28z = ~(celloutsig_0_7z ^ celloutsig_0_26z);
  assign celloutsig_0_41z = ~((celloutsig_0_14z & celloutsig_0_15z) | celloutsig_0_10z);
  assign celloutsig_0_44z = ~((celloutsig_0_36z & celloutsig_0_35z) | celloutsig_0_41z);
  assign celloutsig_0_4z = ~((celloutsig_0_2z & celloutsig_0_3z[4]) | celloutsig_0_2z);
  assign celloutsig_0_6z = ~((celloutsig_0_1z & celloutsig_0_2z) | celloutsig_0_2z);
  assign celloutsig_0_73z = ~((celloutsig_0_57z & celloutsig_0_26z) | celloutsig_0_59z);
  assign celloutsig_1_0z = ~((in_data[124] & in_data[190]) | in_data[108]);
  assign celloutsig_1_1z = ~((celloutsig_1_0z & in_data[107]) | in_data[186]);
  assign celloutsig_1_3z = ~((celloutsig_1_1z & celloutsig_1_1z) | in_data[124]);
  assign celloutsig_1_4z = ~((in_data[150] & celloutsig_1_0z) | celloutsig_1_2z);
  assign celloutsig_1_5z = ~((celloutsig_1_3z & celloutsig_1_0z) | celloutsig_1_4z);
  assign celloutsig_1_8z = ~((celloutsig_1_6z & celloutsig_1_7z) | celloutsig_1_1z);
  assign celloutsig_1_9z = ~((celloutsig_1_5z & celloutsig_1_7z) | celloutsig_1_1z);
  assign celloutsig_1_11z = ~((celloutsig_1_6z & celloutsig_1_9z) | celloutsig_1_9z);
  assign celloutsig_1_12z = ~((celloutsig_1_7z & celloutsig_1_3z) | celloutsig_1_2z);
  assign celloutsig_1_15z = ~((celloutsig_1_3z & celloutsig_1_5z) | celloutsig_1_8z);
  assign celloutsig_1_16z = ~((celloutsig_1_12z & celloutsig_1_1z) | celloutsig_1_15z);
  assign celloutsig_1_19z = ~((celloutsig_1_3z & celloutsig_1_16z) | celloutsig_1_16z);
  assign celloutsig_0_9z = ~((celloutsig_0_2z & in_data[7]) | celloutsig_0_2z);
  assign celloutsig_0_15z = ~((celloutsig_0_14z & celloutsig_0_0z[1]) | celloutsig_0_8z);
  assign celloutsig_0_16z = ~((celloutsig_0_4z & celloutsig_0_15z) | celloutsig_0_14z);
  assign celloutsig_0_19z = ~((celloutsig_0_7z & celloutsig_0_8z) | celloutsig_0_7z);
  assign celloutsig_0_2z = ~((celloutsig_0_1z & in_data[94]) | celloutsig_0_0z[2]);
  always_latch
    if (clkin_data[0]) celloutsig_0_0z = 4'h0;
    else if (!celloutsig_1_18z) celloutsig_0_0z = in_data[46:43];
  always_latch
    if (!clkin_data[32]) celloutsig_0_3z = 5'h00;
    else if (!celloutsig_1_18z) celloutsig_0_3z = { celloutsig_0_0z[2:0], celloutsig_0_1z, celloutsig_0_1z };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_72z, celloutsig_0_73z };
endmodule
