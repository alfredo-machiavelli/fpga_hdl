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
module tb_prob2_partb;
    reg[3:0] D1;
    reg[3:0] D2;
    
    reg clk;
    reg clr; 
    reg enable;
    reg load;
    
    reg up;
    wire[7:0] counter;
    wire Co;
    
    always #5 clk = ~clk;
    
    prob2_partb uut(
        .D1(D1),
        .D2(D2),
        .clk(clk),
        .clr(clr),
        .enable(enable),
        .load(load),
        .Co(Co),
        .up(up), 
        .Q(Q)
    );
    
    initial begin
        // Initialize Inputs
        clr = 0;
        #100; 
        
        // Wait 100 ns for global reset to finish
        
        D1 = 7;
        D2 = 9;
        clr = 1;
        enable = 1;
        load = 1;
        #100;
        
        // load the input 98 and wait 100 ns

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

        clr = 1;
        enable = 1;
        up = 1;
        load = 0;
        #100;

        // increment the count five times

        enable = 0;
        #100;

        enable = 0;
        #100;

        // do nothing for two times

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

        // clear the count further

        end

        initial clk = 0;
        always #50 clk = ~clk;

endmodule