`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 09/20/2024 08:53:15 PM
// Design Name: 
// Module Name: t_Full_Adder
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


module t_Full_Adder();
    
    reg A, B, Cin;
    wire Cout, Sum;
    
    Full_Adder  Add1 (A, B, Cin, Sum, Cout);
    
    initial 
    begin
    A = 0;
    B = 0;
    Cin = 0;
    
    #10 A = 0; B = 0; Cin = 1;
    #10 A = 0; B = 1; Cin = 0;
    #10 A = 0; B = 1; Cin = 1;
    #10 A = 1; B = 0; Cin = 0;
    #10 A = 1; B = 0; Cin = 1; 
    #10 A = 1; B = 1; Cin = 0;
    #10 A = 1; B = 1; Cin = 1;
    #10 $finish;
    
    end
    
endmodule
