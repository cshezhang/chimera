// This program was cloned from: https://github.com/rkrajnc/minimig-mist
// License: GNU General Public License v3.0

// Copyright 2006, 2007 Dennis van Weeren
//
// This file is part of Minimig
//
// Minimig is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3 of the License, or
// (at your option) any later version.
//
// Minimig is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//
//
// This is the top module for the Minimig rev1.0 board
//
// 19-03-2005 	-started coding
// 10-04-2005	-added cia's 
//				-verified timers a/b and I/O ports
// 11-04-2005	-adapted top to cleaned up address decoder
//				-connected cia's to .clk(~qclk) and .tick(e) for testing
// 13-04-2005	-_foe and _loe are now made with clocks driving FF's
//				-sram_bridge now also gets .clk(clk)
// 18-04-2005	-added second synchronisation latch for mreset
// 19-04-2005	-bootrom is now 2Kbyte large
// 05-05-2005	-made preparations for dma (bus multiplexers between agnus and cpu)
// 15-05-2005	-added denise
// 				-connected vertb (vertical blank intterupt) to int3 input of paula
// 18-05-2005	-removed interlaced top input pin
// 28-06-2005	-done some experimentation to solve logic loop in Agnus
// 17-07-2005	-connected second ram bank to hold kickstart rom
// 				-added ovl (kickstart overlay) and boot (bootrom overlay) signals
//				-wired cia in/out ports more correctly
//				-wired vsync/hsync to cia's
// 18-07-2005	-experimented to get kickstart running
// 20-07-2005	-still experimenting..
// 07-08-2005	-Jahoeee!! kickstart doesn't guru anymore but 'clicks' the floppy drive !
//				-the guru's were caused by spurious writes to ram which is fixed now in the sram controller
//				-unfortunately still no insert workbench screen but that may be caused by the missing blitter
// 04-09-2005	-added blitter finished interrupt
// 11-09-2005	-added 2meg addressing for Agnus
// 13-09-2005	-added 4bit (per color) video output
// 16-10-2005	-added user IO module
// 23-10-2005	-added dmal signal wire
// 08-11-2005	-fixed typo in instantiation of Paula
// 21-11-2005	-added some signals to handle floppy
// 22-11-2005	-adapted to new add-on develop board
//				-added joystick 1 port
// 10-12-2005	-done some experimentation to find floppy bug
// 21-12-2005	-reworked code to use new style gary module
// 27-12-2005	-added dskindx interrupt
// 03-01-2006	-added dmas to avoid interference with copper cycles
// 11-01-2006	-added Amber
// 15-01-2006	-added syscontrol module to handle automatic boot sequence
// 22-01-2006	-removed _csync port from agnus
// 23-01-2006	-added fastblit input
// 24-01-2006	-cia's now count positive _hsync/_vsync transitions
// 14-02-2006	-code clean up
//				-added fastchip input
// 19-02-2006	-improved indx disk interrupt timing
//				-cia timers now connect to sol/sof
// 12-11-2006	-started porting code to Minimig rev1.0 board
// 17-11-2006	-added address decoding for Minimig rev1.0 ram
// 22-11-2006	-added keyboard reset
// 27-11-2006	-code adapted to new synchronous bootrom
// 03-12-2006	-added dimming powerled
// 11-12-2006	-updated code to new ciaa
// 27-12-2006	-updated code to new ciab
// 24-06-2007	-moved cpu/sram/clock and syscontrol to this file to reduce number of source files
//
// TODO: 		-fixs bug and implement things I forgot.....

//JB:
// 2008-07-17
//	- scan doubler with vertical and horizontal interpolation
//	- transparent osd window
//	- selected osd line highlight
//	- osd control by joystick (up and down pressed simultaneously invoke menu) 
//	- memory configuration from osd (512KB chip, 1MB chip, 512KB chip/512KB slow, 1MB chip/512KB slow)
//	- video interpolation filter configuration from osd (vertical and horizontal)
//	- user reset accessible from osd
//	- user reset to bootloader (kickstart reloading)
//	- new bootloader (text messages during kickstart loading)
//	- ECS blittter
//	- PAL/NTSC selection
//	- modified display dma engine (better compatibility)
//	- modified sprite dma engine (better compatibility)
//	- modified copper timing (better compatibility) 
//	- modified floppy interface (better read and write support)
//	- Action Replay III module for debugging (takes 512KB memory bank)
//
// Thanks to:
// Dennis for his great Minimig
// Loriano for impressive enclosure 
// Darrin and Oscar for their ideas, support and help
// Toni for his indispensable help and logic analyzer (and WinUAE :-)
//
// 2008-09-22 	- code clean-up
// 2008-09-23	- added c1 and c3 clock anable signals
//				- adapted sram bridge to use only clk28m clock
// 2008-09-24	- added support for floppy _sel[3:1] signals
// 2008-11-14	- ram interface synchronous with clk28m, 70ns access cycle
// 2009-04-21	- code clean up
//
// Thanks to Loriano, Darrin, Richard, Edwin, Sascha, Peter and others for their help, support, ideas, testing, bug reports and feature requests.
//
// 2009-05-17	- hires OSD
// 2009-05-23	- more cycle exact CPU bus timing during CIA access
// 2009-05-24	- clean-up & renaming
// 2009-05-29	- changed blitter timing to be more cycle exact
// 2009-06-09	- fixed disk index pulses to 5 Hz (300 RPM)
// 2009-06-10	- fixed non-interlaced frames to be long
// 2009-06-11	- fixed serial port divider
// 2009-06-12	- CIA's SDR register returns written value
// 2009-07-01	- enabling of ddfstrt/ddfstop ECS extension bits is configurable
// 2009-08-11	- support for second hardfile
// 2009-08-16	- Action Replay problem fixed (thanks Sascha)
// 2009-12-15 - improved blitter data flow
// 2009-12-16 - improved bitplane dma timing
//        - Denise id is selectable
// 2010-05-30 - htotal changed
// 2010-07-27 - fixed isue with external reset
// 2010-07-28 - added vsync for the MCU
// 2010-08-05 - added cache for the CPU
// 2010-08-15 - added joystick emulation
//
// SB:
// 2010-12-22 - better drive step sound at 31KHz mode
// 2011-03-06 - changed autofire function to handless mode
// 2011-03-08 - added dip and fat agnus DIWSTRT handling (fix RoboCop2)
// 2011-04-02 - added functional ciaa port b (parallel) register to let Unreal game work and some trainer store data
// 2011-04-04 - added pwm controlled power-led at "off" state and active Turbo mode (thanks Herzi for the idea)
// 2011-04-10 - added readable VPOSW and VHPOSW register (fix for RSI slideshow)
// 11-04-2011 - autofire function toggle able via capslock / led status
// 2011-04-24 - fixed CIA TOD read
// 2011-07-21 - changed '#' key scan code, thanks Chris
//
// TobiFlex(TF):
// 2012-02-12  - change sigma/delta module
//
// SB:
// 2012-03-23 - fixed sprite enable signal (coppermaster demo)

module minimig
(
	//m68k pins
	input	[23:1] cpu_address,	// m68k address bus
	output 	[15:0] cpu_data,	// m68k data bus
	input	[15:0] cpudata_in,	// m68k data in
	output	[2:0] _cpu_ipl,		// m68k interrupt request
	input	_cpu_as,			// m68k address strobe
	input	_cpu_uds,			// m68k upper data strobe
	input	_cpu_lds,			// m68k lower data strobe
	input	cpu_r_w,			// m68k read / write
	output	_cpu_dtack,			// m68k data acknowledge
	output	_cpu_reset,			// m68k reset
  input _cpu_reset_in,    // m68k reset in
  input [31:0] cpu_vbr, // m68k VBR
  output wire ovr,      // NMI address decoding override
	//sram pins
	output	[15:0] ram_data,	//sram data bus
	input	[15:0] ramdata_in,		//sram data bus in
	output	[21:1] ram_address,	//sram address bus
	output	_ram_bhe,			//sram upper byte select
	output	_ram_ble,			//sram lower byte select
	output	_ram_we,			//sram write enable
	output	_ram_oe,			//sram output enable
  input [48-1:0] chip48,         // big chipram read
	//system	pins
  input rst_ext,      // reset from ctrl block
  output rst_out,     // minimig reset status
	input	clk,				// 28.37516 MHz clock
  input clk7_en,      // 7MHz clock enable
  input clk7n_en, // 7MHz negedge clock enable
	input c1,			// clock enable signal
	input c3,			// clock enable signal
	input cck,			// colour clock enable
	input [9:0] eclk,			// ECLK enable (1/10th of CLK)
	//rs232 pins
	input	rxd,				//rs232 receive
	output	txd,				//rs232 send
	input	cts,				//rs232 clear to send
	output	rts,				//rs232 request to send
	//I/O
	input	[7:0]_joy1,			//joystick 1 [fire2,fire,up,down,left,right] (default mouse port)
	input	[7:0]_joy2,			//joystick 2 [fire2,fire,up,down,left,right] (default joystick port)
  input mouse_btn1, // mouse button 1
  input mouse_btn2, // mouse button 2
  input [2:0] mouse_btn, // mouse buttons
  input kbd_mouse_strobe,
  input kms_level,
  input [1:0] kbd_mouse_type,
  input [7:0] kbd_mouse_data,
	input	_15khz,				//scandoubler disable
	output pwrled,				//power led
  inout	msdat,				//PS2 mouse data
	inout	msclk,				//PS2 mouse clk
	inout	kbddat,				//PS2 keyboard data
	inout	kbdclk,				//PS2 keyboard clk
	//host controller interface (SPI)
	input	[2:0]_scs,			//SPI chip select
	input	direct_sdi,			//SD Card direct in
	input	sdi,				//SPI data input
	inout	sdo,				//SPI data output
	input	sck,				//SPI clock
 // // host
 // output wire           host_cs,
 // output wire [ 24-1:0] host_adr,
 // output wire           host_we,
 // output wire [  2-1:0] host_bs,
 // output wire [ 16-1:0] host_wdat,
 // input  wire [ 16-1:0] host_rdat,
 // input  wire           host_ack,
	//video
	output	_hsync,				//horizontal sync
	output	_vsync,				//vertical sync
	output	[7:0] red,			//red
	output	[7:0] green,		//green
	output	[7:0] blue,			//blue
	//audio
	output	left,				//audio bitstream left
	output	right,				//audio bitstream right
	output	[14:0]ldata,			//left DAC data
	output	[14:0]rdata, 			//right DAC data
	//user i/o
  output  [3:0] cpu_config,
  output  [5:0] memcfg,
  output  turbochipram,
  output  turbokick,
  output  init_b,       // vertical sync for MCU (sync OSD update)
  output wire fifo_full,
  // fifo / track display
	output  [7:0]trackdisp,
	output  [13:0]secdisp,
  output  floppy_fwr,
  output  floppy_frd,
  output  hd_fwr,
  output  hd_frd
);

//--------------------------------------------------------------------------------------

	parameter [0:0] NTSC = 1'b0;	//Agnus type (PAL/NTSC)

//--------------------------------------------------------------------------------------

//local signals for data bus
wire		[15:0] cpu_data_in;		//cpu data bus in
wire		[15:0] cpu_data_out;	//cpu data bus out
wire		[15:0] ram_data_in;		//ram data bus in
wire		[15:0] ram_data_out;	//ram data bus out
wire		[15:0] custom_data_in;	//custom chips data bus in
wire		[15:0] custom_data_out;	//custom chips data bus out
wire		[15:0] agnus_data_out;	//agnus data out
wire		[15:0] paula_data_out;	//paula data bus out
wire		[15:0] denise_data_out;	//denise data bus out
wire		[15:0] user_data_out;	//user IO data out
wire		[15:0] gary_data_out;	//data out from memory bus multiplexer
wire		[15:0] gayle_data_out;	//Gayle data out
wire		[15:0] cia_data_out;	//cia A+B data bus out
wire		[15:0] ar3_data_out;	//Action Replay data out

//local signals for spi bus
wire		paula_sdo; 				//paula spi data out
wire		user_sdo;				//userio spi data out

//local signals for address bus
wire		[23:1] cpu_address_out;	//cpu address out
wire		[20:1] dma_address_out;	//agnus address out
wire		[18:1] ram_address_out;	//ram address out

//local signals for control bus
wire		ram_rd;					//ram read enable
wire		ram_hwr;				//ram high byte write enable 
wire		ram_lwr;				//ram low byte write enable 
wire		cpu_rd; 				//cpu read enable
wire		cpu_hwr;				//cpu high byte write enable
wire		cpu_lwr;				//cpu low byte write enable

//register address bus
wire		[8:1] reg_address; 		//main register address bus

//rest of local signals
wire		kbdrst;					//keyboard reset
wire		reset;					//global reset
wire    aflock;
wire    cpu_custom;
wire		dbr;					//data bus request, Agnus tells CPU that she is using the bus
wire		dbwe;					//data bus write enable, Agnus tells the RAM it's writing data
wire		dbs;					//data bus slow down, used for slowing down CPU access to chip, slow and custor register address space
wire		xbs;					//cross bridge access (memory and custom registers)
wire		ovl;					//kickstart overlay enable
wire		_led;					//power led
wire		[3:0] sel_chip;			//chip ram select
wire		[2:0] sel_slow;			//slow ram select
wire		sel_kick;				//rom select
wire    sel_kick1mb;     // 1MB upper rom select
wire		sel_cia;				//CIA address space
wire		sel_reg;				//chip register select
wire		sel_cia_a;				//cia A select
wire		sel_cia_b;				//cia B select
wire		int2;					//intterrupt 2
wire		int3;					//intterrupt 3 
wire		int6;					//intterrupt 6
wire		[7:0] osd_ctrl;			//OSD control
wire    kb_lmb;
wire    kb_rmb;
wire    [5:0] kb_joy2;
wire		freeze;					//Action Replay freeze button
wire		_fire0;					//joystick 1 fire signal to cia A
wire		_fire1;					//joystick 2 fire signal to cia A
wire    _fire0_dat;
wire    _fire1_dat;
wire		[3:0] audio_dmal;		//audio dma data transfer request from Paula to Agnus
wire		[3:0] audio_dmas;		//audio dma location pointer restart from Paula to Agnus
wire		disk_dmal;				//disk dma data transfer request from Paula to Agnus
wire		disk_dmas;				//disk dma special request from Paula to Agnus
wire		index;					//disk index interrupt

//local video signals
wire		blank;					//blanking signal
wire		sol;					//start of video line
wire		sof;					//start of video frame
wire    vbl_int;        // vertical blanking interrupt
wire		strhor_denise;			//horizontal strobe for Denise
wire		strhor_paula;			//horizontal strobe for Paula
wire		[7:0]red_i;				//denise red (internal)
wire		[7:0]green_i;			//denise green (internal)
wire		[7:0]blue_i;			//denise blue (internal)
wire		osd_blank;				//osd blanking 
wire		osd_pixel;				//osd pixel(video) data
wire		_hsync_i;				//horizontal sync (internal)
wire		_vsync_i;				//vertical sync (internal)
wire		_csync_i;				//composite sync (internal)
wire		[8:0] htotal;			//video line length (140ns units)
wire    harddis;
wire    varbeamen;

//local floppy signals (CIA<-->Paula)
wire		_step;					//step heads of disk
wire		direc;					//step heads direction
wire		_sel0;					//disk0 select 	
wire		_sel1;					//disk1 select 	
wire		_sel2;					//disk2 select 	
wire		_sel3;					//disk3 select 	
wire		side;					//upper/lower disk head
wire		_motor;					//disk motor control
wire		_track0;				//track zero detect
wire		_change;				//disk has been removed from drive
wire		_ready;					//disk is ready
wire		_wprot;					//disk is write-protected

//--------------------------------------------------------------------------------------

wire	bls;					//blitter slowdown - required for sharing bus cycles between Blitter and CPU

wire cpurst;
wire cpuhlt;

wire	int7;					//int7 interrupt request from Action Replay
wire	[2:0] _iplx;			//interrupt request lines from Paula
wire	sel_cart;				//Action Replay RAM select
//wire	ovr;					//overide chip memmory decoding
wire  [16-1:0] cart_data_out;

wire	usrrst;					//user reset from osd interface
wire	[1:0] lr_filter;		//lowres interpolation filter mode: bit 0 - horizontal, bit 1 - vertical
wire	[1:0] hr_filter;		//hires interpolation filter mode: bit 0 - horizontal, bit 1 - vertical
wire	[1:0] scanline;			//scanline effect configuration
wire  [1:0] dither;   // video output dither
wire	hires;					//hires signal from Denise for interpolation filter enable in Amber
wire	aron;					//Action Replay is enabled
wire	cpu_speed;				//requests CPU to switch speed mode
wire	turbo;					//CPU is working in turbo mode
wire	[6:0] memory_config;	//memory configuration
wire	[3:0] floppy_config;	//floppy drives configuration (drive number and speed)
wire	[4:0] chipset_config;	//chipset features selection
wire	[2:0] ide_config;		//HDD & HDC config: bit #0 enables Gayle, bit #1 enables Master drive, bit #2 enables Slave drive

//gayle stuff
wire	sel_ide;				//select IDE drive registers
wire	sel_gayle;				//select GAYLE control registers
wire	gayle_irq;				//interrupt request
wire  gayle_nrdy;       // HDD fifo is not ready for reading
//emulated hard disk drive signals
wire	hdd_cmd_req;			//hard disk controller has written command register and requests processing
wire	hdd_dat_req;			//hard disk controller requests data from emulated hard disk drive
wire	[2:0] hdd_addr;			//emulated hard disk drive register address bus
wire	[15:0] hdd_data_out;	//data output port of emulated hard disk drive
wire	[15:0] hdd_data_in;		//data input port of emulated hard disk drive
wire	hdd_wr;					//register write strobe
wire	hdd_status_wr;			//status register write strobe
wire	hdd_data_wr;			//data port write strobe
wire	hdd_data_rd;			//data port read strobe

wire	[7:0] bank;				//memory bank select

wire	keyboard_disabled;		//disables Amiga keyboard while OSD is active
wire	disk_led;				//floppy disk activity LED

reg		ntsc = NTSC;			//PAL/NTSC video mode selection

wire  [5:0] mou_emu;

wire  dtr;

// host interface
wire           host_cs;
wire [ 24-1:0] host_adr;
wire           host_we;
wire [  2-1:0] host_bs;
wire [ 16-1:0] host_wdat;
wire [ 16-1:0] host_rdat;
wire           host_ack;

//--------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------

// power led control
reg [3:0] led_cnt;
reg led_dim;

always @ (posedge clk) begin
  if (_hsync) begin
    led_cnt <= led_cnt + 1;
    led_dim <= |led_cnt;
  end
end

assign pwrled = (_led & (led_dim | ~turbo)) ? 1'b0 : 1'b1; // led dim at off-state and active turbo mode



assign memcfg = memory_config[5:0];

// turbo chipram only when in AGA mode, no overlay is active, cpu_config[2] (fast chip) is enabled or Agnus allows CPU on the bus and chipRAM=2MB
assign turbochipram = chipset_config[4] && !ovl && (cpu_config[2] || cpu_custom) && (&memory_config[1:0]);

// turbo kickstart only when no overlay is active and cpu_config[3] (fast kick) enabled or AGA mode is enabled
assign turbokick = !ovl && (cpu_config[3] || chipset_config[4]);

// NTSC/PAL switching is controlled by OSD menu, change requires reset to take effect
always @(posedge clk)
  if (clk7_en) begin
  	if (reset)
  		ntsc <= chipset_config[1];
  end

// vertical sync for the MCU
reg vsync_del = 1'b0;   // delayed vsync signal for edge detection
reg vsync_t = 1'b0;   // toggled vsync output

always @(posedge clk)
  if (clk7_en) begin
    vsync_del <= _vsync_i;
  end
  
always @(posedge clk)
  if (clk7_en) begin
    if (~_vsync_i && vsync_del)
      vsync_t <= ~vsync_t;
  end

assign init_b = vsync_t;


//--------------------------------------------------------------------------------------

//instantiate agnus
agnus AGNUS1
(
	.clk(clk),
	.clk7_en(clk7_en),
	.cck(cck),
	.reset(reset),
	.aen(sel_reg),
	.rd(cpu_rd),
	.hwr(cpu_hwr),
	.lwr(cpu_lwr),
	.data_in(custom_data_in),
	.data_out(agnus_data_out),
	.address_in(cpu_address_out[8:1]),
	.address_out(dma_address_out),
	.reg_address_out(reg_address),
  .cpu_custom(cpu_custom),
	.dbr(dbr),
	.dbwe(dbwe),
	._hsync(_hsync_i),
	._vsync(_vsync_i),
	._csync(_csync_i),
	.blank(blank),
	.sol(sol),
	.sof(sof),
  .vbl_int(vbl_int),
	.strhor_denise(strhor_denise),
	.strhor_paula(strhor_paula),
	.htotal(htotal),
  .harddis(harddis),
  .varbeamen(varbeamen),
	.int3(int3),
	.audio_dmal(audio_dmal),
	.audio_dmas(audio_dmas),
	.disk_dmal(disk_dmal),
	.disk_dmas(disk_dmas),
	.bls(bls),
	.ntsc(ntsc),
  .a1k(chipset_config[2]),
	.ecs(|chipset_config[4:3]),
  .aga(chipset_config[4]),
	.floppy_speed(floppy_config[0]),
	.turbo(turbo)
);

//instantiate paula
paula PAULA1
(
  .clk(clk),
  .clk7_en (clk7_en),
  .clk7n_en (clk7n_en),
	.cck(cck),
	.reset(reset),
	.reg_address_in(reg_address),
	.data_in(custom_data_in),
	.data_out(paula_data_out),
	.txd(txd),
	.rxd(rxd),
  .ntsc(ntsc),
	.sof(sof),
  .strhor(strhor_paula),
  .vblint(vbl_int),
	.int2(int2|gayle_irq),
	.int3(int3),
	.int6(int6),
	._ipl(_iplx),
	.audio_dmal(audio_dmal),
	.audio_dmas(audio_dmas),
	.disk_dmal(disk_dmal),
	.disk_dmas(disk_dmas),
	._step(_step),
	.direc(direc),
	._sel({_sel3,_sel2,_sel1,_sel0}),
	.side(side),
	._motor(_motor),
	._track0(_track0),
	._change(_change),
	._ready(_ready),
	._wprot(_wprot),
  .index(index),
	.disk_led(disk_led),
	._scs(_scs[0]),
	.sdi(sdi),
	.sdo(paula_sdo),
	.sck(sck),
	.left(left),
	.right(right),
	.ldata(ldata),
	.rdata(rdata),

	.floppy_drives(floppy_config[3:2]),
	//ide stuff
	.direct_scs(~_scs[2]),
	.direct_sdi(direct_sdi),
	.hdd_cmd_req(hdd_cmd_req),	
	.hdd_dat_req(hdd_dat_req),
	.hdd_addr(hdd_addr),
	.hdd_data_out(hdd_data_out),
	.hdd_data_in(hdd_data_in),
	.hdd_wr(hdd_wr),
	.hdd_status_wr(hdd_status_wr),
	.hdd_data_wr(hdd_data_wr),
	.hdd_data_rd(hdd_data_rd),
  // fifo / track display
	.trackdisp(trackdisp),
	.secdisp(secdisp),
  .floppy_fwr (floppy_fwr),
  .floppy_frd (floppy_frd)
);

//instantiate user IO
userio USERIO1 
(	
	.clk(clk),
  .clk7_en(clk7_en),
  .clk7n_en(clk7n_en),
	.reset(reset),
	.c1(c1),
	.c3(c3),
	.sol(sol),
	.sof(sof),
  .varbeamen(varbeamen),
	.reg_address_in(reg_address),
	.data_in(custom_data_in),
	.data_out(user_data_out),
	.ps2mdat(msdat),
	.ps2mclk(msclk),
	._fire0(_fire0),
	._fire1(_fire1),
  ._fire0_dat(_fire0_dat),
  ._fire1_dat(_fire1_dat),
  .aflock(aflock),
	._joy1(_joy1),
	._joy2(_joy2 & {2'b11,kb_joy2}),
  .mouse_btn(mouse_btn),
  ._lmb(kb_lmb & mouse_btn1),
  ._rmb(kb_rmb & mouse_btn2),
  .mou_emu (mou_emu),
  .kbd_mouse_type(kbd_mouse_type),
  .kbd_mouse_strobe(kbd_mouse_strobe),
  .kms_level(kms_level),
  .kbd_mouse_data(kbd_mouse_data), 
	.osd_ctrl(osd_ctrl),
	.keyboard_disabled(keyboard_disabled),
	._scs(_scs[1]),
	.sdi(sdi),
	.sdo(user_sdo),
	.sck(sck),
	.osd_blank(osd_blank),
	.osd_pixel(osd_pixel),
	.lr_filter(lr_filter),
	.hr_filter(hr_filter),
	.memory_config(memory_config),
	.chipset_config(chipset_config),
	.floppy_config(floppy_config),
	.scanline(scanline),
  .dither(dither),
	.ide_config(ide_config),
  .cpu_config(cpu_config),
	.usrrst(usrrst),
  .cpurst(cpurst),
  .cpuhlt(cpuhlt),
  .fifo_full(fifo_full),
  .host_cs      (host_cs          ),
  .host_adr     (host_adr         ),
  .host_we      (host_we          ),
  .host_bs      (host_bs          ),
  .host_wdat    (host_wdat        ),
  .host_rdat    (host_rdat        ),
  .host_ack     (host_ack         )
);

//assign cpu_speed = (chipset_config[0] & ~int7 & ~freeze & ~ovr);
assign cpu_speed = 1'b0;

/*
// debug module
debug DEBUG1 (
  .clk        (clk),
  .clk7_en    (clk7_en),
  .adr        (reg_address),
  .dat        (custom_data_in)
);
*/

//instantiate Denise
denise DENISE1
(		
  .clk(clk),
  .clk7_en(clk7_en),
  .c1(c1),
  .c3(c3),
  .cck(cck),
	.reset(reset),
	.strhor(strhor_denise),
	.reg_address_in(reg_address),
	.data_in(custom_data_in),
  .chip48(chip48),
	.data_out(denise_data_out),
	.blank(blank),
	.red(red_i),
	.green(green_i),
	.blue(blue_i),
  .a1k(chipset_config[2]),
  .ecs(|chipset_config[4:3]),
  .aga(chipset_config[4]),
	.hires(hires)
);

//instantiate Amber
amber AMBER1
(		
	.clk(clk),
	.dblscan(_15khz && !varbeamen),
  .varbeamen(varbeamen),
	.lr_filter(lr_filter),
	.hr_filter(hr_filter),
	.scanline(scanline),
  .dither(dither),
	.htotal(htotal),
	.hires(hires),
	.osd_blank(osd_blank),
	.osd_pixel(osd_pixel),
	.red_in(red_i),
	.blue_in(blue_i),
	.green_in(green_i),
	._hsync_in(_hsync_i),
	._vsync_in(_vsync_i),
	._csync_in(_csync_i),
	.red_out(red),
	.blue_out(blue),
	.green_out(green),
	._hsync_out(_hsync),
	._vsync_out(_vsync)
);

//instantiate cia A
ciaa CIAA1
(
	.clk(clk),
  .clk7_en(clk7_en),
  .clk7n_en(clk7n_en),
	.aen(sel_cia_a),
	.rd(cpu_rd),
	.wr(cpu_lwr|cpu_hwr),
	.reset(reset),
	.rs(cpu_address_out[11:8]),
	.data_in(cpu_data_out[7:0]),
	.data_out(cia_data_out[7:0]),
	.tick(_vsync_i),
	.eclk(eclk[8]),
	.irq(int2),
	.porta_in({_fire1,_fire0,_ready,_track0,_wprot,_change}),
	.porta_out({_fire1_dat,_fire0_dat,_led,ovl}),
	.kbdrst(kbdrst),
	.kbddat(kbddat),
	.kbdclk(kbdclk),
  .kbd_mouse_type(kbd_mouse_type),
  .kbd_mouse_strobe(kbd_mouse_strobe),
  .kms_level(kms_level),
  .kbd_mouse_data(kbd_mouse_data), 
  .keyboard_disabled(keyboard_disabled),
	.osd_ctrl(osd_ctrl),
  ._lmb(kb_lmb),
  ._rmb(kb_rmb),
  ._joy2(kb_joy2),
  .aflock(aflock),
	.freeze(freeze),
	.disk_led(disk_led),
  .mou_emu (mou_emu),
  .hrtmon_en (memory_config[6])
);

//instantiate cia B
ciab CIAB1 
(
	.clk(clk),
  .clk7_en(clk7_en),
	.aen(sel_cia_b),
	.rd(cpu_rd),
	.wr(cpu_hwr|cpu_lwr),
	.reset(reset),
	.rs(cpu_address_out[11:8]),
	.data_in(cpu_data_out[15:8]),
	.data_out(cia_data_out[15:8]),
	.tick(_hsync_i),
	.eclk(eclk[8]),
	.irq(int6),
	.flag(index),
	.porta_in({1'b0,cts,1'b0}),
	.porta_out({dtr,rts}),
	.portb_out({_motor,_sel3,_sel2,_sel1,_sel0,side,direc,_step})
);


//instantiate cpu bridge
minimig_m68k_bridge CPU1 
(
	.clk(clk),
  .clk7_en(clk7_en),
  .clk7n_en(clk7n_en),
  .blk(scanline[1]),
	.c1(c1),
	.c3(c3),
	.cck(cck),
	.eclk(eclk),
	.vpa(sel_cia),
	.dbr(dbr),
	.dbs(dbs),
	.xbs(xbs),
  .nrdy(gayle_nrdy),
	.bls(bls),
	.cpu_speed(cpu_speed & ~int7 & ~ovr & ~usrrst),
  .memory_config(memory_config[3:0]),
	.turbo(turbo),
	._as(_cpu_as),
	._lds(_cpu_lds),
	._uds(_cpu_uds),
	.r_w(cpu_r_w),
	._dtack(_cpu_dtack),
	.rd(cpu_rd),
	.hwr(cpu_hwr),
	.lwr(cpu_lwr),
	.address(cpu_address),
	.address_out(cpu_address_out),
	.cpudatain(cpudata_in),
	.data(cpu_data),
	.data_out(cpu_data_out),
	.data_in(cpu_data_in),
  ._cpu_reset (_cpu_reset),
  .cpu_halt (cpuhlt),
  .host_cs (host_cs),
  .host_adr (host_adr[23:1]),
  .host_we (host_we),
  .host_bs (host_bs),
  .host_wdat (host_wdat),
  .host_rdat (host_rdat),
  .host_ack (host_ack)
);

//instantiate RAM banks mapper
minimig_bankmapper BMAP1
(
	.chip0((~ovr|~cpu_rd|dbr) & sel_chip[0]),
	.chip1(sel_chip[1]),
	.chip2(sel_chip[2]),
	.chip3(sel_chip[3]),	
	.slow0(sel_slow[0]),
	.slow1(sel_slow[1]),
	.slow2(sel_slow[2]),
	.kick(sel_kick),
  .kick1mb(sel_kick1mb),
	.cart(sel_cart),
	.aron(aron),
  .ecs(|chipset_config[4:3]),
	.memory_config(memory_config[3:0]),
	.bank(bank)
);

//instantiate sram bridge
minimig_sram_bridge RAM1 
(
	.clk(clk),
	.c1(c1),
	.c3(c3),	
	.bank(bank),
	.address_in(ram_address_out),
	.data_in(ram_data_in),
	.data_out(ram_data_out),
	.rd(ram_rd),
	.hwr(ram_hwr),
	.lwr(ram_lwr),
	._bhe(_ram_bhe),
	._ble(_ram_ble),
	._we(_ram_we),
	._oe(_ram_oe),
	.address(ram_address),
	.data(ram_data),	
	.ramdata_in(ramdata_in)	
);

cart CART1
(
  .clk            (clk            ),
  .clk7_en        (clk7_en        ),
  .clk7n_en       (clk7n_en       ),
  .cpu_rst        (!_cpu_reset    ),
  .cpu_address    (cpu_address    ),
  .cpu_address_in (cpu_address_out),
  ._cpu_as        (_cpu_as        ),
  .cpu_rd         (cpu_rd         ),
  .cpu_hwr        (cpu_hwr        ),
  .cpu_lwr        (cpu_lwr        ),
  .cpu_vbr        (cpu_vbr        ),
  .reg_address_in (reg_address    ),
  .reg_data_in    (custom_data_in ),
  .dbr            (dbr            ),
  .ovl            (ovl            ),
  .freeze         (freeze         ),
  .cart_data_out  (cart_data_out  ),
  .int7           (int7           ),
  .sel_cart       (sel_cart       ),
  .ovr            (ovr            ),
  .aron           (aron           )
);

//level 7 interrupt for CPU
assign _cpu_ipl = int7 ? 3'b000 : _iplx;	//m68k interrupt request

//instantiate gary
gary GARY1 
(
	.cpu_address_in(cpu_address_out),
	.dma_address_in(dma_address_out),
	.ram_address_out(ram_address_out),
	.cpu_data_out(cpu_data_out),
	.cpu_data_in(gary_data_out),
	.custom_data_out(custom_data_out),
	.custom_data_in(custom_data_in),
	.ram_data_out(ram_data_out),
	.ram_data_in(ram_data_in),
	.cpu_rd(cpu_rd),
	.cpu_hwr(cpu_hwr),
	.cpu_lwr(cpu_lwr),
  .cpu_hlt(cpuhlt),
	.ovl(ovl),
	.dbr(dbr),
	.dbwe(dbwe),
	.dbs(dbs),
	.xbs(xbs),
	.memory_config(memory_config[3:0]),
	.hdc_ena(ide_config[0]), // Gayle decoding enable	
	.ram_rd(ram_rd),
	.ram_hwr(ram_hwr),
	.ram_lwr(ram_lwr),
  .ecs(|chipset_config[4:3]),
  .a1k(chipset_config[2]),
	.sel_chip(sel_chip),
	.sel_slow(sel_slow),
	.sel_kick(sel_kick),
  .sel_kick1mb(sel_kick1mb),
	.sel_cia(sel_cia),
	.sel_reg(sel_reg),
	.sel_cia_a(sel_cia_a),
	.sel_cia_b(sel_cia_b),
	.sel_ide(sel_ide),
	.sel_gayle(sel_gayle)
);

gayle GAYLE1
(
	.clk(clk),
  .clk7_en(clk7_en),
	.reset(reset),
	.address_in(cpu_address_out),
	.data_in(cpu_data_out),
	.data_out(gayle_data_out),
	.rd(cpu_rd),
	.hwr(cpu_hwr),
	.lwr(cpu_lwr),
	.sel_ide(sel_ide),
	.sel_gayle(sel_gayle),
	.irq(gayle_irq),
  .nrdy(gayle_nrdy),
	.hdd_ena(ide_config[2:1]),

	.hdd_cmd_req(hdd_cmd_req),
	.hdd_dat_req(hdd_dat_req),
	.hdd_data_in(hdd_data_in),
	.hdd_addr(hdd_addr),
	.hdd_data_out(hdd_data_out),
	.hdd_wr(hdd_wr),
	.hdd_status_wr(hdd_status_wr),
	.hdd_data_wr(hdd_data_wr),
	.hdd_data_rd(hdd_data_rd),
  .hd_fwr(hd_fwr),
  .hd_frd(hd_frd)
);
	

//instantiate system control
minimig_syscontrol CONTROL1 
(	
	.clk(clk),
  .clk7_en (clk7_en),
	.cnt(sof),
	.mrst(kbdrst | usrrst | rst_ext | ~_cpu_reset_in),
	.reset(reset)
);


//-------------------------------------------------------------------------------------

//data multiplexer
assign cpu_data_in[15:0] = gary_data_out[15:0]
						 | cia_data_out[15:0]
						 | gayle_data_out[15:0]
             | cart_data_out[15:0];

assign custom_data_out[15:0] = agnus_data_out[15:0]
							 | paula_data_out[15:0]
							 | denise_data_out[15:0]
							 | user_data_out[15:0];

//--------------------------------------------------------------------------------------

//spi multiplexer
//assign sdo = _scs[1] ? paula_sdo : user_sdo;
assign sdo = paula_sdo | user_sdo;
//assign sdo = (!_scs[0] || !_scs[1]) ? (paula_sdo | user_sdo) : 1'bz;

//--------------------------------------------------------------------------------------

//cpu reset and clock
assign _cpu_reset = ~(reset || cpurst);

//--------------------------------------------------------------------------------------

// minimig reset status
assign rst_out = reset;


endmodule

