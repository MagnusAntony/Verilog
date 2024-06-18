module full_subtractor_tb;
  reg A,B,Bin;
  wire D,Bo;
  full_subtractor uut(.A(A),.B(B),.Bin(Bin),.D(D),.Bo(Bo));
  initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(1,full_subtractor_tb);
    
    A=1'b0;B=1'b0;Bin=1'b0;
    #10 A=1'b0;B=1'b0;Bin=1'b1;
    #10 A=1'b0;B=1'b1;Bin=1'b0;
    #10 A=1'b0;B=1'b1;Bin=1'b1;
    #10 A=1'b1;B=1'b0;Bin=1'b0;
    #10 A=1'b1;B=1'b0;Bin=1'b1;
    #10 A=1'b1;B=1'b1;Bin=1'b0;
    #10 A=1'b1;B=1'b0;Bin=1'b0;
    #10 $finish;
  end
  initial begin
    $monitor("time=%0t,A=%b,B=%b,Bin=%b,D=%b,Bo=%b",$time,A,B,Bin,D,Bo);
  end
endmodule
