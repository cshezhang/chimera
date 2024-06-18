// This program was cloned from: https://github.com/zeldin/iceGDROM
// License: GNU General Public License v3.0

module sdcard_interface(
			output sclk,
			output mosi,
			input miso,

			input clk,
			input rst,
			input [9:0] sram_a,
			input [15:0] sram_d_in,
			output [15:0] sram_d_out,
			input sram_cs,
			input sram_oe,
			input [1:0] sram_wstrb,
			output sram_wait,
			output [7:0] dma_data,
			output [8:0] dma_addr,
			output dma_strobe
			);

   wire [7:0] spi_data_in;
   wire [7:0] spi_data_out;
   wire       start, finished;
   wire       spi_crc_in_bit, spi_crc_out_bit, spi_crc_strobe;
   wire       crc16_x, crc7_x;

   reg [7:0]  divider_d, divider_q;
   reg [4:0]  bits_d, bits_q;
   reg [7:0]  latch_d, latch_q;
   reg 	      avail_d, avail_q;
   reg [8:0]  dma_counter_d, dma_counter_q;
   reg        dma_mode_d, dma_mode_q, dma_trigger_d, dma_trigger_q;
   reg [15:0] crc16_d, crc16_q;
   reg [6:0]  crc7_d, crc7_q;

   assign     spi_data_in = (dma_mode_q? 8'hff : sram_d_in[7:0]);
   assign     start = (dma_mode_q? dma_trigger_q : (sram_cs & sram_wstrb[0] & (sram_a[4:2] == 3'b001)));
   assign     sram_wait = 1'b0;

   assign     dma_data = latch_q;
   assign     dma_addr = dma_counter_q;
   assign     dma_strobe = avail_q & dma_mode_q;

   reg [15:0] sram_d;
   assign sram_d_out = sram_d;

   assign crc16_x = crc16_q[15]^spi_crc_in_bit;
   assign crc7_x = crc7_q[6]^spi_crc_out_bit;

   sdcard_spi spi_inst(.sclk(sclk), .mosi(mosi), .miso(miso),
		       .rst(rst), .clk(clk), .data_in(spi_data_in),
		       .data_out(spi_data_out), .divider(divider_q),
		       .bits(bits_q), .start(start), .finished(finished),
		       .crc_in_bit(spi_crc_in_bit), .crc_out_bit(spi_crc_out_bit),
		       .crc_strobe(spi_crc_strobe));

   always @(*) begin
      sram_d = 16'h0000;
      case (sram_a[4:2])
	3'b000: sram_d[7:0] = {avail_q, dma_mode_q, 1'b0, bits_q};
	3'b001: sram_d[7:0] = latch_q;
	3'b010: sram_d[7:0] = divider_q;
	3'b100: sram_d = crc16_q;
	3'b101: sram_d[7:0] = { crc7_q, 1'b1 };
      endcase
   end

   always @(*) begin
      divider_d = divider_q;
      bits_d = bits_q;
      avail_d = avail_q;
      latch_d = latch_q;
      dma_counter_d = dma_counter_q;
      dma_mode_d = dma_mode_q;
      dma_trigger_d = 1'b0;
      crc16_d = crc16_q;
      crc7_d = crc7_q;

      if (sram_cs & sram_wstrb[0]) begin
	 case (sram_a[4:2])
	   3'b000: begin
	      bits_d = sram_d_in[4:0];
	      if (sram_d_in[6]) begin
		 dma_mode_d = 1'b1;
		 dma_trigger_d = 1'b1;
		 dma_counter_d = 9'h000;
	      end else begin
		 dma_mode_d = 1'b0;
	      end
	      avail_d = sram_d_in[7];
	   end
	   3'b001: avail_d = 1'b0;
	   3'b010: divider_d = sram_d_in[7:0];
	   3'b100: crc16_d[7:0] = sram_d_in[7:0];
	   3'b101: crc7_d = sram_d_in[7:1];
	 endcase
      end
      if (sram_cs & sram_wstrb[1]) begin
	 case (sram_a[4:2])
	   3'b100: crc16_d[15:8] = sram_d_in[15:8];
	 endcase // case (sram_a[4:2])
      end

      if (finished) begin
	 avail_d = 1'b1;
	 latch_d = spi_data_out;
      end

      if (avail_q & dma_mode_q) begin
	 avail_d = 1'b0;
	 dma_counter_d = dma_counter_q + 1;
	 if (dma_counter_q == 9'h1ff)
	   dma_mode_d = 1'b0;
	 else
	   dma_trigger_d = 1'b1;
      end

      if (spi_crc_strobe) begin
	 crc16_d = {crc16_q[14:0],1'b0}^{3'b000,crc16_x,6'b000000,crc16_x,4'b0000,crc16_x};
	 crc7_d = {crc7_q[6:0],1'b0}^{3'b000,crc7_x,2'b00,crc7_x};
      end
   end // always @ (*)

   always @(posedge clk) begin
      if (rst) begin
	 divider_q <= 8'h00;
	 bits_q <= 5'h00;
	 avail_q <= 1'b0;
	 latch_q <= 8'h00;
	 dma_counter_q <= 8'h00;
	 dma_mode_q <= 1'b0;
         dma_trigger_q <= 1'b0;
	 crc16_q <= 16'h0000;
	 crc7_q <= 7'h00;
      end else begin
	 divider_q <= divider_d;
	 bits_q <= bits_d;
	 avail_q <= avail_d;
	 latch_q <= latch_d;
	 dma_counter_q <= dma_counter_d;
	 dma_mode_q <= dma_mode_d;
         dma_trigger_q <= dma_trigger_d;
	 crc16_q <= crc16_d;
	 crc7_q <= crc7_d;
      end
   end

endmodule // sdcard_interface
