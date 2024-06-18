module demux1_4(input[0:1]S,input i,output reg Y0,Y1,Y2,Y3);
  always@(*) begin
    case(S)
      2'h00:{Y0,Y1,Y2,Y3}={i,3'b000};
      2'h01:{Y0,Y1,Y2,Y3}={1'b0,i,2'b00};
      2'h10:{Y0,Y1,Y2,Y3}={2'b00,i,1'b0};
      2'h11:{Y0,Y1,Y2,Y3}={3'b000,i};
      default: $display("invalid input");
    endcase
  end
endmodule
      
      
