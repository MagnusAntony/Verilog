module jkff_tb;
  reg clk,rstn,j,k;
  wire q;
  
  jkff uut(.clk(clk),.rstn(rstn),.j(j),.k(k),.q(q));
  initial begin
    clk=0;
    forever #5clk=~clk;
  end
  initial begin
    // Initialize inputs
    rstn = 0; j = 0; k = 0;
    #10;
    
    rstn = 1; // Release reset
    #10;

    // Test case 1
    j = 0; k = 0; 
    #10;
    $display("Test case 1: j=%b, k=%b,q=%b",j,k,q);
    
    // Test case 2: 
    j = 0; k = 1;
    #10;
    $display("Test case 2: j=%b, k=%b, q=%b", j,k,q);

    // Test case3:
    j = 1; k = 0;
    #10;
    $display("Test case 3: j=%b, k=%b, q=%b", j, k, q);

    // Test case 4:
    j = 1; k = 1;
    #10;
    $display("Test case 4: j=%b, k=%b, q=%b", j, k, q);

    // Test case 5: Reset
    rstn = 0;
    #10;
    $display("Test case 5: j=%b, k=%b, q=%b (After reset)", j, k, q);
    
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
     
     
       
       
        
