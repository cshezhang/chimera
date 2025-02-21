// This program was cloned from: https://github.com/olofk/corescore
// License: Apache License 2.0

`default_nettype none
module cyc1000_clock_gen
  (input wire i_clk,
   output wire o_clk,
   output wire o_rst);

   wire [4:0]  clk;

   wire        clk_fb;

   wire        locked;
   reg [9:0]   r;

   assign o_clk = clk[0];

   assign o_rst = r[9];

   always @(posedge o_clk)
     if (locked)
       r <= {r[8:0],1'b0};
     else
       r <= 10'b1111111111;

   cyclone10lp_pll
     #(.bandwidth_type ("auto"),
       .clk0_divide_by (6),
       .clk0_duty_cycle (50),
       .clk0_multiply_by (8),
       .clk0_phase_shift ("0"),
       .compensate_clock ("clk0"),
       .inclk0_input_frequency (83333),
       .operation_mode ("normal"),
       .pll_type ("auto"),
       .lpm_type ("cyclone10lp_pll"))
   pll
     (.activeclock(),
      .areset(1'b0),
      .clk(clk),
      .clkbad(),
      .fbin(clk_fb),
      .fbout(clk_fb),
      .inclk(i_clk),
      .locked(locked),
      .phasedone(),
      .scandataout(),
      .scandone(),
      .vcooverrange(),
      .vcounderrange());
endmodule
