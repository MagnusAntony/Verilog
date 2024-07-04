module TB;
  reg [3:0] a, b;
  reg [2:0] sel;
  reg clk;
  wire [3:0] out;
  
  ALU uut (.a(a), .b(b), .sel(sel), .clk(clk), .out(out));
  
  initial begin
    // Initialize inputs
    a = $random;
    b = $random;
    sel = $random;
    
    // Start clock
    clk = 0;
    forever #5 clk = ~clk; // Toggle clock every 5 time units
  end
  
  // Stimulus generation
  always @(posedge clk) begin
    // Change inputs randomly
    if ($time % 10 == 0) begin // Change inputs every 10 time units
      a = $random;
      b = $random;
      sel = $random;
    end
  end
  
  // Monitor changes to inputs and outputs
  initial begin
    $dumpfile("ALU.vcd");
    $dumpvars(0, TB);
    
    $monitor("At time %t, a = %b, b = %b, out = %b, sel = %b", $time, a, b, out, sel);
    
    // Simulate for a period of time
    #100; // Simulate for 100 time units
    
    // End simulation
    $finish;
  end
endmodule
