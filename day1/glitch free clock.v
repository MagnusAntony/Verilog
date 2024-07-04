module glitch_free_clk_mux(input pclk_62_5mhz,pclk_250mhz,
                           input[1:0]rate,
                           output reg pclk);
  always@(*) begin
    case(rate)
      2'b00:pclk=pclk_62_5mhz;
      2'b10:pclk=pclk_250mhz;
      default:pclk=1'b0;
    endcase
  end
endmodule
