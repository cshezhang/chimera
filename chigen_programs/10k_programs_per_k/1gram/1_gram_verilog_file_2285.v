// Seed: 3295591959
module module_0 (
    output wire id_0,
    input wire id_1,
    output tri0 id_2,
    input supply0 id_3,
    input wire id_4,
    input wire id_5,
    output tri0 id_6,
    input wor id_7
);
  tri0 id_9, id_10;
  id_11(
      .id_0(id_9),
      .id_1(id_9),
      .id_2(!id_4),
      .id_3(""),
      .id_4(1'h0 ^ id_3 - 1),
      .id_5(id_3),
      .id_6(),
      .id_7(1'b0),
      .id_8(1),
      .id_9(~id_2),
      .id_10(id_2),
      .id_11(1),
      .id_12(id_4)
  );
  assign id_0 = 1'b0;
  supply1 id_12, id_13;
  assign id_9 = id_4;
  wire id_14;
  wire id_15;
  wire id_16, id_17;
  assign id_9 = id_12;
  always id_2 = id_4;
endmodule
module module_1 (
    input  wor  id_0,
    input  wire id_1,
    output wire id_2,
    output wand id_3
);
  module_0 modCall_1 (
      id_2,
      id_0,
      id_3,
      id_1,
      id_1,
      id_1,
      id_2,
      id_1
  );
  assign modCall_1.id_7 = 0;
endmodule
