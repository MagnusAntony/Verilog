module demux1_4_tb;
  reg[1:0]S;
  reg i;
  wire Y0,Y1,Y2,Y3;
  demux1_4 uut(S,i,Y0,Y1,Y2,Y3);
  initial begin
    $monitor("S = %b, i = %b -> Y0 = %0b, Y1 = %0b ,Y2 = %0b, Y3 = %0b", S,i,Y0,Y1,Y2,Y3);
    $dumpfile("demux1_4.vcd");
    $dumpvars(1);
    S=00;i=1;#1;
    S=01;i=1;#1;
    S=10;i=1;#1;
    S=11;i=1;#1;
    $finish;
  end
endmodule
