module d_latch(input D,en,rstn,output reg q);
  always@(en or rstn or D)
    if(rstn==0)
      q<=0;
      else if(en==1)
        q<=D;
endmodule
    
