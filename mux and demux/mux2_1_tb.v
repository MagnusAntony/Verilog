module muxtb;
  reg A,B,S;
  wire Y;
  mux2_1 uut(.A(A),.B(B),.S(S),.Y(Y));
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1);
    $monitor("A=%B,B=%B,S=%b,Y=%b",A,B,S,Y);
    A=0;B=1;
    S=1;
//     #5
//     S=1;
  end
endmodule
