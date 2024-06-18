module half_subtractor_tb;
  reg A,B;
  wire D,Bo;
  half_subtractor uut(.A(A),.B(B),.D(D),.Bo(Bo));
  initial begin
    $dumpfile("half_subtractor.vcd");
    $dumpvars(1);
    A=1'b0;B=1'b0;
    #10 A=1'b0;B=1'b1;
    #10 A=1'b1;B=1'b0;
    #10 A=1'b1;B=1'b1;
    #10 $finish;
    
  end
  initial begin
    $monitor("time=%0t,A=%b,B=%b,D=%b,Bo=%b",$time,A,B,D,Bo);
  end
endmodule  
    
    
