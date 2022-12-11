`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2022 11:54:01 AM
// Design Name: 
// Module Name: prob3_top_module
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


module prob3_top_module(led, btnU, clk, sw);

    output[4:0] led;
    input [6:0] sw;
    input btnU;
    input clk; 
    
    wire slowClk;
    
    prob2_parta_ uut(
        .load(btnU),
        .D(sw[3:0]),
        .enable(sw[4]),
        .up(sw[5]),
        .clk(slowClk),
        .Q(led[3:0]),
        .Co(led[4]),     
        .clr(sw[6])  
    );
    
    prob3_divider_module uut2(
        .clk100Mhz(clk),
        .slowClk(slowClk)
    );
    
endmodule
