module expression_00899(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {3{(3'd0)}};
  localparam [4:0] p1 = (6'd2 ** (2'd3));
  localparam [5:0] p2 = (~&((-(((3'd4)>>>(-4'sd4))<<<{3{(3'sd3)}}))<<((&(4'sd1))?{1{(2'd0)}}:((2'd2)+(3'd6)))));
  localparam signed [3:0] p3 = ({(-4'sd4),(5'd17),(4'd12)}?((3'd2)-(5'sd5)):((2'd0)?(2'd3):(-4'sd2)));
  localparam signed [4:0] p4 = (&(~|(-3'sd0)));
  localparam signed [5:0] p5 = (|(4'd3));
  localparam [3:0] p6 = ((((4'd8)?(2'd1):(5'd3))||((5'd7)&&(4'sd5)))!==(((2'sd1)?(4'd6):(2'sd1))^~(^((4'sd5)?(4'sd2):(-3'sd0)))));
  localparam [4:0] p7 = (!(&(~|((~^(^(5'd16)))?(~|(^(2'd3))):((2'sd1)?(-4'sd7):(4'd6))))));
  localparam [5:0] p8 = (((2'd2)||(5'sd13))/(-2'sd0));
  localparam signed [3:0] p9 = {(2'd1),(4'd1),(3'sd0)};
  localparam signed [4:0] p10 = ((-5'sd15)&&({3{(5'sd13)}}?((3'd6)<=(3'sd3)):((-5'sd14)|(3'd4))));
  localparam signed [5:0] p11 = {1{((~|{(4'd11),(4'd5)})>>((-4'sd0)==(-3'sd3)))}};
  localparam [3:0] p12 = {1{{3{(~^(4'd8))}}}};
  localparam [4:0] p13 = ((((-3'sd1)?(2'sd1):(-4'sd1))^(~&(-4'sd5)))?(|(~(!((-2'sd1)<<(2'sd0))))):((+(3'd3))&&(6'd2 ** (4'd0))));
  localparam [5:0] p14 = ((3'd6)||(3'd1));
  localparam signed [3:0] p15 = {((~((-3'sd3)^(-2'sd0)))>>>{2{(5'd22)}})};
  localparam signed [4:0] p16 = (~&(5'd20));
  localparam signed [5:0] p17 = ((-4'sd7)&(5'd5));

  assign y0 = ((~&((b4!==b4)^~(b3-b1)))&((|a2)<<(b3==b4)));
  assign y1 = (-5'sd12);
  assign y2 = ((((a4?b1:a1))?($unsigned(b2)>=(a1%b4)):($signed(a0)-(b0?b5:a3))));
  assign y3 = ({2{((p17|p2)^~(b2==b3))}}>>{1{(4'd2 ** (p12<<b1))}});
  assign y4 = (2'sd0);
  assign y5 = ((({4{b0}}>={1{a4}})<<<((5'd2 ** b0)===(b0===a4)))!==({2{(b5!=b2)}}<<<({2{a1}}+(b4^a0))));
  assign y6 = {(^(&{p11,p1,p1})),((p11||b5)<<<(~^{b3}))};
  assign y7 = ((^(p14?p6:p17))?(|(p1?p10:a5)):(~|(b1?p17:p13)));
  assign y8 = ({1{(3'sd0)}}>>{{p3},(2'sd1),{3{p9}}});
  assign y9 = {(({(a3-p13)}&&(4'sd3))&&(3'd3))};
  assign y10 = (^(p13?p10:p4));
  assign y11 = ((p16<=p17)|(6'd2 ** p7));
  assign y12 = (+(~{1{({1{a5}}!=={a1,a0})}}));
  assign y13 = ((a4+a2)/p12);
  assign y14 = {2{({4{a0}})}};
  assign y15 = (-$signed(((3'sd1)<(~&((a2+p7)^~(b5%p17))))));
  assign y16 = $unsigned((+(-(+(~&(!p14))))));
  assign y17 = ((a5!=a5)>>>{a5,a0});
endmodule
