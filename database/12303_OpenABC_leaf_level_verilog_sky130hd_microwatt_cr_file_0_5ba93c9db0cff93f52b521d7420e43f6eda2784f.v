// This program was cloned from: https://github.com/NYU-MLDA/OpenABC
// License: BSD 3-Clause "New" or "Revised" License

module cr_file_0_5ba93c9db0cff93f52b521d7420e43f6eda2784f(clk, \d_in.read , \w_in.write_cr_enable , \w_in.write_cr_mask , \w_in.write_cr_data , \w_in.write_xerc_enable , \w_in.write_xerc_data , sim_dump, \d_out.read_cr_data , \d_out.read_xerc_data , log_out);
  wire [3:0] _00_;
  wire [3:0] _01_;
  wire [3:0] _02_;
  wire [3:0] _03_;
  wire [3:0] _04_;
  wire [3:0] _05_;
  wire [3:0] _06_;
  wire [3:0] _07_;
  wire [4:0] _08_;
  wire [31:0] _09_;
  reg [31:0] _10_ = 32'd0;
  wire [4:0] _11_;
  reg [4:0] _12_ = 5'h00;
  input clk;
  wire clk;
  wire [31:0] crs;
  wire [31:0] crs_updated;
  input \d_in.read ;
  wire \d_in.read ;
  output [31:0] \d_out.read_cr_data ;
  wire [31:0] \d_out.read_cr_data ;
  output [4:0] \d_out.read_xerc_data ;
  wire [4:0] \d_out.read_xerc_data ;
  output [12:0] log_out;
  wire [12:0] log_out;
  input sim_dump;
  wire sim_dump;
  input [31:0] \w_in.write_cr_data ;
  wire [31:0] \w_in.write_cr_data ;
  input \w_in.write_cr_enable ;
  wire \w_in.write_cr_enable ;
  input [7:0] \w_in.write_cr_mask ;
  wire [7:0] \w_in.write_cr_mask ;
  input [4:0] \w_in.write_xerc_data ;
  wire [4:0] \w_in.write_xerc_data ;
  input \w_in.write_xerc_enable ;
  wire \w_in.write_xerc_enable ;
  wire [4:0] xerc;
  wire [4:0] xerc_updated;
  assign _00_ = \w_in.write_cr_mask [0] ? \w_in.write_cr_data [3:0] : crs[3:0];
  assign _01_ = \w_in.write_cr_mask [1] ? \w_in.write_cr_data [7:4] : crs[7:4];
  assign _02_ = \w_in.write_cr_mask [2] ? \w_in.write_cr_data [11:8] : crs[11:8];
  assign _03_ = \w_in.write_cr_mask [3] ? \w_in.write_cr_data [15:12] : crs[15:12];
  assign _04_ = \w_in.write_cr_mask [4] ? \w_in.write_cr_data [19:16] : crs[19:16];
  assign _05_ = \w_in.write_cr_mask [5] ? \w_in.write_cr_data [23:20] : crs[23:20];
  assign _06_ = \w_in.write_cr_mask [6] ? \w_in.write_cr_data [27:24] : crs[27:24];
  assign _07_ = \w_in.write_cr_mask [7] ? \w_in.write_cr_data [31:28] : crs[31:28];
  assign _08_ = \w_in.write_xerc_enable  ? \w_in.write_xerc_data  : xerc;
  assign _09_ = \w_in.write_cr_enable  ? crs_updated : crs;
  always @(posedge clk)
    _10_ <= _09_;
  assign _11_ = \w_in.write_xerc_enable  ? xerc_updated : xerc;
  always @(posedge clk)
    _12_ <= _11_;
  assign crs = _10_;
  assign crs_updated = { _07_, _06_, _05_, _04_, _03_, _02_, _01_, _00_ };
  assign xerc = _12_;
  assign xerc_updated = _08_;
  assign \d_out.read_cr_data  = crs_updated;
  assign \d_out.read_xerc_data  = xerc_updated;
  assign log_out = 13'hzzzz;
endmodule