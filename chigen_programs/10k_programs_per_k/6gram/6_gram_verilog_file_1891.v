// Seed: 3671054089
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6
);
  output wire id_6;
  inout wire id_5;
  output wire id_4;
  input wire id_3;
  output wire id_2;
  output wire id_1;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5
);
  output wire id_5;
  output wire id_4;
  input wire id_3;
  inout wire id_2;
  inout wire id_1;
  wire id_6;
  wire id_7;
  module_0 modCall_1 (
      id_4,
      id_6,
      id_7,
      id_1,
      id_6,
      id_1
  );
  always @(1 or id_1) #1;
endmodule
