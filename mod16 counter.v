module mod16_counter (
  input wire clk,         // Clock input
  input wire reset,       // Reset input (active low)
  output wire [3:0] count // 4-bit counter output
);

  reg [3:0] count_reg;    // 4-bit counter register

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count_reg <= 4'b0000; // Reset the counter to 0
    end else begin
      if (count_reg == 4'b1111) begin
        count_reg <= 4'b0000; // Wrap around to 0 after reaching 15
      end else begin
        count_reg <= count_reg + 1; // Increment the counter
      end
    end
  end

  assign count = count_reg; // Output is the counter register value

endmodule
