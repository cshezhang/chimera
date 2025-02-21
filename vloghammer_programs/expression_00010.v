module expression_00010(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (((-3'sd1)^~(3'd4))!=((4'd13)?(2'd3):(3'd4)));
  localparam [4:0] p1 = ((3'd2)>=((5'd10)<=((3'sd2)>=(2'sd1))));
  localparam [5:0] p2 = {4{(2'sd1)}};
  localparam signed [3:0] p3 = ((5'd11)&(5'd28));
  localparam signed [4:0] p4 = (3'd2);
  localparam signed [5:0] p5 = (-(^{{(-3'sd1),(2'd1)},(^(4'sd5)),{(5'd24),(5'sd6)}}));
  localparam [3:0] p6 = (~({1{{1{(2'd0)}}}}?(~{4{(2'sd0)}}):{2{(5'sd4)}}));
  localparam [4:0] p7 = {{((|(~(&(4'd14))))!=({4{(3'd1)}}!=(4'sd1)))}};
  localparam [5:0] p8 = {(-5'sd15)};
  localparam signed [3:0] p9 = ((2'sd0)-(5'd22));
  localparam signed [4:0] p10 = ({4{(3'sd3)}}?((2'sd1)?(5'sd3):(-3'sd1)):(2'sd1));
  localparam signed [5:0] p11 = ((~^(4'd11))!=={(2'sd1),(-5'sd8),(-5'sd10)});
  localparam [3:0] p12 = {((4'd10)<=(4'sd7)),(4'd6),((2'd1)<=(-3'sd0))};
  localparam [4:0] p13 = {2{(((2'sd1)>=(5'sd3))?(&(2'd0)):(^(5'd30)))}};
  localparam [5:0] p14 = (((2'd0)!==(4'sd4))|((5'd22)>=(4'd8)));
  localparam signed [3:0] p15 = ({(-2'sd0),(2'd2),(2'sd1)}!==((5'sd6)?(4'sd0):(-2'sd0)));
  localparam signed [4:0] p16 = ((((5'd18)!==(-3'sd3))||((5'sd3)?(2'd0):(-2'sd1)))||(6'd2 ** {(2'd0),(3'd6),(4'd4)}));
  localparam signed [5:0] p17 = (+(3'd4));

  assign y0 = (p7<<a1);
  assign y1 = {2{((p1?p13:p3)?(p10?p5:p14):(a5>=p3))}};
  assign y2 = ((2'd3)?((!p17)>=(3'sd3)):((5'd18)<<<(a3+p8)));
  assign y3 = {1{(-((p17>=a3)?{1{p9}}:{1{b5}}))}};
  assign y4 = (~((5'sd11)>=((p5&&b4)^(p10?p1:p15))));
  assign y5 = {1{(&(3'd0))}};
  assign y6 = ({1{(~(-((p2<<b4)!=(a3>>a2))))}}||(((a1===a1)^~(p16<=b4))>>>{3{a5}}));
  assign y7 = (~|((p0+p9)^(b4===b4)));
  assign y8 = {2{(~^(|(a1)))}};
  assign y9 = {a4,p16,b5};
  assign y10 = (5'd2 ** (4'd5));
  assign y11 = (|(~&((^(|(-(~^$unsigned((b1||a5)))))))));
  assign y12 = ({{p7},{p4,p13,a5},(p8>>a1)}^({(p7>b1)}-(b4>>>p13)));
  assign y13 = (^p6);
  assign y14 = ($unsigned(((((b5|b1)==$signed(b4))<<$unsigned((a1^b4)))))>(((6'd2 ** b1)===$unsigned(b4))>(+$signed((a5>=p8)))));
  assign y15 = {{{a0,a1,b1},{a2,a4,b3}},{{{b4},{a3}}},{{b1,a4},{a0,a1,a2},{b3,b3,a0}}};
  assign y16 = (((({1{(a0?b4:a5)}}))<=({4{a5}}?(a4?p17:p9):(b0==b5)))&{3{(b3===b5)}});
  assign y17 = (+(&(~|(4'sd1))));
endmodule
