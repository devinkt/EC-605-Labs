`timescale 1ms / 1us
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 10:03:03 AM
// Design Name: 
// Module Name: t_StateMachine
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


module t_StateMachine(

    );
    StateMachine SM1(clock, sequence, reset, pause, sevseg, debug, debug_sequence_reg);
    reg clock;
    reg [9:0] sequence;
    reg reset;
    reg pause;
    wire [3:0] sevseg;
    
    initial
    begin
    
    clock = 1'b0;
    sequence = 10'b1010101010;
    reset = 1'b1;
    pause = 1'b0;
    
    #1 reset = 1'b0;
    #2 pause = 1'b1;
    
    #14000 sequence = 10'b1100101101;
    reset = 1'b1;
    #1 reset = 1'b0;
    #9000 pause = 1'b0;
    #1000 pause = 1'b1;
    
    end
    always begin
        #500 clock =  ~clock;
    end
endmodule
