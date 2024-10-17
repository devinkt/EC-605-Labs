`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 10/08/2024 10:14:27 AM
// Design Name: 
// Module Name: t_SerialRegister
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


module t_SerialRegister(
    );
    reg [9:0] Switches;
    reg Rst;
    wire [9:0] Sequence;
    SerialRegister RS1 (Switches[9:0], Rst, Sequence);
    
    initial
    begin
    Switches = 10'b0;
    Rst = 1'b0;        
    #30 Switches = 10'b1011101101;
    #10 Rst = 1'b1; #2 Rst = 1'b0;            
    #30 Switches = 10'b0110101100;
    #100 Rst = 1'b1; #2 Rst = 1'b0;
    #225;
    end

endmodule
