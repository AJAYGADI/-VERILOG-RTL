module jk_flipflop (
  input J,   // J input
  input K,   // K input
  input clk, // Clock input
  output reg Q // Output
);

  always @(posedge clk) begin
    if (J && K) // Invalid condition
      Q <= Q; // No change
    else if (J)
      Q <= 1'b1;
    else if (K)
      Q <= 1'b0;
  end

endmodule
