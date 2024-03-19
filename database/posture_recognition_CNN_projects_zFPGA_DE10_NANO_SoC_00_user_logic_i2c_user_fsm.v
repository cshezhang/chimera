`include "i2c_macro.inc"
module i2c_user_fsm(
	input 	wire 		sys_clk, sys_rst_n,
	// i2c �ӿ�
	output				i2c_sck,
	inout				i2c_sda,
	// �û��ӿ�(slave & �Ĵ�����ַ)
	input	[`I2C_SLV_ADDR_WIDTH-1:0]	i2c_slave,	// slave �ĵ�ַ
	input	[`I2C_REG_ADDR_WIDTH-1:0]	i2c_reg_addr,	// ��Ҫ�����ļĴ�����ַ
	// ��д
	output	[`I2C_REG_DATA_WIDTH-1:0]	i2c_rdata,		// ��ȡ����
	output								i2c_rdata_valid,	 // ��ȡ������Ч
	input								i2c_read_req,	// ��ȡ����
	input	[`I2C_REG_DATA_WIDTH-1:0]	i2c_wdata,		// д�������
	input								i2c_write_req,	// д������
	output								i2c_fail,	// ����ʧ��
	output								i2c_ready,	// ���У������д����
	output								i2c_wait_ack,	// ���ڵȴ�ACK�ź�
	output								i2c_wait_sda,	// ���ڵȴ�SDA�ź�
	input								i2c_as_sccb		// ��ʾ��i2c����sccb��
	);
	
	reg		[`I2C_CLK_BASE_COUNT-1:0]	i2c_base_cnt;	// ����������
	// ����������
	reg		i2c_base_cnt_clr_n;	// ����������������ź� // �����FSM�ڲ�ͬ״̬����ת�����������ź�
	always @(posedge sys_clk)
		if(!sys_rst_n || !i2c_base_cnt_clr_n)
			i2c_base_cnt <= 0;
		else if(i2c_base_cnt >= (`I2C_SCK_FREQ_FACTR-1))
			i2c_base_cnt <= 0;
		else
			i2c_base_cnt <= i2c_base_cnt + 1;
	
	// 	�ĸ�״̬��FSM����Ϊ����
	reg		[2:0]	cstate;
	parameter		IDLE = 0;	// ����״̬
	parameter		READ = 1;	// ��ȡ״̬
	parameter		WRITE = 2;	// д��״̬
	parameter		FINISH = 3;	// �������״̬
	parameter		FAIL = 4;	// ����ʧ��
	// ״̬����ת
	always @(posedge sys_clk)
		if(!sys_rst_n)
			init_system_task;
		else
		begin
			case(cstate)
				IDLE: begin
					// ������յ���ȡ������ô���������������Ȼ����ת��READ
					if(i2c_read_req)
						jump_to_read_task;
					// ������յ�д��������ô��ת��WIRTE
					else if(i2c_write_req)
						jump_to_write_task;
					else
						init_system_task;
				end
				// ��д����
				READ: begin
					do_read_task;
				end
				WRITE: begin
					do_write_task;
				end				
				// ��������
				FINISH: begin
					init_system_task;
				end
				// ʧ��
				FAIL: begin
					do_fail_task;
				end
				// ����ǿ�н���FAIL�׶Σ�ǿ�ƽ�������޴��ĻỰ
				default: begin
					do_fail_task;
				end
			endcase		
		end
/////////////////////////////////////////////////////////
// ��Ҫ��һЩ���������ж�״̬��ת
reg		[9:0]	ack_delay_cnt;	// �ȴ�ACK�źŵ���ʱ������
reg				ack_signal_cap;	// ��׽��ACK�ź�
reg		[9:0]	rw_state_in_cnt;	// ״̬�ڼ���
reg		[4:0]	four_phase_cnt;	// ÿ��bit��������λ������
// I2C�Ĵ���ʱ�Ӻʹ�������
reg				i2c_sck_reg;
reg				i2c_sda_reg;
// slave��ַ��register��ַ
reg		[`I2C_SLV_ADDR_WIDTH-1:0]	i2c_slave_reg;	// slave �ĵ�ַ
reg		[`I2C_SLV_ADDR_WIDTH-1:0]	i2c_slave_reg2;	// slave �ĵ�ַ2
reg		[`I2C_REG_ADDR_WIDTH-1:0]	i2c_reg_addr_reg;	// ��Ҫ�����ļĴ�����ַ
reg		[`I2C_REG_DATA_WIDTH-1:0]	i2c_reg_data_reg;	// ��Ҫ�����ļĴ�������
// ״̬�����滹ҪǶ��״̬��
reg		[4:0]	rw_state;	// ��д״̬����������
parameter		RW_IDLE = 15;	// ����״̬
parameter		RW_START = 0;	// start״̬
parameter		RW_DEV_ADDR = 1;	// device��ַ��LSB��R/W��д��־λ��
parameter		RW_ACK_START = 2;	// �ȴ�START+DEV_ADDR --> ACK�źŵ�״̬
parameter		RW_REG_ADDR = 3;	// register �ĵ�ַ
parameter		RW_ACK_REG = 4;	// �ȴ� REG_ADDR --> ACK�źŵ�״̬
parameter		RW_IDLE2 = 5;	// ��Զ�ȡ����Ҫ�ڶ��׶ε�START�ź�
parameter		RW_START2 = 6;	// ��Զ�ȡ����Ҫ�ڶ��׶ε�START�ź�
parameter		RW_DEV_ADDR2 = 7;	// ��Զ�ȡ����Ҫ�ڶ��׶ε�DEV_ADDR����ʱ����READ���
parameter		RW_ACK_ADDR2 = 8;	// ����2�׶ε�ַ�����ACK����
parameter		RW_DATA = 9;	// ���ݽ����׶Σ���д��
parameter		RW_ACK_DATA = 10;	// �ȴ�  ���ݽ����׶Σ���д�� --> ACK�źŵ�״̬
parameter		RW_STOP = 11;	// ֹͣ״̬
parameter		RW_FAIL = 12;	// �ҵ��ˣ��ӻ�δ��Ӧ��
parameter		RW_NO_ACK = 13;	// ��ȡ�����У�master��Ҫ����һ��no_ack�ź�
parameter		RW_STOP_SCCB = 14; // ��SCCBЭ���У�2��λд��֮����ҪSTOPһ�£�������2��λ�Ķ�ȡ
///////////////////////////////////////////
// ��������
// ϵͳ��λ����
task init_system_task;
begin
	cstate <= IDLE;
	ack_delay_cnt <= 0;	// ����ACK�ȴ�������
	i2c_base_cnt_clr_n <= 1;	// ��Ҫ���������
	rw_state <= RW_IDLE;	// ����
	rw_state_in_cnt <= 0;
	// ����ʱ�Ӻ�������
	i2c_sck_reg <= 1;
	i2c_sda_reg <= 1;
	// �������λ������
	four_phase_cnt <= 0;
	// ���ACK��׽�ź�
	ack_signal_cap <= 0;
end
endtask
/////////////////////////////////////////////////////////
// ������յ���ȡ������ô���������������Ȼ����ת��READ
task jump_to_read_task;
begin
	cstate <= READ;
	i2c_base_cnt_clr_n <= 0;
	ack_delay_cnt <= 0;	// ����ACK�ȴ�������
	rw_state <= RW_IDLE;	// ����
	rw_state_in_cnt <= 0;
	// ����ʱ�Ӻ�������
	i2c_sck_reg <= 1;
	i2c_sda_reg <= 1;
	// ����slave �ĵ�ַ & ��Ҫ�����ļĴ�����ַ
	i2c_slave_reg <= i2c_slave+`I2C_WRITE_FLAG;
	i2c_reg_addr_reg <= i2c_reg_addr;
	// 2�׶εĵ�ַ����
	i2c_slave_reg2 <= i2c_slave+`I2C_READ_FLAG;
	// �������λ������
	four_phase_cnt <= 0;
	// ���ACK��׽�ź�
	ack_signal_cap <= 0;
end
endtask
// ������յ�д��������ô���������������Ȼ����ת��WRITE
task jump_to_write_task;
begin
	cstate <= WRITE;
	i2c_base_cnt_clr_n <= 0;
	ack_delay_cnt <= 0;	// ����ACK�ȴ�������
	rw_state <= RW_IDLE;	// ����
	rw_state_in_cnt <= 0;
	// ����ʱ�Ӻ�������
	i2c_sck_reg <= 1;
	i2c_sda_reg <= 1;
	// ����slave �ĵ�ַ & ��Ҫ�����ļĴ�����ַ & ��Ҫд��ļĴ�������
	i2c_slave_reg <= i2c_slave+`I2C_WRITE_FLAG;
	i2c_reg_addr_reg <= i2c_reg_addr;
	i2c_reg_data_reg <= i2c_wdata;
	// �������λ������
	four_phase_cnt <= 0;
	// ���ACK��׽�ź�
	ack_signal_cap <= 0;
end
endtask
///////////////////////////////////////////////////////////////////
reg		[9:0]	i2c_bit_cnt;	// bit������
reg		[`I2C_REG_DATA_WIDTH-1:0]	i2c_rdata_shift;	// ��λ�Ĵ���
// ��ȡ����
task do_read_task;
begin
	i2c_base_cnt_clr_n <= 1;	// ���������������������ź�
	if(i2c_base_cnt==(`I2C_SCK_FREQ_FACTR-1))
	begin
		case(rw_state)
			RW_IDLE: begin 
				if(four_phase_cnt==0)
					i2c_sck_reg <= 1;	// IDLE��ʱ��ʱ����Զ���Ǹߵ�λ
				////////////////////////////
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_START;	// ��������
					rw_state_in_cnt <= 0;
					// ���������ߣ�����START�ź�
					i2c_sda_reg <= 0;
					// ���bit������
					i2c_bit_cnt <= 0;
					// �������λ������
					four_phase_cnt <= 0;
				end
				else
					four_phase_cnt <= four_phase_cnt + 1;
			end
			RW_START: begin
				// sck�ȵ���������ֹ���ֳ�ͻ��
				if(four_phase_cnt==2)
					i2c_sck_reg <= 0;
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_DEV_ADDR;	// ���������豸��ַ
					rw_state_in_cnt <= 0;
					// ����slave��ַд�� // ���ݴ���
					i2c_sda_reg <= i2c_slave_reg[`I2C_SLV_ADDR_WIDTH-1];
					i2c_slave_reg <= {i2c_slave_reg[`I2C_SLV_ADDR_WIDTH-2:0], 1'B1};
					// ���bit������
					i2c_bit_cnt <= 0;
					// �������λ������
					four_phase_cnt <= 0;
				end
				else
					four_phase_cnt <= four_phase_cnt + 1;				
			end
			RW_DEV_ADDR: begin
				// ʱ�ӷ�ת
				if(four_phase_cnt==0 || four_phase_cnt==2)
					i2c_sck_reg <= ~i2c_sck_reg;
				// Ȼ����4��λ����Ĵ����߼�
				if(four_phase_cnt==3)
				begin
					if(i2c_bit_cnt>=(`I2C_SLV_ADDR_WIDTH-1))
					begin
						// ���������ݺ󣬾�Ҫ����ACK�׶�
						rw_state <= RW_ACK_START;
						// ���ACK��׽�ź�
						ack_signal_cap <= 0;
						ack_delay_cnt <= 0;
					end
					else 
					begin
						// ������+1�������������
						i2c_bit_cnt <= i2c_bit_cnt+1;
						i2c_sda_reg <= i2c_slave_reg[`I2C_SLV_ADDR_WIDTH-1];
						i2c_slave_reg <= {i2c_slave_reg[`I2C_SLV_ADDR_WIDTH-2:0], 1'B1};			
					end
					// �������λ������
					four_phase_cnt <= 0;
				end	
				// 4��λ�����������ۼӲ���
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// �ȴ�slave��Ӧ
			RW_ACK_START: begin
				// SCLK����Ϊ�ߣ�ֱ������ACK��Ӧ�����߳�ʱ
				// ����˵4��λ�������Ῠ��1��λ�ã�һֱ��SDA��Ӧ�����߳�ʱ
				// �����ʱ�ۼӳ��������ˣ���Ҫ��������Ϊ�ӻ��ҵ���
				if(ack_delay_cnt>=`I2C_ACK_TOLR_DELAY)
				begin
					cstate <= FAIL;
					rw_state <= RW_FAIL;
					four_phase_cnt <= 0;
					ack_delay_cnt <= 0;
				end
				// ����û�г�ʱ�����Լ����ȴ� & ��ת
				else
				begin
					// ��ʱ���������ۼ�
					ack_delay_cnt <= ack_delay_cnt+1;
					// ʱ�ӷ�ת
					if(four_phase_cnt==0 || four_phase_cnt==2)
						i2c_sck_reg <= ~i2c_sck_reg;
					// ��׽�ӻ���Ӧ
					else if(four_phase_cnt==1)
						ack_signal_cap <= ~i2c_sda;
					// �������һ����߼�
					if(four_phase_cnt==3)
					begin
						// �������λ������
						four_phase_cnt <= 0;
						// ״̬��ת��
						if(ack_signal_cap==1 || i2c_as_sccb)
						begin
							// ���յ�ACK�źţ�����״̬��ת
							rw_state <= RW_REG_ADDR;
							// ��������
							i2c_sda_reg <= i2c_reg_addr_reg[`I2C_REG_ADDR_WIDTH-1];
							i2c_reg_addr_reg <= {i2c_reg_addr_reg[`I2C_REG_ADDR_WIDTH-2:0], 1'B1};	
							// ���ACK��׽�ź�
							ack_signal_cap <= 0;
							// ���bit������
							i2c_bit_cnt <= 0;
						end
					end
					// 4��λ�����������ۼӲ���
					else if(four_phase_cnt!=1)
						four_phase_cnt <= four_phase_cnt + 1;
					else if(four_phase_cnt==1 && (!i2c_sda||i2c_as_sccb))
						four_phase_cnt <= four_phase_cnt + 1;
				end
			end
			// Ȼ���Ǵ���register��ַ
			RW_REG_ADDR: begin
				// ʱ�ӷ�ת
				if(four_phase_cnt==0 || four_phase_cnt==2)
					i2c_sck_reg <= ~i2c_sck_reg;
				// Ȼ����4��λ����Ĵ����߼�
				if(four_phase_cnt==3)
				begin
					if(i2c_bit_cnt>=(`I2C_REG_ADDR_WIDTH-1))
					begin
						// ���������ݺ󣬾�Ҫ����ACK�׶�
						rw_state <= RW_ACK_REG;
						// ���ACK��׽�ź�
						ack_signal_cap <= 0;
						ack_delay_cnt <= 0;
					end
					else 
					begin
						// ������+1�������������
						i2c_bit_cnt <= i2c_bit_cnt+1;
						i2c_sda_reg <= i2c_reg_addr_reg[`I2C_REG_ADDR_WIDTH-1];
						i2c_reg_addr_reg <= {i2c_reg_addr_reg[`I2C_REG_ADDR_WIDTH-2:0], 1'B1};	
					end
					// �������λ������
					four_phase_cnt <= 0;
				end	
				// 4��λ�����������ۼӲ���
				else				
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// �ȴ�slave��Ӧ
			RW_ACK_REG: begin
				// SCLK����Ϊ�ߣ�ֱ������ACK��Ӧ�����߳�ʱ
				// ����˵4��λ�������Ῠ��1��λ�ã�һֱ��SDA��Ӧ�����߳�ʱ
				// �����ʱ�ۼӳ��������ˣ���Ҫ��������Ϊ�ӻ��ҵ���
				if(ack_delay_cnt>=`I2C_ACK_TOLR_DELAY)
				begin
					cstate <= FAIL;
					rw_state <= RW_FAIL;
					four_phase_cnt <= 0;
					ack_delay_cnt <= 0;
				end
				else
				begin
					// ��ʱ���������ۼ�
					ack_delay_cnt <= ack_delay_cnt+1;
					// ʱ�ӷ�ת
					if(four_phase_cnt==0 || four_phase_cnt==2)
						i2c_sck_reg <= ~i2c_sck_reg;
					// ��׽�ӻ���Ӧ
					else if(four_phase_cnt==1)
						ack_signal_cap <= ~i2c_sda;
					// �������һ����߼�
					if(four_phase_cnt==3)
					begin
						// �������λ������
						four_phase_cnt <= 0;
						// ״̬��ת��
						if(ack_signal_cap==1 && !i2c_as_sccb)
						begin
							// ���յ�ACK�źţ�����״̬��ת�����뵽2�׶ε�RW_IDLE2,��������START�ź�
							rw_state <= RW_IDLE2;
							// ���������ߣ�����START�ź�
							//i2c_sck_reg <= 1; //ʱ���Ȳ�Ҫ��ת������һ��state��ʱ���ڷ�ת
							i2c_sda_reg <= 1;
							// ���ACK��׽�ź�
							ack_signal_cap <= 0;
							// ���bit������
							i2c_bit_cnt <= 0;
						end
						// ���������SCCB����Ҫ��STOPһ��
						else if(i2c_as_sccb)
						begin
							// ���յ�ACK�źţ�����״̬��ת�����뵽2�׶ε�RW_IDLE2,��������START�ź�
							rw_state <= RW_STOP_SCCB;
							// ���������ߣ�����START�ź�
							//i2c_sck_reg <= 1; //ʱ���Ȳ�Ҫ��ת������һ��state��ʱ���ڷ�ת
							i2c_sda_reg <= 0;
							// ���ACK��׽�ź�
							ack_signal_cap <= 0;
							// ���bit������
							i2c_bit_cnt <= 0;
						end
					end
					// 4��λ�����������ۼӲ���
					else if(four_phase_cnt!=1)
						four_phase_cnt <= four_phase_cnt + 1;
					else if(four_phase_cnt==1 && (!i2c_sda || i2c_as_sccb))
						four_phase_cnt <= four_phase_cnt + 1;
				end
			end
			// SCCB��Ҫһ��STOP�׶�
			RW_STOP_SCCB: begin
				// sck�ȷ���ȥ������һ��STOP��
				if(four_phase_cnt==1)
					i2c_sck_reg <= 1;
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_IDLE2;
					rw_state_in_cnt <= 0;
					i2c_sda_reg <= 1;
					// ���bit������
					i2c_bit_cnt <= 0;
					// �������λ������
					four_phase_cnt <= 0;
				end
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// �ص�I2C
			RW_IDLE2: begin 
				if(four_phase_cnt==0)
					i2c_sck_reg <= 1;	// IDLE��ʱ��ʱ����Զ���Ǹߵ�λ
				////////////////////////////
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_START2;	// ��������
					rw_state_in_cnt <= 0;
					// ���������ߣ�����START�ź�
					i2c_sda_reg <= 0;
					// ���bit������
					i2c_bit_cnt <= 0;
					// �������λ������
					four_phase_cnt <= 0;
				end
				else
					four_phase_cnt <= four_phase_cnt + 1;
			end
			// �ڶ��׶ε�START���
			RW_START2: begin
				// sck�ȵ���������ֹ���ֳ�ͻ��
				if(four_phase_cnt==2)
					i2c_sck_reg <= 0;
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_DEV_ADDR2;	// ���������豸��ַ
					rw_state_in_cnt <= 0;
					// ����slave��ַд�� // ���ݴ���
					i2c_sda_reg <= i2c_slave_reg2[`I2C_SLV_ADDR_WIDTH-1];
					i2c_slave_reg2 <= {i2c_slave_reg2[`I2C_SLV_ADDR_WIDTH-2:0], 1'B1};
					// ���bit������
					i2c_bit_cnt <= 0;
					// �������λ������
					four_phase_cnt <= 0;
				end
				else
					four_phase_cnt <= four_phase_cnt + 1;				
			end
			// Ȼ���Ǵ���2�׶ε�slave��ַ
			RW_DEV_ADDR2: begin
				// ʱ�ӷ�ת
				if(four_phase_cnt==0 || four_phase_cnt==2)
					i2c_sck_reg <= ~i2c_sck_reg;
				// Ȼ����4��λ����Ĵ����߼�
				if(four_phase_cnt==3)
				begin
					if(i2c_bit_cnt>=(`I2C_REG_ADDR_WIDTH-1))
					begin
						// ���������ݺ󣬾�Ҫ����ACK�׶�
						rw_state <= RW_ACK_ADDR2;
						// ���ACK��׽�ź�
						ack_signal_cap <= 0;
						ack_delay_cnt <= 0;
					end
					else 
					begin
						// ������+1�������������
						i2c_bit_cnt <= i2c_bit_cnt+1;
						i2c_sda_reg <= i2c_slave_reg2[`I2C_REG_ADDR_WIDTH-1];
						i2c_slave_reg2 <= {i2c_slave_reg2[`I2C_REG_ADDR_WIDTH-2:0], 1'B1};	
					end
					// �������λ������
					four_phase_cnt <= 0;
				end	
				// 4��λ�����������ۼӲ���
				else				
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// �ȴ�slave��Ӧ
			RW_ACK_ADDR2: begin
				// SCLK����Ϊ�ߣ�ֱ������ACK��Ӧ�����߳�ʱ
				// ����˵4��λ�������Ῠ��1��λ�ã�һֱ��SDA��Ӧ�����߳�ʱ
				// �����ʱ�ۼӳ��������ˣ���Ҫ��������Ϊ�ӻ��ҵ���
				if(ack_delay_cnt>=`I2C_ACK_TOLR_DELAY)
				begin
					cstate <= FAIL;
					rw_state <= RW_FAIL;
					four_phase_cnt <= 0;
					ack_delay_cnt <= 0;
				end
				else
				begin
					// ��ʱ���������ۼ�
					ack_delay_cnt <= ack_delay_cnt+1;
					// ʱ�ӷ�ת
					if(four_phase_cnt==0 || four_phase_cnt==2)
						i2c_sck_reg <= ~i2c_sck_reg;
					// ��׽�ӻ���Ӧ
					else if(four_phase_cnt==1)
						ack_signal_cap <= ~i2c_sda;
					// �������һ����߼�
					if(four_phase_cnt==3)
					begin
						// �������λ������
						four_phase_cnt <= 0;
						// ״̬��ת��
						if(ack_signal_cap==1 || i2c_as_sccb)
						begin
							// ���յ�ACK�źţ�����״̬��ת�����뵽2�׶εĵ�ַ����
							rw_state <= RW_DATA;
							// ��������
							i2c_sda_reg <= i2c_slave_reg2[`I2C_REG_ADDR_WIDTH-1];
							i2c_slave_reg2 <= {i2c_slave_reg2[`I2C_REG_ADDR_WIDTH-2:0], 1'B1};	
							// ���ACK��׽�ź�
							ack_signal_cap <= 0;
							// ���bit������
							i2c_bit_cnt <= 0;
						end
					end
					// 4��λ�����������ۼӲ���
					else if(four_phase_cnt!=1)
						four_phase_cnt <= four_phase_cnt + 1;
					else if(four_phase_cnt==1 && (!i2c_sda || i2c_as_sccb))
						four_phase_cnt <= four_phase_cnt + 1;
				end
			end
			// ��ȡ����
			RW_DATA: begin
				// ʱ�ӷ�ת
				if(four_phase_cnt==0 || four_phase_cnt==2)
					i2c_sck_reg <= ~i2c_sck_reg;
				//////////////
				// ��������
				else if(four_phase_cnt==1)
					i2c_rdata_shift <= {i2c_rdata_shift[`I2C_REG_DATA_WIDTH-2:0], i2c_sda};
				// Ȼ����4��λ����Ĵ����߼�
				if(four_phase_cnt==3)
				begin
					// ������ܹ���
					if(i2c_bit_cnt==(`I2C_REG_DATA_WIDTH-1))
					begin
						rw_state <= RW_NO_ACK;
						i2c_sda_reg <= 1;		// no-ack�źţ��ж�i2c�����н�
						i2c_bit_cnt <= 0;
					end
					// ������Ҫ��������
					i2c_bit_cnt <= i2c_bit_cnt+1;
					// �������λ������
					four_phase_cnt <= 0;
				end
				// 4��λ�����������ۼӲ���
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// ����no_ack�ź�
			RW_NO_ACK: begin
				// ʱ�ӷ�ת
				if(four_phase_cnt==0 || four_phase_cnt==2)
					i2c_sck_reg <= ~i2c_sck_reg;
				// Ȼ����4��λ����Ĵ����߼�
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_STOP;
					// ����STOP�ź���
					i2c_sda_reg <= 0;
					// i2c_sck_reg <= 1; ʱ���Ȳ�Ҫ��ת������һ��state��ʱ���ڷ�ת
					// �������λ������
					four_phase_cnt <= 0;
				end
				// 4��λ�����������ۼӲ���
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// ����STOP�ź�
			RW_STOP: begin
				if(four_phase_cnt==0)
					i2c_sck_reg <= 1;	// IDLE��ʱ��ʱ����Զ���Ǹߵ�λ
				//////////////////////////////
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_IDLE;
					i2c_sda_reg <= 1;
					//i2c_sck_reg <= 1;	
					// �������λ������
					four_phase_cnt <= 0;
					// �ⲿ״̬��ת��ȥ����FINISH
					cstate <= FINISH;
				end
				// 4��λ�����������ۼӲ���
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// ����ǿ������FAIL
			default: begin
				if(four_phase_cnt==3)
				begin
					cstate <= FAIL;
					rw_state <= RW_FAIL;
					four_phase_cnt <= 0;
				end
				// 4��λ�����������ۼӲ���
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end
		endcase
	end
end
endtask
//////////////////////////////////////////////////////////////////
// д�����
task do_write_task;
begin
	i2c_base_cnt_clr_n <= 1;	// ���������������������ź�
	if(i2c_base_cnt==(`I2C_SCK_FREQ_FACTR-1))
	begin
		case(rw_state)
			RW_IDLE: begin 
				if(four_phase_cnt==0)
					i2c_sck_reg <= 1;	// IDLE��ʱ��ʱ����Զ���Ǹߵ�λ
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_START;	// ��������
					rw_state_in_cnt <= 0;
					// ���������ߣ�����START�ź�
					//i2c_sck_reg <= 1;
					i2c_sda_reg <= 0;
					// ���bit������
					i2c_bit_cnt <= 0;
					// �������λ������
					four_phase_cnt <= 0;
				end
				else
					four_phase_cnt <= four_phase_cnt + 1;
			end
			RW_START: begin
				// clock�ȵ���������ֹ��ͻ��
				if(four_phase_cnt==2)
					i2c_sck_reg <= 0;
				////////////////////////
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_DEV_ADDR;	// ���������豸��ַ
					rw_state_in_cnt <= 0;
					// ����slave��ַд�� // ���ݴ���
					i2c_sda_reg <= i2c_slave_reg[`I2C_SLV_ADDR_WIDTH-1];
					i2c_slave_reg <= {i2c_slave_reg[`I2C_SLV_ADDR_WIDTH-2:0], 1'B1};
					// ���bit������
					i2c_bit_cnt <= 0;
					// �������λ������
					four_phase_cnt <= 0;
				end
				else
					four_phase_cnt <= four_phase_cnt + 1;				
			end
			RW_DEV_ADDR: begin
				// ʱ�ӷ�ת
				if(four_phase_cnt==0 || four_phase_cnt==2)
					i2c_sck_reg <= ~i2c_sck_reg;
				// Ȼ����4��λ����Ĵ����߼�
				if(four_phase_cnt==3)
				begin
					if(i2c_bit_cnt>=(`I2C_SLV_ADDR_WIDTH-1))
					begin
						// ���������ݺ󣬾�Ҫ����ACK�׶�
						rw_state <= RW_ACK_START;
						// ���ACK��׽�ź�
						ack_signal_cap <= 0;
						ack_delay_cnt <= 0;
					end
					else 
					begin
						// ������+1�������������
						i2c_bit_cnt <= i2c_bit_cnt+1;
						i2c_sda_reg <= i2c_slave_reg[`I2C_SLV_ADDR_WIDTH-1];
						i2c_slave_reg <= {i2c_slave_reg[`I2C_SLV_ADDR_WIDTH-2:0], 1'B1};			
					end
					// �������λ������
					four_phase_cnt <= 0;
				end	
				// 4��λ�����������ۼӲ���
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// �ȴ�slave��Ӧ
			RW_ACK_START: begin
				// SCLK����Ϊ�ߣ�ֱ������ACK��Ӧ�����߳�ʱ
				// ����˵4��λ�������Ῠ��1��λ�ã�һֱ��SDA��Ӧ�����߳�ʱ
				// �����ʱ�ۼӳ��������ˣ���Ҫ��������Ϊ�ӻ��ҵ���
				if(ack_delay_cnt>=`I2C_ACK_TOLR_DELAY)
				begin
					cstate <= FAIL;
					rw_state <= RW_FAIL;
					four_phase_cnt <= 0;
				end
				else
				begin
					// ��ʱ���������ۼ�
					ack_delay_cnt <= ack_delay_cnt+1;
					// ʱ�ӷ�ת
					if(four_phase_cnt==0 || four_phase_cnt==2)
						i2c_sck_reg <= ~i2c_sck_reg;
					// ��׽�ӻ���Ӧ
					else if(four_phase_cnt==1)
					ack_signal_cap <= ~i2c_sda;
					// �������һ����߼�
					if(four_phase_cnt==3)
					begin
						// �������λ������
						four_phase_cnt <= 0;
						// ״̬��ת��
						if(ack_signal_cap==1 || i2c_as_sccb)
						begin
							// ���յ�ACK�źţ�����״̬��ת
							rw_state <= RW_REG_ADDR;
							// ��������
							i2c_sda_reg <= i2c_reg_addr_reg[`I2C_REG_ADDR_WIDTH-1];
							i2c_reg_addr_reg <= {i2c_reg_addr_reg[`I2C_REG_ADDR_WIDTH-2:0], 1'B1};	
							// ���ACK��׽�ź�
							ack_signal_cap <= 0;
							// ���bit������
							i2c_bit_cnt <= 0;
						end
					end
					// 4��λ�����������ۼӲ���
					else if(four_phase_cnt!=1)
						four_phase_cnt <= four_phase_cnt + 1;
					else if(four_phase_cnt==1 && (!i2c_sda || i2c_as_sccb))
						four_phase_cnt <= four_phase_cnt + 1;		
				end
			end
			// Ȼ���Ǵ���register��ַ
			RW_REG_ADDR: begin
				// ʱ�ӷ�ת
				if(four_phase_cnt==0 || four_phase_cnt==2)
					i2c_sck_reg <= ~i2c_sck_reg;
				// Ȼ����4��λ����Ĵ����߼�
				if(four_phase_cnt==3)
				begin
					if(i2c_bit_cnt>=(`I2C_REG_ADDR_WIDTH-1))
					begin
						// ���������ݺ󣬾�Ҫ����ACK�׶�
						rw_state <= RW_ACK_REG;
						// ���ACK��׽�ź�
						ack_signal_cap <= 0;
						ack_delay_cnt <= 0;
					end
					else 
					begin
						// ������+1�������������
						i2c_bit_cnt <= i2c_bit_cnt+1;
						i2c_sda_reg <= i2c_reg_addr_reg[`I2C_REG_ADDR_WIDTH-1];
						i2c_reg_addr_reg <= {i2c_reg_addr_reg[`I2C_REG_ADDR_WIDTH-2:0], 1'B1};	
					end
					// �������λ������
					four_phase_cnt <= 0;
				end	
				// 4��λ�����������ۼӲ���
				else				
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// �ȴ�slave��Ӧ
			RW_ACK_REG: begin
				// SCLK����Ϊ�ߣ�ֱ������ACK��Ӧ�����߳�ʱ
				// ����˵4��λ�������Ῠ��1��λ�ã�һֱ��SDA��Ӧ�����߳�ʱ
				// �����ʱ�ۼӳ��������ˣ���Ҫ��������Ϊ�ӻ��ҵ���
				if(ack_delay_cnt>=`I2C_ACK_TOLR_DELAY)
				begin
					cstate <= FAIL;
					rw_state <= RW_FAIL;
					four_phase_cnt <= 0;
				end
				else
				begin
					// ��ʱ���������ۼ�
					ack_delay_cnt <= ack_delay_cnt+1;
					// ʱ�ӷ�ת
					if(four_phase_cnt==0 || four_phase_cnt==2)
						i2c_sck_reg <= ~i2c_sck_reg;
					// ��׽�ӻ���Ӧ
					else if(four_phase_cnt==1)
						ack_signal_cap <= ~i2c_sda;
					// �������һ����߼�
					if(four_phase_cnt==3)
					begin
						// �������λ������
						four_phase_cnt <= 0;
						// ״̬��ת��
						if(ack_signal_cap==1 || i2c_as_sccb)
						begin
							// ���յ�ACK�źţ�����״̬��ת
							rw_state <= RW_DATA;
							// ��������
							i2c_sda_reg <= i2c_reg_data_reg[`I2C_REG_DATA_WIDTH-1];
							i2c_reg_data_reg <= {i2c_reg_data_reg[`I2C_REG_DATA_WIDTH-2:0], 1'B1};	
							// ���ACK��׽�ź�
							ack_signal_cap <= 0;
							// ���bit������
							i2c_bit_cnt <= 0;
						end
					end
					// 4��λ�����������ۼӲ���
					else if(four_phase_cnt!=1)
						four_phase_cnt <= four_phase_cnt + 1;
					else if(four_phase_cnt==1 && (!i2c_sda || i2c_as_sccb))
						four_phase_cnt <= four_phase_cnt + 1;	
				end
			end
			// д������
			RW_DATA: begin
				// ʱ�ӷ�ת
				if(four_phase_cnt==0 || four_phase_cnt==2)
					i2c_sck_reg <= ~i2c_sck_reg;
				//////////////
				// Ȼ����4��λ����Ĵ����߼�
				if(four_phase_cnt==3)
				begin
					// ������͹���
					if(i2c_bit_cnt==(`I2C_REG_DATA_WIDTH-1))
					begin
						rw_state <= RW_ACK_DATA;
						// ���ACK��׽�ź�
						ack_signal_cap <= 0;
						// ���ACK �ȴ���ʱ������
						ack_delay_cnt <= 0;
					end
					// ������Ҫ��������
					i2c_bit_cnt <= i2c_bit_cnt+1;
					// ��������
					i2c_sda_reg <= i2c_reg_data_reg[`I2C_REG_DATA_WIDTH-1];
					i2c_reg_data_reg <= {i2c_reg_data_reg[`I2C_REG_DATA_WIDTH-2:0], 1'B1};	
					// �������λ������
					four_phase_cnt <= 0;
				end
				// 4��λ�����������ۼӲ���
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end
			// �ȴ�slave��ack�ź�
			RW_ACK_DATA: begin	
				// SCLK����Ϊ�ߣ�ֱ������ACK��Ӧ�����߳�ʱ
				// ����˵4��λ�������Ῠ��1��λ�ã�һֱ��SDA��Ӧ�����߳�ʱ
				// �����ʱ�ۼӳ��������ˣ���Ҫ��������Ϊ�ӻ��ҵ���
				if(ack_delay_cnt>=`I2C_ACK_TOLR_DELAY)
				begin
					cstate <= FAIL;
					rw_state <= RW_FAIL;
					four_phase_cnt <= 0;
				end
				else
				begin
					// ��ʱ���������ۼ�
					ack_delay_cnt <= ack_delay_cnt+1;
					// ʱ�ӷ�ת
					if(four_phase_cnt==0 || four_phase_cnt==2)
						i2c_sck_reg <= ~i2c_sck_reg;
					// ��׽�ӻ���Ӧ
					else if(four_phase_cnt==1)
						ack_signal_cap <= ~i2c_sda;
					// �������һ����߼�
					if(four_phase_cnt==3)
					begin
						// �������λ������
						four_phase_cnt <= 0;
						// ״̬��ת��
						if(ack_signal_cap==1 || i2c_as_sccb)
						begin
							// ���յ�ACK�źţ�����״̬��ת
							rw_state <= RW_STOP;
							// ����STOP�źţ�
							i2c_sda_reg <= 0;
							//i2c_sck_reg <= 1;// ʱ���Ȳ�Ҫ��ת
							// ���ACK��׽�ź�
							ack_signal_cap <= 0;
						end
					end
					// 4��λ�����������ۼӲ���
					else if(four_phase_cnt!=1)
						four_phase_cnt <= four_phase_cnt + 1;
					else if(four_phase_cnt==1 && (!i2c_sda || i2c_as_sccb))
						four_phase_cnt <= four_phase_cnt + 1;	
				end
			end
			// ����STOP�ź�
			RW_STOP: begin
				if(four_phase_cnt==0)
					i2c_sck_reg <= 1;	// IDLE��ʱ��ʱ����Զ���Ǹߵ�λ
				//////////////////////////////
				if(four_phase_cnt==3)
				begin
					rw_state <= RW_IDLE;
					i2c_sda_reg <= 1;	
					//i2c_sck_reg <= 1;
					// �������λ������
					four_phase_cnt <= 0;
					// �ⲿ״̬��ת��ȥ����FINISH
					cstate <= FINISH;
				end
				// 4��λ�����������ۼӲ���
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end		
			// ����ǿ������FAIL
			default: begin
				if(four_phase_cnt==3)
				begin
					cstate <= FAIL;
					rw_state <= RW_FAIL;
					four_phase_cnt <= 0;
				end
				// 4��λ�����������ۼӲ���
				else
					four_phase_cnt <= four_phase_cnt + 1;	
			end
		endcase
	end
end
endtask
///////////////////////////
// ��������ʧ�ܵ�������Ҫǿ�в���һ��ֹͣ�źţ���ֹI2C�ػ�
task do_fail_task;
begin
	// Ȼ��4��λ������ɣ���ת��FINISH
	/// ���ܲ���һ��ֹͣ�ź��ˣ�������Щȡ�ɣ�
	if(i2c_base_cnt==(`I2C_SCK_FREQ_FACTR-1))
	begin
		// �����ź��ߣ�ʱ��������
		i2c_sda_reg <= 0; 
		i2c_sck_reg <= 1;
		if(four_phase_cnt==3)
			cstate <= FINISH;
		else
			four_phase_cnt <= four_phase_cnt + 1;	
	end
end
endtask
//////////////////////////////////////////////////////////////////
// ��󣬰Ѹ����ź�����ȥ
// ����ready & fail�ź�
assign			i2c_ready = (cstate==IDLE);
assign			i2c_fail = (cstate==FAIL);
// ���ɵȴ�ACK�źŵģ���ǣ�
assign			i2c_wait_ack = ((rw_state==RW_ACK_DATA)|(rw_state==RW_ACK_REG)|(rw_state==RW_ACK_START)|(rw_state==RW_ACK_ADDR2));
// ���ڵȴ�SDA�ź�
assign			i2c_wait_sda = (cstate==READ && rw_state==RW_DATA);
// ����ʱ�� & ���������ź���
assign			i2c_sck = i2c_sck_reg;
assign			i2c_sda = (i2c_wait_ack|i2c_wait_sda)? 1'BZ : i2c_sda_reg;
// �����ȡ������
reg		[`I2C_REG_DATA_WIDTH-1:0]	i2c_rdata_reg;		// ��ȡ����
reg									i2c_rdata_valid_reg;	 // ��ȡ������Ч
always @(posedge sys_clk)
begin
	if(cstate==READ && rw_state==RW_DATA && 
			four_phase_cnt==3 && (i2c_base_cnt==(`I2C_SCK_FREQ_FACTR-1)) &&
			i2c_bit_cnt==(`I2C_REG_DATA_WIDTH-1))
	begin
		i2c_rdata_reg <= i2c_rdata_shift;
		i2c_rdata_valid_reg <= 1;
	end
	else
		i2c_rdata_valid_reg <= 0;
end
// 
assign			i2c_rdata = i2c_rdata_reg;
assign			i2c_rdata_valid = i2c_rdata_valid_reg;
//////////////////////////////////////////////////////////////////////
endmodule
