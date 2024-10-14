`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2024 09:48:49 AM
// Design Name: 
// Module Name: Four_Bit_ALU
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


module Four_Bit_ALU(
    input [3:0] A,
    input [3:0] B,
    input [2:0] OP,
    output reg [3:0] Y,
    output reg N,
    output reg Z,
    output reg C,
    output reg V
    );
    always @(A, B, OP)

    begin
        case(OP)
            3'b000: Y = A & B;
            3'b001: Y = A | B;
            3'b010: Y = A ^ B;
            3'b011: Y = A >> B;
            3'b100: Y = A << B;
            3'b101: Y = A - B;
            3'b110: Y = A + B;
            default: Y = (A<B)?1:0;
        endcase
        if(Y[3] == 1) N = 1; else N = 0; //neg flag
        if(Y == 0) Z = 1; else Z = 0; //zero flag
        if((A[3] & B[3])|((A[3] | B[3]) & (Y[3] == 0))) C = 1; else C = 0; //carry-out indicates overflow for unsigned
        if((A[3] == B[3]) & (Y[3] ^ C)) V = 1; else V = 0;//overflow for signed
      end
      
endmodule
