module CarryLookAheadAdder(
  input [3:0] A, B,
  input Cin,
  output [3:0] S,
  output Cout
);
  wire [3:0] G, P, Ci;

  
  assign G = A & B;     
  assign P = A ^ B;     


  assign Ci[0] = Cin;
  assign Ci[1] = G[0] | (P[0] & Ci[0]);
  assign Ci[2] = G[1] | (P[1] & Ci[1]);
  assign Ci[3] = G[2] | (P[2] & Ci[2]);
  assign Cout  = G[3] | (P[3] & Ci[3]);

  // Calculate sum bits
  assign S = P ^ Ci;    // Sum: Si = Pi ^ Ci

endmodule
