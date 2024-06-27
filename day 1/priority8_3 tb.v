module priority_tb;
  reg[7:0] D;
  wire[2:0] y;
  
  priority8_3 uut(.D(D),.y(y));
   initial begin
     D=8'b00000000;
     
     
     #10 D=8'b1xxxxxxx;//: y = 3'b111;
     #10 D=8'b01xxxxxx;//: y = 3'b110;
     #10 D=8'b001xxxxx;//: y = 3'b101;
     #10 D=8'b0001xxxx;//: y = 3'b100;
     #10 D=8'b00001xxx;//: y = 3'b011;
     #10 D=8'b000001xx;//: y = 3'b010;
     #10 D=8'b0000001x;//: y = 3'b001;
     #10 D=8'b00000001;//: y = 3'b000;
     #10 D=8'bx0x0x0x0;
     $finish;
   end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
     
     
