`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2022 04:59:57 PM
// Design Name: 
// Module Name: prob2_partb
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


module prob2_partb(clk,enable,load,up,clr,D1,D2,Q1,Q2,Co,counter);

    input[3:0] D1;
    input[3:0] D2;
    
    input clk,enable,load,up,clr;
    
    output [7:0] counter;
    output Co;
    
    output wire[3:0] Q1,Q2;
    wire C1,C2;
    
    prob2_parta_ first(clk,enable,load,up,clr,D1,Q1,C1);
    prob2_parta_ second(clk,enable,load,up,clr,D2,Q2,C2);
    
    assign counter = {Q2, Q1};
    assign Co = C2;
    
endmodule
