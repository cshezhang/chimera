// Seed: 1542598584
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4
);
  inout wire id_4;
  inout wire id_3;
  inout wire id_2;
  inout wire id_1;
  assign id_4 = 1;
  wire id_5 = id_1[1'b0];
endmodule
module module_1 #(
    parameter id_6 = 32'd26,
    parameter id_7 = 32'd91
) (
    id_1,
    id_2,
    id_3
);
  output wire id_3;
  input wire id_2;
  inout wire id_1;
  assign id_3 = id_1[1'd0];
  wire id_4;
  wire id_5;
  module_0 modCall_1 (
      id_1,
      id_4,
      id_5,
      id_4
  );
  defparam id_6.id_7 = id_2;
endmodule
