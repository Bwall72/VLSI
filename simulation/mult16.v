module mult16(A, B, Y);

   input [7:0] A;
   input [7:0] B;
   output wire [15:0] Y;

   wire [15:1] 	 l0;
   wire [7:0] 	 l1;
   wire [7:0] 	 l2;
   wire [7:0] 	 l3;
   wire [7:0] 	 l4;
   wire [7:0] 	 l5;
   wire [7:0] 	 l6;

   wire [7:0] 	 l0c;
   wire [6:0] 	 l0s;
   wire [7:0] 	 l1c;
   wire [6:0] 	 l1s;
   wire [7:0] 	 l2c;
   wire [6:0] 	 l2s;
   wire [7:0] 	 l3c;
   wire [6:0] 	 l3s;
   wire [7:0] 	 l4c;
   wire [6:0] 	 l4s;
   wire [7:0] 	 l5c;
   wire [6:0] 	 l5s;
   wire [7:0] 	 l6c;
   
   // layer 0
   and (Y[0], A[0], B[0]);

   and (l0[1], A[1], B[0]);
   and (l0[2], A[0], B[1]);
   and (l0[3], A[2], B[0]);
   and (l0[4], A[1], B[1]);
   and (l0[5], A[3], B[0]);
   and (l0[6], A[2], B[1]);
   and (l0[7], A[4], B[0]);
   and (l0[8], A[3], B[1]);
   and (l0[9], A[5], B[0]);
   and (l0[10], A[4], B[1]);
   and (l0[11], A[6], B[0]);
   and (l0[12], A[5], B[1]);
   and (l0[13], A[7], B[0]);
   and (l0[14], A[6], B[1]);
   and (l0[15], A[7], B[1]);
   half_adder l0h0 (l0[1], l0[2], Y[1], l0c[0]);
   full_adder l0f0 (l0[3], l0[4], l0c[0], l0s[0], l0c[1]);
   full_adder l0f1 (l0[5], l0[6], l0c[1], l0s[1], l0c[2]);
   full_adder l0f2 (l0[7], l0[8], l0c[2], l0s[2], l0c[3]);
   full_adder l0f3 (l0[9], l0[10], l0c[3], l0s[3], l0c[4]);
   full_adder l0f4 (l0[11], l0[12], l0c[4], l0s[4], l0c[5]);
   full_adder l0f5 (l0[13], l0[14], l0c[5], l0s[5], l0c[6]);
   half_adder l0h1 (l0[15], l0c[6], l0s[6], l0c[7]);

   // layer 1
   and (l1[0], A[0], B[2]);
   and (l1[1], A[1], B[2]);
   and (l1[2], A[2], B[2]);
   and (l1[3], A[3], B[2]);
   and (l1[4], A[4], B[2]);
   and (l1[5], A[5], B[2]);
   and (l1[6], A[6], B[2]);
   and (l1[7], A[7], B[2]);
   half_adder l1h0 (l1[0], l0s[0], Y[2], l1c[0]);
   full_adder l1f0 (l1[1], l0s[1], l1c[0], l1s[0], l1c[1]);
   full_adder l1f1 (l1[2], l0s[2], l1c[1], l1s[1], l1c[2]);
   full_adder l1f2 (l1[3], l0s[3], l1c[2], l1s[2], l1c[3]);
   full_adder l1f3 (l1[4], l0s[4], l1c[3], l1s[3], l1c[4]);
   full_adder l1f4 (l1[5], l0s[5], l1c[4], l1s[4], l1c[5]);
   full_adder l1f5 (l1[6], l0s[6], l1c[5], l1s[5], l1c[6]);
   full_adder l1f6 (l1[7], l0c[7], l1c[6], l1s[6], l1c[7]);

   // layer 2
   and (l2[0], A[0], B[3]);
   and (l2[1], A[1], B[3]);
   and (l2[2], A[2], B[3]);
   and (l2[3], A[3], B[3]);
   and (l2[4], A[4], B[3]);
   and (l2[5], A[5], B[3]);
   and (l2[6], A[6], B[3]);
   and (l2[7], A[7], B[3]);
   half_adder l2h0 (l2[0], l1s[0], Y[3], l2c[0]);
   full_adder l2f0 (l2[1], l1s[1], l2c[0], l2s[0], l2c[1]);
   full_adder l2f1 (l2[2], l1s[2], l2c[1], l2s[1], l2c[2]);
   full_adder l2f2 (l2[3], l1s[3], l2c[2], l2s[2], l2c[3]);
   full_adder l2f3 (l2[4], l1s[4], l2c[3], l2s[3], l2c[4]);
   full_adder l2f4 (l2[5], l1s[5], l2c[4], l2s[4], l2c[5]);
   full_adder l2f5 (l2[6], l1s[6], l2c[5], l2s[5], l2c[6]);
   full_adder l2f6 (l2[7], l1c[7], l2c[6], l2s[6], l2c[7]);

   // layer 3
   and (l3[0], A[0], B[4]);
   and (l3[1], A[1], B[4]);
   and (l3[2], A[2], B[4]);
   and (l3[3], A[3], B[4]);
   and (l3[4], A[4], B[4]);
   and (l3[5], A[5], B[4]);
   and (l3[6], A[6], B[4]);
   and (l3[7], A[7], B[4]);
   half_adder l3h0 (l3[0], l2s[0], Y[4], l3c[0]);
   full_adder l3f0 (l3[1], l2s[1], l3c[0], l3s[0], l3c[1]);
   full_adder l3f1 (l3[2], l2s[2], l3c[1], l3s[1], l3c[2]);
   full_adder l3f2 (l3[3], l2s[3], l3c[2], l3s[2], l3c[3]);
   full_adder l3f3 (l3[4], l2s[4], l3c[3], l3s[3], l3c[4]);
   full_adder l3f4 (l3[5], l2s[5], l3c[4], l3s[4], l3c[5]);
   full_adder l3f5 (l3[6], l2s[6], l3c[5], l3s[5], l3c[6]);
   full_adder l3f6 (l3[7], l2c[7], l3c[6], l3s[6], l3c[7]);

   // layer 4
   and (l4[0], A[0], B[5]);
   and (l4[1], A[1], B[5]);
   and (l4[2], A[2], B[5]);
   and (l4[3], A[3], B[5]);
   and (l4[4], A[4], B[5]);
   and (l4[5], A[5], B[5]);
   and (l4[6], A[6], B[5]);
   and (l4[7], A[7], B[5]);
   half_adder l4h0 (l4[0], l3s[0], Y[5], l4c[0]);
   full_adder l4f0 (l4[1], l3s[1], l4c[0], l4s[0], l4c[1]);
   full_adder l4f1 (l4[2], l3s[2], l4c[1], l4s[1], l4c[2]);
   full_adder l4f2 (l4[3], l3s[3], l4c[2], l4s[2], l4c[3]);
   full_adder l4f3 (l4[4], l3s[4], l4c[3], l4s[3], l4c[4]);
   full_adder l4f4 (l4[5], l3s[5], l4c[4], l4s[4], l4c[5]);
   full_adder l4f5 (l4[6], l3s[6], l4c[5], l4s[5], l4c[6]);
   full_adder l4f6 (l4[7], l3c[7], l4c[6], l4s[6], l4c[7]);

   // layer 5
   and (l5[0], A[0], B[6]);
   and (l5[1], A[1], B[6]);
   and (l5[2], A[2], B[6]);
   and (l5[3], A[3], B[6]);
   and (l5[4], A[4], B[6]);
   and (l5[5], A[5], B[6]);
   and (l5[6], A[6], B[6]);
   and (l5[7], A[7], B[6]);
   half_adder l5h0 (l5[0], l4s[0], Y[6], l5c[0]);
   full_adder l5f0 (l5[1], l4s[1], l5c[0], l5s[0], l5c[1]);
   full_adder l5f1 (l5[2], l4s[2], l5c[1], l5s[1], l5c[2]);
   full_adder l5f2 (l5[3], l4s[3], l5c[2], l5s[2], l5c[3]);
   full_adder l5f3 (l5[4], l4s[4], l5c[3], l5s[3], l5c[4]);
   full_adder l5f4 (l5[5], l4s[5], l5c[4], l5s[4], l5c[5]);
   full_adder l5f5 (l5[6], l4s[6], l5c[5], l5s[5], l5c[6]);
   full_adder l5f6 (l5[7], l4c[7], l5c[6], l5s[6], l5c[7]);

   // layer 6
   and (l6[0], A[0], B[7]);
   and (l6[1], A[1], B[7]);
   and (l6[2], A[2], B[7]);
   and (l6[3], A[3], B[7]);
   and (l6[4], A[4], B[7]);
   and (l6[5], A[5], B[7]);
   and (l6[6], A[6], B[7]);
   and (l6[7], A[7], B[7]);
   half_adder l6h0 (l6[0], l5s[0], Y[7], l6c[0]);
   full_adder l6f0 (l6[1], l5s[1], l6c[0], Y[8], l6c[1]);
   full_adder l6f1 (l6[2], l5s[2], l6c[1], Y[9], l6c[2]);
   full_adder l6f2 (l6[3], l5s[3], l6c[2], Y[10], l6c[3]);
   full_adder l6f3 (l6[4], l5s[4], l6c[3], Y[11], l6c[4]);
   full_adder l6f4 (l6[5], l5s[5], l6c[4], Y[12], l6c[5]);
   full_adder l6f5 (l6[6], l5s[6], l6c[5], Y[13], l6c[6]);
   full_adder l6f6 (l6[7], l5c[7], l6c[6], Y[14], Y[15]);
   
   
   
endmodule // mult16

