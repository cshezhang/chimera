module expression_00748(a0, a1, a2, a3, a4, a5, b0, b1, b2, b3, b4, b5, y);
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

  localparam [3:0] p0 = (3'd1);
  localparam [4:0] p1 = (4'd8);
  localparam [5:0] p2 = ((-5'sd4)?(2'd1):(((3'd2)!==(4'sd1))?(!(5'sd15)):(5'd20)));
  localparam signed [3:0] p3 = ({{((4'd13)+(3'd2)),{(5'd14)}}}<<({(2'd1),(-4'sd1)}>>((5'sd4)>>>(-2'sd0))));
  localparam signed [4:0] p4 = (5'd2 ** ((5'd12)<<<(3'd6)));
  localparam signed [5:0] p5 = ((((5'sd13)+(-5'sd0))*((2'd2)+(3'd4)))>(((2'd1)&(-2'sd1))&((4'd0)||(2'd0))));
  localparam [3:0] p6 = {4{(|((3'd6)&&(4'sd1)))}};
  localparam [4:0] p7 = (~^(~({(3'sd1),(3'sd0)}<<((3'sd1)||(4'd6)))));
  localparam [5:0] p8 = (-(5'd19));
  localparam signed [3:0] p9 = (-2'sd1);
  localparam signed [4:0] p10 = (5'd2 ** (3'd2));
  localparam signed [5:0] p11 = {3{{4{(3'sd2)}}}};
  localparam [3:0] p12 = {(-3'sd0),(((3'd4)-(4'd7))?(6'd2 ** (3'd4)):(~^(-4'sd5)))};
  localparam [4:0] p13 = (((5'sd10)?{3{(4'sd5)}}:((4'sd1)?(5'd9):(3'sd1)))<<<(6'd2 ** {1{{4{(5'd23)}}}}));
  localparam [5:0] p14 = {2{{2{((-3'sd0)>(3'sd3))}}}};
  localparam signed [3:0] p15 = ((~|((+(3'd4))?((2'd1)?(3'd7):(-3'sd3)):((-4'sd2)^(2'd2))))===(~^(((-5'sd10)|(3'sd1))+((-2'sd1)===(5'd11)))));
  localparam signed [4:0] p16 = {2{{2{(2'd1)}}}};
  localparam signed [5:0] p17 = (6'd2 ** {((4'd4)|(3'd3))});

  assign y0 = (+(-(2'd3)));
  assign y1 = (((p10?p3:p15)%p4)<<<((6'd2 ** p8)||(p10?p4:p11)));
  assign y2 = (a2-a1);
  assign y3 = ((5'd2 ** (b1>=a0))===((a1*a1)<<(a1+a2)));
  assign y4 = ((|(({2{p1}}>=$unsigned((b3))))));
  assign y5 = ((((5'd2 ** a1)!==(b1?a1:a2))<<<{p17,a1,a1})>>>{(((b1<p9)==(a5===b2))==((b1<<p3)==(b0!=p1)))});
  assign y6 = ((~^((~(&(+b3)))==(p0?p14:p3)))|(^(!(-((^(~(p6?a3:p15))))))));
  assign y7 = ((5'd2 ** (a2<<<b0))==={(a4|b4),(a3<a5),(b3<<b3)});
  assign y8 = ((($signed(b0)>>$unsigned(b5))>={p8,a2,a0})>($unsigned((b2^b0))>>$signed((b0?b4:b2))));
  assign y9 = $signed({4{{3{b1}}}});
  assign y10 = (|{1{(!((&(&(+a4)))===(~|(!{2{a4}}))))}});
  assign y11 = ((&$unsigned((b5<=a0)))?$signed((p17?b4:p17)):((a3)!==(a3?a4:b4)));
  assign y12 = (-(&{1{(&((+(|(6'd2 ** (!(^p12)))))!=(|(~((b5!=a1)<<<(~|b4))))))}}));
  assign y13 = (a1?p11:p9);
  assign y14 = (|({1{((b2?a4:a3)===(b1&&a5))}}==(((p14>=p1)+{p7,a3,p15})=={1{(~(p16&a2))}})));
  assign y15 = {1{(2'sd0)}};
  assign y16 = (((a0||a4)!==(a2^~a3))>=((a4-p7)<<(p14==p16)));
  assign y17 = (~^({2{b3}}?{4{a3}}:{a0,p4}));
endmodule
