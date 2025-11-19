`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/18/2025 08:20:17 PM
// Design Name:
// Module Name: blinky
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


module blinky(
    input sw1,
    input sw2,
    output LED
    );

    assign LED = sw1 & sw2;
endmodule
