module full_subtractor(input A,B,Bin,output D,Bo);
  assign D=A^B^Bin;
  assign Bo=(~A&B)| (Bin & ((~A)^B));
endmodule
  

