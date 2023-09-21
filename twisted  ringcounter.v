module twisted_ring_counter (
  input wire clk,           // Clock input
  input wire reset,         // Reset input (active low)
  output wire [3:0] count  // 4-bit counter output
);

  reg [3:0] count_reg;      // 4-bit counter register

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count_reg <= 4'b0000; // Reset the counter to 0000
    end else begin
      // Twisted Ring Counter Logic
      count_reg <= {count_reg[2:0], count_reg[3]}; // Rotate the bits to the right
    end
  end

  assign count = count_reg; // Output is the counter register value

endmodule
