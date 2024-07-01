module usr (
  input rstn,
  input clk,
  input serial_right_in,
  input serial_left_in,
  input [1:0] sel,
  input [3:0] par_in,
  output reg [3:0] par_out
);
  always @(posedge clk) begin
    if (!rstn)
      par_out <= 4'b0000;
    else begin
      case (sel)
        2'h1: par_out <= {serial_right_in, par_out[3:1]}; // Right shift
        2'h2: par_out <= {par_out[2:0], serial_left_in};  // Left shift
        2'h3: par_out <= par_in;                         // Parallel load
        default: par_out <= par_out;                     // Hold
      endcase
    end
  end
endmodule
