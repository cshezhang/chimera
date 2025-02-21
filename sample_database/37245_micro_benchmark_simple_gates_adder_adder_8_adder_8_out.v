// This program was cloned from: https://github.com/tangxifan/micro_benchmark
// License: MIT License

/* Generated by Yosys 0.9+2406 (git sha1 e6ff764e, clang 12.0.0 -fPIC -Os) */

module adder_8(cout, sum, a, b, cin);
  input [7:0] a;
  input [7:0] b;
  input cin;
  output cout;
  wire [0:1] cout_frac_lut4_lut4_out_lut2_out;
  output [7:0] sum;
  wire [0:1] sum_frac_lut4_lut4_out_1_lut2_out;
  wire [0:1] sum_frac_lut4_lut4_out_2_lut2_out;
  wire [0:1] sum_frac_lut4_lut4_out_3_lut2_out;
  wire [0:1] sum_frac_lut4_lut4_out_4_lut2_out;
  wire [0:1] sum_frac_lut4_lut4_out_5_lut2_out;
  wire [0:1] sum_frac_lut4_lut4_out_6_lut2_out;
  wire sum_frac_lut4_lut4_out_7_in;
  wire [0:1] sum_frac_lut4_lut4_out_7_lut2_out;
  wire [0:1] sum_frac_lut4_lut4_out_lut2_out;
  wire [8:0] sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout;
  frac_lut4 #(
    .LUT(16'b0110100101100001)
  ) cout_frac_lut4_lut4_out (
    .in({ 2'b00, sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[7], 1'b0 }),
    .lut2_out(cout_frac_lut4_lut4_out_lut2_out),
    .lut4_out(cout)
  );
  frac_lut4 #(
    .LUT(16'b0110100101100001)
  ) sum_frac_lut4_lut4_out (
    .in({ b[7], a[7], sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[6], 1'b0 }),
    .lut2_out(sum_frac_lut4_lut4_out_lut2_out),
    .lut4_out(sum[7])
  );
  frac_lut4 #(
    .LUT(16'b0110100101100001)
  ) sum_frac_lut4_lut4_out_1 (
    .in({ b[6], a[6], sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[5], 1'b0 }),
    .lut2_out(sum_frac_lut4_lut4_out_1_lut2_out),
    .lut4_out(sum[6])
  );
  carry_follower sum_frac_lut4_lut4_out_1_lut2_out_carry_follower_a (
    .a(sum_frac_lut4_lut4_out_1_lut2_out[1]),
    .b(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[5]),
    .cin(sum_frac_lut4_lut4_out_1_lut2_out[0]),
    .cout(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[6])
  );
  frac_lut4 #(
    .LUT(16'b0110100101100001)
  ) sum_frac_lut4_lut4_out_2 (
    .in({ b[5], a[5], sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[4], 1'b0 }),
    .lut2_out(sum_frac_lut4_lut4_out_2_lut2_out),
    .lut4_out(sum[5])
  );
  carry_follower sum_frac_lut4_lut4_out_2_lut2_out_carry_follower_a (
    .a(sum_frac_lut4_lut4_out_2_lut2_out[1]),
    .b(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[4]),
    .cin(sum_frac_lut4_lut4_out_2_lut2_out[0]),
    .cout(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[5])
  );
  frac_lut4 #(
    .LUT(16'b0110100101100001)
  ) sum_frac_lut4_lut4_out_3 (
    .in({ b[4], a[4], sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[3], 1'b0 }),
    .lut2_out(sum_frac_lut4_lut4_out_3_lut2_out),
    .lut4_out(sum[4])
  );
  carry_follower sum_frac_lut4_lut4_out_3_lut2_out_carry_follower_a (
    .a(sum_frac_lut4_lut4_out_3_lut2_out[1]),
    .b(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[3]),
    .cin(sum_frac_lut4_lut4_out_3_lut2_out[0]),
    .cout(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[4])
  );
  frac_lut4 #(
    .LUT(16'b0110100101100001)
  ) sum_frac_lut4_lut4_out_4 (
    .in({ b[3], a[3], sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[2], 1'b0 }),
    .lut2_out(sum_frac_lut4_lut4_out_4_lut2_out),
    .lut4_out(sum[3])
  );
  carry_follower sum_frac_lut4_lut4_out_4_lut2_out_carry_follower_a (
    .a(sum_frac_lut4_lut4_out_4_lut2_out[1]),
    .b(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[2]),
    .cin(sum_frac_lut4_lut4_out_4_lut2_out[0]),
    .cout(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[3])
  );
  frac_lut4 #(
    .LUT(16'b0110100101100001)
  ) sum_frac_lut4_lut4_out_5 (
    .in({ b[2], a[2], sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[1], 1'b0 }),
    .lut2_out(sum_frac_lut4_lut4_out_5_lut2_out),
    .lut4_out(sum[2])
  );
  carry_follower sum_frac_lut4_lut4_out_5_lut2_out_carry_follower_a (
    .a(sum_frac_lut4_lut4_out_5_lut2_out[1]),
    .b(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[1]),
    .cin(sum_frac_lut4_lut4_out_5_lut2_out[0]),
    .cout(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[2])
  );
  frac_lut4 #(
    .LUT(16'b0110100101100001)
  ) sum_frac_lut4_lut4_out_6 (
    .in({ b[1], a[1], sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[0], 1'b0 }),
    .lut2_out(sum_frac_lut4_lut4_out_6_lut2_out),
    .lut4_out(sum[1])
  );
  carry_follower sum_frac_lut4_lut4_out_6_lut2_out_carry_follower_a (
    .a(sum_frac_lut4_lut4_out_6_lut2_out[1]),
    .b(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[0]),
    .cin(sum_frac_lut4_lut4_out_6_lut2_out[0]),
    .cout(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[1])
  );
  frac_lut4 #(
    .LUT(16'b0110100101100001)
  ) sum_frac_lut4_lut4_out_7 (
    .in({ b[0], a[0], sum_frac_lut4_lut4_out_7_in, 1'b0 }),
    .lut2_out(sum_frac_lut4_lut4_out_7_lut2_out),
    .lut4_out(sum[0])
  );
  carry_follower sum_frac_lut4_lut4_out_7_in_carry_follower_cout (
    .a(sum_frac_lut4_lut4_out_7_lut2_out[1]),
    .b(),
    .cin(sum_frac_lut4_lut4_out_7_lut2_out[0]),
    .cout(sum_frac_lut4_lut4_out_7_in)
  );
  frac_lut4 #(
    .LUT(16'b1100000000000011)
  ) sum_frac_lut4_lut4_out_7_lut2_out_frac_lut4_lut2_out (
    .in({ 1'bx, cin, 2'bxx }),
    .lut2_out(sum_frac_lut4_lut4_out_7_lut2_out),
    .lut4_out()
  );
  carry_follower sum_frac_lut4_lut4_out_lut2_out_carry_follower_a (
    .a(sum_frac_lut4_lut4_out_lut2_out[1]),
    .b(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[6]),
    .cin(sum_frac_lut4_lut4_out_lut2_out[0]),
    .cout(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[7])
  );
  carry_follower sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout_carry_follower_cout (
    .a(sum_frac_lut4_lut4_out_7_lut2_out[1]),
    .b(sum_frac_lut4_lut4_out_7_in),
    .cin(sum_frac_lut4_lut4_out_7_lut2_out[0]),
    .cout(sum_frac_lut4_lut4_out_lut2_out_carry_follower_a_cout[0])
  );
endmodule
