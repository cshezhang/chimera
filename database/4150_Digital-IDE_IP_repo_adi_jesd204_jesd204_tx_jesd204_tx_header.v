// This program was cloned from: https://github.com/Nitcloud/Digital-IDE
// License: GNU General Public License v3.0

//
// The ADI JESD204 Core is released under the following license, which is
// different than all other HDL cores in this repository.
//
// Please read this, and understand the freedoms and responsibilities you have
// by using this source code/core.
//
// The JESD204 HDL, is copyright © 2016-2017 Analog Devices Inc.
//
// This core is free software, you can use run, copy, study, change, ask
// questions about and improve this core. Distribution of source, or resulting
// binaries (including those inside an FPGA or ASIC) require you to release the
// source of the entire project (excluding the system libraries provide by the
// tools/compiler/FPGA vendor). These are the terms of the GNU General Public
// License version 2 as published by the Free Software Foundation.
//
// This core  is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE. See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License version 2
// along with this source code, and binary.  If not, see
// <http://www.gnu.org/licenses/>.
//
// Commercial licenses (with commercial support) of this JESD204 core are also
// available under terms different than the General Public License. (e.g. they
// do not require you to accompany any image (FPGA or ASIC) using the JESD204
// core with any corresponding source code.) For these alternate terms you must
// purchase a license from Analog Devices Technology Licensing Office. Users
// interested in such a license should contact jesd204-licensing@analog.com for
// more information. This commercial license is sub-licensable (if you purchase
// chips from Analog Devices, incorporate them into your PCB level product, and
// purchase a JESD204 license, end users of your product will also have a
// license to use this core in a commercial setting without releasing their
// source code).
//
// In addition, we kindly ask you to acknowledge ADI in any program, application
// or publication in which you use this JESD204 HDL core. (You are not required
// to do so; it is up to your common sense to decide whether you want to comply
// with this request or not.) For general publications, we suggest referencing :
// “The design and implementation of the JESD204 HDL Core used in this project
// is copyright © 2016-2017, Analog Devices, Inc.”
//

`timescale 1ns/100ps

module jesd204_tx_header (
  input clk,
  input reset,

  input [1:0]  cfg_header_mode,

  input        lmc_edge,
  input        lmc_quarter_edge,

  // Header content to be sent must be valid during lmc_edge
  input        eoemb,
  input [2:0]  crc3,
  input [11:0] crc12,
  input [25:0] fec,
  input [18:0] cmd,

  output [1:0] header

);

  reg header_bit;
  reg [31:0] sync_word = 'h0;


  always @(posedge clk) begin
    if (reset) begin
      sync_word <= 'h0;
    end else if (lmc_edge) begin
      case (cfg_header_mode)
        // CRC-12
        2'b00 : sync_word <= {crc12[11:9],1'b1,crc12[8:6],1'b1,
                               crc12[5:3],1'b1,crc12[2:0],1'b1,
                                 cmd[6:4],1'b1,cmd[3],1'b1,eoemb,1'b1,
                                 cmd[2:0],5'b00001};
        // CRC-3
        2'b01 : sync_word <= {  crc3[2:0],1'b1,cmd[6:4],1'b1,
                                   3'b000,1'b1,cmd[3:1],1'b1,
                                   3'b000,1'b1,cmd[0],1'b1,eoemb,1'b1,
                                   3'b000,5'b00001};
        // FEC
        2'b10 : sync_word <= { fec[25:18],
                               fec[17:10],
                                 fec[9:4],eoemb,fec[3],
                                 fec[2:0],5'b00001};
        // Stand alone command
        2'b11 : sync_word <= { cmd[18:16],1'b1,cmd[15:13],1'b1,
                               cmd[12:10],1'b1,cmd[9:7],1'b1,
                                 cmd[6:4],1'b1,cmd[3],1'b1,eoemb,1'b1,
                                 cmd[2:0],5'b00001};
      endcase
    end else begin
      if (lmc_quarter_edge && cfg_header_mode == 2'b01) begin
        sync_word <= {crc3[2],crc3[1],crc3[0],sync_word[27:0],1'b0};
      end else begin
        sync_word <= {sync_word[30:0],1'b0};
      end
    end
  end

  assign header = {~sync_word[31],sync_word[31]};

endmodule
