module half_adder_tb;
  reg A,B;
  wire C,S;
  half_adder uut(.A(A),.B(B),.C(C),.S(S));
  initial begin
   
    A=1'b0;B=1'b0;
    #10 A=1'b0;B=1'b1;
    #10 A=1'b1;B=1'b0;
    #10 A=1'b1;B=1'b1;
    #10 $finish;
    
  end
  initial begin
    $monitor("time=%0t,A=%b,B=%b,C=%b,S=%b",$time,A,B,C,S);
  end
endmodule  
    
    
