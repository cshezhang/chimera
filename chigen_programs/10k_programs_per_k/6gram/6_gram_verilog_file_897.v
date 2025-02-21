// Seed: 294225903
module module_0 #(
    parameter id_5 = 32'd53,
    parameter id_6 = 32'd33
) (
    id_1,
    id_2
);
  input wire id_2;
  output wire id_1;
  tri0 id_3;
  generate
    for (id_4 = 1; 1'h0; id_1 = id_3 - 1) begin : LABEL_0
      defparam id_5.id_6 = 1'b0;
    end
  endgenerate
endmodule
module module_1 #(
    parameter id_10 = 32'd61,
    parameter id_11 = 32'd33
) (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5,
    id_6,
    id_7,
    id_8
);
  output wire id_8;
  inout wire id_7;
  output wire id_6;
  inout wire id_5;
  input wire id_4;
  output wire id_3;
  output wire id_2;
  output wire id_1;
  generate
    for (genvar id_9 = 1; 1; id_9 = id_7) begin : LABEL_0
      defparam id_10.id_11 = 1;
    end
  endgenerate
  module_0 modCall_1 (
      id_2,
      id_7
  );
  assign modCall_1.type_3 = 0;
endmodule
