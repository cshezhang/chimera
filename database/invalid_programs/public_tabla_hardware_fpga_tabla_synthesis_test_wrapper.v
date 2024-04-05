`timescale 1ns/1ps

`ifdef FPGA
	`include "log.vh"
	`include "config.vh"
	`include "inst.vh"
`endif
module tabla_synthesis_test_wrapper #(
// ******************************************************************
// PARAMETERS
// ******************************************************************
  parameter integer AXIS_DATA_WIDTH       = 32,
  parameter integer AXIS_ADDR_WIDTH       = 32,
  parameter integer AXIM_DATA_WIDTH       = 64,
  parameter integer AXIM_ADDR_WIDTH       = 32,

  parameter integer PERF_CNTR_WIDTH       = 10,

  parameter integer DATA_WIDTH            = `BIT_WIDTH,
  parameter integer NUM_AXI               = `NUM_AXI, // NUMBER OF LANES = 64/DATA_WIDTH*NUM_AXI
  parameter integer NUM_PE                = `NUM_PU * `NUM_PE,
  parameter integer RD_BUF_ADDR_WIDTH     = 10,
  parameter integer NAMESPACE_WIDTH       = 2,
  parameter integer TX_SIZE_WIDTH         = 9,
  
  parameter integer RD_IF_DATA_WIDTH     = AXIM_DATA_WIDTH * NUM_AXI,
  parameter integer RD_BUF_DATA_WIDTH    = RD_IF_DATA_WIDTH / NUM_AXI,
  parameter integer WSTRB_WIDTH          = (RD_BUF_DATA_WIDTH/8) * NUM_AXI
  
  
// ******************************************************************
) (
// ******************************************************************
// IO
// ******************************************************************
    // Clk and Reset
  input  wire                             ACLK,
  input  wire                             ARESETN,

  // Master Interface Write Address
  output wire [32       -1 : 0]   S_AXI_AWADDR,
//  output wire [2*NUM_AXI        -1 : 0]   S_AXI_AWBURST,
//  output wire [4*NUM_AXI        -1 : 0]   S_AXI_AWCACHE,
//  output wire [6        -1 : 0]   S_AXI_AWID,
//  output wire [4*NUM_AXI        -1 : 0]   S_AXI_AWLEN,
//  output wire [2*NUM_AXI        -1 : 0]   S_AXI_AWLOCK,
//  output wire [3*NUM_AXI        -1 : 0]   S_AXI_AWPROT,
//  output wire [4*NUM_AXI        -1 : 0]   S_AXI_AWQOS,
//  output wire [1*NUM_AXI        -1 : 0]   S_AXI_AWUSER,
//  input  wire [1*NUM_AXI        -1 : 0]   S_AXI_AWREADY,
//  output wire [3*NUM_AXI        -1 : 0]   S_AXI_AWSIZE,
//  output wire [1*NUM_AXI        -1 : 0]   S_AXI_AWVALID,
  
  // Master Interface Write Data
  output wire [64 -1 : 0]   S_AXI_WDATA,
//  output wire [6        -1 : 0]   S_AXI_WID,
//  output wire [1*NUM_AXI        -1 : 0]   S_AXI_WUSER,
//  output wire [1*NUM_AXI        -1 : 0]   S_AXI_WLAST,
//  input  wire [1*NUM_AXI        -1 : 0]   S_AXI_WREADY,
//  output wire [WSTRB_WIDTH      -1 : 0]   S_AXI_WSTRB,
//  output wire [1*NUM_AXI        -1 : 0]   S_AXI_WVALID,

  // Master Interface Write Response
//  input  wire [6        -1 : 0]   S_AXI_BID,
//  input  wire [1*NUM_AXI        -1 : 0]   S_AXI_BUSER,
//  output wire [1*NUM_AXI        -1 : 0]   S_AXI_BREADY,
//  input  wire [2*NUM_AXI        -1 : 0]   S_AXI_BRESP,
//  input  wire [1*NUM_AXI        -1 : 0]   S_AXI_BVALID,
  
  // Master Interface Read Address
  output wire [32       -1 : 0]   S_AXI_ARADDR,
//  output wire [2*NUM_AXI        -1 : 0]   S_AXI_ARBURST,
//  output wire [4*NUM_AXI        -1 : 0]   S_AXI_ARCACHE,
//  output wire [6        -1 : 0]   S_AXI_ARID,
//  output wire [4*NUM_AXI        -1 : 0]   S_AXI_ARLEN,
//  output wire [2*NUM_AXI        -1 : 0]   S_AXI_ARLOCK,
//  output wire [3*NUM_AXI        -1 : 0]   S_AXI_ARPROT,
//  output wire [4*NUM_AXI        -1 : 0]   S_AXI_ARQOS,
//  output wire [1*NUM_AXI        -1 : 0]   S_AXI_ARUSER,
//  input  wire [1*NUM_AXI        -1 : 0]   S_AXI_ARREADY,
//  output wire [3*NUM_AXI        -1 : 0]   S_AXI_ARSIZE,
//  output wire [1*NUM_AXI        -1 : 0]   S_AXI_ARVALID,

  // Master Interface Read Data 
  input  wire [AXIM_DATA_WIDTH -1 : 0]   S_AXI_RDATA,
//  input  wire [6*NUM_AXI        -1 : 0]   S_AXI_RID,
//  input  wire [1*NUM_AXI        -1 : 0]   S_AXI_RUSER,
//  input  wire [1*NUM_AXI        -1 : 0]   S_AXI_RLAST,
//  output wire [1*NUM_AXI        -1 : 0]   S_AXI_RREADY,
//  input  wire [2*NUM_AXI        -1 : 0]   S_AXI_RRESP,
//  input  wire [1*NUM_AXI        -1 : 0]   S_AXI_RVALID,

  // CONTROL INTERFACE
  input  wire [AXIS_ADDR_WIDTH  -1 : 0]   M_AXI_GP0_awaddr,
  input  wire [2:0]                       M_AXI_GP0_awprot,
  output wire                             M_AXI_GP0_awready,
  input  wire                             M_AXI_GP0_awvalid,
  input  wire [AXIS_DATA_WIDTH  -1 : 0]   M_AXI_GP0_wdata,
  input  wire [AXIS_DATA_WIDTH/8-1 : 0]   M_AXI_GP0_wstrb,
  input  wire                             M_AXI_GP0_wvalid,
  output wire                             M_AXI_GP0_wready,
  output wire [1:0]                       M_AXI_GP0_bresp,
  output wire                             M_AXI_GP0_bvalid,
  input  wire                             M_AXI_GP0_bready,
  input  wire [AXIS_ADDR_WIDTH  -1 : 0]   M_AXI_GP0_araddr,
  input  wire [2:0]                       M_AXI_GP0_arprot,
  input  wire                             M_AXI_GP0_arvalid,
  output wire                             M_AXI_GP0_arready,
  output wire [AXIS_DATA_WIDTH  -1 : 0]   M_AXI_GP0_rdata,
  output wire [1:0]                       M_AXI_GP0_rresp,
  output wire                             M_AXI_GP0_rvalid,
  input  wire                             M_AXI_GP0_rready
// ******************************************************************
);

   wire [6*NUM_AXI        -1 : 0]   S_AXI_RID;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_RUSER;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_RLAST;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_RREADY;
   wire [2*NUM_AXI        -1 : 0]   S_AXI_RRESP;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_RVALID;
   
   wire [6        -1 : 0]   S_AXI_BID;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_BUSER;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_BREADY;
   wire [2*NUM_AXI        -1 : 0]   S_AXI_BRESP;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_BVALID;
   
   wire [2*NUM_AXI        -1 : 0]   S_AXI_ARBURST;
   wire [4*NUM_AXI        -1 : 0]   S_AXI_ARCACHE;
   wire [6        -1 : 0]   S_AXI_ARID;
   wire [4*NUM_AXI        -1 : 0]   S_AXI_ARLEN;
   wire [2*NUM_AXI        -1 : 0]   S_AXI_ARLOCK;
   wire [3*NUM_AXI        -1 : 0]   S_AXI_ARPROT;
   wire [4*NUM_AXI        -1 : 0]   S_AXI_ARQOS;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_ARUSER;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_ARREADY;
   wire [3*NUM_AXI        -1 : 0]   S_AXI_ARSIZE;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_ARVALID;

  wire [6        -1 : 0]   S_AXI_WID;
  wire [1*NUM_AXI        -1 : 0]   S_AXI_WUSER;
  wire [1*NUM_AXI        -1 : 0]   S_AXI_WLAST;
  wire [1*NUM_AXI        -1 : 0]   S_AXI_WREADY;
  wire [WSTRB_WIDTH      -1 : 0]   S_AXI_WSTRB;
  wire [1*NUM_AXI        -1 : 0]   S_AXI_WVALID;

   wire [2*NUM_AXI        -1 : 0]   S_AXI_AWBURST;
   wire [4*NUM_AXI        -1 : 0]   S_AXI_AWCACHE;
   wire [6        -1 : 0]   S_AXI_AWID;
   wire [4*NUM_AXI        -1 : 0]   S_AXI_AWLEN;
   wire [2*NUM_AXI        -1 : 0]   S_AXI_AWLOCK;
   wire [3*NUM_AXI        -1 : 0]   S_AXI_AWPROT;
   wire [4*NUM_AXI        -1 : 0]   S_AXI_AWQOS;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_AWUSER;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_AWREADY;
   wire [3*NUM_AXI        -1 : 0]   S_AXI_AWSIZE;
   wire [1*NUM_AXI        -1 : 0]   S_AXI_AWVALID;
// ******************************************************************
// Localparams
// ******************************************************************
  localparam integer NUM_DATA             = AXIM_DATA_WIDTH * NUM_AXI / DATA_WIDTH;
  localparam integer PE_ID_WIDTH          = `C_LOG_2(NUM_PE/NUM_DATA);
  localparam integer CTRL_SINGLE_PE_WIDTH = (PE_ID_WIDTH + 1) + NAMESPACE_WIDTH;
  localparam integer CTRL_PE_WIDTH        = (PE_ID_WIDTH + 1) * NUM_DATA + NAMESPACE_WIDTH;
  localparam integer MEM_PIPELINE_WIDTH   = CTRL_PE_WIDTH+1+1+RD_IF_DATA_WIDTH+RD_IF_DATA_WIDTH+1+1;

// ******************************************************************
  wire compute_start,compute_start_p;

// ******************************************************************
// Wires and Regs
// ******************************************************************
  // TXN REQ
  wire                                    rd_done;
  wire                                    processing_done;
  wire                                    wr_done;

  wire [PERF_CNTR_WIDTH   -1 : 0]         total_cycles;
  wire [PERF_CNTR_WIDTH   -1 : 0]         rd_cycles;
  wire [PERF_CNTR_WIDTH   -1 : 0]         pr_cycles;
  wire [PERF_CNTR_WIDTH   -1 : 0]         wr_cycles;

  wire [RD_IF_DATA_WIDTH  -1 : 0]         mem_data_input,mem_data_input_p;
  wire [RD_IF_DATA_WIDTH  -1 : 0]         mem_data_output,mem_data_output_p;
  wire                                    EOI,EOI_p;
  wire                                    EOC,EOC_p;

  wire                                    DATA_IO_DIR,DATA_IO_DIR_p;
  wire [CTRL_PE_WIDTH-1:0]                CTRL_PE,CTRL_PE_p;
  
  wire [MEM_PIPELINE_WIDTH-1:0] pipeline_in,pipeline_out;
// ******************************************************************

// ******************************************************************
// Read Interface
// ******************************************************************
wire [RD_IF_DATA_WIDTH -1 : 0]   S_AXI_RDATA_w;
wire [32*NUM_AXI       -1 : 0] S_AXI_AWADDR_w;
wire [32*NUM_AXI       -1 : 0] S_AXI_ARADDR_w;
wire [RD_IF_DATA_WIDTH -1 : 0]   S_AXI_WDATA_w;
wire [6*NUM_AXI        -1 : 0]   S_AXI_WID_w;
wire [6*NUM_AXI        -1 : 0]   S_AXI_BID;
wire [6*NUM_AXI        -1 : 0]   S_AXI_AWID_w;
wire [6*NUM_AXI        -1 : 0]   S_AXI_ARID_w;


assign S_AXI_AWADDR = S_AXI_AWADDR_w[127:96]^S_AXI_AWADDR_w[95:64]^S_AXI_AWADDR_w[63:32]^S_AXI_AWADDR_w[31:0];
assign S_AXI_ARADDR = S_AXI_ARADDR_w[127:96]^S_AXI_ARADDR_w[95:64]^S_AXI_ARADDR_w[63:32]^S_AXI_ARADDR_w[31:0];
assign S_AXI_RDATA_w = {4{S_AXI_RDATA}};
assign S_AXI_WDATA = S_AXI_WDATA_w[255:192]^S_AXI_WDATA_w[191:128]^S_AXI_WDATA_w[127:64]^S_AXI_WDATA_w[63:0];
assign S_AXI_WID = S_AXI_WID_w[23:18]^S_AXI_WID_w[17:12]^S_AXI_WID_w[11:6]^S_AXI_WID_w[5:0];
assign S_AXI_AWID = S_AXI_AWID_w[23:18]^S_AXI_AWID_w[17:12]^S_AXI_AWID_w[11:6]^S_AXI_AWID_w[5:0];
assign S_AXI_ARID = S_AXI_ARID_w[23:18]^S_AXI_ARID_w[17:12]^S_AXI_ARID_w[11:6]^S_AXI_ARID_w[5:0];
assign S_AXI_BID_w = {4{S_AXI_BID}};
mem_interface #(
  .DATA_WIDTH             ( DATA_WIDTH            ),
  .RD_BUF_ADDR_WIDTH      ( RD_BUF_ADDR_WIDTH     ),
  .NUM_DATA               ( NUM_DATA              ),
  .NUM_PE                 ( NUM_PE                ),
  .NUM_AXI                ( NUM_AXI               ),
  .TX_SIZE_WIDTH          ( TX_SIZE_WIDTH         )
) u_mem_if (
  .ACLK                   ( ACLK                  ), //input
  .ARESETN                ( ARESETN               ), //input
  .rdata                  ( mem_data_input      ), //input
  .wdata                  ( mem_data_output       ), //output
  .EOI                    ( EOI                 ), //input
  .EOC                    ( EOC                   ), //output
  .compute_start          ( compute_start         ), //input
  .DATA_IO_DIR            ( DATA_IO_DIR           ), //output
  .CTRL_PE                ( CTRL_PE               ), //output
  
  // AXIM_HP interfaces 0,1,2,3 - Data transfers
  .S_AXI_ARADDR           ( S_AXI_ARADDR_w          ), //output
  .S_AXI_ARBURST          ( S_AXI_ARBURST         ), //output
  .S_AXI_ARCACHE          ( S_AXI_ARCACHE         ), //output
  .S_AXI_ARID             ( S_AXI_ARID_w            ), //output
  .S_AXI_ARLEN            ( S_AXI_ARLEN           ), //output
  .S_AXI_ARLOCK           ( S_AXI_ARLOCK          ), //output
  .S_AXI_ARPROT           ( S_AXI_ARPROT          ), //output
  .S_AXI_ARQOS            ( S_AXI_ARQOS           ), //output
  .S_AXI_ARUSER           ( S_AXI_ARUSER          ), //output
  .S_AXI_ARREADY          ( S_AXI_ARREADY         ), //input
  .S_AXI_ARSIZE           ( S_AXI_ARSIZE          ), //output
  .S_AXI_ARVALID          ( S_AXI_ARVALID         ), //output
  .S_AXI_AWADDR           ( S_AXI_AWADDR_w          ), //output
  .S_AXI_AWBURST          ( S_AXI_AWBURST         ), //output
  .S_AXI_AWCACHE          ( S_AXI_AWCACHE         ), //output
  .S_AXI_AWID             ( S_AXI_AWID_w            ), //output
  .S_AXI_AWLEN            ( S_AXI_AWLEN           ), //output
  .S_AXI_AWLOCK           ( S_AXI_AWLOCK          ), //output
  .S_AXI_AWPROT           ( S_AXI_AWPROT          ), //output
  .S_AXI_AWQOS            ( S_AXI_AWQOS           ), //output
  .S_AXI_AWUSER           ( S_AXI_AWUSER          ), //output
  .S_AXI_AWREADY          ( S_AXI_AWREADY         ), //input
  .S_AXI_AWSIZE           ( S_AXI_AWSIZE          ), //output
  .S_AXI_AWVALID          ( S_AXI_AWVALID         ), //output
  .S_AXI_BID              ( S_AXI_BID_w             ), //input
  .S_AXI_BUSER            ( S_AXI_BUSER           ), //input
  .S_AXI_BREADY           ( S_AXI_BREADY          ), //output
  .S_AXI_BRESP            ( S_AXI_BRESP           ), //input
  .S_AXI_BVALID           ( S_AXI_BVALID          ), //input
  .S_AXI_RDATA            ( S_AXI_RDATA_w           ), //input
  .S_AXI_RID              ( S_AXI_RID             ), //input
  .S_AXI_RUSER            ( S_AXI_RUSER           ), //input
  .S_AXI_RLAST            ( S_AXI_RLAST           ), //input
  .S_AXI_RREADY           ( S_AXI_RREADY          ), //output
  .S_AXI_RRESP            ( S_AXI_RRESP           ), //input
  .S_AXI_RVALID           ( S_AXI_RVALID          ), //input
  .S_AXI_WDATA            ( S_AXI_WDATA_w           ), //output
  .S_AXI_WID              ( S_AXI_WID_w             ), //output
  .S_AXI_WUSER            ( S_AXI_WUSER           ), //output
  .S_AXI_WLAST            ( S_AXI_WLAST           ), //output
  .S_AXI_WREADY           ( S_AXI_WREADY          ), //input
  .S_AXI_WSTRB            ( S_AXI_WSTRB           ), //output
  .S_AXI_WVALID           ( S_AXI_WVALID          ), //output

  // AXIS_GP interface 0 - Control
  .M_AXI_GP0_awaddr       ( M_AXI_GP0_awaddr      ),
  .M_AXI_GP0_awprot       ( M_AXI_GP0_awprot      ),
  .M_AXI_GP0_awvalid      ( M_AXI_GP0_awvalid     ),
  .M_AXI_GP0_awready      ( M_AXI_GP0_awready     ),
  .M_AXI_GP0_wdata        ( M_AXI_GP0_wdata       ),
  .M_AXI_GP0_wstrb        ( M_AXI_GP0_wstrb       ),
  .M_AXI_GP0_wvalid       ( M_AXI_GP0_wvalid      ),
  .M_AXI_GP0_wready       ( M_AXI_GP0_wready      ),
  .M_AXI_GP0_bresp        ( M_AXI_GP0_bresp       ),
  .M_AXI_GP0_bvalid       ( M_AXI_GP0_bvalid      ),
  .M_AXI_GP0_bready       ( M_AXI_GP0_bready      ),
  .M_AXI_GP0_araddr       ( M_AXI_GP0_araddr      ),
  .M_AXI_GP0_arprot       ( M_AXI_GP0_arprot      ),
  .M_AXI_GP0_arvalid      ( M_AXI_GP0_arvalid     ),
  .M_AXI_GP0_arready      ( M_AXI_GP0_arready     ),
  .M_AXI_GP0_rdata        ( M_AXI_GP0_rdata       ),
  .M_AXI_GP0_rresp        ( M_AXI_GP0_rresp       ),
  .M_AXI_GP0_rvalid       ( M_AXI_GP0_rvalid      ),
  .M_AXI_GP0_rready       ( M_AXI_GP0_rready      )
);
// ******************************************************************

// ******************************************************************
// Accelerator - Dummy
// ******************************************************************


	accelerator
	#(
    	.memDataLen(DATA_WIDTH),
    	.dataLen(`INTERNAL_BIT_WIDTH),

    	.logMemNamespaces(NAMESPACE_WIDTH),
    	.NUM_DATA(NUM_DATA)
	)
	accelerator_unit(
   		.clk(ACLK),
    	.reset_in(~ARESETN),
    	.start(compute_start),
    	.mem_ctrl_in(CTRL_PE),
    	.mem_rd_wrt(DATA_IO_DIR), 
  
    	.mem_data_input(mem_data_output),
    	.mem_data_output(mem_data_input),
    
    	.eol(EOI),
    	.eoc(EOC)
	);

// reg compute_start_d;
// reg compute_start_dd;

// always @(posedge ACLK)
// begin
  // if (ARESETN) begin
    // compute_start_d <= compute_start;
    // compute_start_dd <= compute_start_d;
  // end else begin
    // compute_start_d <= 0;
    // compute_start_dd <= 0;
  // end
// end

//assign EOI = compute_start_dd;

// ******************************************************************

endmodule
