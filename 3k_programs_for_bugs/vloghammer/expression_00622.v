module expression_00622(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((4'sd2)+(4'd15));
  localparam [4:0] p1 = (~&(-4'sd0));
  localparam [5:0] p2 = {(!{2{(-5'sd9)}}),(~|{(5'd9),(4'd4),(5'sd14)})};
  localparam signed [3:0] p3 = (((5'd4)<=(5'd3))-((3'd0)<=(5'd30)));
  localparam signed [4:0] p4 = (((4'd5)>(-2'sd0))%(-5'sd13));
  localparam signed [5:0] p5 = ((~(((3'sd2)<<<(3'd2))!={2{(2'd0)}}))+({3{(5'd2)}}!==(~^{4{(5'sd14)}})));
  localparam [3:0] p6 = (((5'sd7)&&(4'd3))==((5'd8)^~(2'sd0)));
  localparam [4:0] p7 = (~|(&(~(-(3'sd3)))));
  localparam [5:0] p8 = (-5'sd13);
  localparam signed [3:0] p9 = (((3'd2)?(4'd13):(3'sd3))?((3'd4)>>>(-3'sd3)):((2'sd0)&&(4'sd5)));
  localparam signed [4:0] p10 = ((((2'd1)<=(3'd6))>((!(4'sd4))!==((3'd7)?(2'd1):(2'd1))))<<{{(2'd2),(4'sd7),(4'd9)},({(5'sd1)}<<((4'sd1)>=(5'd31)))});
  localparam signed [5:0] p11 = (~(2'sd1));
  localparam [3:0] p12 = (5'd2 ** ((4'd10)^~(5'd1)));
  localparam [4:0] p13 = ({(4'd2 ** (5'd24)),(~^(-4'sd7)),((3'd7)>(4'd9))}>>>(((-5'sd6)+(3'd3))^{(5'd19),(-5'sd6)}));
  localparam [5:0] p14 = (+(~&(4'd2 ** (&(^(2'd3))))));
  localparam signed [3:0] p15 = (2'd2);
  localparam signed [4:0] p16 = ({1{(2'd2)}}<<((3'sd0)!==(2'sd1)));
  localparam signed [5:0] p17 = ((5'd16)*(-3'sd2));

  assign y0 = ((~^((a3%a2)==(a3<<a5)))?(~((~^a4)?(a1?b4:a0):(+b5))):((~|(b3?b1:a5))===(b5===a5)));
  assign y1 = $signed(({3{b4}}==$unsigned(b4)));
  assign y2 = (b5-b0);
  assign y3 = (+{((b4?a4:b1)?{b2}:(4'd5)),{{a4,a3},(4'd12),(a4?a0:b2)}});
  assign y4 = $signed((((4'sd1)==((a1&a4)!==(a4>>>a2)))&&($unsigned((&(p11?p15:b2)))<<<((~|a5)||$signed(b4)))));
  assign y5 = (((+(p7/p14))&&$unsigned($unsigned(a3)))<<<((&(-p12))|(~&(b5-a2))));
  assign y6 = (+b5);
  assign y7 = ((~|({4{p11}}>>{p6,a5,a1})));
  assign y8 = (|(((&p8)?(b5):(&p2))?(~^(~&(~&(&p16)))):(~&(~(~^$signed(b4))))));
  assign y9 = ((-((p4%p16)<<<(a4|p7)))^~(((b1+b2)!==(a5<a5))>=((a4<=b1)/p8)));
  assign y10 = {4{{a2}}};
  assign y11 = $signed((4'd6));
  assign y12 = ($unsigned((&$signed(((b5+p7)==(p17?p9:p2)))))<<<((p13?p1:p17)?(p8&&p1):(p7*p1)));
  assign y13 = {3{{1{(p10?b4:p4)}}}};
  assign y14 = {2{a4}};
  assign y15 = ((b4||p1)<=(p6!=p5));
  assign y16 = (2'sd1);
  assign y17 = $signed(((b4-p14)<<<(-3'sd1)));
endmodule
