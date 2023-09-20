module pipo_register (
  input wire clk,          // Clock input
  input wire rst,          // Reset input
  input wire parallel_in,  // Parallel input
  output wire parallel_out // Parallel output
);

  reg [3:0] reg_data;      // 4-bit data register

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      reg_data <= 4'b0000; // Reset the register to 0
    end else begin
      reg_data <= parallel_in; // Load parallel input
    end
  end

  assign parallel_out = reg_data; // Output the contents of the register

endmodule
