
module hierarchy(a, b, y1, y2, y3, y4);
input [3:0] a;
input signed [3:0] b;
output [7:0] y1, y2, y3, y4;

hierarchy_sub #(-3'sd1, -3'sd1) foo (a, b, y1, y2, y3, y4);

endmodule

(* gentb_skip *)
module hierarchy_sub(a, b, y1, y2, y3, y4);
parameter c = 0;
parameter [7:0] d = 0;
input [3:0] a, b;
output [7:0] y1, y2, y3, y4;
assign y1 = a^b;
assign y2 = b+c;
assign y3 = y2+a;
assign y4 = d;
endmodule
