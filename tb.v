`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 11:21:31
// Design Name: 
// Module Name: gcd_tb
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


module top_tb ();
reg clk = 0;
reg rst;
reg start;
reg [6:0] A;
reg [6:0] B;
wire [6:0] final;

top top_uuf(
clk,
rst,
start,
A,
B,
final
    );

always #5 clk = ~clk;

initial begin
rst = 1;
#10
rst = 0;
start = 1;
B = 6'b101000;
A = 6'b111100; 


end

endmodule











//module gcd_tb();

//reg clk = 0;
//reg rst;
//reg start;
//reg [6:0]x;
//reg [6:0]y;
//wire [6:0] result;
 
 
//gcd uut (
//clk,
//rst,
//start,
//x,
//y,
//result
//); 
 
//always #10 clk = ~clk;

//initial begin

//rst = 1;

//#50
//rst = 0;
////start = 0;
//y = 6'b101000;
//x = 6'b111100;

//#50
//x = 5'b11011;
//y = 4'b1111;
//#500
//y = 6'b101000;
//x = 6'b111100;
////start  = 1;


//end


//endmodule



//module fifo_tb ();

//reg clk = 1;
//reg rst;
//reg [6:0] i_data;
//reg i_data_valid;
//reg i_rd_valid;
//wire [6:0] out;

//fifo uuf(
//clk,
//rst,
//i_data,
//i_data_valid,
//i_rd_valid,
//out
//    );

//always #5 clk = ~clk;


//initial begin

//    rst = 1;
//    #5
    
//    rst = 0;
//    i_data = 1;
//    i_data_valid = 1;
//    i_rd_valid = 1;
//     i_data = 'd1;
//    #10
//     i_data = 'd2;
//     #10
//     i_data = 'd3;
//     #10
//     i_data = 'd4;
//     #10
//     i_data = 'd5;
     
////     #30
     
     
     

//end
//endmodule
