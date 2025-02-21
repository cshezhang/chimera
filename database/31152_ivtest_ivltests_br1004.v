// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

package foobar;

class aclass;
   bit tested = 0;

   task test;
      begin
         $display("Testing classes in packages");
         tested = 1;
      end
   endtask
endclass
   aclass bar = new;
endpackage

module test;
   import foobar::*;
   initial begin
      bar.test;
      if (bar.tested)
         $display("PASSED");
      else
         $display("FAILED");
   end
endmodule
