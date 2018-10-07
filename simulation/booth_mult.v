module booth_mult(A, B, clk, load, rst, Y);

   input [7:0] A;
   input [7:0] B;
   input       clk;
   input       load;
   input       rst;
   output reg [15:0] Y;

   reg		 load_lock = 0;
   reg [7:0] 	 A_reg;
   reg [15:0] 	 B_reg;
   reg [15:0] 	 Y_reg;
   reg [3:0] 	 count;

   always @(posedge clk)
     begin
	if (rst == 1)
	  begin
	     A_reg <= 0;
	     B_reg <= 0;
	     Y <= 0;
	     count <= 0;
	     Y_reg <= 0;
	  end
	// load?
	else if (load_lock != 1 && load == 1)
	  begin
	     A_reg <= A;
	     B_reg[7:0] <= B;
	     B_reg[15:8] <= 0;
	     count <= 0;
	     Y_reg <= 0;
	  end
	else if (load != 1)
	  begin
	     if (count < 8) begin
		load_lock <= 1;
		if (A[count])
		  Y_reg <= Y_reg + B_reg;
		B_reg <= B_reg << 1;
		count <= count + 1;
	     end
	     else
	       begin
		  Y <= Y_reg;
		  load_lock <= 0;
	       end // else: !if(count < 8)
	  end // if (load != 1)
     end // always @ (posedge clk)
endmodule // booth_mult

   
	
	     
