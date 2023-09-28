module BinaryToGray(
    input [3:0] binary, // 4-bit binary input
    output reg [3:0] gray // 4-bit Gray code output
);

    always @(*) begin
        gray[3] = binary[3];
        gray[2] = binary[3] ^ binary[2];
        gray[1] = binary[2] ^ binary[1];
        gray[0] = binary[1] ^ binary[0];
    end

endmodule
