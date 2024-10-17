`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 10/09/2024 03:23:58 PM
// Design Name: 
// Module Name: t_ClockDivider
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


module t_ClockDivider(

    );
    
    reg clock, reset;
    wire divclock;
    
    ClockDivider CD1(clock, reset, divclock);
    
    initial
        begin
        clock = 0; 
        forever #5 clock = ~clock;
        end 
    initial
        begin
        #5 reset = 1;
        #5 reset = 0;
        end
endmodule
