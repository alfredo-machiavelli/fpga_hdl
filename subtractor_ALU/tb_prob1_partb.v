`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2022 12:32:33 PM
// Design Name: 
// Module Name: tb_prob1_partb
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

module tb_prob1_partb;
    wire S;
    wire V;
    reg X;
    reg clk;

    prob1_partb uut (
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

endmodule
