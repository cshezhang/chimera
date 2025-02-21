// This program was cloned from: https://github.com/alexforencich/xfcp
// License: MIT License

/*

Copyright (c) 2017 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`timescale 1ns / 1ps

/*
 * Testbench for xfcp_interface_uart
 */
module test_xfcp_interface_uart;

// Parameters

// Inputs
reg clk = 0;
reg rst = 0;
reg [7:0] current_test = 0;

reg uart_rxd = 1;
reg [7:0] down_xfcp_in_tdata = 0;
reg down_xfcp_in_tvalid = 0;
reg down_xfcp_in_tlast = 0;
reg down_xfcp_in_tuser = 0;
reg down_xfcp_out_tready = 0;
reg [15:0] prescale = 0;

// Outputs
wire uart_txd;
wire down_xfcp_in_tready;
wire [7:0] down_xfcp_out_tdata;
wire down_xfcp_out_tvalid;
wire down_xfcp_out_tlast;
wire down_xfcp_out_tuser;

initial begin
    // myhdl integration
    $from_myhdl(
        clk,
        rst,
        current_test,
        uart_rxd,
        down_xfcp_in_tdata,
        down_xfcp_in_tvalid,
        down_xfcp_in_tlast,
        down_xfcp_in_tuser,
        down_xfcp_out_tready,
        prescale
    );
    $to_myhdl(
        uart_txd,
        down_xfcp_in_tready,
        down_xfcp_out_tdata,
        down_xfcp_out_tvalid,
        down_xfcp_out_tlast,
        down_xfcp_out_tuser
    );

    // dump file
    $dumpfile("test_xfcp_interface_uart.lxt");
    $dumpvars(0, test_xfcp_interface_uart);
end

xfcp_interface_uart
UUT (
    .clk(clk),
    .rst(rst),
    .uart_rxd(uart_rxd),
    .uart_txd(uart_txd),
    .down_xfcp_in_tdata(down_xfcp_in_tdata),
    .down_xfcp_in_tvalid(down_xfcp_in_tvalid),
    .down_xfcp_in_tready(down_xfcp_in_tready),
    .down_xfcp_in_tlast(down_xfcp_in_tlast),
    .down_xfcp_in_tuser(down_xfcp_in_tuser),
    .down_xfcp_out_tdata(down_xfcp_out_tdata),
    .down_xfcp_out_tvalid(down_xfcp_out_tvalid),
    .down_xfcp_out_tready(down_xfcp_out_tready),
    .down_xfcp_out_tlast(down_xfcp_out_tlast),
    .down_xfcp_out_tuser(down_xfcp_out_tuser),
    .prescale(prescale)
);

endmodule
