// This program was cloned from: https://github.com/pmezydlo/BeagleWire
// License: GNU General Public License v2.0

module top(input clk, output [3:0] led);

	reg [27:0] counter = 0;
	always @(posedge clk) counter <= counter + 1;

	assign led[0:3] = counter[24:27];
endmodule
