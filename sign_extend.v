`timescale 1ns / 1ps

module sign_extend(immediate_in, sign_extend );

  //port declarations
  input [13:0] immediate_in;
	output [15:0] sign_extend;

  //port data types
  reg [15:0] sign_extend;

  always @ (immediate_in) begin
    if(immediate_in[13] == 0)
      sign_extend = { {2{1'b0}}, immediate_in};
    else
      sign_extend = { {2{1'b1}}, immediate_in};
  end

endmodule

// test bench
// module test();
//   reg [13:0] immediate_in;
//   wire [15:0] sign_extend;
//
//   sign_extend sext(immediate_in, sign_extend);
//   initial begin
//     $monitor("immediate_in = %b, sign_extend = %b", immediate_in, sign_extend);
//     immediate_in = {2'b00, {12{1'b1}}};
//     #10 immediate_in = {2'b11, {12{1'b1}}};
//   end
// endmodule
