// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module top;
  real zero, mzero;

  initial begin
    zero = 0.0;
    mzero = -1.0 * zero;

    $display("+0=%f and -0=%f.", zero, mzero);
  end
endmodule
