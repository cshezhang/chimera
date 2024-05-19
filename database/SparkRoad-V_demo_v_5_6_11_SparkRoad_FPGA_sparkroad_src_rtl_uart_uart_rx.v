// This program was cloned from: https://github.com/verimake-team/SparkRoad-V
// License: MIT License

/*************************************************************************
* ���ߣ�����ǿ
* ���ڣ�2019/06/10
* ˵����uart_rx.v ��ʼλ1bit,����λ8bit,ֹͣλ2bit.
* ��ϵ��xqandwn@sina.com
**************************************************************************/

module uart_rx
#(
	parameter BAUDRATE = 115200,
	parameter CLK_RATE = 50000000
)
(
    input	wire		clk,
	
	// uart
    input	wire		rx,
	
	// data
    output  reg			rx_en,
    output  reg [7:0]	rx_data
);

reg start;
reg clk_en;
reg [3:0] cnt;
reg [7:0] data;
reg [1:0] rx_d;
reg [31:0] clk_cnt;

// ���ؼ��
always@(posedge clk)
begin
    rx_d <= {rx_d[0],rx};
end

// ���ݴ������
always@(posedge clk)
begin
    if(rx_d == 2'b10) // ��⵽�½��ش��俪ʼ
        start <= 1;
    else if(cnt == 9) // ���ݽ������
        start <= 0;
end

// �����ʼ�����
always@(posedge clk)
begin
	if(!start)
		clk_cnt <= (CLK_RATE / (BAUDRATE*2)); // �м����
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

// �������ݼ�����
always@(posedge clk)
begin
	if(!start)
        cnt <= 0;
	else if(clk_en)
        cnt <= cnt + 1;
end

// �������ݲ���
always@(posedge clk)
if(clk_en)
begin
    case(cnt)
        1: data[0] <= rx;
        2: data[1] <= rx;
        3: data[2] <= rx;
        4: data[3] <= rx;
        5: data[4] <= rx;
        6: data[5] <= rx;  
        7: data[6] <= rx;    
        8: data[7] <= rx;
    endcase   
end

// �������ʹ��
always@(posedge clk)
begin
    rx_en <= (start && cnt == 9);
end

// �������
always@(posedge clk)
begin
    if(cnt == 9)
        rx_data <= data;
end

endmodule
