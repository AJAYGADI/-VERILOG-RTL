module SynchronousSignal (
    input wire clk,
    input wire reset,
    input wire enable,
    output wire signal_out
);

    reg signal_reg;

    always @(posedge clk) begin
        if (reset) begin
            signal_reg <= 0;
        end else if (enable) begin
            signal_reg <= 1;
        end else begin
            signal_reg <= 0;
        end
    end

    assign signal_out = signal_reg;

endmodule
