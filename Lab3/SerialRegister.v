`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 10/08/2024 10:05:26 AM
// Design Name: 
// Module Name: SerialRegister
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


module SerialRegister(
    input [9:0] Switches,
    input Reset,
    output reg [9:0] Register 
    );



    always @(posedge Reset)
    begin
    Register = Switches;
    end
    
   
    
endmodule
