// This program was cloned from: https://github.com/lnis-uofu/OpenFPGA
// License: MIT License

// Creating a scaleable adder

module adder_16(cout, sum, a, b, cin);
parameter size = 6;  /* declare a parameter. default required */
output cout;
output [size-1:0] sum; 	 // sum uses the size parameter
input cin;
input [size-1:0] a, b;  // 'a' and 'b' use the size parameter

assign {cout, sum} = a + b + cin;

endmodule









