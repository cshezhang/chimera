module top
#(parameter param20 = ((({((8'haf) ? (8'ha3) : (8'h9d))} ? ({(8'ha1), (7'h44)} < (|(8'hb4))) : (((8'h9c) ? (8'h9d) : (8'hb0)) ? (|(8'h9c)) : ((7'h42) ? (8'h9f) : (8'haa)))) ? ((|((8'haa) << (8'had))) ? (~^((7'h44) <= (8'haf))) : ((~|(8'ha5)) != (|(8'hb6)))) : {({(8'h9d), (8'hb9)} ^ {(8'hbd), (8'h9e)})}) ? (&{(((8'hb7) ? (8'hab) : (8'hb2)) ? ((8'h9e) ? (8'h9e) : (8'hb1)) : (8'hb3)), (((7'h42) ? (8'hbc) : (8'ha7)) ? ((8'hb2) || (7'h42)) : ((8'hab) ? (8'hac) : (8'hbe)))}) : (8'hab)))
(y, clk, wire3, wire2, wire1, wire0);
  output wire [(32'hbe):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(5'h13):(1'h0)] wire3;
  input wire signed [(4'h8):(1'h0)] wire2;
  input wire [(5'h14):(1'h0)] wire1;
  input wire signed [(5'h15):(1'h0)] wire0;
  wire signed [(4'hc):(1'h0)] wire15;
  wire signed [(5'h11):(1'h0)] wire14;
  wire [(3'h7):(1'h0)] wire13;
  wire [(4'hf):(1'h0)] wire12;
  wire signed [(3'h5):(1'h0)] wire6;
  wire signed [(5'h12):(1'h0)] wire4;
  reg [(2'h2):(1'h0)] reg19 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg18 = (1'h0);
  reg [(4'h8):(1'h0)] reg17 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg16 = (1'h0);
  reg [(4'hd):(1'h0)] reg11 = (1'h0);
  reg [(5'h15):(1'h0)] reg10 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg9 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg8 = (1'h0);
  reg signed [(4'he):(1'h0)] reg7 = (1'h0);
  reg [(4'he):(1'h0)] reg5 = (1'h0);
  assign y = {wire15,
                 wire14,
                 wire13,
                 wire12,
                 wire6,
                 wire4,
                 reg19,
                 reg18,
                 reg17,
                 reg16,
                 reg11,
                 reg10,
                 reg9,
                 reg8,
                 reg7,
                 reg5,
                 (1'h0)};
  assign wire4 = wire3[(1'h1):(1'h0)];
  always
    @(posedge clk) begin
      reg5 <= (wire1[(5'h11):(4'hc)] || (~|wire1));
    end
  assign wire6 = $unsigned(($signed((((8'hb3) ? wire0 : (8'hab)) ?
                         wire3[(4'hf):(4'h9)] : {reg5})) ?
                     ($unsigned(wire1) ?
                         ((^wire3) ^~ (wire2 <= (8'h9f))) : ($signed(reg5) ?
                             $signed((8'haf)) : ((8'ha7) ?
                                 reg5 : wire0))) : wire2[(1'h1):(1'h0)]));
  always
    @(posedge clk) begin
      reg7 <= $signed((|wire2[(3'h5):(2'h3)]));
      reg8 <= (wire3[(4'hb):(3'h7)] <<< reg5);
      reg9 <= $unsigned({reg8[(1'h1):(1'h1)], (~|((8'hba) >>> (8'ha0)))});
      reg10 <= ((+wire2[(2'h3):(1'h1)]) ?
          ((reg5 - (^((8'hb8) ? reg7 : wire6))) ?
              (((wire4 ? wire1 : reg7) ? (wire1 ? wire2 : reg9) : reg8) ?
                  (reg9[(3'h7):(3'h6)] ?
                      (wire0 & reg8) : (wire2 < wire1)) : $unsigned((reg7 ?
                      reg8 : reg9))) : wire0) : (reg5 ?
              {(-((8'ha6) ? reg8 : reg9)),
                  ($unsigned(wire4) ? ((8'ha6) ^ reg8) : reg8)} : reg5));
      reg11 <= (reg8 >> (wire1[(4'hc):(1'h1)] ~^ wire4[(4'hb):(1'h0)]));
    end
  assign wire12 = ($unsigned(reg5[(4'ha):(1'h1)]) ?
                      reg10[(1'h0):(1'h0)] : reg8[(2'h2):(1'h1)]);
  assign wire13 = wire1;
  assign wire14 = ((-{reg8}) >> (reg5 ?
                      (((^reg7) ?
                          $unsigned(wire12) : wire3) - (|$unsigned(reg8))) : wire3[(4'hc):(3'h4)]));
  assign wire15 = (wire3[(2'h2):(2'h2)] ?
                      (^~$unsigned(reg10)) : $unsigned($signed((~|$signed(wire12)))));
  always
    @(posedge clk) begin
      reg16 <= (($signed($unsigned((wire15 <= reg11))) | reg5[(4'ha):(3'h7)]) >>> reg5);
      reg17 <= {((reg7 ?
                  $unsigned({reg10,
                      wire3}) : ($signed(wire12) < $signed(reg8))) ?
              reg16 : wire4),
          reg11};
      reg18 <= (~^reg10);
      reg19 <= reg9;
    end
endmodule
