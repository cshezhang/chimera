module expression_00589(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (-(2'd0));
  localparam [4:0] p1 = (({4{(4'd9)}}<<((2'sd1)|(-3'sd0)))||(~(^(((2'd0)?(4'sd6):(4'd6))!==(-5'sd12)))));
  localparam [5:0] p2 = (5'd2 ** ((2'd1)>>>(2'd2)));
  localparam signed [3:0] p3 = ({(2'd1),(5'd8)}||{(5'd5),(4'd12)});
  localparam signed [4:0] p4 = (((2'd1)?(4'd0):(-5'sd8))?(-3'sd1):(~|{3{(5'd27)}}));
  localparam signed [5:0] p5 = {2{(|{2{((2'd0)!==(2'd1))}})}};
  localparam [3:0] p6 = {{(3'd6),(2'sd1),(-4'sd0)},((5'd1)+(-2'sd0)),((-5'sd11)===(3'd5))};
  localparam [4:0] p7 = {(|(!((^{(-5'sd15),(~|(-3'sd3)),(4'd2)})<={((4'd4)>=(2'd0)),((5'd5)<(-4'sd5))})))};
  localparam [5:0] p8 = (5'sd11);
  localparam signed [3:0] p9 = {3{{(-(3'd3)),{(2'd1),(2'sd1)},(&(3'd6))}}};
  localparam signed [4:0] p10 = ((4'd4)<=((-5'sd1)&{(2'd3)}));
  localparam signed [5:0] p11 = {4{{4{(4'd6)}}}};
  localparam [3:0] p12 = (~^{(~|((5'd10)?(3'd3):(4'sd1)))});
  localparam [4:0] p13 = (-(~^(-(~^((5'd11)>=(2'd2))))));
  localparam [5:0] p14 = (({(~&(-3'sd2))}^~{(2'sd1),(-3'sd0)})!=(((2'd0)<<(-5'sd6))>>(-3'sd2)));
  localparam signed [3:0] p15 = {3{{2{(2'sd1)}}}};
  localparam signed [4:0] p16 = (-5'sd14);
  localparam signed [5:0] p17 = (({4{(5'd6)}}>>(((3'sd3)<<(-4'sd2))<((-3'sd0)^~(3'sd0))))||{2{(((2'd0)!=(3'd0))>=((3'd7)&&(3'sd3)))}});

  assign y0 = (&(~&(!((!(a2?a3:a3))?(p8?a5:a3):{3{p2}}))));
  assign y1 = {4{{1{(5'd28)}}}};
  assign y2 = {$unsigned((-5'sd12)),{$unsigned($unsigned((b5)))}};
  assign y3 = (|(-2'sd0));
  assign y4 = ({2{((a0<<p9)+{2{p1}})}}|(|{3{{4{a2}}}}));
  assign y5 = {1{(&((b0^~b2)!==(b3||a4)))}};
  assign y6 = (3'sd3);
  assign y7 = (+{($signed(p13)<=$signed(p14)),((p17&p17)?{3{p4}}:(~&p13))});
  assign y8 = {3{b5}};
  assign y9 = (-b2);
  assign y10 = (p1);
  assign y11 = (-(($unsigned((p17==p9))>=$unsigned((^$signed(p1))))>(&$signed((|((a2<<<b2)!==$signed((b4))))))));
  assign y12 = ((|(a0|a1))!=(~{a3,p8}));
  assign y13 = (3'd4);
  assign y14 = $signed(b5);
  assign y15 = ((a4<<p14)>{b0,a0});
  assign y16 = ((a1%a1)*(a1<=a3));
  assign y17 = $signed((((3'd3)?$signed(a3):(4'sd4))<=($unsigned((b0>a0))&((a2)))));
endmodule
