// This program was cloned from: https://github.com/Canaan-Creative/MM
// License: The Unlicense

//   ==================================================================
//   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
//   ------------------------------------------------------------------
//   Copyright (c) 2006-2011 by Lattice Semiconductor Corporation
//   ALL RIGHTS RESERVED 
//   ------------------------------------------------------------------
//
//   IMPORTANT: THIS FILE IS AUTO-GENERATED BY THE LATTICEMICO SYSTEM.
//
//   Permission:
//
//      Lattice Semiconductor grants permission to use this code
//      pursuant to the terms of the Lattice Semiconductor Corporation
//      Open Source License Agreement.  
//
//   Disclaimer:
//
//      Lattice Semiconductor provides no warranty regarding the use or
//      functionality of this code. It is the user's responsibility to
//      verify the user�s design for consistency and functionality through
//      the use of formal verification methods.
//
//   --------------------------------------------------------------------
//
//                  Lattice Semiconductor Corporation
//                  5555 NE Moore Court
//                  Hillsboro, OR 97214
//                  U.S.A
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                         503-286-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
//   --------------------------------------------------------------------
//                         FILE DETAILS
// File         : txmitt.v
// Title        : UART Component -- txmitt
// Code type    : Register Transfer Level
// Dependencies : 
// Description:       Verilog file for the UART Transmitter Module
//
//    <Global reset and clock>
//      reset        : Master reset
//      clk          : System clock
//
//    <Register>
//      thr         : Transmitter Holding Register
//
//    <Rising edge of thr write strobe>
//      thr_wr      : one clk width pulse indicating rising edge of ThrWRn_r
//
//    <Transmitter output>
//      sout        : Transmitter serial output
//
//    <Transmitter control>
//      databits     : "00"=5-bit, "01"=6-bit, "10"=7-bit, "11"=8-bit
//      stopbits    : "00"=1-bit, "01"=1.5-bit(5-bit data),
//                    "10"=2-bit(6,7,8-bit data)
//      parity_en   : '0'=Parity Bit Enable, '1'=Parity Bit Disable
//      parity_even : '0'=Even Parity Selected, '1'=Odd Parity Selected
//      parity_stick: '0'=Stick Parity Disable, '1'=Stick Parity Enable
//      tx_break    : '0'=Disable BREAK assertion, '1'=Assert BREAK
//
//    <Transmitter status>
//      thrr        : thr is ready
//      temt        : Both thr and tsr are empty
//
// =============================================================================
//                        REVISION HISTORY
// Version      : 1.0
// Changes Made : Initial Creation
//
// Version      : 7.0SP2
// Changes Made : No Change
//
// Version      : 7.1, 3.0
// Changes Made : Fix one TSR bit setting issue, only update it after STOP bit is
//                totally shifted out.
//
// Version      : 3.1
// Changes Made : Initial Creation
//                Baudrate Generation is modified.
//                RX and TX path of the UART is updated to faster clock
//                16 word deep FIFO is implemented when FIFO option is
//                selected
//                
// Version      : 3.5
// Changes Made : WISHBONE Data Bus can be 8 bits or 32 bits. All UART registers 
//                occupy byte instead of 4 bytes (i.e. registers are accessible 
//                using 3 bits only instead of original 5 bits).
//
// Version      : 3.7
// Changes Made : Bug fixed for the TX FIFO cannot accept new data if TX FIFO is 
//                not empty. New FIFO supports Transmitter Hold Register Ready bit 
//                instead of Tranmitter Hold Register Empty bit.
// ============================================================================

`ifndef TXMITT_FILE
`define TXMITT_FILE
`include "system_conf.v"
module txmitt #(parameter UART_WB_DAT_WIDTH = 8,
                parameter FIFO = 0) 
  (  
  reset,         // Global reset and clock
  clk,      
  thr,           // Register THR                    
  thr_wr,        // THR write strobe 
  sout,          // Transmitter output              
  databits,      // Transmitter control             
  stopbits,      
  parity_en,     
  parity_even,   
  parity_stick,  
  tx_break,      
  thrr,          // Transmitter status  
  temt,
  fifo_empty_thr,
  fifo_full_thr,
  thr_rd,
  divisor);

  input    reset ;
  input    clk   ;
  input [UART_WB_DAT_WIDTH-1 :0]   thr;
                 
  input                    thr_wr ;
  input [1:0]              databits;
  input [1:0]              stopbits;
  input                    parity_en;
  input                    parity_even ;
  input                    parity_stick; 
  input                    tx_break ;
  input                    fifo_empty_thr;
  input					   fifo_full_thr;
  output                   thr_rd;
                 
  output                   thrr;
  output                   temt;
  output                   sout;
  input [15:0]             divisor;
  
  reg                      tx_output;
  reg [UART_WB_DAT_WIDTH-1 :0]     tsr;
  reg                      tx_parity;
  reg                      thr_ready;
  reg                      tsr_empty;
  reg                      thr_empty;
  reg                      tx_in_start_s;
  reg                      tx_in_shift_s;
  reg                      tx_in_stop_s;
  reg                      tx_in_shift_s1; //tx_in_shift_s delayed 1 clock
  reg                      tx_in_stop_s1; //tx_in_stop_s delayed 1 clock
  reg                      txclk_ena;
  reg                      txclk_enb;
  reg [2:0]                tx_cnt;
  reg [3:0]                count_v;
  reg                      thr_rd_int;
  reg                      thr_rd_delay;
  reg                      last_word;
  
  // State Machine Definition
  parameter start        = 3'b000;
  parameter shift        = 3'b001;
  parameter parity       = 3'b010;
  parameter stop_1bit    = 3'b011;
  parameter stop_2bit    = 3'b100;
  parameter stop_halfbit = 3'b101;
  parameter start1       = 3'b110; 
 
  reg [2:0] tx_state;
  reg [15:0] counter;
  wire [15:0] divisor_2;
  assign divisor_2 = divisor/2;

 generate 
   if (FIFO == 1)  
   // Generate Single cycle THR FIFO read signal 
   always @(posedge clk or posedge reset)
     if (reset)
       thr_rd_delay <= 1'b0;
     else
       thr_rd_delay <= thr_rd_int;
   assign thr_rd = thr_rd_int & ~thr_rd_delay; 	     
 endgenerate

   ////////////////////////////////////////////////////////////////////////////////
   // Transmitter Finite State Machine
   ////////////////////////////////////////////////////////////////////////////////

   generate
   begin
      if (FIFO == 1)
      begin

     always @(posedge clk or posedge reset) begin
     if (reset) 
       thr_rd_int <= 1'b0;
     else begin
       if ((tx_state == start) && (!fifo_empty_thr) && !thr_rd_int)
         thr_rd_int <= 1'b1;
       else if (tx_state == shift)
	 thr_rd_int <= 1'b0;      
     end
     end

     always @(posedge clk or posedge reset) begin
     if (reset) begin
          tx_cnt    <= 0;
          tsr       <= 0;
          tx_output <= 1'b1;
          tx_parity <= 1'b1;
          tx_state  <= start; 
          last_word <= 1'b0;
          counter   <= 16'b0000000000000000;end 
     else begin
        case (tx_state)

  start:  
	if (thr_rd_delay)   
	  tx_state <= start1;
	  
  start1: begin
             if (last_word)
		  last_word <= 1'b0;
            if ( ~|counter)
	      counter <= divisor;
            else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		 counter <= 0;
	         tx_state <= shift;
                 tx_parity <= ~parity_even;  // TxParity initialization
                 tx_cnt <= 0;		
		 tsr <= thr;
	      end
              else
	        counter <= counter - 1'b1;
	     end
              tx_output <= 1'b0;	
         end

	 shift: begin
	     tx_output <= tsr[0];	 
	     if ( ~|counter)
	      counter <= divisor;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		tx_parity <= tx_parity ^ tsr[0];
		counter <= 0;      
                tsr <= {1'b0, tsr[7:1]};      // Shift serial data out
                tx_cnt <= tx_cnt + 1;
                if ((databits==2'b00 && tx_cnt==3'h4) || 
                    (databits==2'b01 && tx_cnt==3'h5) || 
                    (databits==2'b10 && tx_cnt==3'h6) || 
                    (databits==2'b11 && tx_cnt==3'h7))   
                    tx_state <= (parity_en) ? parity : stop_1bit;
                end
	      else 
	        counter <= counter - 1'b1;
             end
           end 	     
	  parity: begin
            if ( ~|counter)
	      counter <= divisor;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		counter <= 0;
                tx_state <= stop_1bit;
              end
	      else
		counter <= counter - 1'b1;
             end
             tx_output <= (parity_stick) ? (~parity_even) : tx_parity;
           end 	     
              
	   stop_1bit: begin
             if ( ~|counter)
	      counter <= divisor;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		counter <= 0; 
                if (fifo_empty_thr)
	          last_word <= 1'b1;
                if (stopbits == 2'b00)      // 1 stop bit 
		   tx_state <= start; 	   
                else if (stopbits == 2'b01) // 1.5 stop bits(for 5-bit data only)
                   tx_state <= stop_halfbit;
                else
                   tx_state <= stop_2bit;    // 2 stop bits(for 6,7,8-bit data)
              end
	      else
		counter <= counter - 1'b1;
             end 	
             tx_output  <= 1'b1;
           end		   
   
	   stop_2bit: begin
             if ( ~|counter)
	      counter <= divisor;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		counter <= 0;
                tx_state <= start;
	      end
              else
	        counter <= counter - 1'b1;
             end
              tx_output <= 1'b1;	     
           end		   
          
	   stop_halfbit: begin
             if ( ~|counter)
	      counter <= divisor_2;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		counter <= 0;           		   
                tx_state <= start;
	      end
              else
	        counter <= counter - 1'b1;
             end
              tx_output <= 1'b1;	     
           end          
          default: tx_state <= start;
        endcase             
     end
   end
      end
      else
      begin

   always @(posedge clk or posedge reset) begin
     if (reset) begin
          tx_cnt    <= 0;
          tsr       <= 0;
          tx_output <= 1'b1;
          tx_parity <= 1'b1;
          tx_state  <= start; 
          counter   <= 16'b0000000000000000; end 
     else begin
        case (tx_state)
         start: 
            if (!thr_ready)
              tx_state <= start1;

         start1: begin 
            if ( ~|counter)
	      counter <= divisor;
            else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		 counter <= 0;
	         tx_state <= shift;
                 tx_parity <= ~parity_even;  // TxParity initialization
                 tx_cnt <= 0;		
		 tsr <= thr;
	      end
              else
	        counter <= counter - 1'b1;
	     end
              tx_output <= 1'b0;
         end

          shift: begin
	     tx_output <= tsr[0];	 
	     if ( ~|counter)
	      counter <= divisor;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		tx_parity <= tx_parity ^ tsr[0];      
		counter <= 0;      
                tsr <= {1'b0, tsr[7:1]};      // Shift serial data out
                tx_cnt <= tx_cnt + 1;
                if ((databits==2'b00 && tx_cnt==3'h4) || 
                    (databits==2'b01 && tx_cnt==3'h5) || 
                    (databits==2'b10 && tx_cnt==3'h6) || 
                    (databits==2'b11 && tx_cnt==3'h7))   
                    tx_state <= (parity_en) ? parity : stop_1bit;
                end
	      else 
	        counter <= counter - 1'b1;
             end
           end 
          
          parity:begin
            if ( ~|counter)
	      counter <= divisor;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		counter <= 0;
                tx_state <= stop_1bit;
              end
	      else
		counter <= counter - 1'b1;
             end
             tx_output <= (parity_stick) ? (~parity_even) : tx_parity;
           end

          stop_1bit: begin
             if ( ~|counter)
	      counter <= divisor;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		counter <= 0; 
                if (stopbits == 2'b00)      // 1 stop bit 
		   tx_state <= start; 	   
                else if (stopbits == 2'b01) // 1.5 stop bits(for 5-bit data only)
                   tx_state <= stop_halfbit;
                else
                   tx_state <= stop_2bit;    // 2 stop bits(for 6,7,8-bit data)
              end
	      else
		counter <= counter - 1'b1;
             end 	
             tx_output  <= 1'b1;
           end

          stop_2bit: begin
             if ( ~|counter)
	      counter <= divisor;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		counter <= 0;
                tx_state <= start;
	      end
              else
	        counter <= counter - 1'b1;
             end
              tx_output <= 1'b1;	     
           end
          
          stop_halfbit:begin
             if ( ~|counter)
	      counter <= divisor_2;
             else begin
	      if (counter == 16'b0000_0000_0000_0001) begin
		counter <= 0;           		   
                tx_state <= start;
	      end
              else
	        counter <= counter - 1'b1;
             end
              tx_output <= 1'b1;	     
           end

          default: tx_state <= start;
        endcase             
     end
   end         
      end
   end
endgenerate



   ////////////////////////////////////////////////////////////////////////////////
   // Generate tsr_empty and thr_empty signals
   ////////////////////////////////////////////////////////////////////////////////

   // tsr_empty : will be set whenever tsr is empty
generate 
begin
   if (FIFO == 1)
   begin
       always @(posedge clk or posedge reset) begin 
        if (reset)
          tsr_empty <= 1'b1;
        else if (tx_in_stop_s == 1'b0 && tx_in_stop_s1 == 1'b1 && last_word) 
          tsr_empty <= 1'b1; // Set TsrEmpty flag to '1' when StopBit(s) is all transmitted 
        else if (tx_in_shift_s == 1'b1 && tx_in_shift_s1 == 1'b0)
          tsr_empty <= 1'b0; //Reset TsrEmpty flag to '0' when data is transferred from THR to TSR
     end  
   end
   else
   begin
         always @(posedge clk or posedge reset) begin 
        if (reset)
          tsr_empty <= 1'b1;		
        else if (tx_in_stop_s == 1'b0 && tx_in_stop_s1 == 1'b1)
          tsr_empty <= 1'b1; // Set TsrEmpty flag to '1' when StopBit(s) is all transmitted 
        else if (tx_in_shift_s == 1'b1 && tx_in_shift_s1 == 1'b0)
          tsr_empty <= 1'b0; //Reset TsrEmpty flag to '0' when data is transferred from THR to TSR
     end
   end
end
endgenerate

generate
if (FIFO == 1)
begin
    always @(posedge clk or posedge reset) begin 
     if (reset)
       thr_empty <= 1'b1;
     else if (thr_wr)
       thr_empty <= 1'b0; // Reset ThrEmpty flag to '0' when data is written into THR by CPU   
     else if (fifo_empty_thr && tx_in_shift_s && !tx_in_shift_s1) // Set ThrEmpty flag to '1' THR FIFO is empty	     	     
       thr_empty <= 1'b1;      
     end  
end
else
begin
      always @(posedge clk or posedge reset) begin 
     if (reset)
       thr_empty <= 1'b1;
     else if (thr_wr)
       thr_empty <= 1'b0; // Reset ThrEmpty flag to '0' when data is written into THR by CPU   	     
     else if (tx_in_shift_s && !tx_in_shift_s1) // Set ThrEmpty flag to '1' when data is transferred from THR to TSR 	     
       thr_empty <= 1'b1;      
     end
end
endgenerate

   ////////////////////////////////////////////////////////////////////////////////
   // Generate thr_ready signals
   ////////////////////////////////////////////////////////////////////////////////
generate
if (FIFO == 1)
begin
    always @(posedge clk or posedge reset) begin 
     if (reset)
       thr_ready <= 1'b1;
     else  										// Reset thr_ready flag to '1' when THR FIFO is not full	 
       thr_ready <= ~fifo_full_thr;        
     end  
end
else
begin
      always @(posedge clk or posedge reset) begin 
     if (reset)
       thr_ready <= 1'b1;
     else if (thr_wr)
       thr_ready <= 1'b0; 						// Reset thr_ready flag to '0' when data is written into THR by CPU   	     
     else if (tx_in_shift_s && !tx_in_shift_s1) // Set thr_ready flag to '1' when data is transferred from THR to TSR 	     
       thr_ready <= 1'b1;      
     end
end
      
endgenerate
   
   ////////////////////////////////////////////////////////////////////////////////
          // Delayed signals for edge detections
   ////////////////////////////////////////////////////////////////////////////////
   always @(posedge clk or posedge reset) begin
        if (reset) begin
          tx_in_shift_s1 <= 1'b0;
          tx_in_stop_s1  <= 1'b0;
          end          
        else begin
          tx_in_shift_s1 <= tx_in_shift_s;
          tx_in_stop_s1  <= tx_in_stop_s;
          end
     end
   
   ////////////////////////////////////////////////////////////////////////////////
   // Transmitter FSM state indication signals
   ////////////////////////////////////////////////////////////////////////////////
   
   // tx_in_shift_s : will be set whenever transmitter is in shift state
   always @(posedge clk or posedge reset) begin 
        if (reset)
          tx_in_shift_s <= 1'b0;
        else if (tx_state == shift)
          tx_in_shift_s <= 1'b1;
        else
          tx_in_shift_s <= 1'b0;
     end
   
   // tx_in_stop_s : will be set whenever transmitter is in stop_1bit state
   always @(posedge clk or posedge reset) begin 
        if (reset)
          tx_in_stop_s <= 1'b0;
        else if (tx_state == stop_1bit)
          tx_in_stop_s <= 1'b1;
        else
          tx_in_stop_s <= 1'b0;
     end   
   
 ////////////////////////////////////////////////////////////////////////////////
 // Generate thrr/temt flags
 ////////////////////////////////////////////////////////////////////////////////
 
 // Transmitter Holding Register Ready Indicator
 assign thrr = thr_ready;
 
 // Transmitter Empty Indicator is set to '1' whenever thr and tsr are
 // both empty, and reset to '0' when either thr or tsr contain a character
 assign temt =((thr_empty==1'b1) && (tsr_empty==1'b1)) ?  1'b1 : 1'b0;
 
 // Serial Data Output
 // If Break Control bit is set to 1, the serial output is forced to Zero
 assign sout = (tx_break==1'b1) ? 1'b0 : tx_output;
   
endmodule
`endif // TXMITT_FILE
