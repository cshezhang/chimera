`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
wire inside1,inside2;
    
assign inside1 = a&b;
    
assign inside2 = c&d; 
    
assign out = inside1|inside2;
    
    assign out_n = !(out);
endmodule

