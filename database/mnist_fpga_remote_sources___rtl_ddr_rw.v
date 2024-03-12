`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ddr_rw 
//////////////////////////////////////////////////////////////////////////////////
module ddr_rw #
(

   parameter C3_NUM_DQ_PINS          = 16,    
                                       // External memory data width
   parameter C3_MEM_ADDR_WIDTH       = 14,       
                                       // External memory address width
   parameter C3_MEM_BANKADDR_WIDTH   = 3        
                                       // External memory bank address width
)
    
(			  
   input clk_50M,
	input reset_n,
	output spi_clk,
	output vga_clk,

	//sd ��ģ��ӿ��ź�
                           
	input [7:0] mydata,                   //��flash����������
   input myvalid,                        //�ֽ���Ч�ź�
	input pic_read_done,	                 //��SD��ͼ����������ź�	
	
	//VGA ģ��ӿ��ź�
	input ddr_rd_cmd,
	input ddr_addr_set,                   //ddr �ĵ�ַ��λ
   input ddr_rden,                       //vga��ddrͼ����������
	output reg [127:0] ddr_data,          //ddrͼ���������	

   //MIG39 ���������״̬�ź�
   output c3_p0_wr_underrun,          
	output c3_p0_rd_overflow,
	output c3_p0_wr_full,
	output c3_p0_cmd_full, 
   //DDR�Ľӿ��ź�
   inout  [C3_NUM_DQ_PINS-1:0]                      mcb3_dram_dq,     
   output [C3_MEM_ADDR_WIDTH-1:0]                   mcb3_dram_a,      
   output [C3_MEM_BANKADDR_WIDTH-1:0]               mcb3_dram_ba,
   output                                           mcb3_dram_ras_n,
   output                                           mcb3_dram_cas_n,
   output                                           mcb3_dram_we_n,
   output                                           mcb3_dram_odt,
   output                                           mcb3_dram_cke,
   output                                           mcb3_dram_reset_n,
   output                                           mcb3_dram_dm,
   inout                                            mcb3_dram_udqs,
   inout                                            mcb3_dram_udqs_n,
   inout                                            mcb3_rzq,
   inout                                            mcb3_zio,
   output                                           mcb3_dram_udm,
   input                                            c3_sys_clk,
   output                                           c3_rst0,
   inout                                            mcb3_dram_dqs,
   inout                                            mcb3_dram_dqs_n,
   output                                           mcb3_dram_ck,
   output                                           mcb3_dram_ck_n,
   output reg [2:0]                                 ddr_read_state,                         //for chipscope debug
   output reg [29:0]		                            c3_p0_cmd_byte_addr,                    //for chipscope debug
   output reg			           	                   c3_p0_cmd_en,                           //for chipscope debug
   output reg [2:0]			                         c3_p0_cmd_instr,                        //for chipscope debug
   output reg [5:0]			                         c3_p0_cmd_bl,                           //for chipscope debug
   output 				                               c3_p0_rd_en,                            //for chipscope debug
	output     [127:0]	                            c3_p0_rd_data,
	output                                        	 c3_clk0
    );


wire c3_calib_done;
wire pic_store_done; 
assign pic_store_done=(pic_read_done)&(!ddr_write_busy);

 
//�Ĵ������ڴ洢��sd����������
reg [127:0] sd_data_reg;
reg [127:0] ddr_wdata_reg;

reg [9:0] counter;
reg [7:0] counter1;

reg ddr_write_busy;
reg ddr_rd_busy;

reg ddr_wren;
reg ddr_wr_req;
reg ddr_wren_reg1;
reg ddr_wren_reg2;

reg ddr_rden_req;
reg ddr_rden_reg1;
reg ddr_rden_reg2;

reg ddr_rd_cmd_req;
reg ddr_rd_cmd_reg1;
reg ddr_rd_cmd_reg2;

reg first_read;

//DDR��д��״̬�Ĵ���
reg [2:0] ddr_write_state;


parameter write_idle=3'b000;
parameter write_fifo=3'b001;
parameter write_data_done=3'b010;
parameter write_cmd_start=3'b011;
parameter write_cmd=3'b100;
parameter write_done=3'b101;

parameter read_idle=3'b000;
parameter read_cmd_start=3'b001;
parameter read_cmd=3'b010;
parameter read_wait=3'b011;
parameter read_data=3'b100;
parameter read_done=3'b101;

//ddr user interface

wire				c3_p0_cmd_empty;
wire				c3_p0_cmd_full;

reg				c3_p0_wr_en;
reg[15:0]	   c3_p0_wr_mask;
reg[127:0]	   c3_p0_wr_data;
wire				c3_p0_wr_full;
wire				c3_p0_wr_empty;
wire[6:0]		c3_p0_wr_count;
wire				c3_p0_wr_underrun;
wire				c3_p0_wr_error;



wire				c3_p0_rd_full;
wire				c3_p0_rd_empty;
wire[6:0]		c3_p0_rd_count;
wire				c3_p0_rd_overflow;
wire				c3_p0_rd_error;

//DDR��command�ź�
reg				c3_p0_cmd_en_r;
reg[2:0]			c3_p0_cmd_instr_r;
reg[5:0]			c3_p0_cmd_bl_r;
reg[29:0]		c3_p0_cmd_byte_addr_r;

//DDRдcommand�ź�
reg				c3_p0_cmd_en_w;
reg[2:0]			c3_p0_cmd_instr_w;
reg[5:0]			c3_p0_cmd_bl_w;
reg[29:0]		c3_p0_cmd_byte_addr_w;
 

/*****************************************************************************/
//��ȡ16���ֽ�(8������)��sd����ת��Ϊ128bit�����ݴ���data�Ĵ�����
/*****************************************************************************/
always @(negedge spi_clk)
begin
	if(c3_rst0 || !c3_calib_done)	begin
			counter1<=10'd0;
			ddr_wren<=1'b0;
			sd_data_reg<=0;
			ddr_wdata_reg<=0;
	end		
   else if (myvalid)
      begin   
	     if(counter1<15) begin                             //��ȡǰ15��sd����	  
			    sd_data_reg<={sd_data_reg[119:0],mydata};
			    counter1<=counter1+1;
				 ddr_wren<=1'b0;
		  end
        else begin                                        //��ȡ��16��sd����
			    ddr_wdata_reg<={sd_data_reg[119:0],mydata};
				 sd_data_reg<=0;
				 counter1<=0;
				 ddr_wren<=1'b1;                        //���յ�16��bytes����,����ddrд�ź�
		  end
		end
   else 
      ddr_wren<=1'b0;
	  
end
	  
/*****************************************************************************/
//����ת��,ddr_wren--->ddr_wr_req
/*****************************************************************************/
always @(negedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done)  begin
	    ddr_wren_reg1<=1'b0;
	    ddr_wren_reg2<=1'b0;
	    ddr_wr_req<=1'b0;
	end
   else begin
	  	 ddr_wren_reg1<=ddr_wren;
	    ddr_wren_reg2<=ddr_wren_reg1;   
	    if(ddr_wren_reg1 && !ddr_wren_reg2)           //�����⵽ddr_wren��������,����ddrд����
		   ddr_wr_req<=1'b1;
		 else
		   ddr_wr_req<=1'b0;
	end
end
  
/*****************************************************************************/
//��Ram�Ĵ�����16�ֽڵ�����д��ddr��
/*****************************************************************************/
always @(posedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done) begin  			 
     c3_p0_wr_en<=1'b0;
	  c3_p0_wr_mask<=16'd0;
	  c3_p0_wr_data<=128'd0;
	  ddr_write_busy <=1'b0;
     c3_p0_cmd_en_w<=1'b0;
     c3_p0_cmd_instr_w<=3'd0;
     c3_p0_cmd_bl_w<=6'd0;
     c3_p0_cmd_byte_addr_w<=30'd0;
     ddr_write_state<=write_idle;	  
    end
  else begin
  case(ddr_write_state)
		write_idle:begin			  
            c3_p0_wr_en<=1'b0;
	         c3_p0_wr_mask<=16'd0;
				if(ddr_wr_req) begin                             //���дDDR�����ź�Ϊ��				
					   ddr_write_busy<=1'b1;                //ddrд����æ��־
						ddr_write_state<=write_fifo;
						c3_p0_wr_data<=ddr_wdata_reg;        //׼��д��DDR������
				end

	   end
		write_fifo:begin	  
	         if(!c3_p0_wr_full) begin                      //��p0дfifo���ݲ���				
						c3_p0_wr_en<=1'b1;    
				      ddr_write_state<=write_data_done;
				end			   
		end
      write_data_done:begin
			  	c3_p0_wr_en<=1'b0;
			   ddr_write_state<=write_cmd_start;
      end
		write_cmd_start:begin
            c3_p0_cmd_en_w<=1'b0;                    
            c3_p0_cmd_instr_w<=3'b010;                  //010Ϊд����
            c3_p0_cmd_bl_w<=6'd0;                       //burst lengthΪ1��128bit����
            c3_p0_cmd_byte_addr_w<=c3_p0_cmd_byte_addr_w+16;	   //��ַ��16
				ddr_write_state<=write_cmd;
      end
      write_cmd:begin
			   if (!c3_p0_cmd_full) begin                        //�������FIFO����				  
                 c3_p0_cmd_en_w<=1'b1;                   //д����ʹ��
				     ddr_write_state<=write_done;
				end
      end
      write_done:begin
            c3_p0_cmd_en_w<=1'b0;
            ddr_write_state<=write_idle;
            ddr_write_busy<=1'b0;
      end
		default:begin		
		      c3_p0_wr_en<=1'b0;
            c3_p0_cmd_en_w<=1'b0;
            c3_p0_cmd_instr_w<=3'd0; 
            c3_p0_cmd_bl_w<=6'd0;
            ddr_write_state<=write_idle;
      end				  
      endcase;			
   end
end  

/*****************************************************************************/
//DDR�����������ź����������: ddr_rden->ddr_rden_req
/*****************************************************************************/
always @(posedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done) begin
     ddr_rden_reg1<=1'b0;
     ddr_rden_reg2<=1'b0; 
	  ddr_rden_req<=1'b0;	
   end
   else begin
     ddr_rden_reg1<=ddr_rden;
     ddr_rden_reg2<=ddr_rden_reg1;
     if(ddr_rden_reg1 && !ddr_rden_reg2)           //�����⵽ddr_rden��������,����ddr����������
		   ddr_rden_req<=1'b1;
	  else
		   ddr_rden_req<=1'b0;	
    end
end	 

assign c3_p0_rd_en = ddr_rden_req;

/*****************************************************************************/
//DDR burst�����������ź����������: ddr_rd_cmd->ddr_rd_cmd_req
/*****************************************************************************/
always @(negedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done) begin
     ddr_rd_cmd_reg1<=1'b0;
     ddr_rd_cmd_reg2<=1'b0; 
	  ddr_rd_cmd_req<=1'b0;	
   end
   else begin
     ddr_rd_cmd_reg1<=ddr_rd_cmd;
     ddr_rd_cmd_reg2<=ddr_rd_cmd_reg1;
     if(ddr_rd_cmd_reg1 && !ddr_rd_cmd_reg2)           //ddr_rd_cmd,����ddr burst����������
		   ddr_rd_cmd_req<=1'b1;
	  else
		   ddr_rd_cmd_req<=1'b0;	
    end
end	

/*****************************************************************************/
//DDR burst����������
/*****************************************************************************/
always @(posedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done) begin  			 
	  ddr_rd_busy <=1'b0;
     c3_p0_cmd_en_r<=1'b0;
     c3_p0_cmd_instr_r<=3'd0;
     c3_p0_cmd_bl_r<=6'd0;
     c3_p0_cmd_byte_addr_r<=30'd16;
     ddr_read_state<=read_idle; 
  end
  else begin
      if(pic_store_done) begin
		 	if(ddr_addr_set==1'b1) begin             
    	         c3_p0_cmd_byte_addr_r<=30'd16;	           //ddr�ĵ�ַ��λ, ��ʼֵΪ��ַ16 
         end
	      else begin
				case(ddr_read_state) 
				read_idle:begin
					if(ddr_rd_cmd_req==1'b1) begin              //�����ddr����������
						ddr_read_state<=read_cmd_start;
						ddr_rd_busy <=1'b1;
					end
				end
				read_cmd_start:begin
						c3_p0_cmd_en_r<=1'b0;
						c3_p0_cmd_instr_r<=3'b001;               //������Ϊ��
						c3_p0_cmd_bl_r<=6'd63;                   //64�����ݶ�
						ddr_read_state<=read_cmd; 
				end						 
				read_cmd:begin			
						c3_p0_cmd_en_r<=1'b1;                    //ddr������ʹ��
						ddr_read_state<=read_done;
				end
				read_done:begin
						c3_p0_cmd_en_r<=1'b0; 
						ddr_rd_busy <=1'b0;
						c3_p0_cmd_byte_addr_r<=c3_p0_cmd_byte_addr_r+1024;    //ddr�Ķ���ַ��1024 (64*128bit/8)
						first_read<=1'b0;
						ddr_read_state<=read_idle;
				end
				default:begin
						c3_p0_cmd_en_r<=1'b0;
						ddr_read_state<=read_idle;
				end
				endcase;
			end
      end
   end
end	

/*****************************************************************************/
//ddr�����źŶ�дѡ��
/*****************************************************************************/
always @(*)
begin
	if(!pic_store_done) begin          //���ͼ��δ����ddr��		
			c3_p0_cmd_en<=c3_p0_cmd_en_w;
			c3_p0_cmd_instr<=c3_p0_cmd_instr_w;
			c3_p0_cmd_bl<=c3_p0_cmd_bl_w;
			c3_p0_cmd_byte_addr<=c3_p0_cmd_byte_addr_w;
	end
	else begin
			c3_p0_cmd_en<=c3_p0_cmd_en_r;
			c3_p0_cmd_instr<=c3_p0_cmd_instr_r;
			c3_p0_cmd_bl<=c3_p0_cmd_bl_r;
			c3_p0_cmd_byte_addr<=c3_p0_cmd_byte_addr_r;
	end
end

/*****************************************************************************/
//MIG��DDR��������������
/*****************************************************************************/
      mig_39_2 #
      (
         .C3_P0_MASK_SIZE                (16),
         .C3_P0_DATA_PORT_SIZE           (128),
         .DEBUG_EN                       (0),   //   = 0, Disable debug signals/controls.
         .C3_MEMCLK_PERIOD               (3200),
         .C3_CALIB_SOFT_IP               ("TRUE"),            // # = TRUE, Enables the soft calibration logic,
         .C3_SIMULATION                  ("FALSE"),           // # = FALSE, Implementing the design.
         .C3_RST_ACT_LOW                 (1),                 // # = 1 for active low reset         change for AX516 board
         .C3_INPUT_CLK_TYPE              ("SINGLE_ENDED"),
         .C3_MEM_ADDR_ORDER              ("ROW_BANK_COLUMN"),
         .C3_NUM_DQ_PINS                 (16),
         .C3_MEM_ADDR_WIDTH              (13),  
         .C3_MEM_BANKADDR_WIDTH          (3)
         )
      mig_37_inst
      (
         .mcb3_dram_dq			                 (mcb3_dram_dq),
         .mcb3_dram_a			                 (mcb3_dram_a), 
         .mcb3_dram_ba			                 (mcb3_dram_ba),
         .mcb3_dram_ras_n			              (mcb3_dram_ras_n),
         .mcb3_dram_cas_n			              (mcb3_dram_cas_n),
         .mcb3_dram_we_n  	                    (mcb3_dram_we_n),
         .mcb3_dram_odt			                 (mcb3_dram_odt),
         .mcb3_dram_reset_n			           (mcb3_dram_reset_n),	
         .mcb3_dram_cke                        (mcb3_dram_cke),
         .mcb3_dram_dm                         (mcb3_dram_dm),
         .mcb3_dram_udqs                       (mcb3_dram_udqs),
         .mcb3_dram_udqs_n	                    (mcb3_dram_udqs_n),
         .mcb3_rzq	                          (mcb3_rzq),
         .mcb3_zio	                          (mcb3_zio),
         .mcb3_dram_udm	                       (mcb3_dram_udm),
         .c3_sys_clk	                          (clk_50M),
         .c3_sys_rst_i	                       (reset_n),                 			
			.c3_calib_done	                       (c3_calib_done),
         .c3_clk0	                             (c3_clk0),                 //User clock
			.spi_clk	                             (spi_clk),                //AX516 board: for spi clock 
		   .vga_clk	                             (vga_clk),                 //AX516 board: for vga clock 
         .c3_rst0	                             (c3_rst0),			
			.mcb3_dram_dqs                        (mcb3_dram_dqs),
			.mcb3_dram_dqs_n	                    (mcb3_dram_dqs_n),
			.mcb3_dram_ck	                       (mcb3_dram_ck),			
			.mcb3_dram_ck_n	                    (mcb3_dram_ck_n),				
			
         // User Port-0 command interface
         .c3_p0_cmd_clk                  (c3_clk0),          //c3_p0_cmd_clk->c3_clk0			
         .c3_p0_cmd_en                   (c3_p0_cmd_en),
         .c3_p0_cmd_instr                (c3_p0_cmd_instr),
         .c3_p0_cmd_bl                   (c3_p0_cmd_bl),
         .c3_p0_cmd_byte_addr            (c3_p0_cmd_byte_addr),
         .c3_p0_cmd_empty                (c3_p0_cmd_empty),
         .c3_p0_cmd_full                 (c3_p0_cmd_full),	
			
         // User Port-0 data write interface 			
         .c3_p0_wr_clk                   (c3_clk0),          //c3_p0_wr_clk->c3_clk0
			.c3_p0_wr_en                    (c3_p0_wr_en),
         .c3_p0_wr_mask                  (c3_p0_wr_mask),
         .c3_p0_wr_data                  (c3_p0_wr_data),
         .c3_p0_wr_full                  (c3_p0_wr_full),
         .c3_p0_wr_empty                 (c3_p0_wr_empty),
         .c3_p0_wr_count                 (c3_p0_wr_count),
         .c3_p0_wr_underrun              (c3_p0_wr_underrun),
         .c3_p0_wr_error                 (c3_p0_wr_error),	
			
         // User Port-0 data read interface 
			.c3_p0_rd_clk                   (c3_clk0),          //c3_p0_rd_clk->c3_clk0
         .c3_p0_rd_en                    (c3_p0_rd_en),
         .c3_p0_rd_data                  (c3_p0_rd_data),
         .c3_p0_rd_full                  (c3_p0_rd_full),			
         .c3_p0_rd_empty                 (c3_p0_rd_empty),
         .c3_p0_rd_count                 (c3_p0_rd_count),
         .c3_p0_rd_overflow              (c3_p0_rd_overflow),
         .c3_p0_rd_error                 (c3_p0_rd_error)

       );

endmodule
