// Seed: 1962080197
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
    id_10
);
  inout wire id_10;
  output wire id_9;
  output wire id_8;
  output wire id_7;
  input wire id_6;
  inout wire id_5;
  inout wire id_4;
  output wire id_3;
  output wire id_2;
  inout wire id_1;
  assign id_2 = module_0;
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
  output wire id_6;
  input wire id_5;
  inout wire id_4;
  output wire id_3;
  input wire id_2;
  input wire id_1;
  tri id_9 = 1;
  nor primCall (id_3, id_1, id_5, id_7, id_8, id_2, id_4, id_9);
  assign id_4 = id_9;
  module_0 modCall_1 (
      id_4,
      id_9,
      id_6,
      id_9,
      id_4,
      id_4,
      id_7,
      id_7,
      id_4,
      id_7
  );
endmodule
