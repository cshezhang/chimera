// Seed: 726172483
macromodule module_0 (
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
  output wire id_10;
  output wire id_9;
  inout wire id_8;
  input wire id_7;
  output wire id_6;
  output wire id_5;
  inout wire id_4;
  output wire id_3;
  input wire id_2;
  inout wire id_1;
  assign module_1.type_0 = 0;
endmodule
module module_1 (
    output uwire id_0,
    output wire id_1,
    input supply0 id_2,
    output supply1 id_3
    , id_8,
    input tri id_4,
    output wand id_5,
    input wire id_6
);
  assign id_5 = id_4;
  id_9 :
  assert property (@(posedge (id_4 + id_8)) (1))
  else;
  assign id_3 = id_4;
  wire id_10;
  id_11(
      .id_0(1), .id_1(id_3)
  );
  wire id_12;
  wire id_13;
  module_0 modCall_1 (
      id_8,
      id_10,
      id_8,
      id_12,
      id_13,
      id_12,
      id_9,
      id_12,
      id_10,
      id_8
  );
endmodule
