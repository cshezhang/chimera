// Seed: 3508582654
module module_0 (
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
    id_15
);
  output wire id_15;
  output wire id_14;
  input wire id_13;
  input wire id_12;
  input wire id_11;
  input wire id_10;
  output wire id_9;
  input wire id_8;
  inout wire id_7;
  input wire id_6;
  input wire id_5;
  input wire id_4;
  output wire id_3;
  output wire id_2;
  inout wire id_1;
  id_16(
      (1), id_11, 1'd0
  );
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5#(.id_6(id_7)),
    id_8,
    id_9
);
  output wire id_7;
  output wire id_6;
  output wire id_5;
  output wire id_4;
  inout wire id_3;
  output wire id_2;
  output wire id_1;
  assign id_2 = 1;
  module_0 modCall_1 (
      id_3,
      id_1,
      id_5,
      id_3,
      id_8,
      id_8,
      id_9,
      id_8,
      id_4,
      id_8,
      id_3,
      id_9,
      id_8,
      id_4,
      id_3
  );
  assign modCall_1.id_11 = 0;
endmodule
