module tff_tb;
  reg T,clk;
  wire q;
  tff uut(.T(T),.clk(clk),.q(q));
  initial begin
    //initial test case
    T=0;clk=0;
  
    
    forever #5clk=~clk;
  end
  initial begin
    #10 T=1;
    #10 T=0;
    #10 T=1;
    #10;$finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
                     
endmodule
    
