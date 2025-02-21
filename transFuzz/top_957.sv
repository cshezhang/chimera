/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire [16:0] _08_;
  wire [4:0] _09_;
  wire celloutsig_0_13z;
  wire celloutsig_0_15z;
  wire celloutsig_0_1z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_3z;
  wire celloutsig_0_4z;
  wire celloutsig_0_7z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_13z;
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
  input [31:0] clkin_data;
  wire [31:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  assign celloutsig_0_25z = !(celloutsig_0_1z ? celloutsig_0_15z : celloutsig_0_7z);
  assign celloutsig_1_0z = !(in_data[153] ? in_data[143] : in_data[96]);
  assign celloutsig_1_5z = !(celloutsig_1_0z ? celloutsig_1_4z : celloutsig_1_0z);
  assign celloutsig_1_7z = !(celloutsig_1_3z ? celloutsig_1_3z : celloutsig_1_1z);
  assign celloutsig_1_8z = !(in_data[102] ? celloutsig_1_3z : celloutsig_1_7z);
  assign celloutsig_1_11z = !(celloutsig_1_2z ? celloutsig_1_0z : celloutsig_1_10z);
  assign celloutsig_1_18z = !(celloutsig_1_8z ? celloutsig_1_13z : celloutsig_1_0z);
  assign celloutsig_1_19z = !(celloutsig_1_10z ? celloutsig_1_5z : celloutsig_1_9z);
  assign celloutsig_0_7z = !(celloutsig_0_1z ? in_data[41] : _00_);
  assign celloutsig_0_13z = !(celloutsig_0_1z ? _03_ : _02_);
  assign celloutsig_1_1z = ~((celloutsig_1_0z | in_data[116]) & (in_data[140] | in_data[161]));
  assign celloutsig_1_3z = ~((celloutsig_1_0z | celloutsig_1_0z) & (celloutsig_1_1z | celloutsig_1_0z));
  assign celloutsig_1_4z = ~((celloutsig_1_1z | celloutsig_1_2z) & (celloutsig_1_0z | in_data[101]));
  assign celloutsig_1_10z = ~((in_data[147] | in_data[125]) & (celloutsig_1_6z | celloutsig_1_4z));
  assign celloutsig_1_13z = ~((celloutsig_1_11z | celloutsig_1_8z) & (celloutsig_1_4z | celloutsig_1_5z));
  assign celloutsig_0_1z = ~((_06_ | in_data[39]) & (_07_ | in_data[94]));
  reg [4:0] _26_;
  always_ff @(negedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _26_ <= 5'h00;
    else _26_ <= in_data[66:62];
  assign { _05_, _03_, _06_, _07_, _09_[0] } = _26_;
  reg [16:0] _27_;
  always_ff @(posedge clkin_data[0], negedge celloutsig_1_18z)
    if (!celloutsig_1_18z) _27_ <= 17'h00000;
    else _27_ <= in_data[40:24];
  assign { _08_[16:12], _00_, _08_[10], _02_, _08_[8], _04_, _08_[6:3], _01_, _08_[1:0] } = _27_;
  assign celloutsig_0_24z = ~((_06_ & celloutsig_0_9z) | celloutsig_0_1z);
  assign celloutsig_1_2z = ~((celloutsig_1_0z & in_data[103]) | celloutsig_1_1z);
  assign celloutsig_1_6z = ~((celloutsig_1_4z & in_data[183]) | celloutsig_1_2z);
  assign celloutsig_1_9z = ~((celloutsig_1_2z & celloutsig_1_0z) | celloutsig_1_4z);
  assign celloutsig_0_3z = ~((in_data[95] & _08_[3]) | in_data[27]);
  assign celloutsig_0_4z = ~((celloutsig_0_3z & _02_) | _08_[3]);
  assign celloutsig_0_9z = ~((celloutsig_0_1z & celloutsig_0_4z) | celloutsig_0_4z);
  assign celloutsig_0_15z = ~((in_data[27] & celloutsig_0_1z) | celloutsig_0_13z);
  assign { _08_[11], _08_[9], _08_[7], _08_[2] } = { _00_, _02_, _04_, _01_ };
  assign _09_[4:1] = { _05_, _03_, _06_, _07_ };
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_24z, celloutsig_0_25z };
endmodule
