// Seed: 1056283227
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4
);
  output wire id_4;
  output wire id_3;
  inout wire id_2;
  input wire id_1;
  wire id_5;
  module_2 modCall_1 (
      id_4,
      id_5,
      id_5,
      id_4,
      id_4,
      id_2,
      id_2,
      id_5,
      id_2,
      id_5
  );
  assign modCall_1.id_9 = 0;
endmodule
module module_1 ();
  wire id_1;
  module_0 modCall_1 (
      id_1,
      id_1,
      id_1,
      id_1
  );
endmodule
module module_2 (
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
  inout wire id_9;
  output wire id_8;
  inout wire id_7;
  input wire id_6;
  output wire id_5;
  output wire id_4;
  inout wire id_3;
  inout wire id_2;
  output wire id_1;
  always @(negedge id_2) begin : LABEL_0
    if (id_9 & id_10) assign id_7 = id_2 * 1'b0;
  end
endmodule
