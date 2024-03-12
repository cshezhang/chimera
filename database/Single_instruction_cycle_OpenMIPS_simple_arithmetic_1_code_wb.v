`include "defines.v"
module wb(
	input wire										rst,
	

	//����EX����Ϣ	
	input wire[`RegAddrBus]       ex_wd,
	input wire                    ex_wreg,
	input wire[`RegBus]			  ex_wdata,
	input wire[`RegBus]			  ex_hi,
	input wire[`RegBus]			  ex_lo,
	input wire					  ex_whilo,
	//�͵�Regfile����Ϣ
	output reg[`RegAddrBus]      wb_wd,
	output reg                   wb_wreg,
	output reg[`RegBus]			 wb_wdata,       
	//�͵�hilo_reg����Ϣ
	output reg[`RegBus]			wb_hi,
	output reg[`RegBus]			wb_lo,
	output reg					wb_whilo
	
);

	always @ (*) begin
		if(rst == `RstEnable) begin
			wb_wd <= `NOPRegAddr;
			wb_wreg <= `WriteDisable;
		  	wb_wdata <= `ZeroWord;	
			wb_hi <= `ZeroWord;
		  	wb_lo <= `ZeroWord;
		  	wb_whilo <= `WriteDisable;
		end else begin
			wb_wd <= ex_wd;
			wb_wreg <= ex_wreg;
			wb_wdata <= ex_wdata;
			wb_hi <= ex_hi;
			wb_lo <= ex_lo;
			wb_whilo <= ex_whilo;	
		end    //if
	end      //always
			

endmodule
