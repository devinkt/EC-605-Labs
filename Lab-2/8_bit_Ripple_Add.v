`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2024 11:10:20 AM
// Design Name: 
// Module Name: 8_bit_Ripple_Add
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


module Eight_Bit_Ripple_Add(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] Sum,
    output Cout
    );
    wire w1, w2, w3, w4, w5, w6;
    Full_Adder A0(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(w1));
    Full_Adder A1(.A(A[1]), .B(B[1]), .Cin(w1), .Sum(Sum[1]), .Cout(w2));
    Full_Adder A2(.A(A[2]), .B(B[2]), .Cin(w2), .Sum(Sum[2]), .Cout(w3));
    Full_Adder A3(.A(A[3]), .B(B[3]), .Cin(w3), .Sum(Sum[3]), .Cout(w4));
    Full_Adder A4(.A(A[4]), .B(B[4]), .Cin(w4), .Sum(Sum[4]), .Cout(w5));
    Full_Adder A5(.A(A[5]), .B(B[5]), .Cin(w5), .Sum(Sum[5]), .Cout(w6));
    Full_Adder A6(.A(A[6]), .B(B[6]), .Cin(w6), .Sum(Sum[6]), .Cout(w7));
    Full_Adder A7(.A(A[7]), .B(B[7]), .Cin(w7), .Sum(Sum[7]), .Cout(Cout));
    
endmodule
