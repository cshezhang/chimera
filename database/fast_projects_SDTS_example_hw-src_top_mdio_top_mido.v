//=========================================================================
//MIDO
`timescale 1 ps / 1 ps
module top_mido(
 input reset,
 input clk,
//-----------------------------------mdio �ӿ�---------------------------------
 output  mdc,//������ⲿоƬ��ʱ��
 inout  mdio,
 output [3:0] port_link
);


/************ģ��������**************/
 wire req_enb;//ʹ���źţ�������Ƭѡ�ź�
 wire [1:0] req_op;   //��������Ĳ���ģʽ [1]��ЧΪ����[0]��ЧΪд
 wire [4:0] phy_addr;//phyоƬѡ��
 wire [4:0] reg_addr;//phyоƬ�еļĴ���ѡ��
 wire [15:0] data_phy;
 //--------------���û��ĵ�ǰæ���ź�---------------------
 wire work_flag;//1:���ڹ���״̬   0����������״̬
//-----------------------------------
 wire [15:0] data_sta;
 wire  sta_enb;
 
mdio_mdc mdio_mdc(
.reset(reset),
.clk(clk),
//-----------------------------------mdio �ӿ�---------------------------------
.mdc(mdc),//������ⲿоƬ��ʱ��
.mdio(mdio),
 //--------------�û������Ĳ���ָ����---------------------
.req_enb(req_enb),//ʹ���źţ�������Ƭѡ�ź�
.req_op(req_op),   //��������Ĳ���ģʽ [1]��ЧΪ����[0]��ЧΪд
.phy_addr(phy_addr),//phyоƬѡ��
.reg_addr(reg_addr),//phyоƬ�еļĴ���ѡ��
.data_phy(data_phy),
 //--------------���û��ĵ�ǰæ���ź�---------------------
.work_flag(work_flag),//1:���ڹ���״̬   0����������״̬
//-----------------------------------
.data_sta(data_sta),
.sta_enb(sta_enb)
);

reg_access reg_access (
.clk(clk),
.data_sta(data_sta),
.phy_addr(phy_addr),
.port_link(port_link),
.reg_addr(reg_addr),
.req_enb(req_enb),
.req_op(req_op),
.reset(reset),
.sta_enb(sta_enb),
.work_bit(work_flag)
);

endmodule
