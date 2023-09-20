module piso_shift_register (
  input wire clk,            // Clock input
  input wire rst,            // Reset input
  input wire parallel_in,    // Parallel input
  output wire serial_out     // Serial output
);

  reg [3:0] shift_reg; // 4-bit shift register

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      shift_reg <= 4'b0; // Reset the shift register to 0
    end else begin
      // Shift right and load parallel input
      shift_reg <= {parallel_in, shift_reg[3:1]};
    end
  end

  assign serial_out = shift_reg[0]; // Output the least significant bit

endmodule
