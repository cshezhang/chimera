// Seed: 1251472419
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
    id_17,
    id_18,
    id_19,
    id_20,
    id_21,
    id_22,
    id_23,
    id_24,
    id_25,
    id_26,
    id_27,
    id_28
);
  input wire id_28;
  inout wire id_27;
  output wire id_26;
  inout wire id_25;
  output wire id_24;
  input wire id_23;
  inout wire id_22;
  inout wire id_21;
  inout wire id_20;
  output wire id_19;
  output wire id_18;
  output wire id_17;
  output wire id_16;
  inout wire id_15;
  input wire id_14;
  inout wire id_13;
  inout wire id_12;
  inout wire id_11;
  output wire id_10;
  inout wire id_9;
  inout wire id_8;
  input wire id_7;
  output wire id_6;
  output wire id_5;
  output wire id_4;
  output wire id_3;
  output wire id_2;
  input wire id_1;
  always_ff id_2 = 1;
endmodule
module module_1 (
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
  inout wire id_5;
  input wire id_4;
  inout wire id_3;
  inout wire id_2;
  input wire id_1;
  wire id_8, id_9;
  module_0 modCall_1 (
      id_4,
      id_2,
      id_2,
      id_9,
      id_5,
      id_9,
      id_6,
      id_2,
      id_8,
      id_3,
      id_9,
      id_9,
      id_8,
      id_2,
      id_2,
      id_2,
      id_3,
      id_5,
      id_9,
      id_5,
      id_3,
      id_3,
      id_3,
      id_3,
      id_3,
      id_9,
      id_2,
      id_9
  );
  wire id_10, id_11;
  supply0 id_12, id_13;
  assign id_13 = 1;
  wire id_14, id_15;
  wire id_16;
  xor primCall (id_7, id_9, id_4, id_2, id_6, id_3, id_5, id_1, id_8);
endmodule
