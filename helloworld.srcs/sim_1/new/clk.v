`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/19/2025 01:11:56 AM
// Design Name:
// Module Name: clk
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


module clkgen(
    output reg clk
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
endmodule
