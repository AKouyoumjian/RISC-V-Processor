`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2023 01:01:50 PM
// Design Name: 
// Module Name: reg_file
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

module reg_file(rst, clk, RegWrite, rd0_addr, rd1_addr, wr_addr, wr_data, rd0_data, rd1_data);
    input logic rst, clk, RegWrite;
    input logic [2:0] rd0_addr, rd1_addr, wr_addr;
    input logic [15:0] wr_data;
    output logic [15:0] rd0_data, rd1_data;
    logic [15:0] REG [0:7];
    //initial begin
    //REG[0] = 0; 
    //REG[1] = 0; 
    //REG[2] = 0; 
    //REG[3] = 0; 
    //REG[4] = 0;
    //REG[5] = 0;
    //REG[6] = 0;
    //REG[7] = 0;
    //end

   
    always @(posedge clk, posedge rst) begin 
        if(rst == 1'b1) begin 
            REG[0] = 16'b0; 
            REG[1] = 16'b0; 
            REG[2] = 16'b0; 
            REG[3] = 16'b0; 
            REG[4] = 16'b0;
            REG[5] = 16'b0;
            REG[6] = 16'b0;
            REG[7] = 16'b0;       
        end
        
        else if (RegWrite == 1'b1) begin
            REG[wr_addr] = wr_data; 
        end
            end
       assign   rd0_data = REG[rd0_addr];
    assign rd1_data = REG[rd1_addr]; 


endmodule
