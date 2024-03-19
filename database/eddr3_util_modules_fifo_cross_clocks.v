/*******************************************************************************
 * Module: fifo_cross_clocks
 * Date:2014-05-20  
 * Author: Andrey Filippov
 * Description: Configurable FIFO with separate read and write clocks
 *
 * Copyright (c) 2014 Elphel, Inc.
 * fifo_cross_clocks.v is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 *  fifo_cross_clocks.v is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/> .
 *******************************************************************************/
`timescale 1ns/1ps

module fifo_cross_clocks
#(
  parameter integer DATA_WIDTH=16,
  parameter integer DATA_DEPTH=4 // >=3
) (
    input                   rst,      // reset, active high
    input                   rclk,     // read clock - positive edge
    input                   wclk,     // write clock - positive edge
    input                   we,       // write enable
    input                   re,       // read enable
    input  [DATA_WIDTH-1:0] data_in,  // input data
    output [DATA_WIDTH-1:0] data_out, // output data
    output                  nempty,   // FIFO has some data (sync to rclk)
    output                  half_empty // FIFO half full (wclk) -(not more than 5/8 full)
  );
    localparam integer DATA_2DEPTH=(1<<DATA_DEPTH)-1;
    reg  [DATA_WIDTH-1:0]   ram [0:DATA_2DEPTH];
    reg  [DATA_DEPTH-1:0] raddr;
    reg  [DATA_DEPTH-1:0] waddr;
    reg  [DATA_DEPTH-1:0] waddr_gray; //SuppressThisWarning ISExst VivadoSynthesis : MSB(waddr_gray) == MSB(waddr)
    reg  [DATA_DEPTH-1:0] waddr_gray_rclk;
    wire [DATA_DEPTH-1:0] waddr_plus1 = waddr +1;   
    wire [DATA_DEPTH-1:0] waddr_plus1_gray = waddr_plus1 ^ {1'b0,waddr_plus1[DATA_DEPTH-1:1]};
       
    wire [DATA_DEPTH-1:0] raddr_gray = raddr ^ {1'b0,raddr[DATA_DEPTH-1:1]};
    wire [DATA_DEPTH-1:0] raddr_plus1 = raddr +1;   
    wire [2:0] raddr_plus1_gray_top3 = raddr_plus1[DATA_DEPTH-1:DATA_DEPTH-3] ^ {1'b0,raddr_plus1[DATA_DEPTH-1:DATA_DEPTH-2]};
    reg  [2:0] raddr_gray_top3; //SuppressThisWarning ISExst VivadoSynthesis : MSB(raddr_gray_top3) == MSB(raddr)
    reg  [2:0] raddr_gray_top3_wclk;
       wire [2:0] raddr_top3_wclk = {
        raddr_gray_top3_wclk[2],
        raddr_gray_top3_wclk[2]^raddr_gray_top3_wclk[1],
        raddr_gray_top3_wclk[2]^raddr_gray_top3_wclk[1]^raddr_gray_top3_wclk[0]};
   wire [2:0] waddr_top3=waddr[DATA_DEPTH-1:DATA_DEPTH-3];
   wire [2:0] addr_diff=waddr_top3[2:0]-raddr_top3_wclk[2:0];
    // half-empty does not need to be precise, it uses 3 MSBs of the write address
    // converting to Gray code (easy) and then back (can not be done parallel easily).
    // Comparing to 1/8'th of the depth with one-bit Gray code error results in uncertainty
    // of +/-1/8, so half_empty means "no more than 5/8 full"
    assign half_empty=~addr_diff[2];
    // False positive in nempty can only happen if
    // a) it is transitioning from empty to non-empty due to we pulse
    // b) it is transitioning to overrun - too bad already
    // false negative - OK, just wait for the next rclk 
//    assign nempty=waddr_gray_rclk != raddr_gray;
//    assign nempty=waddr_gray_rclk[3:0] != raddr_gray[3:0];
    assign nempty= (waddr_gray_rclk[3:0] ^ raddr_gray[3:0]) != 4'b0;
    assign data_out=ram[raddr];
    always @ (posedge  wclk or posedge rst) begin
        if (rst)     waddr <= 0;
        else if (we) waddr <= waddr_plus1;
        if (rst)     waddr_gray <= 0;
 //       else if (we) waddr_gray <= waddr_plus1_gray;
        else if (we) waddr_gray [3:0] <= waddr_plus1_gray[3:0];
        
    end
    
    always @ (posedge  rclk or posedge rst) begin
        if (rst)     raddr <= 0;
        else if (re) raddr <= raddr_plus1;
        if (rst)     raddr_gray_top3 <= 0;
        else if (re) raddr_gray_top3 <= raddr_plus1_gray_top3;
    end
    
    always @ (posedge  rclk) begin
 //       waddr_gray_rclk <= waddr_gray;
        waddr_gray_rclk[3:0] <= waddr_gray[3:0];
        
    end

    always @ (posedge  wclk) begin
 //         raddr_gray_top3_wclk <= raddr_gray_top3;
          raddr_gray_top3_wclk[2:0] <= raddr_gray_top3[2:0];
          if (we) ram[waddr] <= data_in;
    end
    
endmodule

