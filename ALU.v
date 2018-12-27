`timescale 1ns / 1ps

module ALU( source1,source2,ALU_CTRL,result);
  input [15:0] source1;
  input [15:0] source2;
  input [3:0] ALU_CTRL;
  output reg[15:0] result;

  always @ ( * ) begin
    case (ALU_CTRL)
      4'b0010: result = source1 + source2;
      4'b0110: result = source1 - source2;
      4'b0111: result = (source1<source2)? 1:0;
    endcase
  end

endmodule

// module test ();
//   reg [15:0] source1;
//   reg [15:0] source2;
//   reg [3:0] ALU_CTRL;
//   wire signed[15:0] result;
//
//   ALU alu( source1,source2,ALU_CTRL,result);
//   initial begin
//     $monitor( " source1 = %d,source2 = %d,ALU_CTRL = %b,result = %d",source1,source2,ALU_CTRL,result);
//     source1 = 5;
//     source2 = 7;
//     #1 ALU_CTRL = 4'b0010;
//     #1 ALU_CTRL = 4'b0110;
//     #1 ALU_CTRL = 4'b0111;
//     #1 ALU_CTRL = 4'b0111;
//     source1 = 1;
//     source2 = 0;
//     #1 source1 = 0;
//
//
//   end
// endmodule // test
