module SimpleBitOps(
  input        clock,
  input        reset,
  input  [3:0] io_inp1,
  input  [3:0] io_inp2,
  output [3:0] io_out_and,
  output       io_out_andr,
  output [3:0] io_out_xor,
  output       io_out_xorr,
  output [3:0] io_out_or,
  output       io_out_orr,
  output [3:0] io_out_not
);
  assign io_out_and = io_inp1 & io_inp2; // @[SimpleBitOps.scala 32:25]
  assign io_out_andr = &io_inp1; // @[SimpleBitOps.scala 36:26]
  assign io_out_xor = io_inp1 ^ io_inp2; // @[SimpleBitOps.scala 33:25]
  assign io_out_xorr = ^io_inp1; // @[SimpleBitOps.scala 37:26]
  assign io_out_or = io_inp1 | io_inp2; // @[SimpleBitOps.scala 34:25]
  assign io_out_orr = |io_inp1; // @[SimpleBitOps.scala 38:26]
  assign io_out_not = ~io_inp1; // @[SimpleBitOps.scala 40:17]
endmodule
