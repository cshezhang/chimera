// Seed: 1162760975
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5
);
  inout wire id_5;
  inout wire id_4;
  output wire id_3;
  input wire id_2;
  inout wire id_1;
  id_6(
      .id_0(id_1),
      .id_1(1),
      .id_2(1 && 1 && 1 && id_3),
      .id_3(1),
      .id_4(1),
      .id_5(1),
      .id_6(id_3),
      .id_7(1),
      .id_8(1'b0),
      .id_9(id_4),
      .sum((~id_2)),
      .id_10(1),
      .id_11("" - id_5)
  );
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4
);
  input wire id_4;
  inout wire id_3;
  output wire id_2;
  inout wire id_1;
  wire id_5;
  wire id_6, id_7;
  assign id_2 = id_3;
  module_0 modCall_1 (
      id_1,
      id_6,
      id_7,
      id_3,
      id_6
  );
  wire id_8;
endmodule
