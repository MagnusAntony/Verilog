module mux_tb;
  reg a,b,c,d;
  reg [1:0] sel;
  wire Y;
  
  mux4_1 uut(.a(a),.b(b),.c(c),.d(d),.sel(sel),.Y(Y));
  initial begin
    $monitor("d=%0b,c=%0b,b=%0b,a=%0b,sel=%0b,Y=%0b",d,c,b,a,sel,Y);
    {d,c,b,a}=4'h5;
    repeat(10) begin
      
      sel=$random;#1;
    end
        $finish;
  end
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars(1);
  end
endmodule
