// Seed: 211036665
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
    id_15,
    id_16,
    id_17
);
  input wire id_17;
  output wire id_16;
  input wire id_15;
  inout wire id_14;
  input wire id_13;
  inout wire id_12;
  output wire id_11;
  input wire id_10;
  input wire id_9;
  output wire id_8;
  output wire id_7;
  inout wire id_6;
  output wire id_5;
  input wire id_4;
  input wire id_3;
  inout wire id_2;
  inout wire id_1;
  assign id_7 = id_10;
  assign id_5 = id_10 + id_9;
endmodule
macromodule module_1 (
    input  wire id_0,
    output wire id_1
);
  wire id_3, id_4, id_5;
  wire id_6;
  wire id_7 = id_5;
  wire id_8;
  module_0 modCall_1 (
      id_3,
      id_6,
      id_6,
      id_6,
      id_7,
      id_5,
      id_6,
      id_7,
      id_4,
      id_4,
      id_4,
      id_8,
      id_6,
      id_4,
      id_3,
      id_3,
      id_4
  );
  id_9(
      id_5
  );
endmodule
