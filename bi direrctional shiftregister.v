module bidirectional_shift_register (
  input wire clk,          // Clock input
  input wire reset,        // Reset input
  input wire shift_left,   // Shift left control
  input wire shift_right,  // Shift right control
  input wire data_in,      // Input data
  output wire [3:0] data_out // Output data
);

  reg [3:0] shift_reg;     // 4-bit shift register

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      shift_reg <= 4'b0000; // Reset the shift register
    end else begin
      if (shift_left) begin
        shift_reg <= {shift_reg[2:0], data_in}; // Shift left
      end else if (shift_right) begin
        shift_reg <= {data_in, shift_reg[3:1]}; // Shift right
      end
    end
  end

  assign data_out = shift_reg; // Output is the shift register contents

endmodule
