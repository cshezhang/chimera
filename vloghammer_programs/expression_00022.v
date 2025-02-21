module expression_00022(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((5'd1)>>(5'd31))!=(6'd2 ** (4'd11)));
  localparam [4:0] p1 = ((6'd2 ** (+{2{(3'd5)}}))>(^((&(4'd1))?((5'sd1)>>>(4'd9)):{2{(3'sd2)}})));
  localparam [5:0] p2 = (~&(&(&(^((((2'd3)?(5'sd3):(2'd1))?((4'sd5)||(5'd30)):((4'sd6)?(2'sd0):(5'd9)))>(~&((-3'sd2)?(5'd25):(5'sd6))))))));
  localparam signed [3:0] p3 = ((!(3'sd0))<=(-(-4'sd7)));
  localparam signed [4:0] p4 = (^(~&{3{(^(2'd3))}}));
  localparam signed [5:0] p5 = ((~&((-3'sd3)?(-4'sd3):(2'sd0)))?(~&(3'd6)):{(3'd0),((5'd5)==(3'sd0))});
  localparam [3:0] p6 = (^{1{(|(+(+(4'sd3))))}});
  localparam [4:0] p7 = (-(~^({1{(4'd1)}}!=(2'sd0))));
  localparam [5:0] p8 = {((2'd0)<<<(4'd3)),(-(-3'sd1)),(~^(4'd0))};
  localparam signed [3:0] p9 = ((-2'sd1)*((-3'sd0)!=(5'd22)));
  localparam signed [4:0] p10 = ((|{2{(4'd14)}})==(~&(6'd2 ** (2'd0))));
  localparam signed [5:0] p11 = {(-(2'd1)),((4'sd3)>=(5'd13))};
  localparam [3:0] p12 = (!{3{(&{1{{(-5'sd3),(4'd8),(-3'sd1)}}})}});
  localparam [4:0] p13 = ((((5'd25)>(3'd1))/(3'd4))>((5'd2 ** (5'd27))/(3'd0)));
  localparam [5:0] p14 = (~&(4'sd3));
  localparam signed [3:0] p15 = ((^(&(~&(~^(2'd1)))))?(&(!(~^(4'd8)))):(!(~&(~&(!(4'd0))))));
  localparam signed [4:0] p16 = (!(-3'sd3));
  localparam signed [5:0] p17 = {((-3'sd0)|(3'd0)),(4'd2 ** (5'd8))};

  assign y0 = {1{(-(~|((^{2{b1}})^~{2{b5}})))}};
  assign y1 = (2'd0);
  assign y2 = ({1{{{2{((p5^~a2)<=(b1===b3))}}}}}>{3{(a0!==b5)}});
  assign y3 = ({2{(p9>=p6)}}<<{4{a5}});
  assign y4 = {($signed(p12)=={p12}),(|(3'd2))};
  assign y5 = (~$unsigned((~((p12<p9)*(!(p4?b3:a2))))));
  assign y6 = {3{(|(a4!==b5))}};
  assign y7 = (((&p11)+(~|p17))>>>{3{p17}});
  assign y8 = (~|{(-3'sd3)});
  assign y9 = ($unsigned((4'sd1))|(((5'd13)>>(b2*p8))^((a4|b5)!==(a2^a3))));
  assign y10 = {{a3,b1},(b5<b1),(b1-b5)};
  assign y11 = {({a0,a0,a1}?(a1<b0):(a2^~a0)),(6'd2 ** (p8<<<a1))};
  assign y12 = (({1{$signed((~&(~({3{a5}}===(b5<<b2)))))}}==={3{(b2>=b2)}}));
  assign y13 = ({2{p5}}<<(p3^p5));
  assign y14 = {3{((!a0)<=(~a5))}};
  assign y15 = ((~(2'd0))&&(~&$signed((b3*p5))));
  assign y16 = ((((b1/b1)|(b2!=a0))&((a4|b3)>>>(b0|b3)))>>>(((b2==b5)<(a1|b4))|((a1||b3)!==(a1-b2))));
  assign y17 = (b4>>>a1);
endmodule
