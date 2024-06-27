module priority8_3(input[7:0] D,output reg[2:0] y);
  always@(*)
    case(D)
      8'b1xxxxxxx: y = 3'b111;
      8'b01xxxxxx: y = 3'b110;
      8'b001xxxxx: y = 3'b101;
      8'b0001xxxx: y = 3'b100;
      8'b00001xxx: y = 3'b011;
      8'b000001xx: y = 3'b010;
      8'b0000001x: y = 3'b001;
      8'b00000001: y = 3'b000;
      default: $display("Invalid data received");
    endcase
endmodule
  
