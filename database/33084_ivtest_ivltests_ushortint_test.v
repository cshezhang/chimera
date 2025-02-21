// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

// Eleven basic tests in here:
// 1. shortint must be initialised before any initial or always block
// 2. assignments to (unsigned) shortint with random numbers
// 3. assignments to (unsigned) shortint with random values including X and Z
// 4. converting unsigned integers to unsigned shortint
// 5. converting signed integers to unsigned shortint
// 6. converting integers including X and Z states to unsigned shortint
// 7. trying unsigned sums (procedural, function, task and module)
// 8. trying unsigned mults (procedural, function and task)
// 9. trying relational operators
// 10. smaller signed numbers to unsigned shortint (signed extension)
// 11. trying some concatenations from bytes to shortints

module mu_add (input shortint unsigned a, b, output shortint unsigned sc, ss);
   assign sc = a + b;
   always @(a, b) ss = a + b;
endmodule

module main;
  parameter N_REPS = 500;                 // repetition with random numbers
  parameter XZ_REPS = 500;                // repetition with 'x 'z values
  parameter UMAX = 65536;
  parameter MAX8 = 256;
  parameter LEN = 16;
  // variables used as golden references
  reg unsigned [LEN-1:0] ar;              // holds numbers
  reg unsigned [LEN-1:0] ar_xz;           // holds 'x and/or 'z in random positions
  reg unsigned [LEN-1:0] ar_expected;
  integer unsigned       ui;
  integer signed         si;
  reg signed [LEN/2-1:0]       slice;

  // type assumed tested before
  byte     unsigned pt1, pt2;

  // types to be tested
  shortint unsigned bu;                       // holds numbers
  shortint unsigned bu_xz;                    // 'x and 'z are attempted on this
  shortint unsigned bresult;                  // hold results from sums and mults
  shortint unsigned mcaresult;                // wired to a module instance
  shortint unsigned mabresult;                // also wired to a module instance


  integer i;

  // continuous assigments
  // type LHS      type RHS
  // ---------     ---------
  // shortint      4-value logic
  assign bu = ar;
  assign bu_xz = ar_xz;

  // module instantiation
  mu_add duv (.a(bu), .b(bu_xz), .sc(mcaresult), .ss(mabresult) );

  // all test
  initial begin
    // time 0 checkings (Section 6.4 of IEEE 1850 LRM)
    if (bu !== 16'b0 || bu_xz !== 16'b0 || bresult !== 16'b0 || mcaresult !== 16'b0 || mabresult !== 16'b0)
      begin
        $display ("FAILED - time zero initialisation incorrect: %b %b", bu, bu_xz);
        $finish;
      end
    // driving shortint type with unsigned random numbers from a variable
    for (i = 0; i< N_REPS; i = i+1)
      begin
        #1;
        ar = {$random} % UMAX;
        #1;
        if (bu !== ar)
          begin
            $display ("FAILED - incorrect assigment to shortint: %b", bu);
            $finish;
        end
      end
    # 1;
    // attempting to drive variables having 'x 'z values into type unsigned shortint
    // 'x 'z injections (Section 4.3.2 of IEEE 1850 LRM)
    for (i = 0; i< XZ_REPS; i = i+1)
      begin
        #1;
        ar = {$random} % UMAX;
        ar_xz = xz_inject (ar);
        ar_expected = xz_expected (ar_xz);
        #1;
        if (bu_xz !== ar_expected)       // 'x -> '0, 'z -> '0
          begin
            $display ("FAILED - incorrect assigment to shortint (when 'x 'z): %b", bu);
            $finish;
        end
      end
    // converting unsigned integers to unsigned shortint
    // truncation expected (Section 4.3.2 of IEEE 1850 LRM)
    for (i = 0; i< N_REPS; i = i+1)
      begin
        #1;
        ui = {$random} % UMAX;
        #1;
        force bu = ui;
        #1;
        if (bu !== ui[LEN-1:0])
          begin
            $display ("FAILED - incorrect truncation from unsigned integer to shortint: %b", bu);
            $finish;
        end
      end
    release bu;
    // converting signed integers to unsigned shortints
    // truncation expected (Section 4.3.2 of IEEE 1850 LRM)
    for (i = 0; i< N_REPS; i = i+1)
      begin
        #1;
        si = $random % UMAX/2-1;
        #1;
        force bu = si;
        #1;
        if (bu !== si[LEN-1:0])
          begin
            $display ("FAILED - incorrect truncation from signed integer to shortint: %b mismatchs %b", bu, si[LEN-1:0]);
            $finish;
        end
      end
    release bu;
    // converting integers having 'x 'z values into type unsigned shortint
    // 'x 'z injections (Section 4.3.2 of IEEE 1850 LRM)
    // truncation and coercion to zero expected
    for (i = 0; i< XZ_REPS; i = i+1)
      begin
        #1;
        si = $random;
        ar_xz = xz_inject (si[LEN-1:0]);
        si = {si[31:LEN], ar_xz};
        ar_expected = xz_expected (ar_xz);
        #1;
        force bu_xz = si;
        #1;
        if (bu_xz !== ar_expected)       // 'x -> '0, 'z -> '0
          begin
            $display ("FAILED - incorrect conversion from integer (with 'x 'z) to shortint: %b mismatchs %b", bu_xz, ar_expected);
            $finish;
        end
      end
    release bu_xz;
    // trying unsigned sums
    for (i = 0; i< N_REPS; i = i+1)
      begin
        #1;
        ar = {$random} % UMAX;
        ar_xz = {$random} % UMAX;
        #1;
        bresult = bu + bu_xz;
        #1;
        if ( bresult !== u_sum(ar, ar_xz) )
          begin
            $display ("FAILED - incorrect addition of unsigned shortints: %0d mismatchs %0d", bresult, u_sum(ar, ar_xz));
            $finish;
          end
        // invoking shortint sum function
        if ( fu_sum (bu, bu_xz) !== u_sum(ar, ar_xz) )
          begin
            $display ("FAILED - incorrect addition of unsigned shortint in function");
            $finish;
          end
        // invoking byte sum task
        tu_sum (bu, bu_xz, bresult);
        if ( bresult !== u_sum(ar, ar_xz) )
          begin
            $display ("FAILED - incorrect addition of unsigned shortint in task: %0d mismatchs %0d", bresult, u_sum(ar, ar_xz));
            $finish;
          end
        // checking shortint sum from module
        if ( mcaresult !== u_sum(ar, ar_xz) || mabresult !== u_sum(ar, ar_xz))
          begin
            $display ("FAILED - incorrect addition of unsigned shortint from module");
            $finish;
          end
      end
    // trying unsigned mults
    for (i = 0; i< N_REPS; i = i+1)
      begin
        #1;
        ar = ({$random} % UMAX) << LEN/2;
        ar_xz = ({$random} % UMAX) << (LEN/2 - 1);
        #1;
        bresult = bu * bu_xz;              // truncated multiplication
        #1;
        if ( bresult !== uh_mul(ar, ar_xz) )
          begin
            $display ("FAILED - incorrect multiplication of unsigned shortints (truncated)");
            $finish;
          end
        #1;
        pt1 = {$random};
        pt2 = {$random};
        #1;
        bresult = pt1 * pt2;              // shortint = byte x byte
        #1;
        if ( bresult !== u_mul(pt1, pt2) )
          begin
            $display ("FAILED - incorrect multiplication of unsigned shortints for bytes inputs");
            $finish;
          end
        // invoking shortint mult function (byte*byte)
        if ( fu_mul (pt1, pt2) !== u_mul(pt1, pt2) )
          begin
            $display ("FAILED - incorrect product of unsigned bytes for a function returning unsigned shortint");
            $finish;
          end
        // invoking shortint mult task (byte*byte)
        tu_mul (pt1, pt2, bresult);
        if ( bresult !== u_mul(pt1, pt2) )
          begin
            $display ("FAILED - incorrect product of unsigned bytes in task returning unsigned shortint");
            $finish;
          end
      end
    // trying relational operators
    for (i = 0; i< N_REPS; i = i+1)
      begin
        #1;
        ar = {$random} % UMAX;
        ar_xz = {$random} % UMAX;
        #1;
        if ( (bu < bu_xz ) !== (ar < ar_xz) )
          begin
            $display ("FAILED - incorrect 'less than' on unsigned shortints");
            $finish;
          end
        if ( (bu <= bu_xz ) !== (ar <= ar_xz) )
          begin
            $display ("FAILED - incorrect 'less than or equal' on unsigned shortints");
            $finish;
          end
        if ( (bu > bu_xz ) !== (ar > ar_xz) )
          begin
            $display ("FAILED - incorrect 'greater than' on unsigned shortints");
            $finish;
          end
        if ( (bu >= bu_xz ) !== (ar >= ar_xz) )
          begin
            $display ("FAILED - incorrect 'greater than or equal' than on unsigned shortints");
            $finish;
          end
        if ( (bu == bu_xz ) !== (ar == ar_xz) )
          begin
            $display ("FAILED - incorrect 'equal to' on unsigned shortints");
            $finish;
          end
        if ( (bu != bu_xz ) !== (ar != ar_xz) )
          begin
            $display ("FAILED - incorrect 'not equal to' on unsigned shortints");
            $finish;
          end
      end
    # 1;
    // signed small number to unsigned shorint
    for (i = 0; i < (1<<LEN/2); i = i+1)
      begin
        #1;
        slice = $random % 'h7f;
        force bu = slice;
        ar = slice;
        #1;
        if (bu !== ar)
          begin
            $display ("FAILED - incorrect signed extend to unsigned shortint");
            $finish;
          end
      end
    release bu;
    // trying concatenations
    for (i = 0; i< N_REPS; i = i+1)
      begin
        #1;
        pt1 = {$random} % MAX8;
        pt2 = {$random} % MAX8;
        #1;
        bresult = {pt1, pt2};
        #1;
        if ( bresult[15:8] !== pt1 || bresult[7:0] !== pt2)
          begin
            $display ("FAILED - incorrect concatenation of unsigned shortints");
            $finish;
          end
      end
    #1;
    $display("PASSED");
  end

  // this returns X and Z states into bit random positions for a value
  function [LEN-1:0] xz_inject (input unsigned [LEN-1:0] value);
      integer i, temp;
      begin
        temp = {$random} % UMAX;
        for (i=0; i<LEN; i=i+1)
          begin
             if (temp[i] == 1'b1)
               begin
                 temp = $random % UMAX;
                 if (temp <= 0)
                    value[i] = 1'bx;  // 'x noise
                 else
                    value[i] = 1'bz;  // 'z noise
               end
          end
          xz_inject = value;
      end
  endfunction

  // this function returns bit positions with either X or Z to 0 for an input value
  function [LEN-1:0] xz_expected (input unsigned [LEN-1:0] value_xz);
      integer i;
      begin
        for (i=0; i<LEN; i=i+1)
          begin
             if (value_xz[i] === 1'bx || value_xz[i] === 1'bz )
                 value_xz[i] = 1'b0;  // forced to zero
          end
          xz_expected = value_xz;
      end
  endfunction

  // unsigned 4-value sum
  function unsigned [LEN-1:0] u_sum (input unsigned [LEN-1:0] a, b);
      u_sum = a + b;
  endfunction

  // unsigned shortint sum as function
  function shortint unsigned fu_sum (input shortint unsigned a, b);
      fu_sum = a + b;
  endfunction

  // unsigned shortint sum as task
  task tu_sum (input shortint unsigned a, b, output shortint unsigned c);
      c = a + b;
  endtask

   // unsigned 4-value truncated mults
  function unsigned [LEN-1:0] uh_mul (input unsigned [LEN-1:0] a, b);
      uh_mul = a * b;
  endfunction

   // unsigned 4-value mults
  function unsigned [LEN-1:0] u_mul (input unsigned [LEN/2-1:0] a, b);
      u_mul = a * b;
  endfunction

  // unsigned shortint mult as function
  function shortint unsigned fu_mul (input byte unsigned a, b);
      fu_mul = a * b;
  endfunction

  // unsigned shortint mult as task
  task tu_mul (input byte unsigned a, b, output shortint unsigned c);
      c = a * b;
  endtask

endmodule
