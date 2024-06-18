module TB;
  reg [3:0] A, B; 
  reg Cin;
  wire [3:0] S;
  wire Cout;
  wire [4:0] add;
  CarryLookAheadAdder cla (A, B, Cin, S, Cout);
  assign add = {Cout, S};

  initial begin
    $dumpfile(" CarryLookAheadAdder.vcd");
    $dumpvars(1, TB); 

    $monitor("A = %b, B = %b, Cin = %b --> S = %b, Cout = %b, Addition = %0d", A, B, Cin, S, Cout, add);
    
    A = 4'b0001; B = 4'b0000; Cin = 0; #3;
    A = 4'b0010; B = 4'b0100; Cin = 1; #3;
    A = 4'hb; B = 4'h6; Cin = 0; #3;
    A = 4'b0101; B = 4'b0011; Cin = 1; #3;
    A = 4'b1111; B = 4'b1111; Cin = 1; #3;
  end
endmodule
