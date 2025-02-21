// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module top;
  wire out;
  reg in;

  assign out = in;

  always @* $display(,out,,in);

  initial begin
    in = 1'b0;
    #1 in = 1'b1;
    #1 in = 1'b0;
    #1;
    $display("PASSED");
  end
endmodule
