// Seed: 3025827935
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
    id_10
);
  output wire id_10;
  output wire id_9;
  output wire id_8;
  output wire id_7;
  input wire id_6;
  input wire id_5;
  input wire id_4;
  input wire id_3;
  output wire id_2;
  input wire id_1;
  assign id_8 = id_6 != id_3;
endmodule
module module_1 #(
    parameter id_7 = 32'd55,
    parameter id_8 = 32'd60
) (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6
);
  output wire id_6;
  inout wire id_5;
  inout wire id_4;
  input wire id_3;
  output wire id_2;
  input wire id_1;
  defparam id_7.id_8 = (id_8);
  wire id_9;
  module_0 modCall_1 (
      id_4,
      id_2,
      id_5,
      id_9,
      id_4,
      id_4,
      id_6,
      id_2,
      id_4,
      id_5
  );
endmodule
