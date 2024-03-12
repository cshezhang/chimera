module ide_reset_generator (
			    input rst_in,
			    input clk,
			    output rst_out
			    );

   reg 	       rst;
   reg [20:0]  rst_cnt;
   assign rst_out = ~rst;

   always @(posedge clk) begin
      if (rst_in == rst) begin
	 rst_cnt <= 21'h000000;
      end else begin
	 if (rst_in == 1'b0 && rst_cnt == 21'h000300) begin
	    rst <= 1'b0;
	 end else if (rst_in == 1'b1 && rst_cnt == 21'h150000) begin
	    rst <= 1'b1;
	 end
	 rst_cnt <= rst_cnt + 1;
      end
   end

endmodule // ide_reset_generator
