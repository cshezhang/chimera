module cprop(input [7:0] a, output [127:0] c0, output [63:0] c1, output [60:0] res);

always @(a) begin
  res = 4;
  res = res<<2; // 16
  res = res + 2; // 17

  c0 = a + 1 + res;

  /*
  c0 = a + 1 + res;
  c0 = c0 + 60'h3;
  c0 = c0 + 67'hffff_ffff_0000;
  */

  c1 = c0;
  c1 = c1<<10;
  c1 = c1 - c0;

end
endmodule

