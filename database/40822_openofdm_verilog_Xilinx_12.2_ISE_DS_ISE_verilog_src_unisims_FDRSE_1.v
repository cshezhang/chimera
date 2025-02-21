// This program was cloned from: https://github.com/jhshi/openofdm
// License: Apache License 2.0

// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/unisims/FDRSE_1.v,v 1.11 2006/02/13 22:07:02 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  D Flip-Flop with Synchronous Reset and Set, Clock Enable and Negative-Edge Clock
// /___/   /\     Filename : FDRSE_1.v
// \   \  /  \    Timestamp : Thu Mar 25 16:42:18 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    02/04/05 - Rev 0.0.1 Remove input/output bufs; Seperate GSR from clock block.
//    10/20/05 - Add set & reset check to main  block. (CR219794)
//    2/07/06 - Remove set & reset from main block and add specify block (CR225119)
//    2/10/06 - Change Q from reg to wire (CR 225613)
// End Revision

`timescale  1 ps / 1 ps


module FDRSE_1 (Q, C, CE, D, R, S);

    parameter INIT = 1'b0;

    output Q;

    input  C, CE, D, R, S;

    wire Q;
    reg q_out;
    tri0 GSR = glbl.GSR;

    initial q_out = INIT;

    assign Q = q_out;

    always @(GSR)
      if (GSR)
            assign q_out = INIT;
      else
            deassign q_out;

    always @(negedge C )
         if (R)
	     q_out <=  0;
         else if (S)
	     q_out <=  1;
         else if (CE)
	     q_out <=  D;

    specify
        if (R)
            (negedge C => (Q +: 1'b0)) = (100, 100);
        if (!R && S)
            (negedge C => (Q +: 1'b1)) = (100, 100);
        if (!R && !S && CE)
            (negedge C => (Q +: D)) = (100, 100);
    endspecify

endmodule
