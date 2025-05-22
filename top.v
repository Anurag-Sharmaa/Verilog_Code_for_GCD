`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Mandi
// Engineer: Anurag Sharma
// 
// Create Date: 15.04.2024 18:23:57
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
input clk,
input rst,
input start,
input [6:0] A,
input [6:0] B,
output [6:0] final
    );
    
    
    wire [6:0] wire_x;
    wire [6:0] wire_y;
    wire [6:0] result_wire;
    
    fifo fifo_1(
.clk(clk),
.rst(rst),
.i_data(A),
.i_data_valid(start),
.i_rd_valid(1),
.out(wire_x)
);

  fifo fifo_2(
.clk(clk),
.rst(rst),
.i_data(B),
.i_data_valid(start),
.i_rd_valid(1),
.out(wire_y)
    );
    
    gcd gcd_m(
.clk(clk),
.rst(rst),
.start(start),
.x(wire_x),
.y(wire_y),
.result(result_wire)
);

fifo fifo_out(
.clk(clk),
.rst(rst),
.i_data(result_wire),
.i_data_valid(start),
.i_rd_valid(1),
.out(final)
);

    
endmodule
