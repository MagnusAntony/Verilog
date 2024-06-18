module half_subtractor(
  input A,
  input B,
  output D,
  output Bo
);
  assign D = A ^ B; 
  assign Bo = (~A) & B; 
endmodule
