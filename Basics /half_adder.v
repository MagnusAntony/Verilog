module half_adder(
  input A,
  input B,
  output C,
  output S
);
  assign S = A ^ B; 
  assign C = A & B; 
endmodule
