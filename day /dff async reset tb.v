module dff_tb;
  reg clk,d,rstn;
  wire q;
  
  dff uut(.clk(clk),.d(d),.rstn(rstn),.q(q));
  initial begin
    clk = 0; // Initialize clock
    forever #5 clk = ~clk; // Toggle clock every 5 time units
  end
  initial begin
    
    //test case 1
    d=1;rstn=1;
    #10;
    $display("d=%b,rstn=%b,clk=%b,q=%b",d,rstn,clk,q);
    
    //test case 2
    d=0;rstn=1;
    #10;
    $display("d=%b,rstn=%b,clk=%b,q=%b",d,rstn,clk,q);
    
    //test case 3
    d=1;rstn=1;
    #10;
    $display("d=%b,rstn=%b,clk=%b,q=%b",d,rstn,clk,q);
    $finish;
  end
  initial begin
    $dumpfile("dff.vcd");
    $dumpvars(1,dff_tb);
    end
  endmodule
