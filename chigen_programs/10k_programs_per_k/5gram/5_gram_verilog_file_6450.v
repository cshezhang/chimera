// Seed: 3638207308
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7,
    id_8
);
  input wire id_8;
  input wire id_7;
  inout wire id_6;
  inout wire id_5;
  inout wire id_4;
  inout wire id_3;
  input wire id_2;
  inout wire id_1;
  wire id_9;
  wor id_10, id_11, id_12, id_13, id_14, id_15, id_16, id_17, id_18 = id_7 ? id_4 : id_18;
  assign id_12 = 1'b0;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7,
    id_8
);
  inout wire id_8;
  inout wire id_7;
  inout wire id_6;
  inout wire id_5;
  inout wire id_4;
  input wire id_3;
  inout wire id_2;
  inout wire id_1;
  wire id_9;
  module_0 modCall_1 (
      id_4,
      id_2,
      id_2,
      id_9,
      id_6,
      id_4,
      id_7,
      id_2
  );
  assign modCall_1.id_7 = 0;
endmodule
