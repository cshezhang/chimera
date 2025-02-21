// This program was cloned from: https://github.com/uwsampl/lakeroad-evaluation
// License: MIT License

/* Generated by Yosys 0.19 (git sha1 a45c131b37c, clang 13.1.6 -fPIC -Os) */

module lakeroad_lattice_ecp5_and64_1(a, b, out0);
  input [63:0] a;
  wire [63:0] a;
  input [63:0] b;
  wire [63:0] b;
  output [63:0] out0;
  wire [63:0] out0;
  LUT4 #(
    .INIT(16'h8fff)
  ) A_LUT_0 (
    .A(a[0]),
    .B(b[0]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[0])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) A_LUT_16 (
    .A(a[16]),
    .B(b[16]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[16])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) A_LUT_24 (
    .A(a[24]),
    .B(b[24]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[24])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) A_LUT_32 (
    .A(a[32]),
    .B(b[32]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[32])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) A_LUT_40 (
    .A(a[40]),
    .B(b[40]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[40])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) A_LUT_48 (
    .A(a[48]),
    .B(b[48]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[48])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) A_LUT_56 (
    .A(a[56]),
    .B(b[56]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[56])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) A_LUT_8 (
    .A(a[8]),
    .B(b[8]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[8])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) B_LUT_1 (
    .A(a[1]),
    .B(b[1]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[1])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) B_LUT_17 (
    .A(a[17]),
    .B(b[17]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[17])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) B_LUT_25 (
    .A(a[25]),
    .B(b[25]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[25])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) B_LUT_33 (
    .A(a[33]),
    .B(b[33]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[33])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) B_LUT_41 (
    .A(a[41]),
    .B(b[41]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[41])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) B_LUT_49 (
    .A(a[49]),
    .B(b[49]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[49])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) B_LUT_57 (
    .A(a[57]),
    .B(b[57]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[57])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) B_LUT_9 (
    .A(a[9]),
    .B(b[9]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[9])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) C_LUT_10 (
    .A(a[10]),
    .B(b[10]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[10])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) C_LUT_18 (
    .A(a[18]),
    .B(b[18]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[18])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) C_LUT_2 (
    .A(a[2]),
    .B(b[2]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[2])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) C_LUT_26 (
    .A(a[26]),
    .B(b[26]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[26])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) C_LUT_34 (
    .A(a[34]),
    .B(b[34]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[34])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) C_LUT_42 (
    .A(a[42]),
    .B(b[42]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[42])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) C_LUT_50 (
    .A(a[50]),
    .B(b[50]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[50])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) C_LUT_58 (
    .A(a[58]),
    .B(b[58]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[58])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) D_LUT_11 (
    .A(a[11]),
    .B(b[11]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[11])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) D_LUT_19 (
    .A(a[19]),
    .B(b[19]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[19])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) D_LUT_27 (
    .A(a[27]),
    .B(b[27]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[27])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) D_LUT_3 (
    .A(a[3]),
    .B(b[3]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[3])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) D_LUT_35 (
    .A(a[35]),
    .B(b[35]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[35])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) D_LUT_43 (
    .A(a[43]),
    .B(b[43]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[43])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) D_LUT_51 (
    .A(a[51]),
    .B(b[51]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[51])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) D_LUT_59 (
    .A(a[59]),
    .B(b[59]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[59])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) E_LUT_12 (
    .A(a[12]),
    .B(b[12]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[12])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) E_LUT_20 (
    .A(a[20]),
    .B(b[20]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[20])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) E_LUT_28 (
    .A(a[28]),
    .B(b[28]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[28])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) E_LUT_36 (
    .A(a[36]),
    .B(b[36]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[36])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) E_LUT_4 (
    .A(a[4]),
    .B(b[4]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[4])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) E_LUT_44 (
    .A(a[44]),
    .B(b[44]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[44])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) E_LUT_52 (
    .A(a[52]),
    .B(b[52]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[52])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) E_LUT_60 (
    .A(a[60]),
    .B(b[60]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[60])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) F_LUT_13 (
    .A(a[13]),
    .B(b[13]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[13])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) F_LUT_21 (
    .A(a[21]),
    .B(b[21]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[21])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) F_LUT_29 (
    .A(a[29]),
    .B(b[29]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[29])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) F_LUT_37 (
    .A(a[37]),
    .B(b[37]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[37])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) F_LUT_45 (
    .A(a[45]),
    .B(b[45]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[45])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) F_LUT_5 (
    .A(a[5]),
    .B(b[5]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[5])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) F_LUT_53 (
    .A(a[53]),
    .B(b[53]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[53])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) F_LUT_61 (
    .A(a[61]),
    .B(b[61]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[61])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) G_LUT_14 (
    .A(a[14]),
    .B(b[14]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[14])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) G_LUT_22 (
    .A(a[22]),
    .B(b[22]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[22])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) G_LUT_30 (
    .A(a[30]),
    .B(b[30]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[30])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) G_LUT_38 (
    .A(a[38]),
    .B(b[38]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[38])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) G_LUT_46 (
    .A(a[46]),
    .B(b[46]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[46])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) G_LUT_54 (
    .A(a[54]),
    .B(b[54]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[54])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) G_LUT_6 (
    .A(a[6]),
    .B(b[6]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[6])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) G_LUT_62 (
    .A(a[62]),
    .B(b[62]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[62])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) H_LUT_15 (
    .A(a[15]),
    .B(b[15]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[15])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) H_LUT_23 (
    .A(a[23]),
    .B(b[23]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[23])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) H_LUT_31 (
    .A(a[31]),
    .B(b[31]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[31])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) H_LUT_39 (
    .A(a[39]),
    .B(b[39]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[39])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) H_LUT_47 (
    .A(a[47]),
    .B(b[47]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[47])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) H_LUT_55 (
    .A(a[55]),
    .B(b[55]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[55])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) H_LUT_63 (
    .A(a[63]),
    .B(b[63]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[63])
  );
  LUT4 #(
    .INIT(16'h8fff)
  ) H_LUT_7 (
    .A(a[7]),
    .B(b[7]),
    .C(1'h1),
    .D(1'h1),
    .Z(out0[7])
  );
endmodule

