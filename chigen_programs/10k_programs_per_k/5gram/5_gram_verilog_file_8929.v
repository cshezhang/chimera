// Seed: 28498406
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7
);
  output wire id_7;
  output wire id_6;
  inout wire id_5;
  input wire id_4;
  input wire id_3;
  inout wire id_2;
  inout wire id_1;
  generate
    assign id_2 = (1) == id_3;
  endgenerate
  assign id_2 = id_5;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3
);
  inout wire id_3;
  inout wire id_2;
  inout wire id_1;
  assign id_1 = 1'b0;
  module_0 modCall_1 (
      id_3,
      id_2,
      id_2,
      id_1,
      id_3,
      id_2,
      id_3
  );
  assign modCall_1.id_3 = 0;
endmodule
