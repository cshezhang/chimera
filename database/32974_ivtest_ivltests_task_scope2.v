// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

/*
 * Modified to add "endtask : <name>" syntax. This modification tests
 * the SystemVerilog extension to the syntax. -- Stephen Williams
 */
/*
 * Copyright (c) 2001 Stephan Boettcher <stephan@nevis.columbia.edu>
 *
 *    This source code is free software; you can redistribute it
 *    and/or modify it in source code form under the terms of the GNU
 *    General Public License as published by the Free Software
 *    Foundation; either version 2 of the License, or (at your option)
 *    any later version.
 *
 *    This program is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with this program; if not, write to the Free Software
 *    Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
 */

// $Id: task_scope.v,v 1.1 2001/06/19 13:52:13 ka6s Exp $
// $Log: task_scope.v,v $
// Revision 1.1  2001/06/19 13:52:13  ka6s
// Added 4 tests from Stephan Boettcher
//

// Test for task scope lookup in VVP

module test;

   wire w;

   jobs j(w);

   task ini;
      begin
	 j.set(1'bz);
      end
   endtask : ini

   initial
     begin
	ini;
	#1;
	j.set(1'b1);
	#1;
	if (w===1)
	  $display("PASSED");
	else
	  $display("FAILED");
     end

endmodule // test

module jobs (out);

   output out;
   reg	  out;

   task set;
      input val;
      begin
	 #1 out = val;
      end
   endtask : set

endmodule // jobs
