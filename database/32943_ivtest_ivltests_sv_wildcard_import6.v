// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

package my_package1;

parameter  p1 = 1;
localparam p2 = p1 + 2;

typedef logic [15:0] word;

typedef struct packed {
  word v;
} st;

endpackage

package my_package2;

import my_package1::*;

st s;

event e;

function word f(word g);
  f = g + 1;
endfunction

task h(word i);
  s.v = s.v + i;
  $display(s.v);
endtask

endpackage

module test();

import my_package1::*;
import my_package2::*;

word my_v;

initial begin
  my_v = p1;
  #1 ->e;
end

initial begin
  @e s.v = my_v;
  h(f(1));
  if (p2 === 3 && s.v === 3)
    $display("PASSED");
  else
    $display("FAILED");
end

endmodule
