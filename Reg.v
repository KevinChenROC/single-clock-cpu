`timescale 1ns / 1ps

module Reg(CLK, RS_ID, RT_ID, REG_W_ID, Reg_WE, Reg_RData1, Reg_RData2, Reg_WData );
	input CLK ;
	input [2:0] RS_ID, RT_ID , REG_W_ID;
	input Reg_WE;
	input [15:0] Reg_WData;
	output [15:0] Reg_RData1;
	output [15:0] Reg_RData2;

	//8 * (16 bits regstiers)
	reg signed [15:0] Register [0:7];

	assign Reg_RData1 = Register[RS_ID];
	assign Reg_RData2 = Register[RT_ID];

	always@(posedge CLK) begin
		if( Reg_WE )
			Register[REG_W_ID] <= Reg_WData;
	end

endmodule

// module test();
// 	reg CLK ;
// 	reg [2:0] RS_ID, RT_ID , REG_W_ID;
// 	reg Reg_WE;
// 	reg [15:0] Reg_WData;
// 	wire[15:0] Reg_RData1;
// 	wire[15:0] Reg_RData2;
//
// 	integer i;
//
// 	Reg i_Reg(CLK, RS_ID, RT_ID, REG_W_ID, Reg_WE, Reg_RData1, Reg_RData2, Reg_WData );
//
// 	initial begin
// 		CLK = 0;
// 		$monitor("RS_ID = %d, RT_ID = %d, REG_W_ID = %d, Reg_WE = %d, Reg_RData1 = %d, Reg_RData2 = %d, Reg_WData = %d", RS_ID, RT_ID, REG_W_ID, Reg_WE, Reg_RData1, Reg_RData2, Reg_WData );
//
// 		for(i=0; i<8; i++) begin
// 			i_Reg.Register[i] = i+1;
// 			$display("Register[%d] = %d", i, i_Reg.Register[i]);
// 		end
//
// 		CLK = ~CLK;
// 		Reg_WE = 1;
// 		Reg_WData = 'd123;
// 		REG_W_ID = 3;
//
// 		#3 CLK = 0;
// 		#4 CLK = ~CLK;
// 		RS_ID = 3;
// 		RT_ID = 7;
// 		Reg_WData = 0;
// 		Reg_WE = 0;
//
// 	end
//   endmodule
