module ripple_carry_adder(S, C, A, B);
   output [3:0] S;  // The 4-bit sum.
   output 	C;  // The 1-bit carry.
   input [3:0] 	A;  // The 4-bit augend.
   input [3:0] 	B;  // The 4-bit addend.

   wire 	C0; // The carry out bit of fa0, the carry in bit of fa1.
   wire 	C1; // The carry out bit of fa1, the carry in bit of fa2.
   wire 	C2; // The carry out bit of fa2, the carry in bit of fa3.
   
   // module full_adder(x, y, cin, s, cout);
   full_adder fa0(A[0], B[0], 1'b0, S[0], C0); // LSB
   full_adder fa1(A[1], B[1], C0, S[1], C1);  
   full_adder fa2(A[2], B[2], C1, S[2], C2);
   full_adder fa3(A[3], B[3], C2, S[3], C); // MSB

endmodule // ripple_carry_adder
