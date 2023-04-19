`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 01:33:12 PM
// Design Name: 
// Module Name: prog_counter
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


module program_counter(clk, rst, offset, take_branch, pc);
    input logic clk, rst, take_branch;
    input logic[8:0] offset;
    output logic[8:0] pc;
    always@(posedge clk, posedge rst) begin
        if (rst) pc = 9'b0;
        else if (take_branch) begin
            pc = pc + offset;
        end
        else begin
            pc = pc + 1;
        end
    end
endmodule
