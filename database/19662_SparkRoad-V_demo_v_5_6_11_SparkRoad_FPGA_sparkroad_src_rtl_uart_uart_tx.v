// This program was cloned from: https://github.com/verimake-team/SparkRoad-V
// License: MIT License

/*************************************************************************
* ���ߣ�����ǿ
* ���ڣ�2019/06/10
* ˵����uart_tx.v ��ʼλ1bit,����λ8bit,ֹͣλ2bit.
* ��ϵ��xqandwn@sina.com
**************************************************************************/

module uart_tx
#(
	parameter BAUDRATE = 115200,
	parameter CLK_RATE = 50000000
)
(
    input	wire		clk,
	
	// uart
    output  reg			tx,
	
	// data
    input	wire		tx_en,
    input	wire [7:0]	tx_data,
	output	reg			tx_ready
);

reg start;
reg clk_en;
reg [3:0] cnt;
reg [7:0] data;
reg [31:0] clk_cnt;


// �����ʼ�����
always@(posedge clk)
begin
	if(!start)
		clk_cnt <= 0;
	else if(clk_cnt == CLK_RATE / BAUDRATE - 1)
		clk_cnt <= 0;
	else
		clk_cnt <= clk_cnt + 1;
end

// �����ʼ�����
always@(posedge clk)
begin
	clk_en <= (clk_cnt == CLK_RATE / BAUDRATE - 1);
end

// ���ݴ������
always@(posedge clk)
begin
    if(tx_en) // ���俪ʼ
        start <= 1;
    else if(cnt == 10) // �������
        start <= 0;
end

// ���ݼĴ�
always@(posedge clk)
begin
	if(tx_en && !start)
		data <= tx_data;
end

// ״̬������
always@(posedge clk)
begin
    if(!start)
		cnt <= 0;
	else if(clk_en)
        cnt <= cnt + 1;
end

// ���ڷ���
always@(posedge clk)
begin
    case(cnt)
		0: tx <= 1'b1;    // ����ֹͣλ(�ϵ�״̬).
        1: tx <= 1'b0;    // ���俪ʼ
        2: tx <= data[0]; // �������ݵ�1λ
        3: tx <= data[1]; // �������ݵ�2λ
        4: tx <= data[2]; // �������ݵ�3λ
        5: tx <= data[3]; // �������ݵ�4λ
        6: tx <= data[4]; // �������ݵ�5λ
        7: tx <= data[5]; // �������ݵ�6λ
        8: tx <= data[6]; // �������ݵ�7λ
        9: tx <= data[7]; // �������ݵ�8λ
        10:tx <= 1'b1;    // ����ֹͣλ
    endcase
end

// ����ģ�����
always@(posedge clk)
begin
	if(tx_en)
		tx_ready <= 0;
	else
		tx_ready <= !start;
end

endmodule
