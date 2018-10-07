`timescale 1ns/1ns

module full_adder_tb;

   reg A, B, Cin; 
   wire S, Cout;
   integer i, j, k;
   full_adder dut(A, B, Cin, S, Cout);

   initial
     begin
	$dumpfile("full_adder_tb.vcd");
	$dumpvars(0, full_adder_tb);
     end

   initial
     begin
	A <= 0;
	B <= 0;
	Cin <= 0;
	#5;
	for (i = 0; i < 2; i = i + 1) begin
	   for (j = 0; j < 2; j = j + 1) begin
	      for (k = 0; k < 2; k = k + 1) begin
		 #5 Cin <= ~Cin;
	      end
	      #5 B <= ~B;
	   end
	   #5 A <= ~A;
	end
	#10 $finish;
     end // initial begin

endmodule // full_adder_tb


   
