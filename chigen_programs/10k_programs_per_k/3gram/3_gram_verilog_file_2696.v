// Seed: 1852175896
macromodule module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7,
    id_8,
    id_9
);
  output wire id_9;
  output wire id_8;
  output wire id_7;
  input wire id_6;
  input wire id_5;
  output wire id_4;
  output wire id_3;
  inout wire id_2;
  output wire id_1;
  id_10(
      .id_0(id_3),
      .id_1(1 & 1),
      .id_2(id_8),
      .id_3((id_4)),
      .id_4(),
      .id_5(id_5),
      .id_6(1'b0 & 1 | 1),
      .id_7({1, id_2}),
      .id_8(1),
      .id_9(),
      .id_10(1'd0 - id_5),
      .id_11(1),
      .id_12(1'b0)
  );
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7,
    id_8,
    id_9,
    id_10,
    id_11,
    id_12,
    id_13,
    id_14,
    id_15,
    id_16
);
  output wire id_16;
  input wire id_15;
  inout wire id_14;
  output wire id_13;
  inout wire id_12;
  output wire id_11;
  inout wire id_10;
  input wire id_9;
  input wire id_8;
  input wire id_7;
  inout wire id_6;
  output wire id_5;
  output wire id_4;
  inout wire id_3;
  inout wire id_2;
  output wire id_1;
  assign id_11 = id_3;
  module_0 modCall_1 (
      id_6,
      id_2,
      id_2,
      id_5,
      id_10,
      id_3,
      id_12,
      id_4,
      id_1
  );
  assign modCall_1.id_2 = 0;
endmodule
