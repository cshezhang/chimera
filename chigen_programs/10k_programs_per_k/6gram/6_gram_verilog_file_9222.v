// Seed: 604578954
module module_0 (
    id_1,
    id_2
);
  output wire id_2;
  inout wire id_1;
  wire id_3;
  assign module_1.id_3 = 0;
  wire id_4;
  always @(!id_1 or posedge id_1 - 1'b0) $display;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5
);
  input wire id_5;
  output wire id_4;
  inout wire id_3;
  inout wire id_2;
  inout wire id_1;
  initial begin : LABEL_0
    if (id_3) id_2 <= id_1 - 1 * id_2;
  end
  module_0 modCall_1 (
      id_1,
      id_4
  );
endmodule
