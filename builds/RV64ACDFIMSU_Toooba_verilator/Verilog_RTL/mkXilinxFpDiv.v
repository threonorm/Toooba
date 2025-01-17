//
// Generated by Bluespec Compiler (build 399b09c5)
//
// On Sun Mar 13 11:04:19 CET 2022
//
//
// Ports:
// Name                         I/O  size props
// RDY_request_put                O     1 reg
// response_get                   O    69 reg
// RDY_response_get               O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// request_put                    I   131
// EN_request_put                 I     1
// EN_response_get                I     1
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

module mkXilinxFpDiv(CLK,
		     RST_N,

		     request_put,
		     EN_request_put,
		     RDY_request_put,

		     EN_response_get,
		     response_get,
		     RDY_response_get);
  input  CLK;
  input  RST_N;

  // action method request_put
  input  [130 : 0] request_put;
  input  EN_request_put;
  output RDY_request_put;

  // actionvalue method response_get
  input  EN_response_get;
  output [68 : 0] response_get;
  output RDY_response_get;

  // signals for module outputs
  wire [68 : 0] response_get;
  wire RDY_request_put, RDY_response_get;

  // ports of submodule m
  wire [130 : 0] m$request_put;
  wire [68 : 0] m$response_get;
  wire m$EN_request_put,
       m$EN_response_get,
       m$RDY_request_put,
       m$RDY_response_get;

  // rule scheduling signals
  wire CAN_FIRE_request_put,
       CAN_FIRE_response_get,
       WILL_FIRE_request_put,
       WILL_FIRE_response_get;

  // action method request_put
  assign RDY_request_put = m$RDY_request_put ;
  assign CAN_FIRE_request_put = m$RDY_request_put ;
  assign WILL_FIRE_request_put = EN_request_put ;

  // actionvalue method response_get
  assign response_get = m$response_get ;
  assign RDY_response_get = m$RDY_response_get ;
  assign CAN_FIRE_response_get = m$RDY_response_get ;
  assign WILL_FIRE_response_get = EN_response_get ;

  // submodule m
  mkXilinxFpDivSim m(.CLK(CLK),
		     .RST_N(RST_N),
		     .request_put(m$request_put),
		     .EN_request_put(m$EN_request_put),
		     .EN_response_get(m$EN_response_get),
		     .RDY_request_put(m$RDY_request_put),
		     .response_get(m$response_get),
		     .RDY_response_get(m$RDY_response_get));

  // submodule m
  assign m$request_put = request_put ;
  assign m$EN_request_put = EN_request_put ;
  assign m$EN_response_get = EN_response_get ;
endmodule  // mkXilinxFpDiv

