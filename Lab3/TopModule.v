`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 10/11/2024 02:13:29 PM
// Design Name: 
// Module Name: TopModule
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
//seven_segment module credited to Top_Module.v Lab 2 EC605
module seven_segment(input [3:0] in, output reg A,  output reg B, output reg C, output reg D, output reg E, output reg F, output reg G);

    initial
    begin
        A <= 1'b0;
        B <= 1'b0;
        C <= 1'b0;
        D <= 1'b0;
        E <= 1'b0;
        F <= 1'b0;
        G <= 1'b1;
    end

    always @(*) begin
        case(in)
            4'b0000: // HEX 0
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b1;
            end
            4'b0001: // HEX 1 
            begin
                A = 1'b1;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b1;
                F = 1'b1;
                G = 1'b1;
            end
            4'b0010: // HEX 2
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b1;
                D = 1'b0;
                E = 1'b0;
                F = 1'b1;
                G = 1'b0;
            end
            4'b0011: // HEX 3
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b0;
                E = 1'b1;
                F = 1'b1;
                G = 1'b0;
            end
            4'b0100: // HEX 4
            begin
                A = 1'b1;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b1;
                F = 1'b0;
                G = 1'b0;
            end
            4'b0101: // HEX 5
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b0;
                D = 1'b0;
                E = 1'b1;
                F = 1'b0;
                G = 1'b0;
            end
            4'b0110: // HEX 6
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b0111: // HEX 7
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b1;
                F = 1'b1;
                G = 1'b1;
            end
            4'b1000: // HEX 8
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1001: // HEX 9
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b1;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1010: // HEX A
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1011: // HEX B
            begin
                A = 1'b1;
                B = 1'b1;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1100: // HEX C
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b1;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b1;
            end
            4'b1101: // HEX D
            begin
                A = 1'b1;
                B = 1'b0;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b1;
                G = 1'b0;
            end
            4'b1110: // HEX E
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b1;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1111: // HEX F
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b1;
                D = 1'b1;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
        endcase
    end    
endmodule

module ONOFF(input pause, input [3:0] seven_enable, output reg A,  output reg B, output reg C, output reg D, output reg E, output reg F, output reg G);
    initial
    begin
        A <= 1'b0;
        B <= 1'b0;
        C <= 1'b0;
        D <= 1'b0;
        E <= 1'b0;
        F <= 1'b0;
        G <= 1'b1;
    end
    
    always @(*)
    begin
    if((pause==1'b1) && (seven_enable==4'b1101))
        begin
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b1;
        E = 1'b0;
        F = 1'b0;
        G = 1'b1;
        end
     else if((pause==1'b1) && (seven_enable==4'b1011))
        begin
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
        E = 1'b0;
        F = 1'b0;
        G = 1'b1;
        end
     else if((pause==1'b1) && (seven_enable==4'b0111))
        begin
        A = 1'b1;
        B = 1'b1;
        C = 1'b1;
        D = 1'b1;
        E = 1'b1;
        F = 1'b1;
        G = 1'b1;
        end
     else if((pause==1'b0) && (seven_enable==4'b1101))
        begin
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        D = 1'b1;
        E = 1'b0;
        F = 1'b0;
        G = 1'b0;
        end
     else if((pause==1'b0) && (seven_enable==4'b1011))
        begin
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        D = 1'b1;
        E = 1'b0;
        F = 1'b0;
        G = 1'b0;
        end
     else if((pause==1'b0) && (seven_enable==4'b0111))
        begin
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
        E = 1'b0;
        F = 1'b0;
        G = 1'b1;
        end
    end
endmodule

module SevenSegOut(input [6:0] onoff_sevseg, input[6:0] num_sevseg, input [3:0] seven_enable, output [6:0] tm_sevseg);
    
    assign tm_sevseg = (seven_enable == 4'b1110)? num_sevseg: onoff_sevseg;

endmodule

module Pauseclk(
    input clk,
    input reset,
    output [1:0] pauseclk
    );

    reg [19:0] counter;
    
    always@(posedge clk or posedge reset)
    begin
        if(reset == 1)
        begin
            counter <= 32'b0;
        end
        else
        begin
            counter <= counter + 1;
        end
    end
    
    assign pauseclk = counter[19:18];
       
endmodule

module Pause_control(
    input [1:0] pauseclk,
    output reg [3:0] seven_enable
    );
    
    initial
    begin
    seven_enable <= 4'b1110;
    end
    
    always @(*)
    begin
    case(pauseclk)
    2'b00: begin
    seven_enable <= 4'b1110;
    end
    2'b01: begin
    seven_enable <= 4'b1101;
    end
    2'b10: begin
    seven_enable <= 4'b1011;
    end
    2'b11: begin
    seven_enable <= 4'b0111;
    end
    endcase  
    end
endmodule
    
module TopModule(
    input clk,
    input reset,
    input [9:0] switches,
    input pause,
    output [3:0] seven_enable,
    output [6:0] tm_sevseg,
    output [2:0] debug,
    output divclk,
    output [9:0] debug_sequence_reg
    );
    
    wire [3:0] sevseg;
    wire [1:0] pauseclk;
    wire [3:0] seven_enable;
    wire [6:0] onoff_sevseg;
    wire [6:0] num_sevseg;
    wire [3:0] seven_enable;
    wire [6:0] tm_sevseg;
       
    Pauseclk PClk1(clk, reset, pauseclk);
    Pause_control PC1(pauseclk, seven_enable);
    ClockDivider CD1(clk, reset, divclk);
    StateMachine SM1(divclk, switches, reset, pause, sevseg, debug, debug_sequence_reg);
    seven_segment SS1(sevseg, num_sevseg[6], num_sevseg[5], num_sevseg[4], num_sevseg[3], num_sevseg[2], num_sevseg[1], num_sevseg[0]);
    ONOFF OF1(pause, seven_enable, onoff_sevseg[6], onoff_sevseg[5],onoff_sevseg[4], onoff_sevseg[3], onoff_sevseg[2], onoff_sevseg[1], onoff_sevseg[0]);
    SevenSegOut SSO1(onoff_sevseg, num_sevseg, seven_enable, tm_sevseg);
    
endmodule
