// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module top;

  wire clock, clock_2x, reset, phase;

  phaser ph(.clock_1x(clock), .clock_2x(clock_2x), reset, phase);
  phaser ph2(.clock_1x(clock), .clock_2x(clock_2x), reset, .phase(phase));
endmodule

module phaser(clock_1x, clock_2x, reset, phase);
  input clock_1x, clock_2x, reset;
  output phase;
endmodule
