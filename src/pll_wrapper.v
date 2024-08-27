// Title:   Phase Locked Loop
// File:    pll_wrapper.v
// Author:  Wallie Everest
// Date:    30-OCT-2023
// URL:     https://github.com/wallieeverest/tt04
// License: Apache 2.0
//
// Description:
// To initialize the simulation properly, the RESET signal (Active Low) must be asserted at the beginning of the simulation
// Fin=12, Fout=11.81
// simlib $MODEL_TECH/../lib/ice_vlg

module pll_wrapper
(
  input wire REFERENCECLK,
  input wire RESETB,
  output wire PLLOUTCORE
);

// SB_PLL40_CORE pll_inst (
  // .REFERENCECLK(REFERENCECLK),
  // .RESETB(RESETB),
  // .BYPASS(1'b0),
  // .PLLOUTCORE(PLLOUTCORE),
  // .PLLOUTGLOBAL(),
  // .EXTFEEDBACK(),
  // .DYNAMICDELAY(),
  // .LATCHINPUTVALUE(),
  // .LOCK(),
  // .SDI(),
  // .SDO(),
  // .SCLK()
// );

// defparam pll_inst.DIVR = 4'b0000;
// defparam pll_inst.DIVF = 7'b0111110;  // 30
// defparam pll_inst.DIVQ = 3'b110;  // 6
// defparam pll_inst.FILTER_RANGE = 3'b001;
// defparam pll_inst.FEEDBACK_PATH = "SIMPLE";
// defparam pll_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
// defparam pll_inst.FDA_FEEDBACK = 4'b0000;
// defparam pll_inst.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
// defparam pll_inst.FDA_RELATIVE = 4'b0000;
// defparam pll_inst.SHIFTREG_DIV_MODE = 2'b00;
// defparam pll_inst.PLLOUT_SELECT = "GENCLK";
// defparam pll_inst.ENABLE_ICEGATE = 1'b0;

// Simulation model
ABIWTCZ4 instABitsPLL (
		.REF   (REFERENCECLK),
		.FB    (1'b0),
		.FSE   (1'b1),
		.BYPASS(1'b0),
		.RESET (~RESETB),
		.DIVF6 (1'b0),
		.DIVF5 (1'b1),
		.DIVF4 (1'b1),
		.DIVF3 (1'b1),
		.DIVF2 (1'b1),
		.DIVF1 (1'b1),
		.DIVF0 (1'b0),
		.DIVQ2 (1'b1),
		.DIVQ1 (1'b1),
		.DIVQ0 (1'b0),
		.DIVR3 (1'b0),
		.DIVR2 (1'b0),
		.DIVR1 (1'b0),
		.DIVR0 (1'b0),
		.RANGE2(1'b0),
		.RANGE1(1'b0),
		.RANGE0(1'b1),
		.LOCK  (),
		.PLLOUT()
);

endmodule
