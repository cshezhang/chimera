/***********************************************************************************************************************
*                                                                                                                      *
* ANTIKERNEL v0.1                                                                                                      *
*                                                                                                                      *
* Copyright (c) 2012-2017 Andrew D. Zonenberg                                                                          *
* All rights reserved.                                                                                                 *
*                                                                                                                      *
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the     *
* following conditions are met:                                                                                        *
*                                                                                                                      *
*    * Redistributions of source code must retain the above copyright notice, this list of conditions, and the         *
*      following disclaimer.                                                                                           *
*                                                                                                                      *
*    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the       *
*      following disclaimer in the documentation and/or other materials provided with the distribution.                *
*                                                                                                                      *
*    * Neither the name of the author nor the names of any contributors may be used to endorse or promote products     *
*      derived from this software without specific prior written permission.                                           *
*                                                                                                                      *
* THIS SOFTWARE IS PROVIDED BY THE AUTHORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   *
* TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL *
* THE AUTHORS BE HELD LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES        *
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR       *
* BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT *
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE       *
* POSSIBILITY OF SUCH DAMAGE.                                                                                          *
*                                                                                                                      *
***********************************************************************************************************************/

module GreenpakTimingTestBitstream(
	input wire clk,
    output reg[3:0] led,

    output wire scope_i2c_scl,
    inout wire scope_i2c_sda,

    inout wire[7:0] pmod_dq,

    input wire uart_rxd,
    output wire uart_txd
    );

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // The Zynq CPU (not actually used for anything for now, just to make DRC shut up)

    // Only define this if we're targeting a Zynq part
	`ifdef XILINX_ZYNQ7

	XilinxZynq7CPU cpu(
		.cpu_jtag_tdo(),
		.cpu_jtag_tdi(1'b0),
		.cpu_jtag_tms(1'b0),
		.cpu_jtag_tck(1'b0),

		//Don't use any of these signals
		.__nowarn_528_cpu_clk(),
		.__nowarn_528_cpu_por_n(),
		.__nowarn_528_cpu_srst_n()
	);

	`endif

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Buffer the main system clock

	wire clk_bufg;
	ClockBuffer #(
		.TYPE("GLOBAL"),
		.CE("NO")
	) sysclk_clkbuf (
		.clkin(clk),
		.clkout(clk_bufg),
		.ce(1'b1)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// PLL to turn our 100 MHz system clock into 200 for the IO delay line

	wire[3:0]	unused_clkout;

	wire		clk_noc;
	wire		clk_iodelay;

	wire		pll_locked;

	wire		pll_busy;

	reg			reconfig_start			= 0;
	reg			reconfig_finish			= 0;
	wire		reconfig_cmd_done;

	reg			reconfig_vco_en			= 0;
	reg[6:0]	reconfig_vco_mult		= 0;
	reg[6:0]	reconfig_vco_indiv		= 0;
	reg			reconfig_vco_bandwidth	= 0;

	reg			reconfig_output_en		= 0;
	reg[2:0]	reconfig_output_idx		= 0;
	reg[7:0]	reconfig_output_div		= 0;
	reg[8:0]	reconfig_output_phase	= 0;

    ReconfigurablePLL #(
		.OUTPUT_GATE(6'b000011),		//Gate the outputs we use when not in use
		.OUTPUT_BUF_GLOBAL(6'b000011),	//Use BUFGs on everything
		.OUTPUT_BUF_LOCAL(6'b000000),	//Don't use BUFHs
		.IN0_PERIOD(10.000),			//100 MHz input
		.IN1_PERIOD(10.000),			//unused, but same as IN0
		.OUT0_MIN_PERIOD(5.000),		//200 MHz output for NoC
		.OUT1_MIN_PERIOD(5.000),		//200 MHz output for IO delay calibration
		.OUT2_MIN_PERIOD(5.000),		//100 MHz output (unused)
		.OUT3_MIN_PERIOD(5.000),		//100 MHz output (unused)
		.OUT4_MIN_PERIOD(5.000),		//100 MHz output (unused)
		.OUT5_MIN_PERIOD(5.000),		//100 MHz output (unused)
		.ACTIVE_ON_START(1'b0),			//Don't do anything until reset
		.PRINT_CONFIG(1'b0)				//Don't print our default config since we're about to change it anyway
	) pll (
		.clkin({clk_bufg, clk_bufg}),	//feed PLL with clock before the BUFG so we get a new timing name
		.clksel(1'b0),
		.clkout({unused_clkout, clk_iodelay, clk_noc}),
		.reset(1'b0),
		.locked(pll_locked),

		.busy(pll_busy),
		.reconfig_clk(clk_bufg),
		.reconfig_start(reconfig_start),
		.reconfig_finish(reconfig_finish),
		.reconfig_cmd_done(reconfig_cmd_done),

		.reconfig_vco_en(reconfig_vco_en),
		.reconfig_vco_mult(reconfig_vco_mult),
		.reconfig_vco_indiv(reconfig_vco_indiv),
		.reconfig_vco_bandwidth(reconfig_vco_bandwidth),

		.reconfig_output_en(reconfig_output_en),
		.reconfig_output_idx(reconfig_output_idx),
		.reconfig_output_div(reconfig_output_div),
		.reconfig_output_phase(reconfig_output_phase)
		);

	//Set up the PLL (TODO: tweak coefficients etc)
	reg[3:0] pll_reconfig_state = 0;
	always @(posedge clk_bufg) begin
		reconfig_start		<= 0;
		reconfig_finish		<= 0;
		reconfig_vco_en		<= 0;
		reconfig_output_en	<= 0;

		case(pll_reconfig_state)

			0: begin
				if(!pll_busy) begin
					reconfig_start		<= 1;
					pll_reconfig_state	<= 1;
				end
			end

			1: begin
				if(!reconfig_start) begin
					reconfig_vco_en			<= 1;
					reconfig_vco_indiv		<= 1;
					reconfig_vco_mult		<= 10;	//1 GHz Fvco
					reconfig_vco_bandwidth	<= 1;
					pll_reconfig_state		<= 2;
				end
			end

			2: begin
				if(reconfig_cmd_done) begin
					reconfig_output_en		<= 1;
					reconfig_output_idx		<= 0;	//clk_noc
					reconfig_output_div		<= 5;	//200 MHz
					reconfig_output_phase	<= 0;
					pll_reconfig_state		<= 3;
				end
			end

			3: begin
				if(reconfig_cmd_done) begin
					reconfig_output_en		<= 1;
					reconfig_output_idx		<= 1;	//clk_iodelay
					reconfig_output_div		<= 5;	//200 MHz
					reconfig_output_phase	<= 0;
					pll_reconfig_state		<= 4;
				end
			end

			4: begin
				if(reconfig_cmd_done) begin
					reconfig_finish			<= 1;
					pll_reconfig_state		<= 5;
				end
			end

			5: begin
				//done, hang forever
			end

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // The debug bridge

    wire		rpc_tx_en;
    wire[31:0]	rpc_tx_data;
    wire		rpc_tx_ready;

    wire		rpc_rx_en;
    wire[31:0]	rpc_rx_data;
    wire		rpc_rx_ready;

    JtagDebugBridge #(
		.NOC_WIDTH(32)
    ) bridge(
		.clk(clk_noc),

		//RPC interface (crossed over)
		.rpc_tx_en(rpc_rx_en),
		.rpc_tx_data(rpc_rx_data),
		.rpc_tx_ready(rpc_rx_ready),

		.rpc_rx_en(rpc_tx_en),
		.rpc_rx_data(rpc_tx_data),
		.rpc_rx_ready(rpc_tx_ready),

		//Debug indicators
		.led()
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Transceiver for our debug stuff

    `include "RPCv3Transceiver_types_localparam.vh"

	reg			rpc_fab_rx_ready	= 1;
	wire		rpc_fab_rx_busy;
	wire		rpc_fab_rx_en;
	wire[15:0]	rpc_fab_rx_src_addr;
	wire[15:0]	rpc_fab_rx_dst_addr;
	wire[7:0]	rpc_fab_rx_callnum;
	wire[2:0]	rpc_fab_rx_type;
	wire[20:0]	rpc_fab_rx_d0;
	wire[31:0]	rpc_fab_rx_d1;
	wire[31:0]	rpc_fab_rx_d2;

	wire		rpc_fab_tx_busy;
	wire		rpc_fab_tx_done;
	reg			rpc_fab_tx_en		= 0;
	reg[15:0]	rpc_fab_tx_src_addr	= 0;
	reg[15:0]	rpc_fab_tx_dst_addr	= 0;
	reg[7:0]	rpc_fab_tx_callnum	= 0;
	reg[2:0]	rpc_fab_tx_type		= 0;
	reg[20:0]	rpc_fab_tx_d0		= 0;
	reg[31:0]	rpc_fab_tx_d1		= 0;
	reg[31:0]	rpc_fab_tx_d2		= 0;

	RPCv3Transceiver #(
		.DATA_WIDTH(32),
		.QUIET_WHEN_IDLE(1),
		.NODE_ADDR(16'h8000),
		.LEAF_NODE(1)
	) rpc_txvr (
		.clk(clk_noc),

		//Network side
		.rpc_tx_en(rpc_tx_en),
		.rpc_tx_data(rpc_tx_data),
		.rpc_tx_ready(rpc_tx_ready),
		.rpc_rx_en(rpc_rx_en),
		.rpc_rx_data(rpc_rx_data),
		.rpc_rx_ready(rpc_rx_ready),

		//Fabric side
		.rpc_fab_tx_en(rpc_fab_tx_en),
		.rpc_fab_tx_busy(rpc_fab_tx_busy),
		.rpc_fab_tx_src_addr(rpc_fab_tx_src_addr),
		.rpc_fab_tx_dst_addr(rpc_fab_tx_dst_addr),
		.rpc_fab_tx_callnum(rpc_fab_tx_callnum),
		.rpc_fab_tx_type(rpc_fab_tx_type),
		.rpc_fab_tx_d0(rpc_fab_tx_d0),
		.rpc_fab_tx_d1(rpc_fab_tx_d1),
		.rpc_fab_tx_d2(rpc_fab_tx_d2),
		.rpc_fab_tx_done(rpc_fab_tx_done),

		.rpc_fab_rx_ready(rpc_fab_rx_ready),
		.rpc_fab_rx_busy(rpc_fab_rx_busy),
		.rpc_fab_rx_en(rpc_fab_rx_en),
		.rpc_fab_rx_src_addr(rpc_fab_rx_src_addr),
		.rpc_fab_rx_dst_addr(rpc_fab_rx_dst_addr),
		.rpc_fab_rx_callnum(rpc_fab_rx_callnum),
		.rpc_fab_rx_type(rpc_fab_rx_type),
		.rpc_fab_rx_d0(rpc_fab_rx_d0),
		.rpc_fab_rx_d1(rpc_fab_rx_d1),
		.rpc_fab_rx_d2(rpc_fab_rx_d2)
		);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Calibrate the I/O delays

    IODelayCalibration delaycal(.refclk(clk_iodelay));

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // I/O buffers

    wire[5:0]	sample_in;
    reg			test_out = 0;
    reg[2:0]	drive_channel		= 0;

    /*
		PIN MAPPING

		pmod_dq[0] = DQ1 = P3
		pmod_dq[1] = DQ3 = P5
		pmod_dq[2] = DQ4 = P12
		pmod_dq[3] = DQ6 = P14
		pmod_dq[4] = DQ0 = P2 (input only!!)
		pmod_dq[5] = DQ2 = P4
		pmod_dq[6] = DQ5 = P13
		pmod_dq[7] = DQ7 = P15
	 */

    //Unused signals, for now
	assign pmod_dq[2]	= 1'b0;		//P12
	assign pmod_dq[4]	= 1'b0;		//P2

    //P3 on greenpak
    IOBUF iobuf_dq0(
		.I(test_out),
		.T(drive_channel != 0),
		.O(sample_in[0]),
		.IO(pmod_dq[0])
	);

	//P5 on greenpak
    IOBUF iobuf_dq1(
		.I(test_out),
		.T(drive_channel != 1),
		.O(sample_in[1]),
		.IO(pmod_dq[1])
	);

	//P4 on greenpak
	IOBUF iobuf_dq5(
		.I(test_out),
		.T(drive_channel != 2),
		.O(sample_in[2]),
		.IO(pmod_dq[5])
	);

	//P13 on greenpak
    IOBUF iobuf_dq6(
		.I(test_out),
		.T(drive_channel != 3),
		.O(sample_in[3]),
		.IO(pmod_dq[6])
	);

	//P15 on greenpak
    IOBUF iobuf_dq7(
		.I(test_out),
		.T(drive_channel != 4),
		.O(sample_in[4]),
		.IO(pmod_dq[7])
	);

	//P14 on greenpak
	IOBUF iobuf_dq3(
		.I(test_out),
		.T(drive_channel != 5),
		.O(sample_in[5]),
		.IO(pmod_dq[3])
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // I/O pin mapping and input delay lines

    //The delay line
	//Each tap is 1 / (64 * Fref) or 78 ps
	//Full scale on the delay is 32 taps or 2.5 ns.
	//This is, conveniently enough, the exact spacing between DDR phases!
	reg[4:0]	delay_val = 0;
	reg			delay_load	= 0;

	wire		test_in_delayed[7:0];
	wire[1:0]	test_in_arr[7:0];
	genvar i;
	generate
		for(i=0; i<6; i=i+1) begin : delayblock

			//Delay the signal
			IDELAYE2 #(
				.CINVCTRL_SEL("FALSE"),
				.DELAY_SRC("IDATAIN"),
				.HIGH_PERFORMANCE_MODE("TRUE"),
				.IDELAY_TYPE("VAR_LOAD"),
				.IDELAY_VALUE(0),
				.PIPE_SEL("FALSE"),
				.REFCLK_FREQUENCY(200),
				.SIGNAL_PATTERN("DATA")
			) idelay (
				.C(clk_noc),
				.CE(1'b0),
				.CINVCTRL(1'b0),
				.CNTVALUEIN(delay_val),
				.CNTVALUEOUT(),
				.DATAIN(),			//from FPGA fabric, not used
				.DATAOUT(test_in_delayed[i]),
				.IDATAIN(sample_in[i]),
				.INC(1'b1),
				.LD(delay_load),
				.LDPIPEEN(1'b0),
				.REGRST(1'b0)
			);

			//then de-serialize it
			IDDR #(
				.DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
				.INIT_Q1(0),
				.INIT_Q2(0),
				.SRTYPE("SYNC")
			) ddr1 (
				.Q1(test_in_arr[i][1]),
				.Q2(test_in_arr[i][0]),
				.C(clk_noc),
				.CE(1'b1),
				.D(test_in_delayed[i]),
				.R(1'b0),
				.S(1'b0)
			);

		end
	endgenerate

	//tie off unused channel 6/7
	assign test_in_delayed[6] = 0;
	assign test_in_arr[6] = 2'h0;

	assign test_in_delayed[7] = 0;
	assign test_in_arr[7] = 2'h0;

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // I2C bus for talking to the INA226 and thermal sensor

	//8'h80 = Si7050 thermal sensor

	reg			sensor_i2c_tx_en		= 0;
	reg[7:0]	sensor_i2c_tx_data		= 0;
	wire		sensor_i2c_tx_ack;

	reg			sensor_i2c_rx_en		= 0;
	wire		sensor_i2c_rx_rdy;
	wire[7:0]	sensor_i2c_rx_data;
	reg			sensor_i2c_rx_ack		= 1;

	wire		sensor_i2c_busy;

	reg			sensor_i2c_start_en		= 0;
	reg			sensor_i2c_restart_en	= 0;
	reg			sensor_i2c_stop_en		= 0;

    I2CTransceiver sensor_i2c_txvr(
		.clk(clk_noc),
		.clkdiv(16'd2000),			//200 MHz -> 100 kHz

		.i2c_scl(scope_i2c_scl),
		.i2c_sda(scope_i2c_sda),

		.tx_en(sensor_i2c_tx_en),
		.tx_ack(sensor_i2c_tx_ack),
		.tx_data(sensor_i2c_tx_data),

		.rx_en(sensor_i2c_rx_en),
		.rx_rdy(sensor_i2c_rx_rdy),
		.rx_out(sensor_i2c_rx_data),
		.rx_ack(sensor_i2c_rx_ack),

		.start_en(sensor_i2c_start_en),
		.restart_en(sensor_i2c_restart_en),
		.stop_en(sensor_i2c_stop_en),
		.busy(sensor_i2c_busy)
	);

	//Interface from NoC to sensor state machines
	reg			temp_read_en		= 0;
	reg			sensor_read_done	= 0;
	reg[16:0]	temp_value			= 0;	//Temperature (9.8 fixed point)

	/*
		Conversion to fixed point deg C.
		Approximate, but accurate to well under 0.25C across our operating range.
		Since the sensor is only accurate to +/- 1C this should be plenty good enough

		Equation in datasheet
			degC = ( (code * 175.72) / 65536 ) - 46.85

		Rearranging terms...
			degC =  (code * 0.002681274) - 46.85

		Converting to 9.8 fixed point (base unit = 1/256 C)
			fpDeg = (code * 0.68640625) - 11993.6
			fpDeg = (code>>4 * 10.9825) - 11993.6
			fpDeg ~= (code * 11) >> 4 - 11994

		Example conversion:
			Exact: 0x669C = 23.5817 C
			FP:    0x669C = 6065 fp16 = 23.6914 C

			Exact: 0x1e24 = -26.16 C
			FP:    0x1e24 = -6690 fp16 = -26.13 C
	 */

	localparam SENSOR_STATE_IDLE	= 4'h0;
	localparam SENSOR_STATE_TEMP_0	= 4'h1;
	localparam SENSOR_STATE_TEMP_1	= 4'h2;
	localparam SENSOR_STATE_TEMP_2	= 4'h3;
	localparam SENSOR_STATE_TEMP_3	= 4'h4;
	localparam SENSOR_STATE_TEMP_4	= 4'h5;
	localparam SENSOR_STATE_TEMP_5	= 4'h6;
	localparam SENSOR_STATE_TEMP_6	= 4'h7;
	localparam SENSOR_STATE_TEMP_7	= 4'h8;

	reg[3:0]	sensor_state		= SENSOR_STATE_IDLE;
	reg[15:0]	raw_temp			= 0;

	reg[20:0]	raw_temp_x11		= 0;

	always @(posedge clk_noc) begin

		sensor_i2c_start_en		<= 0;
		sensor_i2c_restart_en	<= 0;
		sensor_i2c_stop_en		<= 0;
		sensor_i2c_tx_en		<= 0;
		sensor_i2c_rx_en		<= 0;

		sensor_read_done		<= 0;

		//not using it
		led						<= 0;

		//Multiply by 11
		raw_temp_x11			<= (raw_temp << 3) + (raw_temp << 1) + (raw_temp);

		case(sensor_state)

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// IDLE - wait for a read command to come in

			SENSOR_STATE_IDLE: begin
				if(temp_read_en) begin
					sensor_i2c_start_en		<= 1;
					sensor_state			<= SENSOR_STATE_TEMP_0;
				end

			end	//end SENSOR_STATE_IDLE

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// TEMP - read the temp sensor

			//Send address
			SENSOR_STATE_TEMP_0: begin
				if(!sensor_i2c_busy) begin
					sensor_i2c_tx_en		<= 1;
					sensor_i2c_tx_data		<= 8'h80;
					sensor_state			<= SENSOR_STATE_TEMP_1;
				end
			end	//end SENSOR_STATE_TEMP_0

			//We should get an ACK, ignore the result for now
			//Send the measure command
			SENSOR_STATE_TEMP_1: begin
				if(!sensor_i2c_busy) begin
					sensor_i2c_tx_en		<= 1;
					sensor_i2c_tx_data		<= 8'hf3;	//measure, no hold
					sensor_state			<= SENSOR_STATE_TEMP_2;
				end
			end	//end SENSOR_STATE_TEMP_1

			//Send a restart command
			SENSOR_STATE_TEMP_2: begin
				if(!sensor_i2c_busy) begin
					sensor_i2c_restart_en	<= 1;
					sensor_state			<= SENSOR_STATE_TEMP_3;
				end
			end	//end SENSOR_STATE_TEMP_2

			//Send the address again, reading this time
			SENSOR_STATE_TEMP_3: begin
				if(!sensor_i2c_busy) begin
					sensor_i2c_tx_en		<= 1;
					sensor_i2c_tx_data		<= 8'h81;
					sensor_state			<= SENSOR_STATE_TEMP_4;
				end
			end	//end SENSOR_STATE_TEMP_3

			//See if we get an ACK or a NAK
			SENSOR_STATE_TEMP_4: begin
				if(!sensor_i2c_busy) begin

					//ACK, we're good to read - go get the data
					if(sensor_i2c_tx_ack) begin
						sensor_i2c_rx_en	<= 1;
						sensor_i2c_rx_ack	<= 1;
						sensor_state		<= SENSOR_STATE_TEMP_5;
					end

					//NAK, still converting - go read again
					else
						sensor_state		<= SENSOR_STATE_TEMP_2;

				end
			end	//end SENSOR_STATE_TEMP_4

			//Read MSB of temp data
			SENSOR_STATE_TEMP_5: begin
				if(!sensor_i2c_busy) begin
					raw_temp[15:8]			<= sensor_i2c_rx_data;

					sensor_i2c_rx_en		<= 1;
					sensor_i2c_rx_ack		<= 0;	//don't ask for checksum
					sensor_state			<= SENSOR_STATE_TEMP_6;
				end
			end	//end SENSOR_STATE_TEMP_5

			//Read LSB of temp data
			SENSOR_STATE_TEMP_6: begin
				if(!sensor_i2c_busy) begin
					raw_temp[7:0]			<= sensor_i2c_rx_data;
					sensor_state			<= SENSOR_STATE_TEMP_7;
					sensor_i2c_stop_en		<= 1;
				end
			end	//end SENSOR_STATE_TEMP_6

			//Convert to fixed point degC
			SENSOR_STATE_TEMP_7: begin
				if(!sensor_i2c_busy) begin
					sensor_read_done		<= 1;
					temp_value				<= raw_temp_x11[20:4] - 16'd11994;
					sensor_state			<= SENSOR_STATE_IDLE;
				end
			end

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Main state machine

	localparam STATE_IDLE 		 	= 0;
	localparam STATE_TX_WAIT	 	= 1;
	localparam STATE_TEST_0			= 2;
	localparam STATE_TEST_1		 	= 3;
	localparam STATE_TEST_2			= 4;
	localparam STATE_TEST_3			= 5;
	localparam STATE_TEST_4			= 6;
	localparam STATE_TEST_5			= 7;
	localparam STATE_TEMP_0			= 8;

	reg[3:0] 	state	= STATE_IDLE;
	reg[15:0] 	count	= 0;

	reg[2:0]		sample_channel		= 0;
	reg				tx_value			= 0;
	reg[1:0]		rx_idle				= 0;

	wire			din_not_idle		= (test_in_arr[sample_channel] != rx_idle);
	reg				din_not_idle_ff		= 0;
	wire			even_phase			= test_in_arr[sample_channel][0] == test_in_arr[sample_channel][1];
	reg				even_phase_ff		= 0;

	reg[31:0]		tx_delay			= 0;				//measured in delay line taps (1/32 of 2.5 ns, ~78 ps)
	reg[31:0]		tx_smallest_rdelay	= 32'hffffffff;
	reg[31:0]		tx_smallest_fdelay	= 32'hffffffff;

	//we look for both rising and falling edges in one RPC call
	localparam		EDGE_RISING 		= 0;
	localparam		EDGE_FALLING 		= 0;
	reg				target_edge			= EDGE_RISING;

	reg				done_with_rising	= 0;
	reg				done_with_falling	= 0;

	reg				delay_is_bigger		= 0;
	reg				tap_is_max			= 0;

    always @(posedge clk_noc) begin

		//Clear single-cycle flags
		delay_load				<= 0;
		rpc_fab_tx_en			<= 0;
		temp_read_en			<= 0;

		//Default to not ready!
		rpc_fab_rx_ready		<= 0;

		//Pipeline input data
		din_not_idle_ff			<= din_not_idle;
		even_phase_ff			<= even_phase;

		case(state)

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// Sit around and wait for a message
			STATE_IDLE: begin

				//Clear our delay lines
				delay_val			<= 0;
				delay_load			<= 1;

				//Clear a bunch of state regardless of what message we might be getting
				rpc_fab_tx_d0		<= 0;
				rpc_fab_tx_d1		<= 0;
				rpc_fab_tx_d2		<= 0;
				count				<= 0;
				done_with_rising	<= 0;
				done_with_falling	<= 0;

				//Prepare to reply
				rpc_fab_tx_src_addr	<= rpc_fab_rx_dst_addr;	//loop back src/dst address
				rpc_fab_tx_dst_addr	<= rpc_fab_rx_src_addr;
				rpc_fab_tx_callnum	<= rpc_fab_rx_callnum;
				rpc_fab_tx_type		<= RPC_TYPE_RETURN_SUCCESS;

				//Prepare to do a round trip time measurement (only valid for call #0 but ignored otherwise)
				sample_channel		<= rpc_fab_rx_d1[2:0];
				drive_channel		<= rpc_fab_rx_d1[5:3];
				rx_idle				<= {!rpc_fab_rx_d0[0], !rpc_fab_rx_d0[0]};
				tx_value			<= rpc_fab_rx_d0[1];

				target_edge			<= EDGE_RISING;

				tx_smallest_rdelay	<= 32'hffffffff;
				tx_smallest_fdelay	<= 32'hffffffff;

				//If we get a message, doesn't matter what it is, run a test
				if(rpc_fab_rx_en) begin

					case(rpc_fab_rx_callnum)

						//TODO: name
						//Round trip time measurement
						0: begin
							state			<= STATE_TEST_0;
						end

						//Temperature measurement
						1: begin
							temp_read_en	<= 1;
							state			<= STATE_TEMP_0;
						end

					endcase

				end

				else
					rpc_fab_rx_ready		<= 1;

			end	//end STATE_IDLE

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// Collect a temperature measurement

			STATE_TEMP_0: begin

				if(sensor_read_done) begin
					//sign extend to 32 bits
					rpc_fab_tx_d1			<= { {15{temp_value[16]}}, temp_value };
					rpc_fab_tx_en			<= 1;
					state					<= STATE_TX_WAIT;
				end

			end	//end STATE_TEMP_0

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// Run the actual test

			STATE_TEST_0: begin

				count					<= count + 1'h1;

				//Drive the complement of our target value to flush out the combinatorial paths
				test_out				<= !tx_value;

				//Wait a little while to let delay lines update and stabilize, and ensure that the old
				//test_out passed all the way through the DUT.
				//200 MHz = 5 ns per cycle * 2k = 10.24 us.
				//This is massively longer than the propagation delay of even the slowest delay line on the device
				//at 1.8V, so we should be fine.
				if(count == 16'h7ff)
					state				<= STATE_TEST_1;

			end	//end STATE_TEST_0

			STATE_TEST_1: begin

				//Get ready to do the actual test
				count					<= 0;
				test_out				<= tx_value;
				state					<= STATE_TEST_2;

				//If incoming link is not idle, something is wrong
				if(din_not_idle_ff) begin
					rpc_fab_tx_d1		<= 32'hcccccccc;
					rpc_fab_tx_type		<= RPC_TYPE_RETURN_FAIL;
					rpc_fab_tx_en		<= 1;
					state				<= STATE_TX_WAIT;
				end

			end	//end STATE_TEST_1

			STATE_TEST_2: begin

				//Bump count by 1 since it counts the number of SDR cycles (DDR cycles are 2x this)
				count					<= count + 1'h1;

				//We're done if either bit toggled one clock ago.
				//The extra clock of delay isn't important, we can just calibrate this out when we
				//measure the PCB trace/level shifter delays
				if(din_not_idle_ff) begin

					//EVEN phase
					if(even_phase_ff)
						tx_delay		<= {count, 1'h0, 5'h0} - delay_val;

					//ODD phase
					else
						tx_delay		<= {count, 1'h1, 5'h0} - delay_val;

					state				<= STATE_TEST_3;
				end

				//Something's wrong, complain
				//Max allowed propagation delay is 10.24 us
				else if(count == 16'h7ff) begin
					tx_delay			<= 32'hffffffff;
					state				<= STATE_TEST_3;
				end

			end	//end STATE_TEST_2

			//Just pipeline some stuff for faster Fmax
			STATE_TEST_3: begin
				if(target_edge == EDGE_RISING)
					delay_is_bigger		<= (tx_delay > tx_smallest_rdelay);
				else
					delay_is_bigger		<= (tx_delay > tx_smallest_fdelay);

				tap_is_max				<= (delay_val == 'd31);
				state					<= STATE_TEST_4;

				//Skip followup if we're already done with this edge
				if( (target_edge == EDGE_RISING) && done_with_rising)
					state				<= STATE_TEST_5;
				if( (target_edge == EDGE_FALLING) && done_with_falling)
					state				<= STATE_TEST_5;

			end	//end STATE_TEST_3

			STATE_TEST_4: begin

				//Is this delay bigger than the last one? We're wrapping, done with this pass.
				//If we're on the last delay tap, automatically declare us to be done since no previous tap was a hit
				if(delay_is_bigger || tap_is_max) begin
					if(target_edge == EDGE_RISING)
						done_with_rising	<= 1;
					else begin
						if(delay_is_bigger)
							rpc_fab_tx_d0[19:16]	<= 4'ha;
						else
							rpc_fab_tx_d0[19:16]	<= 4'hb;	//why are we always ending up here???
						done_with_falling	<= 1;
					end
				end

				//Nope, nothing special going on. Save this delay as the new smallest
				//(unless we're done with that edge already)
				else if(target_edge == EDGE_RISING) begin
					rpc_fab_tx_d0[5:0]		<= delay_val;
					rpc_fab_tx_d1			<= tx_delay;
					tx_smallest_rdelay		<= tx_delay;
				end
				else begin
					rpc_fab_tx_d0[13:8]		<= delay_val;
					rpc_fab_tx_d2			<= tx_delay;
					rpc_fab_tx_d0[19:16]	<= 4'hc;	//debug
					tx_smallest_fdelay		<= tx_delay;
				end

				state						<= STATE_TEST_5;

			end	//end STATE_TEST_4

			//Done with the current test pass
			STATE_TEST_5: begin

				//Did we hit BOTH edges?
				if(done_with_rising && done_with_falling) begin
					rpc_fab_tx_en		<= 1;
					state				<= STATE_TX_WAIT;
				end

				//Nope, move on to the next pass
				else begin
					state				<= STATE_TEST_0;
					count				<= 0;

					//To switch between rising and falling edges we invert
					//both the value we're sending, and the value we're looking for
					target_edge			<= ~target_edge;
					tx_value			<= ~tx_value;
					rx_idle				<= ~rx_idle;

					//Bump delay after a (rising, falling) pair
					if(target_edge == EDGE_FALLING) begin
						delay_val		<= delay_val + 1'h1;
						delay_load		<= 1;
					end

				end

			end	//end STATE_TEST_5

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// Wait for send to complete

			STATE_TX_WAIT: begin
				if(rpc_fab_tx_done)
					state			<= STATE_IDLE;
			end	//end STATE_TX_WAIT

		endcase

    end

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The logic analyzer

	RedTinUartWrapper #(
		.WIDTH(64),
		.DEPTH(512),
		.UART_CLKDIV(16'd1736),	//115200 @ 200 MHz
		.SYMBOL_ROM(
			{
				16384'h0,
				"DEBUGROM", 				8'h0, 8'h01, 8'h00,
				32'd5000,		//period of capture clock, in ps
				32'd512,		//Capture depth (TODO auto-patch this?)
				32'd64,			//Capture width (TODO auto-patch this?)
				{ "temp_read_en", 			8'h0, 8'd1,   8'h0 },
				{ "sensor_read_done", 		8'h0, 8'd1,   8'h0 },
				{ "temp_value", 			8'h0, 8'd17,  8'h0 }
			}
		)
	) analyzer (
		.clk(clk_noc),
		.capture_clk(clk_noc),
		.din({
				temp_read_en,				//1
				sensor_read_done,			//1
				temp_value,					//17
				45'h0						//padding
			}),
		.uart_rx(uart_rxd),
		.uart_tx(uart_txd),
		.la_ready()
	);

endmodule
