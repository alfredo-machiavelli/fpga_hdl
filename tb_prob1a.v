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

module tb_prob1a;

    wire S;
    wire V;
    reg X;
    reg clk;

    lab2_prob1 uut (
        .S(S),
        .V(V),
        .X(X),
        .clk(clk)
     );
    initial begin
        X = 1;
        clk = 0;
        #12.5;
        X = 0;
        #12.5;
        X = 1;
        #12.5;
        X = 1;
        #12.5;
        X = 1;
        #12.5;
        X = 1;
        #12.5;
        X = 0;
        #12.5;
        X = 0;
        #12.5;
        X = 1;
        #12.5;
        X = 1;
        #12.5;
        X = 0;
        #12.5;
        X = 1;
        #12.5;
    end

    always
        #5 clk = !clk;
        
endmodule
