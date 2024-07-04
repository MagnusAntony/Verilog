module b_g_tb;
  reg[3:0]B;
  wire [3:0]G;
  binary_to_gray uut(.G(G),.B(B));
 initial begin
    // Apply some test vectors to the input B and observe the output G
    B = 4'b0000; #10;
    B = 4'b0001; #10;
    B = 4'b0010; #10;
    B = 4'b0011; #10;
    B = 4'b0100; #10;
    B = 4'b0101; #10;
    B = 4'b0110; #10;
    B = 4'b0111; #10;
    B = 4'b1000; #10;
    B = 4'b1001; #10;
    B = 4'b1010; #10;
    B = 4'b1011; #10;
    B = 4'b1100; #10;
    B = 4'b1101; #10;
    B = 4'b1110; #10;
    B = 4'b1111; #10;

    // End the simulation
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,b_g_tb);
  end
endmodule
