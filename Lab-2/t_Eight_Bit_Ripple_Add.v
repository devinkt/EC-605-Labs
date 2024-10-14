`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2024 09:21:12 PM
// Design Name: 
// Module Name: t_Eight_Bit_Ripple_Add
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


module t_Eight_Bit_Ripple_Add();
    reg [7:0]A; 
    reg [7:0]B; 
    reg Cin;
    wire Cout;
    wire [7:0]Sum;
    Eight_Bit_Ripple_Add Rip1(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    
    initial
    begin
        Cin = 0; A = 8'b00000000; B = 8'b00000000;
        #100 A = 8'b11111111; B = 8'b11111111;
        #100 A = 8'b11110000; B = 8'b00001111;
        #100 A = 8'b01010101; B = 8'b10101011;
        #100 A = 8'b00000001; B = 8'b00000001;
        #100 A = 8'b01111111; B = 8'b01111111;
        #100 A = 8'b01101100; B = 8'b00001110;
        #100 $finish;
    end
endmodule
