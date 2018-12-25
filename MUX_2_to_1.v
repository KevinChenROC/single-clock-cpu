`timescale 1ns / 1ps
module MUX_2_to_1(data0_i,data1_i,select_i,data_o);
    parameter size = 0;
    input  [size-1:0] data0_i;
    input  [size-1:0] data1_i;
    input             select_i;
    output [size-1:0] data_o;

    reg select_i_reg;
    reg [size-1:0] data_o;

    //port data types
    always @ ( * ) begin
      select_i_reg = select_i;
      data_o = (select_i_reg == 0) ? data0_i : data1_i;
    end

endmodule

module test();
  localparam  size = 2;
  reg  [size:0] data0_i;
  reg  [size:0] data1_i;
  reg             select_i;
  wire [size:0] data_o;

  MUX_2_to_1 #(3) m21(data0_i, data1_i, select_i, data_o);

  initial begin
    $monitor("data0_i = %b, data1_i = %b, select_i = %b, data_o = %b", data0_i, data1_i, select_i, data_o);
    data0_i = 2'b00;
    data1_i = 2'b11;
    select_i = 1;
    #1 select_i = 0;
  end
  endmodule
