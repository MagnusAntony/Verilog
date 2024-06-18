module full_adder_tb;
  reg A,B,C;
  wire S,Co;
  full_adder uut(.A(A),.B(B),.C(C),.S(S),.Co(Co));
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(1,full_adder_tb);
    
    A=1'b0;B=1'b0;C=1'b0;
    #10 A=1'b0;B=1'b0;C=1'b1;
    #10 A=1'b0;B=1'b1;C=1'b0;
    #10 A=1'b0;B=1'b1;C=1'b1;
    #10 A=1'b1;B=1'b0;C=1'b0;
    #10 A=1'b1;B=1'b0;C=1'b1;
    #10 A=1'b1;B=1'b1;C=1'b0;
    #10 A=1'b1;B=1'b0;C=1'b0;
    #10 $finish;
  end
  initial begin
    $monitor("time=%0t,A=%b,B=%b,C=%b,S=%b,Co=%b",$time,A,B,C,S,Co);
  end
endmodule
