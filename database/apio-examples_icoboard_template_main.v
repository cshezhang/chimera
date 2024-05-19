// This program was cloned from: https://github.com/FPGAwars/apio-examples
// License: GNU General Public License v2.0

//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icoboard
//------------------------------------------------------------------
`default_nettype none

//-- Template for the top entity
module top(output wire LED1);

//-- Turn on the LED1 (green led) on the icoboard
assign LED1 = 1'b1;

endmodule
