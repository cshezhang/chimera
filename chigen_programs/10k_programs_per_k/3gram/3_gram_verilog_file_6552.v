// Seed: 2889464377
module module_0 (
    output tri1 id_0,
    input wand id_1,
    input uwire id_2,
    input wire id_3,
    output supply0 id_4,
    input tri0 id_5,
    input supply1 id_6,
    input uwire id_7,
    output wor id_8,
    input tri0 id_9,
    input tri1 id_10,
    output wand id_11,
    input tri0 id_12
);
  wire id_14;
  assign id_11 = 1;
endmodule
module module_1 (
    input tri1 id_0,
    input uwire id_1,
    input supply1 id_2,
    input wire id_3,
    input supply1 id_4,
    output wor id_5
);
  assign id_5 = id_4;
  module_0 modCall_1 (
      id_5,
      id_0,
      id_2,
      id_1,
      id_5,
      id_3,
      id_4,
      id_4,
      id_5,
      id_1,
      id_4,
      id_5,
      id_1
  );
  assign modCall_1.id_1 = 0;
  tranif1 (1'd0, id_3);
endmodule
