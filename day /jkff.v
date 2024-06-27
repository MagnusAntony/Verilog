module jkff(input clk,rstn,j,k,
            output reg q);
  always@(posedge clk) begin
    if(!rstn)
      q<=0;
    else
      case({j,k})
        2'b00:q<=q;
        2'b01:q<=0;
        2'b10:q<=1;
        2'b11:q<=~q;
        default:$display("invalid input");
      endcase
  end
endmodule
   
