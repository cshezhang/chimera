// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

`timescale 1ns/1ns
module top;
  reg itrig = 1'b0;
  wire [31:0] smtm;

  assign smtm = itrig * $simtime;

  initial begin
    $monitor(smtm);
    #1 itrig = 1'b1;
    #1 itrig = 1'b0;
    #1 itrig = 1'b1;
    #1 itrig = 1'b0;
  end

endmodule
