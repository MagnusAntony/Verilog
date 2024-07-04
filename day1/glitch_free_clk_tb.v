module glitch_free_tb;
  reg pclk_62_5mhz,pclk_250mhz;
  reg [1:0] rate;
  wire pclk;
  
  glitch_free_clk_mux uut(.pclk_62_5mhz(pclk_62_5mhz),
                          .pclk_250mhz(pclk_250mhz),
                          .rate(rate),
                          .pclk(pclk));
   initial begin
    pclk_62_5mhz = 0;
    pclk_250mhz = 0;
    rate = 2'b00;
    #100; // Initial delay before toggling clocks
  end

  initial begin
    forever #8 pclk_62_5mhz = ~pclk_62_5mhz;
  end

  initial begin
    forever #2 pclk_250mhz = ~pclk_250mhz;
  end

  initial begin
    #200;
    rate=2'b00;
    #100;
    rate=2'b10;
    #100;
     #2000 $finish;
  end
  initial begin 
    $dumpfile("glitch_free_clk_mux.vcd");
    $dumpvars(1);
  end
endmodule
