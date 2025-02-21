module expression_00420(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (4'd2 ** {4{(2'd2)}});
  localparam [4:0] p1 = (((&(&(5'd16)))*(4'd3))>>>(4'd2 ** ((2'd2)>(4'd1))));
  localparam [5:0] p2 = {3{{3{{1{(-2'sd1)}}}}}};
  localparam signed [3:0] p3 = ({1{(5'd15)}}?((2'd0)?(3'd0):(2'sd0)):((2'd0)&(-5'sd0)));
  localparam signed [4:0] p4 = (+(+(-((4'sd2)^(5'd21)))));
  localparam signed [5:0] p5 = {3{{((3'sd3)<(-5'sd11)),(!(-5'sd10))}}};
  localparam [3:0] p6 = ({(-2'sd1),(4'd6)}!={((2'sd0)>>(4'd11))});
  localparam [4:0] p7 = {1{(!{(2'd0),(2'sd0)})}};
  localparam [5:0] p8 = {2{{(3'd5),(2'd1),(4'd13)}}};
  localparam signed [3:0] p9 = (~^{2{{1{{1{(5'sd1)}}}}}});
  localparam signed [4:0] p10 = (2'd0);
  localparam signed [5:0] p11 = (~&(3'd2));
  localparam [3:0] p12 = ((((-3'sd3)?(4'sd2):(3'd7))?(6'd2 ** (5'd0)):((2'd1)&&(-3'sd1)))==(&((4'd2)?(3'd0):(4'd2))));
  localparam [4:0] p13 = (~(-2'sd0));
  localparam [5:0] p14 = (((-5'sd12)%(2'd0))^((-2'sd0)&&(3'd4)));
  localparam signed [3:0] p15 = (~|((+(|(-4'sd7)))%(4'sd5)));
  localparam signed [4:0] p16 = {4{(3'sd1)}};
  localparam signed [5:0] p17 = ((4'd1)%(5'd17));

  assign y0 = {4{{4{a2}}}};
  assign y1 = (-4'sd7);
  assign y2 = {1{{1{(|$unsigned((+(^{2{p0}}))))}}}};
  assign y3 = {1{(3'sd0)}};
  assign y4 = (|(((b3>>>a1)^~{3{a2}})==={3{(|b3)}}));
  assign y5 = (+(~^(~&(((~&b1)+(a3>b5))?(&(a5%b0)):(&(-(b3|a1)))))));
  assign y6 = {2{((b3+b0)<<<(a3<=b2))}};
  assign y7 = (~^(~|(-(~|(((~|$unsigned({3{a5}}))))))));
  assign y8 = ({{$unsigned(p14),{p8}},(2'd1)}>{3{(a5<<<p0)}});
  assign y9 = ({{b3,b1},{2{b4}}}>>>({b3,a3,a2}!=(p12<<<b1)));
  assign y10 = (+(5'sd9));
  assign y11 = {4{p10}};
  assign y12 = $unsigned($signed(((-3'sd2))));
  assign y13 = {3{{a1,p9,p16}}};
  assign y14 = {{({a5,a2,p14}|(^p15)),(b2?p12:a0),(&(~&(p9?a5:a1)))}};
  assign y15 = (-4'sd7);
  assign y16 = {2{((&{1{(~{2{a3}})}})===((4'd2 ** a0)^(b5<=b2)))}};
  assign y17 = {4{{2{{2{p17}}}}}};
endmodule
