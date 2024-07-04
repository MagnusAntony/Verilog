module ALU(input[3:0]a,b,input[2:0]sel,input clk,output reg[3:0]out);
  always@(posedge clk) begin
    case(sel)
      3'b000:out<=a+b;  //addition
      3'b001:out<=a-b; //subtraction
      3'b010:out<=a/b; //division
      3'b011:out<=a&&b; //logical and
      3'b100:out<=a&b; //bitwise and
      3'b101:out<=a|b; //bitwise or
      3'b110:out<=~(a&b); //bitwise nand
      3'b111:out<=~(a^b); //bitwise xnor
      default: out <= 4'bxxxx;
    endcase
  end
endmodule
      
