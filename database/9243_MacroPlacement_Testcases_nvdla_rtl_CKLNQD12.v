// This program was cloned from: https://github.com/TILOS-AI-Institute/MacroPlacement
// License: BSD 3-Clause "New" or "Revised" License

// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: CKLNQD12.v
module CKLNQD12 (
  TE
 ,E
 ,CP
 ,Q
 );
input TE ;
input E ;
input CP ;
output Q ;
reg qd;
always @(negedge CP)
    qd <= TE | E;
assign Q = CP & qd;
//PREICG_X1N_A7P5PP60TR_C8 uicg(.E (E), .CK (CP), .SE (TE), .ECK (Q));
endmodule
