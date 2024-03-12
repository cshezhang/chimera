`include "defines.v"
module pc_reg(
	input wire					clk,
	input wire					rst,
	
	//��������׶�IDģ�����Ϣ
	input wire					branch_flag_i, //�Ƿ���ת��
	input wire[`RegBus] 		branch_target_address_i,//ת�Ƶ���Ŀ���ַ
	
	output reg[`InstAddrBus]    pc,
	output reg					ce
);


always @(posedge clk)begin
	if(rst==`RstEnable) begin
		ce<=`ChipDisable;		//��λʱָ��洢������
	end
	else begin
		ce<=`ChipEnable;		//��λ����ʹ��ָ��洢��
	end
end

always @(posedge clk)begin
	if(ce==`ChipDisable)begin
		pc<=32'h00000000;		//ָ��洢������ʱ��pcΪ0
	end
	else if(branch_flag_i == `Branch)begin
		pc <= branch_target_address_i;
	end
	else begin
		pc<=pc+4'h4;			//ָ��洢��ʹ��ʱ��pc=pc+4
	end
end

endmodule