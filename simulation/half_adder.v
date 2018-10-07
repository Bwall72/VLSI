module half_adder(A, B, S, Cout);

   input A, B;
   output S, Cout;

   //xor (S, A, B);
   //and (Cout, A, B);

   assign S = A ^ B;
   assign Cout = A & B;
endmodule // half_adder

