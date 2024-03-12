`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:13 03/12/2019 
// Design Name: 
// Module Name:    conv3_out_buffer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module conv3_out_buffer#(
	parameter									bits						=	16		,	//quantization bit number
	parameter									bits_shift				=	4		,	//we can shift but not multy
	parameter									channel_num 			= 	16		,	//number of the channel of the picture
   parameter									length   				=  18		,	//length of input picture 
	parameter									length_2					=	5		,	//bit number of length
	parameter									height					=	57		,	//height of input picture
	parameter									height_2					=	7		,	//bit number of height
	parameter									filter_size 			= 	2		,	//size of filter is n*n,default 5*5
	parameter									filter_size_2			=	2		,	//the bits of the filter size
	parameter									stride_in				=	1		,
	parameter									stride_in_2				=	1		,
	parameter 									stride 					= 	2		,	//stride of conv in the first conv_layer
	parameter 									stride_2 				= 	2		,	//bit of stride
	parameter									zero_pad 				= 	0		,	//padding
	parameter									first_height			=	40		,	//convolution number first time in height
	parameter									first_length			=	1		,	//convolution number first time in length
	parameter									mem_length				=	18		,	//length of memory
	parameter									mem_height				=	3		,	//height of memory
	parameter									mem_length_2			=	5		,	//bit number of mem_length
	parameter									mem_height_2			=	2		,	//bit number of mem_height
	parameter									state_in_reset			=	0		,	//state to reset input parameter
	parameter									state_in_wait			=	1		,	//state to wait input data
	parameter									state_in_input			=	2		,	//state to accept input data
	parameter									state_out_reset		=	0		,	//state to reset output parameter
	parameter									state_out_wait			=	1		,	//state to wait output data
	parameter									state_out_output		=	2			//state to accept output data
	)
(
	input																		clk_in		,
	input																		rst_n			,
	input																		start			,
	input						[(channel_num<<bits_shift)-1:0]		data_in		,
	output					[(channel_num<<bits_shift)-1:0]		data_out		,
	output	reg															ready			
    );

	
//******************************************************
//***********************input data*********************
//******************************************************

reg					[1:0]						state_in						;	//state that input data
reg												start_flag					;	//used to posedge of start
reg												start_output				;	//start to output
reg					[stride_in_2-1:0]		cnt_start_output			;
reg												start_out_first			;	//the first time to output data
reg					[length_2-1:0]			cnt_in_first_length		;	//length of first data
reg					[height_2-1:0]			cnt_in_depth_height		;	//depth in height
reg					[height_2-1:0]			cnt_in_offset_height		;	//offset in height
reg					[length_2-1:0]			cnt_in_offset_length		;	//offset in length
reg					[mem_height_2-1:0]	cnt_in_mem_height			;	//addra height
reg					[mem_length_2-1:0]	cnt_in_mem_length			;	//addra length				
reg												start_output_flag			;	//use to posedge of start to output
always@(posedge clk_in or negedge rst_n)
begin
	if(!rst_n)
	begin
		state_in							<=					state_in_reset						;
	end		
	else		
	begin	
		if(state_in == state_in_reset)			//reset all the parameters		
		begin		
			cnt_in_first_length			<=					first_length - 1				;
			cnt_in_depth_height			<=					first_height - 1				;
			cnt_in_offset_height			<=					0									;
			cnt_in_offset_length			<=					first_length - 1				;
			cnt_in_mem_height				<=					0									;
			cnt_in_mem_length				<=					0									;
			start_out_first				<=					1'b0								;
			start_output					<=					1'b0								;
			state_in							<=					state_in_wait					;
			cnt_start_output				<=					stride							;
		end		
		else if(state_in == state_in_wait)		//wait the data come in		
		begin	
			start_flag						<=					start								;
			if(start&(~start_flag))		
			begin		
				state_in						<=					state_in_input					;
			end
			if(cnt_in_offset_height[0] == 1)
				start_out_first 	 		<=					1'b1								;
			else
				start_out_first			<=					1'b0								;

		end
		else if(state_in == state_in_input)		//save the data
		begin
					if(start_out_first&(cnt_in_mem_length==filter_size-1))
				start_output				<=					1'b1								;
			else if(start_out_first&(cnt_in_mem_length>filter_size-1))
				start_output				<=					!start_output					;
			else
				start_output				<=					1'b0								;

			if(cnt_in_mem_length	>	length - stride_in - 1'b1)//���л������һ��
			begin
				cnt_in_mem_length			<=					0										;				
				if(cnt_in_offset_height	> height - stride_in)		//���л������һ��
				begin	
					cnt_in_mem_height		<=					0										;
					state_in					<=					state_in_reset						;
				end	
				else	
				begin	
					cnt_in_offset_height	<=					cnt_in_offset_height	+ stride_in;
					if(cnt_in_mem_height + stride_in < mem_height)
						cnt_in_mem_height	<=					cnt_in_mem_height + stride_in	;
					else
						cnt_in_mem_height	<=					cnt_in_mem_height + stride_in	- mem_height;
				end	
			end	
			else	
			begin	
				cnt_in_mem_length			<=					cnt_in_mem_length + stride_in		;
			end
			state_in							<=					state_in_wait						;
		end	
		else	
		begin	
			state_in							<=					state_in_reset						;
		end
	end
end

//******************************************************
//***********************output data********************
//******************************************************
//*************************data_parameter***************
reg					[1:0]						state_out					;	//state that output data
reg					[height_2-1:0]			cnt_out_offset_height	;	//offset in height
reg					[length_2-1:0]			cnt_out_offset_length	;	//offset in length
reg					[height_2-1:0]			cnt_out_data_height		;	//height of output first data
reg					[length_2-1:0]			cnt_out_data_length		;	//length of output first data
reg					[mem_height_2-1:0]	cnt_out_mem_height		;	//addrb height
reg					[mem_length_2-1:0]	cnt_out_mem_length		;	//addrb length
////***************************************************************************
reg												cnt_out_speed				;	//output speed is 1/2	
//**************************weight_parameter*********************************
always@(posedge clk_in or negedge rst_n)
begin
	if(!rst_n)
	begin
		state_out						<=							state_out_reset				;
	end		
	else		
	begin		
		if(state_out == state_out_reset)		
		begin		
			cnt_out_offset_height	<=							0									;
			cnt_out_offset_length	<=							0									;
			cnt_out_data_height		<=							0									;
			cnt_out_data_length		<=							0									;
			cnt_out_mem_height		<=							0									;
			cnt_out_mem_length		<=							first_length - 1				;	
			state_out					<=							state_out_wait					;
			ready							<=							1'b0								;
			cnt_out_speed				<=							1'b1								;
		end
		else if(state_out == state_out_wait)
		begin
				start_output_flag							<=								start_output						;
			if(start_output&(!start_output_flag))			
				state_out									<=								state_out_output					;
		end			
		else if(state_out == state_out_output)			
		begin	
		//***********************************************************************
		//********************************data_out*******************************
		//***********************************************************************
		//			cnt_out_speed									<=								cnt_out_speed + 1'b1				;
			if(cnt_out_offset_height == 0 && cnt_out_offset_length == 0)
				ready										<=								1'b1									;
			else
				ready										<=								1'b0									;
			if(cnt_out_speed)
			begin
				if(cnt_out_offset_height == filter_size-1)			
				begin			
					cnt_out_offset_height			<=								0										;
					if(cnt_out_offset_length == filter_size-1)			
					begin				
						cnt_out_offset_length			<=								0										;
						if(cnt_out_data_length > length - filter_size - stride)
						begin
							if(cnt_out_data_height > height - filter_size - stride)
							begin
								state_out					<=								state_out_reset					;
							end
							else
							begin	
								state_out					<=								state_out_wait						;
								if(cnt_out_data_height	+	stride < mem_height)
								begin
									cnt_out_data_height	<=								cnt_out_data_height	+	stride;
									cnt_out_mem_height	<=								cnt_out_data_height	+ 	stride;
								end
								else
								begin
									cnt_out_data_height	<=								cnt_out_data_height	+	stride - mem_height;
									cnt_out_mem_height	<=								cnt_out_data_height	+ 	stride - mem_height;
								end
								cnt_out_data_length		<=								0										;
								cnt_out_mem_length		<=								0										;
							end
						end
						else
						begin
							state_out						<=								state_out_wait						;
							cnt_out_mem_height			<=								cnt_out_data_height				;
							cnt_out_mem_length			<=								cnt_out_data_length + stride	;
							cnt_out_data_length			<=								cnt_out_data_length + stride	;
						end
					end
					else
					begin
						cnt_out_offset_length			<=								cnt_out_offset_length + 1'b1	;
						cnt_out_mem_height				<=								cnt_out_data_height				;
						cnt_out_mem_length				<=								cnt_out_mem_length + 1'b1		;
					end
				end
				else
				begin
					cnt_out_offset_height				<=								cnt_out_offset_height + 1'b1	;
					if(cnt_out_mem_height == mem_height-1)
						cnt_out_mem_height				<=								0										;
					else
						cnt_out_mem_height				<=								cnt_out_mem_height	+	1'b1	;
				end
			end
		end
		else
		begin
			state_out					<=							state_out_reset		;
		end
	end
end

//*****************************************************
//************saveing**********************************
//*****************************************************

////�����ַ��һ��ʱ�����ڵ��ӳ٣������Ҫ����������Ҳ����һ��ʱ�ӵ��ӳ�
//reg				[(channel_num<<bits_shift)-1:0]		data_temp			;
//always@(posedge clk_in)
//begin
//	data_temp								<=					data_in				;
//end	
wire  			[8:0]											addra												;
assign addra	=	((cnt_in_mem_height<<4)+(cnt_in_mem_height<<1))+cnt_in_mem_length		;
wire				[8:0]											addrb												;
wire				[64:0]										data_out_temp[0:3]							;
assign addrb	=	((cnt_out_mem_height<<4)+(cnt_out_mem_height<<1))+cnt_out_mem_length		;

l3cb1 L3CB1 (
  .clka(clk_in), // input clka
  .wea(start&(!start_flag)), // input [0 : 0] wea
  .addra(addra), // input [10 : 0] addra
  .dina(data_in), // input [255 : 0] dina
  .clkb(clk_in), // input clkb
  .addrb(addrb), // input [10 : 0] addrb
  .doutb(data_out) // output [255 : 0] doutb
);
endmodule
