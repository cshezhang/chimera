// Seed: 441932424
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4
);
  output wire id_4;
  output wire id_3;
  input wire id_2;
  input wire id_1;
  wire id_5;
  wire id_6;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3
);
  inout wire id_3;
  inout wire id_2;
  output wire id_1;
  assign id_3 = 1;
  wire id_4, id_5, id_6, id_7;
  module_0 modCall_1 (
      id_4,
      id_6,
      id_7,
      id_3
  );
  wire id_8;
endmodule
module module_2 ();
  always @(negedge 1) id_1 = 1;
  assign id_2 = id_1;
  module_0 modCall_1 (
      id_2,
      id_1,
      id_1,
      id_2
  );
  assign id_2 = id_2;
  wire id_3;
endmodule
