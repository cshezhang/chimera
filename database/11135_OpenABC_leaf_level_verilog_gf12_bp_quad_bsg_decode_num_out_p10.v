// This program was cloned from: https://github.com/NYU-MLDA/OpenABC
// License: BSD 3-Clause "New" or "Revised" License

module bsg_decode_num_out_p10
(
  i,
  o
);

  input [3:0] i;
  output [9:0] o;
  wire [9:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule