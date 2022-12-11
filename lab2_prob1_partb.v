`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2022 04:27:09 PM
// Design Name: 
// Module Name: lab2_prob1_partb
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


module lab2_prob1_partb(X,S,V, clk);
    input X,clk;
    output S,V;
    
    reg Bit1,Bit2,Bit3;
    
    initial begin
        Bit1 <= 0;
        Bit2 <= 0;
        Bit3 <= 0;
    end
    
    always@(negedge clk) begin
        Bit1 <= (~Bit3 && Bit2 && Bit1 && ~X) + (~Bit3 && Bit2 && Bit1 && X) +
                (Bit3 && ~Bit2 && ~Bit1 && ~X) + (Bit3 && ~Bit2 && ~Bit1 && X) +
                (Bit3 && ~Bit2 && ~Bit1 && ~X) + (Bit3 && Bit2 && Bit1 && X) +
                (~Bit3 && ~Bit2 && ~Bit1 && ~X) + (~Bit3 && ~Bit2 && ~Bit1 && X);
                
        Bit2 <= (Bit3 && ~Bit2 && Bit1 && ~X) + (~Bit3 && Bit2 && Bit1 && X) + 
                (Bit3 && ~Bit2 && ~Bit1 && ~X) + (Bit3 && Bit2 && Bit1 && X)+
                (~Bit3 && ~Bit2 && ~Bit1 && ~X)+ (~Bit3 && ~Bit2 && ~Bit1 && X);
        
        Bit3 <= (~Bit3 && ~Bit2 && ~Bit1 && ~X) + (Bit3 && ~Bit2 && ~Bit1 && X);
    end 
    
    assign S = (~Bit3 && ~Bit2 && ~Bit1 && ~X) + (Bit3 && ~Bit2 && Bit1 && ~X)+
               (~Bit3 && Bit2 && Bit1 && X) + (Bit3 && ~Bit2 && ~Bit1 && X)+
               (Bit3 && ~Bit2 && ~Bit1 && ~X)+ (~Bit3 && ~Bit2 && ~Bit1 && X)+
               (~Bit3 && ~Bit2 && ~Bit1 && ~X);
               
    assign V = (~Bit3 && ~Bit2 && ~Bit1 && X);
                
        
endmodule
