module dff(input clk,d,rstn,output reg q);
  always@(posedge clk)begin
    if(!rstn) begin
      q<=0;
    end
      else begin
        q<=d;
      end
  end
endmodule
