module expression_00989(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (6'd2 ** (4'd10));
  localparam [4:0] p1 = {(4'd0),{(~|(&(-3'sd1)))},(~|{1{(-4'sd4)}})};
  localparam [5:0] p2 = (!(((~|(~|(-3'sd3)))|(~&((5'd15)<<<(5'sd3))))!=(((5'd19)>=(4'd11))>>>(~^((3'sd2)==(5'd12))))));
  localparam signed [3:0] p3 = (((3'd7)?(4'sd4):(5'd15))?((3'sd3)?(3'd3):(3'sd1)):((4'd7)?(4'd0):(-3'sd0)));
  localparam signed [4:0] p4 = ((((3'sd0)&(2'd0))==={4{(3'sd2)}})&&(((-4'sd5)==(4'd2))>((3'sd3)<<<(5'sd3))));
  localparam signed [5:0] p5 = ((-5'sd12)?(5'sd15):(-2'sd0));
  localparam [3:0] p6 = {3{(2'd0)}};
  localparam [4:0] p7 = (!{1{(2'd0)}});
  localparam [5:0] p8 = ((&((3'd0)>>(3'd3)))^~(~((-5'sd1)<=(-2'sd1))));
  localparam signed [3:0] p9 = (((+(2'd2))!==((4'sd3)|(4'd6)))|(+{2{(!(5'd26))}}));
  localparam signed [4:0] p10 = {2{(5'd13)}};
  localparam signed [5:0] p11 = (^({3{(2'd2)}}?(~&((5'd10)?(3'd2):(2'sd0))):{1{{3{(2'd3)}}}}));
  localparam [3:0] p12 = {(3'd4)};
  localparam [4:0] p13 = ((-3'sd3)+(4'd3));
  localparam [5:0] p14 = (-2'sd1);
  localparam signed [3:0] p15 = (6'd2 ** (5'd2 ** (2'd0)));
  localparam signed [4:0] p16 = (|((((2'sd1)+(3'd6))*(~((3'd2)?(-2'sd1):(2'd1))))>(-(((-2'sd0)?(-5'sd8):(5'd13))?(~(4'd0)):(~|(-4'sd2))))));
  localparam signed [5:0] p17 = ({(-5'sd1)}?((4'd14)<<(4'd15)):{(4'sd0)});

  assign y0 = (p9?p0:b5);
  assign y1 = ($unsigned($signed((((b5||p5)>>(p6>a5)))))<<<$unsigned(($signed(($signed((b2||b2))>$unsigned($unsigned(b0)))))));
  assign y2 = (-a2);
  assign y3 = (~&(3'sd1));
  assign y4 = (!(4'd2 ** p14));
  assign y5 = ((~|((~|(a0>>>p0))>((a2>p11)*(p16>b1))))<(~|(!(~((p16^~p4)&(p4<a4))))));
  assign y6 = {4{(-4'sd1)}};
  assign y7 = (3'd6);
  assign y8 = {2{(-(|((p15&&p4)&&(~^$unsigned(p16)))))}};
  assign y9 = ((~^({3{b0}}))+(~{(~^(a1<<b1))}));
  assign y10 = ({3{a5}}?(~{4{p0}}):(p5?b2:a0));
  assign y11 = ({1{{2{((p6?a5:p7)^(-3'sd3))}}}}<=(-5'sd4));
  assign y12 = ((2'sd1)&&{p14,p16});
  assign y13 = (|{2{{2{{1{{1{(^b3)}}}}}}}});
  assign y14 = (+(p17?p12:p8));
  assign y15 = (~&(&{{(a2<a4),(6'd2 ** a0)},({(b0-p14)}||(~^{a5,p13,a4})),((a0^~a4)<<{a1,p13})}));
  assign y16 = {2{(((p8|p6)<<(p15-b3)))}};
  assign y17 = ($signed(b2)&(a0<<b5));
endmodule
