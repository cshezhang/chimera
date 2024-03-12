`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:13 11/15/2018 
// Design Name: 
// Module Name:    grf 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module grf(
    input clk,
    input reset,
	 input RegWrite,
    input [4:0] RA1,
    input [4:0] RA2,
    input [4:0] WA,
    input [31:0] WD,
	 input [31:0] PC,
    output [31:0] RD1,
    output [31:0] RD2
    );

	reg[31:0] register[31:0];
	integer i;
	initial begin
		for(i=0;i<32;i=i+1) begin
			register[i] <= 0;
		end
	end
	
	//��������߼�����
	assign RD1 = register[RA1];
	assign RD2 = register[RA2];
	
	//дҪ�������ز���
	always@(posedge clk) begin
		if(reset) begin
			for(i=0;i<32;i=i+1) begin
				register[i] <= 0;
			end
		end
		else begin
			if(RegWrite&&WA!=5'b00000) begin  //RegWrite=1����д��WA!=0 ��Ҫ�޸�0�żĴ���
				register[WA] <= WD;
				$display("@%h: $%d <= %h", PC, WA,WD);
			end
		end
	end
endmodule
