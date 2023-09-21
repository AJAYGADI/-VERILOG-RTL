module ring_counter (
  input wire clk,          // Clock input
  input wire reset,        // Reset input (active low)
  output wire [3:0] count  // 4-bit counter output
);

  reg [3:0] count_reg;     // 4-bit counter register

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count_reg <= 4'b0001; // Initialize to 0001 on reset
    end else begin
      count_reg <= {count_reg[2:0], count_reg[3]}; // Shift right by 1
    end
  end

  assign count = count_reg; // Output is the counter register value

endmodule
