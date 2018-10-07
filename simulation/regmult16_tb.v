`timescale 1ns/1ns
module regmult16_tb;

   reg [7:0]  A;
   reg [7:0]  B;
   reg        clk = 0;
   reg        en;
   reg        rst;
   wire [15:0] Y;

   reg_mult16 dut (A, B, clk, en, rst, Y);

   initial 
     begin
	$dumpfile("regmult16_tb.vcd");
	$dumpvars(0, regmult16_tb);
     end
   
   always
     #2 clk = !clk;
   
   
   initial
      begin
	 en <= 1;
	 rst <= 0;
	 A <= 0;
	 B <= 0;
	 # 4;
	 A <= 12;
	 B <= 45;
	 #50;
	 $finish;
      end

endmodule // regmult16_tb

