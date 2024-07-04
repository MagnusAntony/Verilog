module comp_tb;
  reg [3:0] A, B;
  wire C, D, E;
  
  comparator uut(.A(A), .B(B), .C(C), .D(D), .E(E));
  
  initial begin
    $dumpfile("comparator.vcd");
    $dumpvars(1, comp_tb);
    
    repeat (5) begin
      A = $random; B = $random; #10;
    end
    $finish;
  end
  
  initial begin
    // Monitor changes to the inputs and outputs
    $monitor("At time %t, A = %b, B = %b, C = %b, D = %b, E = %b", $time, A, B, C, D, E);
  end
endmodule
