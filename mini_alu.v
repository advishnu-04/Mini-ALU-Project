module mini_alu (
    input [3:0] A,
    input [3:0] B,
    input [1:0] sel,
    output reg [3:0] Y,
    output reg carry
);

always @(*) begin
    case (sel)
        2'b00: {carry, Y} = A + B;
        2'b01: {carry, Y} = A - B;

        2'b10: begin
            Y = A & B;
            carry = 0;
        end

        2'b11: begin
            Y = A | B;
            carry = 0;
        end

        default: begin
            Y = 4'b0000;
            carry = 0;
        end
    endcase
end

endmodule
