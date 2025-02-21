// This program was cloned from: https://github.com/chipsalliance/f4pga-examples
// License: Apache License 2.0

module PWM (
    input wire clk,
    input wire [13:0] width,
    output reg pulse
);

  reg [13:0] counter = 0;

  always @(posedge clk) begin
    counter <= counter + 1;
    if (counter < width) pulse <= 1'b1;
    else pulse <= 1'b0;
  end
endmodule
