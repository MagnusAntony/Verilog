module usr_tb;
  reg rstn, clk, serial_right_in, serial_left_in;
  reg [1:0] sel;
  reg [3:0] par_in;
  wire [3:0] par_out;

  usr uut (
    .rstn(rstn),
    .clk(clk),
    .serial_right_in(serial_right_in),
    .serial_left_in(serial_left_in),
    .sel(sel),
    .par_in(par_in),
    .par_out(par_out)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // Toggle clock every 5 time units
  end

  initial begin
    rstn = 0;
    serial_right_in = 0;
    serial_left_in = 0;
    par_in = 0;
    sel = 0;

    // Apply reset
    rstn = 0;
    #10;    // Extend reset period
    rstn = 1;

    // Apply test vectors
    #10 par_in = 4'b1101;
    serial_right_in = 1;
    serial_left_in = 0;

    sel = 2'h3; // Parallel load
    #10;

    sel = 2'h1; // Right shift
    #20;

    sel = 2'h3; // Parallel load
    par_in = 4'b1101;
    #10;

    sel = 2'h2; // Left shift
    #20;

    sel = 2'h0; // Hold
    #20;

    $finish;
  end

  initial begin
    $dumpfile("usr.vcd");
    $dumpvars(1, usr_tb);
  end
endmodule
