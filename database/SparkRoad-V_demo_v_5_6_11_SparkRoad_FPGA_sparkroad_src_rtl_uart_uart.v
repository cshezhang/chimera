/*************************************************************************
* ���ߣ�����ǿ
* ���ڣ�2019/06/10
* ˵����uart.v ��ʼλ1bit,����λ8bit,ֹͣλ2bit.
* ��ϵ��xqandwn@sina.com
**************************************************************************/

// `define UART_LOOPBACK

module uart
#(
	parameter BAUDRATE = 115200,
	parameter CLK_RATE = 50000000 // Hz
)
(
    input	wire		clk,

    // uart
    input	wire		rx,
    output  wire		tx,
    
	// tube 
    output	wire [3:0] sm_bit1,
	output	wire [3:0] sm_bit2,
	output	wire [3:0] sm_bit3,
	output	wire [3:0] sm_bit4,
	
	// led
    output  wire [15:0] led,
    
    // flash
    output  wire        start,
    output  wire [2:0]  mod_sel,
    output  wire [23:0] fls_addr,
    output  wire [7:0]  fls_write,
    input   wire [7:0]  fls_read,
    input   wire [15:0] id,
    input   wire        busy
);

wire rx_en;
wire [7:0] rx_data;
wire tx_en;
wire [7:0] tx_data;
wire tx_ready;
wire ubus_wen;
wire [31:0] ubus_waddr;
wire [31:0] ubus_wdata;
wire ubus_ren;
wire [31:0] ubus_raddr;
wire ubus_bken;
wire [31:0] ubus_rdata;

//���ڽ���ģ��
uart_rx
#(
	.BAUDRATE	(BAUDRATE	    ),
	.CLK_RATE	(CLK_RATE	    )
)
u_uart_rx
(
    .clk        (clk            ),
    .rx         (rx             ),
    .rx_en    	(rx_en          ),
    .rx_data	(rx_data        )
);

//���ڷ���ģ��
uart_tx
#(
	.BAUDRATE	(BAUDRATE	    ),
	.CLK_RATE	(CLK_RATE	    )
)
u_uart_tx
(
    .clk        (clk            ),
    .tx         (tx             ),
    
`ifdef UART_LOOPBACK // ���ڻػ�����
    .tx_en		(rx_en          ),
    .tx_data	(rx_data        ),
`else
    .tx_en		(tx_en          ),
    .tx_data	(tx_data        ),
`endif

	.tx_ready	(tx_ready	    )
);

// ����ͨ��Э��
uprotocol u_uprotocol
(
    .clk        (clk            ),
    
    // uart-rx
    .rx_en      (rx_en          ),
    .rx_data    (rx_data        ),
    
    // uart-tx
    .tx_en      (tx_en          ),
    .tx_data    (tx_data        ),
    .tx_ready   (tx_ready       ),
    
	// ubus write
	.ubus_wen	(ubus_wen		),
	.ubus_waddr	(ubus_waddr		),
	.ubus_wdata	(ubus_wdata		),
	
	// ubus read
	.ubus_ren	(ubus_ren		),
	.ubus_raddr	(ubus_raddr		),
	.ubus_bken	(ubus_bken		),
	.ubus_rdata	(ubus_rdata		)
);

// ������������
ubus u_ubus
(
	.clk		(clk			),
	
	// ubus write
	.ubus_wen	(ubus_wen		),
	.ubus_waddr	(ubus_waddr		),
	.ubus_wdata	(ubus_wdata		),
	
	// ubus read
	.ubus_ren	(ubus_ren		),
	.ubus_raddr	(ubus_raddr		),
	.ubus_bken	(ubus_bken		),
	.ubus_rdata	(ubus_rdata		),
	
	// user port

    // tube 
    .sm_bit1    (sm_bit1        ),
    .sm_bit2    (sm_bit2        ),
    .sm_bit3    (sm_bit3        ),
    .sm_bit4    (sm_bit4        ),
    
    // led
    .led        (led            ),
    
    // flash
    .start      (start          ),
    .mod_sel    (mod_sel        ),
    .fls_addr   (fls_addr       ),
    .fls_write  (fls_write      ),
    .fls_read   (fls_read       ),
    .id         (id             ),
    .busy       (busy           )
);

endmodule
