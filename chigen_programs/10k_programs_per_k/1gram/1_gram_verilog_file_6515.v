// Seed: 2660264737
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
  output wire id_11;
  input wire id_10;
  input wire id_9;
  output wire id_8;
  output wire id_7;
  input wire id_6;
  input wire id_5;
  input wire id_4;
  output wire id_3;
  inout wire id_2;
  output wire id_1;
  wire id_14;
  assign module_1.id_2 = 0;
  always @(*) #1 if (1) id_7 = 1;
  assign id_7 = 1;
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
  input wire id_6;
  input wire id_5;
  inout wire id_4;
  output wire id_3;
  inout wire id_2;
  output wire id_1;
  initial
    @(1) begin : LABEL_0
      #1 id_2 <= 1;
    end
  wire id_9;
  always $display(1 - 1);
  module_0 modCall_1 (
      id_4,
      id_9,
      id_1,
      id_9,
      id_6,
      id_4,
      id_7,
      id_7,
      id_4,
      id_5,
      id_9,
      id_6,
      id_6
  );
  wire id_10;
endmodule
