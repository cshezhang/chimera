`include "defines.v"
`include "pc_reg.v"
`include "id.v"
`include "regfile.v"
`include "ex.v"
`include "wb.v"
module openmips(
    input wire          clk,
    input wire          rst,

    input wire[`RegBus]         rom_data_i,
    output wire[`RegBus]        rom_addr_o,
    output wire                 rom_ce_o
);
//����IDģ���EXģ��
wire[`AluOpBus] id_aluop;
wire[`AluSelBus] id_alusel;
wire[`RegBus] id_reg1;
wire[`RegBus] id_reg2;
wire          id_wreg;
wire[`RegAddrBus] id_wd;
//����IDģ���Regfileģ��
wire reg1_read;
wire reg2_read;
wire[`RegBus] reg1_data;
wire[`RegBus] reg2_data;
wire[`RegAddrBus] reg1_addr;
wire[`RegAddrBus] reg2_addr;
//����ִ�н׶���hiloģ������������ȡHI��LO�Ĵ���
wire[`RegBus] 	hi;
wire[`RegBus]   lo;
//����EXģ���WBģ��
wire ex_wreg;
wire[`RegAddrBus] ex_wd;
wire[`RegBus] ex_wdata;
wire[`RegBus] ex_hi_o;
wire[`RegBus] ex_lo_o;
wire ex_whilo_o;
//����WBģ���Regfileģ��
wire[`RegAddrBus] wb_wd;
wire wb_wreg;
wire[`RegBus] wb_wdata;
//����WBģ���hilo_regģ��
wire[`RegBus] wb_hi;
wire[`RegBus] wb_lo;
wire wb_whilo;
//pc_reg real
pc_reg pc_reg0(
    .clk(clk),  .rst(rst),  .pc(rom_addr_o),    .ce(rom_ce_o)
);
//ID real
id id0(
    .rst(rst),  
    .pc_i(rom_addr_o), 
    .inst_i(rom_data_i),
    //����Regfileģ�������
    .reg1_data_i(reg1_data),    .reg2_data_i(reg2_data),
    //�͵�Regfileģ�����Ϣ
    .reg1_read_o(reg1_read),    .reg2_read_o(reg2_read),
    .reg1_addr_o(reg1_addr),    .reg2_addr_o(reg2_addr),
    //�͵�EXģ�����Ϣ
    .aluop_o(id_aluop),   .alusel_o(id_alusel),
    .reg1_o(id_reg1),     .reg2_o(id_reg2),
    .wd_o(id_wd),         .wreg_o(id_wreg)
);
//Regfile real
regfile regfile1(
    .clk(clk),
    .rst(rst),
    //��WBģ�鴫����Ϣ
    .we(wb_wreg), .waddr(wb_wd),
    .wdata(wb_wdata),
    //IDģ�鴫������Ϣ
    .re1(reg1_read),    .raddr1(reg1_addr), 
    .rdata1(reg1_data),
    .re2(reg2_read),    .raddr2(reg2_addr),
    .rdata2(reg2_data)
);
//EX real
ex ex0(
    .rst(rst),
    //��IDģ�鴫������Ϣ
    .aluop_i(id_aluop),   .alusel_i(id_alusel),
    .reg1_i(id_reg1),     .reg2_i(id_reg2),
    .wd_i(id_wd),         .wreg_i(id_wreg),
    //��hilo_regģ�鴫������Ϣ
    .hi_i(hi),
	.lo_i(lo),
    //�͵�WBģ�����Ϣ
    .wd_o(ex_wd),         .wreg_o(ex_wreg),
    .wdata_o(ex_wdata),
    .hi_o(ex_hi_o),
	.lo_o(ex_lo_o),
	.whilo_o(ex_whilo_o)

);
//WB real
wb wb0(
    .rst(rst),
    .ex_wd(ex_wd),         .ex_wreg(ex_wreg),
    .ex_wdata(ex_wdata),
    .ex_hi(ex_hi_o),
	.ex_lo(ex_lo_o),
	.ex_whilo(ex_whilo_o),
    .wb_wd(wb_wd),  .wb_wreg(wb_wreg),
    .wb_wdata(wb_wdata),
    .wb_hi(wb_hi),
	.wb_lo(wb_lo),
	.wb_whilo(wb_whilo)
);
hilo_reg hilo_reg0(
	.clk(clk),
	.rst(rst),
	
	//д�˿�
	.we(wb_whilo),
	.hi_i(wb_hi),
	.lo_i(wb_lo),
	
	//���˿�1
	.hi_o(hi),
	.lo_o(lo)	
	);
        
endmodule
