// Seed: 3160448113
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7
);
  output wire id_7;
  input wire id_6;
  output wire id_5;
  input wire id_4;
  input wire id_3;
  inout wire id_2;
  input wire id_1;
  assign id_2 = !id_3;
  wire id_8, id_9, id_10, id_11;
  assign module_1.id_1 = 0;
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
  output wire id_8;
  output wire id_7;
  output wire id_6;
  output wire id_5;
  output wire id_4;
  input wire id_3;
  output wire id_2;
  input wire id_1;
  integer id_9 = id_3;
  assign id_2[1 : 1'b0] = id_3;
  assign id_7 = ~id_1;
  assign id_9 = 1'b0;
  wire id_10;
  module_0 modCall_1 (
      id_10,
      id_9,
      id_10,
      id_9,
      id_5,
      id_1,
      id_7
  );
endmodule
