module multiply #(parameter N=4) (A,B,P);
   input [N-1:0] A;
   input [N-1:0] B;
   //input clk;
   output [N*2-1:0] P; // 8 bit product


   wire [3:0] 	Augend0; // Input to first intermediate addition.
   wire [3:0] 	Addend0; // Input to first intermediate addition.
   wire [3:0] 	Sum0;    // First intermediate sum.
   wire 	Carry0;  // Carry output of first intermediate addition.
   wire [3:0] 	Addend1; // Input to second intermediate addition.
   wire [3:0] 	Augend1; // Input to second intermediate addition.
   wire [3:0] 	Sum1;    // Second intermediate sum.
   wire 	Carry1;  // Carry output of second intermediate addition.
   wire [3:0] 	Augend2; // Input to last addition.
   wire [3:0] 	Addend2; // Input to last addition.

   //
   // Augend0 = (A * B[0]) rshift 1
   //
   and(P[0], A[0], B[0]);        // Bit 0 goes straight to P.
   and(Augend0[0], A[1], B[0]);
   and(Augend0[1], A[2], B[0]);
   and(Augend0[2], A[3], B[0]);
   assign Augend0[3] = 0;

   //
   // Addend0 = A * B[1]
   //
   and(Addend0[0], A[0], B[1]);
   and(Addend0[1], A[1], B[1]);
   and(Addend0[2], A[2], B[1]);
   and(Addend0[3], A[3], B[1]);

   ripple_carry_adder rc0(Sum0, Carry0, Augend0, Addend0); // {Carry0, Sum0} = Augend0 + Addend0
   assign P[1] = Sum0[0];
   
   //
   // Augend1 = (Augend0 + Addend0) rshift 1
   //
   assign Augend1[0] = Sum0[1];
   assign Augend1[1] = Sum0[2];
   assign Augend1[2] = Sum0[3];
   assign Augend1[3] = Carry0;
   
   //
   // Addend1 = A * B[2]
   //
   and(Addend1[0], A[0], B[2]);
   and(Addend1[1], A[1], B[2]);
   and(Addend1[2], A[2], B[2]);
   and(Addend1[3], A[3], B[2]);

   ripple_carry_adder rc1(Sum1, Carry1, Augend1, Addend1); // {Carry1, Sum1} = Augend1 + Addend1
   assign P[2] = Sum1[0];
   
   //
   // Augend2 = (Augend1 + Addend1) rshift 1
   //
   assign Augend2[0] = Sum1[1];
   assign Augend2[1] = Sum1[2];
   assign Augend2[2] = Sum1[3];
   assign Augend2[3] = Carry1;
   
   //
   // Addend2 = A * B[3]
   //
   and(Addend2[0], A[0], B[3]);
   and(Addend2[1], A[1], B[3]);
   and(Addend2[2], A[2], B[3]);
   and(Addend2[3], A[3], B[3]);

   ripple_carry_adder rc2(P[6:3], P[7], Augend2, Addend2); // {P[7], P[6], P[5], P[5], P[3]} = Augend2 + Addend2
endmodule // multiplier
