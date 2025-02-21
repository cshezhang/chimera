// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module bar(clk, rst, inp, out);
  input  wire clk;
  input  wire rst;
  input  wire inp;
  output reg  out;

  always @(posedge clk)
    if (rst) out <= 1'd0;
    else     out <= ~inp;

endmodule

module foo(clk, rst, inp, out);
  input  wire clk;
  input  wire rst;
  input  wire inp;
  output wire out;

  (* my_module_instance = 99 *)
  bar bar_instance (clk, rst, inp, out);

  initial begin
    $display("PASSED");
  end

endmodule

