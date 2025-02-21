module expression_00920(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((5'd18)^~(4'd9))^(+((-5'sd6)>=(5'd4))));
  localparam [4:0] p1 = ((!((2'd2)?(-2'sd0):(3'd3)))>{((-2'sd0)&&(5'sd3)),((4'sd3)?(5'sd3):(3'sd1))});
  localparam [5:0] p2 = ({3{(-3'sd0)}}?(~^((2'd3)?(3'd2):(4'd14))):(((3'd4)!==(3'sd1))+{4{(5'sd3)}}));
  localparam signed [3:0] p3 = (!(~|(2'sd1)));
  localparam signed [4:0] p4 = {2{(|{1{(((4'd3)||(-4'sd2))>=(~^(5'sd9)))}})}};
  localparam signed [5:0] p5 = (-2'sd0);
  localparam [3:0] p6 = (~^(~^{1{(~{2{((~|(~(3'sd3)))<<<{4{(-2'sd0)}})}})}}));
  localparam [4:0] p7 = ((2'd2)||(3'sd3));
  localparam [5:0] p8 = (3'd5);
  localparam signed [3:0] p9 = (-(5'd28));
  localparam signed [4:0] p10 = (~&(~(~|(&(~(~|(~^(~(!(-3'sd0))))))))));
  localparam signed [5:0] p11 = {3{{4{(2'sd0)}}}};
  localparam [3:0] p12 = (5'd5);
  localparam [4:0] p13 = ((+{{1{(&{2{{(-4'sd4),(2'sd1)}}})}}})<<((((3'd2)|(4'sd0))<<((-4'sd2)&&(3'd5)))>{4{(3'd2)}}));
  localparam [5:0] p14 = (((5'sd13)>(4'sd2))?((-2'sd0)?(-3'sd3):(-3'sd2)):(~^((2'sd0)>(4'sd0))));
  localparam signed [3:0] p15 = ((((-5'sd4)<=(2'd0))<((4'sd2)!==(-5'sd2)))+(((3'sd0)-(-5'sd14))>>>((-5'sd2)||(2'sd1))));
  localparam signed [4:0] p16 = (~|{{(2'd0),(4'sd4),(2'd2)},(-5'sd12),((5'sd11)>>>(-4'sd5))});
  localparam signed [5:0] p17 = (~&({{{(4'd8)},(&(-5'sd15))}}&(((4'd1)?(3'sd3):(3'sd1))?{4{(2'sd1)}}:((2'd1)?(-5'sd8):(4'd12)))));

  assign y0 = ($signed({(~^p11),$signed(a1),(p15)})&{(~^(a5!==a2)),(3'sd3)});
  assign y1 = {2{(!{(p3<<<p3)})}};
  assign y2 = (~&a2);
  assign y3 = $unsigned(((^((!(+p0))>>$unsigned((p9!=p12))))>{1{{1{((&p4)>(~&p17))}}}}));
  assign y4 = {4{{1{$signed((a2&&p3))}}}};
  assign y5 = ({1{(b3?a1:p13)}}?((^a3)||(~^b4)):{(p14<=p15)});
  assign y6 = ((-2'sd0)==(4'sd0));
  assign y7 = ((^a0)?(~&p12):(3'd6));
  assign y8 = (((|$signed(({1{p7}}<=(~^p5))))>>>{3{(a2?p11:p12)}}));
  assign y9 = (2'd2);
  assign y10 = {{2{p3}}};
  assign y11 = (~^((~(p1?p0:p10))?((p0?p14:p2)?(!p7):(p9?p14:p14)):((p2?p12:p0)?(p8?p0:p0):(p10?b0:a1))));
  assign y12 = ((p3||p8)==(p2<b4));
  assign y13 = (~&(&(^(&p13))));
  assign y14 = (~&(5'sd12));
  assign y15 = $signed($signed((p4)));
  assign y16 = ($signed(((&(p8-p10))&((a3?p14:b5)<(6'd2 ** a1))))>=((~(p11?a3:b2))?(a2===a4):(~(&b1))));
  assign y17 = ((a5?b3:b5)?(a1+b5):(a4?b1:b1));
endmodule
