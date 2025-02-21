// This program was cloned from: https://github.com/efabless/clear
// License: Apache License 2.0

/////////////////////////////////////////
//  Functionality: 2-input AND 
//  Author:        Xifan Tang
////////////////////////////////////////
`timescale 1ns / 1ps

module and2(
  a,
  b,
  c);

input wire a;
input wire b;
output wire c;

assign c = a & b;

endmodule