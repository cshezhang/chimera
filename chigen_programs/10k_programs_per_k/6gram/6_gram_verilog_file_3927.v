// Seed: 624200227
module module_0 (
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
  assign id_7 = 1 ? 1 : id_6;
  assign id_5 = id_3;
  wire id_8;
  assign id_8 = 1;
  assign id_7 = id_2 >= id_8;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6
);
  inout wire id_6;
  inout wire id_5;
  inout wire id_4;
  inout wire id_3;
  inout wire id_2;
  input wire id_1;
  wire id_7 = id_6;
  module_0 modCall_1 (
      id_4,
      id_6,
      id_7,
      id_3,
      id_6,
      id_1,
      id_2
  );
  wire id_8;
  assign id_4 = id_3 ? 1 & (1) : id_1;
  assign id_4 = 1'b0;
endmodule
