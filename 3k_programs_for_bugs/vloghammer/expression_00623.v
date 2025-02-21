module expression_00623(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = {1{((!(!(((5'sd6)>(-3'sd1))&(-(-5'sd9)))))==(^({1{(4'd11)}}^~((5'd2)!==(5'd5)))))}};
  localparam [4:0] p1 = (-4'sd6);
  localparam [5:0] p2 = (((!(2'd3))===(~|(-2'sd1)))+((-4'sd0)?(2'd0):(-3'sd2)));
  localparam signed [3:0] p3 = ((5'd29)?(2'd2):(-3'sd1));
  localparam signed [4:0] p4 = (^((3'sd0)?(-2'sd0):(2'd0)));
  localparam signed [5:0] p5 = {1{(((3'd7)<<<(3'd6))!={1{(2'd3)}})}};
  localparam [3:0] p6 = ((~((3'd3)^~(3'd7)))<<<(((5'd15)*(5'sd8))^~(^(4'sd5))));
  localparam [4:0] p7 = ((2'd3)?(5'sd7):(-3'sd2));
  localparam [5:0] p8 = (((4'd13)/(-2'sd0))>=(^((5'sd6)?(-5'sd0):(4'sd7))));
  localparam signed [3:0] p9 = (5'd13);
  localparam signed [4:0] p10 = (((3'd1)>(2'd0))>>>((3'd0)-(-3'sd1)));
  localparam signed [5:0] p11 = (!(~|(^(-4'sd5))));
  localparam [3:0] p12 = (~&((^(~^(~^((4'd9)!==(5'd17)))))!==(~&(|{(-4'sd3),(-2'sd1)}))));
  localparam [4:0] p13 = ((((-4'sd6)?(3'd1):(-4'sd5))^((2'sd0)?(4'sd3):(3'd6)))<<<(4'sd7));
  localparam [5:0] p14 = ({3{((4'd8)?(5'd12):(5'd31))}}+(~{1{({3{(4'd4)}}?{1{(2'd0)}}:{1{(3'sd0)}})}}));
  localparam signed [3:0] p15 = ((^((~|(~(3'sd1)))===(^((2'd2)&(5'd14)))))|(((4'sd4)===(5'sd8))?(^((-5'sd9)&(3'd2))):(-((3'd2)<<(-4'sd5)))));
  localparam signed [4:0] p16 = ((~|(-((5'd6)<=(-5'sd9))))!=={((+(-2'sd0))!==((5'sd6)>>(2'd2)))});
  localparam signed [5:0] p17 = ((~^(~^(~|(-3'sd2))))==(!((3'd0)<(2'sd0))));

  assign y0 = (&(+(((|p15)<=(b4?p12:p17))||($signed(p12)-(p15!=p4)))));
  assign y1 = $signed(((~^{{p3,a0},{p5},(p17<<p9)})>=((~a1)?(p3+p2):(&p3))));
  assign y2 = (~{((&a1)||{p9,a5,p3}),((-b4)!==$signed(b0)),((p15)>>>$unsigned(p11))});
  assign y3 = ((+a4)+{b1});
  assign y4 = {3{{2{(b5<<<p1)}}}};
  assign y5 = (-5'sd15);
  assign y6 = (p14?b0:a2);
  assign y7 = (((-4'sd1)!==(b3^a4))?({4{a0}}>=(a2>>>a5)):((a0||a3)>>{b5,b2}));
  assign y8 = ((~|(~(b0&a2)))===(~{1{(+(&a4))}}));
  assign y9 = (($unsigned(b4)|(a5))<=((a5)!=(a5<=p1)));
  assign y10 = (^(p1||p4));
  assign y11 = (-3'sd3);
  assign y12 = (({3{(~&a1)}}===((b3-a4)|(a5&&b2)))>>>(((+p17)?(-3'sd3):(~^b2))>={3{(p7+p0)}}));
  assign y13 = ((((+p2)>>>(p17|p0))&(5'd2 ** (p1>>>p8)))-(({p11,p10}+{p14})!=((p16&&p1)||(p2<<<p14))));
  assign y14 = {4{(|(((p8-p3))))}};
  assign y15 = (({{(b1<<<p3)}}>{(a3!==b5),{p9,p1}})|{({a0,p16,p4}>{p12}),((p6>p11)>>>(p17!=a3))});
  assign y16 = (-3'sd2);
  assign y17 = (|(2'd1));
endmodule
