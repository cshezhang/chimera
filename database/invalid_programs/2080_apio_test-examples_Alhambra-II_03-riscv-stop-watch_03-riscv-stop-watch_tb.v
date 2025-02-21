// This program was cloned from: https://github.com/FPGAwars/apio
// License: GNU General Public License v2.0

// Code generated by Icestudio 0.9.2w202204260904
// Thu, 28 Apr 2022 10:45:15 GMT

// Testbench template

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 10 ns / 1 ns


module main_tb
;
 
 // Simulation time: 100ns (10 * 10ns)
 parameter DURATION = 500;
 
//-- Clock signal
reg clk = 0;
always #0.5 clk = ~clk;

 // Input/Output
 reg [1:0] btn;
 wire [7:0] LED;
 
 // Module instance
 main MAIN (
    .vclk(clk),
  .v2b2ed6(btn),
  .v036815(LED)
 );
 
 initial begin
  // File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, main_tb);
 
  // TODO: initialize the registers here
  // e.g. value = 1;
  // e.g. #2 value = 0;
  btn = 0;
 
  #(DURATION) $display("End of simulation");
  $finish;
 end
 
endmodule
