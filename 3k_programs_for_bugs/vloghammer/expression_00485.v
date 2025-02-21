module expression_00485(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
  input [3:0] a0;
  input [4:0] a1;
  input [5:0] a2;
  input signed [3:0] a3;
  input signed [4:0] a4;
  input signed [5:0] a5;

  input [3:0] b0;
  input [4:0] b1;
  input [5:0] b2;
  input signed [3:0] b3;
  input signed [4:0] b4;
  input signed [5:0] b5;

  wire [3:0] y0;
  wire [4:0] y1;
  wire [5:0] y2;
  wire signed [3:0] y3;
  wire signed [4:0] y4;
  wire signed [5:0] y5;
  wire [3:0] y6;
  wire [4:0] y7;
  wire [5:0] y8;
  wire signed [3:0] y9;
  wire signed [4:0] y10;
  wire signed [5:0] y11;
  wire [3:0] y12;
  wire [4:0] y13;
  wire [5:0] y14;
  wire signed [3:0] y15;
  wire signed [4:0] y16;
  wire signed [5:0] y17;

  output [89:0] y;
  assign y = {y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17};

  localparam [3:0] p0 = {4{{4{(-5'sd0)}}}};
  localparam [4:0] p1 = (6'd2 ** ((4'd3)?(3'd4):(2'd2)));
  localparam [5:0] p2 = {(~(~|(3'd1))),{(-4'sd5),(-4'sd1)},((-3'sd3)&(5'd31))};
  localparam signed [3:0] p3 = ((4'sd4)+(3'sd1));
  localparam signed [4:0] p4 = {(^(3'sd3)),((2'd1)>(5'sd10))};
  localparam signed [5:0] p5 = ((2'd2)<<<(3'sd1));
  localparam [3:0] p6 = {4{(-5'sd1)}};
  localparam [4:0] p7 = (~|{2{{2{(4'd7)}}}});
  localparam [5:0] p8 = (-(^{(3'sd2),(-5'sd3),(2'sd1)}));
  localparam signed [3:0] p9 = (&(^(((!(-2'sd1))===(|(5'sd13)))==(6'd2 ** ((4'd6)||(5'd9))))));
  localparam signed [4:0] p10 = (((-5'sd11)<<<(2'd0))<=((3'd5)===(3'd1)));
  localparam signed [5:0] p11 = {{(5'sd11)}};
  localparam [3:0] p12 = (+((((4'd9)+(3'd6))|(-((5'd18)>=(5'd10))))<=(((2'd3)!==(2'd0))/(-2'sd1))));
  localparam [4:0] p13 = (5'sd8);
  localparam [5:0] p14 = (+(((+(2'd3))>>>((-5'sd15)<(5'd18)))!=((-{(5'd10)})===(&((4'd6)|(3'd4))))));
  localparam signed [3:0] p15 = (+(~^(~(+(^(((~&(3'd2))+(-(5'd16)))===(((4'd1)!=(2'd3))<<<(~^(2'd2)))))))));
  localparam signed [4:0] p16 = (~((5'd20)?(3'd4):(3'd3)));
  localparam signed [5:0] p17 = ((^{(5'sd5)})>(4'd3));

  assign y0 = (-4'sd2);
  assign y1 = (3'd7);
  assign y2 = (3'd1);
  assign y3 = ((!(-{(b4?p16:a5)}))&&{(p11>>>a0),(p4?p0:b3),(a4&p9)});
  assign y4 = ((~((|a4)===(2'd3)))^~((~|a0)===(b2*b0)));
  assign y5 = ((~{4{p12}})?(~|$signed((~p4))):$signed((a1===a3)));
  assign y6 = {2{{3{{3{b0}}}}}};
  assign y7 = $signed({(+(~&{{(-a0),(^a4),$signed(a3)},(~{{a1,a0},(p14>=b1),(-a2)})}))});
  assign y8 = ((&((~b2)))>>>({a1,b4}<<(4'd2 ** a2)));
  assign y9 = (-3'sd0);
  assign y10 = {2{{1{(-({a3,p3,b0}>>(+a1)))}}}};
  assign y11 = (4'd7);
  assign y12 = ((^$signed(($signed(a0)!=$unsigned(a4))))&((p13||b2)||(&(p16/p12))));
  assign y13 = (4'sd1);
  assign y14 = {a2};
  assign y15 = (6'd2 ** (3'd7));
  assign y16 = ((p12<b1)>=(p16?p2:p11));
  assign y17 = ($unsigned((-5'sd3))!=={1{((5'sd10)>>>(-5'sd9))}});
endmodule
