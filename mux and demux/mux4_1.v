module mux4_1(input a,b,c,d,
              input[1:0] sel,
              output reg Y);
  always@(*)
    begin
      case(sel)
        2'h0:Y=a;
        2'h1:Y=b;
        2'h2:Y=c;
        2'h3:Y=d;
        default:$display("invalid sel input");
      endcase
    end
endmodule
      
        
