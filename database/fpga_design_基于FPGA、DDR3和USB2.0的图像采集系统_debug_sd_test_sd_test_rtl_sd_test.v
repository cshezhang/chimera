

`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////
// Module Name:    sd_test
///////////////////////////////////////////////////////////////////
module sd_test(
					input  clk,     //50Mhz input clock      
					input rst_n,
					input  COMS_SD,
					output SD_clk,					
					output SD_cs,
					output SD_datain,
					input  SD_dataout
					
    );

wire CLKFB;
wire CLK0;
wire CLKDV;
wire CLKFX;
wire CLK2X;
wire clock100M;

wire SD_datain_i;
wire SD_datain_w;
wire SD_datain_r;
reg SD_datain_o;


wire SD_cs_i;
wire SD_cs_w;
wire SD_cs_r;
reg SD_cs_o;

reg [31:0]write_sec;
reg write_req;
//reg SD_dataout_reg;

wire [7:0]mydata_o;
wire myvalid_o;

wire init_o;             //SD ��ʼ����ɱ�ʶ
wire write_o;            //SD blcokд��ɱ�ʶ

reg [3:0] sd_state;
wire [3:0] initial_state;
wire [3:0] write_state;

wire rx_valid;

parameter STATUS_INITIAL=4'd0;
parameter STATUS_WRITE=4'd1;
parameter STATUS_IDLE=4'd2;

assign SD_cs=SD_cs_o;
assign SD_datain=SD_datain_o;
//assign SD_dataout=SD_dataout_reg;
/*******************************/
//SD����ʼ��,blockд	
/*******************************/

always @ ( posedge SD_clk or negedge rst_n )
    if( !rst_n ) begin
			sd_state <= STATUS_INITIAL;
			write_req <= 1'b0;
			write_sec <= 32'd0;			
	 end
	 else 
	     case( sd_state )

	      STATUS_INITIAL:      // �ȴ�sd����ʼ������
			if( init_o ) begin sd_state <= STATUS_WRITE; write_sec <= 32'd16392; write_req<=1'b1; end
			else begin sd_state <= STATUS_INITIAL; end	
		  
	      STATUS_WRITE:        //�ȴ�sd��blockд����
			if( write_o ) begin 
				//SD_dataout_reg <= 1'b1;
				sd_state <= STATUS_IDLE;
			end
			else begin write_req<=1'b0; sd_state <= STATUS_WRITE; end

	      STATUS_IDLE:        //����״̬
			sd_state <= STATUS_IDLE;
			
			default: sd_state <= STATUS_IDLE;
	      endcase

//SD����ʼ������
wire [47:0]rx;				
sd_initial	sd_initial_inst(					
						.rst_n(rst_n),
						.SD_clk(SD_clk),
						.SD_cs(SD_cs_i),
						.SD_datain(SD_datain_i),
						.SD_dataout(SD_dataout),
						.rx(rx),
						.init_o(init_o),
						.rx_valid(rx_valid),						
						.state(initial_state)

);

//SD��blockд����, д512��0~255,0~255������			 
sd_write	sd_write_inst(   
						.SD_clk(SD_clk),
						.SD_cs(SD_cs_w),
						.SD_datain(SD_datain_w),
						.SD_dataout(SD_dataout),
						.CMOS_SD(1'b1),
						.init(init_o),
						.sec(write_sec),
						.write_req(write_req),
						.mystate(write_state),
						.rx_valid(),

						.write_o(write_o)			
						
    );

always @(*)
begin
	 case( sd_state )
	 STATUS_INITIAL: begin SD_cs_o<=SD_cs_i;SD_datain_o<=SD_datain_i; end
	 STATUS_WRITE: begin SD_cs_o<=SD_cs_w;SD_datain_o<=SD_datain_w; end
	 default: begin SD_cs_o<=1'b1;SD_datain_o<=1'b1; end	 
	 endcase
end

//////////////////////////////////////////�ṩSD��ʱ��
DCM_SP #(
      .CLKDV_DIVIDE(2),                   // CLKDV divide value
                                            // (1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8,9,10,11,12,13,14,15,16).
      .CLKFX_DIVIDE(4),                     // Divide value on CLKFX outputs - D - (1-32)
      .CLKFX_MULTIPLY(2),                   // Multiply value on CLKFX outputs - M - (2-32)
      .CLKIN_DIVIDE_BY_2("FALSE"),          // CLKIN divide by two (TRUE/FALSE)
      .CLKIN_PERIOD(20.0),                  // Input clock period specified in nS
      .CLKOUT_PHASE_SHIFT("NONE"),          // Output phase shift (NONE, FIXED, VARIABLE)
      .CLK_FEEDBACK("1X"),                  // Feedback source (NONE, 1X, 2X)
      .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"), // SYSTEM_SYNCHRNOUS or SOURCE_SYNCHRONOUS
      .DFS_FREQUENCY_MODE("LOW"),           // Unsupported - Do not change value
      .DLL_FREQUENCY_MODE("LOW"),           // Unsupported - Do not change value
      .DSS_MODE("NONE"),                    // Unsupported - Do not change value
      .DUTY_CYCLE_CORRECTION("TRUE"),       // Unsupported - Do not change value
      .FACTORY_JF(16'hc080),                // Unsupported - Do not change value
      .PHASE_SHIFT(0),                      // Amount of fixed phase shift (-255 to 255)
      .STARTUP_WAIT("FALSE")                // Delay config DONE until DCM_SP LOCKED (TRUE/FALSE)
   )
   DCM_SP_inst (
      .CLK0(CLK0),         // 1-bit output: 0 degree clock output
      .CLK180(CLK180),     // 1-bit output: 180 degree clock output
      .CLK270(CLK270),     // 1-bit output: 270 degree clock output
      .CLK2X(CLK2X),       // 1-bit output: 2X clock frequency clock output
      .CLK2X180(CLK2X180), // 1-bit output: 2X clock frequency, 180 degree clock output
      .CLK90(CLK90),       // 1-bit output: 90 degree clock output
      .CLKDV(CLKDV),       // 1-bit output: Divided clock output
      .CLKFX(CLKFX),       // 1-bit output: Digital Frequency Synthesizer output (DFS)
      .CLKFX180(CLKFX180), // 1-bit output: 180 degree CLKFX output
      .LOCKED(LOCKED),     // 1-bit output: DCM_SP Lock Output

      .CLKFB(CLKFB),       // 1-bit input: Clock feedback input
      .CLKIN(clk),       // 1-bit input: Clock input
      .PSEN(1'b0),
      .RST(1'b0)            // 1-bit input: Active high reset input
   ); 

BUFG bufg_inst(
					.I(CLK0),
					.O(CLKFB)
					);
  
BUFG bufg_insta(
					.I(CLKDV),
					.O(SD_clk)
					);

BUFG bufg_instb(
					.I(CLK2X),
					.O(clock100M)
					);

endmodule
