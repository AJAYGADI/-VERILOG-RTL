module t_flipflop (
  input T,   // Toggle input
  input clk, // Clock input
  input reset, // Reset input
  output reg Q // Output
);

  always @(posedge clk or posedge reset) begin
    if (reset)
      Q <= 1'b0; // Asynchronous reset
    else if (T)
      Q <= ~Q; // Toggle Q on T input
  end

endmodule
