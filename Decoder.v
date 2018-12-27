`timescale 1ns / 1ps

module Decoder( OP, Reg_WE, DM_WE, ALU_OP, ALU_src,MEM_to_REG,REG_Dst,funct);
	input [5:0] OP;
	input [5:0] funct;
	output reg Reg_WE, DM_WE, ALU_src,MEM_to_REG,REG_Dst;
	output reg [1:0] ALU_OP;


   /* add your design */
	 //use boolean table to implement ?
	 always @ ( * ) begin
	 	case (OP)
	 		6'b000000: begin
				//R type
				Reg_WE = 1;
				REG_Dst = 1;
				MEM_to_REG = 0;
				DM_WE = 0;
				ALU_src = 0;
				ALU_OP = 2'b10;
			end
	 	endcase
	 end

endmodule
//
// module test ();
// 	reg [5:0] OP;
// 	reg [5:0] funct;
// 	wire Reg_WE, DM_WE, ALU_src,MEM_to_REG,REG_Dst;
// 	wire [1:0] ALU_OP;
//
// 	Decoder i_Decoder( OP, Reg_WE, DM_WE, ALU_OP, ALU_src,MEM_to_REG,REG_Dst,funct);
// 	initial begin
// 		$monitor("op = %b, Reg_WE = %b, DM_WE = %b, ALU_OP = %b, ALU_src = %b, MEM_to_REG = %b, REG_Dst  = %b, funct  = %b,",  OP, Reg_WE, DM_WE, ALU_OP, ALU_src,MEM_to_REG,REG_Dst,funct);
// 		OP = 0;
// 		funct = 6'b100000;
//
// 		#1 funct = 6'b101010;
// 		#1 funct = 6'b100010;
// 	end
//
// endmodule // test
