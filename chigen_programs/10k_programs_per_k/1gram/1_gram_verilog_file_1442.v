// Seed: 1839902425
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6
);
  output wire id_6;
  input wire id_5;
  output wire id_4;
  inout wire id_3;
  output wire id_2;
  inout wire id_1;
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
  output wire id_7;
  inout wire id_6;
  inout wire id_5;
  inout wire id_4;
  input wire id_3;
  output wire id_2;
  output wire id_1;
  reg id_9 = 1;
  reg id_10;
  always_comb begin : LABEL_0
    @(posedge 1) id_9 = id_10;
    id_10 <= id_3;
  end
  assign id_7 = id_10;
  module_0 modCall_1 (
      id_6,
      id_6,
      id_5,
      id_5,
      id_5,
      id_6
  );
  reg id_11 = id_3, id_12, id_13, id_14;
  assign id_10 = 1;
endmodule
