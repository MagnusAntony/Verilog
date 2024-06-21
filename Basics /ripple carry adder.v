module fulladder(input A,B,Cin,output S,Co);
  assign S=A^B^Cin;
  assign Co=(A&B)|(A^B) & Cin;
endmodule
 
module rca(input[3:0]A,B,output[3:0]S,output Co); 
  wire[3:0] carry;
  // First full adder with Cin = 0
    fulladder fa1 (
        .A(A[0]), .B(B[0]), .Cin(1'b0),
        .S(S[0]), .Co(carry[0])
    );

    // Second full adder
    fulladder fa2 (
        .A(A[1]), .B(B[1]), .Cin(carry[0]),
        .S(S[1]), .Co(carry[1])
    );

    // Third full adder
    fulladder fa3 (
        .A(A[2]), .B(B[2]), .Cin(carry[1]),
        .S(S[2]), .Co(carry[2])
    );

    // Fourth full adder
    fulladder fa4 (
        .A(A[3]), .B(B[3]), .Cin(carry[2]),
        .S(S[3]), .Co(carry[3])
    );

    // Assign the final carry-out
    assign Co = carry[3];
endmodule

    
