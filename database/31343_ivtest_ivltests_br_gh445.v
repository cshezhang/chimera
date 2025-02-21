// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

package t_pkg;

  virtual class uvm_component;
    function new (string name = "uvm_component", uvm_component parent = null);
    endfunction : new
  endclass

endpackage : t_pkg

module m;

  import t_pkg::*;

  initial begin
    $display ("PASSED");
  end
endmodule
