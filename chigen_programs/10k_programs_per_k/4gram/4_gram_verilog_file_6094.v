// Seed: 1513495675
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
  input wire id_3;
  output wire id_2;
  inout wire id_1;
endmodule
module module_1 ();
  wire id_1;
  wire id_2;
  module_0 modCall_1 (
      id_2,
      id_1,
      id_1,
      id_2,
      id_2,
      id_1
  );
  wire id_3 = id_3, id_4;
endmodule
module module_2 (
    id_1,
    id_2,
    id_3
);
  input wire id_3;
  output wire id_2;
  output wire id_1;
  wire id_4;
  assign id_1 = id_4;
  module_0 modCall_1 (
      id_4,
      id_1,
      id_4,
      id_4,
      id_3,
      id_4
  );
  assign modCall_1.id_5 = 0;
endmodule
