// This program was cloned from: https://github.com/jotego/jtcores
// License: GNU General Public License v3.0

/*  This file is part of JTCORES.
    JTCORES program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    JTCORES program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with JTCORES.  If not, see <http://www.gnu.org/licenses/>.

    Author: Jose Tejada Gomez. Twitter: @topapate
    Version: 1.0
    Date: 25-8-2021 */

module jtflane_game(
    `include "jtframe_game_ports.inc" // see $JTFRAME/hdl/inc/jtframe_game_ports.inc
);

wire [ 7:0] dipsw_a, dipsw_b;
wire [ 3:0] dipsw_c;

wire [13:0] cpu_addr;
wire        gfx_irqn, pal_cs, gfx_ramcs;
wire        cpu_cen, cpu_rnw, cpu_irqn, cpu_nmin;
wire [ 7:0] pal_dout, cpu_dout, gfx_dout, st_video;

assign { dipsw_c, dipsw_b, dipsw_a } = dipsw[19:0];
assign debug_view = st_video;

`ifndef NOMAIN
jtflane_main u_main(
    .clk            ( clk24         ),        // 24 MHz
    .rst            ( rst24         ),
    .cen12          ( cen12         ),
    .cen3           ( cen3          ),
    .cpu_cen        ( cpu_cen       ),
    // ROM
    .rom_addr       ( main_addr     ),
    .rom_cs         ( main_cs       ),
    .rom_data       ( main_data     ),
    .rom_ok         ( main_ok       ),
    // cabinet I/O
    .cab_1p         ( cab_1p[1:0]   ),
    .coin           ( coin[1:0]     ),
    .joystick1      ( joystick1     ),
    .joystick2      ( joystick2     ),
    .service        ( service       ),
    // GFX
    .gfx_addr       ( cpu_addr      ),
    .cpu_dout       ( cpu_dout      ),
    .cpu_rnw        ( cpu_rnw       ),
    .gfx_irqn       ( cpu_irqn      ),
    .gfx_nmin       ( cpu_nmin      ),
    .gfx_cs         ( gfx_ramcs     ),
    .pal_cs         ( pal_cs        ),

    .gfx_dout       ( gfx_dout      ),
    .pal_dout       ( pal_dout      ),

    // PCM sound
    .pcma_addr      ( pcma_addr     ),
    .pcma_dout      ( pcma_data     ),
    .pcma_cs        ( pcma_cs       ),
    .pcma_ok        ( pcma_ok       ),

    .pcmb_addr      ( pcmb_addr     ),
    .pcmb_dout      ( pcmb_data     ),
    .pcmb_cs        ( pcmb_cs       ),
    .pcmb_ok        ( pcmb_ok       ),

    .pcmc_addr      ( pcmc_addr     ),
    .pcmc_dout      ( pcmc_data     ),
    .pcmc_cs        ( pcmc_cs       ),
    .pcmc_ok        ( pcmc_ok       ),

    .pcmd_addr      ( pcmd_addr     ),
    .pcmd_dout      ( pcmd_data     ),
    .pcmd_cs        ( pcmd_cs       ),
    .pcmd_ok        ( pcmd_ok       ),

    // DIP switches
    .dip_pause      ( dip_pause     ),
    .dipsw_a        ( dipsw_a       ),
    .dipsw_b        ( dipsw_b       ),
    .dipsw_c        ( dipsw_c       ),
    // Sound
    .pcm0           ( pcm0          ),
    .pcm1           ( pcm1          )
);
`else
assign main_cs = 0;
`endif

`ifndef NOVIDEO
jtlabrun_video #(.GAME(1))
u_video (
    .rst            ( rst           ),
    .clk            ( clk           ),
    .clk24          ( clk24         ),
    .pxl2_cen       ( pxl2_cen      ),
    .pxl_cen        ( pxl_cen       ),
    .LHBL           ( LHBL          ),
    .LVBL           ( LVBL          ),
    .HS             ( HS            ),
    .VS             ( VS            ),
    .flip           ( dip_flip      ),
    .dip_pause      ( dip_pause     ),
    .cab_1p   ( &cab_1p ),
    // PROMs
    .prom_we        ( prom_we       ),
    .prog_addr      ( prog_addr[8:0]),
    .prog_data      ( prog_data[3:0]),
    // GFX - CPU interface
    .cpu_irqn       ( cpu_irqn      ),
    .cpu_nmin       ( cpu_nmin      ),
    .gfx_cs         ( gfx_ramcs     ),
    .pal_cs         ( pal_cs        ),
    .cpu_rnw        ( cpu_rnw       ),
    .cpu_cen        ( cpu_cen       ),
    .cpu_addr       ( cpu_addr      ),
    .cpu_dout       ( cpu_dout      ),
    .gfx_dout       ( gfx_dout      ),
    .pal_dout       ( pal_dout      ),
    // SDRAM
    .gfx_addr       (  gfx_addr     ),
    .gfx_data       (  gfx_data     ),
    .gfx_ok         (  gfx_ok       ),
    .gfx_romcs      (  gfx_cs       ),
    // pixels
    .red            ( red           ),
    .green          ( green         ),
    .blue           ( blue          ),
    // Test
    .gfx_en         ( gfx_en        ),
    .debug_bus      ( debug_bus     ),
    .st_dout        ( st_video      )
);
`endif


endmodule
