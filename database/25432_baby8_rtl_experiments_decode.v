// This program was cloned from: https://github.com/jeceljr/baby8
// License: MIT License

/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module Mux_2x1_NBits #(
    parameter Bits = 2
)
(
    input [0:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    output reg [(Bits - 1):0] out
);
    always @ (*) begin
        case (sel)
            1'h0: out = in_0;
            1'h1: out = in_1;
            default:
                out = 'h0;
        endcase
    end
endmodule


// converts and incoming byte into signals that detail the features of the corresponding Baby 8 instruction
module decode (
  input [7:0] dIn, // Data read from program memory
  output test, // indicates a test instruction
  output k, // indicates cascade instructions depending on the other bits
  output zd, // zero page destination address
  output zs, // zero page source address
  output math, // regular math and logic instructions
  output imm, // immediate math and logic instructions
  output jump, // control flow instructions
  output [2:0] jop, // selects among 8 possible control flow instructions
  output [2:0] aluOp, // selects among 3 math and 3 logic operations
  output [3:0] cond // selects between 16 conditions for test instructions

);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  wire k_temp;
  wire s4;
  wire s5;
  wire s6;
  wire s7;
  wire s8;
  wire test_temp;
  wire zs_temp;
  wire imm_temp;
  wire [2:0] s9;
  wire [2:0] s10;
  assign s0 = dIn[0];
  assign s1 = dIn[1];
  assign s2 = dIn[2];
  assign s3 = dIn[3];
  assign k_temp = dIn[4];
  assign s4 = dIn[5];
  assign s5 = dIn[6];
  assign s6 = dIn[7];
  assign s7 = (s4 & s5);
  assign zd = (s0 & s1);
  assign zs_temp = (s2 & s3);
  assign jop[0] = s0;
  assign jop[1] = s1;
  assign jop[2] = k_temp;
  assign s9[0] = s4;
  assign s9[1] = s5;
  assign s9[2] = s6;
  assign s10[0] = s2;
  assign s10[1] = s3;
  assign s10[2] = k_temp;
  assign cond[0] = s0;
  assign cond[1] = s1;
  assign cond[2] = s2;
  assign cond[3] = s3;
  assign s8 = (s7 & s6);
  assign test_temp = (s7 & ~ s6);
  assign math = (~ s8 & ~ test_temp);
  assign imm_temp = (~ zs_temp & s8);
  assign jump = (zs_temp & s8);
  Mux_2x1_NBits #(
    .Bits(3)
  )
  Mux_2x1_NBits_i0 (
    .sel( imm_temp ),
    .in_0( s9 ),
    .in_1( s10 ),
    .out( aluOp )
  );
  assign test = test_temp;
  assign k = k_temp;
  assign zs = zs_temp;
  assign imm = imm_temp;
endmodule
