// Seed: 1979091224
module module_0 ();
  assign id_1 = 1;
endmodule
macromodule module_1 (
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
  inout wire id_16;
  input wire id_15;
  inout wire id_14;
  output wire id_13;
  inout wire id_12;
  input wire id_11;
  input wire id_10;
  input wire id_9;
  inout wire id_8;
  output wire id_7;
  output wire id_6;
  input wire id_5;
  output wire id_4;
  input wire id_3;
  output wire id_2;
  inout wire id_1;
  always begin : LABEL_0
    id_13 <= id_16;
  end
  wire id_18;
  always @(negedge id_8) id_12 = id_5;
  module_0 modCall_1 ();
  assign modCall_1.id_1 = 0;
  wire id_19;
  assign id_6#(
      .id_19(1),
      .id_5 (id_3),
      .id_14(1)
  ) [1'b0] = 1;
  integer id_20;
endmodule
