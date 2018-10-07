`timescale 1ns/1ns

module mult16_tb;

   reg [7:0] A;
   reg [7:0] B;
   wire [15:0] Y;

   mult16 dut(A, B, Y);
   
   initial begin
      $dumpfile("mult16_tb.vcd");
      $dumpvars(0, mult16_tb);
   end

   initial
     begin
	A <= 0;
	B <= 0;
	#5;
	A <= 255;
	B <= 255;
	#5 $finish;
     end
endmodule // mult16_tb
