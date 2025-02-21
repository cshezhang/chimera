module expression_00709(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {3{(~^(3'd6))}};
  localparam [4:0] p1 = (((-3'sd2)>=(2'sd0))?((3'sd2)?(-4'sd2):(3'd7)):{4{(2'sd1)}});
  localparam [5:0] p2 = (~|(6'd2 ** (~&(|(4'd8)))));
  localparam signed [3:0] p3 = ((-5'sd12)-((-3'sd2)!==((4'd5)===(-3'sd3))));
  localparam signed [4:0] p4 = {3{(!{3{(2'd3)}})}};
  localparam signed [5:0] p5 = (~((!(5'd9))<(5'd27)));
  localparam [3:0] p6 = ((~&(4'sd2))?(~|(2'd2)):((5'd3)<=(5'd16)));
  localparam [4:0] p7 = ((((2'd3)||{(5'd1),(-5'sd3),(4'd11)})^(&(+((-2'sd1)-(5'sd1)))))===((|{(5'd12),(4'sd0)})||(2'd3)));
  localparam [5:0] p8 = ({3{(4'd9)}}<<((4'd0)||(5'sd0)));
  localparam signed [3:0] p9 = (~|(((|(5'd7))>>>((-3'sd3)<<<(3'd4)))?(~|(((-2'sd0)?(2'sd0):(3'd3))^(^(5'sd8)))):(|(-((-3'sd3)?(3'sd0):(-2'sd1))))));
  localparam signed [4:0] p10 = ((((5'd22)?(-4'sd3):(2'd0))^((4'd6)>(-4'sd1)))<(~((&(2'sd0))?((3'd5)!=(-2'sd0)):(|(-5'sd11)))));
  localparam signed [5:0] p11 = {1{(~{{(5'd9),(-5'sd2)},((5'sd3)<<(5'sd2))})}};
  localparam [3:0] p12 = ((-((4'd14)>(3'd5)))?((-5'sd0)?(2'sd0):(2'd2)):((-2'sd0)?(5'd1):(4'sd6)));
  localparam [4:0] p13 = ((|(2'sd0))<<<({(2'sd1),(3'sd2)}>={((3'd0)||(5'd8))}));
  localparam [5:0] p14 = ((!{4{(-2'sd0)}})?(~{1{{4{(5'd5)}}}}):({4{(-4'sd0)}}?((2'sd0)?(3'd3):(-4'sd7)):(&(3'sd0))));
  localparam signed [3:0] p15 = ({(2'd2)}>>((2'sd0)!=(-2'sd1)));
  localparam signed [4:0] p16 = ({(~&(3'sd1))}^~{3{(4'd6)}});
  localparam signed [5:0] p17 = ((2'd2)!={((2'sd0)<=(2'sd1)),{(5'd20),(2'd1),(-5'sd15)},{(2'd2),(3'd3)}});

  assign y0 = {({{(p10&p15),(b3>>>p7),(p4?p3:p9)}}<<(({a5,b2,b2}^{p11,p17,p12})<{(p9?b1:p6),{4{p5}}}))};
  assign y1 = ((~^{2{(b1+p17)}})>=((a1?p13:b3)?(-2'sd0):(-p9)));
  assign y2 = (((b4?b2:b4)===$unsigned(a4))|(a2?a0:b0));
  assign y3 = ((4'd5)?(&((^a4)?(-5'sd14):$signed(p17))):((5'd11)));
  assign y4 = {({(a0?b1:a1),({a5,b0}|(b3>=a1))}&(+{4{{3{b0}}}}))};
  assign y5 = {(((p6<p4)-{{p9,p11}})<=(~&((p13&p16)|(p12>>>p6))))};
  assign y6 = (^a3);
  assign y7 = (5'sd7);
  assign y8 = {2{(&(~|((+b5)?{b1}:{a1,b5,a5})))}};
  assign y9 = {2{$unsigned((+(p3!=p7)))}};
  assign y10 = (-{(|p16),{p10,p10},{p4}});
  assign y11 = (5'd20);
  assign y12 = ((({b2,b1})?(a1?a2:a4):{4{b4}}));
  assign y13 = ($unsigned(((|(&b5))!==(b2?a3:b1)))|($unsigned((~&a2))?(a2&&b2):(b5^a3)));
  assign y14 = (-(4'd13));
  assign y15 = (&{$signed((~|(&b4))),$signed((^(p11?b1:a0))),(a1?a0:a4)});
  assign y16 = {(6'd2 ** a0),{b5,p1}};
  assign y17 = (p10<p4);
endmodule
