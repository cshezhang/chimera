// This program was cloned from: https://github.com/aolofsson/oh
// License: MIT License

//#############################################################################
//# Function: 3-Input Inverting Mux                                           #
//# Copyright: OH Project Authors. ALl rights Reserved.                       #
//# License:  MIT (see LICENSE file in OH repository)                         #
//#############################################################################

module asic_muxi3 #(parameter PROP = "DEFAULT")   (
    input  d0,
    input  d1,
    input  d2,
    input  s0,
    input  s1,
    output z
    );

   assign z = ~((d0 & ~s0 & ~s1) |
		(d1 & s0  & ~s1) |
		(d2 & s1));

endmodule
