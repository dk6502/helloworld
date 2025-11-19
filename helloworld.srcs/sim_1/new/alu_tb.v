`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/18/2025 11:56:55 PM
// Design Name:
// Module Name: alu_tb
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


module alu_tb;
    reg [3:0] a,b,op;
    wire [3:0] out;
    wire cout;
    alu test_unit(a,b,op,out,cout);
    initial begin
        a=4'd1;
        b=4'd4;
        op = 4'h0;
        #10;
        a=4'd4;
        #10
        a=4'd2;
        op=4'h2;
    end
endmodule
