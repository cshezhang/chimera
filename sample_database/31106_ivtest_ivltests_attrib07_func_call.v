// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module foo(clk, rst, inp_a, inp_b, out);
  input  wire clk;
  input  wire rst;
  input  wire [7:0] inp_a;
  input  wire [7:0] inp_b;
  output reg  [7:0] out;

  function [7:0] do_add;
    input [7:0] inp_a;
    input [7:0] inp_b;

    do_add = inp_a + inp_b;
  endfunction

  always @(posedge clk)
    if (rst) out <= 0;
    else     out <= do_add (* combinational_adder *) (inp_a, inp_b);

  initial begin
    $display("PASSED");
  end

endmodule

