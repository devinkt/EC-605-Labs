`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 10/08/2024 03:56:58 PM
// Design Name: 
// Module Name: ClockDivider
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


module ClockDivider(
    input clk,
    input rst,
    output reg divclk
    );
    
    reg [31:0] counter;
    
    always@(posedge clk or posedge rst)
    begin
        if(rst == 1)
        begin
            counter <= 32'b0;
            divclk <= 1'b0;
        end
        else
        begin
            counter <= counter + 1;
            if(counter == 50000000)
            begin
                divclk <= ~divclk;
                counter <= 0;
            end
        end
    end
       
endmodule
