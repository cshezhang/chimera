module top
#(parameter param10 = (((~|(~|(~|(7'h43)))) * ((((8'ha4) | (8'haa)) | ((8'hac) >>> (8'hb5))) ? (^((8'ha6) ~^ (8'hbc))) : (((8'hbd) || (8'hbd)) < ((8'h9d) != (8'hae))))) & (!((^{(7'h41)}) ? {((8'ha3) < (8'hb4)), ((8'hb9) || (7'h43))} : ((~|(8'hba)) ? ((8'hb8) ? (8'h9f) : (8'haf)) : (-(8'hbf)))))))
(y, clk, wire4, wire3, wire2, wire1, wire0);
  output wire [(32'h38):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'hb):(1'h0)] wire4;
  input wire [(4'he):(1'h0)] wire3;
  input wire signed [(4'h8):(1'h0)] wire2;
  input wire [(4'hd):(1'h0)] wire1;
  input wire [(3'h4):(1'h0)] wire0;
  wire signed [(5'h11):(1'h0)] wire9;
  wire signed [(5'h11):(1'h0)] wire8;
  wire signed [(3'h5):(1'h0)] wire7;
  wire [(3'h7):(1'h0)] wire6;
  wire [(4'h9):(1'h0)] wire5;
  assign y = {wire9, wire8, wire7, wire6, wire5, (1'h0)};
  assign wire5 = $signed({(&wire1[(4'h9):(1'h1)])});
  assign wire6 = (~^(8'hba));
  assign wire7 = (($signed((!((8'had) ~^ (8'hbc)))) ?
                         $signed($unsigned((wire0 && wire3))) : (((-wire3) ^~ wire1) << $unsigned($signed((8'ha5))))) ?
                     (((wire1 >> {wire2,
                         wire0}) & wire4) <<< (7'h43)) : $signed(((!(~^wire0)) ?
                         {wire0[(1'h1):(1'h0)],
                             wire6} : $signed(wire6[(3'h7):(2'h2)]))));
  assign wire8 = $signed((wire6[(2'h2):(1'h0)] | (~&((wire0 ^ wire0) ~^ (wire3 ?
                     wire2 : wire3)))));
  assign wire9 = ($signed($signed($unsigned(wire2[(3'h4):(3'h4)]))) <= $unsigned(wire1[(4'h8):(2'h2)]));
endmodule
