// This program was cloned from: https://github.com/NYU-MLDA/OpenABC
// License: BSD 3-Clause "New" or "Revised" License

module bsg_dff_reset_en_width_p10
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [9:0] data_i;
  output [9:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire [9:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15;
  reg data_o_9_sv2v_reg,data_o_8_sv2v_reg,data_o_7_sv2v_reg,data_o_6_sv2v_reg,
  data_o_5_sv2v_reg,data_o_4_sv2v_reg,data_o_3_sv2v_reg,data_o_2_sv2v_reg,
  data_o_1_sv2v_reg,data_o_0_sv2v_reg;
  assign data_o[9] = data_o_9_sv2v_reg;
  assign data_o[8] = data_o_8_sv2v_reg;
  assign data_o[7] = data_o_7_sv2v_reg;
  assign data_o[6] = data_o_6_sv2v_reg;
  assign data_o[5] = data_o_5_sv2v_reg;
  assign data_o[4] = data_o_4_sv2v_reg;
  assign data_o[3] = data_o_3_sv2v_reg;
  assign data_o[2] = data_o_2_sv2v_reg;
  assign data_o[1] = data_o_1_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(N3) begin
      data_o_9_sv2v_reg <= N13;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_8_sv2v_reg <= N12;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_7_sv2v_reg <= N11;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_6_sv2v_reg <= N10;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_5_sv2v_reg <= N9;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_4_sv2v_reg <= N8;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_3_sv2v_reg <= N7;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_2_sv2v_reg <= N6;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_1_sv2v_reg <= N5;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_0_sv2v_reg <= N4;
    end 
  end

  assign N3 = (N0)? 1'b1 : 
              (N15)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                          (N15)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N14 = ~reset_i;
  assign N15 = en_i & N14;

endmodule