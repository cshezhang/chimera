module expression_00926(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = ((((4'd1)>(3'sd0))!=((2'd3)>>(-3'sd3)))!==(((-3'sd1)!=(4'd8))|{(2'sd1),(5'sd0),(3'd4)}));
  localparam [4:0] p1 = ((-2'sd0)<=(-4'sd5));
  localparam [5:0] p2 = (~((!(~|(^((2'd1)!=(5'd12)))))^(3'd1)));
  localparam signed [3:0] p3 = {((4'd10)?(3'sd2):(-5'sd5))};
  localparam signed [4:0] p4 = ((2'd0)<(3'd0));
  localparam signed [5:0] p5 = (((^((4'd0)<=(-3'sd3)))-(~&((4'd9)*(5'sd11))))|(+(((-3'sd0)||(2'd0))!==(!((5'sd10)&(4'sd1))))));
  localparam [3:0] p6 = ((((3'd5)?(3'd2):(5'd22))+((5'd22)?(2'd2):(-3'sd3)))?(!(+{{(4'sd0),(3'sd3),(-2'sd1)}})):{3{((5'd9)<<(2'd3))}});
  localparam [4:0] p7 = (-(3'sd3));
  localparam [5:0] p8 = ((4'd9)&&{3{(4'd3)}});
  localparam signed [3:0] p9 = ({(3'sd0),(2'd2),(2'sd0)}?((-3'sd3)?(2'd1):(5'sd15)):((-5'sd5)?(5'd30):(4'd7)));
  localparam signed [4:0] p10 = (+(~&(|(~^(^(~(~^(|(|((3'd3)<=(4'sd3)))))))))));
  localparam signed [5:0] p11 = ({(-3'sd1)}?((-4'sd0)>>(3'sd2)):((4'd13)?(5'd8):(4'd2)));
  localparam [3:0] p12 = (!((-((-3'sd2)<(2'd1)))!==((5'd22)>>(5'd25))));
  localparam [4:0] p13 = (((&(-3'sd3))?(~&(2'd0)):((3'd4)?(4'd10):(3'sd0)))<<{4{{1{(4'd14)}}}});
  localparam [5:0] p14 = (6'd2 ** {1{{3{(2'd1)}}}});
  localparam signed [3:0] p15 = ((((-4'sd0)>>(3'd0))>>((-5'sd1)?(2'sd1):(4'sd4)))!==(((3'sd3)<(-4'sd4))||{3{(5'd3)}}));
  localparam signed [4:0] p16 = {(~(((-4'sd5)&(5'd3))<=(~|(-2'sd0))))};
  localparam signed [5:0] p17 = ((-4'sd2)?(5'd9):(5'sd8));

  assign y0 = (5'd2 ** (&$unsigned(b3)));
  assign y1 = (^(3'sd0));
  assign y2 = (4'sd7);
  assign y3 = ((3'd6)+(3'sd0));
  assign y4 = (+(^(!{(+{3{p3}})})));
  assign y5 = {$signed({2{(~|(a3-a1))}}),{3{(p17>b1)}}};
  assign y6 = (({p14,a5,p8}>>(a3<<a2)));
  assign y7 = ((!({3{p4}}>>>{3{p12}}))<<<((b2&a3)!==(a0|a2)));
  assign y8 = {$signed({3{(p7)}}),{({3{b2}}),{3{p14}}},{3{(p7?a2:p1)}}};
  assign y9 = (~&{b2});
  assign y10 = (|p13);
  assign y11 = (3'd7);
  assign y12 = (|{{2{{a5,a4,b4}}},(5'd2 ** {b1,a2}),(~^{3{$signed(b0)}})});
  assign y13 = (((b1)>(a3!==a1))==={(a3<b1),(b3!=a2),(b0^~b0)});
  assign y14 = (((a4==b0)%b2)^~((a0<=p12)==(p13|a0)));
  assign y15 = (5'sd12);
  assign y16 = {2{(+(a4?a2:a2))}};
  assign y17 = (+(!(~|$unsigned({4{{3{a3}}}}))));
endmodule
