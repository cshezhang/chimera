// Seed: 826324351
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
  input wire id_10;
  inout wire id_9;
  input wire id_8;
  inout wire id_7;
  output wire id_6;
  input wire id_5;
  input wire id_4;
  output wire id_3;
  output wire id_2;
  inout wire id_1;
  assign id_9 = 1;
  wire id_11;
  supply0 id_12 = 1;
endmodule
module module_1 (
    input wand id_0,
    input tri1 id_1,
    input tri1 id_2,
    input wor id_3,
    input supply1 id_4,
    output supply1 id_5,
    output supply0 id_6,
    input supply0 id_7,
    output wire id_8,
    input tri0 id_9,
    output tri1 id_10,
    output tri0 id_11
);
  wor id_13 = {id_0 + id_0, id_3} == 1;
  supply0 id_14 = 'b0;
  module_0 modCall_1 (
      id_13,
      id_13,
      id_13,
      id_13,
      id_14,
      id_14,
      id_14,
      id_14,
      id_13,
      id_13
  );
  assign id_10 = id_4 + !id_14;
endmodule
