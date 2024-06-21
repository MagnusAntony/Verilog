module d_latch_tb;
  reg D,en,rstn;
  wire q;
  d_latch uut(.D(D),.en(en),.rstn(rstn),.q(q));
  initial begin
    //test case 1
    D=1;en=1;rstn=1;
    #10;
    $display("D=%b,en=%b,rstn=%b,q=%b",D,en,rstn,q);
    //test case 2
    D=1;en=1;rstn=0;
    #10;
    $display("D=%b,en=%b,rstn=%b,q=%b",D,en,rstn,q);
    //test case 3
    D=0;en=0;rstn=1;
    #10;
    $display("D=%b,en=%b,rstn=%b,q=%b",D,en,rstn,q);
    
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
    
