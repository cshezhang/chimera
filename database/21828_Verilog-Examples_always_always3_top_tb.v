// This program was cloned from: https://github.com/johnwinans/Verilog-Examples
// License: GNU General Public License v3.0

`timescale 1ns/1ns  // time units & precision are both 1nsec

module tb();

    reg         a;
    reg         b;
    reg         c;
    reg [7:0]   Y;

    initial begin
        $dumpfile("top_tb.vcd");
        $dumpvars;
    end

    initial begin
        $monitor("time:%2t addr=%b%b%b Y=%b", $time, a, b, c, Y );

        {a,b,c} = 0;
        #1;
        {a,b,c} = 1;
        #1;
        {a,b,c} = 2;
        #1;
        {a,b,c} = 3;
        #1;
        {a,b,c} = 4;
        #1;
        {a,b,c} = 5;
        #1;
        {a,b,c} = 6;
        #1;
        {a,b,c} = 7;
        #1;

        $finish;
    end

    // In this case, there is no implied latch.  If an omission has
    // been made, a default value will be assigned.
    always @*
    begin
        if ( {a,b,c} == 0 )         Y = 8'b00000001;
        else if ( {a,b,c} == 1 )    Y = 8'b00000010;
        else if ( {a,b,c} == 2 )    Y = 8'b00000100;
        else if ( {a,b,c} == 3 )    Y = 8'b00001000;
        else if ( {a,b,c} == 4 )    Y = 8'b00010000;
        else if ( {a,b,c} == 5 )    Y = 8'b00100000;
//        else if ( {a,b,c} == 6 )    Y = 8'b01000000;      // what if one is missing?
        else if ( {a,b,c} == 7 )    Y = 8'b10000000;
        else                        Y = 'bx;
    end

endmodule
