// Seed: 906968622
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
    id_11,
    id_12,
    id_13,
    id_14,
    id_15
);
  input wire id_15;
  inout wire id_14;
  output wire id_13;
  inout wire id_12;
  output wire id_11;
  input wire id_10;
  inout wire id_9;
  inout wire id_8;
  inout wire id_7;
  output wire id_6;
  output wire id_5;
  output wire id_4;
  output wire id_3;
  inout wire id_2;
  input wire id_1;
  assign id_6 = id_8;
endmodule
module module_1 (
    id_1,
    id_2,
    id_3,
    id_4,
    id_5
);
  input wire id_5;
  input wire id_4;
  output wire id_3;
  input wire id_2;
  inout wire id_1;
  module_0 modCall_1 (
      id_4,
      id_1,
      id_3,
      id_1,
      id_1,
      id_3,
      id_1,
      id_1,
      id_1,
      id_1,
      id_3,
      id_1,
      id_1,
      id_1,
      id_4
  );
  event id_6;
  reg   id_7;
  id_8 :
  assert property (@(posedge id_7) "" - 1)
  else begin : LABEL_0
    if (1) id_7 = 1'h0;
    else id_8 <= id_5;
  end
  wire id_9;
  assign id_7 = 1;
endmodule
