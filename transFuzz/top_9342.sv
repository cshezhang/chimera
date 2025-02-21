/* Generated by Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module top(clkin_data, in_data, out_data);
  reg [5:0] _00_;
  reg [3:0] _01_;
  reg [6:0] _02_;
  reg [3:0] _03_;
  reg [6:0] _04_;
  wire celloutsig_0_0z;
  wire celloutsig_0_10z;
  wire celloutsig_0_11z;
  wire celloutsig_0_12z;
  wire celloutsig_0_14z;
  wire celloutsig_0_15z;
  wire celloutsig_0_16z;
  wire celloutsig_0_17z;
  wire celloutsig_0_18z;
  wire celloutsig_0_19z;
  wire celloutsig_0_1z;
  wire celloutsig_0_21z;
  wire celloutsig_0_22z;
  wire celloutsig_0_23z;
  wire celloutsig_0_24z;
  wire celloutsig_0_25z;
  wire celloutsig_0_26z;
  wire celloutsig_0_28z;
  wire celloutsig_0_29z;
  wire celloutsig_0_2z;
  wire celloutsig_0_30z;
  wire celloutsig_0_31z;
  wire celloutsig_0_32z;
  wire celloutsig_0_33z;
  wire celloutsig_0_34z;
  wire celloutsig_0_35z;
  wire celloutsig_0_36z;
  wire celloutsig_0_37z;
  wire celloutsig_0_39z;
  wire celloutsig_0_3z;
  wire celloutsig_0_40z;
  wire celloutsig_0_4z;
  wire celloutsig_0_5z;
  wire celloutsig_0_6z;
  wire celloutsig_0_8z;
  wire celloutsig_0_9z;
  wire celloutsig_1_0z;
  wire celloutsig_1_10z;
  wire celloutsig_1_11z;
  wire celloutsig_1_12z;
  wire celloutsig_1_13z;
  wire celloutsig_1_15z;
  wire celloutsig_1_17z;
  wire celloutsig_1_18z;
  wire celloutsig_1_19z;
  wire celloutsig_1_2z;
  wire celloutsig_1_3z;
  wire celloutsig_1_4z;
  wire celloutsig_1_5z;
  wire celloutsig_1_6z;
  wire celloutsig_1_7z;
  wire celloutsig_1_8z;
  wire celloutsig_1_9z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [191:0] in_data;
  wire [191:0] in_data;
  output [191:0] out_data;
  wire [191:0] out_data;
  always_ff @(posedge clkin_data[32], negedge clkin_data[64])
    if (!clkin_data[64]) _00_ <= 6'h00;
    else _00_ <= { celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_8z, celloutsig_1_2z };
  always_ff @(negedge clkin_data[32], negedge clkin_data[96])
    if (!clkin_data[96]) _01_ <= 4'h0;
    else _01_ <= { celloutsig_1_4z, celloutsig_1_10z, celloutsig_1_3z, celloutsig_1_3z };
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _02_ <= 7'h00;
    else _02_ <= { celloutsig_0_6z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_6z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_5z };
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _03_ <= 4'h0;
    else _03_ <= in_data[67:64];
  always_ff @(posedge clkin_data[0], posedge celloutsig_1_19z)
    if (celloutsig_1_19z) _04_ <= 7'h00;
    else _04_ <= { in_data[32:30], celloutsig_0_18z, celloutsig_0_18z, celloutsig_0_22z, celloutsig_0_11z };
  assign celloutsig_0_0z = in_data[72:65] < in_data[17:10];
  assign celloutsig_0_37z = { _04_[5:0], celloutsig_0_3z, celloutsig_0_34z, celloutsig_0_35z, celloutsig_0_3z, celloutsig_0_28z, celloutsig_0_8z, celloutsig_0_25z, celloutsig_0_26z, celloutsig_0_23z, celloutsig_0_26z } < { celloutsig_0_8z, celloutsig_0_21z, celloutsig_0_14z, celloutsig_0_2z, celloutsig_0_33z, celloutsig_0_18z, celloutsig_0_1z, celloutsig_0_33z, celloutsig_0_22z, celloutsig_0_9z, celloutsig_0_24z, _03_, celloutsig_0_9z };
  assign celloutsig_0_39z = { _02_[6:3], celloutsig_0_5z, celloutsig_0_25z, celloutsig_0_22z, celloutsig_0_36z, celloutsig_0_32z, celloutsig_0_2z, celloutsig_0_29z, celloutsig_0_17z, _04_, celloutsig_0_25z, celloutsig_0_3z, celloutsig_0_33z } < { in_data[83:69], celloutsig_0_37z, celloutsig_0_34z, celloutsig_0_29z, celloutsig_0_5z, celloutsig_0_36z, celloutsig_0_30z, celloutsig_0_36z };
  assign celloutsig_1_4z = { celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z } < { in_data[174], celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_5z = { celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_3z } < { celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_0z };
  assign celloutsig_1_8z = { celloutsig_1_6z, celloutsig_1_3z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_5z, celloutsig_1_4z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_6z, celloutsig_1_7z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_6z } < in_data[133:109];
  assign celloutsig_0_5z = { celloutsig_0_1z, celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_2z, celloutsig_0_0z, celloutsig_0_3z } < { celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_0z, celloutsig_0_1z, celloutsig_0_4z };
  assign celloutsig_1_12z = { celloutsig_1_2z, celloutsig_1_5z, celloutsig_1_5z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_8z, celloutsig_1_6z, celloutsig_1_2z, celloutsig_1_7z, celloutsig_1_3z, celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_6z } < { celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_4z, celloutsig_1_6z, celloutsig_1_10z, celloutsig_1_0z, celloutsig_1_10z, celloutsig_1_11z, celloutsig_1_3z, celloutsig_1_7z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_2z };
  assign celloutsig_1_19z = _00_[3:1] < { celloutsig_1_15z, celloutsig_1_17z, celloutsig_1_4z };
  assign celloutsig_0_11z = { celloutsig_0_0z, celloutsig_0_4z, celloutsig_0_9z, celloutsig_0_2z, celloutsig_0_10z, celloutsig_0_1z, celloutsig_0_4z } < { _02_[3:0], celloutsig_0_6z, celloutsig_0_1z, celloutsig_0_8z };
  assign celloutsig_0_12z = { celloutsig_0_0z, celloutsig_0_9z, celloutsig_0_5z, celloutsig_0_0z, celloutsig_0_0z, celloutsig_0_11z } < in_data[11:6];
  assign celloutsig_0_14z = { celloutsig_0_1z, celloutsig_0_12z, celloutsig_0_3z, celloutsig_0_5z, celloutsig_0_9z } < { _03_[3], celloutsig_0_2z, celloutsig_0_11z, celloutsig_0_1z, celloutsig_0_5z };
  assign celloutsig_0_2z = { in_data[34:27], celloutsig_0_0z } < in_data[56:48];
  assign celloutsig_0_32z = { celloutsig_0_19z, _03_, celloutsig_0_9z } < { celloutsig_0_11z, celloutsig_0_8z, celloutsig_0_12z, celloutsig_0_5z, celloutsig_0_22z, celloutsig_0_15z };
  assign celloutsig_0_35z = { _02_[3:1], celloutsig_0_21z, celloutsig_0_22z, celloutsig_0_32z, celloutsig_0_25z, celloutsig_0_26z, celloutsig_0_33z, celloutsig_0_22z } < { celloutsig_0_24z, celloutsig_0_5z, celloutsig_0_25z, celloutsig_0_17z, celloutsig_0_16z, celloutsig_0_19z, celloutsig_0_22z, celloutsig_0_24z, celloutsig_0_5z, celloutsig_0_19z };
  assign celloutsig_0_4z = celloutsig_0_1z & in_data[61];
  assign celloutsig_0_40z = celloutsig_0_11z & celloutsig_0_24z;
  assign celloutsig_1_0z = in_data[162] & in_data[139];
  assign celloutsig_1_6z = celloutsig_1_5z & celloutsig_1_3z;
  assign celloutsig_1_10z = celloutsig_1_2z & in_data[155];
  assign celloutsig_1_13z = celloutsig_1_0z & celloutsig_1_10z;
  assign celloutsig_1_15z = celloutsig_1_0z & celloutsig_1_3z;
  assign celloutsig_1_17z = celloutsig_1_7z & _01_[0];
  assign celloutsig_0_9z = celloutsig_0_8z & celloutsig_0_4z;
  assign celloutsig_0_10z = celloutsig_0_0z & celloutsig_0_6z;
  assign celloutsig_0_17z = celloutsig_0_16z & celloutsig_0_8z;
  assign celloutsig_0_18z = celloutsig_0_14z & celloutsig_0_5z;
  assign celloutsig_0_23z = celloutsig_0_9z & in_data[6];
  assign celloutsig_0_25z = celloutsig_0_17z & celloutsig_0_1z;
  assign celloutsig_0_26z = celloutsig_0_5z & celloutsig_0_6z;
  assign celloutsig_0_30z = celloutsig_0_1z & celloutsig_0_6z;
  assign celloutsig_0_36z = _04_[0] & celloutsig_0_19z;
  assign celloutsig_1_2z = ~^ { in_data[135:129], celloutsig_1_0z };
  assign celloutsig_1_3z = ~^ { in_data[138:135], celloutsig_1_2z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_7z = ~^ { in_data[168:163], celloutsig_1_5z };
  assign celloutsig_1_9z = ~^ { celloutsig_1_8z, celloutsig_1_3z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_0z, celloutsig_1_6z, celloutsig_1_6z, celloutsig_1_4z, celloutsig_1_0z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_4z, celloutsig_1_0z };
  assign celloutsig_1_11z = ~^ { celloutsig_1_9z, celloutsig_1_2z, celloutsig_1_2z, celloutsig_1_8z, celloutsig_1_0z, celloutsig_1_0z };
  assign celloutsig_1_18z = ~^ { celloutsig_1_6z, celloutsig_1_13z, celloutsig_1_12z, celloutsig_1_0z, celloutsig_1_5z, celloutsig_1_0z, celloutsig_1_3z, celloutsig_1_8z, celloutsig_1_7z };
  assign celloutsig_0_6z = ~^ { in_data[17:15], celloutsig_0_1z, celloutsig_0_0z, celloutsig_0_3z, celloutsig_0_4z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_4z, celloutsig_0_4z, celloutsig_0_1z, celloutsig_0_2z, celloutsig_0_5z, celloutsig_0_3z };
  assign celloutsig_0_8z = ~^ { celloutsig_0_1z, celloutsig_0_3z, celloutsig_0_6z, _02_, celloutsig_0_6z, celloutsig_0_6z, _02_, celloutsig_0_4z };
  assign celloutsig_0_1z = ~^ in_data[70:63];
  assign celloutsig_0_15z = ~^ { _03_[0], celloutsig_0_14z, celloutsig_0_14z, celloutsig_0_2z };
  assign celloutsig_0_16z = ~^ { _03_, celloutsig_0_6z, celloutsig_0_11z, celloutsig_0_10z };
  assign celloutsig_0_19z = ~^ { celloutsig_0_10z, celloutsig_0_17z, celloutsig_0_5z, celloutsig_0_11z, celloutsig_0_11z, celloutsig_0_0z, celloutsig_0_11z, celloutsig_0_16z };
  assign celloutsig_0_21z = ~^ { in_data[95:89], celloutsig_0_17z, celloutsig_0_4z, celloutsig_0_15z, _03_ };
  assign celloutsig_0_22z = ~^ { celloutsig_0_10z, celloutsig_0_4z, celloutsig_0_12z, celloutsig_0_8z };
  assign celloutsig_0_24z = ~^ { in_data[21:19], celloutsig_0_2z, celloutsig_0_1z };
  assign celloutsig_0_28z = ~^ { celloutsig_0_18z, celloutsig_0_6z, celloutsig_0_5z, celloutsig_0_17z, celloutsig_0_21z, celloutsig_0_3z, celloutsig_0_14z, celloutsig_0_16z, celloutsig_0_8z };
  assign celloutsig_0_29z = ~^ { in_data[78:68], celloutsig_0_26z, celloutsig_0_14z, celloutsig_0_11z, celloutsig_0_26z };
  assign celloutsig_0_31z = ~^ in_data[58:42];
  assign celloutsig_0_3z = ~^ { in_data[91:85], celloutsig_0_1z };
  assign celloutsig_0_33z = ~^ { in_data[78:77], celloutsig_0_0z, celloutsig_0_23z, celloutsig_0_5z, _02_, celloutsig_0_31z, celloutsig_0_9z, celloutsig_0_1z, celloutsig_0_11z, celloutsig_0_25z, celloutsig_0_3z, celloutsig_0_31z, celloutsig_0_25z, celloutsig_0_10z, celloutsig_0_12z, _04_, celloutsig_0_26z, celloutsig_0_32z, celloutsig_0_8z, celloutsig_0_1z, celloutsig_0_16z, celloutsig_0_18z, celloutsig_0_25z, celloutsig_0_12z, celloutsig_0_22z, celloutsig_0_5z };
  assign celloutsig_0_34z = ~^ _04_[4:1];
  assign { out_data[128], out_data[96], out_data[32], out_data[0] } = { celloutsig_1_18z, celloutsig_1_19z, celloutsig_0_39z, celloutsig_0_40z };
endmodule
