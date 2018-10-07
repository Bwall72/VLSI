module reg_mult16(A, B, clk, en, rst, Y);

   input [7:0] A;
   input [7:0] B;
   input       clk;
   input       en;
   input       rst;
   output [15:0] Y;

   reg [7:0] 	 A_reg = 0;
   reg [7:0] 	 B_reg = 0;
	      
   mult16 multiplier(A_reg, B_reg, Y);

   always @(posedge clk)
     if (rst == 1) begin
	A_reg <= 0;
	B_reg <= 0;
     end
     else if (en == 1) begin
	A_reg <= A;
	B_reg <= B;
     end
     else if (en != 0) begin
	A_reg <= A_reg;
	B_reg <= B_reg;
     end

   

endmodule // reg_mult16


	
     
	
   
   
