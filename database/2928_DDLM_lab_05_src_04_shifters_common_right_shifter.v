// This program was cloned from: https://github.com/RomeoMe5/DDLM
// License: MIT License

module right_shifter
#( 
    parameter WIDTH = 8,
    parameter SHIFT = 3 //SHIFT specifies the number of bits for shamt argument
)
(
    input  [WIDTH - 1:0] x,
    input  [SHIFT - 1:0] shamt,
    output [WIDTH - 1:0] z
);
    assign z = x >> shamt;
endmodule