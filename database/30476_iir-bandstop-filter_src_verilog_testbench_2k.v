// This program was cloned from: https://github.com/amoudgl/iir-bandstop-filter
// License: MIT License

`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author: Abhinav Moudgil
////////////////////////////////////////////////////////////////////////////////

// Tests the pipelined_iir module for low frequency sinusoidal signal of 2kHz
// The bandstop filter should pass this signal
module testbench_2k;

    // Inputs
    reg clk, reset;
    reg signed [31:0] x;

    // Outputs
    wire signed [31:0] y;

    // Instantiate the Unit Under Test (UUT)
    pipelined_iir uut (
        .clk(clk), 
        .reset(reset),
        .x(x), 
        .y(y)
    );

    // Generate clock with 100ns period
    initial clk = 0;
    always #50 clk = ~clk;

    // filter coefficients
    // A = [1048576, -8218189, 32107544, -81217352, 147076592, -199990256, 208937824, -168854944, 104844152, -48879952, 16314139, -3525584, 379931]
    // B = [631178, -5401947, 23050644, -63646908, 125716872, -186294288, 211911376, -186294288, 125716872, -63646908, 23050644, -5401947, 631178]
    
    // Initialize and pass sinusoidal input data of 2kHz with sampling frequency of 48kHz   
    initial begin
        x = 0; reset = 1; clk = 0; #100;
        reset = 1; #200;
        reset = 0; 
        x = 271391; #100;
        x = 524288; #100; 
        x = 741455; #100;
        x = 908093; #100;
        x = 1012846; #100;
        x = 1048576; #100;
        x = 1012846; #100;
        x = 908093; #100;
        x = 741455; #100;
        x = 524288; #100;
        x = 271391; #100;
        x = 0; #100;
        x = -271391; #100;
        x = -524288; #100;
        x = -741455; #100;
        x = -908093; #100;
        x = -1012846; #100;
        x = -1048576; #100;
        x = -1012846; #100;
        x = -908093; #100;
        x = -741455; #100;
        x = -524288; #100;
        x = -271391; #100;
        x = 0; #100;
        x = 271391; #100;
        x = 524288; #100;
        x = 741455; #100;
        x = 908093; #100;
        x = 1012846; #100;
        x = 1048576; #100;
        x = 1012846; #100;
        x = 908093; #100;
        x = 741455; #100;
        x = 524288; #100;
        x = 271391; #100;
        x = 0; #100;
        x = -271391; #100;
        x = -524288; #100;
        x = -741455; #100;
        x = -908093; #100;
        x = -1012846; #100;
        x = -1048576; #100;
        x = -1012846; #100;
        x = -908093; #100;
        x = -741455; #100;
        x = -524288; #100;
        x = -271391; #100;
        x = 0; #100;
        x = 271391; #100;
        x = 524288; #100;
        x = 741455; #100;
        x = 908093; #100;
        x = 1012846; #100;
        x = 1048576; #100;
        x = 1012846; #100;
        x = 908093; #100;
        x = 741455; #100;
        x = 524288; #100;
        x = 271391; #100;
        x = 0; #100;
        x = -271391; #100;
        x = -524288; #100;
        x = -741455; #100;
        x = -908093; #100;
        x = -1012846; #100;
        x = -1048576; #100;
        x = -1012846; #100;
        x = -908093; #100;
        x = -741455; #100;
        x = -524288; #100;
        x = -271391; #100;
        x = 0; #100;
        x = 271391; #100;
        x = 524288; #100;
        x = 741455; #100;
        x = 908093; #100;
        x = 1012846; #100;
        x = 1048576; #100;
        x = 1012846; #100;
        x = 908093; #100;
        x = 741455; #100;
        x = 524288; #100;
        x = 271391; #100;
        x = 0; #100;
        x = -271391; #100;
        x = -524288; #100;
        x = -741455; #100;
        x = -908093; #100;
        x = -1012846; #100;
        x = -1048576; #100;
        x = -1012846; #100;
        x = -908093; #100;
        x = -741455; #100;
        x = -524288; #100;
        x = -271391; #100;
        x = 0; #100;
        x = 271391; #100;
        x = 524288; #100;
        x = 741455; #100;
        x = 908093; #100;
        x = 1012846; #100;
        x = 1048576; #100;
        x = 1012846; #100;
        x = 908093; #100;
        x = 741455; #100;
        x = 524288; #100;
        x = 271391; #100;
        x = 0; #100;
        x = -271391; #100;
        x = -524288; #100;
        x = -741455; #100;
        x = -908093; #100;
        x = -1012846; #100;
        x = -1048576; #100;
        x = -1012846; #100;
        x = -908093; #100;
        x = -741455; #100;
        x = -524288; #100;
        x = -271391; #100;
        x = 0; #100;
        x = 271391; #100;
        x = 524288; #100;
        x = 741455; #100;
        x = 908093; #100;
        x = 1012846; #100;
        x = 1048576; #100;
        x = 1012846; #100;
        x = 908093; #100;
        x = 741455; #100;
        x = 524288; #100;
        x = 271391; #100;
        x = 0; #100;
        x = -271391; #100;
        x = -524288; #100;
        x = -741455; #100;
        x = -908093; #100;
        x = -1012846; #100;
        x = -1048576; #100;
        x = -1012846; #100;
        x = -908093; #100;
        x = -741455; #100;
        x = -524288; #100;
        x = -271391; #100;
        x = 0; #100;
        x = 271391; #100;
        x = 524288; #100;
        x = 741455; #100;
        x = 908093; #100;
        x = 1012846; #100;
        x = 1048576; #100;
        x = 1012846; #100;
        x = 908093; #100;
        x = 741455; #100;
        x = 524288; #100;
        x = 271391; #100;
        x = 0; #100;
        x = -271391; #100;
        x = -524288; #100;
        x = -741455; #100;
        x = -908093; #100;
        x = -1012846; #100;
        x = -1048576; #100;
        x = -1012846; #100;
        x = -908093; #100;
        x = -741455; #100;
        x = -524288; #100;
        x = -271391; #100;
        x = 0; #100;
        x = 271391; #100;
        x = 524288; #100;
        x = 741455; #100;
        x = 908093; #100;
        x = 1012846; #100;
        x = 1048576; #100;
        x = 1012846; #100;
        x = 908093; #100;
        x = 741455; #100;
        x = 524288; #100;
        x = 271391; #100;
        x = 0; #100;
        x = -271391; #100;
        x = -524288; #100;
        x = -741455; #100;
        x = -908093; #100;
        x = -1012846; #100;
        x = -1048576; #100;
        x = -1012846; #100;
        x = -908093; #100;
        x = -741455; #100;
        x = -524288; #100;
        x = -271391; #100;
        x = 0; #100;
        x = 271391; #100;
        x = 524288; #100;
        x = 741455; #100;
        x = 908093; #100;
        x = 1012846; #100;
        x = 1048576; #100;
        x = 1012846; #100;
        x = 908093; #100;
    end
      
endmodule