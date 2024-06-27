module decoder3_8_tb;
  reg[2:0] y;
  wire[7:0] D;
  
  decoder3_8 uut(.y(y),.D(D));
  initial begin
    
    #10 y=3'b000;
    #10 y=3'b001;
    #10 y=3'b010;
    #10 y=3'b011;
    #10 y=3'b100;
    #10 y=3'b101;
    #10 y=3'b110;
    #10 y=3'b111;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
