//
// Generated by Bluespec Compiler, version 2010.10.beta1 (build 22431, 2010-10-28)
//
// On Tue Jan 11 16:29:16 EST 2011
//
//
// Ports:
// Name                         I/O  size props
// AWREADY                        O     1
// WREADY                         O     1
// BVALID                         O     1
// BRESP                          O     2 reg
// ARREADY                        O     1
// RVALID                         O     1
// RDATA                          O    32 reg
// RRESP                          O     2 reg
// ACLK                           I     1 clock
// ARESETN                        I     1 reset
// AWADDR                         I    32 reg
// AWPROT                         I     3 reg
// WDATA                          I    32 reg
// WSTRB                          I     4 reg
// ARADDR                         I    32 reg
// ARPROT                         I     3 reg
// AWVALID                        I     1
// WVALID                         I     1
// BREADY                         I     1
// ARVALID                        I     1
// RREADY                         I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module nf10_simple_slave(ACLK,
	      ARESET_N,

	      AWVALID,

	      AWREADY,

	      AWADDR,

	      AWPROT,

	      WVALID,

	      WREADY,

	      WDATA,

	      WSTRB,

	      BVALID,

	      BREADY,

	      BRESP,

	      ARVALID,

	      ARREADY,

	      ARADDR,

	      ARPROT,

	      RVALID,

	      RREADY,

	      RDATA,

	      RRESP);
  parameter [0 : 0] hasDebugLogic = 1'b0;
  // Master AXI Stream Data Width

  parameter C_BASEADDR=32'h00000000 ;
  parameter C_HIGHADDR=32'hFFFFFFFF;

  input  ACLK;
  input  ARESET_N;

  // action method mAWVALID
  input  AWVALID;

  // value method sAWREADY
  output AWREADY;

  // action method mAWADDR
  input  [31 : 0] AWADDR;

  // action method mAWPROT
  input  [2 : 0] AWPROT;

  // action method mWVALID
  input  WVALID;

  // value method sWREADY
  output WREADY;

  // action method mWDATA
  input  [31 : 0] WDATA;

  // action method mWSTRB
  input  [3 : 0] WSTRB;

  // value method sBVALID
  output BVALID;

  // action method mBREADY
  input  BREADY;

  // value method sBRESP
  output [1 : 0] BRESP;

  // action method mARVALID
  input  ARVALID;

  // value method sARREADY
  output ARREADY;

  // action method mARADDR
  input  [31 : 0] ARADDR;

  // action method mARPROT
  input  [2 : 0] ARPROT;

  // value method sRVALID
  output RVALID;

  // action method mRREADY
  input  RREADY;

  // value method sRDATA
  output [31 : 0] RDATA;

  // value method sRRESP
  output [1 : 0] RRESP;

  // signals for module outputs
  wire [31 : 0] RDATA;
  wire [1 : 0] BRESP, RRESP;
  wire ARREADY, AWREADY, BVALID, RVALID, WREADY;

  // inlined wires
  wire [35 : 0] a4l_a4wrData_data_wire$wget;
  wire [34 : 0] a4l_a4rdAddr_data_wire$wget, a4l_a4wrAddr_data_wire$wget;
  wire [33 : 0] a4l_a4rdResp_fifof_x_wire$wget;
  wire [31 : 0] a4ls_rdAddr_w$wget, a4ls_wrAddr_w$wget, a4ls_wrData_w$wget;
  wire [3 : 0] a4ls_wrStrb_w$wget;
  wire [2 : 0] a4ls_rdProt_w$wget, a4ls_wrProt_w$wget;
  wire [1 : 0] a4l_a4wrResp_fifof_x_wire$wget;
  wire a4l_a4rdAddr_enq_enq$whas,
       a4l_a4rdAddr_enq_valid$whas,
       a4l_a4rdResp_deq_deq$whas,
       a4l_a4rdResp_deq_ready$whas,
       a4l_a4rdResp_fifof_dequeueing$whas,
       a4l_a4rdResp_fifof_enqueueing$whas,
       a4l_a4rdResp_fifof_x_wire$whas,
       a4l_a4wrAddr_enq_enq$whas,
       a4l_a4wrAddr_enq_valid$whas,
       a4l_a4wrData_enq_enq$whas,
       a4l_a4wrData_enq_valid$whas,
       a4l_a4wrResp_deq_deq$whas,
       a4l_a4wrResp_deq_ready$whas,
       a4l_a4wrResp_fifof_dequeueing$whas,
       a4l_a4wrResp_fifof_enqueueing$whas,
       a4l_a4wrResp_fifof_x_wire$whas,
       a4ls_rdAddrVal_w$wget,
       a4ls_rdAddrVal_w$whas,
       a4ls_rdAddr_w$whas,
       a4ls_rdProt_w$whas,
       a4ls_rdRespRdy_w$wget,
       a4ls_rdRespRdy_w$whas,
       a4ls_wrAddrVal_w$wget,
       a4ls_wrAddrVal_w$whas,
       a4ls_wrAddr_w$whas,
       a4ls_wrDataVal_w$wget,
       a4ls_wrDataVal_w$whas,
       a4ls_wrData_w$whas,
       a4ls_wrProt_w$whas,
       a4ls_wrRespRdy_w$wget,
       a4ls_wrRespRdy_w$whas,
       a4ls_wrStrb_w$whas;

  // register a4l_a4rdResp_fifof_c_r
  reg [1 : 0] a4l_a4rdResp_fifof_c_r;
  wire [1 : 0] a4l_a4rdResp_fifof_c_r$D_IN;
  wire a4l_a4rdResp_fifof_c_r$EN;

  // register a4l_a4rdResp_fifof_q_0
  reg [33 : 0] a4l_a4rdResp_fifof_q_0;
  reg [33 : 0] a4l_a4rdResp_fifof_q_0$D_IN;
  wire a4l_a4rdResp_fifof_q_0$EN;

  // register a4l_a4rdResp_fifof_q_1
  reg [33 : 0] a4l_a4rdResp_fifof_q_1;
  reg [33 : 0] a4l_a4rdResp_fifof_q_1$D_IN;
  wire a4l_a4rdResp_fifof_q_1$EN;

  // register a4l_a4wrResp_fifof_c_r
  reg [1 : 0] a4l_a4wrResp_fifof_c_r;
  wire [1 : 0] a4l_a4wrResp_fifof_c_r$D_IN;
  wire a4l_a4wrResp_fifof_c_r$EN;

  // register a4l_a4wrResp_fifof_q_0
  reg [1 : 0] a4l_a4wrResp_fifof_q_0;
  reg [1 : 0] a4l_a4wrResp_fifof_q_0$D_IN;
  wire a4l_a4wrResp_fifof_q_0$EN;

  // register a4l_a4wrResp_fifof_q_1
  reg [1 : 0] a4l_a4wrResp_fifof_q_1;
  wire [1 : 0] a4l_a4wrResp_fifof_q_1$D_IN;
  wire a4l_a4wrResp_fifof_q_1$EN;

  // register b18
  reg [7 : 0] b18;
  wire [7 : 0] b18$D_IN;
  wire b18$EN;

  // register b19
  reg [7 : 0] b19;
  wire [7 : 0] b19$D_IN;
  wire b19$EN;

  // register b1A
  reg [7 : 0] b1A;
  wire [7 : 0] b1A$D_IN;
  wire b1A$EN;

  // register b1B
  reg [7 : 0] b1B;
  wire [7 : 0] b1B$D_IN;
  wire b1B$EN;

  // register r0
  reg [31 : 0] r0;
  wire [31 : 0] r0$D_IN;
  wire r0$EN;

  // register r4
  reg [31 : 0] r4;
  wire [31 : 0] r4$D_IN;
  wire r4$EN;

  // ports of submodule a4l_a4rdAddr_fifof
  wire [34 : 0] a4l_a4rdAddr_fifof$D_IN, a4l_a4rdAddr_fifof$D_OUT;
  wire a4l_a4rdAddr_fifof$CLR,
       a4l_a4rdAddr_fifof$DEQ,
       a4l_a4rdAddr_fifof$EMPTY_N,
       a4l_a4rdAddr_fifof$ENQ,
       a4l_a4rdAddr_fifof$FULL_N;

  // ports of submodule a4l_a4wrAddr_fifof
  wire [34 : 0] a4l_a4wrAddr_fifof$D_IN, a4l_a4wrAddr_fifof$D_OUT;
  wire a4l_a4wrAddr_fifof$CLR,
       a4l_a4wrAddr_fifof$DEQ,
       a4l_a4wrAddr_fifof$EMPTY_N,
       a4l_a4wrAddr_fifof$ENQ,
       a4l_a4wrAddr_fifof$FULL_N;

  // ports of submodule a4l_a4wrData_fifof
  wire [35 : 0] a4l_a4wrData_fifof$D_IN, a4l_a4wrData_fifof$D_OUT;
  wire a4l_a4wrData_fifof$CLR,
       a4l_a4wrData_fifof$DEQ,
       a4l_a4wrData_fifof$EMPTY_N,
       a4l_a4wrData_fifof$ENQ,
       a4l_a4wrData_fifof$FULL_N;

  // rule scheduling signals
  wire WILL_FIRE_RL_a4l_a4rdResp_fifof_both,
       WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr,
       WILL_FIRE_RL_a4l_a4rdResp_fifof_incCtr,
       WILL_FIRE_RL_a4l_a4wrResp_fifof_both,
       WILL_FIRE_RL_a4l_a4wrResp_fifof_decCtr,
       WILL_FIRE_RL_a4l_a4wrResp_fifof_incCtr,
       WILL_FIRE_RL_a4l_cfrd,
       WILL_FIRE_RL_a4l_cfwr;

  // inputs to muxes for submodule ports
  wire [33 : 0] MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_1,
		MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_2,
		MUX_a4l_a4rdResp_fifof_q_1$write_1__VAL_2;
  wire [1 : 0] MUX_a4l_a4rdResp_fifof_c_r$write_1__VAL_1,
	       MUX_a4l_a4rdResp_fifof_c_r$write_1__VAL_2,
	       MUX_a4l_a4wrResp_fifof_c_r$write_1__VAL_1,
	       MUX_a4l_a4wrResp_fifof_c_r$write_1__VAL_2,
	       MUX_a4l_a4wrResp_fifof_q_0$write_1__VAL_2;
  wire MUX_a4l_a4rdResp_fifof_q_0$write_1__SEL_1,
       MUX_a4l_a4rdResp_fifof_q_1$write_1__SEL_1,
       MUX_a4l_a4wrResp_fifof_q_0$write_1__SEL_1;

  // remaining internal signals
  reg [63 : 0] v__h4360, v__h4585, v__h4617;
  reg [31 : 0] _theResult____h4423;
  wire [31 : 0] rdat__h4549;

  // value method sAWREADY
  assign AWREADY = a4l_a4wrAddr_fifof$FULL_N ;

  // value method sWREADY
  assign WREADY = a4l_a4wrData_fifof$FULL_N ;

  // value method sBVALID
  assign BVALID = a4l_a4wrResp_fifof_c_r != 2'd0 ;

  // value method sBRESP
  assign BRESP = a4l_a4wrResp_fifof_q_0 ;

  // value method sARREADY
  assign ARREADY = a4l_a4rdAddr_fifof$FULL_N ;

  // value method sRVALID
  assign RVALID = a4l_a4rdResp_fifof_c_r != 2'd0 ;

  // value method sRDATA
  assign RDATA = a4l_a4rdResp_fifof_q_0[31:0] ;

  // value method sRRESP
  assign RRESP = a4l_a4rdResp_fifof_q_0[33:32] ;

  // submodule a4l_a4rdAddr_fifof
  FIFO2 #(.width(32'd35), .guarded(32'd1)) a4l_a4rdAddr_fifof(.RST_N(ARESET_N),
							      .CLK(ACLK),
							      .D_IN(a4l_a4rdAddr_fifof$D_IN),
							      .ENQ(a4l_a4rdAddr_fifof$ENQ),
							      .DEQ(a4l_a4rdAddr_fifof$DEQ),
							      .CLR(a4l_a4rdAddr_fifof$CLR),
							      .D_OUT(a4l_a4rdAddr_fifof$D_OUT),
							      .FULL_N(a4l_a4rdAddr_fifof$FULL_N),
							      .EMPTY_N(a4l_a4rdAddr_fifof$EMPTY_N));

  // submodule a4l_a4wrAddr_fifof
  FIFO2 #(.width(32'd35), .guarded(32'd1)) a4l_a4wrAddr_fifof(.RST_N(ARESET_N),
							      .CLK(ACLK),
							      .D_IN(a4l_a4wrAddr_fifof$D_IN),
							      .ENQ(a4l_a4wrAddr_fifof$ENQ),
							      .DEQ(a4l_a4wrAddr_fifof$DEQ),
							      .CLR(a4l_a4wrAddr_fifof$CLR),
							      .D_OUT(a4l_a4wrAddr_fifof$D_OUT),
							      .FULL_N(a4l_a4wrAddr_fifof$FULL_N),
							      .EMPTY_N(a4l_a4wrAddr_fifof$EMPTY_N));

  // submodule a4l_a4wrData_fifof
  FIFO2 #(.width(32'd36), .guarded(32'd1)) a4l_a4wrData_fifof(.RST_N(ARESET_N),
							      .CLK(ACLK),
							      .D_IN(a4l_a4wrData_fifof$D_IN),
							      .ENQ(a4l_a4wrData_fifof$ENQ),
							      .DEQ(a4l_a4wrData_fifof$DEQ),
							      .CLR(a4l_a4wrData_fifof$CLR),
							      .D_OUT(a4l_a4wrData_fifof$D_OUT),
							      .FULL_N(a4l_a4wrData_fifof$FULL_N),
							      .EMPTY_N(a4l_a4wrData_fifof$EMPTY_N));

  // rule RL_a4l_cfrd
  assign WILL_FIRE_RL_a4l_cfrd =
	     a4l_a4rdResp_fifof_c_r != 2'd2 && a4l_a4rdAddr_fifof$EMPTY_N ;

  // rule RL_a4l_cfwr
  assign WILL_FIRE_RL_a4l_cfwr =
	     a4l_a4wrResp_fifof_c_r != 2'd2 && a4l_a4wrAddr_fifof$EMPTY_N &&
	     a4l_a4wrData_fifof$EMPTY_N ;

  // rule RL_a4l_a4wrResp_fifof_incCtr
  assign WILL_FIRE_RL_a4l_a4wrResp_fifof_incCtr =
	     ((a4l_a4wrResp_fifof_c_r == 2'd0) ?
		WILL_FIRE_RL_a4l_cfwr :
		a4l_a4wrResp_fifof_c_r != 2'd1 || WILL_FIRE_RL_a4l_cfwr) &&
	     WILL_FIRE_RL_a4l_cfwr &&
	     !a4l_a4wrResp_fifof_dequeueing$whas ;

  // rule RL_a4l_a4wrResp_fifof_decCtr
  assign WILL_FIRE_RL_a4l_a4wrResp_fifof_decCtr =
	     a4l_a4wrResp_fifof_dequeueing$whas && !WILL_FIRE_RL_a4l_cfwr ;

  // rule RL_a4l_a4wrResp_fifof_both
  assign WILL_FIRE_RL_a4l_a4wrResp_fifof_both =
	     ((a4l_a4wrResp_fifof_c_r == 2'd1) ?
		WILL_FIRE_RL_a4l_cfwr :
		a4l_a4wrResp_fifof_c_r != 2'd2 || WILL_FIRE_RL_a4l_cfwr) &&
	     a4l_a4wrResp_fifof_dequeueing$whas &&
	     WILL_FIRE_RL_a4l_cfwr ;

  // rule RL_a4l_a4rdResp_fifof_incCtr
  assign WILL_FIRE_RL_a4l_a4rdResp_fifof_incCtr =
	     ((a4l_a4rdResp_fifof_c_r == 2'd0) ?
		WILL_FIRE_RL_a4l_cfrd :
		a4l_a4rdResp_fifof_c_r != 2'd1 || WILL_FIRE_RL_a4l_cfrd) &&
	     WILL_FIRE_RL_a4l_cfrd &&
	     !a4l_a4rdResp_fifof_dequeueing$whas ;

  // rule RL_a4l_a4rdResp_fifof_decCtr
  assign WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr =
	     a4l_a4rdResp_fifof_dequeueing$whas && !WILL_FIRE_RL_a4l_cfrd ;

  // rule RL_a4l_a4rdResp_fifof_both
  assign WILL_FIRE_RL_a4l_a4rdResp_fifof_both =
	     ((a4l_a4rdResp_fifof_c_r == 2'd1) ?
		WILL_FIRE_RL_a4l_cfrd :
		a4l_a4rdResp_fifof_c_r != 2'd2 || WILL_FIRE_RL_a4l_cfrd) &&
	     a4l_a4rdResp_fifof_dequeueing$whas &&
	     WILL_FIRE_RL_a4l_cfrd ;

  // inputs to muxes for submodule ports
  assign MUX_a4l_a4rdResp_fifof_q_0$write_1__SEL_1 =
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_incCtr &&
	     a4l_a4rdResp_fifof_c_r == 2'd0 ;
  assign MUX_a4l_a4rdResp_fifof_q_1$write_1__SEL_1 =
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_incCtr &&
	     a4l_a4rdResp_fifof_c_r == 2'd1 ;
  assign MUX_a4l_a4wrResp_fifof_q_0$write_1__SEL_1 =
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_incCtr &&
	     a4l_a4wrResp_fifof_c_r == 2'd0 ;
  assign MUX_a4l_a4rdResp_fifof_c_r$write_1__VAL_1 =
	     a4l_a4rdResp_fifof_c_r + 2'd1 ;
  assign MUX_a4l_a4rdResp_fifof_c_r$write_1__VAL_2 =
	     a4l_a4rdResp_fifof_c_r - 2'd1 ;
  assign MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_1 =
	     { 2'd0, _theResult____h4423 } ;
  assign MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_2 =
	     (a4l_a4rdResp_fifof_c_r == 2'd1) ?
	       MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_1 :
	       a4l_a4rdResp_fifof_q_1 ;
  assign MUX_a4l_a4rdResp_fifof_q_1$write_1__VAL_2 =
	     (a4l_a4rdResp_fifof_c_r == 2'd2) ?
	       MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_1 :
	       34'd0 ;
  assign MUX_a4l_a4wrResp_fifof_c_r$write_1__VAL_1 =
	     a4l_a4wrResp_fifof_c_r + 2'd1 ;
  assign MUX_a4l_a4wrResp_fifof_c_r$write_1__VAL_2 =
	     a4l_a4wrResp_fifof_c_r - 2'd1 ;
  assign MUX_a4l_a4wrResp_fifof_q_0$write_1__VAL_2 =
	     (a4l_a4wrResp_fifof_c_r == 2'd1) ?
	       2'd0 :
	       a4l_a4wrResp_fifof_q_1 ;

  // inlined wires
  assign a4l_a4wrResp_fifof_x_wire$wget = 2'd0 ;
  assign a4l_a4wrResp_fifof_x_wire$whas = WILL_FIRE_RL_a4l_cfwr ;
  assign a4l_a4rdResp_fifof_x_wire$wget =
	     MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_1 ;
  assign a4l_a4rdResp_fifof_x_wire$whas = WILL_FIRE_RL_a4l_cfrd ;
  assign a4ls_wrAddrVal_w$wget = 1'd1 ;
  assign a4ls_wrAddrVal_w$whas = AWVALID ;
  assign a4ls_wrDataVal_w$wget = 1'd1 ;
  assign a4ls_wrDataVal_w$whas = WVALID ;
  assign a4ls_wrRespRdy_w$wget = 1'd1 ;
  assign a4ls_wrRespRdy_w$whas = BREADY ;
  assign a4ls_rdAddrVal_w$wget = 1'd1 ;
  assign a4ls_rdAddrVal_w$whas = ARVALID ;
  assign a4ls_rdRespRdy_w$wget = 1'd1 ;
  assign a4ls_rdRespRdy_w$whas = RREADY ;
  assign a4ls_wrAddr_w$wget = AWADDR ;
  assign a4ls_wrAddr_w$whas = 1'd1 ;
  assign a4ls_wrProt_w$wget = AWPROT ;
  assign a4ls_wrProt_w$whas = 1'd1 ;
  assign a4ls_wrData_w$wget = WDATA ;
  assign a4ls_wrData_w$whas = 1'd1 ;
  assign a4ls_wrStrb_w$wget = WSTRB ;
  assign a4ls_wrStrb_w$whas = 1'd1 ;
  assign a4ls_rdAddr_w$wget = ARADDR ;
  assign a4ls_rdAddr_w$whas = 1'd1 ;
  assign a4ls_rdProt_w$wget = ARPROT ;
  assign a4ls_rdProt_w$whas = 1'd1 ;
  assign a4l_a4wrAddr_enq_valid$whas = AWVALID ;
  assign a4l_a4wrAddr_enq_enq$whas = 1'b0 ;
  assign a4l_a4wrData_enq_valid$whas = WVALID ;
  assign a4l_a4wrData_enq_enq$whas = 1'b0 ;
  assign a4l_a4wrResp_fifof_enqueueing$whas = WILL_FIRE_RL_a4l_cfwr ;
  assign a4l_a4wrResp_fifof_dequeueing$whas =
	     a4l_a4wrResp_fifof_c_r != 2'd0 && BREADY ;
  assign a4l_a4wrResp_deq_ready$whas = BREADY ;
  assign a4l_a4wrResp_deq_deq$whas = 1'b0 ;
  assign a4l_a4rdAddr_enq_valid$whas = ARVALID ;
  assign a4l_a4rdAddr_enq_enq$whas = 1'b0 ;
  assign a4l_a4rdResp_fifof_enqueueing$whas = WILL_FIRE_RL_a4l_cfrd ;
  assign a4l_a4rdResp_fifof_dequeueing$whas =
	     a4l_a4rdResp_fifof_c_r != 2'd0 && RREADY ;
  assign a4l_a4rdResp_deq_ready$whas = RREADY ;
  assign a4l_a4rdResp_deq_deq$whas = 1'b0 ;
  assign a4l_a4wrAddr_data_wire$wget = { AWPROT, AWADDR } ;
  assign a4l_a4wrData_data_wire$wget = { WSTRB, WDATA } ;
  assign a4l_a4rdAddr_data_wire$wget = { ARPROT, ARADDR } ;

  // register a4l_a4rdResp_fifof_c_r
  assign a4l_a4rdResp_fifof_c_r$D_IN =
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_incCtr ?
	       MUX_a4l_a4rdResp_fifof_c_r$write_1__VAL_1 :
	       MUX_a4l_a4rdResp_fifof_c_r$write_1__VAL_2 ;
  assign a4l_a4rdResp_fifof_c_r$EN =
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_incCtr ||
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr ;

  // register a4l_a4rdResp_fifof_q_0
  always@(MUX_a4l_a4rdResp_fifof_q_0$write_1__SEL_1 or
	  MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_1 or
	  WILL_FIRE_RL_a4l_a4rdResp_fifof_both or
	  MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_2 or
	  WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr or a4l_a4rdResp_fifof_q_1)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_a4l_a4rdResp_fifof_q_0$write_1__SEL_1:
	  a4l_a4rdResp_fifof_q_0$D_IN =
	      MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_1;
      WILL_FIRE_RL_a4l_a4rdResp_fifof_both:
	  a4l_a4rdResp_fifof_q_0$D_IN =
	      MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_2;
      WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr:
	  a4l_a4rdResp_fifof_q_0$D_IN = a4l_a4rdResp_fifof_q_1;
      default: a4l_a4rdResp_fifof_q_0$D_IN =
		   34'h2AAAAAAAA /* unspecified value */ ;
    endcase
  end
  assign a4l_a4rdResp_fifof_q_0$EN =
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_incCtr &&
	     a4l_a4rdResp_fifof_c_r == 2'd0 ||
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_both ||
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr ;

  // register a4l_a4rdResp_fifof_q_1
  always@(MUX_a4l_a4rdResp_fifof_q_1$write_1__SEL_1 or
	  MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_1 or
	  WILL_FIRE_RL_a4l_a4rdResp_fifof_both or
	  MUX_a4l_a4rdResp_fifof_q_1$write_1__VAL_2 or
	  WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_a4l_a4rdResp_fifof_q_1$write_1__SEL_1:
	  a4l_a4rdResp_fifof_q_1$D_IN =
	      MUX_a4l_a4rdResp_fifof_q_0$write_1__VAL_1;
      WILL_FIRE_RL_a4l_a4rdResp_fifof_both:
	  a4l_a4rdResp_fifof_q_1$D_IN =
	      MUX_a4l_a4rdResp_fifof_q_1$write_1__VAL_2;
      WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr:
	  a4l_a4rdResp_fifof_q_1$D_IN = 34'd0;
      default: a4l_a4rdResp_fifof_q_1$D_IN =
		   34'h2AAAAAAAA /* unspecified value */ ;
    endcase
  end
  assign a4l_a4rdResp_fifof_q_1$EN =
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_incCtr &&
	     a4l_a4rdResp_fifof_c_r == 2'd1 ||
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_both ||
	     WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr ;

  // register a4l_a4wrResp_fifof_c_r
  assign a4l_a4wrResp_fifof_c_r$D_IN =
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_incCtr ?
	       MUX_a4l_a4wrResp_fifof_c_r$write_1__VAL_1 :
	       MUX_a4l_a4wrResp_fifof_c_r$write_1__VAL_2 ;
  assign a4l_a4wrResp_fifof_c_r$EN =
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_incCtr ||
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_decCtr ;

  // register a4l_a4wrResp_fifof_q_0
  always@(MUX_a4l_a4wrResp_fifof_q_0$write_1__SEL_1 or
	  WILL_FIRE_RL_a4l_a4wrResp_fifof_both or
	  MUX_a4l_a4wrResp_fifof_q_0$write_1__VAL_2 or
	  WILL_FIRE_RL_a4l_a4wrResp_fifof_decCtr or a4l_a4wrResp_fifof_q_1)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_a4l_a4wrResp_fifof_q_0$write_1__SEL_1:
	  a4l_a4wrResp_fifof_q_0$D_IN = 2'd0;
      WILL_FIRE_RL_a4l_a4wrResp_fifof_both:
	  a4l_a4wrResp_fifof_q_0$D_IN =
	      MUX_a4l_a4wrResp_fifof_q_0$write_1__VAL_2;
      WILL_FIRE_RL_a4l_a4wrResp_fifof_decCtr:
	  a4l_a4wrResp_fifof_q_0$D_IN = a4l_a4wrResp_fifof_q_1;
      default: a4l_a4wrResp_fifof_q_0$D_IN = 2'b10 /* unspecified value */ ;
    endcase
  end
  assign a4l_a4wrResp_fifof_q_0$EN =
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_incCtr &&
	     a4l_a4wrResp_fifof_c_r == 2'd0 ||
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_both ||
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_decCtr ;

  // register a4l_a4wrResp_fifof_q_1
  assign a4l_a4wrResp_fifof_q_1$D_IN = 2'd0 ;
  assign a4l_a4wrResp_fifof_q_1$EN =
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_incCtr &&
	     a4l_a4wrResp_fifof_c_r == 2'd1 ||
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_both ||
	     WILL_FIRE_RL_a4l_a4wrResp_fifof_decCtr ;

  // register b18
  assign b18$D_IN = a4l_a4wrData_fifof$D_OUT[7:0] ;
  assign b18$EN =
	     WILL_FIRE_RL_a4l_cfwr &&
	     a4l_a4wrAddr_fifof$D_OUT[7:0] == 8'h18 &&
	     a4l_a4wrData_fifof$D_OUT[32] ;

  // register b19
  assign b19$D_IN = a4l_a4wrData_fifof$D_OUT[15:8] ;
  assign b19$EN =
	     WILL_FIRE_RL_a4l_cfwr &&
	     a4l_a4wrAddr_fifof$D_OUT[7:0] == 8'h18 &&
	     a4l_a4wrData_fifof$D_OUT[33] ;

  // register b1A
  assign b1A$D_IN = a4l_a4wrData_fifof$D_OUT[23:16] ;
  assign b1A$EN =
	     WILL_FIRE_RL_a4l_cfwr &&
	     a4l_a4wrAddr_fifof$D_OUT[7:0] == 8'h18 &&
	     a4l_a4wrData_fifof$D_OUT[34] ;

  // register b1B
  assign b1B$D_IN = a4l_a4wrData_fifof$D_OUT[31:24] ;
  assign b1B$EN =
	     WILL_FIRE_RL_a4l_cfwr &&
	     a4l_a4wrAddr_fifof$D_OUT[7:0] == 8'h18 &&
	     a4l_a4wrData_fifof$D_OUT[35] ;

  // register r0
  assign r0$D_IN = a4l_a4wrData_fifof$D_OUT[31:0] ;
  assign r0$EN =
	     WILL_FIRE_RL_a4l_cfwr && a4l_a4wrAddr_fifof$D_OUT[7:0] == 8'h0 ;

  // register r4
  assign r4$D_IN = a4l_a4wrData_fifof$D_OUT[31:0] ;
  assign r4$EN =
	     WILL_FIRE_RL_a4l_cfwr && a4l_a4wrAddr_fifof$D_OUT[7:0] == 8'h04 ;

  // submodule a4l_a4rdAddr_fifof
  assign a4l_a4rdAddr_fifof$D_IN = a4l_a4rdAddr_data_wire$wget ;
  assign a4l_a4rdAddr_fifof$ENQ = a4l_a4rdAddr_fifof$FULL_N && ARVALID ;
  assign a4l_a4rdAddr_fifof$DEQ = WILL_FIRE_RL_a4l_cfrd ;
  assign a4l_a4rdAddr_fifof$CLR = 1'b0 ;

  // submodule a4l_a4wrAddr_fifof
  assign a4l_a4wrAddr_fifof$D_IN = a4l_a4wrAddr_data_wire$wget ;
  assign a4l_a4wrAddr_fifof$ENQ = a4l_a4wrAddr_fifof$FULL_N && AWVALID ;
  assign a4l_a4wrAddr_fifof$DEQ = WILL_FIRE_RL_a4l_cfwr ;
  assign a4l_a4wrAddr_fifof$CLR = 1'b0 ;

  // submodule a4l_a4wrData_fifof
  assign a4l_a4wrData_fifof$D_IN = a4l_a4wrData_data_wire$wget ;
  assign a4l_a4wrData_fifof$ENQ = a4l_a4wrData_fifof$FULL_N && WVALID ;
  assign a4l_a4wrData_fifof$DEQ = WILL_FIRE_RL_a4l_cfwr ;
  assign a4l_a4wrData_fifof$CLR = 1'b0 ;

  // remaining internal signals
  assign rdat__h4549 = { b1B, b1A, b19, b18 } ;
  always@(a4l_a4rdAddr_fifof$D_OUT or
	  b1B or b1A or b19 or b18 or r0 or r4 or rdat__h4549)
  begin
    case (a4l_a4rdAddr_fifof$D_OUT[7:0])
      8'h0: _theResult____h4423 = r0;
      8'h04: _theResult____h4423 = r4;
      8'h10: _theResult____h4423 = 32'hF00DFACE;
      8'h18: _theResult____h4423 = rdat__h4549;
      default: _theResult____h4423 = { b1B, b1A, b19, b18 };
    endcase
  end

  // handling of inlined registers

  always@(posedge ACLK)
  begin
    if (!ARESET_N)
      begin
        a4l_a4rdResp_fifof_c_r <= `BSV_ASSIGNMENT_DELAY 2'd0;
	a4l_a4rdResp_fifof_q_0 <= `BSV_ASSIGNMENT_DELAY 34'd0;
	a4l_a4rdResp_fifof_q_1 <= `BSV_ASSIGNMENT_DELAY 34'd0;
	a4l_a4wrResp_fifof_c_r <= `BSV_ASSIGNMENT_DELAY 2'd0;
	a4l_a4wrResp_fifof_q_0 <= `BSV_ASSIGNMENT_DELAY 2'd0;
	a4l_a4wrResp_fifof_q_1 <= `BSV_ASSIGNMENT_DELAY 2'd0;
	b18 <= `BSV_ASSIGNMENT_DELAY 8'h18;
	b19 <= `BSV_ASSIGNMENT_DELAY 8'h19;
	b1A <= `BSV_ASSIGNMENT_DELAY 8'h1A;
	b1B <= `BSV_ASSIGNMENT_DELAY 8'h1B;
	r0 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	r4 <= `BSV_ASSIGNMENT_DELAY 32'd0;
      end
    else
      begin
        if (a4l_a4rdResp_fifof_c_r$EN)
	  a4l_a4rdResp_fifof_c_r <= `BSV_ASSIGNMENT_DELAY
	      a4l_a4rdResp_fifof_c_r$D_IN;
	if (a4l_a4rdResp_fifof_q_0$EN)
	  a4l_a4rdResp_fifof_q_0 <= `BSV_ASSIGNMENT_DELAY
	      a4l_a4rdResp_fifof_q_0$D_IN;
	if (a4l_a4rdResp_fifof_q_1$EN)
	  a4l_a4rdResp_fifof_q_1 <= `BSV_ASSIGNMENT_DELAY
	      a4l_a4rdResp_fifof_q_1$D_IN;
	if (a4l_a4wrResp_fifof_c_r$EN)
	  a4l_a4wrResp_fifof_c_r <= `BSV_ASSIGNMENT_DELAY
	      a4l_a4wrResp_fifof_c_r$D_IN;
	if (a4l_a4wrResp_fifof_q_0$EN)
	  a4l_a4wrResp_fifof_q_0 <= `BSV_ASSIGNMENT_DELAY
	      a4l_a4wrResp_fifof_q_0$D_IN;
	if (a4l_a4wrResp_fifof_q_1$EN)
	  a4l_a4wrResp_fifof_q_1 <= `BSV_ASSIGNMENT_DELAY
	      a4l_a4wrResp_fifof_q_1$D_IN;
	if (b18$EN) b18 <= `BSV_ASSIGNMENT_DELAY b18$D_IN;
	if (b19$EN) b19 <= `BSV_ASSIGNMENT_DELAY b19$D_IN;
	if (b1A$EN) b1A <= `BSV_ASSIGNMENT_DELAY b1A$D_IN;
	if (b1B$EN) b1B <= `BSV_ASSIGNMENT_DELAY b1B$D_IN;
	if (r0$EN) r0 <= `BSV_ASSIGNMENT_DELAY r0$D_IN;
	if (r4$EN) r4 <= `BSV_ASSIGNMENT_DELAY r4$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    a4l_a4rdResp_fifof_c_r = 2'h2;
    a4l_a4rdResp_fifof_q_0 = 34'h2AAAAAAAA;
    a4l_a4rdResp_fifof_q_1 = 34'h2AAAAAAAA;
    a4l_a4wrResp_fifof_c_r = 2'h2;
    a4l_a4wrResp_fifof_q_0 = 2'h2;
    a4l_a4wrResp_fifof_q_1 = 2'h2;
    b18 = 8'hAA;
    b19 = 8'hAA;
    b1A = 8'hAA;
    b1B = 8'hAA;
    r0 = 32'hAAAAAAAA;
    r4 = 32'hAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge ACLK)
  begin
    #0;
    if (ARESET_N)
      if (WILL_FIRE_RL_a4l_cfrd)
	begin
	  v__h4585 = $time;
	  #0;
	end
    if (ARESET_N)
      if (WILL_FIRE_RL_a4l_cfrd)
	$display("[%0d]: %m: AXI4-LITE CONFIG READ Addr:%0x",
		 v__h4585,
		 a4l_a4rdAddr_fifof$D_OUT[31:0]);
    if (ARESET_N)
      if (WILL_FIRE_RL_a4l_cfrd)
	begin
	  v__h4617 = $time;
	  #0;
	end
    if (ARESET_N)
      if (WILL_FIRE_RL_a4l_cfrd)
	$display("[%0d]: %m: AXI4-LITE CONFIG READ RESPOSNE Data:%0x",
		 v__h4617,
		 _theResult____h4423);
    if (ARESET_N)
      if (WILL_FIRE_RL_a4l_cfwr)
	begin
	  v__h4360 = $time;
	  #0;
	end
    if (ARESET_N)
      if (WILL_FIRE_RL_a4l_cfwr)
	$display("[%0d]: %m: AXI4-LITE CONFIG WRITE Addr:%0x BE:%0x Data:%0x",
		 v__h4360,
		 a4l_a4wrAddr_fifof$D_OUT[31:0],
		 a4l_a4wrData_fifof$D_OUT[35:32],
		 a4l_a4wrData_fifof$D_OUT[31:0]);
  end
  // synopsys translate_on
endmodule  // mkA4LS

