// Seed: 2678241963
module module_0;
  reg id_1;
  id_2(
      .id_0(1), .id_1(), .id_2(1'b0), .id_3(id_1 - ~id_3), .id_4(id_1)
  );
  always @(posedge 1) begin : LABEL_0
    if (id_3) begin : LABEL_0
      id_3 = 1'b0;
    end
  end
  always id_3 = @(~id_3) id_1;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5
);
  inout wire id_5;
  inout wire id_4;
  output wire id_3;
  output wire id_2;
  output wire id_1;
  always @(id_5 or id_4)
    if (1) begin : LABEL_0
      id_3 <= 1;
    end
  module_0 modCall_1 ();
endmodule : SymbolIdentifier
