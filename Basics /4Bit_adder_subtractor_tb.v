module TB;
  wire [3:0] S;
  wire cout;
  reg [3:0] a, b;
  reg ctrl;
  
  adder_subtractor uut (
    .a(a),
    .b(b),
    .ctrl(ctrl),
    .S(S),
    .cout(cout)
  );
  
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(1, TB);
    
    // Initial values
    ctrl = 0;
    a = 4'h1; b = 4'h0;
    #3 a = 4'h2; b = 4'h4;
    #3 a = 4'hb; b = 4'h6;
    #3 a = 4'h5; b = 4'h3;
    
    // Switching control
    ctrl = 1;
    #3 a = 4'h1; b = 4'h0;
    #3 a = 4'h2; b = 4'h4;
    #3 a = 4'hb; b = 4'h6;
    #3 a = 4'h5; b = 4'h3;
    
    // End simulation
    #3 $finish;
  end
endmodule
