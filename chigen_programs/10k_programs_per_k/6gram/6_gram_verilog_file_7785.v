// Seed: 3634150449
module module_0 (
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
  inout wire id_9;
  inout wire id_8;
  output wire id_7;
  input wire id_6;
  inout wire id_5;
  input wire id_4;
  inout wire id_3;
  input wire id_2;
  output wire id_1;
  wire id_10;
  assign id_9 = id_6 || 1 < id_8 ? 1'h0 : 1'b0;
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
    id_13
);
  inout wire id_13;
  inout wire id_12;
  inout wire id_11;
  inout wire id_10;
  inout wire id_9;
  output wire id_8;
  input wire id_7;
  output wire id_6;
  inout wire id_5;
  inout wire id_4;
  inout wire id_3;
  inout wire id_2;
  input wire id_1;
  tri id_14;
  assign id_4[1] = id_11;
  wand id_15 = (1 - id_14) > id_9 << id_5;
  module_0 modCall_1 (
      id_8,
      id_12,
      id_12,
      id_14,
      id_9,
      id_2,
      id_2,
      id_5,
      id_10
  );
  assign modCall_1.id_9 = 0;
endmodule
