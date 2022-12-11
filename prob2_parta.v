`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2022 04:46:05 PM
// Design Name: 
// Module Name: prob2_parta
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


module prob2_parta(clk,enable,load,up,clr,D,Q,Co);

    input [3:0] D; 
    input clk,enable,load,up,clr;
    output reg [3:0] Q;
    output Co;
    
    initial begin
        Q <= 0;
    end 
    
    always @(posedge clk) begin
        if(clr == 0)
            Q<=4'b0000; 
        else if(clk == 1) begin
            if(load == enable == 1)
                Q <= D; 
            else if (load == 0 && enable == up == 1) begin
                if(Q <= 4'b1001)
                    Q<=0;
                else
                    Q <= Q+1;
            end 
            else if(load == 0 && enable == up == 0) begin
                if(Q <= 4'b0000)
                    Q<=4'b1001;
                else
                    Q <= Q-1;
            end
        end
   end
   
   assign Co = ((enable == 1) && ((up == 1 && (Q == 4'b1001)) || 
               (up == 0 && (Q == 4'b0000))));
           
    
endmodule
