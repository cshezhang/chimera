// Seed: 94357437
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
    id_13
);
  input wire id_13;
  input wire id_12;
  inout wire id_11;
  input wire id_10;
  inout wire id_9;
  output wire id_8;
  output wire id_7;
  input wire id_6;
  output wire id_5;
  inout wire id_4;
  input wire id_3;
  inout wire id_2;
  inout wire id_1;
  wire id_14;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5
);
  output wire id_5;
  input wire id_4;
  inout wire id_3;
  inout wire id_2;
  input wire id_1;
  wire id_6;
  xnor primCall (id_5, id_3, id_1, id_2, id_4, id_6);
  wand id_7 = (1);
  module_0 modCall_1 (
      id_7,
      id_6,
      id_7,
      id_3,
      id_6,
      id_1,
      id_2,
      id_2,
      id_3,
      id_6,
      id_3,
      id_3,
      id_7
  );
endmodule
