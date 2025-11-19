`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/19/2025 12:55:59 AM
// Design Name:
// Module Name: sine
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


module sine(
    output reg [15:0] sine
    );
    wire clk;

    clkgen sinclock(clk);

    parameter SIZE = 1024;
    reg [15:0] rom_memory [SIZE-1:0];
    integer i;
    initial begin
        $readmemh("sine.mem", rom_memory);
        i=0;
    end
    always@(posedge clk)
    begin
        sine = rom_memory[i];
        i = i+1;
        if (i==SIZE)
            i = 0;
    end
endmodule
