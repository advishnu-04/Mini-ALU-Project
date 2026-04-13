module tb_mini_alu;

reg [3:0] A, B;
reg [1:0] sel;
wire [3:0] Y;
wire carry;

// Instantiate ALU
mini_alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y),
    .carry(carry)
);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, tb_mini_alu);
    
    // Monitor output (IMPORTANT)
    $monitor("Time=%0t | A=%d B=%d sel=%b | Y=%d carry=%b", 
              $time, A, B, sel, Y, carry);

    // Test values
    A = 4'd6; B = 4'd3;

    sel = 2'b00; #10; // ADD → 9
    sel = 2'b01; #10; // SUB → 3
    sel = 2'b10; #10; // AND → 2
    sel = 2'b11; #10; // OR  → 7

    // More test cases
    A = 4'd15; B = 4'd1;

    sel = 2'b00; #10; // ADD (overflow case)
    sel = 2'b01; #10; // SUB
    sel = 2'b10; #10; // AND
    sel = 2'b11; #10; // OR

    $finish;
end

endmodule
