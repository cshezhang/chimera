// Seed: 3855458851
module module_0 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5
);
  inout wire id_5;
  inout wire id_4;
  input wire id_3;
  inout wire id_2;
  inout wire id_1;
  wire id_6 = id_5;
  assign module_1.id_2 = 0;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3
);
  output wire id_3;
  inout wire id_2;
  input wire id_1;
  assign id_3[1+1] = id_2 + id_1;
  module_0 modCall_1 (
      id_2,
      id_2,
      id_2,
      id_2,
      id_2
  );
endmodule
module module_2;
  tri  id_1;
  wire id_2 = id_1 == id_1;
  module_0 modCall_1 (
      id_2,
      id_1,
      id_1,
      id_2,
      id_2
  );
  id_3(
      .id_0({id_1, id_1, ~id_1}), .id_1(id_2), .id_2(id_2)
  );
endmodule
