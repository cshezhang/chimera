module expression_00163(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {2{(3'd3)}};
  localparam [4:0] p1 = ((~(5'sd3))!==((5'sd3)>>>(4'd6)));
  localparam [5:0] p2 = ((4'd2 ** ((5'd26)===(3'd7)))>>{(5'd14),((3'd7)+(2'd0))});
  localparam signed [3:0] p3 = {1{(5'd20)}};
  localparam signed [4:0] p4 = {((&(2'd3))!==((4'sd5)>(-4'sd6))),((5'd28)?(2'd0):(3'd4)),{(~^{(5'd29),(3'd7)})}};
  localparam signed [5:0] p5 = (((+((2'd2)<(3'sd1)))<<<((3'sd3)||(3'd3)))<(-(((3'd6)&&(2'd1))-((2'd1)===(4'sd5)))));
  localparam [3:0] p6 = (((4'sd2)===(2'd2))?((5'd1)?(-2'sd1):(5'd11)):(~&(5'd27)));
  localparam [4:0] p7 = (-2'sd1);
  localparam [5:0] p8 = {4{{{(3'd4)}}}};
  localparam signed [3:0] p9 = (~|({(4'd14),(2'sd1)}?((5'sd11)^~(5'd18)):(4'd2 ** (5'd5))));
  localparam signed [4:0] p10 = (!((5'd22)^~(3'd1)));
  localparam signed [5:0] p11 = (&(+({3{(-4'sd6)}}<<{2{(2'd1)}})));
  localparam [3:0] p12 = (-(~|(6'd2 ** (&(-(2'd2))))));
  localparam [4:0] p13 = (3'd3);
  localparam [5:0] p14 = ((!(3'd3))?((5'd25)?(4'd1):(2'd0)):(-(5'sd4)));
  localparam signed [3:0] p15 = (|(^(^(~|((((4'd5)^(5'd4))!=(&(2'd0)))<=((~&(5'd8))>>((3'd0)<=(3'd4))))))));
  localparam signed [4:0] p16 = {1{{(-(2'd3))}}};
  localparam signed [5:0] p17 = {1{(3'd7)}};

  assign y0 = {((-((b0?p10:a3)!=(~b3)))?({a3,a5,a2}<{a4}):{(a1>a3),(p1?b0:a2)})};
  assign y1 = (~&{((!b2)^(p0?a5:p0)),{1{{b4,b4,p9}}}});
  assign y2 = (!(6'd2 ** (&(+p14))));
  assign y3 = (b1>=p13);
  assign y4 = (&{p9});
  assign y5 = ($unsigned((p2?p8:p11))?{(p5?p9:a3),{p17,a5}}:{{b2},{2{p11}}});
  assign y6 = (p14!=p13);
  assign y7 = ((~|((~|(a2!=a5))%b5))>=(!(4'd2 ** (|(~|a0)))));
  assign y8 = (~(+(4'd2 ** {b2,b1})));
  assign y9 = (2'd3);
  assign y10 = ((~&(a4?b3:a0))?(~|(~|b5)):(b4?a4:a2));
  assign y11 = {((p10&&p15)?(p2+p9):{p3,p4})};
  assign y12 = ((^((p0!=a1)|(b1<<<b4)))<<<(~(-(~^(~&(~|b0))))));
  assign y13 = $unsigned((&(6'd2 ** (p14?b0:b2))));
  assign y14 = ((4'd12)+(4'sd1));
  assign y15 = (&{1{(-2'sd1)}});
  assign y16 = ((-(a5!==b0))>>>(~^(p5?a2:p3)));
  assign y17 = (-2'sd0);
endmodule
