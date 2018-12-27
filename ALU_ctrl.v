`timescale 1ns / 1ps

module ALU_ctrl( funct, ALU_OP,ALU_CTRL );

  input [5:0] funct;
  input [1:0] ALU_OP;
  output reg [3:0]ALU_CTRL;

  always @ ( * ) begin
    case (ALU_OP)
      2'b10: begin
        case (funct)
          6'b100000: ALU_CTRL = 4'b0010;
          6'b100010: ALU_CTRL = 4'b0110;
          6'b101010: ALU_CTRL = 4'b0111;
        endcase
      end

    endcase

  end
endmodule

// module test ();
//
//   reg [5:0] funct;
//   reg [1:0] ALU_OP;
//   wire[3:0]ALU_CTRL;
//
//   ALU_ctrl i_ALU_ctrl( funct, ALU_OP,ALU_CTRL );
//
//   initial begin
//     $monitor("funct = %b, ALU_OP = %b,ALU_CTRL = %b", funct, ALU_OP,ALU_CTRL);
//
//     ALU_OP = 2'b10;
//     #1 funct = 6'b100000;
//     #1 funct = 6'b101010;
//     #1 funct = 6'b100010;
//   end
// endmodule // test
