module full_adder(input A,B,C,output S,Co);
  assign S=A^B^C;
  assign Co=(A&B)| (C & (A^B));
endmodule
  
