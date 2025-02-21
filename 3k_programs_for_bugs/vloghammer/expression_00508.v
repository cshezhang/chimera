module expression_00508(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((5'sd3)===(5'd22));
  localparam [4:0] p1 = {1{({4{(3'd5)}}-((4'd15)<=(-4'sd6)))}};
  localparam [5:0] p2 = ({{(3'sd0)}}>>((5'd1)+(3'd3)));
  localparam signed [3:0] p3 = ((5'sd3)?(3'sd1):(4'd1));
  localparam signed [4:0] p4 = ((((2'sd0)!==(4'sd7))?((3'd6)==(2'd0)):(4'd2 ** (3'd5)))<<(((3'd2)||(3'd7))?((3'd2)?(2'd1):(2'sd1)):((-2'sd1)<<<(-3'sd2))));
  localparam signed [5:0] p5 = ((5'sd8)-(((4'd5)&(3'd7))>>{(3'd6),(2'sd1)}));
  localparam [3:0] p6 = (5'd2 ** ((3'd0)^~(2'd0)));
  localparam [4:0] p7 = ((5'd6)^(5'd22));
  localparam [5:0] p8 = {{({(4'sd4),(2'd1)}<={(5'd29),(2'd0),(2'sd0)})}};
  localparam signed [3:0] p9 = ((4'sd1)<=(4'sd1));
  localparam signed [4:0] p10 = (^({(-(-4'sd1)),(-(4'sd1)),{(3'sd1)}}=={{((5'sd8)^(4'sd1))},((3'd6)^(4'd13))}));
  localparam signed [5:0] p11 = (5'sd7);
  localparam [3:0] p12 = (({(-5'sd3),(5'd25),(4'sd7)}<<((-4'sd4)?(-4'sd5):(4'd11)))^((6'd2 ** (3'd0))>=((-4'sd5)?(2'sd1):(5'd14))));
  localparam [4:0] p13 = ((2'sd0)?(-4'sd6):(-4'sd2));
  localparam [5:0] p14 = ({{(~|((-4'sd1)>=(4'd15))),{(-4'sd0),(5'd16)}}}!={(~&(2'd1)),((-2'sd1)&(2'sd0)),((5'd15)-(2'd1))});
  localparam signed [3:0] p15 = (({(2'd0),(2'd0),(4'd10)}?((5'sd5)?(-5'sd13):(5'sd5)):((3'd3)==(-4'sd6)))<<<(((-4'sd4)?(4'd6):(-5'sd14))|{(-2'sd1),(-5'sd14),(5'd8)}));
  localparam signed [4:0] p16 = (|(-{((+(2'sd0))^(~(-4'sd0))),(~((-3'sd1)?(2'sd0):(-3'sd2)))}));
  localparam signed [5:0] p17 = (!(~^((|((5'd18)?(3'd2):(5'sd15)))?(((2'd3)>=(5'd25))==((2'sd1)>>>(5'd1))):(-(|((4'd13)?(5'd4):(5'd25)))))));

  assign y0 = (!(6'd2 ** (b1*p7)));
  assign y1 = $unsigned((~|$signed((($signed(b0)^(-2'sd1))===((~&a2)<<(-5'sd8))))));
  assign y2 = ($unsigned($unsigned((~|(~|{3{p2}}))))||((a5!==b5)<={4{p12}}));
  assign y3 = $unsigned({($signed($unsigned(p2))>=$unsigned((p7<<<p2))),$unsigned({1{$unsigned((2'sd0))}}),{(p13),{p3},{1{a1}}}});
  assign y4 = {{(b1===a2)}};
  assign y5 = ((4'sd5)<<<{2{((a3<a5)<<<(b0>>>b1))}});
  assign y6 = (({b0}!=={a2,b2,a1})-($signed(p3)&(+p16)));
  assign y7 = (-(((~|(&(^p5)))>((-p14)-(-a4)))<<(^((p4?p15:p0)?(p11?p10:p7):(^p13)))));
  assign y8 = (3'd1);
  assign y9 = (~&({(~^(-p9))}?(a3?b3:b3):{1{(p1<=p17)}}));
  assign y10 = {1{((b1!==a1)!=={3{a2}})}};
  assign y11 = {(~p0),(|p15)};
  assign y12 = (-((p10^p3)&(p6<<<p2)));
  assign y13 = ({b1,a4}?(a4?b1:b3):{3{a2}});
  assign y14 = ({1{(((a4!==a5)^~(-4'sd6))>(2'd0))}}||((4'sd4)&((5'd2 ** p2)+(5'd7))));
  assign y15 = (((((a1?b2:a1))?($unsigned(p16)):{3{b1}}))|((&{2{p14}})-{2{(|b3)}}));
  assign y16 = (5'd18);
  assign y17 = ((b4?p17:p10)?(p12?p5:p4):(a1?p2:p17));
endmodule
