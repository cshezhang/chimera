module expression_00447(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (-(((+{(4'd6),(4'd13)})<=((4'd14)?(-5'sd4):(2'sd0)))^{((^{(4'sd6),(5'd27)})&(~|{(4'sd6)}))}));
  localparam [4:0] p1 = (+(-3'sd2));
  localparam [5:0] p2 = ((~&{((5'd20)<(-2'sd1)),((2'sd0)?(-4'sd4):(4'd1)),((3'sd0)&&(-3'sd0))})!=(~(!{(~&(4'd1)),((4'd0)<(3'sd3))})));
  localparam signed [3:0] p3 = (5'd19);
  localparam signed [4:0] p4 = ((3'sd1)&(!((6'd2 ** (2'd0))&&(+(3'd3)))));
  localparam signed [5:0] p5 = ((+(4'd3))?((3'd4)?(3'd0):(-4'sd0)):((4'd5)?(5'd2):(-2'sd1)));
  localparam [3:0] p6 = (((5'd25)?(3'd4):(3'd7))?((2'd1)?(2'd0):(2'd0)):((3'd4)>>(-3'sd0)));
  localparam [4:0] p7 = ({2{((4'd7)<=(3'd3))}}&({1{(5'sd8)}}&{2{(5'sd7)}}));
  localparam [5:0] p8 = (((5'd24)!=(2'd0))/(5'sd13));
  localparam signed [3:0] p9 = ({({(-5'sd11),(3'd3)}<(!(3'sd2)))}?(((3'd3)?(-2'sd0):(2'sd1))!=={(2'd0),(4'd5),(-3'sd1)}):{1{((3'd7)?(-4'sd2):(3'd5))}});
  localparam signed [4:0] p10 = ((5'd9)&&(-3'sd3));
  localparam signed [5:0] p11 = (|((-3'sd0)?((-2'sd0)===(5'sd9)):((-4'sd0)>>>(4'd0))));
  localparam [3:0] p12 = (5'sd7);
  localparam [4:0] p13 = (5'd13);
  localparam [5:0] p14 = (~|{(~^{(~|{(3'd6)}),((-5'sd1)>=(-5'sd14))})});
  localparam signed [3:0] p15 = {(&((^((5'd12)&&(4'd0)))?(3'sd0):((3'sd3)?(3'd4):(-2'sd0))))};
  localparam signed [4:0] p16 = {((~&(2'sd1))==(-(-3'sd2))),{(4'd2 ** ((5'd2)<=(2'd1)))},{{(4'd7),(2'd0)},((2'd3)|(3'd4)),{(3'd1),(-3'sd3)}}};
  localparam signed [5:0] p17 = ((-2'sd0)!=(4'sd6));

  assign y0 = (($unsigned($unsigned((b1>=p1)))||((+b1)<<(4'd2 ** b1)))!=$unsigned((~^(~|{(^(p8||a1)),(a1!==b4)}))));
  assign y1 = {(p5<<a2),$unsigned(a4)};
  assign y2 = (-4'sd5);
  assign y3 = (a5^p10);
  assign y4 = (((b3==b3)!=(p2<a1))?(5'd2 ** (a2>>>a2)):(b4?a4:a2));
  assign y5 = {p1,p3,a5};
  assign y6 = ((5'd15)>=((p0?p4:p0)?(p14+p0):(p12?p7:p4)));
  assign y7 = $signed(((((b5+a4)==(~p11))<<(+(&(b3&&a1))))>=(((b5>a1)<<$unsigned(a3))>((a3<<<b3)!==(~b2)))));
  assign y8 = (({4{p4}}>>>{2{{a3,p14}}}));
  assign y9 = (((a4!==a4)/p8)&(((~|b3)||(a0^~b4))===((a1!=b4)!=(b5>b2))));
  assign y10 = (({b0,p4}+(a1<<b3))||((~(b2!==b1))^(a4>=p7)));
  assign y11 = (a2/b4);
  assign y12 = ((2'd3)?(^(~|(-2'sd0))):(~^(-3'sd0)));
  assign y13 = (~|{2{(~(+(!(~^{4{p9}}))))}});
  assign y14 = {(&{2{$unsigned(p17)}}),((p7+p4)>={4{p17}}),({3{b2}}===$unsigned((b0)))};
  assign y15 = (({p12,p11,p11}&(b4|p6))?({3{p14}}?{b0}:{2{p16}}):((p9?b1:p17)?(p6|p0):{1{p10}}));
  assign y16 = ({3{{1{b5}}}}<<<{{3{(b4>>a1)}}});
  assign y17 = {4{(+{b3,p4,a4})}};
endmodule
