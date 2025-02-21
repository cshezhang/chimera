// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module main();
  reg [3:0] d, e;
  initial begin
    d <= {4{1'b1}};
    e = {4{1'b1}};
    #1;
    $display("%b %b",d,e);
    if (d !== e) begin
       $display("FAILED -- %b !== %b", d, e);
       $finish;
    end
     $display("PASSED");

  end
endmodule
