module encoder_tb;
  reg[7:0] in;
  wire[2:0] out;
  
  encoder8_3 uut(.in(in),.out(out));
  initial begin
    in=8'b00000000;
    #10 in=8'b00000001;
    #10 in=8'b00000010;
    #10 in=8'b00000100;
    #10 in=8'b00001000;
    #10 in=8'b00010000;
    #10 in=8'b00100000;
    #10 in=8'b01000000;
    #10 in=8'b10000000;
    
    #10in=8'b00000011;
    #10in=8'b00000101;
    #10;$finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
  
