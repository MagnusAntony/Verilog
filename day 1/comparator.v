module comparator(input[3:0]A,B,output reg C,D,E,);
  always@(*) begin
    C = 1'b0;
    D = 1'b0;
    E = 1'b0;
    if(A>B) C=1'b1;
    else if(A<B) D=1'b1;
    else E=1'b1;
  end
endmodule
