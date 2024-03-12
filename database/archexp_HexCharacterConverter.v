`timescale 1ns / 1ps

module HexCharacterConverter (
		input [3:0] hex,
		output [7:0] character
	);

	assign character = hex < 4'd10 ? hex + "0" : hex - 4'd10 + "A";
endmodule
