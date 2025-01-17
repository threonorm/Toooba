//
// Generated by Bluespec Compiler (build 399b09c5)
//
// On Sun Mar 13 11:05:04 CET 2022
//
//
// Ports:
// Name                         I/O  size props
// RDY_enq                        O     1
// RDY_deq                        O     1
// first_data                     O    36
// RDY_first_data                 O     1
// first_poisoned                 O     1
// RDY_first_poisoned             O     1
// RDY_specUpdate_incorrectSpeculation  O     1 const
// RDY_specUpdate_correctSpeculation  O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// enq_x                          I    36
// specUpdate_incorrectSpeculation_kill_all  I     1
// specUpdate_incorrectSpeculation_kill_tag  I     4
// specUpdate_correctSpeculation_mask  I    12
// EN_enq                         I     1
// EN_deq                         I     1
// EN_specUpdate_incorrectSpeculation  I     1
// EN_specUpdate_correctSpeculation  I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkMulExecQ(CLK,
		  RST_N,

		  enq_x,
		  EN_enq,
		  RDY_enq,

		  EN_deq,
		  RDY_deq,

		  first_data,
		  RDY_first_data,

		  first_poisoned,
		  RDY_first_poisoned,

		  specUpdate_incorrectSpeculation_kill_all,
		  specUpdate_incorrectSpeculation_kill_tag,
		  EN_specUpdate_incorrectSpeculation,
		  RDY_specUpdate_incorrectSpeculation,

		  specUpdate_correctSpeculation_mask,
		  EN_specUpdate_correctSpeculation,
		  RDY_specUpdate_correctSpeculation);
  input  CLK;
  input  RST_N;

  // action method enq
  input  [35 : 0] enq_x;
  input  EN_enq;
  output RDY_enq;

  // action method deq
  input  EN_deq;
  output RDY_deq;

  // value method first_data
  output [35 : 0] first_data;
  output RDY_first_data;

  // value method first_poisoned
  output first_poisoned;
  output RDY_first_poisoned;

  // action method specUpdate_incorrectSpeculation
  input  specUpdate_incorrectSpeculation_kill_all;
  input  [3 : 0] specUpdate_incorrectSpeculation_kill_tag;
  input  EN_specUpdate_incorrectSpeculation;
  output RDY_specUpdate_incorrectSpeculation;

  // action method specUpdate_correctSpeculation
  input  [11 : 0] specUpdate_correctSpeculation_mask;
  input  EN_specUpdate_correctSpeculation;
  output RDY_specUpdate_correctSpeculation;

  // signals for module outputs
  reg RDY_deq, first_poisoned;
  wire [35 : 0] first_data;
  wire RDY_enq,
       RDY_first_data,
       RDY_first_poisoned,
       RDY_specUpdate_correctSpeculation,
       RDY_specUpdate_incorrectSpeculation;

  // inlined wires
  reg m_valid_for_enq_wire$wget;
  wire m_poisoned_0_lat_0$whas,
       m_poisoned_1_lat_0$whas,
       m_poisoned_2_lat_0$whas,
       m_poisoned_3_lat_0$whas,
       m_valid_0_lat_0$whas,
       m_valid_0_lat_1$whas,
       m_valid_1_lat_0$whas,
       m_valid_1_lat_1$whas,
       m_valid_2_lat_0$whas,
       m_valid_2_lat_1$whas,
       m_valid_3_lat_0$whas,
       m_valid_3_lat_1$whas;

  // register m_deqP
  reg [1 : 0] m_deqP;
  wire [1 : 0] m_deqP$D_IN;
  wire m_deqP$EN;

  // register m_enqP
  reg [1 : 0] m_enqP;
  wire [1 : 0] m_enqP$D_IN;
  wire m_enqP$EN;

  // register m_poisoned_0_rl
  reg m_poisoned_0_rl;
  wire m_poisoned_0_rl$D_IN, m_poisoned_0_rl$EN;

  // register m_poisoned_1_rl
  reg m_poisoned_1_rl;
  wire m_poisoned_1_rl$D_IN, m_poisoned_1_rl$EN;

  // register m_poisoned_2_rl
  reg m_poisoned_2_rl;
  wire m_poisoned_2_rl$D_IN, m_poisoned_2_rl$EN;

  // register m_poisoned_3_rl
  reg m_poisoned_3_rl;
  wire m_poisoned_3_rl$D_IN, m_poisoned_3_rl$EN;

  // register m_row_0
  reg [23 : 0] m_row_0;
  wire [23 : 0] m_row_0$D_IN;
  wire m_row_0$EN;

  // register m_row_1
  reg [23 : 0] m_row_1;
  wire [23 : 0] m_row_1$D_IN;
  wire m_row_1$EN;

  // register m_row_2
  reg [23 : 0] m_row_2;
  wire [23 : 0] m_row_2$D_IN;
  wire m_row_2$EN;

  // register m_row_3
  reg [23 : 0] m_row_3;
  wire [23 : 0] m_row_3$D_IN;
  wire m_row_3$EN;

  // register m_specBits_0_rl
  reg [11 : 0] m_specBits_0_rl;
  wire [11 : 0] m_specBits_0_rl$D_IN;
  wire m_specBits_0_rl$EN;

  // register m_specBits_1_rl
  reg [11 : 0] m_specBits_1_rl;
  wire [11 : 0] m_specBits_1_rl$D_IN;
  wire m_specBits_1_rl$EN;

  // register m_specBits_2_rl
  reg [11 : 0] m_specBits_2_rl;
  wire [11 : 0] m_specBits_2_rl$D_IN;
  wire m_specBits_2_rl$EN;

  // register m_specBits_3_rl
  reg [11 : 0] m_specBits_3_rl;
  wire [11 : 0] m_specBits_3_rl$D_IN;
  wire m_specBits_3_rl$EN;

  // register m_valid_0_rl
  reg m_valid_0_rl;
  wire m_valid_0_rl$D_IN, m_valid_0_rl$EN;

  // register m_valid_1_rl
  reg m_valid_1_rl;
  wire m_valid_1_rl$D_IN, m_valid_1_rl$EN;

  // register m_valid_2_rl
  reg m_valid_2_rl;
  wire m_valid_2_rl$D_IN, m_valid_2_rl$EN;

  // register m_valid_3_rl
  reg m_valid_3_rl;
  wire m_valid_3_rl$D_IN, m_valid_3_rl$EN;

  // ports of submodule m_poisoned_0_dummy2_0
  wire m_poisoned_0_dummy2_0$D_IN,
       m_poisoned_0_dummy2_0$EN,
       m_poisoned_0_dummy2_0$Q_OUT;

  // ports of submodule m_poisoned_0_dummy2_1
  wire m_poisoned_0_dummy2_1$D_IN,
       m_poisoned_0_dummy2_1$EN,
       m_poisoned_0_dummy2_1$Q_OUT;

  // ports of submodule m_poisoned_1_dummy2_0
  wire m_poisoned_1_dummy2_0$D_IN,
       m_poisoned_1_dummy2_0$EN,
       m_poisoned_1_dummy2_0$Q_OUT;

  // ports of submodule m_poisoned_1_dummy2_1
  wire m_poisoned_1_dummy2_1$D_IN,
       m_poisoned_1_dummy2_1$EN,
       m_poisoned_1_dummy2_1$Q_OUT;

  // ports of submodule m_poisoned_2_dummy2_0
  wire m_poisoned_2_dummy2_0$D_IN,
       m_poisoned_2_dummy2_0$EN,
       m_poisoned_2_dummy2_0$Q_OUT;

  // ports of submodule m_poisoned_2_dummy2_1
  wire m_poisoned_2_dummy2_1$D_IN,
       m_poisoned_2_dummy2_1$EN,
       m_poisoned_2_dummy2_1$Q_OUT;

  // ports of submodule m_poisoned_3_dummy2_0
  wire m_poisoned_3_dummy2_0$D_IN,
       m_poisoned_3_dummy2_0$EN,
       m_poisoned_3_dummy2_0$Q_OUT;

  // ports of submodule m_poisoned_3_dummy2_1
  wire m_poisoned_3_dummy2_1$D_IN,
       m_poisoned_3_dummy2_1$EN,
       m_poisoned_3_dummy2_1$Q_OUT;

  // ports of submodule m_specBits_0_dummy2_0
  wire m_specBits_0_dummy2_0$D_IN,
       m_specBits_0_dummy2_0$EN,
       m_specBits_0_dummy2_0$Q_OUT;

  // ports of submodule m_specBits_0_dummy2_1
  wire m_specBits_0_dummy2_1$D_IN,
       m_specBits_0_dummy2_1$EN,
       m_specBits_0_dummy2_1$Q_OUT;

  // ports of submodule m_specBits_1_dummy2_0
  wire m_specBits_1_dummy2_0$D_IN,
       m_specBits_1_dummy2_0$EN,
       m_specBits_1_dummy2_0$Q_OUT;

  // ports of submodule m_specBits_1_dummy2_1
  wire m_specBits_1_dummy2_1$D_IN,
       m_specBits_1_dummy2_1$EN,
       m_specBits_1_dummy2_1$Q_OUT;

  // ports of submodule m_specBits_2_dummy2_0
  wire m_specBits_2_dummy2_0$D_IN,
       m_specBits_2_dummy2_0$EN,
       m_specBits_2_dummy2_0$Q_OUT;

  // ports of submodule m_specBits_2_dummy2_1
  wire m_specBits_2_dummy2_1$D_IN,
       m_specBits_2_dummy2_1$EN,
       m_specBits_2_dummy2_1$Q_OUT;

  // ports of submodule m_specBits_3_dummy2_0
  wire m_specBits_3_dummy2_0$D_IN,
       m_specBits_3_dummy2_0$EN,
       m_specBits_3_dummy2_0$Q_OUT;

  // ports of submodule m_specBits_3_dummy2_1
  wire m_specBits_3_dummy2_1$D_IN,
       m_specBits_3_dummy2_1$EN,
       m_specBits_3_dummy2_1$Q_OUT;

  // ports of submodule m_valid_0_dummy2_0
  wire m_valid_0_dummy2_0$D_IN,
       m_valid_0_dummy2_0$EN,
       m_valid_0_dummy2_0$Q_OUT;

  // ports of submodule m_valid_0_dummy2_1
  wire m_valid_0_dummy2_1$D_IN,
       m_valid_0_dummy2_1$EN,
       m_valid_0_dummy2_1$Q_OUT;

  // ports of submodule m_valid_1_dummy2_0
  wire m_valid_1_dummy2_0$D_IN,
       m_valid_1_dummy2_0$EN,
       m_valid_1_dummy2_0$Q_OUT;

  // ports of submodule m_valid_1_dummy2_1
  wire m_valid_1_dummy2_1$D_IN,
       m_valid_1_dummy2_1$EN,
       m_valid_1_dummy2_1$Q_OUT;

  // ports of submodule m_valid_2_dummy2_0
  wire m_valid_2_dummy2_0$D_IN,
       m_valid_2_dummy2_0$EN,
       m_valid_2_dummy2_0$Q_OUT;

  // ports of submodule m_valid_2_dummy2_1
  wire m_valid_2_dummy2_1$D_IN,
       m_valid_2_dummy2_1$EN,
       m_valid_2_dummy2_1$Q_OUT;

  // ports of submodule m_valid_3_dummy2_0
  wire m_valid_3_dummy2_0$D_IN,
       m_valid_3_dummy2_0$EN,
       m_valid_3_dummy2_0$Q_OUT;

  // ports of submodule m_valid_3_dummy2_1
  wire m_valid_3_dummy2_1$D_IN,
       m_valid_3_dummy2_1$EN,
       m_valid_3_dummy2_1$Q_OUT;

  // rule scheduling signals
  wire CAN_FIRE_RL_m_poisoned_0_canon,
       CAN_FIRE_RL_m_poisoned_1_canon,
       CAN_FIRE_RL_m_poisoned_2_canon,
       CAN_FIRE_RL_m_poisoned_3_canon,
       CAN_FIRE_RL_m_setEnqWire,
       CAN_FIRE_RL_m_specBits_0_canon,
       CAN_FIRE_RL_m_specBits_1_canon,
       CAN_FIRE_RL_m_specBits_2_canon,
       CAN_FIRE_RL_m_specBits_3_canon,
       CAN_FIRE_RL_m_valid_0_canon,
       CAN_FIRE_RL_m_valid_1_canon,
       CAN_FIRE_RL_m_valid_2_canon,
       CAN_FIRE_RL_m_valid_3_canon,
       CAN_FIRE_deq,
       CAN_FIRE_enq,
       CAN_FIRE_specUpdate_correctSpeculation,
       CAN_FIRE_specUpdate_incorrectSpeculation,
       WILL_FIRE_RL_m_poisoned_0_canon,
       WILL_FIRE_RL_m_poisoned_1_canon,
       WILL_FIRE_RL_m_poisoned_2_canon,
       WILL_FIRE_RL_m_poisoned_3_canon,
       WILL_FIRE_RL_m_setEnqWire,
       WILL_FIRE_RL_m_specBits_0_canon,
       WILL_FIRE_RL_m_specBits_1_canon,
       WILL_FIRE_RL_m_specBits_2_canon,
       WILL_FIRE_RL_m_specBits_3_canon,
       WILL_FIRE_RL_m_valid_0_canon,
       WILL_FIRE_RL_m_valid_1_canon,
       WILL_FIRE_RL_m_valid_2_canon,
       WILL_FIRE_RL_m_valid_3_canon,
       WILL_FIRE_deq,
       WILL_FIRE_enq,
       WILL_FIRE_specUpdate_correctSpeculation,
       WILL_FIRE_specUpdate_incorrectSpeculation;

  // remaining internal signals
  reg [11 : 0] SEL_ARR_IF_m_specBits_0_dummy2_0_read__99_AND__ETC___d216;
  reg [6 : 0] SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d164;
  reg [5 : 0] SEL_ARR_m_row_0_27_BITS_5_TO_0_91_m_row_1_29_B_ETC___d196;
  reg [4 : 0] SEL_ARR_m_row_0_27_BITS_10_TO_6_85_m_row_1_29__ETC___d190;
  reg [1 : 0] SEL_ARR_m_row_0_27_BITS_23_TO_22_28_m_row_1_29_ETC___d136;
  reg SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d174,
      SEL_ARR_m_row_0_27_BIT_11_79_m_row_1_29_BIT_11_ETC___d184,
      SEL_ARR_m_row_0_27_BIT_20_43_m_row_1_29_BIT_20_ETC___d148,
      SEL_ARR_m_row_0_27_BIT_21_37_m_row_1_29_BIT_21_ETC___d142;
  wire [11 : 0] IF_m_specBits_0_lat_0_whas__9_THEN_m_specBits__ETC___d62,
		IF_m_specBits_1_lat_0_whas__6_THEN_m_specBits__ETC___d69,
		IF_m_specBits_2_lat_0_whas__3_THEN_m_specBits__ETC___d76,
		IF_m_specBits_3_lat_0_whas__0_THEN_m_specBits__ETC___d83,
		bs__h19055,
		bs__h19245,
		bs__h19435,
		bs__h19625,
		n__read__h19866,
		n__read__h20279,
		n__read__h20692,
		n__read__h21105,
		upd__h10319,
		upd__h11241,
		upd__h12163,
		upd__h9397;

  // action method enq
  assign RDY_enq = !m_valid_for_enq_wire$wget ;
  assign CAN_FIRE_enq = !m_valid_for_enq_wire$wget ;
  assign WILL_FIRE_enq = EN_enq ;

  // action method deq
  always@(m_deqP or
	  m_valid_0_dummy2_0$Q_OUT or
	  m_valid_0_dummy2_1$Q_OUT or
	  m_valid_0_rl or
	  m_valid_1_dummy2_0$Q_OUT or
	  m_valid_1_dummy2_1$Q_OUT or
	  m_valid_1_rl or
	  m_valid_2_dummy2_0$Q_OUT or
	  m_valid_2_dummy2_1$Q_OUT or
	  m_valid_2_rl or
	  m_valid_3_dummy2_0$Q_OUT or
	  m_valid_3_dummy2_1$Q_OUT or m_valid_3_rl)
  begin
    case (m_deqP)
      2'd0:
	  RDY_deq =
	      m_valid_0_dummy2_0$Q_OUT && m_valid_0_dummy2_1$Q_OUT &&
	      m_valid_0_rl;
      2'd1:
	  RDY_deq =
	      m_valid_1_dummy2_0$Q_OUT && m_valid_1_dummy2_1$Q_OUT &&
	      m_valid_1_rl;
      2'd2:
	  RDY_deq =
	      m_valid_2_dummy2_0$Q_OUT && m_valid_2_dummy2_1$Q_OUT &&
	      m_valid_2_rl;
      2'd3:
	  RDY_deq =
	      m_valid_3_dummy2_0$Q_OUT && m_valid_3_dummy2_1$Q_OUT &&
	      m_valid_3_rl;
    endcase
  end
  assign CAN_FIRE_deq = RDY_deq ;
  assign WILL_FIRE_deq = EN_deq ;

  // value method first_data
  assign first_data =
	     { SEL_ARR_m_row_0_27_BITS_23_TO_22_28_m_row_1_29_ETC___d136,
	       SEL_ARR_m_row_0_27_BIT_21_37_m_row_1_29_BIT_21_ETC___d142,
	       SEL_ARR_m_row_0_27_BIT_20_43_m_row_1_29_BIT_20_ETC___d148,
	       SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d164,
	       SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d174,
	       SEL_ARR_m_row_0_27_BIT_11_79_m_row_1_29_BIT_11_ETC___d184,
	       SEL_ARR_m_row_0_27_BITS_10_TO_6_85_m_row_1_29__ETC___d190,
	       SEL_ARR_m_row_0_27_BITS_5_TO_0_91_m_row_1_29_B_ETC___d196,
	       SEL_ARR_IF_m_specBits_0_dummy2_0_read__99_AND__ETC___d216 } ;
  assign RDY_first_data = RDY_deq ;

  // value method first_poisoned
  always@(m_deqP or
	  m_poisoned_0_dummy2_0$Q_OUT or
	  m_poisoned_0_dummy2_1$Q_OUT or
	  m_poisoned_0_rl or
	  m_poisoned_1_dummy2_0$Q_OUT or
	  m_poisoned_1_dummy2_1$Q_OUT or
	  m_poisoned_1_rl or
	  m_poisoned_2_dummy2_0$Q_OUT or
	  m_poisoned_2_dummy2_1$Q_OUT or
	  m_poisoned_2_rl or
	  m_poisoned_3_dummy2_0$Q_OUT or
	  m_poisoned_3_dummy2_1$Q_OUT or m_poisoned_3_rl)
  begin
    case (m_deqP)
      2'd0:
	  first_poisoned =
	      m_poisoned_0_dummy2_0$Q_OUT && m_poisoned_0_dummy2_1$Q_OUT &&
	      m_poisoned_0_rl;
      2'd1:
	  first_poisoned =
	      m_poisoned_1_dummy2_0$Q_OUT && m_poisoned_1_dummy2_1$Q_OUT &&
	      m_poisoned_1_rl;
      2'd2:
	  first_poisoned =
	      m_poisoned_2_dummy2_0$Q_OUT && m_poisoned_2_dummy2_1$Q_OUT &&
	      m_poisoned_2_rl;
      2'd3:
	  first_poisoned =
	      m_poisoned_3_dummy2_0$Q_OUT && m_poisoned_3_dummy2_1$Q_OUT &&
	      m_poisoned_3_rl;
    endcase
  end
  assign RDY_first_poisoned = RDY_deq ;

  // action method specUpdate_incorrectSpeculation
  assign RDY_specUpdate_incorrectSpeculation = 1'd1 ;
  assign CAN_FIRE_specUpdate_incorrectSpeculation = 1'd1 ;
  assign WILL_FIRE_specUpdate_incorrectSpeculation =
	     EN_specUpdate_incorrectSpeculation ;

  // action method specUpdate_correctSpeculation
  assign RDY_specUpdate_correctSpeculation = 1'd1 ;
  assign CAN_FIRE_specUpdate_correctSpeculation = 1'd1 ;
  assign WILL_FIRE_specUpdate_correctSpeculation =
	     EN_specUpdate_correctSpeculation ;

  // submodule m_poisoned_0_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_poisoned_0_dummy2_0(.CLK(CLK),
								.D_IN(m_poisoned_0_dummy2_0$D_IN),
								.EN(m_poisoned_0_dummy2_0$EN),
								.Q_OUT(m_poisoned_0_dummy2_0$Q_OUT));

  // submodule m_poisoned_0_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_poisoned_0_dummy2_1(.CLK(CLK),
								.D_IN(m_poisoned_0_dummy2_1$D_IN),
								.EN(m_poisoned_0_dummy2_1$EN),
								.Q_OUT(m_poisoned_0_dummy2_1$Q_OUT));

  // submodule m_poisoned_1_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_poisoned_1_dummy2_0(.CLK(CLK),
								.D_IN(m_poisoned_1_dummy2_0$D_IN),
								.EN(m_poisoned_1_dummy2_0$EN),
								.Q_OUT(m_poisoned_1_dummy2_0$Q_OUT));

  // submodule m_poisoned_1_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_poisoned_1_dummy2_1(.CLK(CLK),
								.D_IN(m_poisoned_1_dummy2_1$D_IN),
								.EN(m_poisoned_1_dummy2_1$EN),
								.Q_OUT(m_poisoned_1_dummy2_1$Q_OUT));

  // submodule m_poisoned_2_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_poisoned_2_dummy2_0(.CLK(CLK),
								.D_IN(m_poisoned_2_dummy2_0$D_IN),
								.EN(m_poisoned_2_dummy2_0$EN),
								.Q_OUT(m_poisoned_2_dummy2_0$Q_OUT));

  // submodule m_poisoned_2_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_poisoned_2_dummy2_1(.CLK(CLK),
								.D_IN(m_poisoned_2_dummy2_1$D_IN),
								.EN(m_poisoned_2_dummy2_1$EN),
								.Q_OUT(m_poisoned_2_dummy2_1$Q_OUT));

  // submodule m_poisoned_3_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_poisoned_3_dummy2_0(.CLK(CLK),
								.D_IN(m_poisoned_3_dummy2_0$D_IN),
								.EN(m_poisoned_3_dummy2_0$EN),
								.Q_OUT(m_poisoned_3_dummy2_0$Q_OUT));

  // submodule m_poisoned_3_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_poisoned_3_dummy2_1(.CLK(CLK),
								.D_IN(m_poisoned_3_dummy2_1$D_IN),
								.EN(m_poisoned_3_dummy2_1$EN),
								.Q_OUT(m_poisoned_3_dummy2_1$Q_OUT));

  // submodule m_specBits_0_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_specBits_0_dummy2_0(.CLK(CLK),
								.D_IN(m_specBits_0_dummy2_0$D_IN),
								.EN(m_specBits_0_dummy2_0$EN),
								.Q_OUT(m_specBits_0_dummy2_0$Q_OUT));

  // submodule m_specBits_0_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_specBits_0_dummy2_1(.CLK(CLK),
								.D_IN(m_specBits_0_dummy2_1$D_IN),
								.EN(m_specBits_0_dummy2_1$EN),
								.Q_OUT(m_specBits_0_dummy2_1$Q_OUT));

  // submodule m_specBits_1_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_specBits_1_dummy2_0(.CLK(CLK),
								.D_IN(m_specBits_1_dummy2_0$D_IN),
								.EN(m_specBits_1_dummy2_0$EN),
								.Q_OUT(m_specBits_1_dummy2_0$Q_OUT));

  // submodule m_specBits_1_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_specBits_1_dummy2_1(.CLK(CLK),
								.D_IN(m_specBits_1_dummy2_1$D_IN),
								.EN(m_specBits_1_dummy2_1$EN),
								.Q_OUT(m_specBits_1_dummy2_1$Q_OUT));

  // submodule m_specBits_2_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_specBits_2_dummy2_0(.CLK(CLK),
								.D_IN(m_specBits_2_dummy2_0$D_IN),
								.EN(m_specBits_2_dummy2_0$EN),
								.Q_OUT(m_specBits_2_dummy2_0$Q_OUT));

  // submodule m_specBits_2_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_specBits_2_dummy2_1(.CLK(CLK),
								.D_IN(m_specBits_2_dummy2_1$D_IN),
								.EN(m_specBits_2_dummy2_1$EN),
								.Q_OUT(m_specBits_2_dummy2_1$Q_OUT));

  // submodule m_specBits_3_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_specBits_3_dummy2_0(.CLK(CLK),
								.D_IN(m_specBits_3_dummy2_0$D_IN),
								.EN(m_specBits_3_dummy2_0$EN),
								.Q_OUT(m_specBits_3_dummy2_0$Q_OUT));

  // submodule m_specBits_3_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_specBits_3_dummy2_1(.CLK(CLK),
								.D_IN(m_specBits_3_dummy2_1$D_IN),
								.EN(m_specBits_3_dummy2_1$EN),
								.Q_OUT(m_specBits_3_dummy2_1$Q_OUT));

  // submodule m_valid_0_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_valid_0_dummy2_0(.CLK(CLK),
							     .D_IN(m_valid_0_dummy2_0$D_IN),
							     .EN(m_valid_0_dummy2_0$EN),
							     .Q_OUT(m_valid_0_dummy2_0$Q_OUT));

  // submodule m_valid_0_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_valid_0_dummy2_1(.CLK(CLK),
							     .D_IN(m_valid_0_dummy2_1$D_IN),
							     .EN(m_valid_0_dummy2_1$EN),
							     .Q_OUT(m_valid_0_dummy2_1$Q_OUT));

  // submodule m_valid_1_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_valid_1_dummy2_0(.CLK(CLK),
							     .D_IN(m_valid_1_dummy2_0$D_IN),
							     .EN(m_valid_1_dummy2_0$EN),
							     .Q_OUT(m_valid_1_dummy2_0$Q_OUT));

  // submodule m_valid_1_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_valid_1_dummy2_1(.CLK(CLK),
							     .D_IN(m_valid_1_dummy2_1$D_IN),
							     .EN(m_valid_1_dummy2_1$EN),
							     .Q_OUT(m_valid_1_dummy2_1$Q_OUT));

  // submodule m_valid_2_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_valid_2_dummy2_0(.CLK(CLK),
							     .D_IN(m_valid_2_dummy2_0$D_IN),
							     .EN(m_valid_2_dummy2_0$EN),
							     .Q_OUT(m_valid_2_dummy2_0$Q_OUT));

  // submodule m_valid_2_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_valid_2_dummy2_1(.CLK(CLK),
							     .D_IN(m_valid_2_dummy2_1$D_IN),
							     .EN(m_valid_2_dummy2_1$EN),
							     .Q_OUT(m_valid_2_dummy2_1$Q_OUT));

  // submodule m_valid_3_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_valid_3_dummy2_0(.CLK(CLK),
							     .D_IN(m_valid_3_dummy2_0$D_IN),
							     .EN(m_valid_3_dummy2_0$EN),
							     .Q_OUT(m_valid_3_dummy2_0$Q_OUT));

  // submodule m_valid_3_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_valid_3_dummy2_1(.CLK(CLK),
							     .D_IN(m_valid_3_dummy2_1$D_IN),
							     .EN(m_valid_3_dummy2_1$EN),
							     .Q_OUT(m_valid_3_dummy2_1$Q_OUT));

  // rule RL_m_setEnqWire
  assign CAN_FIRE_RL_m_setEnqWire = 1'd1 ;
  assign WILL_FIRE_RL_m_setEnqWire = 1'd1 ;

  // rule RL_m_valid_0_canon
  assign CAN_FIRE_RL_m_valid_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_valid_0_canon = 1'd1 ;

  // rule RL_m_valid_1_canon
  assign CAN_FIRE_RL_m_valid_1_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_valid_1_canon = 1'd1 ;

  // rule RL_m_valid_2_canon
  assign CAN_FIRE_RL_m_valid_2_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_valid_2_canon = 1'd1 ;

  // rule RL_m_valid_3_canon
  assign CAN_FIRE_RL_m_valid_3_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_valid_3_canon = 1'd1 ;

  // rule RL_m_poisoned_0_canon
  assign CAN_FIRE_RL_m_poisoned_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_poisoned_0_canon = 1'd1 ;

  // rule RL_m_poisoned_1_canon
  assign CAN_FIRE_RL_m_poisoned_1_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_poisoned_1_canon = 1'd1 ;

  // rule RL_m_poisoned_2_canon
  assign CAN_FIRE_RL_m_poisoned_2_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_poisoned_2_canon = 1'd1 ;

  // rule RL_m_poisoned_3_canon
  assign CAN_FIRE_RL_m_poisoned_3_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_poisoned_3_canon = 1'd1 ;

  // rule RL_m_specBits_0_canon
  assign CAN_FIRE_RL_m_specBits_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_specBits_0_canon = 1'd1 ;

  // rule RL_m_specBits_1_canon
  assign CAN_FIRE_RL_m_specBits_1_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_specBits_1_canon = 1'd1 ;

  // rule RL_m_specBits_2_canon
  assign CAN_FIRE_RL_m_specBits_2_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_specBits_2_canon = 1'd1 ;

  // rule RL_m_specBits_3_canon
  assign CAN_FIRE_RL_m_specBits_3_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_specBits_3_canon = 1'd1 ;

  // inlined wires
  assign m_valid_0_lat_0$whas = EN_deq && m_deqP == 2'd0 ;
  assign m_valid_0_lat_1$whas = EN_enq && m_enqP == 2'd0 ;
  assign m_valid_1_lat_0$whas = EN_deq && m_deqP == 2'd1 ;
  assign m_valid_1_lat_1$whas = EN_enq && m_enqP == 2'd1 ;
  assign m_valid_2_lat_0$whas = EN_deq && m_deqP == 2'd2 ;
  assign m_valid_2_lat_1$whas = EN_enq && m_enqP == 2'd2 ;
  assign m_valid_3_lat_0$whas = EN_deq && m_deqP == 2'd3 ;
  assign m_valid_3_lat_1$whas = EN_enq && m_enqP == 2'd3 ;
  assign m_poisoned_0_lat_0$whas =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      bs__h19055[specUpdate_incorrectSpeculation_kill_tag]) ;
  assign m_poisoned_1_lat_0$whas =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      bs__h19245[specUpdate_incorrectSpeculation_kill_tag]) ;
  assign m_poisoned_2_lat_0$whas =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      bs__h19435[specUpdate_incorrectSpeculation_kill_tag]) ;
  assign m_poisoned_3_lat_0$whas =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      bs__h19625[specUpdate_incorrectSpeculation_kill_tag]) ;
  always@(m_enqP or
	  m_valid_0_dummy2_0$Q_OUT or
	  m_valid_0_dummy2_1$Q_OUT or
	  m_valid_0_rl or
	  m_valid_1_dummy2_0$Q_OUT or
	  m_valid_1_dummy2_1$Q_OUT or
	  m_valid_1_rl or
	  m_valid_2_dummy2_0$Q_OUT or
	  m_valid_2_dummy2_1$Q_OUT or
	  m_valid_2_rl or
	  m_valid_3_dummy2_0$Q_OUT or
	  m_valid_3_dummy2_1$Q_OUT or m_valid_3_rl)
  begin
    case (m_enqP)
      2'd0:
	  m_valid_for_enq_wire$wget =
	      m_valid_0_dummy2_0$Q_OUT && m_valid_0_dummy2_1$Q_OUT &&
	      m_valid_0_rl;
      2'd1:
	  m_valid_for_enq_wire$wget =
	      m_valid_1_dummy2_0$Q_OUT && m_valid_1_dummy2_1$Q_OUT &&
	      m_valid_1_rl;
      2'd2:
	  m_valid_for_enq_wire$wget =
	      m_valid_2_dummy2_0$Q_OUT && m_valid_2_dummy2_1$Q_OUT &&
	      m_valid_2_rl;
      2'd3:
	  m_valid_for_enq_wire$wget =
	      m_valid_3_dummy2_0$Q_OUT && m_valid_3_dummy2_1$Q_OUT &&
	      m_valid_3_rl;
    endcase
  end

  // register m_deqP
  assign m_deqP$D_IN = (m_deqP == 2'd3) ? 2'd0 : m_deqP + 2'd1 ;
  assign m_deqP$EN = EN_deq ;

  // register m_enqP
  assign m_enqP$D_IN = (m_enqP == 2'd3) ? 2'd0 : m_enqP + 2'd1 ;
  assign m_enqP$EN = EN_enq ;

  // register m_poisoned_0_rl
  assign m_poisoned_0_rl$D_IN =
	     !m_valid_0_lat_1$whas &&
	     (m_poisoned_0_lat_0$whas || m_poisoned_0_rl) ;
  assign m_poisoned_0_rl$EN = 1'd1 ;

  // register m_poisoned_1_rl
  assign m_poisoned_1_rl$D_IN =
	     !m_valid_1_lat_1$whas &&
	     (m_poisoned_1_lat_0$whas || m_poisoned_1_rl) ;
  assign m_poisoned_1_rl$EN = 1'd1 ;

  // register m_poisoned_2_rl
  assign m_poisoned_2_rl$D_IN =
	     !m_valid_2_lat_1$whas &&
	     (m_poisoned_2_lat_0$whas || m_poisoned_2_rl) ;
  assign m_poisoned_2_rl$EN = 1'd1 ;

  // register m_poisoned_3_rl
  assign m_poisoned_3_rl$D_IN =
	     !m_valid_3_lat_1$whas &&
	     (m_poisoned_3_lat_0$whas || m_poisoned_3_rl) ;
  assign m_poisoned_3_rl$EN = 1'd1 ;

  // register m_row_0
  assign m_row_0$D_IN = enq_x[35:12] ;
  assign m_row_0$EN = m_valid_0_lat_1$whas ;

  // register m_row_1
  assign m_row_1$D_IN = enq_x[35:12] ;
  assign m_row_1$EN = m_valid_1_lat_1$whas ;

  // register m_row_2
  assign m_row_2$D_IN = enq_x[35:12] ;
  assign m_row_2$EN = m_valid_2_lat_1$whas ;

  // register m_row_3
  assign m_row_3$D_IN = enq_x[35:12] ;
  assign m_row_3$EN = m_valid_3_lat_1$whas ;

  // register m_specBits_0_rl
  assign m_specBits_0_rl$D_IN =
	     EN_specUpdate_correctSpeculation ?
	       upd__h9397 :
	       IF_m_specBits_0_lat_0_whas__9_THEN_m_specBits__ETC___d62 ;
  assign m_specBits_0_rl$EN = 1'd1 ;

  // register m_specBits_1_rl
  assign m_specBits_1_rl$D_IN =
	     EN_specUpdate_correctSpeculation ?
	       upd__h10319 :
	       IF_m_specBits_1_lat_0_whas__6_THEN_m_specBits__ETC___d69 ;
  assign m_specBits_1_rl$EN = 1'd1 ;

  // register m_specBits_2_rl
  assign m_specBits_2_rl$D_IN =
	     EN_specUpdate_correctSpeculation ?
	       upd__h11241 :
	       IF_m_specBits_2_lat_0_whas__3_THEN_m_specBits__ETC___d76 ;
  assign m_specBits_2_rl$EN = 1'd1 ;

  // register m_specBits_3_rl
  assign m_specBits_3_rl$D_IN =
	     EN_specUpdate_correctSpeculation ?
	       upd__h12163 :
	       IF_m_specBits_3_lat_0_whas__0_THEN_m_specBits__ETC___d83 ;
  assign m_specBits_3_rl$EN = 1'd1 ;

  // register m_valid_0_rl
  assign m_valid_0_rl$D_IN =
	     m_valid_0_lat_1$whas || !m_valid_0_lat_0$whas && m_valid_0_rl ;
  assign m_valid_0_rl$EN = 1'd1 ;

  // register m_valid_1_rl
  assign m_valid_1_rl$D_IN =
	     m_valid_1_lat_1$whas || !m_valid_1_lat_0$whas && m_valid_1_rl ;
  assign m_valid_1_rl$EN = 1'd1 ;

  // register m_valid_2_rl
  assign m_valid_2_rl$D_IN =
	     m_valid_2_lat_1$whas || !m_valid_2_lat_0$whas && m_valid_2_rl ;
  assign m_valid_2_rl$EN = 1'd1 ;

  // register m_valid_3_rl
  assign m_valid_3_rl$D_IN =
	     m_valid_3_lat_1$whas || !m_valid_3_lat_0$whas && m_valid_3_rl ;
  assign m_valid_3_rl$EN = 1'd1 ;

  // submodule m_poisoned_0_dummy2_0
  assign m_poisoned_0_dummy2_0$D_IN = 1'd1 ;
  assign m_poisoned_0_dummy2_0$EN = m_poisoned_0_lat_0$whas ;

  // submodule m_poisoned_0_dummy2_1
  assign m_poisoned_0_dummy2_1$D_IN = 1'd1 ;
  assign m_poisoned_0_dummy2_1$EN = m_valid_0_lat_1$whas ;

  // submodule m_poisoned_1_dummy2_0
  assign m_poisoned_1_dummy2_0$D_IN = 1'd1 ;
  assign m_poisoned_1_dummy2_0$EN = m_poisoned_1_lat_0$whas ;

  // submodule m_poisoned_1_dummy2_1
  assign m_poisoned_1_dummy2_1$D_IN = 1'd1 ;
  assign m_poisoned_1_dummy2_1$EN = m_valid_1_lat_1$whas ;

  // submodule m_poisoned_2_dummy2_0
  assign m_poisoned_2_dummy2_0$D_IN = 1'd1 ;
  assign m_poisoned_2_dummy2_0$EN = m_poisoned_2_lat_0$whas ;

  // submodule m_poisoned_2_dummy2_1
  assign m_poisoned_2_dummy2_1$D_IN = 1'd1 ;
  assign m_poisoned_2_dummy2_1$EN = m_valid_2_lat_1$whas ;

  // submodule m_poisoned_3_dummy2_0
  assign m_poisoned_3_dummy2_0$D_IN = 1'd1 ;
  assign m_poisoned_3_dummy2_0$EN = m_poisoned_3_lat_0$whas ;

  // submodule m_poisoned_3_dummy2_1
  assign m_poisoned_3_dummy2_1$D_IN = 1'd1 ;
  assign m_poisoned_3_dummy2_1$EN = m_valid_3_lat_1$whas ;

  // submodule m_specBits_0_dummy2_0
  assign m_specBits_0_dummy2_0$D_IN = 1'd1 ;
  assign m_specBits_0_dummy2_0$EN = m_valid_0_lat_1$whas ;

  // submodule m_specBits_0_dummy2_1
  assign m_specBits_0_dummy2_1$D_IN = 1'd1 ;
  assign m_specBits_0_dummy2_1$EN = EN_specUpdate_correctSpeculation ;

  // submodule m_specBits_1_dummy2_0
  assign m_specBits_1_dummy2_0$D_IN = 1'd1 ;
  assign m_specBits_1_dummy2_0$EN = m_valid_1_lat_1$whas ;

  // submodule m_specBits_1_dummy2_1
  assign m_specBits_1_dummy2_1$D_IN = 1'd1 ;
  assign m_specBits_1_dummy2_1$EN = EN_specUpdate_correctSpeculation ;

  // submodule m_specBits_2_dummy2_0
  assign m_specBits_2_dummy2_0$D_IN = 1'd1 ;
  assign m_specBits_2_dummy2_0$EN = m_valid_2_lat_1$whas ;

  // submodule m_specBits_2_dummy2_1
  assign m_specBits_2_dummy2_1$D_IN = 1'd1 ;
  assign m_specBits_2_dummy2_1$EN = EN_specUpdate_correctSpeculation ;

  // submodule m_specBits_3_dummy2_0
  assign m_specBits_3_dummy2_0$D_IN = 1'd1 ;
  assign m_specBits_3_dummy2_0$EN = m_valid_3_lat_1$whas ;

  // submodule m_specBits_3_dummy2_1
  assign m_specBits_3_dummy2_1$D_IN = 1'd1 ;
  assign m_specBits_3_dummy2_1$EN = EN_specUpdate_correctSpeculation ;

  // submodule m_valid_0_dummy2_0
  assign m_valid_0_dummy2_0$D_IN = 1'd1 ;
  assign m_valid_0_dummy2_0$EN = m_valid_0_lat_0$whas ;

  // submodule m_valid_0_dummy2_1
  assign m_valid_0_dummy2_1$D_IN = 1'd1 ;
  assign m_valid_0_dummy2_1$EN = m_valid_0_lat_1$whas ;

  // submodule m_valid_1_dummy2_0
  assign m_valid_1_dummy2_0$D_IN = 1'd1 ;
  assign m_valid_1_dummy2_0$EN = m_valid_1_lat_0$whas ;

  // submodule m_valid_1_dummy2_1
  assign m_valid_1_dummy2_1$D_IN = 1'd1 ;
  assign m_valid_1_dummy2_1$EN = m_valid_1_lat_1$whas ;

  // submodule m_valid_2_dummy2_0
  assign m_valid_2_dummy2_0$D_IN = 1'd1 ;
  assign m_valid_2_dummy2_0$EN = m_valid_2_lat_0$whas ;

  // submodule m_valid_2_dummy2_1
  assign m_valid_2_dummy2_1$D_IN = 1'd1 ;
  assign m_valid_2_dummy2_1$EN = m_valid_2_lat_1$whas ;

  // submodule m_valid_3_dummy2_0
  assign m_valid_3_dummy2_0$D_IN = 1'd1 ;
  assign m_valid_3_dummy2_0$EN = m_valid_3_lat_0$whas ;

  // submodule m_valid_3_dummy2_1
  assign m_valid_3_dummy2_1$D_IN = 1'd1 ;
  assign m_valid_3_dummy2_1$EN = m_valid_3_lat_1$whas ;

  // remaining internal signals
  assign IF_m_specBits_0_lat_0_whas__9_THEN_m_specBits__ETC___d62 =
	     m_valid_0_lat_1$whas ? enq_x[11:0] : m_specBits_0_rl ;
  assign IF_m_specBits_1_lat_0_whas__6_THEN_m_specBits__ETC___d69 =
	     m_valid_1_lat_1$whas ? enq_x[11:0] : m_specBits_1_rl ;
  assign IF_m_specBits_2_lat_0_whas__3_THEN_m_specBits__ETC___d76 =
	     m_valid_2_lat_1$whas ? enq_x[11:0] : m_specBits_2_rl ;
  assign IF_m_specBits_3_lat_0_whas__0_THEN_m_specBits__ETC___d83 =
	     m_valid_3_lat_1$whas ? enq_x[11:0] : m_specBits_3_rl ;
  assign bs__h19055 =
	     (m_specBits_0_dummy2_0$Q_OUT && m_specBits_0_dummy2_1$Q_OUT) ?
	       m_specBits_0_rl :
	       12'd0 ;
  assign bs__h19245 =
	     (m_specBits_1_dummy2_0$Q_OUT && m_specBits_1_dummy2_1$Q_OUT) ?
	       m_specBits_1_rl :
	       12'd0 ;
  assign bs__h19435 =
	     (m_specBits_2_dummy2_0$Q_OUT && m_specBits_2_dummy2_1$Q_OUT) ?
	       m_specBits_2_rl :
	       12'd0 ;
  assign bs__h19625 =
	     (m_specBits_3_dummy2_0$Q_OUT && m_specBits_3_dummy2_1$Q_OUT) ?
	       m_specBits_3_rl :
	       12'd0 ;
  assign n__read__h19866 =
	     m_specBits_0_dummy2_1$Q_OUT ?
	       IF_m_specBits_0_lat_0_whas__9_THEN_m_specBits__ETC___d62 :
	       12'd0 ;
  assign n__read__h20279 =
	     m_specBits_1_dummy2_1$Q_OUT ?
	       IF_m_specBits_1_lat_0_whas__6_THEN_m_specBits__ETC___d69 :
	       12'd0 ;
  assign n__read__h20692 =
	     m_specBits_2_dummy2_1$Q_OUT ?
	       IF_m_specBits_2_lat_0_whas__3_THEN_m_specBits__ETC___d76 :
	       12'd0 ;
  assign n__read__h21105 =
	     m_specBits_3_dummy2_1$Q_OUT ?
	       IF_m_specBits_3_lat_0_whas__0_THEN_m_specBits__ETC___d83 :
	       12'd0 ;
  assign upd__h10319 = n__read__h20279 & specUpdate_correctSpeculation_mask ;
  assign upd__h11241 = n__read__h20692 & specUpdate_correctSpeculation_mask ;
  assign upd__h12163 = n__read__h21105 & specUpdate_correctSpeculation_mask ;
  assign upd__h9397 = n__read__h19866 & specUpdate_correctSpeculation_mask ;
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_27_BIT_20_43_m_row_1_29_BIT_20_ETC___d148 =
	      m_row_0[20];
      2'd1:
	  SEL_ARR_m_row_0_27_BIT_20_43_m_row_1_29_BIT_20_ETC___d148 =
	      m_row_1[20];
      2'd2:
	  SEL_ARR_m_row_0_27_BIT_20_43_m_row_1_29_BIT_20_ETC___d148 =
	      m_row_2[20];
      2'd3:
	  SEL_ARR_m_row_0_27_BIT_20_43_m_row_1_29_BIT_20_ETC___d148 =
	      m_row_3[20];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d164 =
	      m_row_0[19:13];
      2'd1:
	  SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d164 =
	      m_row_1[19:13];
      2'd2:
	  SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d164 =
	      m_row_2[19:13];
      2'd3:
	  SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d164 =
	      m_row_3[19:13];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d174 =
	      m_row_0[12];
      2'd1:
	  SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d174 =
	      m_row_1[12];
      2'd2:
	  SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d174 =
	      m_row_2[12];
      2'd3:
	  SEL_ARR_IF_m_row_0_27_BIT_20_43_THEN_m_row_0_2_ETC___d174 =
	      m_row_3[12];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_27_BIT_11_79_m_row_1_29_BIT_11_ETC___d184 =
	      m_row_0[11];
      2'd1:
	  SEL_ARR_m_row_0_27_BIT_11_79_m_row_1_29_BIT_11_ETC___d184 =
	      m_row_1[11];
      2'd2:
	  SEL_ARR_m_row_0_27_BIT_11_79_m_row_1_29_BIT_11_ETC___d184 =
	      m_row_2[11];
      2'd3:
	  SEL_ARR_m_row_0_27_BIT_11_79_m_row_1_29_BIT_11_ETC___d184 =
	      m_row_3[11];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_27_BITS_10_TO_6_85_m_row_1_29__ETC___d190 =
	      m_row_0[10:6];
      2'd1:
	  SEL_ARR_m_row_0_27_BITS_10_TO_6_85_m_row_1_29__ETC___d190 =
	      m_row_1[10:6];
      2'd2:
	  SEL_ARR_m_row_0_27_BITS_10_TO_6_85_m_row_1_29__ETC___d190 =
	      m_row_2[10:6];
      2'd3:
	  SEL_ARR_m_row_0_27_BITS_10_TO_6_85_m_row_1_29__ETC___d190 =
	      m_row_3[10:6];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_27_BITS_5_TO_0_91_m_row_1_29_B_ETC___d196 =
	      m_row_0[5:0];
      2'd1:
	  SEL_ARR_m_row_0_27_BITS_5_TO_0_91_m_row_1_29_B_ETC___d196 =
	      m_row_1[5:0];
      2'd2:
	  SEL_ARR_m_row_0_27_BITS_5_TO_0_91_m_row_1_29_B_ETC___d196 =
	      m_row_2[5:0];
      2'd3:
	  SEL_ARR_m_row_0_27_BITS_5_TO_0_91_m_row_1_29_B_ETC___d196 =
	      m_row_3[5:0];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_27_BIT_21_37_m_row_1_29_BIT_21_ETC___d142 =
	      m_row_0[21];
      2'd1:
	  SEL_ARR_m_row_0_27_BIT_21_37_m_row_1_29_BIT_21_ETC___d142 =
	      m_row_1[21];
      2'd2:
	  SEL_ARR_m_row_0_27_BIT_21_37_m_row_1_29_BIT_21_ETC___d142 =
	      m_row_2[21];
      2'd3:
	  SEL_ARR_m_row_0_27_BIT_21_37_m_row_1_29_BIT_21_ETC___d142 =
	      m_row_3[21];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_27_BITS_23_TO_22_28_m_row_1_29_ETC___d136 =
	      m_row_0[23:22];
      2'd1:
	  SEL_ARR_m_row_0_27_BITS_23_TO_22_28_m_row_1_29_ETC___d136 =
	      m_row_1[23:22];
      2'd2:
	  SEL_ARR_m_row_0_27_BITS_23_TO_22_28_m_row_1_29_ETC___d136 =
	      m_row_2[23:22];
      2'd3:
	  SEL_ARR_m_row_0_27_BITS_23_TO_22_28_m_row_1_29_ETC___d136 =
	      m_row_3[23:22];
    endcase
  end
  always@(m_deqP or bs__h19055 or bs__h19245 or bs__h19435 or bs__h19625)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_IF_m_specBits_0_dummy2_0_read__99_AND__ETC___d216 =
	      bs__h19055;
      2'd1:
	  SEL_ARR_IF_m_specBits_0_dummy2_0_read__99_AND__ETC___d216 =
	      bs__h19245;
      2'd2:
	  SEL_ARR_IF_m_specBits_0_dummy2_0_read__99_AND__ETC___d216 =
	      bs__h19435;
      2'd3:
	  SEL_ARR_IF_m_specBits_0_dummy2_0_read__99_AND__ETC___d216 =
	      bs__h19625;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        m_deqP <= `BSV_ASSIGNMENT_DELAY 2'd0;
	m_enqP <= `BSV_ASSIGNMENT_DELAY 2'd0;
	m_poisoned_0_rl <= `BSV_ASSIGNMENT_DELAY 1'h0;
	m_poisoned_1_rl <= `BSV_ASSIGNMENT_DELAY 1'h0;
	m_poisoned_2_rl <= `BSV_ASSIGNMENT_DELAY 1'h0;
	m_poisoned_3_rl <= `BSV_ASSIGNMENT_DELAY 1'h0;
	m_specBits_0_rl <= `BSV_ASSIGNMENT_DELAY 12'hAAA;
	m_specBits_1_rl <= `BSV_ASSIGNMENT_DELAY 12'hAAA;
	m_specBits_2_rl <= `BSV_ASSIGNMENT_DELAY 12'hAAA;
	m_specBits_3_rl <= `BSV_ASSIGNMENT_DELAY 12'hAAA;
	m_valid_0_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_valid_1_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_valid_2_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_valid_3_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (m_deqP$EN) m_deqP <= `BSV_ASSIGNMENT_DELAY m_deqP$D_IN;
	if (m_enqP$EN) m_enqP <= `BSV_ASSIGNMENT_DELAY m_enqP$D_IN;
	if (m_poisoned_0_rl$EN)
	  m_poisoned_0_rl <= `BSV_ASSIGNMENT_DELAY m_poisoned_0_rl$D_IN;
	if (m_poisoned_1_rl$EN)
	  m_poisoned_1_rl <= `BSV_ASSIGNMENT_DELAY m_poisoned_1_rl$D_IN;
	if (m_poisoned_2_rl$EN)
	  m_poisoned_2_rl <= `BSV_ASSIGNMENT_DELAY m_poisoned_2_rl$D_IN;
	if (m_poisoned_3_rl$EN)
	  m_poisoned_3_rl <= `BSV_ASSIGNMENT_DELAY m_poisoned_3_rl$D_IN;
	if (m_specBits_0_rl$EN)
	  m_specBits_0_rl <= `BSV_ASSIGNMENT_DELAY m_specBits_0_rl$D_IN;
	if (m_specBits_1_rl$EN)
	  m_specBits_1_rl <= `BSV_ASSIGNMENT_DELAY m_specBits_1_rl$D_IN;
	if (m_specBits_2_rl$EN)
	  m_specBits_2_rl <= `BSV_ASSIGNMENT_DELAY m_specBits_2_rl$D_IN;
	if (m_specBits_3_rl$EN)
	  m_specBits_3_rl <= `BSV_ASSIGNMENT_DELAY m_specBits_3_rl$D_IN;
	if (m_valid_0_rl$EN)
	  m_valid_0_rl <= `BSV_ASSIGNMENT_DELAY m_valid_0_rl$D_IN;
	if (m_valid_1_rl$EN)
	  m_valid_1_rl <= `BSV_ASSIGNMENT_DELAY m_valid_1_rl$D_IN;
	if (m_valid_2_rl$EN)
	  m_valid_2_rl <= `BSV_ASSIGNMENT_DELAY m_valid_2_rl$D_IN;
	if (m_valid_3_rl$EN)
	  m_valid_3_rl <= `BSV_ASSIGNMENT_DELAY m_valid_3_rl$D_IN;
      end
    if (m_row_0$EN) m_row_0 <= `BSV_ASSIGNMENT_DELAY m_row_0$D_IN;
    if (m_row_1$EN) m_row_1 <= `BSV_ASSIGNMENT_DELAY m_row_1$D_IN;
    if (m_row_2$EN) m_row_2 <= `BSV_ASSIGNMENT_DELAY m_row_2$D_IN;
    if (m_row_3$EN) m_row_3 <= `BSV_ASSIGNMENT_DELAY m_row_3$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    m_deqP = 2'h2;
    m_enqP = 2'h2;
    m_poisoned_0_rl = 1'h0;
    m_poisoned_1_rl = 1'h0;
    m_poisoned_2_rl = 1'h0;
    m_poisoned_3_rl = 1'h0;
    m_row_0 = 24'hAAAAAA;
    m_row_1 = 24'hAAAAAA;
    m_row_2 = 24'hAAAAAA;
    m_row_3 = 24'hAAAAAA;
    m_specBits_0_rl = 12'hAAA;
    m_specBits_1_rl = 12'hAAA;
    m_specBits_2_rl = 12'hAAA;
    m_specBits_3_rl = 12'hAAA;
    m_valid_0_rl = 1'h0;
    m_valid_1_rl = 1'h0;
    m_valid_2_rl = 1'h0;
    m_valid_3_rl = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkMulExecQ

