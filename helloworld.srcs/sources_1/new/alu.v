`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/18/2025 09:56:37 PM
// Design Name:
// Module Name: alu
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


module alu(
input [3:0] a,b,
input [3:0] op,
output [3:0] out,
output carry_flag
);
    reg [3:0] result;
    wire [4:0] tmp;
    assign out = result;
    assign tmp = {1'b0,a} + {1'b0,b};
    assign carry_flag = tmp[4];
    always @(*)
    begin
        case(op)
        4'b0000: result = a + b ;
        4'b0001: result = a - b ;
        4'b0010: result = a * b;
        4'b0011: result = a/b;
        4'b0100: result = a<<1;
        4'b0101: result = a>>1;
        4'b0110: result = {a[3:0],a[3]};
        4'b0111: result = {a[0],a[3:1]};
        4'b1000: result = a & b;
        4'b1001: result = a | b;
        4'b1010: result = a ^ b;
        4'b1011: result = ~(a | b);
        4'b1100: result = ~(a & b);
        4'b1101: result = ~(a ^ b);
        4'b1110: result = (a>b)?8'd1:8'd0 ;
        4'b1111: result = (a==b)?8'd1:8'd0 ;
        default: result = a + b ;
        endcase
    end

endmodule;
