`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 10/09/2024 09:06:29 PM
// Design Name: 
// Module Name: StateMachine
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


module StateMachine(
    input clock,
    input [9:0] sequence,
    input reset,
    input pause,
    output reg [3:0]sevseg,
    output [2:0] debug,
    output [9:0] debug_sequence_reg
    );
    
    reg [2:0] state;
    reg mask;
    reg [9:0] sequence_reg;
    
    assign debug = state;
    assign debug_sequence_reg = sequence_reg;
    
    always @(posedge clock or posedge reset)
        begin
            if(reset == 1'b1)
                begin
                    state <= 3'b0;
                    sevseg <= 4'b0;
                    sequence_reg <= sequence; //this is the f******* line that screwed me <=
                    mask <= sequence_reg[9];
                end
            else if((clock == 1'b1) && (pause == 1'b1))
                begin
                    mask = sequence_reg[9];
                    sequence_reg <= sequence_reg << 1'b1;
                    case(state)
                    3'b0: state <= (mask == 1'b1)? 3'b001 : 3'b0;
                    3'b001: state <= (mask == 1'b0)? 3'b010 :3'b001;
                    3'b010: begin
                        if(mask == 1'b1)
                            begin
                               state <= 3'b101;
                            end
                        else if(mask == 1'b0)
                            begin
                               state <= 3'b0;
                            end
                            end
                    3'b101: begin
                            state <= ((mask == 1'b1) && (pause == 1'b1))? 3'b001 : 3'b010;
                            sevseg <= (sevseg == 4'b1111) ? 4'b0001: (sevseg + 1'b1);
                            end
                    endcase         
                  end
          end
          
   
endmodule
