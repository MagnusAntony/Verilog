module testbench;
    reg [3:0] A, B;          // 4-bit input registers
    wire [3:0] S;            // 4-bit sum output wire
    wire Co;                 // Carry-out output wire

    // Instantiate the Ripple Carry Adder module
    rca uut (
        .A(A),
        .B(B),
        .S(S),
        .Co(Co)
    );

    initial begin
        // Test cases
        // Test case 1: 1 + 2
        A = 4'b0001; B = 4'b0010;
        #10;
        $display("A = %b, B = %b, S = %b, Co = %b", A, B, S, Co);

        // Test case 2: 15 + 1
        A = 4'b1111; B = 4'b0001;
        #10;
        $display("A = %b, B = %b, S = %b, Co = %b", A, B, S, Co);

        // Test case 3: 10 + 5
        A = 4'b1010; B = 4'b0101;
        #10;
        $display("A = %b, B = %b, S = %b, Co = %b", A, B, S, Co);

        // Test case 4: 7 + 8
        A = 4'b0111; B = 4'b1000;
        #10;
        $display("A = %b, B = %b, S = %b, Co = %b", A, B, S, Co);

        // Test case 5: 0 + 0
        A = 4'b0000; B = 4'b0000;
        #10;
        $display("A = %b, B = %b, S = %b, Co = %b", A, B, S, Co);

        // Finish the simulation
        $finish;
    end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
