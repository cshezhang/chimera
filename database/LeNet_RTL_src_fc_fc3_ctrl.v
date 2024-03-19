//==================================================================================================
//  Filename      : fc3_ctrl.v
//  Created On    : 2018-01-06 14:32:33
//  Last Modified : 2018-03-21 15:27:41
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================

module fc3_ctrl(/*autoport*/
//output
			f7_raddr,
			w7_raddr,
			f8_wr_en,
			fc3_done,
			fc3_clr,
//input
			clk,
			rst_n,
			fc3_start);
	input 	clk;
	input 	rst_n;

	//Input Weight and Feature Read Addr	
	output [6:0]f7_raddr;
	output [6:0]w7_raddr;
	//Output Feature Write Enable
	output      f8_wr_en;
	//Control Signal
	input 	fc3_start;
	output 	fc3_done;
	output 	fc3_clr;

	localparam	IDLE=3'b001;
	localparam  RUN =3'b010;
	localparam  DONE=3'b100;
	reg[2:0] current_state;
	reg[2:0] next_state;

	reg[6:0] cnt0;

	wire add_cnt0,end_cnt0;
	wire IDLE2RUN_start,RUN2DONE_start;

	always@(posedge clk or negedge rst_n)begin
		if(!rst_n)
			current_state <= IDLE;
		else
			current_state <= next_state;
	end

	always@(*) begin
		case(current_state)
			IDLE:begin
				if(IDLE2RUN_start)
					next_state = RUN;
				else
					next_state = IDLE;
			end
			RUN:begin
				if(RUN2DONE_start)
					next_state = DONE;
				else begin
					next_state = current_state;
				end
			end
			DONE:begin
				next_state = IDLE;
			end
			default: next_state = IDLE;	
		endcase
	end

	assign IDLE2RUN_start = current_state==IDLE && fc3_start == 1'b1;
	assign RUN2DONE_start = current_state==RUN  && end_cnt0;

	always @(posedge clk or negedge  rst_n) begin
		if (!rst_n) begin
			// reset
			cnt0 <= 0;
		end
		else if (add_cnt0) begin
			if(end_cnt0)begin
				cnt0 <= 0;
			end
			else begin
				cnt0 <= cnt0 + 1'b1;
			end
		end
	end

	assign add_cnt0 = current_state==RUN;
	assign end_cnt0 = add_cnt0 && cnt0 == 84-1;


	assign f7_raddr = cnt0;
	assign w7_raddr = cnt0;


	wire f8_wr_en_temp,fc3_clr_temp,fc3_done_temp;
	assign f8_wr_en_temp = end_cnt0;
	assign fc3_clr_temp = cnt0==0 ;
	assign fc3_done_temp = current_state==DONE;
	//add delay
	reg fc3_clr_temp_r1,fc3_clr_temp_r2,fc3_clr_temp_r3;
	reg f8_wr_en_temp_r1,f8_wr_en_temp_r2,f8_wr_en_temp_r3,
			f8_wr_en_temp_r4,f8_wr_en_temp_r5,f8_wr_en_temp_r6,f8_wr_en_temp_r7;
	reg fc3_done_temp_r1,fc3_done_temp_r2,fc3_done_temp_r3,
			fc3_done_temp_r4,fc3_done_temp_r5,fc3_done_temp_r6,fc3_done_temp_r7;

	always@(posedge clk)begin

    	f8_wr_en_temp_r1 <= f8_wr_en_temp ;
    	f8_wr_en_temp_r2 <= f8_wr_en_temp_r1 ;
    	f8_wr_en_temp_r3 <= f8_wr_en_temp_r2 ;
    	f8_wr_en_temp_r4 <= f8_wr_en_temp_r3 ;
    	f8_wr_en_temp_r5 <= f8_wr_en_temp_r4 ;
    	f8_wr_en_temp_r6 <= f8_wr_en_temp_r5 ;
    	f8_wr_en_temp_r7 <= f8_wr_en_temp_r6 ;

   		fc3_done_temp_r1 <= fc3_done_temp;
    	fc3_done_temp_r2 <= fc3_done_temp_r1;
    	fc3_done_temp_r3 <= fc3_done_temp_r2;
    	fc3_done_temp_r4 <= fc3_done_temp_r3;
    	fc3_done_temp_r5 <= fc3_done_temp_r4;
    	fc3_done_temp_r6 <= fc3_done_temp_r5;
    	fc3_done_temp_r7 <= fc3_done_temp_r6;

    	fc3_clr_temp_r1 <= fc3_clr_temp ;
    	fc3_clr_temp_r2 <= fc3_clr_temp_r1 ;
    	fc3_clr_temp_r3 <= fc3_clr_temp_r2 ;

	end

	assign f8_wr_en = f8_wr_en_temp_r7;
	assign fc3_clr = fc3_clr_temp_r3;
	assign fc3_done = fc3_done_temp_r7;


endmodule 