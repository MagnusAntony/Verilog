module mux2_1(input A,B,S,output Y);
  assign Y=S?B:A;
endmodule
