module srff_tb;
  reg clk,rstn,s,r,x;
  wire q;
  
  srff uut(.clk(clk),.rstn(rstn),.s(s),.r(r),.x(x),.q(q));
  initial begin
    clk=0;
    forever #5clk=~clk;
  end
  initial begin
    // Initialize inputs
    rstn = 0; s = 0; r = 0; x = 0;
    #10;
    
    rstn = 1; // Release reset
    #10;

    // Test case 1: {s,r} = 2'b00
    s = 0; r = 0; x = 0;
    #10;
    $display("Test case 1: s=%b, r=%b, x=%b, q=%b", s, r, x, q);
    
    // Test case 2: {s,r} = 2'b01
    s = 0; r = 1; x = 0;
    #10;
    $display("Test case 2: s=%b, r=%b, x=%b, q=%b", s, r, x, q);

    // Test case 3: {s,r} = 2'b10
    s = 1; r = 0; x = 0;
    #10;
    $display("Test case 3: s=%b, r=%b, x=%b, q=%b", s, r, x, q);

    // Test case 4: {s,r} = 2'b11
    s = 1; r = 1; x = 1;
    #10;
    $display("Test case 4: s=%b, r=%b, x=%b, q=%b", s, r, x, q);

    // Test case 5: Reset
    rstn = 0;
    #10;
    $display("Test case 5: s=%b, r=%b, x=%b, q=%b (After reset)", s, r, x, q);
    
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
     
     
       
       
        
