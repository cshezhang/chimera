// Seed: 2679825302
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
  inout wire id_6;
  input wire id_5;
  output wire id_4;
  inout wire id_3;
  input wire id_2;
  input wire id_1;
  wire id_8;
  logic [7:0] id_9;
  wire id_10 = id_8;
  wire id_11;
  assign id_9[1] = 1;
  wire id_12;
endmodule
module module_1 (
    id_1,
    id_2
);
  output wire id_2;
  input wire id_1;
  wire id_3;
  wire id_4;
  module_0 modCall_1 (
      id_3,
      id_3,
      id_4,
      id_3,
      id_3,
      id_4,
      id_3
  );
  assign id_2 = id_1;
  id_5(
      .id_0(1'b0), .id_1((id_1))
  );
  wire id_6;
endmodule
