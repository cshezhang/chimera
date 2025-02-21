// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0

module static test();

function integer accumulate1(input integer value);
begin:blk
  static int acc = 1;
  acc = acc + value;
  return acc;
end
endfunction

function automatic integer accumulate2(input integer value);
begin:blk
  automatic int acc = 1;
  acc = acc + value;
  return acc;
end
endfunction

localparam value1 = accumulate1(2);
localparam value2 = accumulate1(3);
localparam value3 = accumulate2(2);
localparam value4 = accumulate2(3);

integer value;

initial begin
  static reg failed = 0;

  $display("%d", value1);
  if (value1 !== 3) failed = 1;

  $display("%d", value2);
  if (value2 !== 4) failed = 1;

  $display("%d", value3);
  if (value3 !== 3) failed = 1;

  $display("%d", value4);
  if (value4 !== 4) failed = 1;

  value = accumulate1(2);
  $display("%d", value);
  if (value !== 3) failed = 1;

  value = accumulate1(3);
  $display("%d", value);
  if (value !== 6) failed = 1;

  value = accumulate2(2);
  $display("%d", value);
  if (value !== 3) failed = 1;

  value = accumulate2(3);
  $display("%d", value);
  if (value !== 4) failed = 1;

  if (failed)
    $display("FAILED");
  else
    $display("PASSED");
end

endmodule
