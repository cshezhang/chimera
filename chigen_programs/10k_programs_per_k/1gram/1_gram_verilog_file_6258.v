// Seed: 821352640
module module_0 (
    input supply0 id_0,
    output supply1 id_1,
    input supply0 id_2,
    output supply0 id_3,
    input uwire id_4,
    output tri id_5,
    input wor id_6,
    input wand id_7,
    input tri1 id_8,
    output supply1 id_9
);
  wire id_11;
  assign module_1.id_14 = 0;
  assign id_5 = 1;
endmodule
module module_1 (
    input tri1 id_0
    , id_12,
    output wire id_1
    , id_13,
    input tri1 id_2,
    output uwire id_3,
    input tri id_4,
    input tri0 id_5,
    input tri id_6,
    input supply1 id_7,
    input tri id_8,
    input uwire id_9
    , id_14,
    input uwire id_10
);
  assign id_14 = ~id_12;
  assign id_3  = id_2;
  wor  id_15;
  wire id_16;
  module_0 modCall_1 (
      id_6,
      id_3,
      id_15,
      id_3,
      id_5,
      id_3,
      id_8,
      id_4,
      id_15,
      id_15
  );
  assign id_15 = 1 & id_4;
  id_17(
      id_15, id_1
  );
  wire id_18, id_19;
endmodule
