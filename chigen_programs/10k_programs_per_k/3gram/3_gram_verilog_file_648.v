// Seed: 1015456595
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
    id_11
);
  inout wire id_11;
  input wire id_10;
  input wire id_9;
  input wire id_8;
  output wire id_7;
  output wire id_6;
  input wire id_5;
  input wire id_4;
  output wire id_3;
  input wire id_2;
  input wire id_1;
  assign module_1.type_4 = 0;
endmodule
module module_1;
  uwire id_1 = 1;
  wire  id_2;
  module_0 modCall_1 (
      id_2,
      id_1,
      id_1,
      id_2,
      id_2,
      id_1,
      id_2,
      id_2,
      id_2,
      id_2,
      id_1
  );
  id_3(
      .id_0(1), .id_1()
  );
  generate
    always_ff
    fork
      $display(1);
    join
  endgenerate
endmodule
