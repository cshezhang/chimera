// This program was cloned from: https://github.com/PaperL/FPGA-Sketch
// License: Apache License 2.0

//
// Copyright (c) 2015 University of Cambridge
// All rights reserved.
//
//
//  File:
//        input_arbiter_cpu_regs_defines.v
//
//  Module:
//        input_arbiter_cpu_regs_defines
//
//  Description:
//        This file is automatically generated with the registers defintions towards the CPU/Software
//
// This software was developed by
// Stanford University and the University of Cambridge Computer Laboratory
// under National Science Foundation under Grant No. CNS-0855268,
// the University of Cambridge Computer Laboratory under EPSRC INTERNET Project EP/H040536/1 and
// by the University of Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-11-C-0249 ("MRC2"), 
// as part of the DARPA MRC research programme.
//
// @NETFPGA_LICENSE_HEADER_START@
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// @NETFPGA_LICENSE_HEADER_END@
//

           `define  REG_ID_BITS				31:0
           `define  REG_ID_WIDTH				32
           `define  REG_ID_DEFAULT			32'h0000DA01
           `define  REG_ID_ADDR				32'h0

           `define  REG_VERSION_BITS				31:0
           `define  REG_VERSION_WIDTH				32
           `define  REG_VERSION_DEFAULT			32'h1
           `define  REG_VERSION_ADDR				32'h4

           `define  REG_RESET_BITS				15:0
           `define  REG_RESET_WIDTH				16
           `define  REG_RESET_DEFAULT			16'h0
           `define  REG_RESET_ADDR				32'h8

           `define  REG_FLIP_BITS				31:0
           `define  REG_FLIP_WIDTH				32
           `define  REG_FLIP_DEFAULT			32'h0
           `define  REG_FLIP_ADDR				32'hC

           `define  REG_DEBUG_BITS				31:0
           `define  REG_DEBUG_WIDTH				32
           `define  REG_DEBUG_DEFAULT			32'h0
           `define  REG_DEBUG_ADDR				32'h10

           `define  REG_PKTIN_BITS				31:0
           `define  REG_PKTIN_WIDTH				32
           `define  REG_PKTIN_DEFAULT			32'h0
           `define  REG_PKTIN_ADDR				32'h14

           `define  REG_PKTOUT_BITS				31:0
           `define  REG_PKTOUT_WIDTH				32
           `define  REG_PKTOUT_DEFAULT			32'h0
           `define  REG_PKTOUT_ADDR				32'h18
