// This program was cloned from: https://github.com/uwsampl/lakeroad-evaluation
// License: MIT License

/* verilator lint_off MULTITOP */
/// =================== Unsigned, Fixed Point =========================
module std_fp_add #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    output logic [WIDTH-1:0] out
);
  assign out = left + right;
endmodule

module std_fp_sub #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    output logic [WIDTH-1:0] out
);
  assign out = left - right;
endmodule

module std_fp_mult_pipe #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16,
    parameter SIGNED = 0
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    input  logic             go,
    input  logic             clk,
    input  logic             reset,
    output logic [WIDTH-1:0] out,
    output logic             done
);
  logic [WIDTH-1:0]          rtmp;
  logic [WIDTH-1:0]          ltmp;
  logic [(WIDTH << 1) - 1:0] out_tmp;
  // Buffer used to walk through the 3 cycles of the pipeline.
  logic done_buf[2:0];

  assign done = done_buf[2];

  assign out = out_tmp[(WIDTH << 1) - INT_WIDTH - 1 : WIDTH - INT_WIDTH];

  // If the done buffer is completely empty and go is high then execution
  // just started.
  logic start;
  assign start = go & done_buf[0] == 0 & done_buf[1] == 0;

  // Start sending the done signal.
  always_ff @(posedge clk) begin
    if (start)
      done_buf[0] <= 1;
    else
      done_buf[0] <= 0;
  end

  // Push the done signal through the pipeline.
  always_ff @(posedge clk) begin
    if (go) begin
      done_buf[2] <= done_buf[1];
      done_buf[1] <= done_buf[0];
    end else begin
      done_buf[2] <= 0;
      done_buf[1] <= 0;
    end
  end

  // Move the multiplication computation through the pipeline.
  always_ff @(posedge clk) begin
    if (reset) begin
      rtmp <= 0;
      ltmp <= 0;
      out_tmp <= 0;
    end else if (go) begin
      if (SIGNED) begin
        rtmp <= $signed(right);
        ltmp <= $signed(left);
        out_tmp <= $signed(
          { {WIDTH{ltmp[WIDTH-1]}}, ltmp} *
          { {WIDTH{rtmp[WIDTH-1]}}, rtmp}
        );
      end else begin
        rtmp <= right;
        ltmp <= left;
        out_tmp <= ltmp * rtmp;
      end
    end else begin
      rtmp <= 0;
      ltmp <= 0;
      out_tmp <= out_tmp;
    end
  end
endmodule

/* verilator lint_off WIDTH */
module std_fp_div_pipe #(
  parameter WIDTH = 32,
  parameter INT_WIDTH = 16,
  parameter FRAC_WIDTH = 16
) (
    input  logic             go,
    input  logic             clk,
    input  logic             reset,
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    output logic [WIDTH-1:0] out_remainder,
    output logic [WIDTH-1:0] out_quotient,
    output logic             done
);
    localparam ITERATIONS = WIDTH + FRAC_WIDTH;

    logic [WIDTH-1:0] quotient, quotient_next;
    logic [WIDTH:0] acc, acc_next;
    logic [$clog2(ITERATIONS)-1:0] idx;
    logic start, running, finished, dividend_is_zero;

    assign start = go && !running;
    assign dividend_is_zero = start && left == 0;
    assign finished = idx == ITERATIONS - 1 && running;

    always_ff @(posedge clk) begin
      if (reset || finished || dividend_is_zero)
        running <= 0;
      else if (start)
        running <= 1;
      else
        running <= running;
    end

    always_comb begin
      if (acc >= {1'b0, right}) begin
        acc_next = acc - right;
        {acc_next, quotient_next} = {acc_next[WIDTH-1:0], quotient, 1'b1};
      end else begin
        {acc_next, quotient_next} = {acc, quotient} << 1;
      end
    end

    // `done` signaling
    always_ff @(posedge clk) begin
      if (dividend_is_zero || finished)
        done <= 1;
      else
        done <= 0;
    end

    always_ff @(posedge clk) begin
      if (running)
        idx <= idx + 1;
      else
        idx <= 0;
    end

    always_ff @(posedge clk) begin
      if (reset) begin
        out_quotient <= 0;
        out_remainder <= 0;
      end else if (start) begin
        out_quotient <= 0;
        out_remainder <= left;
      end else if (go == 0) begin
        out_quotient <= out_quotient;
        out_remainder <= out_remainder;
      end else if (dividend_is_zero) begin
        out_quotient <= 0;
        out_remainder <= 0;
      end else if (finished) begin
        out_quotient <= quotient_next;
        out_remainder <= out_remainder;
      end else begin
        out_quotient <= out_quotient;
        if (right <= out_remainder)
          out_remainder <= out_remainder - right;
        else
          out_remainder <= out_remainder;
      end
    end

    always_ff @(posedge clk) begin
      if (reset) begin
        acc <= 0;
        quotient <= 0;
      end else if (start) begin
        {acc, quotient} <= {{WIDTH{1'b0}}, left, 1'b0};
      end else begin
        acc <= acc_next;
        quotient <= quotient_next;
      end
    end
endmodule

module std_fp_gt #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    output logic             out
);
  assign out = left > right;
endmodule

/// =================== Signed, Fixed Point =========================
module std_fp_sadd #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = $signed(left + right);
endmodule

module std_fp_ssub #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);

  assign out = $signed(left - right);
endmodule

module std_fp_smult_pipe #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  [WIDTH-1:0]              left,
    input  [WIDTH-1:0]              right,
    input  logic                    reset,
    input  logic                    go,
    input  logic                    clk,
    output logic [WIDTH-1:0]        out,
    output logic                    done
);
  std_fp_mult_pipe #(
    .WIDTH(WIDTH),
    .INT_WIDTH(INT_WIDTH),
    .FRAC_WIDTH(FRAC_WIDTH),
    .SIGNED(1)
  ) comp (
    .clk(clk),
    .done(done),
    .reset(reset),
    .go(go),
    .left(left),
    .right(right),
    .out(out)
  );
endmodule

module std_fp_sdiv_pipe #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input                     clk,
    input                     go,
    input                     reset,
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out_quotient,
    output signed [WIDTH-1:0] out_remainder,
    output logic              done
);

  logic signed [WIDTH-1:0] left_abs, right_abs, comp_out_q, comp_out_r, right_save, out_rem_intermediate;

  // Registers to figure out how to transform outputs.
  logic different_signs, left_sign, right_sign;

  // Latch the value of control registers so that their available after
  // go signal becomes low.
  always_ff @(posedge clk) begin
    if (go) begin
      right_save <= right_abs;
      left_sign <= left[WIDTH-1];
      right_sign <= right[WIDTH-1];
    end else begin
      left_sign <= left_sign;
      right_save <= right_save;
      right_sign <= right_sign;
    end
  end

  assign right_abs = right[WIDTH-1] ? -right : right;
  assign left_abs = left[WIDTH-1] ? -left : left;

  assign different_signs = left_sign ^ right_sign;
  assign out_quotient = different_signs ? -comp_out_q : comp_out_q;

  // Remainder is computed as:
  //  t0 = |left| % |right|
  //  t1 = if left * right < 0 and t0 != 0 then |right| - t0 else t0
  //  rem = if right < 0 then -t1 else t1
  assign out_rem_intermediate = different_signs & |comp_out_r ? $signed(right_save - comp_out_r) : comp_out_r;
  assign out_remainder = right_sign ? -out_rem_intermediate : out_rem_intermediate;

  std_fp_div_pipe #(
    .WIDTH(WIDTH),
    .INT_WIDTH(INT_WIDTH),
    .FRAC_WIDTH(FRAC_WIDTH)
  ) comp (
    .reset(reset),
    .clk(clk),
    .done(done),
    .go(go),
    .left(left_abs),
    .right(right_abs),
    .out_quotient(comp_out_q),
    .out_remainder(comp_out_r)
  );
endmodule

module std_fp_sgt #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  logic signed [WIDTH-1:0] left,
    input  logic signed [WIDTH-1:0] right,
    output logic signed             out
);
  assign out = $signed(left > right);
endmodule

module std_fp_slt #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
   input logic signed [WIDTH-1:0] left,
   input logic signed [WIDTH-1:0] right,
   output logic signed            out
);
  assign out = $signed(left < right);
endmodule

/// =================== Unsigned, Bitnum =========================
module std_mult_pipe #(
    parameter WIDTH = 32
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    input  logic             reset,
    input  logic             go,
    input  logic             clk,
    output logic [WIDTH-1:0] out,
    output logic             done
);
  std_fp_mult_pipe #(
    .WIDTH(WIDTH),
    .INT_WIDTH(WIDTH),
    .FRAC_WIDTH(0),
    .SIGNED(0)
  ) comp (
    .reset(reset),
    .clk(clk),
    .done(done),
    .go(go),
    .left(left),
    .right(right),
    .out(out)
  );
endmodule

module std_div_pipe #(
    parameter WIDTH = 32
) (
    input                    reset,
    input                    clk,
    input                    go,
    input        [WIDTH-1:0] left,
    input        [WIDTH-1:0] right,
    output logic [WIDTH-1:0] out_remainder,
    output logic [WIDTH-1:0] out_quotient,
    output logic             done
);

  logic [WIDTH-1:0] dividend;
  logic [(WIDTH-1)*2:0] divisor;
  logic [WIDTH-1:0] quotient;
  logic [WIDTH-1:0] quotient_msk;
  logic start, running, finished, dividend_is_zero;

  assign start = go && !running;
  assign finished = quotient_msk == 0 && running;
  assign dividend_is_zero = start && left == 0;

  always_ff @(posedge clk) begin
    // Early return if the divisor is zero.
    if (finished || dividend_is_zero)
      done <= 1;
    else
      done <= 0;
  end

  always_ff @(posedge clk) begin
    if (reset || finished || dividend_is_zero)
      running <= 0;
    else if (start)
      running <= 1;
    else
      running <= running;
  end

  // Outputs
  always_ff @(posedge clk) begin
    if (dividend_is_zero || start) begin
      out_quotient <= 0;
      out_remainder <= 0;
    end else if (finished) begin
      out_quotient <= quotient;
      out_remainder <= dividend;
    end else begin
      // Otherwise, explicitly latch the values.
      out_quotient <= out_quotient;
      out_remainder <= out_remainder;
    end
  end

  // Calculate the quotient mask.
  always_ff @(posedge clk) begin
    if (start)
      quotient_msk <= 1 << WIDTH - 1;
    else if (running)
      quotient_msk <= quotient_msk >> 1;
    else
      quotient_msk <= quotient_msk;
  end

  // Calculate the quotient.
  always_ff @(posedge clk) begin
    if (start)
      quotient <= 0;
    else if (divisor <= dividend)
      quotient <= quotient | quotient_msk;
    else
      quotient <= quotient;
  end

  // Calculate the dividend.
  always_ff @(posedge clk) begin
    if (start)
      dividend <= left;
    else if (divisor <= dividend)
      dividend <= dividend - divisor;
    else
      dividend <= dividend;
  end

  always_ff @(posedge clk) begin
    if (start) begin
      divisor <= right << WIDTH - 1;
    end else if (finished) begin
      divisor <= 0;
    end else begin
      divisor <= divisor >> 1;
    end
  end

  // Simulation self test against unsynthesizable implementation.
  `ifdef VERILATOR
    logic [WIDTH-1:0] l, r;
    always_ff @(posedge clk) begin
      if (go) begin
        l <= left;
        r <= right;
      end else begin
        l <= l;
        r <= r;
      end
    end

    always @(posedge clk) begin
      if (done && $unsigned(out_remainder) != $unsigned(l % r))
        $error(
          "\nstd_div_pipe (Remainder): Computed and golden outputs do not match!\n",
          "left: %0d", $unsigned(l),
          "  right: %0d\n", $unsigned(r),
          "expected: %0d", $unsigned(l % r),
          "  computed: %0d", $unsigned(out_remainder)
        );

      if (done && $unsigned(out_quotient) != $unsigned(l / r))
        $error(
          "\nstd_div_pipe (Quotient): Computed and golden outputs do not match!\n",
          "left: %0d", $unsigned(l),
          "  right: %0d\n", $unsigned(r),
          "expected: %0d", $unsigned(l / r),
          "  computed: %0d", $unsigned(out_quotient)
        );
    end
  `endif
endmodule

/// =================== Signed, Bitnum =========================
module std_sadd #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = $signed(left + right);
endmodule

module std_ssub #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = $signed(left - right);
endmodule

module std_smult_pipe #(
    parameter WIDTH = 32
) (
    input  logic                    reset,
    input  logic                    go,
    input  logic                    clk,
    input  signed       [WIDTH-1:0] left,
    input  signed       [WIDTH-1:0] right,
    output logic signed [WIDTH-1:0] out,
    output logic                    done
);
  std_fp_mult_pipe #(
    .WIDTH(WIDTH),
    .INT_WIDTH(WIDTH),
    .FRAC_WIDTH(0),
    .SIGNED(1)
  ) comp (
    .reset(reset),
    .clk(clk),
    .done(done),
    .go(go),
    .left(left),
    .right(right),
    .out(out)
  );
endmodule

/* verilator lint_off WIDTH */
module std_sdiv_pipe #(
    parameter WIDTH = 32
) (
    input                           reset,
    input                           clk,
    input                           go,
    input  logic signed [WIDTH-1:0] left,
    input  logic signed [WIDTH-1:0] right,
    output logic signed [WIDTH-1:0] out_quotient,
    output logic signed [WIDTH-1:0] out_remainder,
    output logic                    done
);

  logic signed [WIDTH-1:0] left_abs, right_abs, comp_out_q, comp_out_r, right_save, out_rem_intermediate;

  // Registers to figure out how to transform outputs.
  logic different_signs, left_sign, right_sign;

  // Latch the value of control registers so that their available after
  // go signal becomes low.
  always_ff @(posedge clk) begin
    if (go) begin
      right_save <= right_abs;
      left_sign <= left[WIDTH-1];
      right_sign <= right[WIDTH-1];
    end else begin
      left_sign <= left_sign;
      right_save <= right_save;
      right_sign <= right_sign;
    end
  end

  assign right_abs = right[WIDTH-1] ? -right : right;
  assign left_abs = left[WIDTH-1] ? -left : left;

  assign different_signs = left_sign ^ right_sign;
  assign out_quotient = different_signs ? -comp_out_q : comp_out_q;

  // Remainder is computed as:
  //  t0 = |left| % |right|
  //  t1 = if left * right < 0 and t0 != 0 then |right| - t0 else t0
  //  rem = if right < 0 then -t1 else t1
  assign out_rem_intermediate = different_signs & |comp_out_r ? $signed(right_save - comp_out_r) : comp_out_r;
  assign out_remainder = right_sign ? -out_rem_intermediate : out_rem_intermediate;

  std_div_pipe #(
    .WIDTH(WIDTH)
  ) comp (
    .reset(reset),
    .clk(clk),
    .done(done),
    .go(go),
    .left(left_abs),
    .right(right_abs),
    .out_quotient(comp_out_q),
    .out_remainder(comp_out_r)
  );

  // Simulation self test against unsynthesizable implementation.
  `ifdef VERILATOR
    logic signed [WIDTH-1:0] l, r;
    always_ff @(posedge clk) begin
      if (go) begin
        l <= left;
        r <= right;
      end else begin
        l <= l;
        r <= r;
      end
    end

    always @(posedge clk) begin
      if (done && out_quotient != $signed(l / r))
        $error(
          "\nstd_sdiv_pipe (Quotient): Computed and golden outputs do not match!\n",
          "left: %0d", l,
          "  right: %0d\n", r,
          "expected: %0d", $signed(l / r),
          "  computed: %0d", $signed(out_quotient),
        );
      if (done && out_remainder != $signed(((l % r) + r) % r))
        $error(
          "\nstd_sdiv_pipe (Remainder): Computed and golden outputs do not match!\n",
          "left: %0d", l,
          "  right: %0d\n", r,
          "expected: %0d", $signed(((l % r) + r) % r),
          "  computed: %0d", $signed(out_remainder),
        );
    end
  `endif
endmodule

module std_sgt #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left > right);
endmodule

module std_slt #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left < right);
endmodule

module std_seq #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left == right);
endmodule

module std_sneq #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left != right);
endmodule

module std_sge #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left >= right);
endmodule

module std_sle #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left <= right);
endmodule

module std_slsh #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = left <<< right;
endmodule

module std_srsh #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = left >>> right;
endmodule
/**
 * Core primitives for Calyx.
 * Implements core primitives used by the compiler.
 *
 * Conventions:
 * - All parameter names must be SNAKE_CASE and all caps.
 * - Port names must be snake_case, no caps.
 */
`default_nettype none

// BEGIN GENERATED LAKEROAD CODE
/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_add2_2(a, b, out0);
  input [1:0] a;
  wire [1:0] a;
  input [1:0] b;
  wire [1:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output [1:0] out0;
  wire [1:0] out0;
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) C_LUT_2 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) D_LUT_3 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) E_LUT_4 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) F_LUT_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h0),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O({ o_2[7:2], out0 }),
    .S(luts_O6_1)
  );
  assign o_2[1] = out0[1];
  assign o_2[0] = out0[0];
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_add32_2(a, b, out0);
  input [31:0] a;
  wire [31:0] a;
  input [31:0] b;
  wire [31:0] b;
  wire [7:0] co_11;
  wire [7:0] co_15;
  wire [7:0] co_3;
  wire [7:0] co_7;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O5_12;
  wire [7:0] luts_O5_4;
  wire [7:0] luts_O5_8;
  wire [7:0] luts_O6_1;
  wire [7:0] luts_O6_13;
  wire [7:0] luts_O6_5;
  wire [7:0] luts_O6_9;
  wire [7:0] o_10;
  wire [7:0] o_14;
  wire [7:0] o_2;
  wire [7:0] o_6;
  output [31:0] out0;
  wire [31:0] out0;
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) A_LUT_18 (
    .I0(a[16]),
    .I1(b[16]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[0]),
    .O6(luts_O6_9[0])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) A_LUT_27 (
    .I0(a[24]),
    .I1(b[24]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[0]),
    .O6(luts_O6_13[0])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) A_LUT_9 (
    .I0(a[8]),
    .I1(b[8]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[0]),
    .O6(luts_O6_5[0])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) B_LUT_10 (
    .I0(a[9]),
    .I1(b[9]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[1]),
    .O6(luts_O6_5[1])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) B_LUT_19 (
    .I0(a[17]),
    .I1(b[17]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[1]),
    .O6(luts_O6_9[1])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) B_LUT_28 (
    .I0(a[25]),
    .I1(b[25]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[1]),
    .O6(luts_O6_13[1])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) C_LUT_11 (
    .I0(a[10]),
    .I1(b[10]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[2]),
    .O6(luts_O6_5[2])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) C_LUT_20 (
    .I0(a[18]),
    .I1(b[18]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[2]),
    .O6(luts_O6_9[2])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) C_LUT_29 (
    .I0(a[26]),
    .I1(b[26]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[2]),
    .O6(luts_O6_13[2])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) D_LUT_12 (
    .I0(a[11]),
    .I1(b[11]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[3]),
    .O6(luts_O6_5[3])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) D_LUT_21 (
    .I0(a[19]),
    .I1(b[19]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[3]),
    .O6(luts_O6_9[3])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) D_LUT_30 (
    .I0(a[27]),
    .I1(b[27]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[3]),
    .O6(luts_O6_13[3])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) E_LUT_13 (
    .I0(a[12]),
    .I1(b[12]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[4]),
    .O6(luts_O6_5[4])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) E_LUT_22 (
    .I0(a[20]),
    .I1(b[20]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[4]),
    .O6(luts_O6_9[4])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) E_LUT_31 (
    .I0(a[28]),
    .I1(b[28]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[4]),
    .O6(luts_O6_13[4])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) E_LUT_4 (
    .I0(a[4]),
    .I1(b[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) F_LUT_14 (
    .I0(a[13]),
    .I1(b[13]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[5]),
    .O6(luts_O6_5[5])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) F_LUT_23 (
    .I0(a[21]),
    .I1(b[21]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[5]),
    .O6(luts_O6_9[5])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) F_LUT_32 (
    .I0(a[29]),
    .I1(b[29]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[5]),
    .O6(luts_O6_13[5])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) F_LUT_5 (
    .I0(a[5]),
    .I1(b[5]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) G_LUT_15 (
    .I0(a[14]),
    .I1(b[14]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[6]),
    .O6(luts_O6_5[6])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) G_LUT_24 (
    .I0(a[22]),
    .I1(b[22]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[6]),
    .O6(luts_O6_9[6])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) G_LUT_33 (
    .I0(a[30]),
    .I1(b[30]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[6]),
    .O6(luts_O6_13[6])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) G_LUT_6 (
    .I0(a[6]),
    .I1(b[6]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) H_LUT_16 (
    .I0(a[15]),
    .I1(b[15]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[7]),
    .O6(luts_O6_5[7])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) H_LUT_25 (
    .I0(a[23]),
    .I1(b[23]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[7]),
    .O6(luts_O6_9[7])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) H_LUT_34 (
    .I0(a[31]),
    .I1(b[31]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[7]),
    .O6(luts_O6_13[7])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) H_LUT_7 (
    .I0(a[7]),
    .I1(b[7]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_17 (
    .CI(co_3[7]),
    .CI_TOP(1'h0),
    .CO(co_7),
    .DI(luts_O5_4),
    .O(out0[15:8]),
    .S(luts_O6_5)
  );
  CARRY8 carry_26 (
    .CI(co_7[7]),
    .CI_TOP(1'h0),
    .CO(co_11),
    .DI(luts_O5_8),
    .O(out0[23:16]),
    .S(luts_O6_9)
  );
  CARRY8 carry_35 (
    .CI(co_11[7]),
    .CI_TOP(1'h0),
    .CO(co_15),
    .DI(luts_O5_12),
    .O(out0[31:24]),
    .S(luts_O6_13)
  );
  CARRY8 carry_8 (
    .CI(1'h0),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O(out0[7:0]),
    .S(luts_O6_1)
  );
  assign o_10[7] = out0[23];
  assign o_10[6] = out0[22];
  assign o_10[5] = out0[21];
  assign o_10[4] = out0[20];
  assign o_10[3] = out0[19];
  assign o_10[2] = out0[18];
  assign o_10[1] = out0[17];
  assign o_10[0] = out0[16];
  assign o_14[7] = out0[31];
  assign o_14[6] = out0[30];
  assign o_14[5] = out0[29];
  assign o_14[4] = out0[28];
  assign o_14[3] = out0[27];
  assign o_14[2] = out0[26];
  assign o_14[1] = out0[25];
  assign o_14[0] = out0[24];
  assign o_2[7] = out0[7];
  assign o_2[6] = out0[6];
  assign o_2[5] = out0[5];
  assign o_2[4] = out0[4];
  assign o_2[3] = out0[3];
  assign o_2[2] = out0[2];
  assign o_2[1] = out0[1];
  assign o_2[0] = out0[0];
  assign o_6[7] = out0[15];
  assign o_6[6] = out0[14];
  assign o_6[5] = out0[13];
  assign o_6[4] = out0[12];
  assign o_6[3] = out0[11];
  assign o_6[2] = out0[10];
  assign o_6[1] = out0[9];
  assign o_6[0] = out0[8];
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_add3_2(a, b, out0);
  input [2:0] a;
  wire [2:0] a;
  input [2:0] b;
  wire [2:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output [2:0] out0;
  wire [2:0] out0;
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) D_LUT_3 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) E_LUT_4 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) F_LUT_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h0),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O({ o_2[7:3], out0 }),
    .S(luts_O6_1)
  );
  assign o_2[2] = out0[2];
  assign o_2[1] = out0[1];
  assign o_2[0] = out0[0];
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_add4_2(a, b, out0);
  input [3:0] a;
  wire [3:0] a;
  input [3:0] b;
  wire [3:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output [3:0] out0;
  wire [3:0] out0;
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) E_LUT_4 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) F_LUT_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h0),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O({ o_2[7:4], out0 }),
    .S(luts_O6_1)
  );
  assign o_2[3] = out0[3];
  assign o_2[2] = out0[2];
  assign o_2[1] = out0[1];
  assign o_2[0] = out0[0];
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_add8_2(a, b, out0);
  input [7:0] a;
  wire [7:0] a;
  input [7:0] b;
  wire [7:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output [7:0] out0;
  wire [7:0] out0;
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) E_LUT_4 (
    .I0(a[4]),
    .I1(b[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) F_LUT_5 (
    .I0(a[5]),
    .I1(b[5]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) G_LUT_6 (
    .I0(a[6]),
    .I1(b[6]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h6000000080000000)
  ) H_LUT_7 (
    .I0(a[7]),
    .I1(b[7]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h0),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O(out0),
    .S(luts_O6_1)
  );
  assign o_2[7] = out0[7];
  assign o_2[6] = out0[6];
  assign o_2[5] = out0[5];
  assign o_2[4] = out0[4];
  assign o_2[3] = out0[3];
  assign o_2[2] = out0[2];
  assign o_2[1] = out0[1];
  assign o_2[0] = out0[0];
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_and1_2(a, b, out0);
  input a;
  wire a;
  input b;
  wire b;
  output out0;
  wire out0;
  LUT2 #(
    .INIT(4'h8)
  ) lut2_0 (
    .I0(a),
    .I1(b),
    .O(out0)
  );
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_and32_2(a, b, out0);
  input [31:0] a;
  wire [31:0] a;
  input [31:0] b;
  wire [31:0] b;
  output [31:0] out0;
  wire [31:0] out0;
  LUT2 #(
    .INIT(4'h8)
  ) lut2_0 (
    .I0(a[0]),
    .I1(b[0]),
    .O(out0[0])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_1 (
    .I0(a[1]),
    .I1(b[1]),
    .O(out0[1])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_10 (
    .I0(a[10]),
    .I1(b[10]),
    .O(out0[10])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_11 (
    .I0(a[11]),
    .I1(b[11]),
    .O(out0[11])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_12 (
    .I0(a[12]),
    .I1(b[12]),
    .O(out0[12])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_13 (
    .I0(a[13]),
    .I1(b[13]),
    .O(out0[13])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_14 (
    .I0(a[14]),
    .I1(b[14]),
    .O(out0[14])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_15 (
    .I0(a[15]),
    .I1(b[15]),
    .O(out0[15])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_16 (
    .I0(a[16]),
    .I1(b[16]),
    .O(out0[16])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_17 (
    .I0(a[17]),
    .I1(b[17]),
    .O(out0[17])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_18 (
    .I0(a[18]),
    .I1(b[18]),
    .O(out0[18])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_19 (
    .I0(a[19]),
    .I1(b[19]),
    .O(out0[19])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_2 (
    .I0(a[2]),
    .I1(b[2]),
    .O(out0[2])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_20 (
    .I0(a[20]),
    .I1(b[20]),
    .O(out0[20])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_21 (
    .I0(a[21]),
    .I1(b[21]),
    .O(out0[21])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_22 (
    .I0(a[22]),
    .I1(b[22]),
    .O(out0[22])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_23 (
    .I0(a[23]),
    .I1(b[23]),
    .O(out0[23])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_24 (
    .I0(a[24]),
    .I1(b[24]),
    .O(out0[24])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_25 (
    .I0(a[25]),
    .I1(b[25]),
    .O(out0[25])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_26 (
    .I0(a[26]),
    .I1(b[26]),
    .O(out0[26])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_27 (
    .I0(a[27]),
    .I1(b[27]),
    .O(out0[27])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_28 (
    .I0(a[28]),
    .I1(b[28]),
    .O(out0[28])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_29 (
    .I0(a[29]),
    .I1(b[29]),
    .O(out0[29])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_3 (
    .I0(a[3]),
    .I1(b[3]),
    .O(out0[3])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_30 (
    .I0(a[30]),
    .I1(b[30]),
    .O(out0[30])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_31 (
    .I0(a[31]),
    .I1(b[31]),
    .O(out0[31])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_4 (
    .I0(a[4]),
    .I1(b[4]),
    .O(out0[4])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_5 (
    .I0(a[5]),
    .I1(b[5]),
    .O(out0[5])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_6 (
    .I0(a[6]),
    .I1(b[6]),
    .O(out0[6])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_7 (
    .I0(a[7]),
    .I1(b[7]),
    .O(out0[7])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_8 (
    .I0(a[8]),
    .I1(b[8]),
    .O(out0[8])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_9 (
    .I0(a[9]),
    .I1(b[9]),
    .O(out0[9])
  );
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_and8_2(a, b, out0);
  input [7:0] a;
  wire [7:0] a;
  input [7:0] b;
  wire [7:0] b;
  output [7:0] out0;
  wire [7:0] out0;
  LUT2 #(
    .INIT(4'h8)
  ) lut2_0 (
    .I0(a[0]),
    .I1(b[0]),
    .O(out0[0])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_1 (
    .I0(a[1]),
    .I1(b[1]),
    .O(out0[1])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_2 (
    .I0(a[2]),
    .I1(b[2]),
    .O(out0[2])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_3 (
    .I0(a[3]),
    .I1(b[3]),
    .O(out0[3])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_4 (
    .I0(a[4]),
    .I1(b[4]),
    .O(out0[4])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_5 (
    .I0(a[5]),
    .I1(b[5]),
    .O(out0[5])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_6 (
    .I0(a[6]),
    .I1(b[6]),
    .O(out0[6])
  );
  LUT2 #(
    .INIT(4'h8)
  ) lut2_7 (
    .I0(a[7]),
    .I1(b[7]),
    .O(out0[7])
  );
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_eq1_2(a, b, out0);
  input a;
  wire a;
  input b;
  wire b;
  output out0;
  wire out0;
  LUT2 #(
    .INIT(4'h9)
  ) lut2_0 (
    .I0(a),
    .I1(b),
    .O(out0)
  );
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_eq32_2(a, b, out0);
  input [31:0] a;
  wire [31:0] a;
  input [31:0] b;
  wire [31:0] b;
  wire [7:0] co_11;
  wire [7:0] co_15;
  wire [7:0] co_3;
  wire [7:0] co_7;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O5_12;
  wire [7:0] luts_O5_4;
  wire [7:0] luts_O5_8;
  wire [7:0] luts_O6_1;
  wire [7:0] luts_O6_13;
  wire [7:0] luts_O6_5;
  wire [7:0] luts_O6_9;
  wire [7:0] o_10;
  wire [7:0] o_14;
  wire [7:0] o_2;
  wire [7:0] o_6;
  output out0;
  wire out0;
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) A_LUT_18 (
    .I0(a[16]),
    .I1(b[16]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[0]),
    .O6(luts_O6_9[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) A_LUT_27 (
    .I0(a[24]),
    .I1(b[24]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[0]),
    .O6(luts_O6_13[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) A_LUT_9 (
    .I0(a[8]),
    .I1(b[8]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[0]),
    .O6(luts_O6_5[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) B_LUT_10 (
    .I0(a[9]),
    .I1(b[9]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[1]),
    .O6(luts_O6_5[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) B_LUT_19 (
    .I0(a[17]),
    .I1(b[17]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[1]),
    .O6(luts_O6_9[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) B_LUT_28 (
    .I0(a[25]),
    .I1(b[25]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[1]),
    .O6(luts_O6_13[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) C_LUT_11 (
    .I0(a[10]),
    .I1(b[10]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[2]),
    .O6(luts_O6_5[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) C_LUT_20 (
    .I0(a[18]),
    .I1(b[18]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[2]),
    .O6(luts_O6_9[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) C_LUT_29 (
    .I0(a[26]),
    .I1(b[26]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[2]),
    .O6(luts_O6_13[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) D_LUT_12 (
    .I0(a[11]),
    .I1(b[11]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[3]),
    .O6(luts_O6_5[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) D_LUT_21 (
    .I0(a[19]),
    .I1(b[19]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[3]),
    .O6(luts_O6_9[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) D_LUT_30 (
    .I0(a[27]),
    .I1(b[27]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[3]),
    .O6(luts_O6_13[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) E_LUT_13 (
    .I0(a[12]),
    .I1(b[12]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[4]),
    .O6(luts_O6_5[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) E_LUT_22 (
    .I0(a[20]),
    .I1(b[20]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[4]),
    .O6(luts_O6_9[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) E_LUT_31 (
    .I0(a[28]),
    .I1(b[28]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[4]),
    .O6(luts_O6_13[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) E_LUT_4 (
    .I0(a[4]),
    .I1(b[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) F_LUT_14 (
    .I0(a[13]),
    .I1(b[13]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[5]),
    .O6(luts_O6_5[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) F_LUT_23 (
    .I0(a[21]),
    .I1(b[21]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[5]),
    .O6(luts_O6_9[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) F_LUT_32 (
    .I0(a[29]),
    .I1(b[29]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[5]),
    .O6(luts_O6_13[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) F_LUT_5 (
    .I0(a[5]),
    .I1(b[5]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) G_LUT_15 (
    .I0(a[14]),
    .I1(b[14]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[6]),
    .O6(luts_O6_5[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) G_LUT_24 (
    .I0(a[22]),
    .I1(b[22]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[6]),
    .O6(luts_O6_9[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) G_LUT_33 (
    .I0(a[30]),
    .I1(b[30]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[6]),
    .O6(luts_O6_13[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) G_LUT_6 (
    .I0(a[6]),
    .I1(b[6]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) H_LUT_16 (
    .I0(a[15]),
    .I1(b[15]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[7]),
    .O6(luts_O6_5[7])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) H_LUT_25 (
    .I0(a[23]),
    .I1(b[23]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[7]),
    .O6(luts_O6_9[7])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) H_LUT_34 (
    .I0(a[31]),
    .I1(b[31]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[7]),
    .O6(luts_O6_13[7])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) H_LUT_7 (
    .I0(a[7]),
    .I1(b[7]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_17 (
    .CI(co_3[7]),
    .CI_TOP(1'h0),
    .CO(co_7),
    .DI(luts_O5_4),
    .O(o_6),
    .S(luts_O6_5)
  );
  CARRY8 carry_26 (
    .CI(co_7[7]),
    .CI_TOP(1'h0),
    .CO(co_11),
    .DI(luts_O5_8),
    .O(o_10),
    .S(luts_O6_9)
  );
  CARRY8 carry_35 (
    .CI(co_11[7]),
    .CI_TOP(1'h0),
    .CO({ out0, co_15[6:0] }),
    .DI(luts_O5_12),
    .O(o_14),
    .S(luts_O6_13)
  );
  CARRY8 carry_8 (
    .CI(1'h1),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O(o_2),
    .S(luts_O6_1)
  );
  assign co_15[7] = out0;
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_eq5_2(a, b, out0);
  input [4:0] a;
  wire [4:0] a;
  input [4:0] b;
  wire [4:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output out0;
  wire out0;
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) E_LUT_4 (
    .I0(a[4]),
    .I1(b[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) F_LUT_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff9fffffff)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h1),
    .CI_TOP(1'h0),
    .CO({ out0, co_3[6:0] }),
    .DI(luts_O5_0),
    .O(o_2),
    .S(luts_O6_1)
  );
  assign co_3[7] = out0;
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_eq6_2(a, b, out0);
  input [5:0] a;
  wire [5:0] a;
  input [5:0] b;
  wire [5:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output out0;
  wire out0;
  LUT6_2 #(
    .INIT(64'h9fffffff0fffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff0fffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff0fffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff0fffffff)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff0fffffff)
  ) E_LUT_4 (
    .I0(a[4]),
    .I1(b[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff0fffffff)
  ) F_LUT_5 (
    .I0(a[5]),
    .I1(b[5]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff0fffffff)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff0fffffff)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h1),
    .CI_TOP(1'h0),
    .CO({ out0, co_3[6:0] }),
    .DI(luts_O5_0),
    .O(o_2),
    .S(luts_O6_1)
  );
  assign co_3[7] = out0;
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_not1_1(a, out0);
  input a;
  wire a;
  output out0;
  wire out0;
  LUT1 #(
    .INIT(2'h1)
  ) lut1_0 (
    .I0(a),
    .O(out0)
  );
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_or1_2(a, b, out0);
  input a;
  wire a;
  input b;
  wire b;
  output out0;
  wire out0;
  LUT2 #(
    .INIT(4'he)
  ) lut2_0 (
    .I0(a),
    .I1(b),
    .O(out0)
  );
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_sub32_2(a, b, out0);
  input [31:0] a;
  wire [31:0] a;
  input [31:0] b;
  wire [31:0] b;
  wire [7:0] co_11;
  wire [7:0] co_15;
  wire [7:0] co_3;
  wire [7:0] co_7;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O5_12;
  wire [7:0] luts_O5_4;
  wire [7:0] luts_O5_8;
  wire [7:0] luts_O6_1;
  wire [7:0] luts_O6_13;
  wire [7:0] luts_O6_5;
  wire [7:0] luts_O6_9;
  wire [7:0] o_10;
  wire [7:0] o_14;
  wire [7:0] o_2;
  wire [7:0] o_6;
  output [31:0] out0;
  wire [31:0] out0;
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) A_LUT_18 (
    .I0(a[16]),
    .I1(b[16]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[0]),
    .O6(luts_O6_9[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) A_LUT_27 (
    .I0(a[24]),
    .I1(b[24]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[0]),
    .O6(luts_O6_13[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) A_LUT_9 (
    .I0(a[8]),
    .I1(b[8]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[0]),
    .O6(luts_O6_5[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) B_LUT_10 (
    .I0(a[9]),
    .I1(b[9]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[1]),
    .O6(luts_O6_5[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) B_LUT_19 (
    .I0(a[17]),
    .I1(b[17]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[1]),
    .O6(luts_O6_9[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) B_LUT_28 (
    .I0(a[25]),
    .I1(b[25]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[1]),
    .O6(luts_O6_13[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) C_LUT_11 (
    .I0(a[10]),
    .I1(b[10]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[2]),
    .O6(luts_O6_5[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) C_LUT_20 (
    .I0(a[18]),
    .I1(b[18]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[2]),
    .O6(luts_O6_9[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) C_LUT_29 (
    .I0(a[26]),
    .I1(b[26]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[2]),
    .O6(luts_O6_13[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) D_LUT_12 (
    .I0(a[11]),
    .I1(b[11]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[3]),
    .O6(luts_O6_5[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) D_LUT_21 (
    .I0(a[19]),
    .I1(b[19]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[3]),
    .O6(luts_O6_9[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) D_LUT_30 (
    .I0(a[27]),
    .I1(b[27]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[3]),
    .O6(luts_O6_13[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) E_LUT_13 (
    .I0(a[12]),
    .I1(b[12]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[4]),
    .O6(luts_O6_5[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) E_LUT_22 (
    .I0(a[20]),
    .I1(b[20]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[4]),
    .O6(luts_O6_9[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) E_LUT_31 (
    .I0(a[28]),
    .I1(b[28]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[4]),
    .O6(luts_O6_13[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) E_LUT_4 (
    .I0(a[4]),
    .I1(b[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) F_LUT_14 (
    .I0(a[13]),
    .I1(b[13]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[5]),
    .O6(luts_O6_5[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) F_LUT_23 (
    .I0(a[21]),
    .I1(b[21]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[5]),
    .O6(luts_O6_9[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) F_LUT_32 (
    .I0(a[29]),
    .I1(b[29]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[5]),
    .O6(luts_O6_13[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) F_LUT_5 (
    .I0(a[5]),
    .I1(b[5]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) G_LUT_15 (
    .I0(a[14]),
    .I1(b[14]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[6]),
    .O6(luts_O6_5[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) G_LUT_24 (
    .I0(a[22]),
    .I1(b[22]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[6]),
    .O6(luts_O6_9[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) G_LUT_33 (
    .I0(a[30]),
    .I1(b[30]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[6]),
    .O6(luts_O6_13[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) G_LUT_6 (
    .I0(a[6]),
    .I1(b[6]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) H_LUT_16 (
    .I0(a[15]),
    .I1(b[15]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[7]),
    .O6(luts_O6_5[7])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) H_LUT_25 (
    .I0(a[23]),
    .I1(b[23]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[7]),
    .O6(luts_O6_9[7])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) H_LUT_34 (
    .I0(a[31]),
    .I1(b[31]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[7]),
    .O6(luts_O6_13[7])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff2fffffff)
  ) H_LUT_7 (
    .I0(a[7]),
    .I1(b[7]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_17 (
    .CI(co_3[7]),
    .CI_TOP(1'h0),
    .CO(co_7),
    .DI(luts_O5_4),
    .O(out0[15:8]),
    .S(luts_O6_5)
  );
  CARRY8 carry_26 (
    .CI(co_7[7]),
    .CI_TOP(1'h0),
    .CO(co_11),
    .DI(luts_O5_8),
    .O(out0[23:16]),
    .S(luts_O6_9)
  );
  CARRY8 carry_35 (
    .CI(co_11[7]),
    .CI_TOP(1'h0),
    .CO(co_15),
    .DI(luts_O5_12),
    .O(out0[31:24]),
    .S(luts_O6_13)
  );
  CARRY8 carry_8 (
    .CI(1'h1),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O(out0[7:0]),
    .S(luts_O6_1)
  );
  assign o_10[7] = out0[23];
  assign o_10[6] = out0[22];
  assign o_10[5] = out0[21];
  assign o_10[4] = out0[20];
  assign o_10[3] = out0[19];
  assign o_10[2] = out0[18];
  assign o_10[1] = out0[17];
  assign o_10[0] = out0[16];
  assign o_14[7] = out0[31];
  assign o_14[6] = out0[30];
  assign o_14[5] = out0[29];
  assign o_14[4] = out0[28];
  assign o_14[3] = out0[27];
  assign o_14[2] = out0[26];
  assign o_14[1] = out0[25];
  assign o_14[0] = out0[24];
  assign o_2[7] = out0[7];
  assign o_2[6] = out0[6];
  assign o_2[5] = out0[5];
  assign o_2[4] = out0[4];
  assign o_2[3] = out0[3];
  assign o_2[2] = out0[2];
  assign o_2[1] = out0[1];
  assign o_2[0] = out0[0];
  assign o_6[7] = out0[15];
  assign o_6[6] = out0[14];
  assign o_6[5] = out0[13];
  assign o_6[4] = out0[12];
  assign o_6[3] = out0[11];
  assign o_6[2] = out0[10];
  assign o_6[1] = out0[9];
  assign o_6[0] = out0[8];
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_sub5_2(a, b, out0);
  input [4:0] a;
  wire [4:0] a;
  input [4:0] b;
  wire [4:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output [4:0] out0;
  wire [4:0] out0;
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) E_LUT_4 (
    .I0(a[4]),
    .I1(b[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) F_LUT_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h1),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O({ o_2[7:5], out0 }),
    .S(luts_O6_1)
  );
  assign o_2[4] = out0[4];
  assign o_2[3] = out0[3];
  assign o_2[2] = out0[2];
  assign o_2[1] = out0[1];
  assign o_2[0] = out0[0];
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_sub6_2(a, b, out0);
  input [5:0] a;
  wire [5:0] a;
  input [5:0] b;
  wire [5:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output [5:0] out0;
  wire [5:0] out0;
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) E_LUT_4 (
    .I0(a[4]),
    .I1(b[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) F_LUT_5 (
    .I0(a[5]),
    .I1(b[5]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffff3fffffff)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h1),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O({ o_2[7:6], out0 }),
    .S(luts_O6_1)
  );
  assign o_2[5] = out0[5];
  assign o_2[4] = out0[4];
  assign o_2[3] = out0[3];
  assign o_2[2] = out0[2];
  assign o_2[1] = out0[1];
  assign o_2[0] = out0[0];
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_ugt5_2(a, b, out0);
  input [4:0] a;
  wire [4:0] a;
  input [4:0] b;
  wire [4:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output out0;
  wire out0;
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) A_LUT_0 (
    .I0(b[0]),
    .I1(a[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) B_LUT_1 (
    .I0(b[1]),
    .I1(a[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) C_LUT_2 (
    .I0(b[2]),
    .I1(a[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) D_LUT_3 (
    .I0(b[3]),
    .I1(a[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) E_LUT_4 (
    .I0(b[4]),
    .I1(a[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) F_LUT_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h0),
    .CI_TOP(1'h0),
    .CO({ out0, co_3[6:0] }),
    .DI(luts_O5_0),
    .O(o_2),
    .S(luts_O6_1)
  );
  assign co_3[7] = out0;
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_ule4_2(a, b, out0);
  input [3:0] a;
  wire [3:0] a;
  input [3:0] b;
  wire [3:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output out0;
  wire out0;
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) E_LUT_4 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) F_LUT_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h1),
    .CI_TOP(1'h0),
    .CO({ out0, co_3[6:0] }),
    .DI(luts_O5_0),
    .O(o_2),
    .S(luts_O6_1)
  );
  assign co_3[7] = out0;
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_ult32_2(a, b, out0);
  input [31:0] a;
  wire [31:0] a;
  input [31:0] b;
  wire [31:0] b;
  wire [7:0] co_11;
  wire [7:0] co_15;
  wire [7:0] co_3;
  wire [7:0] co_7;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O5_12;
  wire [7:0] luts_O5_4;
  wire [7:0] luts_O5_8;
  wire [7:0] luts_O6_1;
  wire [7:0] luts_O6_13;
  wire [7:0] luts_O6_5;
  wire [7:0] luts_O6_9;
  wire [7:0] o_10;
  wire [7:0] o_14;
  wire [7:0] o_2;
  wire [7:0] o_6;
  output out0;
  wire out0;
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) A_LUT_18 (
    .I0(a[16]),
    .I1(b[16]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[0]),
    .O6(luts_O6_9[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) A_LUT_27 (
    .I0(a[24]),
    .I1(b[24]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[0]),
    .O6(luts_O6_13[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) A_LUT_9 (
    .I0(a[8]),
    .I1(b[8]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[0]),
    .O6(luts_O6_5[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) B_LUT_10 (
    .I0(a[9]),
    .I1(b[9]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[1]),
    .O6(luts_O6_5[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) B_LUT_19 (
    .I0(a[17]),
    .I1(b[17]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[1]),
    .O6(luts_O6_9[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) B_LUT_28 (
    .I0(a[25]),
    .I1(b[25]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[1]),
    .O6(luts_O6_13[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) C_LUT_11 (
    .I0(a[10]),
    .I1(b[10]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[2]),
    .O6(luts_O6_5[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) C_LUT_20 (
    .I0(a[18]),
    .I1(b[18]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[2]),
    .O6(luts_O6_9[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) C_LUT_29 (
    .I0(a[26]),
    .I1(b[26]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[2]),
    .O6(luts_O6_13[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) D_LUT_12 (
    .I0(a[11]),
    .I1(b[11]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[3]),
    .O6(luts_O6_5[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) D_LUT_21 (
    .I0(a[19]),
    .I1(b[19]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[3]),
    .O6(luts_O6_9[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) D_LUT_30 (
    .I0(a[27]),
    .I1(b[27]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[3]),
    .O6(luts_O6_13[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) E_LUT_13 (
    .I0(a[12]),
    .I1(b[12]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[4]),
    .O6(luts_O6_5[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) E_LUT_22 (
    .I0(a[20]),
    .I1(b[20]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[4]),
    .O6(luts_O6_9[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) E_LUT_31 (
    .I0(a[28]),
    .I1(b[28]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[4]),
    .O6(luts_O6_13[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) E_LUT_4 (
    .I0(a[4]),
    .I1(b[4]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) F_LUT_14 (
    .I0(a[13]),
    .I1(b[13]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[5]),
    .O6(luts_O6_5[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) F_LUT_23 (
    .I0(a[21]),
    .I1(b[21]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[5]),
    .O6(luts_O6_9[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) F_LUT_32 (
    .I0(a[29]),
    .I1(b[29]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[5]),
    .O6(luts_O6_13[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) F_LUT_5 (
    .I0(a[5]),
    .I1(b[5]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) G_LUT_15 (
    .I0(a[14]),
    .I1(b[14]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[6]),
    .O6(luts_O6_5[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) G_LUT_24 (
    .I0(a[22]),
    .I1(b[22]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[6]),
    .O6(luts_O6_9[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) G_LUT_33 (
    .I0(a[30]),
    .I1(b[30]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[6]),
    .O6(luts_O6_13[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) G_LUT_6 (
    .I0(a[6]),
    .I1(b[6]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) H_LUT_16 (
    .I0(a[15]),
    .I1(b[15]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_4[7]),
    .O6(luts_O6_5[7])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) H_LUT_25 (
    .I0(a[23]),
    .I1(b[23]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_8[7]),
    .O6(luts_O6_9[7])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) H_LUT_34 (
    .I0(a[31]),
    .I1(b[31]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_12[7]),
    .O6(luts_O6_13[7])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) H_LUT_7 (
    .I0(a[7]),
    .I1(b[7]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_17 (
    .CI(co_3[7]),
    .CI_TOP(1'h0),
    .CO(co_7),
    .DI(luts_O5_4),
    .O(o_6),
    .S(luts_O6_5)
  );
  CARRY8 carry_26 (
    .CI(co_7[7]),
    .CI_TOP(1'h0),
    .CO(co_11),
    .DI(luts_O5_8),
    .O(o_10),
    .S(luts_O6_9)
  );
  CARRY8 carry_35 (
    .CI(co_11[7]),
    .CI_TOP(1'h0),
    .CO({ out0, co_15[6:0] }),
    .DI(luts_O5_12),
    .O(o_14),
    .S(luts_O6_13)
  );
  CARRY8 carry_8 (
    .CI(1'h0),
    .CI_TOP(1'h0),
    .CO(co_3),
    .DI(luts_O5_0),
    .O(o_2),
    .S(luts_O6_1)
  );
  assign co_15[7] = out0;
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_ult3_2(a, b, out0);
  input [2:0] a;
  wire [2:0] a;
  input [2:0] b;
  wire [2:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output out0;
  wire out0;
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) D_LUT_3 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) E_LUT_4 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) F_LUT_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h0),
    .CI_TOP(1'h0),
    .CO({ out0, co_3[6:0] }),
    .DI(luts_O5_0),
    .O(o_2),
    .S(luts_O6_1)
  );
  assign co_3[7] = out0;
endmodule

/* Generated by Yosys 0.15+50 (git sha1 6318db615, x86_64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

module lakeroad_xilinx_ultrascale_plus_ult4_2(a, b, out0);
  input [3:0] a;
  wire [3:0] a;
  input [3:0] b;
  wire [3:0] b;
  wire [7:0] co_3;
  wire [7:0] luts_O5_0;
  wire [7:0] luts_O6_1;
  wire [7:0] o_2;
  output out0;
  wire out0;
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) A_LUT_0 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[0]),
    .O6(luts_O6_1[0])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) B_LUT_1 (
    .I0(a[1]),
    .I1(b[1]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[1]),
    .O6(luts_O6_1[1])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) C_LUT_2 (
    .I0(a[2]),
    .I1(b[2]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[2]),
    .O6(luts_O6_1[2])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) D_LUT_3 (
    .I0(a[3]),
    .I1(b[3]),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[3]),
    .O6(luts_O6_1[3])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) E_LUT_4 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[4]),
    .O6(luts_O6_1[4])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) F_LUT_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[5]),
    .O6(luts_O6_1[5])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) G_LUT_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[6]),
    .O6(luts_O6_1[6])
  );
  LUT6_2 #(
    .INIT(64'h9fffffffdfffffff)
  ) H_LUT_7 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h1),
    .I3(1'h1),
    .I4(1'h1),
    .I5(1'h1),
    .O5(luts_O5_0[7]),
    .O6(luts_O6_1[7])
  );
  CARRY8 carry_8 (
    .CI(1'h0),
    .CI_TOP(1'h0),
    .CO({ out0, co_3[6:0] }),
    .DI(luts_O5_0),
    .O(o_2),
    .S(luts_O6_1)
  );
  assign co_3[7] = out0;
endmodule

// END GENERATED LAKEROAD CODE

module std_const #(
    parameter WIDTH = 32,
    parameter VALUE = 0
) (
   output logic [WIDTH - 1:0] out
);
  assign out = VALUE;
endmodule

module std_wire #(
  parameter WIDTH = 32
) (
  input wire logic [WIDTH - 1:0] in,
  output logic [WIDTH - 1:0] out
);
  assign out = in;
endmodule

module std_slice #(
    parameter IN_WIDTH  = 32,
    parameter OUT_WIDTH = 32
) (
   input wire                   logic [ IN_WIDTH-1:0] in,
   output logic [OUT_WIDTH-1:0] out
);
  assign out = in[OUT_WIDTH-1:0];

  `ifdef VERILATOR
    always_comb begin
      if (IN_WIDTH < OUT_WIDTH)
        $error(
          "std_slice: Input width less than output width\n",
          "IN_WIDTH: %0d", IN_WIDTH,
          "OUT_WIDTH: %0d", OUT_WIDTH
        );
    end
  `endif
endmodule

module std_pad #(
    parameter IN_WIDTH  = 32,
    parameter OUT_WIDTH = 32
) (
   input wire logic [IN_WIDTH-1:0]  in,
   output logic     [OUT_WIDTH-1:0] out
);
  localparam EXTEND = OUT_WIDTH - IN_WIDTH;
  assign out = { {EXTEND {1'b0}}, in};

  `ifdef VERILATOR
    always_comb begin
      if (IN_WIDTH > OUT_WIDTH)
        $error(
          "std_pad: Output width less than input width\n",
          "IN_WIDTH: %0d", IN_WIDTH,
          "OUT_WIDTH: %0d", OUT_WIDTH
        );
    end
  `endif
endmodule

module std_not #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] in,
   output logic [WIDTH-1:0] out
);

  if (WIDTH == 1) begin
    lakeroad_xilinx_ultrascale_plus_not1_1 _impl(in, out);
  end
  else if (WIDTH == 8) begin
    lakeroad_xilinx_ultrascale_plus_not8_1 _impl(in, out);
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end

endmodule

module std_and #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  if (WIDTH == 1) begin
    lakeroad_xilinx_ultrascale_plus_and1_2 _impl(left, right, out);
  end
  else if (WIDTH == 32) begin
    lakeroad_xilinx_ultrascale_plus_and32_2 _impl(left, right, out);
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end
endmodule

module std_or #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  if (WIDTH == 1) begin
   lakeroad_xilinx_ultrascale_plus_or1_2 _impl(left, right, out);
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end
endmodule

module std_xor #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  // if (WIDTH == x) begin
  //   lakeroad_xilinx_ultrascale_plus_op _impl(in, out);
  // end
  // //else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  // end
endmodule

module std_add #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);

  if (WIDTH == 2) begin
    lakeroad_xilinx_ultrascale_plus_add2_2 _impl(left, right, out);
  end
  else if (WIDTH == 3) begin
    lakeroad_xilinx_ultrascale_plus_add3_2 _impl(left, right, out);
  end
  else if (WIDTH == 4) begin
    lakeroad_xilinx_ultrascale_plus_add4_2 _impl(left, right, out);
  end
  else if (WIDTH == 8) begin
    lakeroad_xilinx_ultrascale_plus_add8_2 _impl(left, right, out);
  end
  else if (WIDTH == 32) begin
    lakeroad_xilinx_ultrascale_plus_add32_2 _impl(left, right, out);
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end

endmodule

module std_sub #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  if (WIDTH == 5) begin
    lakeroad_xilinx_ultrascale_plus_sub5_2 _impl(left, right , out);
  end
  else if (WIDTH == 6) begin
    lakeroad_xilinx_ultrascale_plus_sub6_2 _impl(left, right , out);
  end
  else if (WIDTH == 32) begin
    lakeroad_xilinx_ultrascale_plus_sub32_2 _impl(left, right , out);
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end
endmodule

module std_gt #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  if (WIDTH == 5) begin
    lakeroad_xilinx_ultrascale_plus_ugt5_2 _impl(left, right , out);
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end
endmodule

module std_lt #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  if (WIDTH == 3) begin 
    lakeroad_xilinx_ultrascale_plus_ult3_2 _impl(left, right, out);
  end
  else if (WIDTH == 4) begin 
    lakeroad_xilinx_ultrascale_plus_ult4_2 _impl(left, right, out);
  end
  else if (WIDTH == 32) begin 
    lakeroad_xilinx_ultrascale_plus_ult32_2 _impl(left, right, out);
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end
endmodule

module std_eq #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  if (WIDTH == 1) begin 
    lakeroad_xilinx_ultrascale_plus_eq1_2 _impl(left, right, out);
  end
  else if (WIDTH == 5) begin 
    lakeroad_xilinx_ultrascale_plus_eq5_2 _impl(left, right, out);
  end
  else if (WIDTH == 6) begin 
    lakeroad_xilinx_ultrascale_plus_eq6_2 _impl(left, right, out);
  end
  else if (WIDTH == 32) begin 
    lakeroad_xilinx_ultrascale_plus_eq32_2 _impl(left, right, out);
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end
endmodule

module std_neq #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  if (0 == 1) begin 
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end
endmodule

module std_ge #(
    parameter WIDTH = 32
) (
    input wire   logic [WIDTH-1:0] left,
    input wire   logic [WIDTH-1:0] right,
    output logic out
);
  if (0 == 1) begin 
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end
endmodule

module std_le #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  if (WIDTH == 4) begin 
    lakeroad_xilinx_ultrascale_plus_ule4_2 _impl(left, right, out);
  end
  else begin
    $error("Unsupported bitwidth %0d", WIDTH);
  end
endmodule

module std_lsh #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  assign out = left << right;
endmodule

module std_rsh #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  assign out = left >> right;
endmodule

/// this primitive is intended to be used
/// for lowering purposes (not in source programs)
module std_mux #(
    parameter WIDTH = 32
) (
   input wire               logic cond,
   input wire               logic [WIDTH-1:0] tru,
   input wire               logic [WIDTH-1:0] fal,
   output logic [WIDTH-1:0] out
);
  assign out = cond ? tru : fal;
endmodule

/// Memories
module std_reg #(
    parameter WIDTH = 32
) (
   input wire [ WIDTH-1:0]    in,
   input wire                 write_en,
   input wire                 clk,
   input wire                 reset,
    // output
   output logic [WIDTH - 1:0] out,
   output logic               done
);

  always_ff @(posedge clk) begin
    if (reset) begin
       out <= 0;
       done <= 0;
    end else if (write_en) begin
      out <= in;
      done <= 1'd1;
    end else done <= 1'd0;
  end
endmodule

module std_mem_d1 #(
    parameter WIDTH = 32,
    parameter SIZE = 16,
    parameter IDX_SIZE = 4
) (
   input wire                logic [IDX_SIZE-1:0] addr0,
   input wire                logic [ WIDTH-1:0] write_data,
   input wire                logic write_en,
   input wire                logic clk,
   output logic [ WIDTH-1:0] read_data,
   output logic              done
);

  logic [WIDTH-1:0] mem[SIZE-1:0];

  /* verilator lint_off WIDTH */
  assign read_data = mem[addr0];
  always_ff @(posedge clk) begin
    if (write_en) begin
      mem[addr0] <= write_data;
      done <= 1'd1;
    end else done <= 1'd0;
  end

  // Check for out of bounds access
  `ifdef VERILATOR
    always_comb begin
      if (addr0 >= SIZE)
        $error(
          "std_mem_d1: Out of bounds access\n",
          "addr0: %0d\n", addr0,
          "SIZE: %0d", SIZE
        );
    end
  `endif
endmodule

module std_mem_d2 #(
    parameter WIDTH = 32,
    parameter D0_SIZE = 16,
    parameter D1_SIZE = 16,
    parameter D0_IDX_SIZE = 4,
    parameter D1_IDX_SIZE = 4
) (
   input wire                logic [D0_IDX_SIZE-1:0] addr0,
   input wire                logic [D1_IDX_SIZE-1:0] addr1,
   input wire                logic [ WIDTH-1:0] write_data,
   input wire                logic write_en,
   input wire                logic clk,
   output logic [ WIDTH-1:0] read_data,
   output logic              done
);

  /* verilator lint_off WIDTH */
  logic [WIDTH-1:0] mem[D0_SIZE-1:0][D1_SIZE-1:0];

  assign read_data = mem[addr0][addr1];
  always_ff @(posedge clk) begin
    if (write_en) begin
      mem[addr0][addr1] <= write_data;
      done <= 1'd1;
    end else done <= 1'd0;
  end

  // Check for out of bounds access
  `ifdef VERILATOR
    always_comb begin
      if (addr0 >= D0_SIZE)
        $error(
          "std_mem_d2: Out of bounds access\n",
          "addr0: %0d\n", addr0,
          "D0_SIZE: %0d", D0_SIZE
        );
      if (addr1 >= D1_SIZE)
        $error(
          "std_mem_d2: Out of bounds access\n",
          "addr1: %0d\n", addr1,
          "D1_SIZE: %0d", D1_SIZE
        );
    end
  `endif
endmodule

module std_mem_d3 #(
    parameter WIDTH = 32,
    parameter D0_SIZE = 16,
    parameter D1_SIZE = 16,
    parameter D2_SIZE = 16,
    parameter D0_IDX_SIZE = 4,
    parameter D1_IDX_SIZE = 4,
    parameter D2_IDX_SIZE = 4
) (
   input wire                logic [D0_IDX_SIZE-1:0] addr0,
   input wire                logic [D1_IDX_SIZE-1:0] addr1,
   input wire                logic [D2_IDX_SIZE-1:0] addr2,
   input wire                logic [ WIDTH-1:0] write_data,
   input wire                logic write_en,
   input wire                logic clk,
   output logic [ WIDTH-1:0] read_data,
   output logic              done
);

  /* verilator lint_off WIDTH */
  logic [WIDTH-1:0] mem[D0_SIZE-1:0][D1_SIZE-1:0][D2_SIZE-1:0];

  assign read_data = mem[addr0][addr1][addr2];
  always_ff @(posedge clk) begin
    if (write_en) begin
      mem[addr0][addr1][addr2] <= write_data;
      done <= 1'd1;
    end else done <= 1'd0;
  end

  // Check for out of bounds access
  `ifdef VERILATOR
    always_comb begin
      if (addr0 >= D0_SIZE)
        $error(
          "std_mem_d3: Out of bounds access\n",
          "addr0: %0d\n", addr0,
          "D0_SIZE: %0d", D0_SIZE
        );
      if (addr1 >= D1_SIZE)
        $error(
          "std_mem_d3: Out of bounds access\n",
          "addr1: %0d\n", addr1,
          "D1_SIZE: %0d", D1_SIZE
        );
      if (addr2 >= D2_SIZE)
        $error(
          "std_mem_d3: Out of bounds access\n",
          "addr2: %0d\n", addr2,
          "D2_SIZE: %0d", D2_SIZE
        );
    end
  `endif
endmodule

module std_mem_d4 #(
    parameter WIDTH = 32,
    parameter D0_SIZE = 16,
    parameter D1_SIZE = 16,
    parameter D2_SIZE = 16,
    parameter D3_SIZE = 16,
    parameter D0_IDX_SIZE = 4,
    parameter D1_IDX_SIZE = 4,
    parameter D2_IDX_SIZE = 4,
    parameter D3_IDX_SIZE = 4
) (
   input wire                logic [D0_IDX_SIZE-1:0] addr0,
   input wire                logic [D1_IDX_SIZE-1:0] addr1,
   input wire                logic [D2_IDX_SIZE-1:0] addr2,
   input wire                logic [D3_IDX_SIZE-1:0] addr3,
   input wire                logic [ WIDTH-1:0] write_data,
   input wire                logic write_en,
   input wire                logic clk,
   output logic [ WIDTH-1:0] read_data,
   output logic              done
);

  /* verilator lint_off WIDTH */
  logic [WIDTH-1:0] mem[D0_SIZE-1:0][D1_SIZE-1:0][D2_SIZE-1:0][D3_SIZE-1:0];

  assign read_data = mem[addr0][addr1][addr2][addr3];
  always_ff @(posedge clk) begin
    if (write_en) begin
      mem[addr0][addr1][addr2][addr3] <= write_data;
      done <= 1'd1;
    end else done <= 1'd0;
  end

  // Check for out of bounds access
  `ifdef VERILATOR
    always_comb begin
      if (addr0 >= D0_SIZE)
        $error(
          "std_mem_d4: Out of bounds access\n",
          "addr0: %0d\n", addr0,
          "D0_SIZE: %0d", D0_SIZE
        );
      if (addr1 >= D1_SIZE)
        $error(
          "std_mem_d4: Out of bounds access\n",
          "addr1: %0d\n", addr1,
          "D1_SIZE: %0d", D1_SIZE
        );
      if (addr2 >= D2_SIZE)
        $error(
          "std_mem_d4: Out of bounds access\n",
          "addr2: %0d\n", addr2,
          "D2_SIZE: %0d", D2_SIZE
        );
      if (addr3 >= D3_SIZE)
        $error(
          "std_mem_d4: Out of bounds access\n",
          "addr3: %0d\n", addr3,
          "D3_SIZE: %0d", D3_SIZE
        );
    end
  `endif
endmodule

`default_nettype wire
module main (
    input logic go,
    input logic clk,
    input logic reset,
    output logic done,
    output logic slhs_addr0,
    output logic [3:0] slhs_write_data,
    output logic slhs_write_en,
    output logic slhs_clk,
    input logic [3:0] slhs_read_data,
    input logic slhs_done,
    output logic srhs_addr0,
    output logic [3:0] srhs_write_data,
    output logic srhs_write_en,
    output logic srhs_clk,
    input logic [3:0] srhs_read_data,
    input logic srhs_done,
    output logic signed_add_addr0,
    output logic [3:0] signed_add_write_data,
    output logic signed_add_write_en,
    output logic signed_add_clk,
    input logic [3:0] signed_add_read_data,
    input logic signed_add_done,
    output logic signed_sub_addr0,
    output logic [3:0] signed_sub_write_data,
    output logic signed_sub_write_en,
    output logic signed_sub_clk,
    input logic [3:0] signed_sub_read_data,
    input logic signed_sub_done,
    output logic signed_mul_addr0,
    output logic [3:0] signed_mul_write_data,
    output logic signed_mul_write_en,
    output logic signed_mul_clk,
    input logic [3:0] signed_mul_read_data,
    input logic signed_mul_done,
    output logic signed_div_addr0,
    output logic [3:0] signed_div_write_data,
    output logic signed_div_write_en,
    output logic signed_div_clk,
    input logic [3:0] signed_div_read_data,
    input logic signed_div_done,
    output logic signed_mod_addr0,
    output logic [3:0] signed_mod_write_data,
    output logic signed_mod_write_en,
    output logic signed_mod_clk,
    input logic [3:0] signed_mod_read_data,
    input logic signed_mod_done,
    output logic lhs_addr0,
    output logic [31:0] lhs_write_data,
    output logic lhs_write_en,
    output logic lhs_clk,
    input logic [31:0] lhs_read_data,
    input logic lhs_done,
    output logic rhs_addr0,
    output logic [31:0] rhs_write_data,
    output logic rhs_write_en,
    output logic rhs_clk,
    input logic [31:0] rhs_read_data,
    input logic rhs_done,
    output logic unsigned_add_addr0,
    output logic [31:0] unsigned_add_write_data,
    output logic unsigned_add_write_en,
    output logic unsigned_add_clk,
    input logic [31:0] unsigned_add_read_data,
    input logic unsigned_add_done,
    output logic unsigned_sub_addr0,
    output logic [31:0] unsigned_sub_write_data,
    output logic unsigned_sub_write_en,
    output logic unsigned_sub_clk,
    input logic [31:0] unsigned_sub_read_data,
    input logic unsigned_sub_done,
    output logic unsigned_mul_addr0,
    output logic [31:0] unsigned_mul_write_data,
    output logic unsigned_mul_write_en,
    output logic unsigned_mul_clk,
    input logic [31:0] unsigned_mul_read_data,
    input logic unsigned_mul_done,
    output logic unsigned_div_addr0,
    output logic [31:0] unsigned_div_write_data,
    output logic unsigned_div_write_en,
    output logic unsigned_div_clk,
    input logic [31:0] unsigned_div_read_data,
    input logic unsigned_div_done,
    output logic unsigned_mod_addr0,
    output logic [31:0] unsigned_mod_write_data,
    output logic unsigned_mod_write_en,
    output logic unsigned_mod_clk,
    input logic [31:0] unsigned_mod_read_data,
    input logic unsigned_mod_done
);
    logic [3:0] sadd_left;
    logic [3:0] sadd_right;
    logic [3:0] sadd_out;
    logic [3:0] ssub_left;
    logic [3:0] ssub_right;
    logic [3:0] ssub_out;
    logic smul_clk;
    logic smul_reset;
    logic smul_go;
    logic [3:0] smul_left;
    logic [3:0] smul_right;
    logic [3:0] smul_out;
    logic smul_done;
    logic sdiv_clk;
    logic sdiv_reset;
    logic sdiv_go;
    logic [3:0] sdiv_left;
    logic [3:0] sdiv_right;
    logic [3:0] sdiv_out_quotient;
    logic [3:0] sdiv_out_remainder;
    logic sdiv_done;
    logic [31:0] add_left;
    logic [31:0] add_right;
    logic [31:0] add_out;
    logic [31:0] sub_left;
    logic [31:0] sub_right;
    logic [31:0] sub_out;
    logic mul_clk;
    logic mul_reset;
    logic mul_go;
    logic [31:0] mul_left;
    logic [31:0] mul_right;
    logic [31:0] mul_out;
    logic mul_done;
    logic div_clk;
    logic div_reset;
    logic div_go;
    logic [31:0] div_left;
    logic [31:0] div_right;
    logic [31:0] div_out_quotient;
    logic [31:0] div_out_remainder;
    logic div_done;
    logic [3:0] fsm_in;
    logic fsm_write_en;
    logic fsm_clk;
    logic fsm_reset;
    logic [3:0] fsm_out;
    logic fsm_done;
    logic do_signed_add_go_in;
    logic do_signed_add_go_out;
    logic do_signed_add_done_in;
    logic do_signed_add_done_out;
    logic do_signed_sub_go_in;
    logic do_signed_sub_go_out;
    logic do_signed_sub_done_in;
    logic do_signed_sub_done_out;
    logic do_unsigned_add_go_in;
    logic do_unsigned_add_go_out;
    logic do_unsigned_add_done_in;
    logic do_unsigned_add_done_out;
    logic do_unsigned_sub_go_in;
    logic do_unsigned_sub_go_out;
    logic do_unsigned_sub_done_in;
    logic do_unsigned_sub_done_out;
    logic do_unsigned_mul_go_in;
    logic do_unsigned_mul_go_out;
    logic do_unsigned_mul_done_in;
    logic do_unsigned_mul_done_out;
    logic do_signed_mul_go_in;
    logic do_signed_mul_go_out;
    logic do_signed_mul_done_in;
    logic do_signed_mul_done_out;
    logic do_unsigned_div_mod_go_in;
    logic do_unsigned_div_mod_go_out;
    logic do_unsigned_div_mod_done_in;
    logic do_unsigned_div_mod_done_out;
    logic do_signed_div_mod_go_in;
    logic do_signed_div_mod_go_out;
    logic do_signed_div_mod_done_in;
    logic do_signed_div_mod_done_out;
    logic tdcc_go_in;
    logic tdcc_go_out;
    logic tdcc_done_in;
    logic tdcc_done_out;
    initial begin
        sadd_left = 4'd0;
        sadd_right = 4'd0;
        ssub_left = 4'd0;
        ssub_right = 4'd0;
        smul_clk = 1'd0;
        smul_reset = 1'd0;
        smul_go = 1'd0;
        smul_left = 4'd0;
        smul_right = 4'd0;
        sdiv_clk = 1'd0;
        sdiv_reset = 1'd0;
        sdiv_go = 1'd0;
        sdiv_left = 4'd0;
        sdiv_right = 4'd0;
        add_left = 32'd0;
        add_right = 32'd0;
        sub_left = 32'd0;
        sub_right = 32'd0;
        mul_clk = 1'd0;
        mul_reset = 1'd0;
        mul_go = 1'd0;
        mul_left = 32'd0;
        mul_right = 32'd0;
        div_clk = 1'd0;
        div_reset = 1'd0;
        div_go = 1'd0;
        div_left = 32'd0;
        div_right = 32'd0;
        fsm_in = 4'd0;
        fsm_write_en = 1'd0;
        fsm_clk = 1'd0;
        fsm_reset = 1'd0;
        do_signed_add_go_in = 1'd0;
        do_signed_add_done_in = 1'd0;
        do_signed_sub_go_in = 1'd0;
        do_signed_sub_done_in = 1'd0;
        do_unsigned_add_go_in = 1'd0;
        do_unsigned_add_done_in = 1'd0;
        do_unsigned_sub_go_in = 1'd0;
        do_unsigned_sub_done_in = 1'd0;
        do_unsigned_mul_go_in = 1'd0;
        do_unsigned_mul_done_in = 1'd0;
        do_signed_mul_go_in = 1'd0;
        do_signed_mul_done_in = 1'd0;
        do_unsigned_div_mod_go_in = 1'd0;
        do_unsigned_div_mod_done_in = 1'd0;
        do_signed_div_mod_go_in = 1'd0;
        do_signed_div_mod_done_in = 1'd0;
        tdcc_go_in = 1'd0;
        tdcc_done_in = 1'd0;
    end
    std_sadd # (
        .WIDTH(4)
    ) sadd (
        .left(sadd_left),
        .out(sadd_out),
        .right(sadd_right)
    );
    std_ssub # (
        .WIDTH(4)
    ) ssub (
        .left(ssub_left),
        .out(ssub_out),
        .right(ssub_right)
    );
    std_smult_pipe # (
        .WIDTH(4)
    ) smul (
        .clk(smul_clk),
        .done(smul_done),
        .go(smul_go),
        .left(smul_left),
        .out(smul_out),
        .reset(smul_reset),
        .right(smul_right)
    );
    std_sdiv_pipe # (
        .WIDTH(4)
    ) sdiv (
        .clk(sdiv_clk),
        .done(sdiv_done),
        .go(sdiv_go),
        .left(sdiv_left),
        .out_quotient(sdiv_out_quotient),
        .out_remainder(sdiv_out_remainder),
        .reset(sdiv_reset),
        .right(sdiv_right)
    );
    std_add # (
        .WIDTH(32)
    ) add (
        .left(add_left),
        .out(add_out),
        .right(add_right)
    );
    std_sub # (
        .WIDTH(32)
    ) sub (
        .left(sub_left),
        .out(sub_out),
        .right(sub_right)
    );
    std_mult_pipe # (
        .WIDTH(32)
    ) mul (
        .clk(mul_clk),
        .done(mul_done),
        .go(mul_go),
        .left(mul_left),
        .out(mul_out),
        .reset(mul_reset),
        .right(mul_right)
    );
    std_div_pipe # (
        .WIDTH(32)
    ) div (
        .clk(div_clk),
        .done(div_done),
        .go(div_go),
        .left(div_left),
        .out_quotient(div_out_quotient),
        .out_remainder(div_out_remainder),
        .reset(div_reset),
        .right(div_right)
    );
    std_reg # (
        .WIDTH(4)
    ) fsm (
        .clk(fsm_clk),
        .done(fsm_done),
        .in(fsm_in),
        .out(fsm_out),
        .reset(fsm_reset),
        .write_en(fsm_write_en)
    );
    std_wire # (
        .WIDTH(1)
    ) do_signed_add_go (
        .in(do_signed_add_go_in),
        .out(do_signed_add_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_signed_add_done (
        .in(do_signed_add_done_in),
        .out(do_signed_add_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_signed_sub_go (
        .in(do_signed_sub_go_in),
        .out(do_signed_sub_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_signed_sub_done (
        .in(do_signed_sub_done_in),
        .out(do_signed_sub_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_unsigned_add_go (
        .in(do_unsigned_add_go_in),
        .out(do_unsigned_add_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_unsigned_add_done (
        .in(do_unsigned_add_done_in),
        .out(do_unsigned_add_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_unsigned_sub_go (
        .in(do_unsigned_sub_go_in),
        .out(do_unsigned_sub_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_unsigned_sub_done (
        .in(do_unsigned_sub_done_in),
        .out(do_unsigned_sub_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_unsigned_mul_go (
        .in(do_unsigned_mul_go_in),
        .out(do_unsigned_mul_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_unsigned_mul_done (
        .in(do_unsigned_mul_done_in),
        .out(do_unsigned_mul_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_signed_mul_go (
        .in(do_signed_mul_go_in),
        .out(do_signed_mul_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_signed_mul_done (
        .in(do_signed_mul_done_in),
        .out(do_signed_mul_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_unsigned_div_mod_go (
        .in(do_unsigned_div_mod_go_in),
        .out(do_unsigned_div_mod_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_unsigned_div_mod_done (
        .in(do_unsigned_div_mod_done_in),
        .out(do_unsigned_div_mod_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_signed_div_mod_go (
        .in(do_signed_div_mod_go_in),
        .out(do_signed_div_mod_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_signed_div_mod_done (
        .in(do_signed_div_mod_done_in),
        .out(do_signed_div_mod_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) tdcc_go (
        .in(tdcc_go_in),
        .out(tdcc_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) tdcc_done (
        .in(tdcc_done_in),
        .out(tdcc_done_out)
    );
    assign done = tdcc_done_out;
    assign lhs_addr0 =
     do_unsigned_add_go_out | do_unsigned_sub_go_out | do_unsigned_mul_go_out | do_unsigned_div_mod_go_out ? 1'd0 : 1'd0;
    assign lhs_clk = clk;
    assign rhs_addr0 =
     do_unsigned_add_go_out | do_unsigned_sub_go_out | do_unsigned_mul_go_out | do_unsigned_div_mod_go_out ? 1'd0 : 1'd0;
    assign rhs_clk = clk;
    assign signed_add_addr0 =
     do_signed_add_go_out ? 1'd0 : 1'd0;
    assign signed_add_clk = clk;
    assign signed_add_write_data =
     do_signed_add_go_out ? sadd_out : 4'd0;
    assign signed_add_write_en = do_signed_add_go_out;
    assign signed_div_addr0 =
     do_signed_div_mod_go_out ? 1'd0 : 1'd0;
    assign signed_div_clk = clk;
    assign signed_div_write_data =
     do_signed_div_mod_go_out ? sdiv_out_quotient : 4'd0;
    assign signed_div_write_en =
     do_signed_div_mod_go_out ? sdiv_done : 1'd0;
    assign signed_mod_addr0 =
     do_signed_div_mod_go_out ? 1'd0 : 1'd0;
    assign signed_mod_clk = clk;
    assign signed_mod_write_data =
     do_signed_div_mod_go_out ? sdiv_out_remainder : 4'd0;
    assign signed_mod_write_en =
     do_signed_div_mod_go_out ? sdiv_done : 1'd0;
    assign signed_mul_addr0 =
     do_signed_mul_go_out ? 1'd0 : 1'd0;
    assign signed_mul_clk = clk;
    assign signed_mul_write_data =
     do_signed_mul_go_out ? smul_out : 4'd0;
    assign signed_mul_write_en =
     do_signed_mul_go_out ? smul_done : 1'd0;
    assign signed_sub_addr0 =
     do_signed_sub_go_out ? 1'd0 : 1'd0;
    assign signed_sub_clk = clk;
    assign signed_sub_write_data =
     do_signed_sub_go_out ? ssub_out : 4'd0;
    assign signed_sub_write_en = do_signed_sub_go_out;
    assign slhs_addr0 =
     do_signed_add_go_out | do_signed_sub_go_out | do_signed_mul_go_out | do_signed_div_mod_go_out ? 1'd0 : 1'd0;
    assign slhs_clk = clk;
    assign srhs_addr0 =
     do_signed_add_go_out | do_signed_sub_go_out | do_signed_mul_go_out | do_signed_div_mod_go_out ? 1'd0 : 1'd0;
    assign srhs_clk = clk;
    assign unsigned_add_addr0 =
     do_unsigned_add_go_out ? 1'd0 : 1'd0;
    assign unsigned_add_clk = clk;
    assign unsigned_add_write_data =
     do_unsigned_add_go_out ? add_out : 32'd0;
    assign unsigned_add_write_en = do_unsigned_add_go_out;
    assign unsigned_div_addr0 =
     do_unsigned_div_mod_go_out ? 1'd0 : 1'd0;
    assign unsigned_div_clk = clk;
    assign unsigned_div_write_data =
     do_unsigned_div_mod_go_out ? div_out_quotient : 32'd0;
    assign unsigned_div_write_en =
     do_unsigned_div_mod_go_out ? div_done : 1'd0;
    assign unsigned_mod_addr0 =
     do_unsigned_div_mod_go_out ? 1'd0 : 1'd0;
    assign unsigned_mod_clk = clk;
    assign unsigned_mod_write_data =
     do_unsigned_div_mod_go_out ? div_out_remainder : 32'd0;
    assign unsigned_mod_write_en =
     do_unsigned_div_mod_go_out ? div_done : 1'd0;
    assign unsigned_mul_addr0 =
     do_unsigned_mul_go_out ? 1'd0 : 1'd0;
    assign unsigned_mul_clk = clk;
    assign unsigned_mul_write_data =
     do_unsigned_mul_go_out ? mul_out : 32'd0;
    assign unsigned_mul_write_en =
     do_unsigned_mul_go_out ? mul_done : 1'd0;
    assign unsigned_sub_addr0 =
     do_unsigned_sub_go_out ? 1'd0 : 1'd0;
    assign unsigned_sub_clk = clk;
    assign unsigned_sub_write_data =
     do_unsigned_sub_go_out ? sub_out : 32'd0;
    assign unsigned_sub_write_en = do_unsigned_sub_go_out;
    assign add_left =
     do_unsigned_add_go_out ? lhs_read_data : 32'd0;
    assign add_right =
     do_unsigned_add_go_out ? rhs_read_data : 32'd0;
    assign div_clk = clk;
    assign div_go = ~div_done & do_unsigned_div_mod_go_out;
    assign div_left =
     do_unsigned_div_mod_go_out ? lhs_read_data : 32'd0;
    assign div_reset = reset;
    assign div_right =
     do_unsigned_div_mod_go_out ? rhs_read_data : 32'd0;
    assign do_signed_add_done_in = signed_add_done;
    assign do_signed_add_go_in = ~do_signed_add_done_out & fsm_out == 4'd0 & tdcc_go_out;
    assign do_signed_div_mod_done_in = signed_div_done & signed_mod_done;
    assign do_signed_div_mod_go_in = ~do_signed_div_mod_done_out & fsm_out == 4'd3 & tdcc_go_out;
    assign do_signed_mul_done_in = signed_mul_done;
    assign do_signed_mul_go_in = ~do_signed_mul_done_out & fsm_out == 4'd2 & tdcc_go_out;
    assign do_signed_sub_done_in = signed_sub_done;
    assign do_signed_sub_go_in = ~do_signed_sub_done_out & fsm_out == 4'd1 & tdcc_go_out;
    assign do_unsigned_add_done_in = unsigned_add_done;
    assign do_unsigned_add_go_in = ~do_unsigned_add_done_out & fsm_out == 4'd4 & tdcc_go_out;
    assign do_unsigned_div_mod_done_in = unsigned_div_done & unsigned_mod_done;
    assign do_unsigned_div_mod_go_in = ~do_unsigned_div_mod_done_out & fsm_out == 4'd7 & tdcc_go_out;
    assign do_unsigned_mul_done_in = unsigned_mul_done;
    assign do_unsigned_mul_go_in = ~do_unsigned_mul_done_out & fsm_out == 4'd6 & tdcc_go_out;
    assign do_unsigned_sub_done_in = unsigned_sub_done;
    assign do_unsigned_sub_go_in = ~do_unsigned_sub_done_out & fsm_out == 4'd5 & tdcc_go_out;
    assign fsm_clk = clk;
    assign fsm_in =
     fsm_out == 4'd8 ? 4'd0 :
     fsm_out == 4'd0 & do_signed_add_done_out & tdcc_go_out ? 4'd1 :
     fsm_out == 4'd1 & do_signed_sub_done_out & tdcc_go_out ? 4'd2 :
     fsm_out == 4'd2 & do_signed_mul_done_out & tdcc_go_out ? 4'd3 :
     fsm_out == 4'd3 & do_signed_div_mod_done_out & tdcc_go_out ? 4'd4 :
     fsm_out == 4'd4 & do_unsigned_add_done_out & tdcc_go_out ? 4'd5 :
     fsm_out == 4'd5 & do_unsigned_sub_done_out & tdcc_go_out ? 4'd6 :
     fsm_out == 4'd6 & do_unsigned_mul_done_out & tdcc_go_out ? 4'd7 :
     fsm_out == 4'd7 & do_unsigned_div_mod_done_out & tdcc_go_out ? 4'd8 : 4'd0;
    assign fsm_reset = reset;
    assign fsm_write_en = fsm_out == 4'd8 | fsm_out == 4'd0 & do_signed_add_done_out & tdcc_go_out | fsm_out == 4'd1 & do_signed_sub_done_out & tdcc_go_out | fsm_out == 4'd2 & do_signed_mul_done_out & tdcc_go_out | fsm_out == 4'd3 & do_signed_div_mod_done_out & tdcc_go_out | fsm_out == 4'd4 & do_unsigned_add_done_out & tdcc_go_out | fsm_out == 4'd5 & do_unsigned_sub_done_out & tdcc_go_out | fsm_out == 4'd6 & do_unsigned_mul_done_out & tdcc_go_out | fsm_out == 4'd7 & do_unsigned_div_mod_done_out & tdcc_go_out;
    assign mul_clk = clk;
    assign mul_go = ~mul_done & do_unsigned_mul_go_out;
    assign mul_left =
     do_unsigned_mul_go_out ? lhs_read_data : 32'd0;
    assign mul_reset = reset;
    assign mul_right =
     do_unsigned_mul_go_out ? rhs_read_data : 32'd0;
    assign sadd_left =
     do_signed_add_go_out ? slhs_read_data : 4'd0;
    assign sadd_right =
     do_signed_add_go_out ? srhs_read_data : 4'd0;
    assign sdiv_clk = clk;
    assign sdiv_go = ~sdiv_done & do_signed_div_mod_go_out;
    assign sdiv_left =
     do_signed_div_mod_go_out ? slhs_read_data : 4'd0;
    assign sdiv_reset = reset;
    assign sdiv_right =
     do_signed_div_mod_go_out ? srhs_read_data : 4'd0;
    assign smul_clk = clk;
    assign smul_go = ~smul_done & do_signed_mul_go_out;
    assign smul_left =
     do_signed_mul_go_out ? slhs_read_data : 4'd0;
    assign smul_reset = reset;
    assign smul_right =
     do_signed_mul_go_out ? srhs_read_data : 4'd0;
    assign ssub_left =
     do_signed_sub_go_out ? slhs_read_data : 4'd0;
    assign ssub_right =
     do_signed_sub_go_out ? srhs_read_data : 4'd0;
    assign sub_left =
     do_unsigned_sub_go_out ? lhs_read_data : 32'd0;
    assign sub_right =
     do_unsigned_sub_go_out ? rhs_read_data : 32'd0;
    assign tdcc_done_in = fsm_out == 4'd8;
    assign tdcc_go_in = go;
endmodule

