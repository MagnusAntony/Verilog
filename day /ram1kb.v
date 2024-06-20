module ram1kb(input clk,write_enable,chip_select1,chip_select2,input [7:0]data_in,input [9:0] address,output reg[7:0] data_out);
  
  reg[7:0]mem_block[0:1023];
  
  always@(posedge clk)
    begin
      if(chip_select1 && chip_select2) begin
        if(write_enable) begin
          mem_block[address] <= data_in;
        end
        else begin
          data_out<=mem_block[address];
        end
      end
    end
endmodule
          
