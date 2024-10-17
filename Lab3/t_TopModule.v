`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 06:56:57 PM
// Design Name: 
// Module Name: t_TopModule
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


module t_TopModule(

    );
    
    TopModule TM1 (clk, rst, switches, pbutton, seven_enable, tm_sevseg, debug, debug_pause, debug_sequence_reg);
    
    reg clk;
    reg [9:0] switches;
    reg rst;
    reg pbutton;
    wire [3:0] seven_enable;
    wire [6:0] tm_sevseg;
    
    initial
    begin
    
    clk = 1'b0;
    switches = 10'b1010101010;
    rst = 1'b1;
    pbutton = 1'b0;
    
    #10 rst = 1'b0;
    #200 pbutton = 1'b1;
    
 //   #14000 switches = 10'b1100101101;
 //   rst = 1'b1;
 //   #1 reset = 1'b0;
 //   #9000 pause = 1'b0;
 //   #1000 pause = 1'b1;
    
    end
    always begin
        #5 clk =  ~clk;
    end
endmodule
