// Seed: 1177540843
module module_0 (
    input tri1 id_0,
    input supply0 id_1,
    input wand id_2,
    input wor id_3,
    input tri0 id_4,
    output supply0 id_5,
    input uwire id_6,
    input tri1 id_7,
    input wor id_8,
    output supply1 id_9
    , id_14,
    input uwire id_10,
    input supply1 id_11
    , id_15,
    input tri0 id_12
);
  assign id_14 = id_15;
  assign id_15 = id_15;
  initial begin : LABEL_0
    fork
      id_15 = id_3;
      id_16;
    join
  end
endmodule
module module_1 (
    input supply1 id_0,
    input tri0 id_1,
    input wand id_2,
    output supply1 id_3,
    input tri id_4,
    input tri0 id_5,
    output tri0 id_6,
    output wand id_7
);
  always @(*) release id_7;
  wire id_9;
  module_0 modCall_1 (
      id_0,
      id_1,
      id_1,
      id_0,
      id_5,
      id_3,
      id_5,
      id_1,
      id_0,
      id_6,
      id_4,
      id_0,
      id_5
  );
  assign modCall_1.id_8 = 0;
  tri1 id_10, id_11, id_12, id_13;
  wor  id_14 = id_11 == id_14;
  tri0 id_15 = id_13;
endmodule
