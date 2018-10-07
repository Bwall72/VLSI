module full_adder(A, B, Cin, S, Cout);
   input A, B, Cin;
   output S, Cout;

   wire   xor1;
   wire   and1;
   wire   and2;

   xor (xor1, A, B);
   xor (S, xor1, Cin);
   and (and1, xor1, Cin);
   and (and2, A, B);
   or  (Cout, and1, and2);

endmodule // full_adder
