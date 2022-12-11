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

module tb_prob2_parta;
    reg[3:0] D;
    
    reg clk;
    reg clr; 
    reg enable;
    reg load;
    
    reg up;
    wire Co;
    
    wire[3:0] Q;
    
    prob2_parta_ uut(
        .D(D),
        .clk(clk),
        .clr(clr),
        .enable(enable),
        .load(load),
        .Co(Co),
        .up(up),
        .Q(Q)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        // Initialize Inputs
        clr = 0;
        clk = 0;
        #100; 
        
        // Wait 100 ns for global reset to finish
        
        D = 6;
        clr = 1;
        enable = 1;
        load = 1;
        #100;
        
        // load the input 6 and wait 100 ns

        clr = 1;
        enable = 1;
        up = 1;
        load = 0;
        #100;

        clr = 1;
        enable = 1;
        up = 1;
        load = 0;
        #100;

        clr = 1;
        enable = 1;
        up = 1;
        load = 0;
        #100;
        
        clr = 1;
        enable = 1;
        up = 1;
        load = 0;
        #100;

        // increment the count four times

        clr = 1;
        enable = 1;
        up = 0;
        load = 0;
        #100;

        clr = 1;
        enable = 1;
        up = 0;
        load = 0;
        #100;
        
        // decrement the count four times

        clr = 0;
        #100;
   end
endmodule