module full_adder(input a,b,cin,output sum,cout);
  assign{sum,cout}={a^b^cin,((a^b)|(b^cin)|(cin^a))};
endmodule

module adder_subtractor(input[3:0]a,b,input ctrl,output[3:0]S, cout);
  wire[3:0]Bc;
  assign Bc=b^{ctrl,ctrl,ctrl,ctrl};
  
  full_adder fa0(a[0],Bc[0],ctrl,S[0],cout[0]);
  full_adder fa1(a[1],Bc[1],cout[0],S[1],cout[1]);
  full_adder fa2(a[2],Bc[2],cout[1],S[2],cout[2]);
  full_adder fa3(a[3],Bc[3],cout[2],S[3],cout[3]);
endmodule
  
