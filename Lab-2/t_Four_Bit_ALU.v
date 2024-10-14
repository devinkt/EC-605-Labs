`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2024 05:29:03 PM
// Design Name: 
// Module Name: t_Four_Bit_ALU
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


module t_Four_Bit_ALU();

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] OP;
    wire [3:0] Y;
    wire N;
    wire Z;
    wire C;
    wire V;
    
    Four_Bit_ALU ALU1(.A(A), .B(B), .OP(OP), .Y(Y), .N(N), .Z(Z), .C(C), .V(V));
    
    initial
    begin
    
        A = 0; B =0; OP = 0;
        #100 A = 4'b0100; B = 4'b1111;
        #100 OP = 3'b001; A = 4'b0101; B = 4'b1000;
        #100 OP = 3'b010; A = 4'b0101; B = 4'b1010;
        #100 OP = 3'b011; A = 4'b1000; B = 4'b0011;
        #100 OP = 3'b100; A = 4'b0001; B = 4'b0011;
        #100 OP = 3'b101; A = 4'b0011; B = 4'b0001;
        #100 A = 4'b0001; B = 4'b0010;
        #100 A = 4'b0001; B = 4'b0001;
        #100 OP = 3'b110; A = 4'b0111; B = 4'b0001;
        #100 A = 4'b1111; B = 4'b0001;
        #100 A = 4'b0111; B = 4'b0111;
        #100 OP = 3'b111; A = 4'b0001; B = 4'b0010;
        #100 $finish;
     end
endmodule
