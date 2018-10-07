`timescale 1ns/1ns

module boothmult_tb;

   reg [7:0] A;
   reg [7:0] B;
   reg 	     clk = 0;
   reg 	     load;
   reg 	     rst = 1;
   wire [15:0] Y;

   booth_mult dut (A, B, clk, load, rst, Y);

   initial
     begin
	$dumpfile("boothmult_tb.vcd");
	$dumpvars(0, boothmult_tb);
     end

   always
     #2 clk <= ~clk;

   initial
     begin
	#10;
	rst <= 0;
	#4;
	A <= 20;
	B <= 30;
	load <= 1;
	#10;
	load <= 0;
	# 50;
	$finish;
     end // initial begin
endmodule // boothmult_tb

