`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 09/20/2024 06:19:35 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    wire w1, w2, w3;
    xor #(2) G1(Sum, A, B, Cin);
    and #(1) G2(w1, A, B);
    and #(1) G3(w2, A, Cin);
    and #(1) G4(w3, B, Cin);
    or  #(1) G5(Cout, w1, w2, w3);
    
endmodule
