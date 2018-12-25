`timescale 1ns / 1ps

module Reg(CLK, RS_ID, RT_ID, REG_W_ID, Reg_WE, Reg_RData1, Reg_RData2, Reg_WData );
	input CLK ;
	input [2:0] RS_ID, RT_ID , REG_W_ID;
	input Reg_WE;
	input [15:0] Reg_WData;
	output [15:0] Reg_RData1;
	output [15:0] Reg_RData2;
	reg signed [15:0] Register [0:7];
	
	/*add your code here*/
	
	
	
	always@(posedge CLK) begin
		if( Reg_WE == 1 )
			Register[   /* add your design */   ] <= Reg_WData;
		else 
			Register[   /* add your design */   ] <= Register[   /* add your design */   ];
		
	end

endmodule
