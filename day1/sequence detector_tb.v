module TB;
  reg clk,rstn,x;
  wire z;
  
  mealy_1101 uut(.clk(clk),.rstn(rstn),.x(x));
  initial clk=0;
    always #5clk=~clk;
  initial begin
    x = 0;
    #1 rstn = 0;
    #2 rstn = 1;
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #10;
    $finish;
  end
  
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
