module tff(T,clk,q);
  input T,clk;
  output reg q;
  initial q=0;
  always@(posedge clk)
    begin
    if(T==0)
      q<=q;
      else
        q<=~q;
    end
endmodule
  
        
