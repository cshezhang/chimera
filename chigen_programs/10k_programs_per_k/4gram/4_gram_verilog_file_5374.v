// Seed: 3587006350
module module_0 (
    id_1,
    id_2,
    id_3
);
  inout wire id_3;
  inout wire id_2;
  output wire id_1;
  wire id_4;
  module_2 modCall_1 (
      id_3,
      id_3,
      id_4
  );
endmodule
module module_1 (
    id_1,
    id_2
);
  input wire id_2;
  inout wire id_1;
  id_3(
      .id_0(1), .id_1(id_2), .id_2(1'h0), .id_3(1), .id_4(id_2[!1 : 1]), .id_5(id_2)
  );
  module_0 modCall_1 (
      id_1,
      id_1,
      id_1
  );
endmodule
module module_2 (
    id_1,
    id_2,
    id_3
);
  input wire id_3;
  input wire id_2;
  inout wire id_1;
  assign id_1 = id_2;
endmodule
