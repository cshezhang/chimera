`timescale 1ns/1ns

/*
MIPI CSI RX to Parallel Bridge (c) by Gaurav Singh www.CircuitValley.com

MIPI CSI RX to Parallel Bridge is licensed under a
Creative Commons Attribution 3.0 Unported License.

You should have received a copy of the license along with this
work.  If not, see <http://creativecommons.org/licenses/by/3.0/>.
*/

/*
Basically a packet Stripper, removes header and footer from packet 
Takes lane aligned data from lane aligner @ mipi byte clock
looks for specific packet types, in this case RAW10bit 0x2B RAW12bit 0x2C and RAW14bit 0x2D , Packet type is also output to be used in next modules
outputs Stripped bytes in exactly the way they were received.
this module also fetch packet length and output_valid is active as long as input data is valid and packet length is still valid.
*/

module mipi_csi_packet_decoder(
								clk_i,
								data_valid_i,
								data_i,
								output_valid_o,
								data_o,
								packet_length_o,
								packet_type_o
								);
								
localparam [7:0]SYNC_BYTE = 8'hB8;
localparam [3:0]LANES = 3'h4;
localparam [7:0]MIPI_CSI_PACKET_10bRAW = 8'h2B;
localparam [7:0]MIPI_CSI_PACKET_12bRAW = 8'h2C;
localparam [7:0]MIPI_CSI_PACKET_14bRAW = 8'h2D;
input clk_i;
input data_valid_i;
input [31:0]data_i;
output reg output_valid_o;
output reg [31:0]data_o;
output reg [15:0]packet_length_o;
output reg [2:0]packet_type_o;

reg [15:0]packet_length_reg;
reg [31:0]data_reg;
reg [31:0]last_data_i;

always @(negedge clk_i)
begin
	if (data_valid_i)
	begin
		last_data_i <= data_reg;
		output_valid_o <= |packet_length_reg;

		if (|packet_length_reg)
		begin
			packet_length_reg <= packet_length_reg - LANES;
		end
		else if (last_data_i[7:0] == SYNC_BYTE && (data_reg[7:0] == MIPI_CSI_PACKET_10bRAW || data_reg[7:0] == MIPI_CSI_PACKET_12bRAW || data_reg[7:0] == MIPI_CSI_PACKET_14bRAW))
		begin
			//TODO: better timings could be achived by just copy whole data_reg into a reg and later take individual values from that reg
			packet_type_o <= data_reg[2:0];
			packet_length_o <= {data_reg[23:16], data_reg[15:8]};
			packet_length_reg <= {data_reg[23:16], data_reg[15:8]};
		end
		else
		begin
			packet_length_reg <= 32'h0;
			packet_type_o <= 3'h0;
			packet_length_o <= 32'h0;
		end
		
	end
	else 
	begin
		packet_type_o <= 3'h0;
		last_data_i <=32'h0;
		packet_length_o <= 32'h0;
		packet_length_reg <= 32'h0;
		output_valid_o <= 1'h0;
	end
end

always @(negedge clk_i)
begin
		data_reg <= data_i;
		data_o <= data_reg;
end

endmodule